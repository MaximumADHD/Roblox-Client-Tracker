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
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["Localization"]
       26 GETTABLEKS                       R2 R2 K8 ["new"]
       28 DUPTABLE                         R3 K12 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       29 GETUPVAL                         R4 1
       30 SETTABLEKS                       R4 R3 K9 ["stringResourceTable"]
       32 GETUPVAL                         R4 2
       33 SETTABLEKS                       R4 R3 K10 ["translationResourceTable"]
       35 LOADK                            R4 K13 ["TextureViewer"]
       36 SETTABLEKS                       R4 R3 K11 ["pluginName"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R0 K14 ["localization"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K15 ["Analytics"]
       44 GETTABLEKS                       R2 R2 K8 ["new"]
       46 DUPCLOSURE                       R3 K16 [PROTO_5]
       47 NEWTABLE                         R4 0 0
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R0 K17 ["analytics"]
       52 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K14 ["template_button"]
       15 SETTABLEKS                       R7 R6 K7 ["Id"]
       17 GETTABLEKS                       R7 R0 K15 ["localization"]
       19 LOADK                            R9 K16 ["Plugin"]
       20 LOADK                            R10 K17 ["Button"]
       21 NAMECALL                         R7 R7 K18 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Title"]
       26 GETTABLEKS                       R7 R0 K15 ["localization"]
       28 LOADK                            R9 K16 ["Plugin"]
       29 LOADK                            R10 K19 ["Description"]
       30 NAMECALL                         R7 R7 K18 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       35 LOADK                            R7 K20 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       36 SETTABLEKS                       R7 R6 K10 ["Icon"]
       38 GETTABLEKS                       R7 R0 K21 ["toggleEnabled"]
       40 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K12 ["ClickableWhenViewportHidden"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       48 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["localization"]
       29 GETTABLEKS                       R11 R0 K8 ["analytics"]
       31 SETLIST                          R6 R7 5 [1]
       33 DUPTABLE                         R7 K11 [{"Toolbar", "MainWidget"}]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R8 R8 K12 ["createElement"]
       37 GETUPVAL                         R9 5
       38 DUPTABLE                         R10 K15 [{"Title", "RenderButtons"}]
       39 GETTABLEKS                       R11 R0 K7 ["localization"]
       41 LOADK                            R13 K2 ["Plugin"]
       42 LOADK                            R14 K9 ["Toolbar"]
       43 NAMECALL                         R11 R11 K16 ["getText"]
       45 CALL                             R11 3 1
       46 SETTABLEKS                       R11 R10 K13 ["Title"]
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R11 R10 K14 ["RenderButtons"]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K9 ["Toolbar"]
       55 GETUPVAL                         R8 4
       56 GETTABLEKS                       R8 R8 K12 ["createElement"]
       58 GETUPVAL                         R9 6
       59 NEWTABLE                         R10 16 0
       61 SETTABLEKS                       R4 R10 K17 ["Enabled"]
       63 GETTABLEKS                       R11 R0 K7 ["localization"]
       65 LOADK                            R13 K2 ["Plugin"]
       66 LOADK                            R14 K18 ["Name"]
       67 NAMECALL                         R11 R11 K16 ["getText"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K13 ["Title"]
       72 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       76 GETIMPORT                        R11 K25 [Enum.InitialDockState.Right]
       78 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       80 GETIMPORT                        R11 K27 [Vector2.new]
       82 LOADN                            R12 168
       83 LOADN                            R13 224
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K28 ["Size"]
       87 GETIMPORT                        R11 K27 [Vector2.new]
       89 LOADN                            R12 159
       90 LOADN                            R13 100
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       94 GETTABLEKS                       R11 R0 K30 ["onClose"]
       96 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       98 LOADB                            R11 1
       99 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
      101 GETTABLEKS                       R11 R0 K33 ["onRestore"]
      103 SETTABLEKS                       R11 R10 K34 ["OnWidgetRestored"]
      105 GETUPVAL                         R11 7
      106 GETTABLEKS                       R11 R11 K35 ["Change"]
      108 GETTABLEKS                       R11 R11 K17 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K36 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R12 R10 R11
      113 DUPTABLE                         R11 K38 [{"App"}]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R12 R12 K12 ["createElement"]
      117 GETUPVAL                         R13 8
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K37 ["App"]
      121 CALL                             R8 3 1
      122 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      124 CALL                             R5 2 -1
      125 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R4 R4 K10 ["DockWidget"]
       32 GETTABLEKS                       R5 R3 K9 ["UI"]
       34 GETTABLEKS                       R5 R5 K11 ["PluginToolbar"]
       36 GETTABLEKS                       R6 R3 K9 ["UI"]
       38 GETTABLEKS                       R6 R6 K12 ["PluginButton"]
       40 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K14 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K15 ["Mouse"]
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R0 K16 ["Src"]
       50 GETTABLEKS                       R11 R11 K17 ["Resources"]
       52 GETTABLEKS                       R11 R11 K18 ["MakeTheme"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R0 K16 ["Src"]
       57 GETTABLEKS                       R11 R11 K17 ["Resources"]
       59 GETTABLEKS                       R11 R11 K19 ["Localization"]
       61 GETTABLEKS                       R11 R11 K20 ["SourceStrings"]
       63 GETTABLEKS                       R12 R0 K16 ["Src"]
       65 GETTABLEKS                       R12 R12 K17 ["Resources"]
       67 GETTABLEKS                       R12 R12 K19 ["Localization"]
       69 GETTABLEKS                       R12 R12 K21 ["LocalizedStrings"]
       71 GETTABLEKS                       R13 R0 K16 ["Src"]
       73 GETTABLEKS                       R13 R13 K22 ["Components"]
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R15 R13 K23 ["App"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R1 K24 ["PureComponent"]
       82 LOADK                            R17 K25 ["MainPlugin"]
       83 NAMECALL                         R15 R15 K26 ["extend"]
       85 CALL                             R15 2 1
       86 DUPCLOSURE                       R16 K27 [PROTO_6]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R12
       90 SETTABLEKS                       R16 R15 K28 ["init"]
       92 DUPCLOSURE                       R16 K29 [PROTO_7]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R16 R15 K30 ["renderButtons"]
       97 DUPCLOSURE                       R16 K31 [PROTO_9]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R14
      107 SETTABLEKS                       R16 R15 K32 ["render"]
      109 RETURN                           R15 1
