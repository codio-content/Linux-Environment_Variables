As we have learned, it is possible to `export` the value of a variable created on a _parent shell_ and have them available on _children shells_. 

However, this is not always true for _environment variables_.

When you start a new _child shell_, it is assigned a different prompt display.

__Where does its display configuration come from?__

Lets export the value of the `PS1` prompt variable for a child shell:

```
codio ~/workspace $ export PS1="keep the prompt $ "
```

Create a new _child shell_:

```
keep the prompt $ bash
```

The child shell prompt isn't modified:

```
codio@bamboo-marvin:~/workspace$
```