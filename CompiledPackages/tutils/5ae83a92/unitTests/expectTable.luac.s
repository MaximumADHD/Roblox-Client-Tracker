PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K2 [string.format]
        6 LOADK                            R4 K3 ["expected: %s\ninstead got: %s"]
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETUPVAL                         R7 1
       12 CALL                             R6 1 -1
       13 CALL                             R3 -1 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R1 K5 [assert]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"toEqual"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["toEqual"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["shallowEqual"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["toString"]
       22 CALL                             R1 1 1
       23 DUPCLOSURE                       R2 K7 [PROTO_1]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 RETURN                           R2 1
