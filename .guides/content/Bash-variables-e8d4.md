Variables are capable of storing different types of data or _datatypes_ for short. 

These _datatypes_ in _bashscripting_ include __single characters__, __text strings__, __integer numbers__, __booleans__ (true and false values), and __arrays__ (collections of the previous datatypes). 

It is possible to store the _output of a command_ which is most certainly a string as well.

Lets create and return the value of our first variable. 

On your terminal window type and execute the following: 

```
# Note the syntax for the variable name:
my_var="This is my first variable"
```

The _"This is my first variable"_ string is now stored in the `my_var` variable. 

Return the `my_var` value by executing: 

```
# Note the '$' dollar sign
echo $my_var
```

### Bash variables syntax

Each programming language has a special syntax for naming and declaring variables.

For the _bash_ language, it's recommended to use `_` underscore characters and lowercase letters for variable names.

The reason for this is because there are other kinds of variables called __environment__ variables, which are named with UPPERCASE letters. More on this later.