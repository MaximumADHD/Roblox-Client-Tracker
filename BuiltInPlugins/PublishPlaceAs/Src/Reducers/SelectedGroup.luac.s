PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedGroup"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedGroup"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedGroup"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K9 [{"selectedGroup"}]
       24 LOADN                            R4 0
       25 SETTABLEKS                       R4 R3 K8 ["selectedGroup"]
       27 GETTABLEKS                       R4 R1 K10 ["createReducer"]
       29 MOVE                             R5 R3
       30 DUPTABLE                         R6 K12 [{"SetSelectedGroup"}]
       31 DUPCLOSURE                       R7 K13 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R7 R6 K11 ["SetSelectedGroup"]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1
