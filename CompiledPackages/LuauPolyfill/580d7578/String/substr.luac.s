PROTO_0:
        0 JUMPIFNOT                        R2 ; [+5]
        1 LOADN                            R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+3]
        4 LOADK                            R3 K0 [""]
        5 RETURN                           R3 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 ADD                              R7 R1 R2
        8 SUBK                             R6 R7 K1 [1]
        9 JUMPIF                           R6 ; [+1]
       10 LOADNIL                          R6
       11 FASTCALL3                        STRING_SUB R0 R1 R6
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K4 [string.sub]
       17 CALL                             R3 3 1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
