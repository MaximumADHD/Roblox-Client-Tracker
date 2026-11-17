PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOTEQ                      R1 R2 ; [+8]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 4
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 1
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R0 K0 ["dispatch"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Actions"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AddChange"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["ClearChange"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
