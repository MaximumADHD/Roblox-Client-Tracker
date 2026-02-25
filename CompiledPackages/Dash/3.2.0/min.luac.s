PROTO_0:
        0 JUMPIFLT                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 JUMPIF                           R0 ; [+6]
        5 DUPTABLE                         R4 K2 [{"value", "original"}]
        6 SETTABLEKS                       R3 R4 K0 ["value"]
        8 SETTABLEKS                       R1 R4 K1 ["original"]
       10 RETURN                           R4 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R3
       13 GETTABLEKS                       R7 R0 K0 ["value"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+6]
       17 DUPTABLE                         R4 K2 [{"value", "original"}]
       18 SETTABLEKS                       R3 R4 K0 ["value"]
       20 SETTABLEKS                       R1 R4 K1 ["original"]
       22 RETURN                           R4 1
       23 MOVE                             R4 R0
       24 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 1
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R0
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+2]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 MOVE                             R2 R0
       10 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+1]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R3
        9 LOADNIL                          R7
       10 CALL                             R4 3 1
       11 GETTABLEKS                       R5 R4 K0 ["original"]
       13 RETURN                           R5 1
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R0
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          VAL R3
       18 LOADNIL                          R7
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["reduce"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 DUPCLOSURE                       R3 K7 [PROTO_3]
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 RETURN                           R3 1
