Existing variables can be replaced with new values just by assigning the new value to its name.

Lets create a variable that points to the `~/workspace` directory: 

```
workspace=/home/codio/workspace
```

And overwrite the existing `config_dir` variable value by doing:

```
config_dir=$workspace/config
```

Even though the value still refers to the `config/` directory, we are using the `$workspace` variable value to refer to our _workspace_ directory.

Now we have 2 variables that we can use as a shortcut for different commands: 

```
# List workspace content
ls -al $workspace
```

```
# Create a file inside the config/ directory
touch $config_dir/config.txt
```

|||info
### Use tab autocompletion
Tab autocompletion also works with existing variables.
|||