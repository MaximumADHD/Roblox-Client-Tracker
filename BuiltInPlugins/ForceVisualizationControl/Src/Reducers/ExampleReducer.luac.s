PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"DefaultStateObject"}]
        3 GETTABLEKS                       R5 R1 K2 ["something"]
        5 SETTABLEKS                       R5 R4 K0 ["DefaultStateObject"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Actions"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R4 K11 ["ExampleAction"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       36 DUPTABLE                         R7 K14 [{"DefaultStateObject"}]
       37 LOADK                            R8 K15 [""]
       38 SETTABLEKS                       R8 R7 K13 ["DefaultStateObject"]
       40 NEWTABLE                         R8 1 0
       42 GETTABLEKS                       R9 R5 K16 ["name"]
       44 DUPCLOSURE                       R10 K17 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 SETTABLE                         R10 R8 R9
       47 CALL                             R6 2 1
       48 RETURN                           R6 1
