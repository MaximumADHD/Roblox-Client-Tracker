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
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["state"]
        5 GETTABLEKS                       R0 R1 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 DUPTABLE                         R2 K5 [{"enabled"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K1 ["enabled"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["state"]
        5 GETTABLEKS                       R1 R2 K1 ["enabled"]
        7 JUMPIFEQ                         R0 R1 ; [+15]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R3 K5 [{"enabled"}]
       18 SETTABLEKS                       R0 R3 K1 ["enabled"]
       20 NAMECALL                         R1 R1 K6 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["state"]
        7 GETTABLEKS                       R2 R3 K2 ["enabled"]
        9 JUMPIFEQ                         R1 R2 ; [+17]
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K6 [{"enabled"}]
       20 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       22 SETTABLEKS                       R4 R3 K2 ["enabled"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["props"]
        5 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R2 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K0 ["props"]
       23 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R1 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       10 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       12 LOADK                            R4 K5 ["Actions"]
       13 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 JUMPIFNOT                        R3 ; [+7]
       18 GETIMPORT                        R3 K9 [task.spawn]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CALL                             R3 1 0
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R3 R0 K10 ["onClose"]
       32 NEWCLOSURE                       R3 P3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R3 R0 K11 ["onRestore"]
       39 NEWCLOSURE                       R3 P4
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R3 R0 K12 ["onWidgetEnabledChanged"]
       46 NEWCLOSURE                       R3 P5
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R3 R0 K13 ["onDockWidgetCreated"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K14 ["Localization"]
       54 GETTABLEKS                       R3 R4 K15 ["new"]
       56 DUPTABLE                         R4 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       57 GETUPVAL                         R5 3
       58 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       60 GETUPVAL                         R5 4
       61 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       63 LOADK                            R5 K20 ["SuperTemplate"]
       64 SETTABLEKS                       R5 R4 K18 ["pluginName"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R0 K21 ["localizationLEGACY"]
       69 GETUPVAL                         R5 5
       70 GETTABLEKS                       R4 R5 K14 ["Localization"]
       72 GETTABLEKS                       R3 R4 K15 ["new"]
       74 DUPTABLE                         R4 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       75 GETUPVAL                         R5 3
       76 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       78 GETUPVAL                         R5 4
       79 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       81 LOADK                            R5 K20 ["SuperTemplate"]
       82 SETTABLEKS                       R5 R4 K18 ["pluginName"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R0 K22 ["localization"]
       87 GETUPVAL                         R5 2
       88 GETTABLEKS                       R4 R5 K23 ["Analytics"]
       90 GETTABLEKS                       R3 R4 K15 ["new"]
       92 DUPCLOSURE                       R4 K24 [PROTO_11]
       93 NEWTABLE                         R5 0 0
       95 CALL                             R3 2 1
       96 SETTABLEKS                       R3 R0 K25 ["analytics"]
       98 GETUPVAL                         R4 6
       99 GETTABLEKS                       R3 R4 K15 ["new"]
      101 CALL                             R3 0 1
      102 SETTABLEKS                       R3 R0 K26 ["DEPRECATED_stylizer"]
      104 GETUPVAL                         R5 7
      105 GETTABLEKS                       R4 R5 K27 ["Util"]
      107 GETTABLEKS                       R3 R4 K28 ["createFoundationDesignBinding"]
      109 CALL                             R3 0 2
      110 SETTABLEKS                       R4 R0 K29 ["onFoundationStyleSheetChange"]
      112 GETUPVAL                         R5 8
      113 GETTABLEKS                       R6 R1 K4 ["Plugin"]
      115 LOADNIL                          R7
      116 LOADNIL                          R8
      117 NEWTABLE                         R9 0 1
      119 MOVE                             R10 R3
      120 SETLIST                          R9 R10 1 [1]
      122 CALL                             R5 4 1
      123 SETTABLEKS                       R5 R0 K30 ["design"]
      125 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R4 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 4
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K5 ["new"]
       28 GETTABLEKS                       R10 R0 K7 ["design"]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R0 K8 ["localizationLEGACY"]
       33 SETLIST                          R6 R7 4 [1]
       35 DUPTABLE                         R7 K10 [{"MainWidget"}]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R8 R9 K11 ["createElement"]
       39 GETUPVAL                         R9 5
       40 NEWTABLE                         R10 16 0
       42 LOADK                            R11 K12 ["SuperTemplate"]
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
       66 LOADN                            R12 128
       67 LOADN                            R13 224
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
       89 GETTABLEKS                       R12 R1 K35 ["PluginLoaderContext"]
       91 GETTABLEKS                       R11 R12 K36 ["mainDockWidget"]
       93 SETTABLEKS                       R11 R10 K37 ["Widget"]
       95 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
       97 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
       99 GETTABLEKS                       R11 R0 K7 ["design"]
      101 SETTABLEKS                       R11 R10 K40 ["PluginDesign"]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R12 R13 K41 ["Change"]
      106 GETTABLEKS                       R11 R12 K14 ["Enabled"]
      108 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      110 SETTABLE                         R12 R10 R11
      111 DUPTABLE                         R11 K44 [{"FoundationProvider"}]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R12 R13 K11 ["createElement"]
      115 GETUPVAL                         R13 6
      116 DUPTABLE                         R14 K46 [{"onStyleSheetChange"}]
      117 GETTABLEKS                       R15 R0 K47 ["onFoundationStyleSheetChange"]
      119 SETTABLEKS                       R15 R14 K45 ["onStyleSheetChange"]
      121 NEWTABLE                         R15 0 1
      123 GETUPVAL                         R17 4
      124 GETTABLEKS                       R16 R17 K11 ["createElement"]
      126 GETUPVAL                         R18 7
      127 GETTABLEKS                       R17 R18 K48 ["Provider"]
      129 DUPTABLE                         R18 K49 [{"localization"}]
      130 GETTABLEKS                       R19 R0 K15 ["localization"]
      132 SETTABLEKS                       R19 R18 K15 ["localization"]
      134 DUPTABLE                         R19 K51 [{"BasicExample"}]
      135 GETUPVAL                         R21 4
      136 GETTABLEKS                       R20 R21 K11 ["createElement"]
      138 GETUPVAL                         R21 8
      139 DUPTABLE                         R22 K53 [{"showContent"}]
      140 LOADB                            R23 1
      141 SETTABLEKS                       R23 R22 K52 ["showContent"]
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K50 ["BasicExample"]
      146 CALL                             R16 3 -1
      147 SETLIST                          R15 R16 -1 [1]
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K43 ["FoundationProvider"]
      152 CALL                             R8 3 1
      153 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      155 CALL                             R5 2 -1
      156 RETURN                           R5 -1

PROTO_15:
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
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R5 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R6 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K13 ["Localization"]
       36 GETTABLEKS                       R7 R2 K14 ["UI"]
       38 GETTABLEKS                       R6 R7 K15 ["DockWidget"]
       40 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       46 GETTABLEKS                       R10 R7 K19 ["Design"]
       48 GETTABLEKS                       R13 R2 K20 ["Style"]
       50 GETTABLEKS                       R12 R13 K21 ["Themes"]
       52 GETTABLEKS                       R11 R12 K22 ["StudioTheme"]
       54 GETTABLEKS                       R13 R3 K23 ["Util"]
       56 GETTABLEKS                       R12 R13 K24 ["StudioUri"]
       58 GETTABLEKS                       R14 R2 K25 ["Styling"]
       60 GETTABLEKS                       R13 R14 K26 ["registerPluginStyles"]
       62 GETTABLEKS                       R17 R0 K27 ["Src"]
       64 GETTABLEKS                       R16 R17 K28 ["Resources"]
       66 GETTABLEKS                       R15 R16 K13 ["Localization"]
       68 GETTABLEKS                       R14 R15 K29 ["SourceStrings"]
       70 GETTABLEKS                       R18 R0 K27 ["Src"]
       72 GETTABLEKS                       R17 R18 K28 ["Resources"]
       74 GETTABLEKS                       R16 R17 K13 ["Localization"]
       76 GETTABLEKS                       R15 R16 K30 ["LocalizedStrings"]
       78 GETTABLEKS                       R17 R0 K27 ["Src"]
       80 GETTABLEKS                       R16 R17 K10 ["Components"]
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R16 K31 ["BasicExample_Foundation"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R21 R0 K32 ["Bin"]
       91 GETTABLEKS                       R20 R21 K33 ["Common"]
       93 GETTABLEKS                       R19 R20 K34 ["defineLuaFlags"]
       95 CALL                             R18 1 1
       96 GETTABLEKS                       R19 R18 K35 ["getFFlagRegisterActionsPluginLoader"]
       98 CALL                             R19 0 1
       99 GETTABLEKS                       R20 R1 K36 ["PureComponent"]
      101 LOADK                            R22 K37 ["MainPlugin"]
      102 NAMECALL                         R20 R20 K38 ["extend"]
      104 CALL                             R20 2 1
      105 GETTABLEKS                       R21 R12 K39 ["fromAction"]
      107 LOADK                            R22 K2 ["SuperTemplate"]
      108 LOADK                            R23 K40 ["Toggle"]
      109 CALL                             R21 2 1
      110 DUPCLOSURE                       R22 K41 [PROTO_12]
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R13
      120 SETTABLEKS                       R22 R20 K42 ["init"]
      122 DUPCLOSURE                       R22 K43 [PROTO_13]
      123 CAPTURE                          VAL R19
      124 SETTABLEKS                       R22 R20 K44 ["didUpdate"]
      126 DUPCLOSURE                       R22 K45 [PROTO_14]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R17
      136 SETTABLEKS                       R22 R20 K46 ["render"]
      138 DUPCLOSURE                       R22 K47 [PROTO_15]
      139 SETTABLEKS                       R22 R20 K48 ["willUnmount"]
      141 RETURN                           R20 1
