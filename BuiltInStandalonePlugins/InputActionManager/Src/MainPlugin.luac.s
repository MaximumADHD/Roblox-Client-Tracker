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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["provide"]
       15 NEWTABLE                         R7 0 4
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K4 ["new"]
       20 MOVE                             R9 R3
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K4 ["new"]
       25 NAMECALL                         R10 R3 K6 ["getMouse"]
       27 CALL                             R10 1 -1
       28 CALL                             R9 -1 1
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K4 ["new"]
       32 GETTABLEKS                       R11 R0 K7 ["design"]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R11 R0 K8 ["localizationLEGACY"]
       37 SETLIST                          R7 R8 4 [1]
       39 DUPTABLE                         R8 K10 [{"MainWidget"}]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K11 ["createElement"]
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
       93 GETTABLEKS                       R12 R1 K35 ["PluginLoaderContext"]
       95 GETTABLEKS                       R12 R12 K36 ["mainDockWidget"]
       97 SETTABLEKS                       R12 R11 K37 ["Widget"]
       99 GETTABLEKS                       R12 R0 K38 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R12 R11 K39 ["OnWidgetCreated"]
      103 GETTABLEKS                       R12 R0 K7 ["design"]
      105 SETTABLEKS                       R12 R11 K40 ["PluginDesign"]
      107 GETUPVAL                         R12 5
      108 GETTABLEKS                       R12 R12 K41 ["Change"]
      110 GETTABLEKS                       R12 R12 K14 ["Enabled"]
      112 GETTABLEKS                       R13 R0 K42 ["onWidgetEnabledChanged"]
      114 SETTABLE                         R13 R11 R12
      115 NEWTABLE                         R12 0 1
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R13 R13 K11 ["createElement"]
      120 GETUPVAL                         R14 7
      121 DUPTABLE                         R15 K44 [{"providers"}]
      122 NEWTABLE                         R16 0 7
      124 GETUPVAL                         R17 5
      125 GETTABLEKS                       R17 R17 K11 ["createElement"]
      127 GETUPVAL                         R18 8
      128 DUPTABLE                         R19 K46 [{"onStyleSheetChange"}]
      129 GETTABLEKS                       R20 R0 K47 ["onFoundationStyleSheetChange"]
      131 SETTABLEKS                       R20 R19 K45 ["onStyleSheetChange"]
      133 CALL                             R17 2 1
      134 GETUPVAL                         R18 5
      135 GETTABLEKS                       R18 R18 K11 ["createElement"]
      137 GETUPVAL                         R19 9
      138 GETTABLEKS                       R19 R19 K48 ["Provider"]
      140 CALL                             R18 1 1
      141 GETUPVAL                         R19 5
      142 GETTABLEKS                       R19 R19 K11 ["createElement"]
      144 GETUPVAL                         R20 10
      145 GETTABLEKS                       R20 R20 K48 ["Provider"]
      147 CALL                             R19 1 1
      148 GETUPVAL                         R20 5
      149 GETTABLEKS                       R20 R20 K11 ["createElement"]
      151 GETUPVAL                         R21 11
      152 GETTABLEKS                       R21 R21 K48 ["Provider"]
      154 DUPTABLE                         R22 K50 [{"value"}]
      155 GETUPVAL                         R23 12
      156 GETTABLEKS                       R23 R23 K51 ["get"]
      158 CALL                             R23 0 1
      159 SETTABLEKS                       R23 R22 K49 ["value"]
      161 CALL                             R20 2 1
      162 GETUPVAL                         R21 5
      163 GETTABLEKS                       R21 R21 K11 ["createElement"]
      165 GETUPVAL                         R22 13
      166 GETTABLEKS                       R22 R22 K48 ["Provider"]
      168 DUPTABLE                         R23 K50 [{"value"}]
      169 GETTABLEKS                       R24 R0 K52 ["guestInterface"]
      171 SETTABLEKS                       R24 R23 K49 ["value"]
      173 CALL                             R21 2 1
      174 GETUPVAL                         R22 5
      175 GETTABLEKS                       R22 R22 K11 ["createElement"]
      177 GETUPVAL                         R23 14
      178 GETTABLEKS                       R23 R23 K48 ["Provider"]
      180 CALL                             R22 1 1
      181 GETUPVAL                         R23 5
      182 GETTABLEKS                       R23 R23 K11 ["createElement"]
      184 GETUPVAL                         R24 15
      185 GETTABLEKS                       R24 R24 K48 ["Provider"]
      187 DUPTABLE                         R25 K53 [{"localization"}]
      188 GETTABLEKS                       R26 R0 K15 ["localization"]
      190 SETTABLEKS                       R26 R25 K15 ["localization"]
      192 CALL                             R23 2 -1
      193 SETLIST                          R16 R17 -1 [1]
      195 SETTABLEKS                       R16 R15 K43 ["providers"]
      197 DUPTABLE                         R16 K55 [{"Root"}]
      198 GETUPVAL                         R17 5
      199 GETTABLEKS                       R17 R17 K11 ["createElement"]
      201 GETUPVAL                         R18 16
      202 DUPTABLE                         R19 K58 [{"onSearchActivated", "updateSize"}]
      203 DUPCLOSURE                       R20 K59 [PROTO_14]
      204 SETTABLEKS                       R20 R19 K56 ["onSearchActivated"]
      206 NEWCLOSURE                       R20 P1
      207 CAPTURE                          VAL R5
      208 SETTABLEKS                       R20 R19 K57 ["updateSize"]
      210 CALL                             R17 2 1
      211 SETTABLEKS                       R17 R16 K54 ["Root"]
      213 CALL                             R13 3 -1
      214 SETLIST                          R12 R13 -1 [1]
      216 CALL                             R9 3 1
      217 SETTABLEKS                       R9 R8 K9 ["MainWidget"]
      219 CALL                             R6 2 -1
      220 RETURN                           R6 -1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Signal"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["Components"]
       44 GETTABLEKS                       R6 R6 K13 ["FoundationProviderAdapter"]
       46 GETTABLEKS                       R7 R2 K14 ["ContextStack"]
       48 GETTABLEKS                       R8 R4 K15 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K16 ["Localization"]
       52 GETTABLEKS                       R9 R3 K17 ["UI"]
       54 GETTABLEKS                       R9 R9 K18 ["DockWidget"]
       56 GETTABLEKS                       R10 R3 K19 ["ContextServices"]
       58 GETTABLEKS                       R11 R10 K20 ["Plugin"]
       60 GETTABLEKS                       R12 R10 K21 ["Mouse"]
       62 GETTABLEKS                       R13 R10 K22 ["Design"]
       64 GETTABLEKS                       R14 R3 K23 ["Style"]
       66 GETTABLEKS                       R14 R14 K24 ["Themes"]
       68 GETTABLEKS                       R14 R14 K25 ["StudioTheme"]
       70 GETTABLEKS                       R15 R4 K26 ["Util"]
       72 GETTABLEKS                       R15 R15 K27 ["StudioUri"]
       74 GETTABLEKS                       R16 R3 K28 ["Styling"]
       76 GETTABLEKS                       R16 R16 K29 ["registerPluginStyles"]
       78 GETTABLEKS                       R17 R0 K30 ["Src"]
       80 GETTABLEKS                       R17 R17 K31 ["Resources"]
       82 GETTABLEKS                       R17 R17 K16 ["Localization"]
       84 GETTABLEKS                       R17 R17 K32 ["SourceStrings"]
       86 GETTABLEKS                       R18 R0 K30 ["Src"]
       88 GETTABLEKS                       R18 R18 K31 ["Resources"]
       90 GETTABLEKS                       R18 R18 K16 ["Localization"]
       92 GETTABLEKS                       R18 R18 K33 ["LocalizedStrings"]
       94 GETTABLEKS                       R19 R0 K30 ["Src"]
       96 GETTABLEKS                       R19 R19 K12 ["Components"]
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R19 K34 ["Root"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R0 K35 ["Bin"]
      107 GETTABLEKS                       R22 R22 K36 ["Common"]
      109 GETTABLEKS                       R22 R22 K37 ["defineLuaFlags"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R23 R0 K35 ["Bin"]
      116 GETTABLEKS                       R23 R23 K36 ["Common"]
      118 GETTABLEKS                       R23 R23 K38 ["StudioNetworking"]
      120 CALL                             R22 1 1
      121 GETTABLEKS                       R23 R21 K39 ["getFFlagRegisterActionsPluginLoader"]
      123 CALL                             R23 0 1
      124 GETIMPORT                        R24 K5 [require]
      126 GETTABLEKS                       R25 R0 K30 ["Src"]
      128 GETTABLEKS                       R25 R25 K40 ["Guest"]
      130 GETTABLEKS                       R25 R25 K41 ["createGuestInterface"]
      132 CALL                             R24 1 1
      133 GETIMPORT                        R25 K5 [require]
      135 GETTABLEKS                       R26 R0 K30 ["Src"]
      137 GETTABLEKS                       R26 R26 K15 ["Contexts"]
      139 GETTABLEKS                       R26 R26 K42 ["DatamodelReference"]
      141 CALL                             R25 1 1
      142 GETIMPORT                        R26 K5 [require]
      144 GETTABLEKS                       R27 R0 K30 ["Src"]
      146 GETTABLEKS                       R27 R27 K15 ["Contexts"]
      148 GETTABLEKS                       R27 R27 K43 ["Networking"]
      150 CALL                             R26 1 1
      151 GETIMPORT                        R27 K5 [require]
      153 GETTABLEKS                       R28 R0 K30 ["Src"]
      155 GETTABLEKS                       R28 R28 K15 ["Contexts"]
      157 GETTABLEKS                       R28 R28 K40 ["Guest"]
      159 CALL                             R27 1 1
      160 GETIMPORT                        R28 K5 [require]
      162 GETTABLEKS                       R29 R0 K30 ["Src"]
      164 GETTABLEKS                       R29 R29 K15 ["Contexts"]
      166 GETTABLEKS                       R29 R29 K44 ["PluginConfiguration"]
      168 CALL                             R28 1 1
      169 GETIMPORT                        R29 K5 [require]
      171 GETTABLEKS                       R30 R0 K30 ["Src"]
      173 GETTABLEKS                       R30 R30 K15 ["Contexts"]
      175 GETTABLEKS                       R30 R30 K45 ["SchemaKeyCodes"]
      177 CALL                             R29 1 1
      178 GETTABLEKS                       R30 R1 K46 ["PureComponent"]
      180 LOADK                            R32 K47 ["MainPlugin"]
      181 NAMECALL                         R30 R30 K48 ["extend"]
      183 CALL                             R30 2 1
      184 GETTABLEKS                       R31 R15 K49 ["fromAction"]
      186 LOADK                            R32 K2 ["InputActionManager"]
      187 LOADK                            R33 K50 ["Toggle"]
      188 CALL                             R31 2 1
      189 DUPCLOSURE                       R32 K51 [PROTO_12]
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R31
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R16
      201 SETTABLEKS                       R32 R30 K52 ["init"]
      203 DUPCLOSURE                       R32 K53 [PROTO_13]
      204 CAPTURE                          VAL R23
      205 SETTABLEKS                       R32 R30 K54 ["didUpdate"]
      207 DUPCLOSURE                       R32 K55 [PROTO_16]
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R29
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R26
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R27
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R20
      225 SETTABLEKS                       R32 R30 K56 ["render"]
      227 DUPCLOSURE                       R32 K57 [PROTO_17]
      228 CAPTURE                          VAL R22
      229 SETTABLEKS                       R32 R30 K58 ["willUnmount"]
      231 RETURN                           R30 1
