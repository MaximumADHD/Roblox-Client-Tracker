PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Enabled"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 NEWTABLE                         R7 16 0
       14 LOADK                            R8 K5 ["Breakpoints"]
       15 SETTABLEKS                       R8 R7 K6 ["Id"]
       17 LOADK                            R10 K7 ["BreakpointsWindow"]
       18 LOADK                            R11 K8 ["WindowName"]
       19 NAMECALL                         R8 R2 K9 ["getText"]
       21 CALL                             R8 3 1
       22 SETTABLEKS                       R8 R7 K10 ["Title"]
       24 GETIMPORT                        R8 K14 [Enum.ZIndexBehavior.Sibling]
       26 SETTABLEKS                       R8 R7 K12 ["ZIndexBehavior"]
       28 GETIMPORT                        R8 K17 [Enum.InitialDockState.Bottom]
       30 SETTABLEKS                       R8 R7 K15 ["InitialDockState"]
       32 GETIMPORT                        R8 K20 [Vector2.new]
       34 LOADN                            R9 750
       35 LOADN                            R10 480
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K21 ["Size"]
       39 GETIMPORT                        R8 K20 [Vector2.new]
       41 LOADN                            R9 250
       42 LOADN                            R10 200
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K22 ["MinSize"]
       46 SETTABLEKS                       R3 R7 K2 ["Enabled"]
       48 SETTABLEKS                       R4 R7 K3 ["OnClose"]
       50 LOADB                            R8 1
       51 SETTABLEKS                       R8 R7 K23 ["ShouldRestore"]
       53 GETTABLEKS                       R8 R1 K24 ["OnRestore"]
       55 SETTABLEKS                       R8 R7 K25 ["OnWidgetRestored"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K26 ["Change"]
       60 GETTABLEKS                       R8 R8 K2 ["Enabled"]
       62 GETTABLEKS                       R9 R1 K27 ["OnWidgetEnabledChanged"]
       64 SETTABLE                         R9 R7 R8
       65 DUPTABLE                         R8 K29 [{"BreakpointsTable"}]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K4 ["createElement"]
       69 GETUPVAL                         R10 2
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K28 ["BreakpointsTable"]
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["UI"]
       27 GETTABLEKS                       R4 R3 K9 ["DockWidget"]
       29 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       31 GETTABLEKS                       R6 R5 K11 ["Localization"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Src"]
       37 GETTABLEKS                       R8 R8 K13 ["Components"]
       39 GETTABLEKS                       R8 R8 K14 ["Breakpoints"]
       41 GETTABLEKS                       R8 R8 K15 ["BreakpointsTable"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       46 LOADK                            R10 K17 ["BreakpointWindow"]
       47 NAMECALL                         R8 R8 K18 ["extend"]
       49 CALL                             R8 2 1
       50 DUPCLOSURE                       R9 K19 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R9 R8 K20 ["render"]
       56 GETTABLEKS                       R9 R5 K21 ["withContext"]
       58 DUPTABLE                         R10 K22 [{"Localization"}]
       59 SETTABLEKS                       R6 R10 K11 ["Localization"]
       61 CALL                             R9 1 1
       62 MOVE                             R10 R8
       63 CALL                             R9 1 1
       64 MOVE                             R8 R9
       65 RETURN                           R8 1
