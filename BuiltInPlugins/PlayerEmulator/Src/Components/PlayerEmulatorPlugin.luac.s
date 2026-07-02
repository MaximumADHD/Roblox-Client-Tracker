PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["active"]
        4 GETTABLEKS                       R2 R0 K2 ["button"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R2 R0 K2 ["button"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["SetActive"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["PLUGIN_WIDGET_STATE"]
        7 NAMECALL                         R2 R1 K3 ["GetSetting"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R3 R0 K4 ["state"]
       12 GETTABLEKS                       R3 R3 K5 ["active"]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 DUPTABLE                         R5 K6 [{"active"}]
       17 SETTABLEKS                       R2 R5 K5 ["active"]
       19 NAMECALL                         R3 R0 K7 ["setState"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["plugin"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["active"]
       10 NOT                              R1 R2
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R4 K4 [{"active"}]
       13 SETTABLEKS                       R1 R4 K3 ["active"]
       15 NAMECALL                         R2 R2 K5 ["setState"]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K6 ["PLUGIN_WIDGET_STATE"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R0 K7 ["SetSetting"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["plugin"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K6 ["PLUGIN_WIDGET_STATE"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R0 K7 ["SetSetting"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"active"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["active"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R2 ; [+12]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["props"]
        4 GETTABLEKS                       R3 R3 K1 ["onPluginWillDestroy"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K1 ["onPluginWillDestroy"]
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWTABLE                         R1 0 6
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K4 ["Plugin"]
        8 GETTABLEKS                       R2 R2 K5 ["new"]
       10 GETTABLEKS                       R3 R0 K6 ["props"]
       12 GETTABLEKS                       R3 R3 K7 ["plugin"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K8 ["localization"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K9 ["theme"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K10 ["networking"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K11 ["store"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K12 ["Mouse"]
       30 GETTABLEKS                       R7 R7 K5 ["new"]
       32 GETTABLEKS                       R8 R0 K6 ["props"]
       34 GETTABLEKS                       R8 R8 K7 ["plugin"]
       36 NAMECALL                         R8 R8 K13 ["GetMouse"]
       38 CALL                             R8 1 -1
       39 CALL                             R7 -1 -1
       40 SETLIST                          R1 R2 -1 [1]
       42 SETTABLEKS                       R1 R0 K14 ["contextItems"]
       44 NEWCLOSURE                       R1 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R1 R0 K15 ["toggleActive"]
       49 NEWCLOSURE                       R1 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R1 R0 K16 ["onClose"]
       54 NEWCLOSURE                       R1 P2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K17 ["onWidgetEnabledChanged"]
       58 NEWCLOSURE                       R1 P3
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K18 ["onAncestryChanged"]
       62 GETTABLEKS                       R1 R0 K6 ["props"]
       64 GETTABLEKS                       R1 R1 K19 ["pluginLoaderContext"]
       66 GETTABLEKS                       R1 R1 K20 ["mainButton"]
       68 SETTABLEKS                       R1 R0 K21 ["button"]
       70 GETTABLEKS                       R1 R0 K6 ["props"]
       72 GETTABLEKS                       R1 R1 K19 ["pluginLoaderContext"]
       74 GETTABLEKS                       R1 R1 K22 ["mainButtonClickedSignal"]
       76 GETTABLEKS                       R3 R0 K15 ["toggleActive"]
       78 NAMECALL                         R1 R1 K23 ["Connect"]
       80 CALL                             R1 2 0
       81 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["initPluginWidgetStatus"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["updateToolbarButtonActiveState"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["updateToolbarButtonActiveState"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["active"]
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K2 ["IsEdit"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["provide"]
       11 GETTABLEKS                       R5 R0 K4 ["contextItems"]
       13 DUPTABLE                         R6 K6 [{"MainWidget"}]
       14 MOVE                             R7 R3
       15 JUMPIFNOT                        R7 ; [+61]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K7 ["createElement"]
       19 GETUPVAL                         R8 3
       20 NEWTABLE                         R9 16 0
       22 LOADK                            R10 K8 ["PlayerEmulator"]
       23 SETTABLEKS                       R10 R9 K9 ["Id"]
       25 SETTABLEKS                       R2 R9 K10 ["Enabled"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K11 ["localization"]
       30 LOADK                            R12 K12 ["Meta"]
       31 LOADK                            R13 K13 ["PluginTitle"]
       32 NAMECALL                         R10 R10 K14 ["getText"]
       34 CALL                             R10 3 1
       35 SETTABLEKS                       R10 R9 K15 ["Title"]
       37 GETIMPORT                        R10 K19 [Enum.ZIndexBehavior.Sibling]
       39 SETTABLEKS                       R10 R9 K17 ["ZIndexBehavior"]
       41 GETIMPORT                        R10 K22 [Enum.InitialDockState.Left]
       43 SETTABLEKS                       R10 R9 K20 ["InitialDockState"]
       45 GETUPVAL                         R10 5
       46 SETTABLEKS                       R10 R9 K23 ["Size"]
       48 GETUPVAL                         R10 5
       49 SETTABLEKS                       R10 R9 K24 ["MinSize"]
       51 GETTABLEKS                       R10 R0 K25 ["onClose"]
       53 SETTABLEKS                       R10 R9 K26 ["OnClose"]
       55 LOADB                            R10 0
       56 SETTABLEKS                       R10 R9 K27 ["ShouldRestore"]
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K28 ["Change"]
       61 GETTABLEKS                       R10 R10 K10 ["Enabled"]
       63 GETTABLEKS                       R11 R0 K29 ["onWidgetEnabledChanged"]
       65 SETTABLE                         R11 R9 R10
       66 DUPTABLE                         R10 K31 [{"MainView"}]
       67 MOVE                             R11 R2
       68 JUMPIFNOT                        R11 ; [+5]
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K7 ["createElement"]
       72 GETUPVAL                         R12 6
       73 CALL                             R11 1 1
       74 SETTABLEKS                       R11 R10 K30 ["MainView"]
       76 CALL                             R7 3 1
       77 SETTABLEKS                       R7 R6 K5 ["MainWidget"]
       79 CALL                             R4 2 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R3 K13 ["UI"]
       33 GETTABLEKS                       R6 R5 K14 ["DockWidget"]
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R8 R1 K15 ["Src"]
       39 GETTABLEKS                       R8 R8 K16 ["Components"]
       41 GETTABLEKS                       R8 R8 K17 ["MainView"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R9 R1 K15 ["Src"]
       48 GETTABLEKS                       R9 R9 K18 ["Util"]
       50 GETTABLEKS                       R9 R9 K19 ["CreatePluginGlobals"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R10 R1 K15 ["Src"]
       57 GETTABLEKS                       R10 R10 K18 ["Util"]
       59 GETTABLEKS                       R10 R10 K20 ["Constants"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R2 K21 ["PureComponent"]
       64 LOADK                            R12 K22 ["PlayerEmulatorPlugin"]
       65 NAMECALL                         R10 R10 K23 ["extend"]
       67 CALL                             R10 2 1
       68 GETIMPORT                        R11 K26 [Vector2.new]
       70 LOADN                            R12 320
       71 LOADN                            R13 330
       72 CALL                             R11 2 1
       73 DUPCLOSURE                       R12 K27 [PROTO_0]
       74 SETTABLEKS                       R12 R10 K28 ["updateToolbarButtonActiveState"]
       76 DUPCLOSURE                       R12 K29 [PROTO_1]
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R12 R10 K30 ["initPluginWidgetStatus"]
       80 DUPCLOSURE                       R12 K31 [PROTO_6]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R12 R10 K32 ["init"]
       86 DUPCLOSURE                       R12 K33 [PROTO_7]
       87 SETTABLEKS                       R12 R10 K34 ["didMount"]
       89 DUPCLOSURE                       R12 K35 [PROTO_8]
       90 SETTABLEKS                       R12 R10 K36 ["didUpdate"]
       92 DUPCLOSURE                       R12 K37 [PROTO_9]
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R12 R10 K38 ["render"]
      102 RETURN                           R10 1
