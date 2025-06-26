>>>>>
++++++++++
<<<<<

+[
    >,.                                 Input to c1
    <[-]>
    +[
        <+>
        [-]
    ]
    >+<                                 Increment c2

    >[->+>+<<]>>[-<<+>>]                Copy c2 to c3 via c4

    +                                   Set c4 to 1

    <-----------------------------------If c3 is 40
    -----[
        >[-]<                           Zero c4 to say not 40
        [-]                             Zero c3 to end loop
    ]

    >[                                  If c4 is still 1
        >.<                             print c5
        [-]                             zero c4
        <<[-]>>                         Zero c2
    ]

    <<<<
]