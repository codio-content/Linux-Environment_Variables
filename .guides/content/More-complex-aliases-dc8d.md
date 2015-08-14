We can combine _command aliases_ with pre-existing variables as well as to work with other command options.

Lets create a command alias that lists the path to the current working directory file permissions using its `PWD` environment variable:

```
alias lspwd="ls -l $PWD"
```

Now you can use your brand new command alias on any directory and list its file and directories permissions: 

```
codio ~/workspace $ lspwd

# Output:
total 0
drwxrwxr-x 2 codio codio 6 Aug 14 19:10 config
```

### Where can I use command aliases? 

The limit for defining command aliases is in your imagination. Just make sure that they don't override other command aliases. 

To check whether a command is an alias or not execute: 

```
type <command_name>
```

Say the `ls` charatcer combination has been defined as an alias: `alias ls="ls -a"`. 
It is possible to execute the command in its original form by doing: 

```
\ls
```

--- 
Each developer has different reasons for creating aliases that increase his/her productivity. 

What would you use command aliases for?