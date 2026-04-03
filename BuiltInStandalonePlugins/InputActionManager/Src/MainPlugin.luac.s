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
       63 LOADK                            R5 K20 ["InputActionManager"]
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
       81 LOADK                            R5 K20 ["InputActionManager"]
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
       98 GETUPVAL                         R3 6
       99 GETUPVAL                         R5 7
      100 GETTABLEKS                       R4 R5 K26 ["get"]
      102 CALL                             R4 0 -1
      103 CALL                             R3 -1 1
      104 SETTABLEKS                       R3 R0 K27 ["guestInterface"]
      106 GETUPVAL                         R4 8
      107 GETTABLEKS                       R3 R4 K15 ["new"]
      109 CALL                             R3 0 1
      110 SETTABLEKS                       R3 R0 K28 ["DEPRECATED_stylizer"]
      112 GETUPVAL                         R5 9
      113 GETTABLEKS                       R4 R5 K29 ["Util"]
      115 GETTABLEKS                       R3 R4 K30 ["createFoundationDesignBinding"]
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
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R4 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Searched for: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Fire"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["provide"]
       15 NEWTABLE                         R7 0 4
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K4 ["new"]
       20 MOVE                             R9 R3
       21 CALL                             R8 1 1
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R9 R10 K4 ["new"]
       25 NAMECALL                         R10 R3 K6 ["getMouse"]
       27 CALL                             R10 1 -1
       28 CALL                             R9 -1 1
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R10 R11 K4 ["new"]
       32 GETTABLEKS                       R11 R0 K7 ["design"]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R11 R0 K8 ["localizationLEGACY"]
       37 SETLIST                          R7 R8 4 [1]
       39 DUPTABLE                         R8 K10 [{"MainWidget"}]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R9 R10 K11 ["createElement"]
       43 GETUPVAL                         R10 6
       44 NEWTABLE                         R11 16 0
       46 LOADK                            R12 K12 ["InputActionManager"]
       47 SETTABLEKS                       R12 R11 K13 ["Id"]
       49 SETTABLEKS                       R4 R11 K14 ["Enabled"]
       51 GETTABLEKS                       R12 R0 K15 ["localization"]
       53 LOADK                            R14 K2 ["Plugin"]
       54 LOADK                            R15 K16 ["Name"]
       55 NAMECALL                         R12 R12 K17 ["getText"]
       57 CALL                             R12 3 1
       58 SETTABLEKS                       R12 R11 K18 ["Title"]
       60 GETIMPORT                        R12 K22 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R12 R11 K20 ["ZIndexBehavior"]
       64 GETIMPORT                        R12 K25 [Enum.InitialDockState.Bottom]
       66 SETTABLEKS                       R12 R11 K23 ["InitialDockState"]
       68 GETIMPORT                        R12 K27 [Vector2.new]
       70 LOADN                            R13 128
       71 LOADN                            R14 224
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K28 ["Size"]
       75 GETIMPORT                        R12 K27 [Vector2.new]
       77 LOADN                            R13 250
       78 LOADN                            R14 200
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K29 ["MinSize"]
       82 GETTABLEKS                       R12 R0 K30 ["onClose"]
       84 SETTABLEKS                       R12 R11 K31 ["OnClose"]
       86 LOADB                            R12 1
       87 SETTABLEKS                       R12 R11 K32 ["ShouldRestore"]
       89 GETTABLEKS                       R12 R0 K33 ["onRestore"]
       91 SETTABLEKS                       R12 R11 K34 ["OnWidgetRestored"]
       93 GETTABLEKS                       R13 R1 K35 ["PluginLoaderContext"]
       95 GETTABLEKS                       R12 R13 K36 ["mainDockWidget"]
       97 SETTABLEKS                       R12 R11 K37 ["Widget"]
       99 GETTABLEKS                       R12 R0 K38 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R12 R11 K39 ["OnWidgetCreated"]
      103 GETTABLEKS                       R12 R0 K7 ["design"]
      105 SETTABLEKS                       R12 R11 K40 ["PluginDesign"]
      107 GETUPVAL                         R14 5
      108 GETTABLEKS                       R13 R14 K41 ["Change"]
      110 GETTABLEKS                       R12 R13 K14 ["Enabled"]
      112 GETTABLEKS                       R13 R0 K42 ["onWidgetEnabledChanged"]
      114 SETTABLE                         R13 R11 R12
      115 DUPTABLE                         R12 K44 [{"FoundationProvider"}]
      116 GETUPVAL                         R14 5
      117 GETTABLEKS                       R13 R14 K11 ["createElement"]
      119 GETUPVAL                         R14 7
      120 DUPTABLE                         R15 K46 [{"onStyleSheetChange"}]
      121 GETTABLEKS                       R16 R0 K47 ["onFoundationStyleSheetChange"]
      123 SETTABLEKS                       R16 R15 K45 ["onStyleSheetChange"]
      125 NEWTABLE                         R16 0 1
      127 GETUPVAL                         R18 5
      128 GETTABLEKS                       R17 R18 K11 ["createElement"]
      130 GETUPVAL                         R19 8
      131 GETTABLEKS                       R18 R19 K48 ["Provider"]
      133 DUPTABLE                         R19 K51 [{"size", "sizeChanged"}]
      134 GETIMPORT                        R20 K27 [Vector2.new]
      136 LOADN                            R21 128
      137 LOADN                            R22 224
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K49 ["size"]
      141 SETTABLEKS                       R5 R19 K50 ["sizeChanged"]
      143 NEWTABLE                         R20 0 1
      145 GETUPVAL                         R22 5
      146 GETTABLEKS                       R21 R22 K11 ["createElement"]
      148 GETUPVAL                         R23 9
      149 GETTABLEKS                       R22 R23 K48 ["Provider"]
      151 DUPTABLE                         R23 K53 [{"value"}]
      152 GETUPVAL                         R25 10
      153 GETTABLEKS                       R24 R25 K54 ["get"]
      155 CALL                             R24 0 1
      156 SETTABLEKS                       R24 R23 K52 ["value"]
      158 NEWTABLE                         R24 0 1
      160 GETUPVAL                         R26 5
      161 GETTABLEKS                       R25 R26 K11 ["createElement"]
      163 GETUPVAL                         R27 11
      164 GETTABLEKS                       R26 R27 K48 ["Provider"]
      166 DUPTABLE                         R27 K53 [{"value"}]
      167 GETTABLEKS                       R28 R0 K55 ["guestInterface"]
      169 SETTABLEKS                       R28 R27 K52 ["value"]
      171 NEWTABLE                         R28 0 1
      173 GETUPVAL                         R30 5
      174 GETTABLEKS                       R29 R30 K11 ["createElement"]
      176 GETUPVAL                         R31 12
      177 GETTABLEKS                       R30 R31 K48 ["Provider"]
      179 DUPTABLE                         R31 K56 [{"localization"}]
      180 GETTABLEKS                       R32 R0 K15 ["localization"]
      182 SETTABLEKS                       R32 R31 K15 ["localization"]
      184 DUPTABLE                         R32 K58 [{"Root"}]
      185 GETUPVAL                         R34 5
      186 GETTABLEKS                       R33 R34 K11 ["createElement"]
      188 GETUPVAL                         R34 13
      189 DUPTABLE                         R35 K61 [{"onSearchActivated", "updateSize"}]
      190 DUPCLOSURE                       R36 K62 [PROTO_14]
      191 SETTABLEKS                       R36 R35 K59 ["onSearchActivated"]
      193 NEWCLOSURE                       R36 P1
      194 CAPTURE                          VAL R5
      195 SETTABLEKS                       R36 R35 K60 ["updateSize"]
      197 CALL                             R33 2 1
      198 SETTABLEKS                       R33 R32 K57 ["Root"]
      200 CALL                             R29 3 -1
      201 SETLIST                          R28 R29 -1 [1]
      203 CALL                             R25 3 -1
      204 SETLIST                          R24 R25 -1 [1]
      206 CALL                             R21 3 -1
      207 SETLIST                          R20 R21 -1 [1]
      209 CALL                             R17 3 -1
      210 SETLIST                          R16 R17 -1 [1]
      212 CALL                             R13 3 1
      213 SETTABLEKS                       R13 R12 K43 ["FoundationProvider"]
      215 CALL                             R9 3 1
      216 SETTABLEKS                       R9 R8 K9 ["MainWidget"]
      218 CALL                             R6 2 -1
      219 RETURN                           R6 -1

PROTO_17:
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
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K4 ["Destroy"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Signal"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R3 K11 ["Components"]
       37 GETTABLEKS                       R5 R6 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R7 R3 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["Localization"]
       43 GETTABLEKS                       R8 R2 K15 ["UI"]
       45 GETTABLEKS                       R7 R8 K16 ["DockWidget"]
       47 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       49 GETTABLEKS                       R9 R8 K18 ["Plugin"]
       51 GETTABLEKS                       R10 R8 K19 ["Mouse"]
       53 GETTABLEKS                       R11 R8 K20 ["Design"]
       55 GETTABLEKS                       R14 R2 K21 ["Style"]
       57 GETTABLEKS                       R13 R14 K22 ["Themes"]
       59 GETTABLEKS                       R12 R13 K23 ["StudioTheme"]
       61 GETTABLEKS                       R14 R3 K24 ["Util"]
       63 GETTABLEKS                       R13 R14 K25 ["StudioUri"]
       65 GETTABLEKS                       R15 R2 K26 ["Styling"]
       67 GETTABLEKS                       R14 R15 K27 ["registerPluginStyles"]
       69 GETTABLEKS                       R18 R0 K28 ["Src"]
       71 GETTABLEKS                       R17 R18 K29 ["Resources"]
       73 GETTABLEKS                       R16 R17 K14 ["Localization"]
       75 GETTABLEKS                       R15 R16 K30 ["SourceStrings"]
       77 GETTABLEKS                       R19 R0 K28 ["Src"]
       79 GETTABLEKS                       R18 R19 K29 ["Resources"]
       81 GETTABLEKS                       R17 R18 K14 ["Localization"]
       83 GETTABLEKS                       R16 R17 K31 ["LocalizedStrings"]
       85 GETTABLEKS                       R18 R0 K28 ["Src"]
       87 GETTABLEKS                       R17 R18 K11 ["Components"]
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R19 R17 K32 ["Root"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K5 [require]
       96 GETTABLEKS                       R22 R0 K33 ["Bin"]
       98 GETTABLEKS                       R21 R22 K34 ["Common"]
      100 GETTABLEKS                       R20 R21 K35 ["defineLuaFlags"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R23 R0 K33 ["Bin"]
      107 GETTABLEKS                       R22 R23 K34 ["Common"]
      109 GETTABLEKS                       R21 R22 K36 ["StudioNetworking"]
      111 CALL                             R20 1 1
      112 GETTABLEKS                       R21 R19 K37 ["getFFlagRegisterActionsPluginLoader"]
      114 CALL                             R21 0 1
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R25 R0 K28 ["Src"]
      119 GETTABLEKS                       R24 R25 K38 ["Guest"]
      121 GETTABLEKS                       R23 R24 K39 ["createGuestInterface"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R26 R0 K28 ["Src"]
      128 GETTABLEKS                       R25 R26 K13 ["Contexts"]
      130 GETTABLEKS                       R24 R25 K40 ["Networking"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K5 [require]
      135 GETTABLEKS                       R27 R0 K28 ["Src"]
      137 GETTABLEKS                       R26 R27 K13 ["Contexts"]
      139 GETTABLEKS                       R25 R26 K38 ["Guest"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K5 [require]
      144 GETTABLEKS                       R28 R0 K28 ["Src"]
      146 GETTABLEKS                       R27 R28 K13 ["Contexts"]
      148 GETTABLEKS                       R26 R27 K41 ["PluginConfiguration"]
      150 CALL                             R25 1 1
      151 GETTABLEKS                       R26 R1 K42 ["PureComponent"]
      153 LOADK                            R28 K43 ["MainPlugin"]
      154 NAMECALL                         R26 R26 K44 ["extend"]
      156 CALL                             R26 2 1
      157 GETTABLEKS                       R27 R13 K45 ["fromAction"]
      159 LOADK                            R28 K2 ["InputActionManager"]
      160 LOADK                            R29 K46 ["Toggle"]
      161 CALL                             R27 2 1
      162 DUPCLOSURE                       R28 K47 [PROTO_12]
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R27
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R14
      174 SETTABLEKS                       R28 R26 K48 ["init"]
      176 DUPCLOSURE                       R28 K49 [PROTO_13]
      177 CAPTURE                          VAL R21
      178 SETTABLEKS                       R28 R26 K50 ["didUpdate"]
      180 DUPCLOSURE                       R28 K51 [PROTO_16]
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R18
      195 SETTABLEKS                       R28 R26 K52 ["render"]
      197 DUPCLOSURE                       R28 K53 [PROTO_17]
      198 CAPTURE                          VAL R20
      199 SETTABLEKS                       R28 R26 K54 ["willUnmount"]
      201 RETURN                           R26 1
