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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
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
       20 SETTABLEKS                       R2 R0 K6 ["onDockWidgetCreated"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K8 ["Store"]
       29 GETTABLEKS                       R2 R3 K9 ["new"]
       31 GETUPVAL                         R3 1
       32 LOADNIL                          R4
       33 NEWTABLE                         R5 0 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K10 ["thunkMiddleware"]
       38 SETLIST                          R5 R6 1 [1]
       40 LOADNIL                          R6
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R0 K11 ["store"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R3 R4 K12 ["Localization"]
       47 GETTABLEKS                       R2 R3 K9 ["new"]
       49 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       50 GETUPVAL                         R4 3
       51 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       53 GETUPVAL                         R4 4
       54 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       56 LOADK                            R4 K17 ["NestedPackagePublisher"]
       57 SETTABLEKS                       R4 R3 K15 ["pluginName"]
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R0 K18 ["localization"]
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R3 R4 K19 ["Analytics"]
       65 GETTABLEKS                       R2 R3 K9 ["new"]
       67 DUPCLOSURE                       R3 K20 [PROTO_6]
       68 NEWTABLE                         R4 0 0
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R0 K21 ["analytics"]
       73 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R9 R10 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K11 [{"MainWidget"}]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R8 R9 K12 ["createElement"]
       43 GETUPVAL                         R9 6
       44 NEWTABLE                         R10 16 0
       46 LOADK                            R11 K13 ["NestedPackagePublisher"]
       47 SETTABLEKS                       R11 R10 K14 ["Id"]
       49 SETTABLEKS                       R4 R10 K15 ["Enabled"]
       51 GETTABLEKS                       R12 R1 K16 ["pluginLoaderContext"]
       53 GETTABLEKS                       R11 R12 K17 ["mainDockWidget"]
       55 SETTABLEKS                       R11 R10 K18 ["Widget"]
       57 GETTABLEKS                       R11 R0 K8 ["localization"]
       59 LOADK                            R13 K2 ["Plugin"]
       60 LOADK                            R14 K19 ["Name"]
       61 NAMECALL                         R11 R11 K20 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K21 ["Title"]
       66 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       68 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       70 GETIMPORT                        R11 K28 [Enum.InitialDockState.Bottom]
       72 SETTABLEKS                       R11 R10 K26 ["InitialDockState"]
       74 GETIMPORT                        R11 K30 [Vector2.new]
       76 LOADN                            R12 128
       77 LOADN                            R13 224
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K31 ["Size"]
       81 GETIMPORT                        R11 K30 [Vector2.new]
       83 LOADN                            R12 250
       84 LOADN                            R13 200
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K32 ["MinSize"]
       88 GETTABLEKS                       R11 R0 K33 ["onClose"]
       90 SETTABLEKS                       R11 R10 K34 ["OnClose"]
       92 LOADB                            R11 1
       93 SETTABLEKS                       R11 R10 K35 ["ShouldRestore"]
       95 GETTABLEKS                       R11 R0 K36 ["onRestore"]
       97 SETTABLEKS                       R11 R10 K37 ["OnWidgetRestored"]
       99 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
      103 GETUPVAL                         R13 5
      104 GETTABLEKS                       R12 R13 K40 ["Change"]
      106 GETTABLEKS                       R11 R12 K15 ["Enabled"]
      108 GETTABLEKS                       R12 R0 K41 ["onWidgetEnabledChanged"]
      110 SETTABLE                         R12 R10 R11
      111 DUPTABLE                         R11 K44 [{"PublishFrame", "ExampleRoactRoduxComponent"}]
      112 GETUPVAL                         R13 5
      113 GETTABLEKS                       R12 R13 K12 ["createElement"]
      115 GETUPVAL                         R13 7
      116 DUPTABLE                         R14 K45 [{"Enabled"}]
      117 SETTABLEKS                       R4 R14 K15 ["Enabled"]
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K42 ["PublishFrame"]
      122 GETUPVAL                         R13 5
      123 GETTABLEKS                       R12 R13 K12 ["createElement"]
      125 GETUPVAL                         R13 8
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K43 ["ExampleRoactRoduxComponent"]
      129 CALL                             R8 3 1
      130 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      132 CALL                             R5 2 -1
      133 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R5 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R5 R4 K10 ["DockWidget"]
       32 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K12 ["Plugin"]
       36 GETTABLEKS                       R8 R6 K13 ["Mouse"]
       38 GETTABLEKS                       R9 R6 K14 ["Store"]
       40 GETIMPORT                        R10 K4 [require]
       42 GETTABLEKS                       R13 R0 K15 ["Src"]
       44 GETTABLEKS                       R12 R13 K16 ["Reducers"]
       46 GETTABLEKS                       R11 R12 K17 ["MainReducer"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K4 [require]
       51 GETTABLEKS                       R14 R0 K15 ["Src"]
       53 GETTABLEKS                       R13 R14 K18 ["Resources"]
       55 GETTABLEKS                       R12 R13 K19 ["MakeTheme"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R15 R0 K15 ["Src"]
       60 GETTABLEKS                       R14 R15 K18 ["Resources"]
       62 GETTABLEKS                       R13 R14 K20 ["Localization"]
       64 GETTABLEKS                       R12 R13 K21 ["SourceStrings"]
       66 GETTABLEKS                       R16 R0 K15 ["Src"]
       68 GETTABLEKS                       R15 R16 K18 ["Resources"]
       70 GETTABLEKS                       R14 R15 K20 ["Localization"]
       72 GETTABLEKS                       R13 R14 K22 ["LocalizedStrings"]
       74 GETTABLEKS                       R15 R0 K15 ["Src"]
       76 GETTABLEKS                       R14 R15 K23 ["Components"]
       78 GETIMPORT                        R15 K4 [require]
       80 GETTABLEKS                       R16 R14 K24 ["PublishFrame"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R17 R14 K25 ["ExampleRoactRoduxComponent"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
       90 LOADK                            R19 K27 ["MainPlugin"]
       91 NAMECALL                         R17 R17 K28 ["extend"]
       93 CALL                             R17 2 1
       94 DUPCLOSURE                       R18 K29 [PROTO_7]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R13
      100 SETTABLEKS                       R18 R17 K30 ["init"]
      102 DUPCLOSURE                       R18 K31 [PROTO_8]
      103 SETTABLEKS                       R18 R17 K32 ["didUpdate"]
      105 DUPCLOSURE                       R18 K33 [PROTO_9]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R18 R17 K34 ["render"]
      117 RETURN                           R17 1
