PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedGroup"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedGroup"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedGroup"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       23 DUPTABLE                         R3 K10 [{["selectedGroup"] = 0}]
       24 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       26 MOVE                             R5 R3
       27 DUPTABLE                         R6 K13 [{"SetSelectedGroup"}]
       28 DUPCLOSURE                       R7 K14 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R7 R6 K12 ["SetSelectedGroup"]
       32 CALL                             R4 2 -1
       33 RETURN                           R4 -1
