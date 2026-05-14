PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R1 R0 K1 ["enabled"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R4 K2 [{"enabled"}]
        7 NOT                              R5 R1
        8 SETTABLEKS                       R5 R4 K1 ["enabled"]
       10 NAMECALL                         R2 R2 K3 ["setState"]
       12 CALL                             R2 2 0
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["analyticsImpl"]
       17 LOADK                            R4 K5 ["tools"]
       18 LOADK                            R5 K6 ["closed"]
       19 NAMECALL                         R2 R2 K7 ["reportButtonPress"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["analyticsImpl"]
       26 LOADN                            R4 1
       27 NAMECALL                         R2 R2 K8 ["reportToolOpened"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K4 ["analyticsImpl"]
       33 LOADK                            R4 K5 ["tools"]
       34 LOADK                            R5 K9 ["open"]
       35 NAMECALL                         R2 R2 K7 ["reportButtonPress"]
       37 CALL                             R2 3 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleState"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["Store"]
        9 GETTABLEKS                       R1 R1 K4 ["new"]
       11 GETUPVAL                         R2 1
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["thunkMiddleware"]
       19 SETLIST                          R4 R5 1 [1]
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K6 ["store"]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K7 ["Localization"]
       27 GETTABLEKS                       R1 R1 K4 ["new"]
       29 DUPTABLE                         R2 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       30 GETUPVAL                         R3 3
       31 SETTABLEKS                       R3 R2 K8 ["stringResourceTable"]
       33 GETUPVAL                         R3 4
       34 SETTABLEKS                       R3 R2 K9 ["translationResourceTable"]
       36 LOADK                            R3 K12 ["LocalizationTools"]
       37 SETTABLEKS                       R3 R2 K10 ["pluginName"]
       39 CALL                             R1 1 1
       40 SETTABLEKS                       R1 R0 K13 ["localization"]
       42 GETUPVAL                         R1 5
       43 CALL                             R1 0 1
       44 SETTABLEKS                       R1 R0 K14 ["theme"]
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K15 ["API"]
       49 GETTABLEKS                       R1 R1 K4 ["new"]
       51 CALL                             R1 0 1
       52 SETTABLEKS                       R1 R0 K16 ["api"]
       54 GETUPVAL                         R1 6
       55 GETTABLEKS                       R1 R1 K4 ["new"]
       57 CALL                             R1 0 1
       58 SETTABLEKS                       R1 R0 K17 ["analyticsImpl"]
       60 NEWCLOSURE                       R1 P0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K18 ["toggleState"]
       64 NEWCLOSURE                       R1 P1
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K19 ["onRestore"]
       68 NEWCLOSURE                       R1 P2
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K20 ["onDockWidgetCreated"]
       72 NEWCLOSURE                       R1 P3
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K21 ["onDockWidgetEnabledChanged"]
       76 NEWCLOSURE                       R1 P4
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R1 R0 K22 ["onClose"]
       80 GETTABLEKS                       R1 R0 K23 ["props"]
       82 GETTABLEKS                       R1 R1 K24 ["pluginLoaderContext"]
       84 GETTABLEKS                       R1 R1 K25 ["mainButton"]
       86 SETTABLEKS                       R1 R0 K26 ["button"]
       88 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OnGameIdChanged"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R2 2 -1
        7 NAMECALL                         R0 R0 K1 ["dispatch"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["api"]
        8 NAMECALL                         R1 R1 K2 ["get"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K3 ["localization"]
       13 GETTABLEKS                       R3 R0 K4 ["store"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["GetAll"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R6 2 -1
       21 NAMECALL                         R4 R3 K6 ["dispatch"]
       23 CALL                             R4 -1 0
       24 GETIMPORT                        R4 K8 [game]
       26 LOADK                            R6 K9 ["GameId"]
       27 NAMECALL                         R4 R4 K10 ["GetPropertyChangedSignal"]
       29 CALL                             R4 2 1
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 NAMECALL                         R4 R4 K11 ["Connect"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 NAMECALL                         R5 R5 K4 ["IsEdit"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["provide"]
       15 NEWTABLE                         R7 0 1
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K6 ["new"]
       20 MOVE                             R9 R3
       21 CALL                             R8 1 -1
       22 SETLIST                          R7 R8 -1 [1]
       24 DUPTABLE                         R8 K8 [{"MainWidget"}]
       25 MOVE                             R9 R5
       26 JUMPIFNOT                        R9 ; [+110]
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K9 ["createElement"]
       30 GETUPVAL                         R10 4
       31 NEWTABLE                         R11 16 0
       33 LOADK                            R12 K10 ["LocalizationTools"]
       34 SETTABLEKS                       R12 R11 K11 ["Id"]
       36 SETTABLEKS                       R4 R11 K12 ["Enabled"]
       38 GETTABLEKS                       R12 R1 K13 ["pluginLoaderContext"]
       40 GETTABLEKS                       R12 R12 K14 ["mainDockWidget"]
       42 SETTABLEKS                       R12 R11 K15 ["Widget"]
       44 GETTABLEKS                       R12 R0 K16 ["localization"]
       46 LOADK                            R14 K2 ["Plugin"]
       47 LOADK                            R15 K17 ["WindowTitle"]
       48 NAMECALL                         R12 R12 K18 ["getText"]
       50 CALL                             R12 3 1
       51 SETTABLEKS                       R12 R11 K19 ["Title"]
       53 GETIMPORT                        R12 K23 [Enum.ZIndexBehavior.Sibling]
       55 SETTABLEKS                       R12 R11 K21 ["ZIndexBehavior"]
       57 GETIMPORT                        R12 K26 [Enum.InitialDockState.Left]
       59 SETTABLEKS                       R12 R11 K24 ["InitialDockState"]
       61 GETUPVAL                         R12 5
       62 SETTABLEKS                       R12 R11 K27 ["MinSize"]
       64 GETUPVAL                         R12 5
       65 SETTABLEKS                       R12 R11 K28 ["Size"]
       67 GETTABLEKS                       R12 R0 K29 ["onClose"]
       69 SETTABLEKS                       R12 R11 K30 ["OnClose"]
       71 LOADB                            R12 1
       72 SETTABLEKS                       R12 R11 K31 ["ShouldRestore"]
       74 GETTABLEKS                       R12 R0 K32 ["onRestore"]
       76 SETTABLEKS                       R12 R11 K33 ["OnWidgetRestored"]
       78 GETTABLEKS                       R12 R0 K34 ["onDockWidgetCreated"]
       80 SETTABLEKS                       R12 R11 K35 ["OnWidgetCreated"]
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R12 R12 K36 ["Change"]
       85 GETTABLEKS                       R12 R12 K12 ["Enabled"]
       87 GETTABLEKS                       R13 R0 K37 ["onDockWidgetEnabledChanged"]
       89 SETTABLE                         R13 R11 R12
       90 DUPTABLE                         R12 K39 [{"MainProvider"}]
       91 MOVE                             R13 R4
       92 JUMPIFNOT                        R13 ; [+41]
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K5 ["provide"]
       96 NEWTABLE                         R14 0 6
       98 GETUPVAL                         R15 6
       99 GETTABLEKS                       R15 R15 K6 ["new"]
      101 NAMECALL                         R16 R3 K40 ["getMouse"]
      103 CALL                             R16 1 -1
      104 CALL                             R15 -1 1
      105 GETUPVAL                         R16 7
      106 GETTABLEKS                       R16 R16 K6 ["new"]
      108 GETTABLEKS                       R17 R0 K41 ["store"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R17 R0 K42 ["api"]
      113 GETTABLEKS                       R18 R0 K16 ["localization"]
      115 GETTABLEKS                       R19 R0 K43 ["theme"]
      117 GETUPVAL                         R20 8
      118 GETTABLEKS                       R20 R20 K6 ["new"]
      120 GETTABLEKS                       R21 R0 K44 ["analyticsImpl"]
      122 CALL                             R20 1 -1
      123 SETLIST                          R14 R15 -1 [1]
      125 DUPTABLE                         R15 K46 [{"MainView"}]
      126 GETUPVAL                         R16 3
      127 GETTABLEKS                       R16 R16 K9 ["createElement"]
      129 GETUPVAL                         R17 9
      130 CALL                             R16 1 1
      131 SETTABLEKS                       R16 R15 K45 ["MainView"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K38 ["MainProvider"]
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K7 ["MainWidget"]
      139 CALL                             R6 2 -1
      140 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["Rodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K9 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K14 ["Plugin"]
       38 GETTABLEKS                       R7 R5 K15 ["Mouse"]
       40 GETTABLEKS                       R8 R5 K16 ["Store"]
       42 GETTABLEKS                       R9 R4 K17 ["UI"]
       44 GETTABLEKS                       R10 R9 K18 ["DockWidget"]
       46 GETIMPORT                        R11 K8 [require]
       48 GETTABLEKS                       R12 R1 K19 ["Src"]
       50 GETTABLEKS                       R12 R12 K13 ["ContextServices"]
       52 GETTABLEKS                       R12 R12 K20 ["AnalyticsContext"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K8 [require]
       57 GETTABLEKS                       R13 R1 K19 ["Src"]
       59 GETTABLEKS                       R13 R13 K21 ["Resources"]
       61 GETTABLEKS                       R13 R13 K22 ["PluginTheme"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R1 K19 ["Src"]
       66 GETTABLEKS                       R13 R13 K21 ["Resources"]
       68 GETTABLEKS                       R13 R13 K23 ["Localization"]
       70 GETTABLEKS                       R13 R13 K24 ["SourceStrings"]
       72 GETTABLEKS                       R14 R1 K19 ["Src"]
       74 GETTABLEKS                       R14 R14 K21 ["Resources"]
       76 GETTABLEKS                       R14 R14 K23 ["Localization"]
       78 GETTABLEKS                       R14 R14 K25 ["LocalizedStrings"]
       80 GETIMPORT                        R15 K8 [require]
       82 GETTABLEKS                       R16 R1 K19 ["Src"]
       84 GETTABLEKS                       R16 R16 K26 ["Components"]
       86 GETTABLEKS                       R16 R16 K27 ["MainView"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K8 [require]
       91 GETTABLEKS                       R17 R1 K19 ["Src"]
       93 GETTABLEKS                       R17 R17 K28 ["Reducers"]
       95 GETTABLEKS                       R17 R17 K29 ["MainReducer"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K8 [require]
      100 GETTABLEKS                       R18 R1 K19 ["Src"]
      102 GETTABLEKS                       R18 R18 K30 ["Thunks"]
      104 GETTABLEKS                       R18 R18 K31 ["LoadPluginMetadata"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K8 [require]
      109 GETTABLEKS                       R19 R1 K19 ["Src"]
      111 GETTABLEKS                       R19 R19 K32 ["Util"]
      113 GETTABLEKS                       R19 R19 K33 ["Analytics"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K36 [Vector2.new]
      118 LOADN                            R20 124
      119 LOADN                            R21 250
      120 CALL                             R19 2 1
      121 GETTABLEKS                       R20 R2 K37 ["PureComponent"]
      123 LOADK                            R22 K38 ["MainPlugin"]
      124 NAMECALL                         R20 R20 K39 ["extend"]
      126 CALL                             R20 2 1
      127 DUPCLOSURE                       R21 K40 [PROTO_5]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R18
      135 SETTABLEKS                       R21 R20 K41 ["init"]
      137 DUPCLOSURE                       R21 K42 [PROTO_7]
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R17
      140 SETTABLEKS                       R21 R20 K43 ["didMount"]
      142 DUPCLOSURE                       R21 K44 [PROTO_8]
      143 SETTABLEKS                       R21 R20 K45 ["didUpdate"]
      145 DUPCLOSURE                       R21 K46 [PROTO_9]
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R15
      156 SETTABLEKS                       R21 R20 K47 ["render"]
      158 RETURN                           R20 1
