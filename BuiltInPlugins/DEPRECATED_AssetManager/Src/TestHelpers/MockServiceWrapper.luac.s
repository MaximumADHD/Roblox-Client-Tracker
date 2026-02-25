PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["localization"]
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["mock"]
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R2 R0 K2 ["focusGui"]
       13 JUMPIF                           R2 ; [+5]
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K6 ["ScreenGui"]
       17 CALL                             R3 1 1
       18 MOVE                             R2 R3
       19 GETTABLEKS                       R3 R0 K7 ["plugin"]
       21 JUMPIF                           R3 ; [+5]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K4 ["new"]
       25 CALL                             R4 0 1
       26 MOVE                             R3 R4
       27 GETTABLEKS                       R4 R0 K8 ["mouse"]
       29 JUMPIF                           R4 ; [+4]
       30 NAMECALL                         R5 R3 K9 ["GetMouse"]
       32 CALL                             R5 1 1
       33 MOVE                             R4 R5
       34 GETTABLEKS                       R5 R0 K10 ["storeState"]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R7 R8 K11 ["Store"]
       39 GETTABLEKS                       R6 R7 K4 ["new"]
       41 GETUPVAL                         R7 3
       42 MOVE                             R8 R5
       43 NEWTABLE                         R9 0 1
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R10 R11 K12 ["thunkMiddleware"]
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R6 3 1
       51 GETTABLEKS                       R7 R0 K13 ["theme"]
       53 JUMPIF                           R7 ; [+14]
       54 GETIMPORT                        R8 K15 [require]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R11 R12 K16 ["Src"]
       59 GETTABLEKS                       R10 R11 K17 ["Resources"]
       61 GETTABLEKS                       R9 R10 K18 ["Theme"]
       63 CALL                             R8 1 1
       64 MOVE                             R9 R8
       65 LOADB                            R10 1
       66 CALL                             R9 1 1
       67 MOVE                             R7 R9
       68 DUPTABLE                         R8 K20 [{"focusGui", "plugin", "localization", "theme", "mouse", "store"}]
       69 SETTABLEKS                       R2 R8 K2 ["focusGui"]
       71 SETTABLEKS                       R3 R8 K7 ["plugin"]
       73 SETTABLEKS                       R1 R8 K0 ["localization"]
       75 SETTABLEKS                       R7 R8 K13 ["theme"]
       77 SETTABLEKS                       R4 R8 K8 ["mouse"]
       79 SETTABLEKS                       R6 R8 K19 ["store"]
       81 RETURN                           R8 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMockGlobals"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R6 R0 K1 ["props"]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K3 ["Children"]
       16 GETTABLE                         R5 R6 R7
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

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
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["TestHelpers"]
       38 GETTABLEKS                       R6 R7 K12 ["MockPlugin"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K13 ["Components"]
       47 GETTABLEKS                       R7 R8 K14 ["ServiceWrapper"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K15 ["Reducers"]
       56 GETTABLEKS                       R8 R9 K16 ["MainReducer"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R4 K17 ["Localization"]
       61 GETTABLEKS                       R9 R1 K18 ["Component"]
       63 LOADK                            R11 K19 ["MockServiceWrapper"]
       64 NAMECALL                         R9 R9 K20 ["extend"]
       66 CALL                             R9 2 1
       67 DUPCLOSURE                       R10 K21 [PROTO_0]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K22 ["getMockGlobals"]
       75 DUPCLOSURE                       R10 K23 [PROTO_1]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R10 R9 K24 ["render"]
       81 RETURN                           R9 1
