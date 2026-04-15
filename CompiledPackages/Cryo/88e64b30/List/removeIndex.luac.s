PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 LOADN                            R6 1
        4 LENGTH                           R4 R0
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 JUMPIFNOTEQ                      R6 R1 ; [+3]
        9 LOADN                            R3 1
       10 JUMP                             ; [+3]
       11 SUB                              R7 R6 R3
       12 GETTABLE                         R8 R0 R6
       13 SETTABLE                         R8 R2 R7
       14 FORNLOOP                         R4
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
