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
       23 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       25 NAMECALL                         R0 R0 K8 ["Connect"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R1 K0 ["PluginLoaderContext"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R1 K0 ["PluginLoaderContext"]
        6 GETTABLEKS                       R3 R3 K1 ["mainDockWidget"]
        8 LOADB                            R4 0
        9 JUMPIFEQKNIL                     R3 ; [+3]
       11 GETTABLEKS                       R4 R3 K2 ["Enabled"]
       13 MOVE                             R2 R4
       14 DUPTABLE                         R3 K4 [{"enabled"}]
       15 SETTABLEKS                       R2 R3 K3 ["enabled"]
       17 SETTABLEKS                       R3 R0 K5 ["state"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R0 K6 ["toggleEnabled"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R0 K7 ["onClose"]
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R3 R0 K8 ["onRestore"]
       31 NEWCLOSURE                       R3 P3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R0 K9 ["onWidgetEnabledChanged"]
       35 NEWCLOSURE                       R3 P4
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R3 R0 K10 ["onDockWidgetCreated"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K11 ["Analytics"]
       42 GETTABLEKS                       R3 R3 K12 ["new"]
       44 DUPCLOSURE                       R4 K13 [PROTO_6]
       45 NEWTABLE                         R5 0 0
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R0 K14 ["analytics"]
       50 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 DUPTABLE                         R6 K7 [{"Plugin", "Mouse", "Analytics"}]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K8 ["new"]
       15 MOVE                             R8 R3
       16 CALL                             R7 1 1
       17 SETTABLEKS                       R7 R6 K2 ["Plugin"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K8 ["new"]
       22 NAMECALL                         R8 R3 K9 ["getMouse"]
       24 CALL                             R8 1 -1
       25 CALL                             R7 -1 1
       26 SETTABLEKS                       R7 R6 K5 ["Mouse"]
       28 GETTABLEKS                       R7 R0 K10 ["analytics"]
       30 SETTABLEKS                       R7 R6 K6 ["Analytics"]
       32 DUPTABLE                         R7 K12 [{"MainWidget"}]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K13 ["createElement"]
       36 GETUPVAL                         R9 4
       37 NEWTABLE                         R10 16 0
       39 LOADK                            R11 K14 ["PropertiesPlugin"]
       40 SETTABLEKS                       R11 R10 K15 ["Id"]
       42 SETTABLEKS                       R4 R10 K16 ["Enabled"]
       44 GETUPVAL                         R11 5
       45 LOADK                            R13 K2 ["Plugin"]
       46 LOADK                            R14 K17 ["Title"]
       47 NAMECALL                         R11 R11 K18 ["getText"]
       49 CALL                             R11 3 1
       50 SETTABLEKS                       R11 R10 K17 ["Title"]
       52 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       54 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       56 GETIMPORT                        R11 K25 [Enum.InitialDockState.Right]
       58 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       60 GETIMPORT                        R11 K27 [Vector2.new]
       62 LOADN                            R12 640
       63 LOADN                            R13 480
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K28 ["Size"]
       67 GETIMPORT                        R11 K27 [Vector2.new]
       69 LOADN                            R12 250
       70 LOADN                            R13 200
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       74 GETTABLEKS                       R11 R0 K30 ["onClose"]
       76 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       78 GETTABLEKS                       R11 R1 K32 ["PluginLoaderContext"]
       80 GETTABLEKS                       R11 R11 K33 ["mainDockWidget"]
       82 SETTABLEKS                       R11 R10 K34 ["Widget"]
       84 GETTABLEKS                       R11 R0 K35 ["onDockWidgetCreated"]
       86 SETTABLEKS                       R11 R10 K36 ["OnWidgetCreated"]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K37 ["Change"]
       91 GETTABLEKS                       R11 R11 K16 ["Enabled"]
       93 GETTABLEKS                       R12 R0 K38 ["onWidgetEnabledChanged"]
       95 SETTABLE                         R12 R10 R11
       96 DUPTABLE                         R11 K40 [{"App"}]
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R12 R12 K13 ["createElement"]
      100 GETUPVAL                         R13 6
      101 DUPTABLE                         R14 K43 [{"plugin", "dockWidget"}]
      102 SETTABLEKS                       R3 R14 K41 ["plugin"]
      104 GETTABLEKS                       R15 R1 K32 ["PluginLoaderContext"]
      106 GETTABLEKS                       R15 R15 K33 ["mainDockWidget"]
      108 SETTABLEKS                       R15 R14 K42 ["dockWidget"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K39 ["App"]
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      116 CALL                             R5 2 -1
      117 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Localization"]
       29 GETTABLEKS                       R4 R4 K12 ["Translator"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["UI"]
       41 GETTABLEKS                       R5 R5 K15 ["DockWidget"]
       43 GETTABLEKS                       R6 R1 K16 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K17 ["Plugin"]
       47 GETTABLEKS                       R8 R6 K18 ["Mouse"]
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K9 ["Src"]
       53 GETTABLEKS                       R10 R10 K19 ["Components"]
       55 GETTABLEKS                       R10 R10 K20 ["App"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R2 K21 ["PureComponent"]
       60 LOADK                            R12 K22 ["MainPlugin"]
       61 NAMECALL                         R10 R10 K23 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K24 [PROTO_7]
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R11 R10 K25 ["init"]
       68 DUPCLOSURE                       R11 K26 [PROTO_8]
       69 SETTABLEKS                       R11 R10 K27 ["didUpdate"]
       71 DUPCLOSURE                       R11 K28 [PROTO_9]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R11 R10 K29 ["render"]
       81 RETURN                           R10 1
