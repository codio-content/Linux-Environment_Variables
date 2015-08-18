When you login to your computer (type username and password) or via the CLI, the `.bash_profile` is executed to configure your shell before the initial command prompt.

Let's take a look to the current `~/.bash_profile` content and understand some of the variable definitions and its purpose:

```
# Execute the `cat` command:
cat ~/.bash_profile

# File content:
1  function workspace {
2        cd ~/workspace
3  }
4  workspace
5  export PS1="\u \w $ "
6  export PATH=$PATH:$HOME/workspace/.guides/bashtests
7  export BASHDIR=$HOME/workspace/.guides 
8  chmod +x "${BASHDIR}/bashtests/bashtest" 
9  shopt -s histappend 
10 export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
11 chmod +x "${BASHDIR}/bashtests/workspace-reset.sh"
```

- On line `1`: The `workspace` function is declared and invoked on line `4`. Can you guess what is the purpose of this function?
- On line `5`: The `PS1` prompt string configuration is set and __applied to the parent shell profile only__. (This is why the prompt is different for children bash processes)
- On line `6`: The `PATH` environment variable is being __extended__. Let's understand the purpose of the `PATH` shell environment variable in the next section. 

--- 
__NOTE:__ The missing lines of the `.bash_profile` file content list are not relevant for this unit, however most of them use commands that you already know. 

Did you recognize some?