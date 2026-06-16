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
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 LOADB                            R2 0
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K2 ["PluginLoaderContext"]
        9 JUMPIFNOT                        R3 ; [+12]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["PluginLoaderContext"]
       14 GETTABLEKS                       R3 R3 K3 ["mainDockWidget"]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+3]
       19 GETTABLEKS                       R4 R3 K4 ["Enabled"]
       21 MOVE                             R2 R4
       22 DUPTABLE                         R3 K6 [{"enabled"}]
       23 SETTABLEKS                       R2 R3 K5 ["enabled"]
       25 SETTABLEKS                       R3 R0 K7 ["state"]
       27 GETTABLEKS                       R3 R0 K0 ["props"]
       29 GETTABLEKS                       R3 R3 K8 ["localization"]
       31 SETTABLEKS                       R3 R0 K8 ["localization"]
       33 GETTABLEKS                       R3 R0 K0 ["props"]
       35 GETTABLEKS                       R3 R3 K9 ["theme"]
       37 SETTABLEKS                       R3 R0 K9 ["theme"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K10 ["Plugin"]
       42 GETTABLEKS                       R3 R3 K11 ["new"]
       44 GETTABLEKS                       R4 R0 K0 ["props"]
       46 GETTABLEKS                       R4 R4 K1 ["plugin"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R0 K12 ["pluginContext"]
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K11 ["new"]
       54 GETTABLEKS                       R4 R0 K0 ["props"]
       56 GETTABLEKS                       R4 R4 K13 ["api"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R0 K14 ["apiContext"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K15 ["Store"]
       64 GETTABLEKS                       R3 R3 K11 ["new"]
       66 GETTABLEKS                       R4 R0 K0 ["props"]
       68 GETTABLEKS                       R4 R4 K16 ["store"]
       70 CALL                             R3 1 1
       71 SETTABLEKS                       R3 R0 K17 ["storeContext"]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K18 ["Mouse"]
       76 GETTABLEKS                       R3 R3 K11 ["new"]
       78 GETTABLEKS                       R4 R0 K0 ["props"]
       80 GETTABLEKS                       R4 R4 K1 ["plugin"]
       82 NAMECALL                         R4 R4 K19 ["GetMouse"]
       84 CALL                             R4 1 -1
       85 CALL                             R3 -1 1
       86 SETTABLEKS                       R3 R0 K20 ["mouseContext"]
       88 NEWCLOSURE                       R3 P0
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R3 R0 K21 ["toggleState"]
       92 NEWCLOSURE                       R3 P1
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R3 R0 K22 ["onClose"]
       96 NEWCLOSURE                       R3 P2
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R3 R0 K23 ["onWidgetEnabledChanged"]
      100 NEWCLOSURE                       R3 P3
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R3 R0 K24 ["onDockWidgetCreated"]
      104 RETURN                           R0 0

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
       48 LOADN                            R10 88
       49 LOADN                            R11 48
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K24 ["Size"]
       53 GETIMPORT                        R9 K23 [Vector2.new]
       55 LOADN                            R10 88
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
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Navigation"]
       24 GETTABLEKS                       R3 R3 K10 ["NavigationContainer"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K12 ["ContextServices"]
       42 GETTABLEKS                       R6 R6 K13 ["PluginAPI2"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R3 K14 ["UI"]
       47 GETTABLEKS                       R7 R6 K15 ["DockWidget"]
       49 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       51 LOADK                            R10 K17 ["ManagementApp"]
       52 NAMECALL                         R8 R8 K18 ["extend"]
       54 CALL                             R8 2 1
       55 DUPCLOSURE                       R9 K19 [PROTO_4]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K20 ["init"]
       60 DUPCLOSURE                       R9 K21 [PROTO_5]
       61 SETTABLEKS                       R9 R8 K22 ["didUpdate"]
       63 DUPCLOSURE                       R9 K23 [PROTO_6]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R9 R8 K24 ["render"]
       70 RETURN                           R8 1
