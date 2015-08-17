We have used the `echo` command in order to output the value stored in a variable. 

By simply writing the variable without any command prepended to it, the terminal echoes an error: 

```
codio ~/workspace $ $my_var
-bash: This: command not found
```

Because variable values are interpreted this way, we can use these values to store other useful strings such as __paths__ to other directories and use them as a shortcut.

Let's create an absolute path shortcut stored in a variable for later use with the `cd` command:

```
# TIP: Use your tab autocompletion skills
config_dir=/home/codio/workspace/config
```

In this case, the path is written without double quotes because __it does not include whitespaces between characters__.

Now that the `config_dir` variable exists, use it for navigating into the `config/` directory: 

```
cd $config_dir
```

