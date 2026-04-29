PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 0
        6 ADD                              R1 R2 R3
        7 SUBK                             R0 R1 K0 [1]
        8 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+5]
        1 LOADN                            R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+3]
        4 LOADK                            R3 K0 [""]
        5 RETURN                           R3 1
        6 JUMPIF                           R2 ; [+2]
        7 MOVE                             R6 R2
        8 JUMP                             ; [+2]
        9 ADD                              R7 R1 R2
       10 SUBK                             R6 R7 K1 [1]
       11 FASTCALL3                        STRING_SUB R0 R1 R6
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K4 [string.sub]
       17 CALL                             R3 3 1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
