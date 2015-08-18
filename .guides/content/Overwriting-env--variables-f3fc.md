### Isn't the prompt displaying the current user and directory?

It does, however, the `PS1` variable has backslash-escaped special characters called _PROMPTING_ characters that are decoded as follows:

- `\u` - the username of the current user
- `\w` - the current working directory, with `$HOME` abbreviated with a tilde
- `$` -- the `$` dollar character is commonly used for Unix/Linux prompts

Let's override the `PS1` current value, `\u \w $`, to something else.

In your terminal execute:

```
PS1="something else $ "
```

Fortunately for us, the `PS1` overwrite is only temporary. 

There are 2 ways of getting back our original `PS1`, either by overwriting it again: 

```
PS1="\u \w $ "
```

Or by `exit`ing the current shell session: 

```
something else $ exit
```

Click on the __re-connect__ button afterwards.