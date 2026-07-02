PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["shouldYield"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETIMPORT                        R2 K2 [tick]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K3 ["lastTickSeconds"]
        8 SUB                              R1 R2 R3
        9 GETUPVAL                         R2 0
       10 JUMPIFNOTLE                      R2 R1 ; [+9]
       12 GETIMPORT                        R2 K6 [task.wait]
       14 CALL                             R2 0 0
       15 GETIMPORT                        R2 K2 [tick]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R0 K3 ["lastTickSeconds"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["flags"]
       18 GETTABLEKS                       R3 R3 K8 ["getFIntUGCValidationMaxMsPerFrame"]
       20 CALL                             R2 1 1
       21 MOVE                             R4 R2
       22 CALL                             R4 0 1
       23 DIVK                             R3 R4 K9 [1000]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
