PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Enabled"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 NEWTABLE                         R7 16 0
       14 LOADK                            R8 K5 ["Watch"]
       15 SETTABLEKS                       R8 R7 K6 ["Id"]
       17 LOADK                            R10 K5 ["Watch"]
       18 LOADK                            R11 K7 ["WindowName"]
       19 NAMECALL                         R8 R2 K8 ["getText"]
       21 CALL                             R8 3 1
       22 SETTABLEKS                       R8 R7 K9 ["Title"]
       24 GETIMPORT                        R8 K13 [Enum.ZIndexBehavior.Sibling]
       26 SETTABLEKS                       R8 R7 K11 ["ZIndexBehavior"]
       28 GETIMPORT                        R8 K16 [Enum.InitialDockState.Bottom]
       30 SETTABLEKS                       R8 R7 K14 ["InitialDockState"]
       32 GETIMPORT                        R8 K19 [Vector2.new]
       34 LOADN                            R9 640
       35 LOADN                            R10 480
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K20 ["Size"]
       39 GETIMPORT                        R8 K19 [Vector2.new]
       41 LOADN                            R9 250
       42 LOADN                            R10 200
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K21 ["MinSize"]
       46 SETTABLEKS                       R3 R7 K2 ["Enabled"]
       48 SETTABLEKS                       R4 R7 K3 ["OnClose"]
       50 LOADB                            R8 1
       51 SETTABLEKS                       R8 R7 K22 ["ShouldRestore"]
       53 GETTABLEKS                       R8 R1 K23 ["OnRestore"]
       55 SETTABLEKS                       R8 R7 K24 ["OnWidgetRestored"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K25 ["Change"]
       60 GETTABLEKS                       R8 R8 K2 ["Enabled"]
       62 GETTABLEKS                       R9 R1 K26 ["OnWidgetEnabledChanged"]
       64 SETTABLE                         R9 R7 R8
       65 DUPTABLE                         R8 K27 [{"Watch"}]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K4 ["createElement"]
       69 GETUPVAL                         R10 2
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K5 ["Watch"]
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
       31 GETTABLEKS                       R6 R5 K11 ["withContext"]
       33 GETTABLEKS                       R7 R5 K12 ["Localization"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R9 R0 K13 ["Src"]
       39 GETTABLEKS                       R9 R9 K14 ["Components"]
       41 GETTABLEKS                       R9 R9 K15 ["Watch"]
       43 GETTABLEKS                       R9 R9 K16 ["WatchComponent"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       48 LOADK                            R11 K18 ["WatchWindow"]
       49 NAMECALL                         R9 R9 K19 ["extend"]
       51 CALL                             R9 2 1
       52 DUPCLOSURE                       R10 K20 [PROTO_0]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 SETTABLEKS                       R10 R9 K21 ["render"]
       58 MOVE                             R10 R6
       59 DUPTABLE                         R11 K22 [{"Localization"}]
       60 SETTABLEKS                       R7 R11 K12 ["Localization"]
       62 CALL                             R10 1 1
       63 MOVE                             R11 R9
       64 CALL                             R10 1 1
       65 MOVE                             R9 R10
       66 RETURN                           R9 1
