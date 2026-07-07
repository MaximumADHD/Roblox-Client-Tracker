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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 DUPTABLE                         R4 K2 [{[1] = False}]
        1 NAMECALL                         R2 R0 K3 ["setState"]
        3 CALL                             R2 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K5 ["onClose"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K8 ["Localization"]
       23 GETTABLEKS                       R2 R2 K9 ["new"]
       25 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TextureGenerator", ["libraries"]}]
       26 GETUPVAL                         R4 1
       27 SETTABLEKS                       R4 R3 K10 ["stringResourceTable"]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       32 NEWTABLE                         R4 1 0
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K16 ["Resources"]
       37 GETTABLEKS                       R5 R5 K17 ["LOCALIZATION_PROJECT_NAME"]
       39 DUPTABLE                         R6 K18 [{"stringResourceTable", "translationResourceTable"}]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K16 ["Resources"]
       43 GETTABLEKS                       R7 R7 K19 ["SourceStrings"]
       45 SETTABLEKS                       R7 R6 K10 ["stringResourceTable"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K16 ["Resources"]
       50 GETTABLEKS                       R7 R7 K20 ["LocalizedStrings"]
       52 SETTABLEKS                       R7 R6 K11 ["translationResourceTable"]
       54 SETTABLE                         R6 R4 R5
       55 SETTABLEKS                       R4 R3 K14 ["libraries"]
       57 CALL                             R2 1 1
       58 SETTABLEKS                       R2 R0 K21 ["localization"]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K22 ["Analytics"]
       63 GETTABLEKS                       R2 R2 K9 ["new"]
       65 GETUPVAL                         R3 4
       66 CALL                             R2 1 1
       67 SETTABLEKS                       R2 R0 K23 ["analytics"]
       69 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{["Toolbar"], ["Active"], ["Id"] = "textureButton", ["Title"], ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K14 ["localization"]
       16 LOADK                            R9 K15 ["Plugin"]
       17 LOADK                            R10 K16 ["Button"]
       18 NAMECALL                         R7 R7 K17 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K9 ["Title"]
       23 GETTABLEKS                       R7 R0 K18 ["toggleEnabled"]
       25 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       30 RETURN                           R3 1

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
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["localization"]
       29 GETTABLEKS                       R11 R0 K8 ["analytics"]
       31 GETUPVAL                         R12 4
       32 GETTABLEKS                       R12 R12 K5 ["new"]
       34 GETUPVAL                         R13 5
       35 CALL                             R12 1 -1
       36 SETLIST                          R6 R7 -1 [1]
       38 DUPTABLE                         R7 K11 [{"Toolbar", "MainWidget"}]
       39 GETUPVAL                         R8 6
       40 GETTABLEKS                       R8 R8 K12 ["createElement"]
       42 GETUPVAL                         R9 7
       43 DUPTABLE                         R10 K16 [{["Title"] = "TextureGenerator", ["RenderButtons"]}]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R11 R10 K15 ["RenderButtons"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K9 ["Toolbar"]
       51 GETUPVAL                         R8 6
       52 GETTABLEKS                       R8 R8 K12 ["createElement"]
       54 GETUPVAL                         R9 8
       55 NEWTABLE                         R10 16 0
       57 LOADK                            R11 K17 ["BuiltInTextureGenerator"]
       58 SETTABLEKS                       R11 R10 K18 ["Id"]
       60 SETTABLEKS                       R4 R10 K19 ["Enabled"]
       62 GETTABLEKS                       R11 R0 K7 ["localization"]
       64 LOADK                            R13 K2 ["Plugin"]
       65 LOADK                            R14 K20 ["Name"]
       66 NAMECALL                         R11 R11 K21 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K13 ["Title"]
       71 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       73 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       75 GETIMPORT                        R11 K28 [Enum.InitialDockState.Left]
       77 SETTABLEKS                       R11 R10 K26 ["InitialDockState"]
       79 GETIMPORT                        R11 K30 [Vector2.new]
       81 LOADN                            R12 350
       82 LOADN                            R13 480
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K31 ["Size"]
       86 GETIMPORT                        R11 K30 [Vector2.new]
       88 LOADN                            R12 350
       89 LOADN                            R13 480
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K32 ["MinSize"]
       93 GETTABLEKS                       R11 R0 K33 ["onClose"]
       95 SETTABLEKS                       R11 R10 K34 ["OnClose"]
       97 LOADB                            R11 1
       98 SETTABLEKS                       R11 R10 K35 ["ShouldRestore"]
      100 GETTABLEKS                       R11 R0 K36 ["onRestore"]
      102 SETTABLEKS                       R11 R10 K37 ["OnWidgetRestored"]
      104 GETUPVAL                         R11 9
      105 GETTABLEKS                       R11 R11 K38 ["Change"]
      107 GETTABLEKS                       R11 R11 K19 ["Enabled"]
      109 GETTABLEKS                       R12 R0 K39 ["onWidgetEnabledChanged"]
      111 SETTABLE                         R12 R10 R11
      112 DUPTABLE                         R11 K41 [{"App"}]
      113 MOVE                             R12 R4
      114 JUMPIFNOT                        R12 ; [+8]
      115 GETUPVAL                         R12 6
      116 GETTABLEKS                       R12 R12 K12 ["createElement"]
      118 GETUPVAL                         R13 10
      119 DUPTABLE                         R14 K42 [{"Plugin"}]
      120 SETTABLEKS                       R3 R14 K2 ["Plugin"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K40 ["App"]
      125 CALL                             R8 3 1
      126 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      128 CALL                             R5 2 -1
      129 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Src"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["UI"]
       43 GETTABLEKS                       R7 R6 K16 ["DockWidget"]
       45 GETTABLEKS                       R8 R6 K17 ["PluginButton"]
       47 GETTABLEKS                       R9 R6 K18 ["PluginToolbar"]
       49 GETTABLEKS                       R10 R5 K19 ["ContextServices"]
       51 GETTABLEKS                       R11 R10 K20 ["Plugin"]
       53 GETTABLEKS                       R12 R10 K21 ["Mouse"]
       55 GETIMPORT                        R13 K8 [require]
       57 GETTABLEKS                       R14 R1 K9 ["Src"]
       59 GETTABLEKS                       R14 R14 K22 ["Resources"]
       61 GETTABLEKS                       R14 R14 K23 ["MakeTheme"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K8 [require]
       66 GETTABLEKS                       R15 R1 K9 ["Src"]
       68 GETTABLEKS                       R15 R15 K22 ["Resources"]
       70 GETTABLEKS                       R15 R15 K24 ["createAnalyticsHandlers"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R1 K9 ["Src"]
       75 GETTABLEKS                       R15 R15 K22 ["Resources"]
       77 GETTABLEKS                       R15 R15 K25 ["Localization"]
       79 GETTABLEKS                       R15 R15 K26 ["SourceStrings"]
       81 GETTABLEKS                       R16 R1 K9 ["Src"]
       83 GETTABLEKS                       R16 R16 K22 ["Resources"]
       85 GETTABLEKS                       R16 R16 K25 ["Localization"]
       87 GETTABLEKS                       R16 R16 K27 ["LocalizedStrings"]
       89 GETIMPORT                        R17 K8 [require]
       91 GETTABLEKS                       R18 R1 K9 ["Src"]
       93 GETTABLEKS                       R18 R18 K28 ["Util"]
       95 GETTABLEKS                       R18 R18 K29 ["SelectionWrapper"]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R18 R1 K9 ["Src"]
      100 GETTABLEKS                       R18 R18 K30 ["Components"]
      102 GETIMPORT                        R19 K8 [require]
      104 GETTABLEKS                       R20 R18 K31 ["App"]
      106 CALL                             R19 1 1
      107 GETTABLEKS                       R20 R3 K32 ["PureComponent"]
      109 LOADK                            R22 K33 ["MainPlugin"]
      110 NAMECALL                         R20 R20 K34 ["extend"]
      112 CALL                             R20 2 1
      113 DUPCLOSURE                       R21 K35 [PROTO_5]
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R14
      119 SETTABLEKS                       R21 R20 K36 ["init"]
      121 DUPCLOSURE                       R21 K37 [PROTO_6]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R21 R20 K38 ["renderButtons"]
      126 DUPCLOSURE                       R21 K39 [PROTO_8]
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R19
      138 SETTABLEKS                       R21 R20 K40 ["render"]
      140 RETURN                           R20 1
