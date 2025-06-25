[
    This script prints a number that exists in its first cell. Its requirements
    are as follows:
    - 9 free and zeroed cells after the original

    After the script is executed, the original value will be destroyed.

    Also note that this is not fixed width.
]

Example taking the value from the console
,

c9 stores whether any nonzero values have been seen (in order to print the next
one)

[->+>+<<]>>[-<<+>>]                     Copy c0 to c1 via c2

Print the hundreds

++++++++++++++++++++++++++++++++++++++++Store 100 in c2
++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++

Perform the division c1/c2=c3

>>+                                     c4 stores whether it has reached 0 yet

[                                       loop until c4 reaches 0
    <<[->>>+>+<<<<]>>>>[-<<<<+>>>>]     copy c2 to c5 via c6
    <[                                  while c5 (100) is not depleted
        >+<                             set c6 to 1
        <<<<[->>>>>>+>+<<<<<<<]>>>>>>>[-Copy c1 to c7 via c8
        <<<<<<<+>>>>>>>]
        <[                              If c7 is nonzero
            <[-]>                       set c6 to 0
            [-]                         Zero c7
        ]
        <[                              If c6 is still 1 (ie if c1 is 0)
            <<[-]>>                     c4 becomes 0 to denote that subtraction
                                            is done
            [-]                         c6 becomes 0 to end the loop
        ]
        <-<<<<->>>>                     Reduce one from both c1 and c5
    ]
    
    <[->+>+<<]>>[-<<+>>]                Copy c4 to c5 via c6

    <[<<+>>[-]]                         If c5 is 1 (ie havent hit zero yet)
                                            then add one to c3 and zero c5
    <                                   Go to c4 for loop
]

<[->+>+<<]>>[-<<+>>]                    Copy c3 to c4 via c5

<[-<<<<---------------------------------Update the change in c0
----------------------------------------
--------------------------->>>>
>>>>>+<<<<<]                            Set c9

>>>>>[-<+<+>>]<[->+<]                   Copy c9 to c7 via c8

<[                                      If c7
    <<<<++++++++++++++++++++++++++++++++Add 48 to c3 to make it into a digit
    ++++++++++++++++

    .                                   Print
    >>>>
    [-]
]

<<<<                                    Go to c3

[-]                                     Clear c3

<[-]                                    Clear c2

<[-]                                    Clear c1

<

[->+>+<<]>>[-<<+>>]                     Copy c0 to c1 via c2

Print the tens

++++++++++                              Store 10 in c2

Perform the division c1/c2=c3

>>+                                     c4 stores whether it has reached 0 yet

[                                       loop until c4 reaches 0
    <<[->>>+>+<<<<]>>>>[-<<<<+>>>>]     copy c2 to c5 via c6
    <[                                  while c5 (100) is not depleted
        >+<                             set c6 to 1
        <<<<[->>>>>>+>+<<<<<<<]>>>>>>>[-Copy c1 to c7 via c8
        <<<<<<<+>>>>>>>]
        <[                              If c7 is nonzero
            <[-]>                       set c6 to 0
            [-]                         Zero c7
        ]
        <[                              If c6 is still 1 (ie if c1 is 0)
            <<[-]>>                     c4 becomes 0 to denote that subtraction
                                            is done
            [-]                         c6 becomes 0 to end the loop
        ]
        <-<<<<->>>>                     Reduce one from both c1 and c5
    ]
    
    <[->+>+<<]>>[-<<+>>]                Copy c4 to c5 via c6

    <[<<+>>[-]]                         If c5 is 1 (ie havent hit zero yet)
                                            then add one to c3 and zero c5
    <                                   Go to c4 for loop
]

<[->+>+<<]>>[-<<+>>]                    Copy c3 to c4 via c5

<[-<<<<---------->>>>
>>>>>+<<<<<]                            Set c9

>>>>>[-<+<+>>]<[->+<]                   Copy c9 to c7 via c8

<[                                      If c7
    <<<<++++++++++++++++++++++++++++++++Add 48 to c3 to make it into a digit
    ++++++++++++++++

    .                                   Print
    >>>>
    [-]
]

<<<<                                    Go to c3

[-]                                     Clear c3

<[-]                                    Clear c2

<[-]                                    Clear c1

<

[->+>+<<]>>[-<<+>>]                     Copy c0 to c1 via c2

Print the tens

+                                       Store 10 in c2

Perform the division c1/c2=c3

>>+                                     c4 stores whether it has reached 0 yet

[                                       loop until c4 reaches 0
    <<[->>>+>+<<<<]>>>>[-<<<<+>>>>]     copy c2 to c5 via c6
    <[                                  while c5 (100) is not depleted
        >+<                             set c6 to 1
        <<<<[->>>>>>+>+<<<<<<<]>>>>>>>[-Copy c1 to c7 via c8
        <<<<<<<+>>>>>>>]
        <[                              If c7 is nonzero
            <[-]>                       set c6 to 0
            [-]                         Zero c7
        ]
        <[                              If c6 is still 1 (ie if c1 is 0)
            <<[-]>>                     c4 becomes 0 to denote that subtraction
                                            is done
            [-]                         c6 becomes 0 to end the loop
        ]
        <-<<<<->>>>                     Reduce one from both c1 and c5
    ]
    
    <[->+>+<<]>>[-<<+>>]                Copy c4 to c5 via c6

    <[<<+>>[-]]                         If c5 is 1 (ie havent hit zero yet)
                                            then add one to c3 and zero c5
    <                                   Go to c4 for loop
]

<+++++++++++++++++++++++++++++++++++++++Add 48 to c3 to make it into a digit
+++++++++

.

<<<[-]>[-]>[-]>[-]>>>>>>[-]             Clear c0 c1 c2 c3 and c9

<<<<<<<<<                               Move pointer back to c0
