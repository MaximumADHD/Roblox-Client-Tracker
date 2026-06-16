PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 MOVE                             R7 R1
        9 CALL                             R4 3 1
       10 MOVE                             R5 R2
       11 MOVE                             R6 R4
       12 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Otter"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R4 R4 K2 ["Parent"]
       23 GETTABLEKS                       R4 R4 K7 ["useMotor"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K8 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
