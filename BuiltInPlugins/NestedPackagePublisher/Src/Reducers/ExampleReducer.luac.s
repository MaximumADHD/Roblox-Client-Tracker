PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"DefaultStateObject"}]
        7 GETTABLEKS                       R5 R1 K4 ["something"]
        9 SETTABLEKS                       R5 R4 K2 ["DefaultStateObject"]
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
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["ExampleAction"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K11 ["createReducer"]
       34 DUPTABLE                         R6 K14 [{["DefaultStateObject"] = ""}]
       35 NEWTABLE                         R7 1 0
       37 GETTABLEKS                       R8 R4 K15 ["name"]
       39 DUPCLOSURE                       R9 K16 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLE                         R9 R7 R8
       42 CALL                             R5 2 -1
       43 RETURN                           R5 -1
