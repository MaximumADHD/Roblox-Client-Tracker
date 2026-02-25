PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["searchTerm"]
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
       16 GETTABLEKS                       R3 R0 K7 ["Src"]
       18 GETTABLEKS                       R2 R3 K8 ["Actions"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K9 ["UpdateSearchTerm"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R1 K10 ["createReducer"]
       27 LOADK                            R5 K11 [""]
       28 NEWTABLE                         R6 1 0
       30 GETTABLEKS                       R7 R3 K12 ["name"]
       32 DUPCLOSURE                       R8 K13 [PROTO_0]
       33 SETTABLE                         R8 R6 R7
       34 CALL                             R4 2 1
       35 RETURN                           R4 1
