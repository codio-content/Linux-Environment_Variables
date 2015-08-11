All of the _shell variables_ are used by the system at some point, whether for defining the _datetime_ configuration, or the _language_ configuration among other environment settings.

### Echo common environment variables

Get the _current user home directory_ as stored in the `HOME` variable: 

```
echo $HOME # /home/codio
```

Echo the _current language_ used in the whole environment:

```
echo $LANG # en_US.UTF-8
```

Get the path to the `.bash_history` file where commands are stored:

```
echo $HISTFILE # /home/codio/.bash_history
```

Get the colon-separated list of directories in which the shell looks for commands:

```
echo $PATH # /usr/local/sbin:/usr/local/bin ...
```

Get the `PS1` (Primary Prompt String num. 1) variable that determines how your command prompt should look and what to display:

```
echo $PS1 # \u \w $
```