PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Rodux"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Actions"]
       27 GETTABLEKS                       R5 R6 K10 ["SetLiveSearch"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K11 ["createReducer"]
       32 DUPTABLE                         R6 K14 [{"searchTerm", "results"}]
       33 LOADK                            R7 K15 [""]
       34 SETTABLEKS                       R7 R6 K12 ["searchTerm"]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K13 ["results"]
       40 NEWTABLE                         R7 1 0
       42 GETTABLEKS                       R8 R4 K16 ["name"]
       44 DUPCLOSURE                       R9 K17 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 SETTABLE                         R9 R7 R8
       47 CALL                             R5 2 1
       48 RETURN                           R5 1
