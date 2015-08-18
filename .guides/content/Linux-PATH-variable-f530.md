`PATH` is an _environmental variable_ in Linux that __tells the shell which directories to search for executable files__ (ready-to-run programs) in response to commands issued by a user.

Take a closer look at the current `PATH` environment variable value by `echo`ing its value: 

```
echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/codio/workspace/.guides/bashtests
```

If we compare the previous output with line `6` of the `~/.bash_profile` file:

```
6  export PATH=$PATH:$HOME/workspace/.guides/bashtests
```

We can identify that the original `PATH` value was defined only up to the: `/usr/games` directory path and that the `$HOME/workspace/.guides/bashtests` is concatenated as the last _directory path_.

In this case the `$HOME/workspace/.guides/bashtests` is where the challenges testing program is run each time you hit the _Check It!_ button.

|||definition
### The `PATH` variable structure
A user's `PATH` consists of a series of __colon-separated absolute paths__:

```
PATH=/home/codio/directory-path:/home/codio/other-directory-path
```

__The order from left to right__ in which the directory paths are written, determines the __search priority__ of executable files.
|||