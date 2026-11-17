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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setRoduxState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["setPluginEnabled"]
        6 LOADB                            R3 0
        7 CALL                             R2 1 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K5 ["toggleEnabled"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K6 ["onClose"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["onRestore"]
       20 NEWCLOSURE                       R2 P3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K8 ["onWidgetEnabledChanged"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K9 ["Store"]
       27 GETTABLEKS                       R2 R2 K10 ["new"]
       29 GETUPVAL                         R3 2
       30 LOADNIL                          R4
       31 NEWTABLE                         R5 0 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K11 ["thunkMiddleware"]
       36 SETLIST                          R5 R6 1 [1]
       38 LOADNIL                          R6
       39 CALL                             R2 4 1
       40 SETTABLEKS                       R2 R0 K12 ["store"]
       42 GETTABLEKS                       R2 R0 K12 ["store"]
       44 GETTABLEKS                       R2 R2 K13 ["changed"]
       46 DUPCLOSURE                       R4 K14 [PROTO_5]
       47 CAPTURE                          UPVAL U0
       48 NAMECALL                         R2 R2 K15 ["connect"]
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R0 K16 ["roduxStateChangedConnection"]
       53 GETUPVAL                         R2 3
       54 GETTABLEKS                       R2 R2 K17 ["Localization"]
       56 GETTABLEKS                       R2 R2 K10 ["new"]
       58 DUPTABLE                         R3 K22 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "UserInputPlayback"}]
       59 GETUPVAL                         R4 4
       60 SETTABLEKS                       R4 R3 K18 ["stringResourceTable"]
       62 GETUPVAL                         R4 5
       63 SETTABLEKS                       R4 R3 K19 ["translationResourceTable"]
       65 CALL                             R2 1 1
       66 SETTABLEKS                       R2 R0 K23 ["localization"]
       68 GETUPVAL                         R2 3
       69 GETTABLEKS                       R2 R2 K24 ["Analytics"]
       71 GETTABLEKS                       R2 R2 K10 ["new"]
       73 DUPCLOSURE                       R3 K25 [PROTO_6]
       74 NEWTABLE                         R4 0 0
       76 CALL                             R2 2 1
       77 SETTABLEKS                       R2 R0 K26 ["analytics"]
       79 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K14 [{["Toolbar"], ["Active"], ["Title"], ["Tooltip"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K15 ["localization"]
       16 LOADK                            R9 K16 ["Plugin"]
       17 LOADK                            R10 K17 ["Button"]
       18 NAMECALL                         R7 R7 K18 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K7 ["Title"]
       23 GETTABLEKS                       R7 R0 K15 ["localization"]
       25 LOADK                            R9 K16 ["Plugin"]
       26 LOADK                            R10 K19 ["Description"]
       27 NAMECALL                         R7 R7 K18 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
       32 GETTABLEKS                       R7 R0 K20 ["toggleEnabled"]
       34 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       39 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPluginState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["PluginState"]
        6 GETTABLEKS                       R2 R2 K2 ["Default"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setPluginEnabled"]
        3 GETTABLEKS                       R4 R0 K1 ["state"]
        5 GETTABLEKS                       R4 R4 K2 ["enabled"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["roduxStateChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["roduxStateChangedConnection"]
        5 GETTABLEKS                       R1 R1 K1 ["disconnect"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
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
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K12 [{"Toolbar", "MainWidget"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 6
       44 DUPTABLE                         R10 K16 [{"Title", "RenderButtons"}]
       45 GETTABLEKS                       R11 R0 K8 ["localization"]
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
       65 NEWTABLE                         R10 16 0
       67 LOADK                            R11 K18 ["UserInputPlayback"]
       68 SETTABLEKS                       R11 R10 K19 ["Id"]
       70 SETTABLEKS                       R4 R10 K20 ["Enabled"]
       72 GETTABLEKS                       R11 R0 K8 ["localization"]
       74 LOADK                            R13 K2 ["Plugin"]
       75 LOADK                            R14 K21 ["Name"]
       76 NAMECALL                         R11 R11 K17 ["getText"]
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K14 ["Title"]
       81 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       83 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       85 GETIMPORT                        R11 K28 [Enum.InitialDockState.Bottom]
       87 SETTABLEKS                       R11 R10 K26 ["InitialDockState"]
       89 GETIMPORT                        R11 K30 [Vector2.new]
       91 LOADN                            R12 360
       92 LOADN                            R13 480
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K31 ["Size"]
       96 GETIMPORT                        R11 K30 [Vector2.new]
       98 LOADN                            R12 360
       99 LOADN                            R13 200
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K32 ["MinSize"]
      103 GETTABLEKS                       R11 R0 K33 ["onClose"]
      105 SETTABLEKS                       R11 R10 K34 ["OnClose"]
      107 LOADB                            R11 1
      108 SETTABLEKS                       R11 R10 K35 ["ShouldRestore"]
      110 GETTABLEKS                       R11 R0 K36 ["onRestore"]
      112 SETTABLEKS                       R11 R10 K37 ["OnWidgetRestored"]
      114 GETUPVAL                         R11 5
      115 GETTABLEKS                       R11 R11 K38 ["Change"]
      117 GETTABLEKS                       R11 R11 K20 ["Enabled"]
      119 GETTABLEKS                       R12 R0 K39 ["onWidgetEnabledChanged"]
      121 SETTABLE                         R12 R10 R11
      122 DUPTABLE                         R11 K41 [{"MainView"}]
      123 MOVE                             R12 R4
      124 JUMPIFNOT                        R12 ; [+5]
      125 GETUPVAL                         R12 5
      126 GETTABLEKS                       R12 R12 K13 ["createElement"]
      128 GETUPVAL                         R13 8
      129 CALL                             R12 1 1
      130 SETTABLEKS                       R12 R11 K40 ["MainView"]
      132 CALL                             R8 3 1
      133 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      135 CALL                             R5 2 -1
      136 RETURN                           R5 -1

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
       44 GETIMPORT                        R12 K4 [require]
       46 GETTABLEKS                       R13 R0 K17 ["Src"]
       48 GETTABLEKS                       R13 R13 K18 ["Reducers"]
       50 GETTABLEKS                       R13 R13 K19 ["MainReducer"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R0 K17 ["Src"]
       57 GETTABLEKS                       R14 R14 K20 ["Resources"]
       59 GETTABLEKS                       R14 R14 K21 ["MakeTheme"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R0 K17 ["Src"]
       64 GETTABLEKS                       R14 R14 K20 ["Resources"]
       66 GETTABLEKS                       R14 R14 K22 ["Localization"]
       68 GETTABLEKS                       R14 R14 K23 ["SourceStrings"]
       70 GETTABLEKS                       R15 R0 K17 ["Src"]
       72 GETTABLEKS                       R15 R15 K20 ["Resources"]
       74 GETTABLEKS                       R15 R15 K22 ["Localization"]
       76 GETTABLEKS                       R15 R15 K24 ["LocalizedStrings"]
       78 GETTABLEKS                       R16 R0 K17 ["Src"]
       80 GETTABLEKS                       R16 R16 K25 ["Components"]
       82 GETIMPORT                        R17 K4 [require]
       84 GETTABLEKS                       R18 R16 K26 ["MainView"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K4 [require]
       89 GETTABLEKS                       R19 R0 K17 ["Src"]
       91 GETTABLEKS                       R19 R19 K27 ["Util"]
       93 GETTABLEKS                       R19 R19 K28 ["DMBridge"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K4 [require]
       98 GETTABLEKS                       R20 R0 K17 ["Src"]
      100 GETTABLEKS                       R20 R20 K27 ["Util"]
      102 GETTABLEKS                       R20 R20 K29 ["Enums"]
      104 CALL                             R19 1 1
      105 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
      107 LOADK                            R22 K31 ["MainPlugin"]
      108 NAMECALL                         R20 R20 K32 ["extend"]
      110 CALL                             R20 2 1
      111 DUPCLOSURE                       R21 K33 [PROTO_7]
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R15
      118 SETTABLEKS                       R21 R20 K34 ["init"]
      120 DUPCLOSURE                       R21 K35 [PROTO_8]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R21 R20 K36 ["renderButtons"]
      125 DUPCLOSURE                       R21 K37 [PROTO_9]
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R19
      128 SETTABLEKS                       R21 R20 K38 ["didMount"]
      130 DUPCLOSURE                       R21 K39 [PROTO_10]
      131 CAPTURE                          VAL R18
      132 SETTABLEKS                       R21 R20 K40 ["didUpdate"]
      134 DUPCLOSURE                       R21 K41 [PROTO_11]
      135 SETTABLEKS                       R21 R20 K42 ["willUnmount"]
      137 DUPCLOSURE                       R21 K43 [PROTO_13]
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R17
      147 SETTABLEKS                       R21 R20 K44 ["render"]
      149 RETURN                           R20 1
