PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 GETTABLEKS                       R0 R0 K2 ["state"]
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Symbol"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["types"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R2 K7 ["for_"]
       19 LOADK                            R5 K8 ["$$jest-matchers-object"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K9 [PROTO_0]
       22 CAPTURE                          VAL R4
       23 DUPTABLE                         R6 K12 [{"JEST_MATCHERS_OBJECT", "getState"}]
       24 SETTABLEKS                       R4 R6 K10 ["JEST_MATCHERS_OBJECT"]
       26 SETTABLEKS                       R5 R6 K11 ["getState"]
       28 RETURN                           R6 1
