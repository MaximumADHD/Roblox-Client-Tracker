PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R3 R4 R1
        6 SETTABLE                         R3 R2 R1
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 2 0
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["collectSet"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["forEach"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Types"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K8 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1
