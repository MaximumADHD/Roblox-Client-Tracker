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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFEQ                         R0 R1 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+7]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        7 GETTABLEN                        R0 R1 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       12 NAMECALL                         R2 R0 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       17 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        7 GETTABLEKS                       R2 R1 K5 ["Plugin"]
        9 LOADK                            R4 K6 ["Actions"]
       10 NAMECALL                         R2 R2 K7 ["GetPluginComponent"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K10 [task.spawn]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U0
       19 CALL                             R3 1 0
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R3 R0 K11 ["onClose"]
       26 NEWCLOSURE                       R3 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R3 R0 K12 ["onRestore"]
       32 NEWCLOSURE                       R3 P4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R3 R0 K13 ["onWidgetEnabledChanged"]
       38 NEWCLOSURE                       R3 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R3 R0 K14 ["onDockWidgetCreated"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K15 ["Localization"]
       45 GETTABLEKS                       R3 R3 K16 ["new"]
       47 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MultitouchEmulator"}]
       48 GETUPVAL                         R5 2
       49 SETTABLEKS                       R5 R4 K17 ["stringResourceTable"]
       51 GETUPVAL                         R5 3
       52 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R0 K22 ["localizationLEGACY"]
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K15 ["Localization"]
       60 GETTABLEKS                       R3 R3 K16 ["new"]
       62 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MultitouchEmulator"}]
       63 GETUPVAL                         R5 2
       64 SETTABLEKS                       R5 R4 K17 ["stringResourceTable"]
       66 GETUPVAL                         R5 3
       67 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       69 CALL                             R3 1 1
       70 SETTABLEKS                       R3 R0 K23 ["localization"]
       72 GETUPVAL                         R3 1
       73 GETTABLEKS                       R3 R3 K24 ["Analytics"]
       75 GETTABLEKS                       R3 R3 K16 ["new"]
       77 DUPCLOSURE                       R4 K25 [PROTO_11]
       78 NEWTABLE                         R5 0 0
       80 CALL                             R3 2 1
       81 SETTABLEKS                       R3 R0 K26 ["analytics"]
       83 GETUPVAL                         R3 5
       84 GETTABLEKS                       R3 R3 K16 ["new"]
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R0 K27 ["DEPRECATED_stylizer"]
       89 GETUPVAL                         R3 6
       90 GETTABLEKS                       R3 R3 K28 ["Util"]
       92 GETTABLEKS                       R3 R3 K29 ["createFoundationDesignBinding"]
       94 CALL                             R3 0 2
       95 SETTABLEKS                       R4 R0 K30 ["onFoundationStyleSheetChange"]
       97 GETUPVAL                         R5 7
       98 GETTABLEKS                       R6 R1 K5 ["Plugin"]
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 NEWTABLE                         R9 0 1
      104 MOVE                             R10 R3
      105 SETLIST                          R9 R10 1 [1]
      107 CALL                             R5 4 1
      108 SETTABLEKS                       R5 R0 K31 ["design"]
      110 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 4
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
       28 GETTABLEKS                       R10 R0 K7 ["design"]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R0 K8 ["localizationLEGACY"]
       33 SETLIST                          R6 R7 4 [1]
       35 DUPTABLE                         R7 K10 [{"MainWidget"}]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K11 ["createElement"]
       39 GETUPVAL                         R9 5
       40 NEWTABLE                         R10 16 0
       42 LOADK                            R11 K12 ["MultitouchEmulator"]
       43 SETTABLEKS                       R11 R10 K13 ["Id"]
       45 SETTABLEKS                       R4 R10 K14 ["Enabled"]
       47 GETTABLEKS                       R11 R0 K15 ["localization"]
       49 LOADK                            R13 K2 ["Plugin"]
       50 LOADK                            R14 K16 ["Name"]
       51 NAMECALL                         R11 R11 K17 ["getText"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K18 ["Title"]
       56 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       58 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       60 GETIMPORT                        R11 K25 [Enum.InitialDockState.Bottom]
       62 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       64 GETIMPORT                        R11 K27 [Vector2.new]
       66 LOADN                            R12 640
       67 LOADN                            R13 480
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K28 ["Size"]
       71 GETIMPORT                        R11 K27 [Vector2.new]
       73 LOADN                            R12 250
       74 LOADN                            R13 200
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       78 GETTABLEKS                       R11 R0 K30 ["onClose"]
       80 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       82 LOADB                            R11 1
       83 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
       85 GETTABLEKS                       R11 R0 K33 ["onRestore"]
       87 SETTABLEKS                       R11 R10 K34 ["OnWidgetRestored"]
       89 GETTABLEKS                       R11 R1 K35 ["PluginLoaderContext"]
       91 GETTABLEKS                       R11 R11 K36 ["mainDockWidget"]
       93 SETTABLEKS                       R11 R10 K37 ["Widget"]
       95 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
       97 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
       99 GETTABLEKS                       R11 R0 K7 ["design"]
      101 SETTABLEKS                       R11 R10 K40 ["PluginDesign"]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R11 R11 K41 ["Change"]
      106 GETTABLEKS                       R11 R11 K14 ["Enabled"]
      108 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      110 SETTABLE                         R12 R10 R11
      111 NEWTABLE                         R11 0 0
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      116 CALL                             R5 2 -1
      117 RETURN                           R5 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MultitouchEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETTABLEKS                       R5 R2 K12 ["UI"]
       34 GETTABLEKS                       R5 R5 K13 ["DockWidget"]
       36 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       40 GETTABLEKS                       R8 R6 K16 ["Mouse"]
       42 GETTABLEKS                       R9 R6 K17 ["Design"]
       44 GETTABLEKS                       R10 R2 K18 ["Style"]
       46 GETTABLEKS                       R10 R10 K19 ["Themes"]
       48 GETTABLEKS                       R10 R10 K20 ["StudioTheme"]
       50 GETTABLEKS                       R11 R3 K21 ["Util"]
       52 GETTABLEKS                       R11 R11 K22 ["StudioUri"]
       54 GETTABLEKS                       R12 R2 K23 ["Styling"]
       56 GETTABLEKS                       R12 R12 K24 ["registerPluginStyles"]
       58 GETTABLEKS                       R13 R0 K25 ["Src"]
       60 GETTABLEKS                       R13 R13 K26 ["Resources"]
       62 GETTABLEKS                       R13 R13 K11 ["Localization"]
       64 GETTABLEKS                       R13 R13 K27 ["SourceStrings"]
       66 GETTABLEKS                       R14 R0 K25 ["Src"]
       68 GETTABLEKS                       R14 R14 K26 ["Resources"]
       70 GETTABLEKS                       R14 R14 K11 ["Localization"]
       72 GETTABLEKS                       R14 R14 K28 ["LocalizedStrings"]
       74 GETTABLEKS                       R15 R1 K29 ["PureComponent"]
       76 LOADK                            R17 K30 ["MainPlugin"]
       77 NAMECALL                         R15 R15 K31 ["extend"]
       79 CALL                             R15 2 1
       80 GETTABLEKS                       R16 R11 K32 ["fromAction"]
       82 LOADK                            R17 K2 ["MultitouchEmulator"]
       83 LOADK                            R18 K33 ["Toggle"]
       84 CALL                             R16 2 1
       85 DUPCLOSURE                       R17 K34 [PROTO_12]
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R12
       94 SETTABLEKS                       R17 R15 K35 ["init"]
       96 DUPCLOSURE                       R17 K36 [PROTO_13]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R17 R15 K37 ["render"]
      105 DUPCLOSURE                       R17 K38 [PROTO_14]
      106 SETTABLEKS                       R17 R15 K39 ["willUnmount"]
      108 RETURN                           R15 1
