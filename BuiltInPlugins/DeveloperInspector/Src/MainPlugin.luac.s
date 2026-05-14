PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["toggleEnabled"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onClose"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onRestore"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onWidgetEnabledChanged"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K7 ["Store"]
       25 GETTABLEKS                       R1 R1 K8 ["new"]
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 NEWTABLE                         R4 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K9 ["thunkMiddleware"]
       34 SETLIST                          R4 R5 1 [1]
       36 CALL                             R1 3 1
       37 SETTABLEKS                       R1 R0 K10 ["store"]
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R1 R1 K11 ["Localization"]
       42 GETTABLEKS                       R1 R1 K8 ["new"]
       44 DUPTABLE                         R2 K16 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
       45 GETUPVAL                         R3 3
       46 SETTABLEKS                       R3 R2 K12 ["stringResourceTable"]
       48 GETUPVAL                         R3 4
       49 SETTABLEKS                       R3 R2 K13 ["translationResourceTable"]
       51 LOADK                            R3 K17 ["DeveloperInspector"]
       52 SETTABLEKS                       R3 R2 K14 ["pluginName"]
       54 NEWTABLE                         R3 1 0
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K18 ["Resources"]
       59 GETTABLEKS                       R4 R4 K19 ["LOCALIZATION_PROJECT_NAME"]
       61 DUPTABLE                         R5 K20 [{"stringResourceTable", "translationResourceTable"}]
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K18 ["Resources"]
       65 GETTABLEKS                       R6 R6 K21 ["SourceStrings"]
       67 SETTABLEKS                       R6 R5 K12 ["stringResourceTable"]
       69 GETUPVAL                         R6 5
       70 GETTABLEKS                       R6 R6 K18 ["Resources"]
       72 GETTABLEKS                       R6 R6 K22 ["LocalizedStrings"]
       74 SETTABLEKS                       R6 R5 K13 ["translationResourceTable"]
       76 SETTABLE                         R5 R3 R4
       77 SETTABLEKS                       R3 R2 K15 ["libraries"]
       79 CALL                             R1 1 1
       80 SETTABLEKS                       R1 R0 K23 ["localization"]
       82 GETTABLEKS                       R1 R0 K24 ["props"]
       84 GETTABLEKS                       R1 R1 K25 ["Plugin"]
       86 GETUPVAL                         R2 6
       87 GETTABLEKS                       R2 R2 K8 ["new"]
       89 MOVE                             R3 R1
       90 DUPTABLE                         R4 K27 [{"ToggleProfileRoact"}]
       91 DUPTABLE                         R5 K32 [{"id", "text", "defaultShortcut", "allowBinding"}]
       92 LOADK                            R6 K26 ["ToggleProfileRoact"]
       93 SETTABLEKS                       R6 R5 K28 ["id"]
       95 LOADK                            R6 K33 ["Toggle Roact Profiler"]
       96 SETTABLEKS                       R6 R5 K29 ["text"]
       98 LOADK                            R6 K34 ["Ctrl+Shift+R"]
       99 SETTABLEKS                       R6 R5 K30 ["defaultShortcut"]
      101 LOADB                            R6 0
      102 SETTABLEKS                       R6 R5 K31 ["allowBinding"]
      104 SETTABLEKS                       R5 R4 K26 ["ToggleProfileRoact"]
      106 CALL                             R2 2 1
      107 SETTABLEKS                       R2 R0 K35 ["pluginActions"]
      109 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K12 [{"Toolbar", "Active", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K13 ["localization"]
       16 LOADK                            R9 K14 ["Plugin"]
       17 LOADK                            R10 K15 ["Button"]
       18 NAMECALL                         R7 R7 K16 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K7 ["Title"]
       23 GETTABLEKS                       R7 R0 K13 ["localization"]
       25 LOADK                            R9 K14 ["Plugin"]
       26 LOADK                            R10 K17 ["Description"]
       27 NAMECALL                         R7 R7 K16 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
       32 LOADK                            R7 K18 ["rbxasset://textures/DeveloperInspector/ToolbarIcon.png"]
       33 SETTABLEKS                       R7 R6 K9 ["Icon"]
       35 GETTABLEKS                       R7 R0 K19 ["toggleEnabled"]
       37 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K11 ["ClickableWhenViewportHidden"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       45 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["pluginActions"]
       35 GETTABLEKS                       R12 R0 K9 ["localization"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K12 [{"Toolbar", "MainWidget"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 6
       44 DUPTABLE                         R10 K16 [{"Title", "RenderButtons"}]
       45 GETTABLEKS                       R11 R0 K9 ["localization"]
       47 LOADK                            R13 K2 ["Plugin"]
       48 LOADK                            R14 K10 ["Toolbar"]
       49 NAMECALL                         R11 R11 K17 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K14 ["Title"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R11 R10 K15 ["RenderButtons"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R8 R8 K13 ["createElement"]
       64 GETUPVAL                         R9 7
       65 DUPTABLE                         R10 K27 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "ShouldRestore", "OnWidgetRestored"}]
       66 LOADK                            R11 K28 ["DeveloperInspector"]
       67 SETTABLEKS                       R11 R10 K18 ["Id"]
       69 SETTABLEKS                       R4 R10 K19 ["Enabled"]
       71 GETTABLEKS                       R11 R0 K9 ["localization"]
       73 LOADK                            R13 K2 ["Plugin"]
       74 LOADK                            R14 K29 ["Name"]
       75 NAMECALL                         R11 R11 K17 ["getText"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K14 ["Title"]
       80 GETIMPORT                        R11 K32 [Enum.ZIndexBehavior.Sibling]
       82 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       84 GETIMPORT                        R11 K34 [Enum.InitialDockState.Bottom]
       86 SETTABLEKS                       R11 R10 K21 ["InitialDockState"]
       88 GETIMPORT                        R11 K36 [Vector2.new]
       90 LOADN                            R12 128
       91 LOADN                            R13 224
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K22 ["Size"]
       95 GETIMPORT                        R11 K36 [Vector2.new]
       97 LOADN                            R12 250
       98 LOADN                            R13 200
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K23 ["MinSize"]
      102 GETTABLEKS                       R11 R0 K37 ["onClose"]
      104 SETTABLEKS                       R11 R10 K24 ["OnClose"]
      106 LOADB                            R11 1
      107 SETTABLEKS                       R11 R10 K25 ["ShouldRestore"]
      109 GETTABLEKS                       R11 R0 K38 ["onRestore"]
      111 SETTABLEKS                       R11 R10 K26 ["OnWidgetRestored"]
      113 DUPTABLE                         R11 K40 [{"InspectorProvider"}]
      114 GETUPVAL                         R12 5
      115 GETTABLEKS                       R12 R12 K13 ["createElement"]
      117 GETUPVAL                         R13 8
      118 DUPTABLE                         R14 K42 [{"Active"}]
      119 SETTABLEKS                       R4 R14 K41 ["Active"]
      121 DUPTABLE                         R15 K44 [{"MainView"}]
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R16 R16 K13 ["createElement"]
      125 GETUPVAL                         R17 9
      126 DUPTABLE                         R18 K42 [{"Active"}]
      127 SETTABLEKS                       R4 R18 K41 ["Active"]
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K43 ["MainView"]
      132 CALL                             R12 3 1
      133 SETTABLEKS                       R12 R11 K39 ["InspectorProvider"]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      138 CALL                             R5 2 -1
      139 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R5 R4 K10 ["DockWidget"]
       32 GETTABLEKS                       R6 R4 K11 ["PluginButton"]
       34 GETTABLEKS                       R7 R4 K12 ["PluginToolbar"]
       36 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       38 GETTABLEKS                       R9 R8 K14 ["Plugin"]
       40 GETTABLEKS                       R10 R8 K15 ["Mouse"]
       42 GETTABLEKS                       R11 R8 K16 ["Store"]
       44 GETTABLEKS                       R12 R8 K17 ["PluginActions"]
       46 GETIMPORT                        R13 K4 [require]
       48 GETTABLEKS                       R14 R0 K18 ["Src"]
       50 GETTABLEKS                       R14 R14 K19 ["Reducers"]
       52 GETTABLEKS                       R14 R14 K20 ["MainReducer"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K4 [require]
       57 GETTABLEKS                       R15 R0 K18 ["Src"]
       59 GETTABLEKS                       R15 R15 K21 ["Resources"]
       61 GETTABLEKS                       R15 R15 K22 ["MakeTheme"]
       63 CALL                             R14 1 1
       64 GETTABLEKS                       R15 R0 K18 ["Src"]
       66 GETTABLEKS                       R15 R15 K21 ["Resources"]
       68 GETTABLEKS                       R15 R15 K23 ["Localization"]
       70 GETTABLEKS                       R15 R15 K24 ["SourceStrings"]
       72 GETTABLEKS                       R16 R0 K18 ["Src"]
       74 GETTABLEKS                       R16 R16 K21 ["Resources"]
       76 GETTABLEKS                       R16 R16 K23 ["Localization"]
       78 GETTABLEKS                       R16 R16 K25 ["LocalizedStrings"]
       80 GETTABLEKS                       R17 R0 K18 ["Src"]
       82 GETTABLEKS                       R17 R17 K26 ["Components"]
       84 GETIMPORT                        R18 K4 [require]
       86 GETTABLEKS                       R19 R17 K27 ["InspectorProvider"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K4 [require]
       91 GETTABLEKS                       R20 R17 K28 ["MainView"]
       93 CALL                             R19 1 1
       94 GETTABLEKS                       R20 R1 K29 ["PureComponent"]
       96 LOADK                            R22 K30 ["MainPlugin"]
       97 NAMECALL                         R20 R20 K31 ["extend"]
       99 CALL                             R20 2 1
      100 DUPCLOSURE                       R21 K32 [PROTO_5]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R21 R20 K33 ["init"]
      110 DUPCLOSURE                       R21 K34 [PROTO_6]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R21 R20 K35 ["renderButtons"]
      115 DUPCLOSURE                       R21 K36 [PROTO_8]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R19
      126 SETTABLEKS                       R21 R20 K37 ["render"]
      128 RETURN                           R20 1
