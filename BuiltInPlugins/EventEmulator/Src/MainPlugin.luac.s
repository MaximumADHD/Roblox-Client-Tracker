PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R0 K1 ["enabled"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R4 K2 [{"enabled"}]
        7 NOT                              R5 R1
        8 SETTABLEKS                       R5 R4 K1 ["enabled"]
       10 NAMECALL                         R2 R2 K3 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleState"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleState"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClose"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["onDockWidgetCreated"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K8 ["Store"]
       29 GETTABLEKS                       R2 R3 K9 ["new"]
       31 GETUPVAL                         R3 1
       32 NEWTABLE                         R4 0 0
       34 NEWTABLE                         R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K10 ["thunkMiddleware"]
       39 SETLIST                          R5 R6 1 [1]
       41 CALL                             R2 3 1
       42 SETTABLEKS                       R2 R0 K11 ["store"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R3 R4 K12 ["Localization"]
       47 GETTABLEKS                       R2 R3 K9 ["new"]
       49 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       50 GETUPVAL                         R4 3
       51 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       53 GETUPVAL                         R4 4
       54 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       56 GETUPVAL                         R5 5
       57 GETTABLEKS                       R4 R5 K17 ["Name"]
       59 SETTABLEKS                       R4 R3 K15 ["pluginName"]
       61 CALL                             R2 1 1
       62 SETTABLEKS                       R2 R0 K18 ["localization"]
       64 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 1
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 -1
       18 SETLIST                          R6 R7 -1 [1]
       20 DUPTABLE                         R7 K7 [{"MainWidget"}]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K8 ["createElement"]
       24 GETUPVAL                         R9 3
       25 NEWTABLE                         R10 16 0
       27 SETTABLEKS                       R4 R10 K9 ["Enabled"]
       29 GETTABLEKS                       R12 R1 K10 ["pluginLoaderContext"]
       31 GETTABLEKS                       R11 R12 K11 ["mainDockWidget"]
       33 SETTABLEKS                       R11 R10 K12 ["Widget"]
       35 GETTABLEKS                       R11 R0 K13 ["localization"]
       37 LOADK                            R13 K2 ["Plugin"]
       38 LOADK                            R14 K14 ["Toolbar"]
       39 NAMECALL                         R11 R11 K15 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K16 ["Title"]
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R11 R12 K17 ["Name"]
       47 SETTABLEKS                       R11 R10 K18 ["Id"]
       49 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       51 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       53 GETIMPORT                        R11 K25 [Enum.InitialDockState.Left]
       55 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       57 GETIMPORT                        R11 K27 [Vector2.new]
       59 LOADN                            R12 54
       60 LOADN                            R13 225
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K28 ["Size"]
       64 GETIMPORT                        R11 K27 [Vector2.new]
       66 LOADN                            R12 54
       67 LOADN                            R13 225
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       71 GETTABLEKS                       R11 R0 K30 ["onClose"]
       73 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       75 LOADB                            R11 1
       76 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
       78 GETTABLEKS                       R11 R0 K33 ["onRestore"]
       80 SETTABLEKS                       R11 R10 K34 ["OnWidgetRestored"]
       82 GETTABLEKS                       R11 R0 K35 ["onDockWidgetCreated"]
       84 SETTABLEKS                       R11 R10 K36 ["OnWidgetCreated"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R12 R13 K37 ["Change"]
       89 GETTABLEKS                       R11 R12 K9 ["Enabled"]
       91 GETTABLEKS                       R12 R0 K38 ["onWidgetEnabledChanged"]
       93 SETTABLE                         R12 R10 R11
       94 DUPTABLE                         R11 K40 [{"MainProvider"}]
       95 MOVE                             R12 R4
       96 JUMPIFNOT                        R12 ; [+31]
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R12 R13 K4 ["provide"]
      100 NEWTABLE                         R13 0 3
      102 GETUPVAL                         R15 5
      103 GETTABLEKS                       R14 R15 K5 ["new"]
      105 NAMECALL                         R15 R3 K41 ["getMouse"]
      107 CALL                             R15 1 -1
      108 CALL                             R14 -1 1
      109 GETUPVAL                         R15 6
      110 CALL                             R15 0 1
      111 GETUPVAL                         R17 7
      112 GETTABLEKS                       R16 R17 K5 ["new"]
      114 GETTABLEKS                       R17 R0 K42 ["store"]
      116 CALL                             R16 1 -1
      117 SETLIST                          R13 R14 -1 [1]
      119 DUPTABLE                         R14 K44 [{"EventEmulator"}]
      120 GETUPVAL                         R16 2
      121 GETTABLEKS                       R15 R16 K8 ["createElement"]
      123 GETUPVAL                         R16 8
      124 CALL                             R15 1 1
      125 SETTABLEKS                       R15 R14 K43 ["EventEmulator"]
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K39 ["MainProvider"]
      130 CALL                             R8 3 1
      131 SETTABLEKS                       R8 R7 K6 ["MainWidget"]
      133 CALL                             R5 2 -1
      134 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K9 ["Reducers"]
       27 GETTABLEKS                       R4 R5 K10 ["MainReducer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K11 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       39 GETTABLEKS                       R6 R4 K13 ["UI"]
       41 GETTABLEKS                       R7 R6 K14 ["DockWidget"]
       43 GETTABLEKS                       R8 R6 K15 ["PluginButton"]
       45 GETTABLEKS                       R9 R6 K16 ["PluginToolbar"]
       47 GETTABLEKS                       R10 R5 K17 ["Plugin"]
       49 GETTABLEKS                       R11 R5 K18 ["Mouse"]
       51 GETTABLEKS                       R12 R5 K19 ["Store"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R16 R0 K8 ["Src"]
       57 GETTABLEKS                       R15 R16 K20 ["Resources"]
       59 GETTABLEKS                       R14 R15 K21 ["MakeTheme"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R17 R0 K8 ["Src"]
       64 GETTABLEKS                       R16 R17 K20 ["Resources"]
       66 GETTABLEKS                       R15 R16 K22 ["Localization"]
       68 GETTABLEKS                       R14 R15 K23 ["SourceStrings"]
       70 GETTABLEKS                       R18 R0 K8 ["Src"]
       72 GETTABLEKS                       R17 R18 K20 ["Resources"]
       74 GETTABLEKS                       R16 R17 K22 ["Localization"]
       76 GETTABLEKS                       R15 R16 K24 ["LocalizedStrings"]
       78 GETIMPORT                        R16 K4 [require]
       80 GETTABLEKS                       R19 R0 K8 ["Src"]
       82 GETTABLEKS                       R18 R19 K25 ["Components"]
       84 GETTABLEKS                       R17 R18 K26 ["EventEmulator"]
       86 CALL                             R16 1 1
       87 GETTABLEKS                       R17 R1 K27 ["setGlobalConfig"]
       89 DUPTABLE                         R18 K31 [{"typeChecks", "propValidation", "elementTracing"}]
       90 LOADB                            R19 1
       91 SETTABLEKS                       R19 R18 K28 ["typeChecks"]
       93 LOADB                            R19 1
       94 SETTABLEKS                       R19 R18 K29 ["propValidation"]
       96 LOADB                            R19 1
       97 SETTABLEKS                       R19 R18 K30 ["elementTracing"]
       99 CALL                             R17 1 0
      100 GETTABLEKS                       R17 R1 K32 ["PureComponent"]
      102 LOADK                            R19 K33 ["MainPlugin"]
      103 NAMECALL                         R17 R17 K34 ["extend"]
      105 CALL                             R17 2 1
      106 DUPCLOSURE                       R18 K35 [PROTO_5]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R18 R17 K36 ["init"]
      115 DUPCLOSURE                       R18 K37 [PROTO_6]
      116 SETTABLEKS                       R18 R17 K38 ["didUpdate"]
      118 DUPCLOSURE                       R18 K39 [PROTO_7]
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R16
      128 SETTABLEKS                       R18 R17 K40 ["render"]
      130 RETURN                           R17 1
