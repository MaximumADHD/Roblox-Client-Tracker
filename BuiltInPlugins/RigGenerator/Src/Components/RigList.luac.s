PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["OnSelected"]
        6 NEWTABLE                         R4 0 0
        8 GETUPVAL                         R5 0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 LOADK                            R12 K3 ["RigPresetLabel"]
       13 GETTABLEKS                       R13 R9 K4 ["Name"]
       15 NAMECALL                         R10 R2 K5 ["getText"]
       17 CALL                             R10 3 1
       18 GETTABLEKS                       R11 R9 K4 ["Name"]
       20 GETUPVAL                         R12 1
       21 GETTABLEKS                       R12 R12 K6 ["createElement"]
       23 GETUPVAL                         R13 2
       24 DUPTABLE                         R14 K12 [{"Text", "Style", "LayoutOrder", "Size", "OnClick"}]
       25 SETTABLEKS                       R10 R14 K7 ["Text"]
       27 LOADK                            R15 K13 ["Round"]
       28 SETTABLEKS                       R15 R14 K8 ["Style"]
       30 SETTABLEKS                       R8 R14 K9 ["LayoutOrder"]
       32 GETIMPORT                        R15 K16 [UDim2.new]
       34 LOADN                            R16 1
       35 LOADN                            R17 0
       36 LOADN                            R18 0
       37 LOADN                            R19 26
       38 CALL                             R15 4 1
       39 SETTABLEKS                       R15 R14 K10 ["Size"]
       41 NEWCLOSURE                       R15 P0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R9
       44 SETTABLEKS                       R15 R14 K11 ["OnClick"]
       46 CALL                             R12 2 1
       47 SETTABLE                         R12 R4 R11
       48 FORGLOOP                         R5 2 ; [-37]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K6 ["createElement"]
       53 GETUPVAL                         R6 3
       54 DUPTABLE                         R7 K20 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
       55 GETIMPORT                        R8 K23 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R8 R7 K17 ["AutomaticSize"]
       59 GETIMPORT                        R8 K26 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R8 R7 K18 ["Layout"]
       63 GETTABLEKS                       R8 R1 K9 ["LayoutOrder"]
       65 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       67 LOADN                            R8 6
       68 SETTABLEKS                       R8 R7 K19 ["Spacing"]
       70 MOVE                             R8 R4
       71 CALL                             R5 3 -1
       72 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETTABLEKS                       R7 R2 K12 ["Style"]
       33 GETTABLEKS                       R7 R7 K13 ["Stylizer"]
       35 GETTABLEKS                       R8 R2 K14 ["UI"]
       37 GETTABLEKS                       R9 R8 K15 ["Button"]
       39 GETTABLEKS                       R10 R8 K16 ["Pane"]
       41 GETIMPORT                        R11 K4 [require]
       43 GETTABLEKS                       R12 R0 K17 ["Src"]
       45 GETTABLEKS                       R12 R12 K18 ["RigPresets"]
       47 GETTABLEKS                       R12 R12 K19 ["PresetManifest"]
       49 CALL                             R11 1 1
       50 GETTABLEKS                       R12 R1 K20 ["PureComponent"]
       52 LOADK                            R14 K21 ["RigList"]
       53 NAMECALL                         R12 R12 K22 ["extend"]
       55 CALL                             R12 2 1
       56 DUPCLOSURE                       R13 K23 [PROTO_1]
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 SETTABLEKS                       R13 R12 K24 ["render"]
       63 MOVE                             R13 R4
       64 DUPTABLE                         R14 K25 [{"Analytics", "Localization", "Stylizer"}]
       65 SETTABLEKS                       R5 R14 K10 ["Analytics"]
       67 SETTABLEKS                       R6 R14 K11 ["Localization"]
       69 SETTABLEKS                       R7 R14 K13 ["Stylizer"]
       71 CALL                             R13 1 1
       72 MOVE                             R14 R12
       73 CALL                             R13 1 1
       74 MOVE                             R12 R13
       75 RETURN                           R12 1
