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
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClose"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onDockWidgetCreated"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["Store"]
       29 GETTABLEKS                       R2 R2 K9 ["new"]
       31 GETUPVAL                         R3 1
       32 LOADNIL                          R4
       33 NEWTABLE                         R5 0 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K10 ["thunkMiddleware"]
       38 SETLIST                          R5 R6 1 [1]
       40 LOADNIL                          R6
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R0 K11 ["store"]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K12 ["Localization"]
       47 GETTABLEKS                       R2 R2 K9 ["new"]
       49 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       50 GETUPVAL                         R4 3
       51 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       53 GETUPVAL                         R4 4
       54 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       56 LOADK                            R4 K17 ["CompositorDebugger"]
       57 SETTABLEKS                       R4 R3 K15 ["pluginName"]
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R0 K18 ["localization"]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R2 R2 K19 ["Analytics"]
       65 GETTABLEKS                       R2 R2 K9 ["new"]
       67 GETUPVAL                         R3 5
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K20 ["analytics"]
       71 GETUPVAL                         R2 6
       72 GETTABLEKS                       R2 R2 K9 ["new"]
       74 CALL                             R2 0 1
       75 SETTABLEKS                       R2 R0 K21 ["DEPRECATED_stylizer"]
       77 GETUPVAL                         R2 7
       78 GETTABLEKS                       R3 R1 K22 ["Plugin"]
       80 CALL                             R2 1 1
       81 SETTABLEKS                       R2 R0 K23 ["design"]
       83 RETURN                           R0 0

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
       70 LOADN                            R12 128
       71 LOADN                            R13 224
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
      104 DUPTABLE                         R11 K42 [{"MainComponent", "StyleLink"}]
      105 MOVE                             R12 R4
      106 JUMPIFNOT                        R12 ; [+5]
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R12 R12 K13 ["createElement"]
      110 GETUPVAL                         R13 6
      111 CALL                             R12 1 1
      112 SETTABLEKS                       R12 R11 K40 ["MainComponent"]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R12 R12 K13 ["createElement"]
      117 LOADK                            R13 K41 ["StyleLink"]
      118 DUPTABLE                         R14 K44 [{"StyleSheet"}]
      119 GETTABLEKS                       R15 R0 K45 ["design"]
      121 SETTABLEKS                       R15 R14 K43 ["StyleSheet"]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K41 ["StyleLink"]
      126 CALL                             R8 3 1
      127 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      129 CALL                             R5 2 -1
      130 RETURN                           R5 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Rodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["UI"]
       37 GETTABLEKS                       R5 R5 K13 ["DockWidget"]
       39 GETTABLEKS                       R6 R1 K14 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       43 GETTABLEKS                       R8 R6 K16 ["Mouse"]
       45 GETTABLEKS                       R9 R6 K17 ["Store"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K10 ["Src"]
       51 GETTABLEKS                       R11 R11 K18 ["Reducers"]
       53 GETTABLEKS                       R11 R11 K19 ["MainReducer"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R1 K20 ["Style"]
       58 GETTABLEKS                       R11 R11 K21 ["Themes"]
       60 GETTABLEKS                       R11 R11 K22 ["StudioTheme"]
       62 GETTABLEKS                       R12 R1 K23 ["Styling"]
       64 GETTABLEKS                       R12 R12 K24 ["registerPluginStyles"]
       66 GETTABLEKS                       R13 R0 K10 ["Src"]
       68 GETTABLEKS                       R13 R13 K25 ["Resources"]
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R13 K26 ["AnalyticsHandlers"]
       74 CALL                             R14 1 1
       75 GETTABLEKS                       R15 R13 K27 ["Localization"]
       77 GETTABLEKS                       R15 R15 K28 ["SourceStrings"]
       79 GETTABLEKS                       R16 R13 K27 ["Localization"]
       81 GETTABLEKS                       R16 R16 K29 ["LocalizedStrings"]
       83 GETTABLEKS                       R17 R0 K10 ["Src"]
       85 GETTABLEKS                       R17 R17 K30 ["Components"]
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R17 K31 ["MainComponent"]
       91 CALL                             R18 1 1
       92 GETTABLEKS                       R19 R2 K32 ["PureComponent"]
       94 LOADK                            R21 K33 ["MainPlugin"]
       95 NAMECALL                         R19 R19 K34 ["extend"]
       97 CALL                             R19 2 1
       98 DUPCLOSURE                       R20 K35 [PROTO_6]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R20 R19 K36 ["init"]
      109 DUPCLOSURE                       R20 K37 [PROTO_7]
      110 SETTABLEKS                       R20 R19 K38 ["didUpdate"]
      112 DUPCLOSURE                       R20 K39 [PROTO_8]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R18
      120 SETTABLEKS                       R20 R19 K40 ["render"]
      122 RETURN                           R19 1
