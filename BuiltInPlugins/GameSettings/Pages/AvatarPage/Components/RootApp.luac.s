PROTO_0:
        0 DUPTABLE                         R1 K1 [{"store"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["Store"]
        4 GETTABLEKS                       R2 R2 K3 ["new"]
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 NEWTABLE                         R5 0 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["thunkMiddleware"]
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K0 ["store"]
       18 SETTABLEKS                       R1 R0 K5 ["state"]
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["StoreProvider"]
        6 DUPTABLE                         R3 K3 [{"store"}]
        7 GETTABLEKS                       R4 R0 K4 ["state"]
        9 GETTABLEKS                       R4 R4 K2 ["store"]
       11 SETTABLEKS                       R4 R3 K2 ["store"]
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K6 [{"Mouse"}]
       20 GETTABLEKS                       R8 R0 K7 ["props"]
       22 GETTABLEKS                       R8 R8 K5 ["Mouse"]
       24 SETTABLEKS                       R8 R7 K5 ["Mouse"]
       26 CALL                             R5 2 -1
       27 SETLIST                          R4 R5 -1 [1]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Rodux"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R1 K5 ["Packages"]
       35 GETTABLEKS                       R5 R5 K8 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Reducers"]
       42 GETTABLEKS                       R6 R6 K10 ["MorpherEditorRoot"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Components"]
       49 GETTABLEKS                       R7 R7 K12 ["RootPanel"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R2 K13 ["Component"]
       54 LOADK                            R9 K14 ["ComponentRootApp"]
       55 NAMECALL                         R7 R7 K15 ["extend"]
       57 CALL                             R7 2 1
       58 DUPCLOSURE                       R8 K16 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R8 R7 K17 ["init"]
       63 DUPCLOSURE                       R8 K18 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R8 R7 K19 ["render"]
       69 RETURN                           R7 1
