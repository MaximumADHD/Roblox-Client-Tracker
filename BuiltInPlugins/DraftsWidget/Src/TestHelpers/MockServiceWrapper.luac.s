PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["draftsService"]
        4 JUMPIF                           R1 ; [+10]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["new"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["TestCases"]
       11 GETTABLEKS                       R3 R4 K4 ["DEFAULT"]
       13 CALL                             R2 1 1
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R3 R0 K0 ["props"]
       17 GETTABLEKS                       R2 R3 K5 ["localization"]
       19 JUMPIF                           R2 ; [+5]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K6 ["mock"]
       23 CALL                             R3 0 1
       24 MOVE                             R2 R3
       25 GETTABLEKS                       R4 R0 K0 ["props"]
       27 GETTABLEKS                       R3 R4 K7 ["plugin"]
       29 JUMPIF                           R3 ; [+5]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K2 ["new"]
       33 CALL                             R4 0 1
       34 MOVE                             R3 R4
       35 GETTABLEKS                       R5 R0 K0 ["props"]
       37 GETTABLEKS                       R4 R5 K8 ["storeState"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R6 R7 K9 ["Store"]
       42 GETTABLEKS                       R5 R6 K2 ["new"]
       44 GETUPVAL                         R6 4
       45 MOVE                             R7 R4
       46 NEWTABLE                         R8 0 1
       48 GETUPVAL                         R10 3
       49 GETTABLEKS                       R9 R10 K10 ["thunkMiddleware"]
       51 SETLIST                          R8 R9 1 [1]
       53 CALL                             R5 3 1
       54 GETTABLEKS                       R7 R0 K0 ["props"]
       56 GETTABLEKS                       R6 R7 K11 ["theme"]
       58 JUMPIF                           R6 ; [+4]
       59 GETUPVAL                         R7 5
       60 LOADB                            R8 1
       61 CALL                             R7 1 1
       62 MOVE                             R6 R7
       63 GETUPVAL                         R8 6
       64 GETTABLEKS                       R7 R8 K12 ["createElement"]
       66 GETUPVAL                         R8 7
       67 DUPTABLE                         R9 K14 [{"draftsService", "localization", "plugin", "store", "theme"}]
       68 SETTABLEKS                       R1 R9 K1 ["draftsService"]
       70 SETTABLEKS                       R2 R9 K5 ["localization"]
       72 SETTABLEKS                       R3 R9 K7 ["plugin"]
       74 SETTABLEKS                       R5 R9 K13 ["store"]
       76 SETTABLEKS                       R6 R9 K11 ["theme"]
       78 GETTABLEKS                       R11 R0 K0 ["props"]
       80 GETUPVAL                         R13 6
       81 GETTABLEKS                       R12 R13 K15 ["Children"]
       83 GETTABLE                         R10 R11 R12
       84 CALL                             R7 3 -1
       85 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["Localization"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Reducers"]
       40 GETTABLEKS                       R7 R8 K13 ["MainReducer"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K14 ["TestHelpers"]
       49 GETTABLEKS                       R8 R9 K15 ["MockDraftsService"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R11 R0 K11 ["Src"]
       56 GETTABLEKS                       R10 R11 K14 ["TestHelpers"]
       58 GETTABLEKS                       R9 R10 K16 ["MockPlugin"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R12 R0 K11 ["Src"]
       65 GETTABLEKS                       R11 R12 K17 ["Resources"]
       67 GETTABLEKS                       R10 R11 K18 ["MakeTheme"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R13 R0 K11 ["Src"]
       74 GETTABLEKS                       R12 R13 K19 ["Components"]
       76 GETTABLEKS                       R11 R12 K20 ["ServiceWrapper"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R1 K21 ["Component"]
       81 LOADK                            R13 K22 ["MockServiceWrapper"]
       82 NAMECALL                         R11 R11 K23 ["extend"]
       84 CALL                             R11 2 1
       85 DUPCLOSURE                       R12 K24 [PROTO_0]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R12 R11 K25 ["render"]
       96 RETURN                           R11 1
