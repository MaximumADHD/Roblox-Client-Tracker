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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["Container"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R0 K1 ["plugin"]
        6 GETTABLEKS                       R2 R1 K2 ["FocusTarget"]
        8 JUMPIF                           R2 ; [+4]
        9 GETIMPORT                        R2 K5 [Instance.new]
       11 LOADK                            R3 K6 ["ScreenGui"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K7 ["target"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K8 ["Store"]
       18 GETTABLEKS                       R2 R3 K4 ["new"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R4 R1 K9 ["StoreState"]
       23 NEWTABLE                         R5 0 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K10 ["thunkMiddleware"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R2 3 1
       31 SETTABLEKS                       R2 R0 K11 ["store"]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R2 R3 K12 ["mock"]
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R0 K13 ["analyticsImpl"]
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["provide"]
        6 NEWTABLE                         R3 0 8
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["API"]
       11 GETTABLEKS                       R4 R5 K2 ["new"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K3 ["Localization"]
       17 GETTABLEKS                       R5 R6 K4 ["mock"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K5 ["Plugin"]
       23 GETTABLEKS                       R6 R7 K2 ["new"]
       25 GETTABLEKS                       R7 R0 K6 ["plugin"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K7 ["Mouse"]
       31 GETTABLEKS                       R7 R8 K2 ["new"]
       33 NEWTABLE                         R8 0 0
       35 CALL                             R7 1 1
       36 MOVE                             R8 R1
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R10 R11 K8 ["Focus"]
       40 GETTABLEKS                       R9 R10 K2 ["new"]
       42 GETTABLEKS                       R10 R0 K9 ["target"]
       44 CALL                             R9 1 1
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R11 R12 K10 ["Store"]
       48 GETTABLEKS                       R10 R11 K2 ["new"]
       50 GETTABLEKS                       R11 R0 K11 ["store"]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R11 R12 K2 ["new"]
       56 GETTABLEKS                       R12 R0 K12 ["analyticsImpl"]
       58 CALL                             R11 1 -1
       59 SETLIST                          R3 R4 -1 [1]
       61 GETTABLEKS                       R5 R0 K13 ["props"]
       63 GETUPVAL                         R7 3
       64 GETTABLEKS                       R6 R7 K14 ["Children"]
       66 GETTABLE                         R4 R5 R6
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 DUPTABLE                         R5 K2 [{"Element"}]
        6 SETTABLEKS                       R0 R5 K1 ["Element"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K9 ["Reducers"]
       27 GETTABLEKS                       R4 R5 K10 ["MainReducer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K11 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Src"]
       43 GETTABLEKS                       R8 R9 K13 ["Resources"]
       45 GETTABLEKS                       R7 R8 K14 ["PluginTheme"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R10 R0 K8 ["Src"]
       52 GETTABLEKS                       R9 R10 K12 ["ContextServices"]
       54 GETTABLEKS                       R8 R9 K15 ["AnalyticsContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R11 R0 K8 ["Src"]
       61 GETTABLEKS                       R10 R11 K16 ["Util"]
       63 GETTABLEKS                       R9 R10 K17 ["Analytics"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       68 LOADK                            R11 K19 ["MockPlugin"]
       69 NAMECALL                         R9 R9 K20 ["extend"]
       71 CALL                             R9 2 1
       72 DUPCLOSURE                       R10 K21 [PROTO_0]
       73 DUPCLOSURE                       R11 K22 [PROTO_5]
       74 DUPCLOSURE                       R12 K23 [PROTO_6]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R12 R9 K24 ["init"]
       81 DUPCLOSURE                       R12 K25 [PROTO_7]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R12 R9 K26 ["render"]
       88 DUPCLOSURE                       R12 K27 [PROTO_8]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 RETURN                           R12 1
