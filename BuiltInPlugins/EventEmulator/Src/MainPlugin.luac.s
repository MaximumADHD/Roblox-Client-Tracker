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
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleState"]
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
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["toggleState"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onClose"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["onDockWidgetCreated"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K8 ["onWidgetEnabledChanged"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["Store"]
       26 GETTABLEKS                       R2 R2 K10 ["new"]
       28 GETUPVAL                         R3 1
       29 NEWTABLE                         R4 0 0
       31 NEWTABLE                         R5 0 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K11 ["thunkMiddleware"]
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R2 3 1
       39 SETTABLEKS                       R2 R0 K12 ["store"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K13 ["Localization"]
       44 GETTABLEKS                       R2 R2 K10 ["new"]
       46 DUPTABLE                         R3 K17 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       47 GETUPVAL                         R4 3
       48 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       50 GETUPVAL                         R4 4
       51 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       53 GETUPVAL                         R4 5
       54 GETTABLEKS                       R4 R4 K18 ["Name"]
       56 SETTABLEKS                       R4 R3 K16 ["pluginName"]
       58 CALL                             R2 1 1
       59 SETTABLEKS                       R2 R0 K19 ["localization"]
       61 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 -1
       18 SETLIST                          R6 R7 -1 [1]
       20 DUPTABLE                         R7 K7 [{"MainWidget"}]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K8 ["createElement"]
       24 GETUPVAL                         R9 3
       25 NEWTABLE                         R10 16 0
       27 SETTABLEKS                       R4 R10 K9 ["Enabled"]
       29 GETTABLEKS                       R11 R1 K10 ["pluginLoaderContext"]
       31 GETTABLEKS                       R11 R11 K11 ["mainDockWidget"]
       33 SETTABLEKS                       R11 R10 K12 ["Widget"]
       35 GETTABLEKS                       R11 R0 K13 ["localization"]
       37 LOADK                            R13 K2 ["Plugin"]
       38 LOADK                            R14 K14 ["Toolbar"]
       39 NAMECALL                         R11 R11 K15 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K16 ["Title"]
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K17 ["Name"]
       47 SETTABLEKS                       R11 R10 K18 ["Id"]
       49 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       51 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       53 GETIMPORT                        R11 K25 [Enum.InitialDockState.Left]
       55 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       57 GETIMPORT                        R11 K27 [Vector2.new]
       59 LOADN                            R12 310
       60 LOADN                            R13 225
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K28 ["Size"]
       64 GETIMPORT                        R11 K27 [Vector2.new]
       66 LOADN                            R12 310
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
       86 GETUPVAL                         R11 2
       87 GETTABLEKS                       R11 R11 K37 ["Change"]
       89 GETTABLEKS                       R11 R11 K9 ["Enabled"]
       91 GETTABLEKS                       R12 R0 K38 ["onWidgetEnabledChanged"]
       93 SETTABLE                         R12 R10 R11
       94 DUPTABLE                         R11 K40 [{"MainProvider"}]
       95 MOVE                             R12 R4
       96 JUMPIFNOT                        R12 ; [+31]
       97 GETUPVAL                         R12 0
       98 GETTABLEKS                       R12 R12 K4 ["provide"]
      100 NEWTABLE                         R13 0 3
      102 GETUPVAL                         R14 5
      103 GETTABLEKS                       R14 R14 K5 ["new"]
      105 NAMECALL                         R15 R3 K41 ["getMouse"]
      107 CALL                             R15 1 -1
      108 CALL                             R14 -1 1
      109 GETUPVAL                         R15 6
      110 CALL                             R15 0 1
      111 GETUPVAL                         R16 7
      112 GETTABLEKS                       R16 R16 K5 ["new"]
      114 GETTABLEKS                       R17 R0 K42 ["store"]
      116 CALL                             R16 1 -1
      117 SETLIST                          R13 R14 -1 [1]
      119 DUPTABLE                         R14 K44 [{"EventEmulator"}]
      120 GETUPVAL                         R15 2
      121 GETTABLEKS                       R15 R15 K8 ["createElement"]
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
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Reducers"]
       27 GETTABLEKS                       R4 R4 K10 ["MainReducer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["Framework"]
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
       55 GETTABLEKS                       R14 R0 K8 ["Src"]
       57 GETTABLEKS                       R14 R14 K20 ["Resources"]
       59 GETTABLEKS                       R14 R14 K21 ["MakeTheme"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R0 K8 ["Src"]
       64 GETTABLEKS                       R14 R14 K20 ["Resources"]
       66 GETTABLEKS                       R14 R14 K22 ["Localization"]
       68 GETTABLEKS                       R14 R14 K23 ["SourceStrings"]
       70 GETTABLEKS                       R15 R0 K8 ["Src"]
       72 GETTABLEKS                       R15 R15 K20 ["Resources"]
       74 GETTABLEKS                       R15 R15 K22 ["Localization"]
       76 GETTABLEKS                       R15 R15 K24 ["LocalizedStrings"]
       78 GETIMPORT                        R16 K4 [require]
       80 GETTABLEKS                       R17 R0 K8 ["Src"]
       82 GETTABLEKS                       R17 R17 K25 ["Components"]
       84 GETTABLEKS                       R17 R17 K26 ["EventEmulator"]
       86 CALL                             R16 1 1
       87 GETTABLEKS                       R17 R1 K27 ["setGlobalConfig"]
       89 DUPTABLE                         R18 K32 [{["typeChecks"] = True, ["propValidation"] = True, ["elementTracing"] = True}]
       90 CALL                             R17 1 0
       91 GETTABLEKS                       R17 R1 K33 ["PureComponent"]
       93 LOADK                            R19 K34 ["MainPlugin"]
       94 NAMECALL                         R17 R17 K35 ["extend"]
       96 CALL                             R17 2 1
       97 DUPCLOSURE                       R18 K36 [PROTO_5]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R18 R17 K37 ["init"]
      106 DUPCLOSURE                       R18 K38 [PROTO_6]
      107 SETTABLEKS                       R18 R17 K39 ["didUpdate"]
      109 DUPCLOSURE                       R18 K40 [PROTO_7]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R16
      119 SETTABLEKS                       R18 R17 K41 ["render"]
      121 RETURN                           R17 1
