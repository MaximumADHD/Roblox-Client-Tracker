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
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["enabled"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["enabled"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["props"]
       23 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
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
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K14 ["Localization"]
       54 GETTABLEKS                       R3 R3 K15 ["new"]
       56 DUPTABLE                         R4 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       57 GETUPVAL                         R5 3
       58 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       60 GETUPVAL                         R5 4
       61 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       63 LOADK                            R5 K20 ["InputActionManager"]
       64 SETTABLEKS                       R5 R4 K18 ["pluginName"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R0 K21 ["localizationLEGACY"]
       69 GETUPVAL                         R3 5
       70 GETTABLEKS                       R3 R3 K14 ["Localization"]
       72 GETTABLEKS                       R3 R3 K15 ["new"]
       74 DUPTABLE                         R4 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       75 GETUPVAL                         R5 3
       76 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       78 GETUPVAL                         R5 4
       79 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       81 LOADK                            R5 K20 ["InputActionManager"]
       82 SETTABLEKS                       R5 R4 K18 ["pluginName"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R0 K22 ["localization"]
       87 GETUPVAL                         R3 2
       88 GETTABLEKS                       R3 R3 K23 ["Analytics"]
       90 GETTABLEKS                       R3 R3 K15 ["new"]
       92 DUPCLOSURE                       R4 K24 [PROTO_11]
       93 NEWTABLE                         R5 0 0
       95 CALL                             R3 2 1
       96 SETTABLEKS                       R3 R0 K25 ["analytics"]
       98 GETUPVAL                         R3 6
       99 GETUPVAL                         R4 7
      100 GETTABLEKS                       R4 R4 K26 ["get"]
      102 CALL                             R4 0 -1
      103 CALL                             R3 -1 1
      104 SETTABLEKS                       R3 R0 K27 ["guestInterface"]
      106 GETUPVAL                         R3 8
      107 GETTABLEKS                       R3 R3 K15 ["new"]
      109 CALL                             R3 0 1
      110 SETTABLEKS                       R3 R0 K28 ["DEPRECATED_stylizer"]
      112 GETUPVAL                         R3 9
      113 GETTABLEKS                       R3 R3 K29 ["Util"]
      115 GETTABLEKS                       R3 R3 K30 ["createFoundationDesignBinding"]
      117 CALL                             R3 0 2
      118 SETTABLEKS                       R4 R0 K31 ["onFoundationStyleSheetChange"]
      120 GETUPVAL                         R5 10
      121 GETTABLEKS                       R6 R1 K4 ["Plugin"]
      123 LOADNIL                          R7
      124 LOADNIL                          R8
      125 NEWTABLE                         R9 0 1
      127 MOVE                             R10 R3
      128 SETLIST                          R9 R10 1 [1]
      130 CALL                             R5 4 1
      131 SETTABLEKS                       R5 R0 K32 ["design"]
      133 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_14:
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
       42 LOADK                            R11 K12 ["InputActionManager"]
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
      111 NEWTABLE                         R11 0 1
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R12 R12 K11 ["createElement"]
      116 GETUPVAL                         R13 6
      117 DUPTABLE                         R14 K44 [{"providers"}]
      118 NEWTABLE                         R15 0 4
      120 GETUPVAL                         R16 4
      121 GETTABLEKS                       R16 R16 K11 ["createElement"]
      123 GETUPVAL                         R17 7
      124 DUPTABLE                         R18 K46 [{"onStyleSheetChange"}]
      125 GETTABLEKS                       R19 R0 K47 ["onFoundationStyleSheetChange"]
      127 SETTABLEKS                       R19 R18 K45 ["onStyleSheetChange"]
      129 CALL                             R16 2 1
      130 GETUPVAL                         R17 4
      131 GETTABLEKS                       R17 R17 K11 ["createElement"]
      133 GETUPVAL                         R18 8
      134 GETTABLEKS                       R18 R18 K48 ["Provider"]
      136 DUPTABLE                         R19 K50 [{"value"}]
      137 GETUPVAL                         R20 9
      138 GETTABLEKS                       R20 R20 K51 ["get"]
      140 CALL                             R20 0 1
      141 SETTABLEKS                       R20 R19 K49 ["value"]
      143 CALL                             R17 2 1
      144 GETUPVAL                         R18 4
      145 GETTABLEKS                       R18 R18 K11 ["createElement"]
      147 GETUPVAL                         R19 10
      148 GETTABLEKS                       R19 R19 K48 ["Provider"]
      150 DUPTABLE                         R20 K50 [{"value"}]
      151 GETTABLEKS                       R21 R0 K52 ["guestInterface"]
      153 SETTABLEKS                       R21 R20 K49 ["value"]
      155 CALL                             R18 2 1
      156 GETUPVAL                         R19 4
      157 GETTABLEKS                       R19 R19 K11 ["createElement"]
      159 GETUPVAL                         R20 11
      160 GETTABLEKS                       R20 R20 K48 ["Provider"]
      162 DUPTABLE                         R21 K53 [{"localization"}]
      163 GETTABLEKS                       R22 R0 K15 ["localization"]
      165 SETTABLEKS                       R22 R21 K15 ["localization"]
      167 CALL                             R19 2 -1
      168 SETLIST                          R15 R16 -1 [1]
      170 SETTABLEKS                       R15 R14 K43 ["providers"]
      172 DUPTABLE                         R15 K55 [{"App"}]
      173 GETUPVAL                         R16 4
      174 GETTABLEKS                       R16 R16 K11 ["createElement"]
      176 GETUPVAL                         R17 12
      177 CALL                             R16 1 1
      178 SETTABLEKS                       R16 R15 K54 ["App"]
      180 CALL                             R12 3 -1
      181 SETLIST                          R11 R12 -1 [1]
      183 CALL                             R8 3 1
      184 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      186 CALL                             R5 2 -1
      187 RETURN                           R5 -1

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
       16 GETTABLEKS                       R1 R0 K3 ["guestInterface"]
       18 NAMECALL                         R1 R1 K4 ["Destroy"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["Destroy"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R2 K13 ["ContextStack"]
       41 GETTABLEKS                       R7 R4 K14 ["Contexts"]
       43 GETTABLEKS                       R7 R7 K15 ["Localization"]
       45 GETTABLEKS                       R8 R3 K16 ["UI"]
       47 GETTABLEKS                       R8 R8 K17 ["DockWidget"]
       49 GETTABLEKS                       R9 R3 K18 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       53 GETTABLEKS                       R11 R9 K20 ["Mouse"]
       55 GETTABLEKS                       R12 R9 K21 ["Design"]
       57 GETTABLEKS                       R13 R3 K22 ["Style"]
       59 GETTABLEKS                       R13 R13 K23 ["Themes"]
       61 GETTABLEKS                       R13 R13 K24 ["StudioTheme"]
       63 GETTABLEKS                       R14 R4 K25 ["Util"]
       65 GETTABLEKS                       R14 R14 K26 ["StudioUri"]
       67 GETTABLEKS                       R15 R3 K27 ["Styling"]
       69 GETTABLEKS                       R15 R15 K28 ["registerPluginStyles"]
       71 GETTABLEKS                       R16 R0 K29 ["Src"]
       73 GETTABLEKS                       R16 R16 K30 ["Resources"]
       75 GETTABLEKS                       R16 R16 K15 ["Localization"]
       77 GETTABLEKS                       R16 R16 K31 ["SourceStrings"]
       79 GETTABLEKS                       R17 R0 K29 ["Src"]
       81 GETTABLEKS                       R17 R17 K30 ["Resources"]
       83 GETTABLEKS                       R17 R17 K15 ["Localization"]
       85 GETTABLEKS                       R17 R17 K32 ["LocalizedStrings"]
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R0 K29 ["Src"]
       91 GETTABLEKS                       R19 R19 K33 ["Host"]
       93 GETTABLEKS                       R19 R19 K34 ["App"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R0 K35 ["Bin"]
      100 GETTABLEKS                       R20 R20 K36 ["Common"]
      102 GETTABLEKS                       R20 R20 K37 ["defineLuaFlags"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R0 K35 ["Bin"]
      109 GETTABLEKS                       R21 R21 K36 ["Common"]
      111 GETTABLEKS                       R21 R21 K38 ["StudioNetworking"]
      113 CALL                             R20 1 1
      114 GETTABLEKS                       R21 R19 K39 ["getFFlagRegisterActionsPluginLoader"]
      116 CALL                             R21 0 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R0 K29 ["Src"]
      121 GETTABLEKS                       R23 R23 K40 ["Guest"]
      123 GETTABLEKS                       R23 R23 K41 ["createGuestInterface"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K5 [require]
      128 GETTABLEKS                       R24 R0 K29 ["Src"]
      130 GETTABLEKS                       R24 R24 K14 ["Contexts"]
      132 GETTABLEKS                       R24 R24 K42 ["Networking"]
      134 CALL                             R23 1 1
      135 GETIMPORT                        R24 K5 [require]
      137 GETTABLEKS                       R25 R0 K29 ["Src"]
      139 GETTABLEKS                       R25 R25 K14 ["Contexts"]
      141 GETTABLEKS                       R25 R25 K40 ["Guest"]
      143 CALL                             R24 1 1
      144 GETTABLEKS                       R25 R1 K43 ["PureComponent"]
      146 LOADK                            R27 K44 ["MainPlugin"]
      147 NAMECALL                         R25 R25 K45 ["extend"]
      149 CALL                             R25 2 1
      150 GETTABLEKS                       R26 R14 K46 ["fromAction"]
      152 LOADK                            R27 K2 ["InputActionManager"]
      153 LOADK                            R28 K47 ["Toggle"]
      154 CALL                             R26 2 1
      155 DUPCLOSURE                       R27 K48 [PROTO_12]
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R15
      167 SETTABLEKS                       R27 R25 K49 ["init"]
      169 DUPCLOSURE                       R27 K50 [PROTO_13]
      170 CAPTURE                          VAL R21
      171 SETTABLEKS                       R27 R25 K51 ["didUpdate"]
      173 DUPCLOSURE                       R27 K52 [PROTO_14]
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R18
      187 SETTABLEKS                       R27 R25 K53 ["render"]
      189 DUPCLOSURE                       R27 K54 [PROTO_15]
      190 CAPTURE                          VAL R20
      191 SETTABLEKS                       R27 R25 K55 ["willUnmount"]
      193 RETURN                           R25 1
