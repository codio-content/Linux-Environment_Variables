When you switched to this _Persisting variables_ section the terminal window was restarted and all of our existing variables were gone. __Why?__

Whenever you login to or start a new Linux shell a new bash session is created without any of the processes or variables of previous or different sessions. __Unless you `export` them__. 

Let's exemplify this concept by creating another `bash` _child session_ in the same terminal window:

```
codio ~/workspace $ bash
```

The prompt will change to something like this:

```
# Prompt display may vary
codio@bamboo-marvin:~/workspace$
```

Now that we have 2 different _bash processes_ running, lets create a variable on the _child shell_:

```
workspace=/home/codio/workspace
```

`echo` the `$workspace` variable on the _current bash shell_ to confirm that the variable has content: 

```
echo $workspace
```