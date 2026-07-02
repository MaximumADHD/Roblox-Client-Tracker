PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["isEnabled"]
        2 GETTABLEKS                       R3 R1 K1 ["errorMessage"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K3 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K6 [{"Enabled", "Error"}]
       11 SETTABLEKS                       R2 R6 K4 ["Enabled"]
       13 SETTABLEKS                       R3 R6 K5 ["Error"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K12 [{["Enabled"] = , ["Error"] = }]
       26 DUPTABLE                         R5 K14 [{"DraftsServiceLoaded"}]
       27 DUPCLOSURE                       R6 K15 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R5 K13 ["DraftsServiceLoaded"]
       31 CALL                             R3 2 1
       32 RETURN                           R3 1
