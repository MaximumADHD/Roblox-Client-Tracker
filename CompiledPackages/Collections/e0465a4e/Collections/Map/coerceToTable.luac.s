PROTO_0:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 SETTABLE                         R3 R0 R2
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R2 R0 K0 ["entries"]
        9 CALL                             R2 1 1
       10 DUPCLOSURE                       R3 K1 [PROTO_0]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Map"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R2 K6 ["InstanceOf"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R1 K7 ["Array"]
       23 GETTABLEKS                       R6 R6 K8 ["reduce"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R2 K9 ["ES7Types"]
       30 CALL                             R6 1 1
       31 DUPCLOSURE                       R7 K10 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R7 1
