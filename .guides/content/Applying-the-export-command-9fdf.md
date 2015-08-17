Let's `export` a new variable on the _current bash session_:

```
codio ~/workspace $ export sum="5 plus 5 is: $(( 5 + 5 ))"
```

`echo` the `$sum` variable on the _current shell session:_

```
codio ~/workspace $ echo $sum
5 plus 5 is: 10
```

Start a new _bash child process_: 

```
codio ~/workspace $ bash
```

And `echo` the `export`ed `$sum` variable in it: 

```
codio@bamboo-marvin:~/workspace$ echo $sum
5 plus 5 is: 10
```

--- 

|||info
__It is not possible to `export` variables from a child shell to a parent shell__
This is because environmental variables are only passed to child processes. 

There isn't a built-in way of setting environmental variables of the parent shell. 

This is good in most cases and prevents programs from affecting the operating environment from which they were called.
|||