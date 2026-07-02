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
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 0
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+2]
       12 MOVE                             R5 R4
       13 JUMP                             ; [+1]
       14 LOADB                            R5 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["provide"]
       18 NEWTABLE                         R7 0 6
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K5 ["new"]
       23 MOVE                             R9 R3
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K5 ["new"]
       28 NAMECALL                         R10 R3 K6 ["getMouse"]
       30 CALL                             R10 1 -1
       31 CALL                             R9 -1 1
       32 GETUPVAL                         R10 4
       33 CALL                             R10 0 1
       34 GETTABLEKS                       R11 R0 K7 ["localization"]
       36 GETTABLEKS                       R12 R0 K8 ["analytics"]
       38 GETUPVAL                         R13 5
       39 GETTABLEKS                       R13 R13 K5 ["new"]
       41 GETUPVAL                         R14 6
       42 CALL                             R13 1 -1
       43 SETLIST                          R7 R8 -1 [1]
       45 DUPTABLE                         R8 K11 [{"Toolbar", "MainWidget"}]
       46 GETUPVAL                         R9 7
       47 GETTABLEKS                       R9 R9 K12 ["createElement"]
       49 GETUPVAL                         R10 8
       50 DUPTABLE                         R11 K16 [{["Title"] = "TextureGenerator", ["RenderButtons"]}]
       51 NEWCLOSURE                       R12 P0
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R12 R11 K15 ["RenderButtons"]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K9 ["Toolbar"]
       58 GETUPVAL                         R9 7
       59 GETTABLEKS                       R9 R9 K12 ["createElement"]
       61 GETUPVAL                         R10 9
       62 NEWTABLE                         R11 16 0
       64 LOADK                            R12 K17 ["BuiltInTextureGenerator"]
       65 SETTABLEKS                       R12 R11 K18 ["Id"]
       67 SETTABLEKS                       R4 R11 K19 ["Enabled"]
       69 GETTABLEKS                       R12 R0 K7 ["localization"]
       71 LOADK                            R14 K2 ["Plugin"]
       72 LOADK                            R15 K20 ["Name"]
       73 NAMECALL                         R12 R12 K21 ["getText"]
       75 CALL                             R12 3 1
       76 SETTABLEKS                       R12 R11 K13 ["Title"]
       78 GETIMPORT                        R12 K25 [Enum.ZIndexBehavior.Sibling]
       80 SETTABLEKS                       R12 R11 K23 ["ZIndexBehavior"]
       82 GETIMPORT                        R12 K28 [Enum.InitialDockState.Left]
       84 SETTABLEKS                       R12 R11 K26 ["InitialDockState"]
       86 GETIMPORT                        R12 K30 [Vector2.new]
       88 LOADN                            R13 350
       89 LOADN                            R14 480
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K31 ["Size"]
       93 GETIMPORT                        R12 K30 [Vector2.new]
       95 LOADN                            R13 350
       96 LOADN                            R14 480
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K32 ["MinSize"]
      100 GETTABLEKS                       R12 R0 K33 ["onClose"]
      102 SETTABLEKS                       R12 R11 K34 ["OnClose"]
      104 LOADB                            R12 1
      105 SETTABLEKS                       R12 R11 K35 ["ShouldRestore"]
      107 GETTABLEKS                       R12 R0 K36 ["onRestore"]
      109 SETTABLEKS                       R12 R11 K37 ["OnWidgetRestored"]
      111 GETUPVAL                         R12 10
      112 GETTABLEKS                       R12 R12 K38 ["Change"]
      114 GETTABLEKS                       R12 R12 K19 ["Enabled"]
      116 GETTABLEKS                       R13 R0 K39 ["onWidgetEnabledChanged"]
      118 SETTABLE                         R13 R11 R12
      119 DUPTABLE                         R12 K41 [{"App"}]
      120 MOVE                             R13 R5
      121 JUMPIFNOT                        R13 ; [+8]
      122 GETUPVAL                         R13 7
      123 GETTABLEKS                       R13 R13 K12 ["createElement"]
      125 GETUPVAL                         R14 11
      126 DUPTABLE                         R15 K42 [{"Plugin"}]
      127 SETTABLEKS                       R3 R15 K2 ["Plugin"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K40 ["App"]
      132 CALL                             R9 3 1
      133 SETTABLEKS                       R9 R8 K10 ["MainWidget"]
      135 CALL                             R6 2 -1
      136 RETURN                           R6 -1

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
      107 GETIMPORT                        R20 K8 [require]
      109 GETTABLEKS                       R21 R1 K9 ["Src"]
      111 GETTABLEKS                       R21 R21 K32 ["Flags"]
      113 GETTABLEKS                       R21 R21 K33 ["getFFlagTextureGeneratorOptimizeSelection"]
      115 CALL                             R20 1 1
      116 GETTABLEKS                       R21 R3 K34 ["PureComponent"]
      118 LOADK                            R23 K35 ["MainPlugin"]
      119 NAMECALL                         R21 R21 K36 ["extend"]
      121 CALL                             R21 2 1
      122 DUPCLOSURE                       R22 K37 [PROTO_5]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R14
      128 SETTABLEKS                       R22 R21 K38 ["init"]
      130 DUPCLOSURE                       R22 K39 [PROTO_6]
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R8
      133 SETTABLEKS                       R22 R21 K40 ["renderButtons"]
      135 DUPCLOSURE                       R22 K41 [PROTO_8]
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R19
      148 SETTABLEKS                       R22 R21 K42 ["render"]
      150 RETURN                           R21 1
