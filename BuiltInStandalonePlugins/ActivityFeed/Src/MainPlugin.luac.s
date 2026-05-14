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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"errorHeader", "errorMsg"}]
        2 LOADK                            R3 K3 [""]
        3 SETTABLEKS                       R3 R2 K0 ["errorHeader"]
        5 LOADK                            R3 K3 [""]
        6 SETTABLEKS                       R3 R2 K1 ["errorMsg"]
        8 NAMECALL                         R0 R0 K4 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

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
       21 DUPTABLE                         R4 K8 [{"enabled", "errorHeader", "errorMsg"}]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K5 ["enabled"]
       25 LOADK                            R5 K9 [""]
       26 SETTABLEKS                       R5 R4 K6 ["errorHeader"]
       28 LOADK                            R5 K9 [""]
       29 SETTABLEKS                       R5 R4 K7 ["errorMsg"]
       31 SETTABLEKS                       R4 R0 K10 ["state"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K11 ["new"]
       36 GETTABLEKS                       R5 R1 K3 ["Plugin"]
       38 NAMECALL                         R5 R5 K12 ["GetMouse"]
       40 CALL                             R5 1 -1
       41 CALL                             R4 -1 1
       42 SETTABLEKS                       R4 R0 K13 ["mouse"]
       44 GETTABLEKS                       R4 R0 K13 ["mouse"]
       46 LOADK                            R6 K14 ["Arrow"]
       47 LOADN                            R7 0
       48 NAMECALL                         R4 R4 K15 ["__pushCursor"]
       50 CALL                             R4 3 0
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R4 R0 K16 ["toggleEnabled"]
       55 NEWCLOSURE                       R4 P1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R4 R0 K17 ["onClose"]
       59 NEWCLOSURE                       R4 P2
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R4 R0 K18 ["onRestore"]
       63 NEWCLOSURE                       R4 P3
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R4 R0 K19 ["onWidgetEnabledChanged"]
       67 NEWCLOSURE                       R4 P4
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R4 R0 K20 ["onClearErrorMessage"]
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R4 R4 K21 ["Localization"]
       74 GETTABLEKS                       R4 R4 K11 ["new"]
       76 DUPTABLE                         R5 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       77 GETUPVAL                         R6 4
       78 SETTABLEKS                       R6 R5 K22 ["stringResourceTable"]
       80 GETUPVAL                         R6 5
       81 SETTABLEKS                       R6 R5 K23 ["translationResourceTable"]
       83 LOADK                            R6 K26 ["ActivityFeed"]
       84 SETTABLEKS                       R6 R5 K24 ["pluginName"]
       86 CALL                             R4 1 1
       87 SETTABLEKS                       R4 R0 K27 ["localization"]
       89 GETUPVAL                         R4 3
       90 GETTABLEKS                       R4 R4 K28 ["Analytics"]
       92 GETTABLEKS                       R4 R4 K11 ["new"]
       94 GETUPVAL                         R5 6
       95 CALL                             R4 1 1
       96 SETTABLEKS                       R4 R0 K29 ["analytics"]
       98 GETTABLEKS                       R4 R1 K3 ["Plugin"]
      100 LOADK                            R6 K30 ["ActivityFeed.ShowErrorMessage"]
      101 NEWCLOSURE                       R7 P5
      102 CAPTURE                          VAL R0
      103 NAMECALL                         R4 R4 K31 ["OnInvoke"]
      105 CALL                             R4 3 0
      106 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K11 [{"Toolbar", "Active", "Title", "Tooltip", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K12 ["activity_feed_button"]
       15 SETTABLEKS                       R7 R6 K7 ["Title"]
       17 GETTABLEKS                       R7 R0 K13 ["localization"]
       19 LOADK                            R9 K14 ["Plugin"]
       20 LOADK                            R10 K15 ["Description"]
       21 NAMECALL                         R7 R7 K16 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
       26 GETTABLEKS                       R7 R0 K17 ["toggleEnabled"]
       28 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K10 ["ClickableWhenViewportHidden"]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       36 RETURN                           R3 1

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
       48 DUPTABLE                         R12 K18 [{"Title", "RenderButtons"}]
       49 LOADK                            R13 K19 ["ActivityFeed"]
       50 SETTABLEKS                       R13 R12 K16 ["Title"]
       52 NEWCLOSURE                       R13 P0
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R13 R12 K17 ["RenderButtons"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K12 ["Toolbar"]
       59 GETUPVAL                         R10 5
       60 GETTABLEKS                       R10 R10 K15 ["createElement"]
       62 GETUPVAL                         R11 7
       63 NEWTABLE                         R12 16 0
       65 LOADK                            R13 K19 ["ActivityFeed"]
       66 SETTABLEKS                       R13 R12 K20 ["Id"]
       68 SETTABLEKS                       R4 R12 K21 ["Enabled"]
       70 GETTABLEKS                       R13 R0 K9 ["localization"]
       72 LOADK                            R15 K2 ["Plugin"]
       73 LOADK                            R16 K22 ["Name"]
       74 NAMECALL                         R13 R13 K23 ["getText"]
       76 CALL                             R13 3 1
       77 SETTABLEKS                       R13 R12 K16 ["Title"]
       79 GETIMPORT                        R13 K27 [Enum.ZIndexBehavior.Sibling]
       81 SETTABLEKS                       R13 R12 K25 ["ZIndexBehavior"]
       83 GETIMPORT                        R13 K30 [Enum.InitialDockState.Left]
       85 SETTABLEKS                       R13 R12 K28 ["InitialDockState"]
       87 GETIMPORT                        R13 K32 [Vector2.new]
       89 LOADN                            R14 128
       90 LOADN                            R15 224
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K33 ["Size"]
       94 GETIMPORT                        R13 K32 [Vector2.new]
       96 LOADN                            R14 250
       97 LOADN                            R15 200
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K34 ["MinSize"]
      101 GETTABLEKS                       R13 R0 K35 ["onClose"]
      103 SETTABLEKS                       R13 R12 K36 ["OnClose"]
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K37 ["ShouldRestore"]
      108 GETTABLEKS                       R13 R0 K38 ["onRestore"]
      110 SETTABLEKS                       R13 R12 K39 ["OnWidgetRestored"]
      112 GETUPVAL                         R13 5
      113 GETTABLEKS                       R13 R13 K40 ["Change"]
      115 GETTABLEKS                       R13 R13 K21 ["Enabled"]
      117 GETTABLEKS                       R14 R0 K41 ["onWidgetEnabledChanged"]
      119 SETTABLE                         R14 R12 R13
      120 GETTABLEKS                       R13 R0 K11 ["design"]
      122 SETTABLEKS                       R13 R12 K42 ["PluginDesign"]
      124 GETUPVAL                         R13 5
      125 GETTABLEKS                       R13 R13 K15 ["createElement"]
      127 GETUPVAL                         R14 8
      128 DUPTABLE                         R15 K44 [{"onStyleSheetChange"}]
      129 GETTABLEKS                       R16 R0 K45 ["onFoundationStyleSheetChange"]
      131 SETTABLEKS                       R16 R15 K43 ["onStyleSheetChange"]
      133 DUPTABLE                         R16 K47 [{"App"}]
      134 GETUPVAL                         R17 5
      135 GETTABLEKS                       R17 R17 K15 ["createElement"]
      137 GETUPVAL                         R18 9
      138 DUPTABLE                         R19 K50 [{"plugin", "enabled", "errorHeader", "errorMsg", "OnClearErrorMessage"}]
      139 SETTABLEKS                       R3 R19 K48 ["plugin"]
      141 SETTABLEKS                       R4 R19 K3 ["enabled"]
      143 SETTABLEKS                       R5 R19 K4 ["errorHeader"]
      145 SETTABLEKS                       R6 R19 K5 ["errorMsg"]
      147 GETTABLEKS                       R20 R0 K51 ["onClearErrorMessage"]
      149 SETTABLEKS                       R20 R19 K49 ["OnClearErrorMessage"]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K46 ["App"]
      154 CALL                             R13 3 -1
      155 CALL                             R10 -1 1
      156 SETTABLEKS                       R10 R9 K13 ["MainWidget"]
      158 CALL                             R7 2 -1
      159 RETURN                           R7 -1

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
