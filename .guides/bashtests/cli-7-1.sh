#!/bin/bash
# echo test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-7-1
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=2

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command "export curr_user=\$(whoami)" "Export a variable called 'curr_user' that holds the value of the 'whoami' command"
				;;
			2 )
				expect_command "echo \$curr_user" "Echo the curr_user variable on it"
				;;
		esac
	else 
    echo "Well done!"
		return 0
	fi
}


test_command