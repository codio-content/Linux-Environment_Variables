## Managing computer processes

Knowing how to interpret `top` and `ps` commands output helps us to be more in control with our computer systems. 

The `PID` or _process identification number_ allows us to catch any _Running_, _Sleeping_, _Stopped_ or _Zombie_ processes. 

_Running_ processes are being executed on the __foreground__. This means that the terminal is going to be blocked until this _foreground process_ finishes its execution.

_Sleeping_ processes won’t interrupt the terminal nor are they going to take much CPU or Memory power.

It's important to aknowledge that _Sleeping_ processes are not background processes. __Background processes__ are programs that are running without interrupting or blocking the current terminal window and can be invoked by adding an `&` symbol at the end of the command line. 

Running processes can be __suspended__ by executing the `suspend` command. _Suspended_ processes are labelled with a letter `T` in the `top` command _process status_ (S) column and can be put in the _foreground_ again by executing the `fg` command.

Programs labelled with a `Z` in the `top` _process status_ column means that they have become _unresponsive_ therefore they need to be __killed__. 

By executing the `kill <PID>` command, any process can be fully terminated.