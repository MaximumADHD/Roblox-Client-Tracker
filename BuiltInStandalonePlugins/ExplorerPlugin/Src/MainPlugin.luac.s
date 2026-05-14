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
       40 GETTABLEKS                       R3 R3 K11 ["new"]
       42 GETTABLEKS                       R4 R1 K12 ["Plugin"]
       44 NAMECALL                         R4 R4 K13 ["getMouse"]
       46 CALL                             R4 1 -1
       47 CALL                             R3 -1 1
       48 SETTABLEKS                       R3 R0 K14 ["mouse"]
       50 GETTABLEKS                       R3 R0 K14 ["mouse"]
       52 LOADK                            R5 K15 ["Arrow"]
       53 LOADN                            R6 0
       54 NAMECALL                         R3 R3 K16 ["__pushCursor"]
       56 CALL                             R3 3 0
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K17 ["Localization"]
       60 GETTABLEKS                       R3 R3 K11 ["new"]
       62 DUPTABLE                         R4 K21 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       63 GETUPVAL                         R5 2
       64 SETTABLEKS                       R5 R4 K18 ["stringResourceTable"]
       66 GETUPVAL                         R5 3
       67 SETTABLEKS                       R5 R4 K19 ["translationResourceTable"]
       69 LOADK                            R5 K22 ["ExplorerPlugin"]
       70 SETTABLEKS                       R5 R4 K20 ["pluginName"]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R0 K23 ["localization"]
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K24 ["Analytics"]
       78 GETTABLEKS                       R3 R3 K11 ["new"]
       80 DUPCLOSURE                       R4 K25 [PROTO_6]
       81 NEWTABLE                         R5 0 0
       83 CALL                             R3 2 1
       84 SETTABLEKS                       R3 R0 K26 ["analytics"]
       86 GETUPVAL                         R3 4
       87 GETTABLEKS                       R3 R3 K11 ["new"]
       89 CALL                             R3 0 1
       90 SETTABLEKS                       R3 R0 K27 ["DEPRECATED_stylizer"]
       92 GETUPVAL                         R3 5
       93 GETTABLEKS                       R4 R1 K12 ["Plugin"]
       95 CALL                             R3 1 1
       96 SETTABLEKS                       R3 R0 K28 ["design"]
       98 RETURN                           R0 0

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
        8 GETTABLEKS                       R7 R1 K4 ["PluginLoaderContext"]
       10 GETTABLEKS                       R7 R7 K5 ["mainDockWidget"]
       12 JUMPIFNOTEQKNIL                  R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       18 LOADK                            R7 K6 ["Couldn't get main dock widget"]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K9 ["provide"]
       25 NEWTABLE                         R6 0 5
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K10 ["new"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K10 ["new"]
       35 GETTABLEKS                       R9 R0 K11 ["design"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R0 K12 ["mouse"]
       40 GETTABLEKS                       R10 R0 K13 ["localization"]
       42 GETTABLEKS                       R11 R0 K14 ["analytics"]
       44 SETLIST                          R6 R7 5 [1]
       46 DUPTABLE                         R7 K16 [{"MainWidget"}]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K17 ["createElement"]
       50 GETUPVAL                         R9 4
       51 NEWTABLE                         R10 16 0
       53 LOADK                            R11 K18 ["ExplorerPlugin"]
       54 SETTABLEKS                       R11 R10 K19 ["Id"]
       56 SETTABLEKS                       R4 R10 K20 ["Enabled"]
       58 GETTABLEKS                       R11 R0 K13 ["localization"]
       60 LOADK                            R13 K2 ["Plugin"]
       61 LOADK                            R14 K21 ["Title"]
       62 NAMECALL                         R11 R11 K22 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K21 ["Title"]
       67 GETIMPORT                        R11 K26 [Enum.ZIndexBehavior.Sibling]
       69 SETTABLEKS                       R11 R10 K24 ["ZIndexBehavior"]
       71 GETIMPORT                        R11 K29 [Enum.InitialDockState.Right]
       73 SETTABLEKS                       R11 R10 K27 ["InitialDockState"]
       75 GETIMPORT                        R11 K31 [Vector2.new]
       77 LOADN                            R12 128
       78 LOADN                            R13 224
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K32 ["Size"]
       82 GETIMPORT                        R11 K31 [Vector2.new]
       84 LOADN                            R12 250
       85 LOADN                            R13 200
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K33 ["MinSize"]
       89 GETTABLEKS                       R11 R0 K34 ["onClose"]
       91 SETTABLEKS                       R11 R10 K35 ["OnClose"]
       93 GETTABLEKS                       R11 R1 K4 ["PluginLoaderContext"]
       95 GETTABLEKS                       R11 R11 K5 ["mainDockWidget"]
       97 SETTABLEKS                       R11 R10 K36 ["Widget"]
       99 GETTABLEKS                       R11 R0 K37 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R11 R10 K38 ["OnWidgetCreated"]
      103 GETUPVAL                         R11 3
      104 GETTABLEKS                       R11 R11 K39 ["Change"]
      106 GETTABLEKS                       R11 R11 K20 ["Enabled"]
      108 GETTABLEKS                       R12 R0 K40 ["onWidgetEnabledChanged"]
      110 SETTABLE                         R12 R10 R11
      111 DUPTABLE                         R11 K43 [{"App", "StyleLink"}]
      112 GETUPVAL                         R12 3
      113 GETTABLEKS                       R12 R12 K17 ["createElement"]
      115 GETUPVAL                         R13 5
      116 DUPTABLE                         R14 K45 [{"dockWidget"}]
      117 GETTABLEKS                       R15 R1 K4 ["PluginLoaderContext"]
      119 GETTABLEKS                       R15 R15 K5 ["mainDockWidget"]
      121 SETTABLEKS                       R15 R14 K44 ["dockWidget"]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K41 ["App"]
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R12 R12 K17 ["createElement"]
      129 LOADK                            R13 K42 ["StyleLink"]
      130 DUPTABLE                         R14 K47 [{"StyleSheet"}]
      131 GETTABLEKS                       R15 R0 K11 ["design"]
      133 SETTABLEKS                       R15 R14 K46 ["StyleSheet"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K42 ["StyleLink"]
      138 CALL                             R8 3 1
      139 SETTABLEKS                       R8 R7 K15 ["MainWidget"]
      141 CALL                             R5 2 -1
      142 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
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
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["DockWidget"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Design"]
       29 GETTABLEKS                       R6 R4 K13 ["Plugin"]
       31 GETTABLEKS                       R7 R4 K14 ["Mouse"]
       33 GETTABLEKS                       R8 R1 K15 ["Style"]
       35 GETTABLEKS                       R8 R8 K16 ["Themes"]
       37 GETTABLEKS                       R8 R8 K17 ["StudioTheme"]
       39 GETTABLEKS                       R9 R1 K18 ["Styling"]
       41 GETTABLEKS                       R9 R9 K19 ["registerPluginStyles"]
       43 GETTABLEKS                       R10 R0 K20 ["Src"]
       45 GETTABLEKS                       R10 R10 K21 ["Resources"]
       47 GETTABLEKS                       R10 R10 K22 ["Localization"]
       49 GETTABLEKS                       R10 R10 K23 ["SourceStrings"]
       51 GETTABLEKS                       R11 R0 K20 ["Src"]
       53 GETTABLEKS                       R11 R11 K21 ["Resources"]
       55 GETTABLEKS                       R11 R11 K22 ["Localization"]
       57 GETTABLEKS                       R11 R11 K24 ["LocalizedStrings"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R0 K20 ["Src"]
       63 GETTABLEKS                       R13 R13 K25 ["Host"]
       65 GETTABLEKS                       R13 R13 K26 ["App"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R2 K27 ["PureComponent"]
       70 LOADK                            R15 K28 ["MainPlugin"]
       71 NAMECALL                         R13 R13 K29 ["extend"]
       73 CALL                             R13 2 1
       74 DUPCLOSURE                       R14 K30 [PROTO_7]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 SETTABLEKS                       R14 R13 K31 ["init"]
       83 DUPCLOSURE                       R14 K32 [PROTO_8]
       84 SETTABLEKS                       R14 R13 K33 ["didUpdate"]
       86 DUPCLOSURE                       R14 K34 [PROTO_9]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R12
       93 SETTABLEKS                       R14 R13 K35 ["render"]
       95 RETURN                           R13 1
