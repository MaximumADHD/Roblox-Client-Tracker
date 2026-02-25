PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["message"]
        2 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["createReducer"]
       18 LOADK                            R3 K8 [""]
       19 DUPTABLE                         R4 K10 [{"SetMessage"}]
       20 DUPCLOSURE                       R5 K11 [PROTO_0]
       21 SETTABLEKS                       R5 R4 K9 ["SetMessage"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
