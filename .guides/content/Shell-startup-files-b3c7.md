Whenever a shell is started, _bash_ looks for content inside 2 files: 

- `~/.bashrc`
- `~/.bash_profile`

The `~` tilde symbol indicates that they are stored in the home directory by default.

List the _home directory_ hidden files to confirm that the files exist there: 

```
ls -al ~
```

### The `.bashrc` file
What is meant to be stored in the `.bashrc` file?

For different environments and operating systems, hidden files that end with the `rc` characters are __executed for interactive non-login shells.__

#### What is an interative non-login shell?

If you’ve already logged into your machine and open a new terminal window, then `.bashrc` is executed before the first command prompt.

The `.bashrc` file is also run when you start a new _bash_ instance by typing the `bash` command in the terminal.

Considering the `PS1` variable example, if we would store the following variable definition in the `~/.bashrc` file:

```
# Inside ~/.bashrc file:
export PS1="\u \w $ "
```

and start a new _shell_ with the `bash` command, the prompt should keep this configuration as the `.bashrc` is run on the _bash_ process creation.

---
Let's understand the `.bash_profile` file behaviour in the next section.