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
       21 LOADNIL                          R4
       22 NEWTABLE                         R5 0 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K9 ["thunkMiddleware"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R0 K10 ["store"]
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 6
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["Localization"]
        8 GETTABLEKS                       R3 R4 K2 ["mock"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["Plugin"]
       14 GETTABLEKS                       R4 R5 K4 ["new"]
       16 GETTABLEKS                       R5 R0 K5 ["plugin"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K6 ["Mouse"]
       22 GETTABLEKS                       R5 R6 K4 ["new"]
       24 NEWTABLE                         R6 0 0
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 1
       28 CALL                             R6 0 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K7 ["Focus"]
       32 GETTABLEKS                       R7 R8 K4 ["new"]
       34 GETTABLEKS                       R8 R0 K8 ["target"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K9 ["Store"]
       40 GETTABLEKS                       R8 R9 K4 ["new"]
       42 GETTABLEKS                       R9 R0 K10 ["store"]
       44 CALL                             R8 1 -1
       45 SETLIST                          R2 R3 -1 [1]
       47 GETTABLEKS                       R4 R0 K11 ["props"]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R5 R6 K12 ["Children"]
       52 GETTABLE                         R3 R4 R5
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1

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
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R7 R0 K5 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["Framework"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Resources"]
       45 GETTABLEKS                       R6 R7 K14 ["MakeTheme"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K15 ["PureComponent"]
       50 LOADK                            R8 K16 ["MockPlugin"]
       51 NAMECALL                         R6 R6 K17 ["extend"]
       53 CALL                             R6 2 1
       54 DUPCLOSURE                       R7 K18 [PROTO_0]
       55 DUPCLOSURE                       R8 K19 [PROTO_5]
       56 DUPCLOSURE                       R9 K20 [PROTO_6]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R9 R6 K21 ["init"]
       62 DUPCLOSURE                       R9 K22 [PROTO_7]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R9 R6 K23 ["render"]
       68 DUPCLOSURE                       R9 K24 [PROTO_8]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 RETURN                           R9 1
