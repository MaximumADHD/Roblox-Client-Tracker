PROTO_0:
        0 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 MOVE                             R7 R0
        7 MOVE                             R8 R3
        8 CALL                             R6 2 1
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 CALL                             R5 3 1
       12 MOVE                             R6 R3
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getVector2FromUDim2Scale"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["getUDim2FromVector2"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["rotatePoint"]
       27 CALL                             R2 1 1
       28 DUPCLOSURE                       R3 K8 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 SETGLOBAL                        R3 K9 ["rotateUDim2Point"]
       34 GETGLOBAL                        R3 K9 ["rotateUDim2Point"]
       36 RETURN                           R3 1
