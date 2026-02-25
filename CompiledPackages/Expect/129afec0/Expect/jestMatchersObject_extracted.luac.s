PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R1 R2 R3
        4 GETTABLEKS                       R0 R1 K2 ["state"]
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Symbol"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["types"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R3 K8 ["for_"]
       21 LOADK                            R6 K9 ["$$jest-matchers-object"]
       22 CALL                             R5 1 1
       23 DUPCLOSURE                       R6 K10 [PROTO_0]
       24 CAPTURE                          VAL R5
       25 DUPTABLE                         R7 K13 [{"JEST_MATCHERS_OBJECT", "getState"}]
       26 SETTABLEKS                       R5 R7 K11 ["JEST_MATCHERS_OBJECT"]
       28 SETTABLEKS                       R6 R7 K12 ["getState"]
       30 RETURN                           R7 1
