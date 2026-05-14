PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 2
        6 LOADB                            R5 1
        7 LENGTH                           R6 R1
        8 LOADN                            R7 0
        9 JUMPIFLT                         R7 R6 ; [+17]
       11 LOADB                            R5 1
       12 LENGTH                           R6 R2
       13 LOADN                            R7 0
       14 JUMPIFLT                         R7 R6 ; [+12]
       16 LOADB                            R5 1
       17 LENGTH                           R6 R3
       18 LOADN                            R7 0
       19 JUMPIFLT                         R7 R6 ; [+7]
       21 LENGTH                           R6 R4
       22 LOADN                            R7 0
       23 JUMPIFLT                         R7 R6 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Selectors"]
       15 GETTABLEKS                       R2 R2 K7 ["GetUserCollaborators"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Selectors"]
       24 GETTABLEKS                       R3 R3 K8 ["GetGroupCollaborators"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K9 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
