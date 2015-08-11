If you think about it, most of the commands we've learned so far return text strings with the result of what's being evaluated.

### Command interpolation

These results can be stored in a variable by using the `$(command)` syntax.

Lets store our _current working directory_ absolute path inside a variable: 

```
curr_dir="The current working directory is: $(pwd)"
```

And return the `curr_dir` variable value by executing: 

```
echo $curr_dir
```

### Simple variable values interpolation

Our `my_var` variable is still on the computer's memory, we can output the value of a variable that has been already created within another string like this: 

```
# Note the use of single and double quotes
echo '$my_var value is:' $my_var
```

### The order of single and double quotes is important 

When using `' '` single quotes, the value of the `$my_var` variable is interpreted literally.