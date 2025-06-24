[
    This program is a compiler that takes as input some stream of text that is
    valid brainf*ck and outputs c code that runs the content of the specified
    program.
]

First task: output the includes

>++++[<++++++++>-]<                     Save space character in cell 0

>+++++[>+++++++<-]>.                    Print # character
<+++++++[>++++++++++<-]>.               Print i character
+++++.-----------.+++++++++.+++++++++.  Print nclu
<++++++[>---<-]>+.+.<<.>>               Print "de "
<+++++[>--------<-]>-.                  Print ascii 60 (open angle bracket)

<+++++[>+++++++++++<-]>.+.              Print "st"
<++++[>----<-]>.+++++.++++++.           Print "dio"

>><+++++++++[>+++++<-]>+.[-]<<          Print a period without changing cell 3
-------.                                Print "h"
<+++++[>--------<-]>--.                 Print ascii 62 (closed angle bracket)

>++++++++++.<                           Print newline and store it in cell 3

[-]                                     Reset cell 2

<+++++[>+++++++<-]>.                     Print # character
<+++++++[>++++++++++<-]>.               Print i character
+++++.-----------.+++++++++.+++++++++.  Print nclu
<++++++[>---<-]>+.+.<<.>>               Print "de "
<+++++[>--------<-]>-.                  Print ascii 60 (open angle bracket)

<+++++[>+++++++++++<-]>.+.              Print "st"
<++++[>----<-]>.++++++++.---.-------.   Print "dlib"

>>><+++++++++[>+++++<-]>+.[-]<<<        Print a period without changing cell 3
++++++.                                 Print "h"
<+++++[>--------<-]>--.                 Print ascii 62 (closed angle bracket)

>.<                                     Print newline

Reference for the state of the cells:

0   1   2   3   4   5   6
32  0   62  10  0   0   0
        ptr

Second task: output "int main(){uint8_t*m=malloc("

<++++++[>+++++++<-]>+.+++++.++++++.      Print "int"
<<.>>                                   Print space
-------.------------.++++++++.+++++.    Print "main"

>.<                                     Print newline