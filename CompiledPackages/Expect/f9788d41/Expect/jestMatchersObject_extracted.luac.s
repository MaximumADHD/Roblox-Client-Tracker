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
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["Symbol"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["types"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R3 K8 ["for_"]
       24 LOADK                            R6 K9 ["$$jest-matchers-object"]
       25 CALL                             R5 1 1
       26 DUPCLOSURE                       R6 K10 [PROTO_0]
       27 CAPTURE                          VAL R5
       28 DUPTABLE                         R7 K13 [{"JEST_MATCHERS_OBJECT", "getState"}]
       29 SETTABLEKS                       R5 R7 K11 ["JEST_MATCHERS_OBJECT"]
       31 SETTABLEKS                       R6 R7 K12 ["getState"]
       33 RETURN                           R7 1
