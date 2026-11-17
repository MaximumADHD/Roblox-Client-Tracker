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
        9 JUMPIFLT                         R7 R6 ; [+24]
       11 LOADB                            R5 1
       12 LENGTH                           R6 R2
       13 LOADN                            R7 0
       14 JUMPIFLT                         R7 R6 ; [+19]
       16 LOADB                            R5 1
       17 LENGTH                           R6 R3
       18 LOADN                            R7 0
       19 JUMPIFLT                         R7 R6 ; [+14]
       21 LOADB                            R5 1
       22 LENGTH                           R6 R4
       23 LOADN                            R7 0
       24 JUMPIFLT                         R7 R6 ; [+9]
       26 GETUPVAL                         R6 2
       27 MOVE                             R7 R0
       28 CALL                             R6 1 1
       29 LOADN                            R7 0
       30 JUMPIFLT                         R7 R6 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 RETURN                           R5 1

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
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Selectors"]
       33 GETTABLEKS                       R4 R4 K9 ["GetPendingPlayTesterCount"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K10 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R4 1
