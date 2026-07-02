PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["enabled"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["enabled"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
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
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButton"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["enabled"]
       12 NAMECALL                         R0 R0 K5 ["SetActive"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["props"]
       18 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       20 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["toggleState"]
       25 NAMECALL                         R0 R0 K8 ["Connect"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R2 ; [+12]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K1 ["PluginLoaderContext"]
       10 GETTABLEKS                       R2 R2 K2 ["mainDockWidget"]
       12 LOADB                            R3 0
       13 JUMPIFEQKNIL                     R2 ; [+3]
       15 GETTABLEKS                       R3 R2 K3 ["Enabled"]
       17 MOVE                             R1 R3
       18 DUPTABLE                         R2 K5 [{"enabled"}]
       19 SETTABLEKS                       R1 R2 K4 ["enabled"]
       21 SETTABLEKS                       R2 R0 K6 ["state"]
       23 GETTABLEKS                       R2 R0 K0 ["props"]
       25 GETTABLEKS                       R2 R2 K7 ["localization"]
       27 SETTABLEKS                       R2 R0 K7 ["localization"]
       29 GETTABLEKS                       R2 R0 K0 ["props"]
       31 GETTABLEKS                       R2 R2 K8 ["theme"]
       33 SETTABLEKS                       R2 R0 K8 ["theme"]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K9 ["Plugin"]
       38 GETTABLEKS                       R2 R2 K10 ["new"]
       40 GETTABLEKS                       R3 R0 K0 ["props"]
       42 GETTABLEKS                       R3 R3 K11 ["plugin"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R0 K12 ["pluginContext"]
       47 GETUPVAL                         R3 1
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+5]
       50 GETTABLEKS                       R2 R0 K0 ["props"]
       52 GETTABLEKS                       R2 R2 K13 ["api"]
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K10 ["new"]
       58 GETTABLEKS                       R3 R0 K0 ["props"]
       60 GETTABLEKS                       R3 R3 K13 ["api"]
       62 CALL                             R2 1 1
       63 SETTABLEKS                       R2 R0 K14 ["apiContext"]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K15 ["Store"]
       68 GETTABLEKS                       R2 R2 K10 ["new"]
       70 GETTABLEKS                       R3 R0 K0 ["props"]
       72 GETTABLEKS                       R3 R3 K16 ["store"]
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R0 K17 ["storeContext"]
       77 GETUPVAL                         R2 0
       78 GETTABLEKS                       R2 R2 K18 ["Mouse"]
       80 GETTABLEKS                       R2 R2 K10 ["new"]
       82 GETTABLEKS                       R3 R0 K0 ["props"]
       84 GETTABLEKS                       R3 R3 K11 ["plugin"]
       86 NAMECALL                         R3 R3 K19 ["GetMouse"]
       88 CALL                             R3 1 -1
       89 CALL                             R2 -1 1
       90 SETTABLEKS                       R2 R0 K20 ["mouseContext"]
       92 NEWCLOSURE                       R2 P0
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K21 ["toggleState"]
       96 NEWCLOSURE                       R2 P1
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R2 R0 K22 ["onClose"]
      100 NEWCLOSURE                       R2 P2
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R2 R0 K23 ["onWidgetEnabledChanged"]
      104 NEWCLOSURE                       R2 P3
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R2 R0 K24 ["onDockWidgetCreated"]
      108 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["enabled"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["provide"]
        9 NEWTABLE                         R4 0 3
       11 GETTABLEKS                       R5 R0 K4 ["pluginContext"]
       13 GETTABLEKS                       R6 R0 K5 ["apiContext"]
       15 GETTABLEKS                       R7 R1 K6 ["pluginManagementApi"]
       17 SETLIST                          R4 R5 3 [1]
       19 DUPTABLE                         R5 K8 [{"MainWidget"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K9 ["createElement"]
       23 GETUPVAL                         R7 2
       24 NEWTABLE                         R8 16 0
       26 LOADK                            R9 K10 ["PluginManagement"]
       27 SETTABLEKS                       R9 R8 K11 ["Id"]
       29 GETTABLEKS                       R9 R0 K12 ["localization"]
       31 LOADK                            R11 K13 ["Manage"]
       32 LOADK                            R12 K14 ["WindowTitle"]
       33 NAMECALL                         R9 R9 K15 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K16 ["Title"]
       38 SETTABLEKS                       R2 R8 K17 ["Enabled"]
       40 GETTABLEKS                       R9 R1 K18 ["PluginLoaderContext"]
       42 GETTABLEKS                       R9 R9 K19 ["mainDockWidget"]
       44 SETTABLEKS                       R9 R8 K20 ["Widget"]
       46 GETIMPORT                        R9 K23 [Vector2.new]
       48 LOADN                            R10 600
       49 LOADN                            R11 560
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K24 ["Size"]
       53 GETIMPORT                        R9 K23 [Vector2.new]
       55 LOADN                            R10 600
       56 LOADN                            R11 180
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K25 ["MinSize"]
       60 GETIMPORT                        R9 K29 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R9 R8 K27 ["ZIndexBehavior"]
       64 GETIMPORT                        R9 K32 [Enum.InitialDockState.Float]
       66 SETTABLEKS                       R9 R8 K30 ["InitialDockState"]
       68 LOADB                            R9 0
       69 SETTABLEKS                       R9 R8 K33 ["ShouldRestore"]
       71 GETTABLEKS                       R9 R0 K34 ["onDockWidgetCreated"]
       73 SETTABLEKS                       R9 R8 K35 ["OnWidgetCreated"]
       75 GETTABLEKS                       R9 R0 K36 ["onClose"]
       77 SETTABLEKS                       R9 R8 K37 ["OnClose"]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K38 ["Change"]
       82 GETTABLEKS                       R9 R9 K17 ["Enabled"]
       84 GETTABLEKS                       R10 R0 K39 ["onWidgetEnabledChanged"]
       86 SETTABLE                         R10 R8 R9
       87 DUPTABLE                         R9 K41 [{"MainProvider"}]
       88 MOVE                             R10 R2
       89 JUMPIFNOT                        R10 ; [+26]
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R10 R10 K3 ["provide"]
       93 NEWTABLE                         R11 0 5
       95 GETTABLEKS                       R12 R0 K12 ["localization"]
       97 GETTABLEKS                       R13 R0 K42 ["theme"]
       99 GETTABLEKS                       R14 R0 K43 ["storeContext"]
      101 GETTABLEKS                       R15 R0 K44 ["mouseContext"]
      103 GETTABLEKS                       R16 R1 K45 ["analytics"]
      105 SETLIST                          R11 R12 5 [1]
      107 DUPTABLE                         R12 K47 [{"MainView"}]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K9 ["createElement"]
      111 GETUPVAL                         R14 3
      112 CALL                             R13 1 1
      113 SETTABLEKS                       R13 R12 K46 ["MainView"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K40 ["MainProvider"]
      118 CALL                             R6 3 1
      119 SETTABLEKS                       R6 R5 K7 ["MainWidget"]
      121 CALL                             R3 2 -1
      122 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["Navigation"]
       33 GETTABLEKS                       R4 R4 K12 ["NavigationContainer"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Packages"]
       40 GETTABLEKS                       R5 R5 K13 ["Framework"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K5 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["ContextServices"]
       51 GETTABLEKS                       R7 R7 K15 ["PluginAPI2"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R4 K16 ["UI"]
       56 GETTABLEKS                       R8 R7 K17 ["DockWidget"]
       58 GETTABLEKS                       R9 R2 K18 ["PureComponent"]
       60 LOADK                            R11 K19 ["ManagementApp"]
       61 NAMECALL                         R9 R9 K20 ["extend"]
       63 CALL                             R9 2 1
       64 DUPCLOSURE                       R10 K21 [PROTO_4]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R10 R9 K22 ["init"]
       70 DUPCLOSURE                       R10 K23 [PROTO_5]
       71 SETTABLEKS                       R10 R9 K24 ["didUpdate"]
       73 DUPCLOSURE                       R10 K25 [PROTO_6]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R10 R9 K26 ["render"]
       80 RETURN                           R9 1
