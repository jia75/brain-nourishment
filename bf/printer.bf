[
    This program receives an input stream and returns an output stream in
    Brainf*ck that if run prints the input.
]

Cell 0 stores whether the input has finished

Cell 1 stores the plus symbol
>+++++++++++++++++++++++++++++++++++++++++++
Cell 2 stores minus
>+++++++++++++++++++++++++++++++++++++++++++++
Cell 3 stores period
>++++++++++++++++++++++++++++++++++++++++++++++

Cell 7 stores last character

<<<
+[                                      Set cell 0 to 1 denoting no end
    >>>>,                               Get input to cell 4
    [>+>+<<-]>>[-<<+>>]                 Copy cell 4 to cell 5 via c6
    +                                   Set c6 to 1
    <----[                              If cell 5 is not equal to 4 (EOT)
        >-<                             Set 0 to cell 6
        [-]                             Empty cell 5
    ]
    >[                                  If cell 6 is not 0
        <<<<<<->>>>>>-                  Set cell 0 to 0 and cell 6 to 0
    ]

    Ref: ptr: c6

    Next: get difference between cell 4 and 7
    <<                                  
    [>+>+<<-]>>[-<<+>>]<<               Copy cell 4 to cell 5 via c6

    >>>
    [>+>+<<-]>>[-<<+>>]<<               Copy cell 7 to cell 8 via c9

    Ref: ptr: c7

    Store whether c8 fell to 0 while c5 was going to 0 in c9

    <<[                                 Go to c5 and start a loop
        >>>>>+<<                        Set c10 to 1
        [>>>>+>+<<<<<-]>>>>>[-<<<<<+>>>>Copy c8 to c12 via c13
            >]<           
        [<<->>[-]]                      If c12 is nonzero set c10 to 1 and set
                                            c12 to 0
        <<[<[-]+>-]                     If c10 is 1 set c9 to 1 and then set
                                            c10 to 0 to end the loop
        <<                              Go back to c8
        -<<<-                           Decrease c5 and c8
    ]

    Ref: ptr: c5

    >+<                                 Set c6 to 1

    >>>>[                               If c9 is not 0 (ie if it's 1)
        c8 leq than c5
        <<<->>>                         Set c6 to 0
        <[                              While c8 is nonzero
            <<<<<<<.>>>>>>>             print a plus
            +                           increment c8
        ]
        <<<<<.>>>>>                     print a period
        >-                              set c9 to 0
    ]

    <<<[                                If c6 is not zero (aka the else case
                                            from the previous
        -                               Set c6 to zero to exit the loop
        >>[                             While c8 is nonzero
            <<<<<<.>>>>>>               Print a minus
            -                           Decrement c8
        ]
        <<                              Go back to c6
        <<<.>>>                         print a period
        
    ]

    <<

    >>>[-]<<<                           Set c7 to 0

    Ref: ptr: c4
    [>+>>+<<<-]>[-<+>]<                 Copy cell 4 to cell 7 via c5

    >>>>[-]<<<<                         Set c8 to 0
    Ref: ptr: c4
    <<<<
]

