PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K6 ["Parent"]
       12 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K6 ["Parent"]
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K6 ["Parent"]
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 4 0
        2 DUPCLOSURE                       R2 K0 [PROTO_1]
        3 SETTABLEKS                       R2 R1 K1 ["GetMouse"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R3 P2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R1 K2 ["CreateQWidgetPluginGui"]
       11 NEWCLOSURE                       R3 P3
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R1 K3 ["CreateDockWidgetPluginGui"]
       15 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Store"]
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R0 K2 ["props"]
        8 GETTABLEKS                       R4 R5 K3 ["initialStoreState"]
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["thunkMiddleware"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R0 K5 ["store"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K6 ["API"]
       23 GETTABLEKS                       R2 R3 K7 ["mock"]
       25 NEWTABLE                         R3 0 0
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R0 K8 ["api"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R3 R1 K9 ["Container"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R0 K10 ["plugin"]
       36 GETTABLEKS                       R2 R1 K11 ["FocusTarget"]
       38 JUMPIF                           R2 ; [+4]
       39 GETIMPORT                        R2 K13 [Instance.new]
       41 LOADK                            R3 K14 ["ScreenGui"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R0 K15 ["target"]
       45 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 7
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["Plugin"]
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 GETTABLEKS                       R3 R0 K2 ["plugin"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["new"]
       13 GETTABLEKS                       R4 R0 K3 ["api"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["Localization"]
       19 GETTABLEKS                       R4 R5 K5 ["mock"]
       21 CALL                             R4 0 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K6 ["Mouse"]
       25 GETTABLEKS                       R5 R6 K1 ["new"]
       27 GETTABLEKS                       R6 R0 K2 ["plugin"]
       29 NAMECALL                         R6 R6 K7 ["GetMouse"]
       31 CALL                             R6 1 -1
       32 CALL                             R5 -1 1
       33 GETUPVAL                         R6 2
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K8 ["Focus"]
       37 GETTABLEKS                       R7 R8 K1 ["new"]
       39 GETTABLEKS                       R8 R0 K9 ["target"]
       41 CALL                             R7 1 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K10 ["Store"]
       45 GETTABLEKS                       R8 R9 K1 ["new"]
       47 GETTABLEKS                       R9 R0 K11 ["store"]
       49 CALL                             R8 1 -1
       50 SETLIST                          R1 R2 -1 [1]
       52 MOVE                             R3 R1
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R4 R5 K1 ["new"]
       56 CALL                             R4 0 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R2 K14 [table.insert]
       60 CALL                             R2 -1 0
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R2 R3 K15 ["provide"]
       64 MOVE                             R3 R1
       65 GETTABLEKS                       R5 R0 K16 ["props"]
       67 GETUPVAL                         R7 4
       68 GETTABLEKS                       R6 R7 K17 ["Children"]
       70 GETTABLE                         R4 R5 R6
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

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
       27 GETTABLEKS                       R4 R5 K8 ["Http"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Reducers"]
       36 GETTABLEKS                       R5 R6 K11 ["MainReducer"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R8 R0 K5 ["Packages"]
       43 GETTABLEKS                       R7 R8 K12 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R5 R6 K13 ["ContextServices"]
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K13 ["ContextServices"]
       54 GETTABLEKS                       R7 R8 K14 ["PluginAPI2"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R10 K13 ["ContextServices"]
       63 GETTABLEKS                       R8 R9 K15 ["Navigation"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R11 K16 ["Resources"]
       72 GETTABLEKS                       R9 R10 K17 ["makeTheme"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       77 LOADK                            R11 K19 ["MockManagement"]
       78 NAMECALL                         R9 R9 K20 ["extend"]
       80 CALL                             R9 2 1
       81 DUPCLOSURE                       R10 K21 [PROTO_0]
       82 DUPCLOSURE                       R11 K22 [PROTO_5]
       83 DUPCLOSURE                       R12 K23 [PROTO_6]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R12 R9 K24 ["init"]
       90 DUPCLOSURE                       R12 K25 [PROTO_7]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R12 R9 K26 ["render"]
       98 RETURN                           R9 1
