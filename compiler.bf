[
    This program is a compiler that takes as input some stream of text that is
    valid brainf*ck and outputs c code that runs the content of the specified
    program.
]

First task: output the first outputs that are necessary

>++++[<++++++++>-]<                     Save space character in cell 0

>+++++[>+++++++<-]>.                    Print # character
<+++++++[>++++++++++<-]>.               Print i character
+++++.-----------.+++++++++.+++++++++.  Print nclu
<++++++[>---<-]>+.+.<<.>>               Print "de "
>++++++++++.<                           Print newline and store it in cell 3