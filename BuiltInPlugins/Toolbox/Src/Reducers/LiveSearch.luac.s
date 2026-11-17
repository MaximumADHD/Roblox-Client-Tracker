PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"results", "searchTerm"}]
        7 GETTABLEKS                       R5 R1 K2 ["results"]
        9 SETTABLEKS                       R5 R4 K2 ["results"]
       11 GETTABLEKS                       R5 R1 K3 ["searchTerm"]
       13 SETTABLEKS                       R5 R4 K3 ["searchTerm"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Rodux"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Actions"]
       27 GETTABLEKS                       R5 R5 K10 ["SetLiveSearch"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K11 ["createReducer"]
       32 DUPTABLE                         R6 K15 [{["searchTerm"] = "", ["results"]}]
       33 NEWTABLE                         R7 0 0
       35 SETTABLEKS                       R7 R6 K14 ["results"]
       37 NEWTABLE                         R7 1 0
       39 GETTABLEKS                       R8 R4 K16 ["name"]
       41 DUPCLOSURE                       R9 K17 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 SETTABLE                         R9 R7 R8
       44 CALL                             R5 2 1
       45 RETURN                           R5 1
