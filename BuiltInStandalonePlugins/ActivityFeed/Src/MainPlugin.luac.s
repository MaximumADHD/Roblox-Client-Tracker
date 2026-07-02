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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = "", ["errorMsg"] = ""}]
        2 NAMECALL                         R0 R0 K4 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"errorHeader", "errorMsg"}]
        2 SETTABLEKS                       R0 R4 K0 ["errorHeader"]
        4 SETTABLEKS                       R1 R4 K1 ["errorMsg"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Util"]
        3 GETTABLEKS                       R2 R2 K1 ["createFoundationDesignBinding"]
        5 CALL                             R2 0 2
        6 SETTABLEKS                       R3 R0 K2 ["onFoundationStyleSheetChange"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R1 K3 ["Plugin"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 NEWTABLE                         R8 0 1
       15 MOVE                             R9 R2
       16 SETLIST                          R8 R9 1 [1]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R0 K4 ["design"]
       21 DUPTABLE                         R4 K10 [{["enabled"] = False, ["errorHeader"] = "", ["errorMsg"] = ""}]
       22 SETTABLEKS                       R4 R0 K11 ["state"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K12 ["new"]
       27 GETTABLEKS                       R5 R1 K3 ["Plugin"]
       29 NAMECALL                         R5 R5 K13 ["GetMouse"]
       31 CALL                             R5 1 -1
       32 CALL                             R4 -1 1
       33 SETTABLEKS                       R4 R0 K14 ["mouse"]
       35 GETTABLEKS                       R4 R0 K14 ["mouse"]
       37 LOADK                            R6 K15 ["Arrow"]
       38 LOADN                            R7 0
       39 NAMECALL                         R4 R4 K16 ["__pushCursor"]
       41 CALL                             R4 3 0
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R4 R0 K17 ["toggleEnabled"]
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R0 K18 ["onClose"]
       50 NEWCLOSURE                       R4 P2
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R4 R0 K19 ["onRestore"]
       54 NEWCLOSURE                       R4 P3
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R4 R0 K20 ["onWidgetEnabledChanged"]
       58 NEWCLOSURE                       R4 P4
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R4 R0 K21 ["onClearErrorMessage"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K22 ["Localization"]
       65 GETTABLEKS                       R4 R4 K12 ["new"]
       67 DUPTABLE                         R5 K27 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ActivityFeed"}]
       68 GETUPVAL                         R6 4
       69 SETTABLEKS                       R6 R5 K23 ["stringResourceTable"]
       71 GETUPVAL                         R6 5
       72 SETTABLEKS                       R6 R5 K24 ["translationResourceTable"]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R0 K28 ["localization"]
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K29 ["Analytics"]
       80 GETTABLEKS                       R4 R4 K12 ["new"]
       82 GETUPVAL                         R5 6
       83 CALL                             R4 1 1
       84 SETTABLEKS                       R4 R0 K30 ["analytics"]
       86 GETTABLEKS                       R4 R1 K3 ["Plugin"]
       88 LOADK                            R6 K31 ["ActivityFeed.ShowErrorMessage"]
       89 NEWCLOSURE                       R7 P5
       90 CAPTURE                          VAL R0
       91 NAMECALL                         R4 R4 K32 ["OnInvoke"]
       93 CALL                             R4 3 0
       94 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{["Toolbar"], ["Active"], ["Title"] = "activity_feed_button", ["Tooltip"], ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K14 ["localization"]
       16 LOADK                            R9 K15 ["Plugin"]
       17 LOADK                            R10 K16 ["Description"]
       18 NAMECALL                         R7 R7 K17 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       23 GETTABLEKS                       R7 R0 K18 ["toggleEnabled"]
       25 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       30 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["errorHeader"]
       10 GETTABLEKS                       R6 R2 K5 ["errorMsg"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["provide"]
       15 NEWTABLE                         R8 0 6
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K7 ["new"]
       20 MOVE                             R10 R3
       21 CALL                             R9 1 1
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K7 ["new"]
       25 NAMECALL                         R11 R3 K8 ["getMouse"]
       27 CALL                             R11 1 -1
       28 CALL                             R10 -1 1
       29 GETUPVAL                         R11 3
       30 CALL                             R11 0 1
       31 GETTABLEKS                       R12 R0 K9 ["localization"]
       33 GETTABLEKS                       R13 R0 K10 ["analytics"]
       35 GETUPVAL                         R14 4
       36 GETTABLEKS                       R14 R14 K7 ["new"]
       38 GETTABLEKS                       R15 R0 K11 ["design"]
       40 CALL                             R14 1 -1
       41 SETLIST                          R8 R9 -1 [1]
       43 DUPTABLE                         R9 K14 [{"Toolbar", "MainWidget"}]
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K15 ["createElement"]
       47 GETUPVAL                         R11 6
       48 DUPTABLE                         R12 K19 [{["Title"] = "ActivityFeed", ["RenderButtons"]}]
       49 NEWCLOSURE                       R13 P0
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R13 R12 K18 ["RenderButtons"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K12 ["Toolbar"]
       56 GETUPVAL                         R10 5
       57 GETTABLEKS                       R10 R10 K15 ["createElement"]
       59 GETUPVAL                         R11 7
       60 NEWTABLE                         R12 16 0
       62 LOADK                            R13 K17 ["ActivityFeed"]
       63 SETTABLEKS                       R13 R12 K20 ["Id"]
       65 SETTABLEKS                       R4 R12 K21 ["Enabled"]
       67 GETTABLEKS                       R13 R0 K9 ["localization"]
       69 LOADK                            R15 K2 ["Plugin"]
       70 LOADK                            R16 K22 ["Name"]
       71 NAMECALL                         R13 R13 K23 ["getText"]
       73 CALL                             R13 3 1
       74 SETTABLEKS                       R13 R12 K16 ["Title"]
       76 GETIMPORT                        R13 K27 [Enum.ZIndexBehavior.Sibling]
       78 SETTABLEKS                       R13 R12 K25 ["ZIndexBehavior"]
       80 GETIMPORT                        R13 K30 [Enum.InitialDockState.Left]
       82 SETTABLEKS                       R13 R12 K28 ["InitialDockState"]
       84 GETIMPORT                        R13 K32 [Vector2.new]
       86 LOADN                            R14 640
       87 LOADN                            R15 480
       88 CALL                             R13 2 1
       89 SETTABLEKS                       R13 R12 K33 ["Size"]
       91 GETIMPORT                        R13 K32 [Vector2.new]
       93 LOADN                            R14 250
       94 LOADN                            R15 200
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K34 ["MinSize"]
       98 GETTABLEKS                       R13 R0 K35 ["onClose"]
      100 SETTABLEKS                       R13 R12 K36 ["OnClose"]
      102 LOADB                            R13 1
      103 SETTABLEKS                       R13 R12 K37 ["ShouldRestore"]
      105 GETTABLEKS                       R13 R0 K38 ["onRestore"]
      107 SETTABLEKS                       R13 R12 K39 ["OnWidgetRestored"]
      109 GETUPVAL                         R13 5
      110 GETTABLEKS                       R13 R13 K40 ["Change"]
      112 GETTABLEKS                       R13 R13 K21 ["Enabled"]
      114 GETTABLEKS                       R14 R0 K41 ["onWidgetEnabledChanged"]
      116 SETTABLE                         R14 R12 R13
      117 GETTABLEKS                       R13 R0 K11 ["design"]
      119 SETTABLEKS                       R13 R12 K42 ["PluginDesign"]
      121 GETUPVAL                         R13 5
      122 GETTABLEKS                       R13 R13 K15 ["createElement"]
      124 GETUPVAL                         R14 8
      125 DUPTABLE                         R15 K44 [{"onStyleSheetChange"}]
      126 GETTABLEKS                       R16 R0 K45 ["onFoundationStyleSheetChange"]
      128 SETTABLEKS                       R16 R15 K43 ["onStyleSheetChange"]
      130 DUPTABLE                         R16 K47 [{"App"}]
      131 GETUPVAL                         R17 5
      132 GETTABLEKS                       R17 R17 K15 ["createElement"]
      134 GETUPVAL                         R18 9
      135 DUPTABLE                         R19 K50 [{"plugin", "enabled", "errorHeader", "errorMsg", "OnClearErrorMessage"}]
      136 SETTABLEKS                       R3 R19 K48 ["plugin"]
      138 SETTABLEKS                       R4 R19 K3 ["enabled"]
      140 SETTABLEKS                       R5 R19 K4 ["errorHeader"]
      142 SETTABLEKS                       R6 R19 K5 ["errorMsg"]
      144 GETTABLEKS                       R20 R0 K51 ["onClearErrorMessage"]
      146 SETTABLEKS                       R20 R19 K49 ["OnClearErrorMessage"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K46 ["App"]
      151 CALL                             R13 3 -1
      152 CALL                             R10 -1 1
      153 SETTABLEKS                       R10 R9 K13 ["MainWidget"]
      155 CALL                             R7 2 -1
      156 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R3 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["Styling"]
       23 GETTABLEKS                       R4 R2 K9 ["UI"]
       25 GETTABLEKS                       R4 R4 K10 ["DockWidget"]
       27 GETTABLEKS                       R5 R2 K9 ["UI"]
       29 GETTABLEKS                       R5 R5 K11 ["PluginToolbar"]
       31 GETTABLEKS                       R6 R2 K9 ["UI"]
       33 GETTABLEKS                       R6 R6 K12 ["PluginButton"]
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R0 K5 ["Packages"]
       39 GETTABLEKS                       R8 R8 K13 ["StudioFoundation"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K14 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["FoundationProviderAdapter"]
       46 GETTABLEKS                       R9 R2 K16 ["ContextServices"]
       48 GETTABLEKS                       R10 R9 K17 ["Plugin"]
       50 GETTABLEKS                       R11 R9 K18 ["Mouse"]
       52 GETTABLEKS                       R12 R9 K19 ["Design"]
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R0 K20 ["Src"]
       58 GETTABLEKS                       R14 R14 K21 ["Resources"]
       60 GETTABLEKS                       R14 R14 K22 ["MakeTheme"]
       62 CALL                             R13 1 1
       63 GETTABLEKS                       R14 R3 K23 ["registerPluginStyles"]
       65 GETTABLEKS                       R15 R0 K20 ["Src"]
       67 GETTABLEKS                       R15 R15 K21 ["Resources"]
       69 GETTABLEKS                       R15 R15 K24 ["Localization"]
       71 GETTABLEKS                       R15 R15 K25 ["SourceStrings"]
       73 GETTABLEKS                       R16 R0 K20 ["Src"]
       75 GETTABLEKS                       R16 R16 K21 ["Resources"]
       77 GETTABLEKS                       R16 R16 K24 ["Localization"]
       79 GETTABLEKS                       R16 R16 K26 ["LocalizedStrings"]
       81 GETIMPORT                        R17 K4 [require]
       83 GETTABLEKS                       R18 R0 K20 ["Src"]
       85 GETTABLEKS                       R18 R18 K27 ["Util"]
       87 GETTABLEKS                       R18 R18 K28 ["AnalyticsHandlers"]
       89 CALL                             R17 1 1
       90 GETTABLEKS                       R18 R0 K20 ["Src"]
       92 GETTABLEKS                       R18 R18 K14 ["Components"]
       94 GETIMPORT                        R19 K4 [require]
       96 GETTABLEKS                       R20 R18 K29 ["App"]
       98 CALL                             R19 1 1
       99 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
      101 LOADK                            R22 K31 ["MainPlugin"]
      102 NAMECALL                         R20 R20 K32 ["extend"]
      104 CALL                             R20 2 1
      105 DUPCLOSURE                       R21 K33 [PROTO_7]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R17
      113 SETTABLEKS                       R21 R20 K34 ["init"]
      115 DUPCLOSURE                       R21 K35 [PROTO_8]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R6
      118 SETTABLEKS                       R21 R20 K36 ["renderButtons"]
      120 DUPCLOSURE                       R21 K37 [PROTO_10]
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R19
      131 SETTABLEKS                       R21 R20 K38 ["render"]
      133 RETURN                           R20 1
