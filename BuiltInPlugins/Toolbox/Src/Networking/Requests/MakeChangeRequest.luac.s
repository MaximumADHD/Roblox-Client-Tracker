PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+7]
       16 GETUPVAL                         R4 3
       17 GETUPVAL                         R5 4
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R0 K0 ["dispatch"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 5
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R6 2
       26 CALL                             R4 2 -1
       27 NAMECALL                         R2 R0 K0 ["dispatch"]
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["AddChange"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["ClearChange"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
