PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 JUMPIF                           R1 ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["new"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["entries"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 -1
       15 CALL                             R1 -1 1
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Map"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K6 ["Object"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R2 K7 ["InstanceOf"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R7 R2 K8 ["ES7Types"]
       28 CALL                             R6 1 1
       29 DUPCLOSURE                       R7 K9 [PROTO_0]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 RETURN                           R7 1
