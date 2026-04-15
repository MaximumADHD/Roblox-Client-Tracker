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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K2 ["Parent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["instanceof"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Array"]
       23 GETTABLEKS                       R4 R5 K7 ["reduce"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K8 ["types"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K9 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
