PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["transition"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["ReactSharedInternals"]
       14 GETTABLEKS                       R2 R1 K7 ["ReactCurrentBatchConfig"]
       16 DUPTABLE                         R3 K11 [{["NoTransition"] = 0, ["requestCurrentTransition"]}]
       17 DUPCLOSURE                       R4 K12 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R4 R3 K10 ["requestCurrentTransition"]
       21 RETURN                           R3 1
