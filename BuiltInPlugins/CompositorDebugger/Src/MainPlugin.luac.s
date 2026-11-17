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
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onClose"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K8 ["onDockWidgetCreated"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["Store"]
       26 GETTABLEKS                       R2 R2 K10 ["new"]
       28 GETUPVAL                         R3 1
       29 LOADNIL                          R4
       30 NEWTABLE                         R5 0 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K11 ["thunkMiddleware"]
       35 SETLIST                          R5 R6 1 [1]
       37 LOADNIL                          R6
       38 CALL                             R2 4 1
       39 SETTABLEKS                       R2 R0 K12 ["store"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K13 ["Localization"]
       44 GETTABLEKS                       R2 R2 K10 ["new"]
       46 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "CompositorDebugger"}]
       47 GETUPVAL                         R4 3
       48 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       50 GETUPVAL                         R4 4
       51 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       53 CALL                             R2 1 1
       54 SETTABLEKS                       R2 R0 K19 ["localization"]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K20 ["Analytics"]
       59 GETTABLEKS                       R2 R2 K10 ["new"]
       61 GETUPVAL                         R3 5
       62 CALL                             R2 1 1
       63 SETTABLEKS                       R2 R0 K21 ["analytics"]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R2 R2 K10 ["new"]
       68 CALL                             R2 0 1
       69 SETTABLEKS                       R2 R0 K22 ["DEPRECATED_stylizer"]
       71 GETUPVAL                         R2 7
       72 GETTABLEKS                       R3 R1 K23 ["Plugin"]
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R0 K24 ["design"]
       77 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

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
       26 GETTABLEKS                       R9 R9 K5 ["new"]
       28 GETTABLEKS                       R10 R0 K7 ["store"]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R0 K8 ["localization"]
       33 GETTABLEKS                       R11 R0 K9 ["analytics"]
       35 GETTABLEKS                       R12 R0 K10 ["DEPRECATED_stylizer"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K12 [{"MainWidget"}]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 5
       44 NEWTABLE                         R10 16 0
       46 LOADK                            R11 K14 ["CompositorDebugger"]
       47 SETTABLEKS                       R11 R10 K15 ["Id"]
       49 SETTABLEKS                       R4 R10 K16 ["Enabled"]
       51 GETTABLEKS                       R11 R0 K8 ["localization"]
       53 LOADK                            R13 K2 ["Plugin"]
       54 LOADK                            R14 K17 ["Name"]
       55 NAMECALL                         R11 R11 K18 ["getText"]
       57 CALL                             R11 3 1
       58 SETTABLEKS                       R11 R10 K19 ["Title"]
       60 GETIMPORT                        R11 K23 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R11 R10 K21 ["ZIndexBehavior"]
       64 GETIMPORT                        R11 K26 [Enum.InitialDockState.Bottom]
       66 SETTABLEKS                       R11 R10 K24 ["InitialDockState"]
       68 GETIMPORT                        R11 K28 [Vector2.new]
       70 LOADN                            R12 640
       71 LOADN                            R13 480
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K29 ["Size"]
       75 GETIMPORT                        R11 K28 [Vector2.new]
       77 LOADN                            R12 250
       78 LOADN                            R13 200
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K30 ["MinSize"]
       82 GETTABLEKS                       R11 R0 K31 ["onClose"]
       84 SETTABLEKS                       R11 R10 K32 ["OnClose"]
       86 GETTABLEKS                       R11 R1 K33 ["PluginLoaderContext"]
       88 GETTABLEKS                       R11 R11 K34 ["mainDockWidget"]
       90 SETTABLEKS                       R11 R10 K35 ["Widget"]
       92 GETTABLEKS                       R11 R0 K36 ["onDockWidgetCreated"]
       94 SETTABLEKS                       R11 R10 K37 ["OnWidgetCreated"]
       96 GETUPVAL                         R11 4
       97 GETTABLEKS                       R11 R11 K38 ["Change"]
       99 GETTABLEKS                       R11 R11 K16 ["Enabled"]
      101 GETTABLEKS                       R12 R0 K39 ["onWidgetEnabledChanged"]
      103 SETTABLE                         R12 R10 R11
      104 GETUPVAL                         R12 6
      105 JUMPIFNOT                        R12 ; [+3]
      106 GETTABLEKS                       R11 R0 K40 ["design"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K41 ["PluginDesign"]
      112 DUPTABLE                         R11 K44 [{"MainComponent", "StyleLink"}]
      113 MOVE                             R12 R4
      114 JUMPIFNOT                        R12 ; [+5]
      115 GETUPVAL                         R12 4
      116 GETTABLEKS                       R12 R12 K13 ["createElement"]
      118 GETUPVAL                         R13 7
      119 CALL                             R12 1 1
      120 SETTABLEKS                       R12 R11 K42 ["MainComponent"]
      122 GETUPVAL                         R13 6
      123 JUMPIF                           R13 ; [+11]
      124 GETUPVAL                         R12 4
      125 GETTABLEKS                       R12 R12 K13 ["createElement"]
      127 LOADK                            R13 K43 ["StyleLink"]
      128 DUPTABLE                         R14 K46 [{"StyleSheet"}]
      129 GETTABLEKS                       R15 R0 K40 ["design"]
      131 SETTABLEKS                       R15 R14 K45 ["StyleSheet"]
      133 CALL                             R12 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R12
      136 SETTABLEKS                       R12 R11 K43 ["StyleLink"]
      138 CALL                             R8 3 1
      139 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      141 CALL                             R5 2 -1
      142 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["SharedFlags"]
       16 GETTABLEKS                       R2 R2 K9 ["getFFlagDevFrameworkUsePluginDesign"]
       18 CALL                             R2 0 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Packages"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["Rodux"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["UI"]
       42 GETTABLEKS                       R6 R6 K15 ["DockWidget"]
       44 GETTABLEKS                       R7 R1 K16 ["ContextServices"]
       46 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       48 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       50 GETTABLEKS                       R10 R7 K19 ["Store"]
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R0 K12 ["Src"]
       56 GETTABLEKS                       R12 R12 K20 ["Reducers"]
       58 GETTABLEKS                       R12 R12 K21 ["MainReducer"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R1 K22 ["Style"]
       63 GETTABLEKS                       R12 R12 K23 ["Themes"]
       65 GETTABLEKS                       R12 R12 K24 ["StudioTheme"]
       67 GETTABLEKS                       R13 R1 K25 ["Styling"]
       69 GETTABLEKS                       R13 R13 K26 ["registerPluginStyles"]
       71 GETTABLEKS                       R14 R0 K12 ["Src"]
       73 GETTABLEKS                       R14 R14 K27 ["Resources"]
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R14 K28 ["AnalyticsHandlers"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R14 K29 ["Localization"]
       82 GETTABLEKS                       R16 R16 K30 ["SourceStrings"]
       84 GETTABLEKS                       R17 R14 K29 ["Localization"]
       86 GETTABLEKS                       R17 R17 K31 ["LocalizedStrings"]
       88 GETTABLEKS                       R18 R0 K12 ["Src"]
       90 GETTABLEKS                       R18 R18 K32 ["Components"]
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R18 K33 ["MainComponent"]
       96 CALL                             R19 1 1
       97 GETTABLEKS                       R20 R3 K34 ["PureComponent"]
       99 LOADK                            R22 K35 ["MainPlugin"]
      100 NAMECALL                         R20 R20 K36 ["extend"]
      102 CALL                             R20 2 1
      103 DUPCLOSURE                       R21 K37 [PROTO_6]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 SETTABLEKS                       R21 R20 K38 ["init"]
      114 DUPCLOSURE                       R21 K39 [PROTO_7]
      115 SETTABLEKS                       R21 R20 K40 ["didUpdate"]
      117 DUPCLOSURE                       R21 K41 [PROTO_8]
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R19
      126 SETTABLEKS                       R21 R20 K42 ["render"]
      128 RETURN                           R20 1
