Now that we have a new `$workspace` variable that holds the path to the `~/workspace` directory, let's `exit` the _current bash session_:

```
codio@bamboo-marvin:~/workspace$ exit
```

And try `echo`ing the `$workspace` variable again:

```
codio ~/workspace $ echo $workspace
# Nothing is returned here
```

|||definition
### Command: 
```
export <variable_name>=<variable_value>
```
__Definition:__ When you use the `export` command, you are adding the variable to the __environment variables list of the shell in which the `export` command was called__ and all the environment variables of a parent shell are passed to the current shell processes.
|||

When you finish the shell (`exit` or close the shell window) its environment is destroyed.