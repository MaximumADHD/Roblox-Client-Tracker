PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["transition"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["ReactSharedInternals"]
       14 GETTABLEKS                       R2 R1 K7 ["ReactCurrentBatchConfig"]
       16 DUPTABLE                         R3 K10 [{"NoTransition", "requestCurrentTransition"}]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K8 ["NoTransition"]
       20 DUPCLOSURE                       R4 K11 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K9 ["requestCurrentTransition"]
       24 RETURN                           R3 1
