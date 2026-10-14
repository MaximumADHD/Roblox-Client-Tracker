PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["i"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["RegExp"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["JestTypes"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K7 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R2 K8 ["default"]
       23 RETURN                           R2 1
