PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["localization"]
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["mock"]
        8 CALL                             R2 0 1
        9 MOVE                             R1 R2
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K3 ["storeState"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["Store"]
       17 GETTABLEKS                       R3 R3 K5 ["new"]
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R2
       21 GETUPVAL                         R6 3
       22 CALL                             R3 3 1
       23 GETTABLEKS                       R4 R0 K0 ["props"]
       25 GETTABLEKS                       R4 R4 K6 ["theme"]
       27 JUMPIF                           R4 ; [+4]
       28 GETUPVAL                         R5 4
       29 LOADB                            R6 1
       30 CALL                             R5 1 1
       31 MOVE                             R4 R5
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R5 R5 K7 ["createElement"]
       35 GETUPVAL                         R6 6
       36 DUPTABLE                         R7 K11 [{"localization", "plugin", "focusGui", "store", "theme"}]
       37 SETTABLEKS                       R1 R7 K1 ["localization"]
       39 NEWTABLE                         R8 0 0
       41 SETTABLEKS                       R8 R7 K8 ["plugin"]
       43 NEWTABLE                         R8 0 0
       45 SETTABLEKS                       R8 R7 K9 ["focusGui"]
       47 SETTABLEKS                       R3 R7 K10 ["store"]
       49 SETTABLEKS                       R4 R7 K6 ["theme"]
       51 GETTABLEKS                       R9 R0 K0 ["props"]
       53 GETUPVAL                         R10 5
       54 GETTABLEKS                       R10 R10 K12 ["Children"]
       56 GETTABLE                         R8 R9 R10
       57 CALL                             R5 3 -1
       58 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["ServiceWrapper"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Resources"]
       45 GETTABLEKS                       R6 R6 K13 ["MakeTheme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Reducers"]
       54 GETTABLEKS                       R7 R7 K15 ["MainReducer"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Middleware"]
       63 GETTABLEKS                       R8 R8 K17 ["MainMiddleware"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R3 K18 ["ContextServices"]
       68 GETTABLEKS                       R9 R8 K19 ["Localization"]
       70 GETTABLEKS                       R10 R1 K20 ["Component"]
       72 LOADK                            R12 K21 ["MockServiceWrapper"]
       73 NAMECALL                         R10 R10 K22 ["extend"]
       75 CALL                             R10 2 1
       76 DUPCLOSURE                       R11 K23 [PROTO_0]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R11 R10 K24 ["render"]
       86 RETURN                           R10 1
