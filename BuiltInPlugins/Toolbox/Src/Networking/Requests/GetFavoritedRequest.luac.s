PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R2 K1 ["totalCount"]
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+3]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R6 R0 K0 ["responseBody"]
        5 JUMPIFNOT                        R6 ; [+9]
        6 GETTABLEKS                       R7 R0 K0 ["responseBody"]
        8 GETTABLEKS                       R6 R7 K1 ["totalCount"]
       10 LOADN                            R7 0
       11 JUMPIFNOTLT                      R7 R6 ; [+3]
       13 LOADB                            R5 1
       14 JUMP                             ; [+2]
       15 LOADB                            R5 0
       16 JUMP                             ; [0]
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K2 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R1 R1 K0 ["getSave"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U1
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U4
       13 NAMECALL                         R1 R1 K1 ["andThen"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Actions"]
       17 GETTABLEKS                       R2 R3 K7 ["GetFavorited"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Actions"]
       26 GETTABLEKS                       R3 R4 K8 ["NetworkError"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K9 [PROTO_0]
       30 DUPCLOSURE                       R4 K10 [PROTO_4]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
