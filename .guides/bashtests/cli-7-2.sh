#!/bin/bash
# echo test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-7-2
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=3

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command "env" "Execute the command that displays a list of environment variables"
				;;
			2 )
				expect_command "echo \$PWD" "Echo Path to the Working Directory env. variable"
				;;
			3 )
				expect_command "export CONFIG_DIR=/home/codio/workspace/config" "Export a CONFIG_DIR variable with absolute path to the config directory"
				;;
		esac
	else 
    echo "Well done!"
		return 0
	fi
}


test_command