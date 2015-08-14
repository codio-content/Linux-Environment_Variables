As our commands knowledge gets wider, we need some way to synthesize or shorten long commands into simpler custom ones. 

### Introducing command aliases

The `alias` command allows us to create custom character combinations that work as a reference to pre-defined commands.

Lets create our first alias. 
This alias is going to be a shortcut for entering the `config` directory:

```
alias cd_config="cd ~/workspace/config"
```

Execute your new custom alias: 

```
codio ~/workspace $ cd_config
codio ~/workspace/config $
```

How cool is that?!

### Removing aliases:

In case you want your aliases to be removed execute:

```
unalias <alias_name>
```

__NOTE:__ You can overwrite pre-existing aliases as well.