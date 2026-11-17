PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R1 K2 ["PluginState"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["PluginState"]
       10 GETTABLEKS                       R5 R5 K3 ["Playing"]
       12 JUMPIFEQ                         R4 R5 ; [+12]
       14 GETTABLEKS                       R4 R1 K2 ["PluginState"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["PluginState"]
       19 GETTABLEKS                       R5 R5 K4 ["Disabled"]
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["createElement"]
       28 GETUPVAL                         R5 2
       29 DUPTABLE                         R6 K13 [{"Size", "AutomaticSize", "Padding", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
       30 GETIMPORT                        R7 K16 [UDim2.new]
       32 LOADN                            R8 1
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 LOADN                            R11 0
       36 CALL                             R7 4 1
       37 SETTABLEKS                       R7 R6 K6 ["Size"]
       39 GETIMPORT                        R7 K19 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       43 GETTABLEKS                       R7 R2 K20 ["PaddingPx"]
       45 SETTABLEKS                       R7 R6 K8 ["Padding"]
       47 GETIMPORT                        R7 K23 [Enum.FillDirection.Vertical]
       49 SETTABLEKS                       R7 R6 K9 ["Layout"]
       51 GETIMPORT                        R7 K25 [UDim.new]
       53 LOADN                            R8 0
       54 GETTABLEKS                       R9 R2 K20 ["PaddingPx"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K10 ["Spacing"]
       59 GETIMPORT                        R7 K27 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
       63 GETIMPORT                        R7 K29 [Enum.VerticalAlignment.Top]
       65 SETTABLEKS                       R7 R6 K12 ["VerticalAlignment"]
       67 DUPTABLE                         R7 K33 [{"FileSelector", "PlaybackInfoGroup", "FilterSettings"}]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K5 ["createElement"]
       71 GETUPVAL                         R9 3
       72 DUPTABLE                         R10 K38 [{["LayoutOrder"] = 1, ["RoduxStoreContext"] = "playbackTabFilter"}]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K30 ["FileSelector"]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K5 ["createElement"]
       79 GETUPVAL                         R9 4
       80 DUPTABLE                         R10 K40 [{["LayoutOrder"] = 2}]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K31 ["PlaybackInfoGroup"]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K5 ["createElement"]
       87 GETUPVAL                         R9 5
       88 DUPTABLE                         R10 K42 [{["LayoutOrder"] = 3, ["RoduxStoreContext"] = "playbackTabFilter", ["Disabled"]}]
       89 SETTABLEKS                       R3 R10 K4 ["Disabled"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K32 ["FilterSettings"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"PluginState"}]
        1 GETTABLEKS                       R3 R0 K2 ["common"]
        3 GETTABLEKS                       R3 R3 K3 ["pluginState"]
        5 SETTABLEKS                       R3 R2 K0 ["PluginState"]
        7 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["Pane"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K12 ["Src"]
       40 GETTABLEKS                       R8 R8 K13 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["Enums"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Src"]
       49 GETTABLEKS                       R9 R9 K15 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["FileSelectorUIGroup"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Src"]
       58 GETTABLEKS                       R10 R10 K15 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["PlaybackInfoUIGroup"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R11 R0 K12 ["Src"]
       67 GETTABLEKS                       R11 R11 K15 ["Components"]
       69 GETTABLEKS                       R11 R11 K18 ["FilterSettingsUIGroup"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       74 LOADK                            R13 K20 ["PlaybackTabView"]
       75 NAMECALL                         R11 R11 K21 ["extend"]
       77 CALL                             R11 2 1
       78 DUPCLOSURE                       R12 K22 [PROTO_0]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 SETTABLEKS                       R12 R11 K23 ["render"]
       87 GETTABLEKS                       R12 R4 K24 ["withContext"]
       89 DUPTABLE                         R13 K26 [{"Stylizer"}]
       90 GETTABLEKS                       R14 R4 K25 ["Stylizer"]
       92 SETTABLEKS                       R14 R13 K25 ["Stylizer"]
       94 CALL                             R12 1 1
       95 MOVE                             R13 R11
       96 CALL                             R12 1 1
       97 MOVE                             R11 R12
       98 DUPCLOSURE                       R12 K27 [PROTO_1]
       99 GETTABLEKS                       R13 R2 K28 ["connect"]
      101 MOVE                             R14 R12
      102 LOADNIL                          R15
      103 CALL                             R13 2 1
      104 MOVE                             R14 R11
      105 CALL                             R13 1 -1
      106 RETURN                           R13 -1
