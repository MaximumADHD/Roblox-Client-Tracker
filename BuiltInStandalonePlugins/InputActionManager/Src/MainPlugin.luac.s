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
       47 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
       48 GETUPVAL                         R5 2
       49 SETTABLEKS                       R5 R4 K17 ["stringResourceTable"]
       51 GETUPVAL                         R5 3
       52 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R0 K22 ["localizationLEGACY"]
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K15 ["Localization"]
       60 GETTABLEKS                       R3 R3 K16 ["new"]
       62 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
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
       84 GETUPVAL                         R4 6
       85 GETTABLEKS                       R4 R4 K27 ["get"]
       87 CALL                             R4 0 -1
       88 CALL                             R3 -1 1
       89 SETTABLEKS                       R3 R0 K28 ["guestInterface"]
       91 GETUPVAL                         R3 7
       92 GETTABLEKS                       R3 R3 K16 ["new"]
       94 CALL                             R3 0 1
       95 SETTABLEKS                       R3 R0 K29 ["DEPRECATED_stylizer"]
       97 GETUPVAL                         R3 8
       98 GETTABLEKS                       R3 R3 K30 ["Util"]
      100 GETTABLEKS                       R3 R3 K31 ["createFoundationDesignBinding"]
      102 CALL                             R3 0 2
      103 SETTABLEKS                       R4 R0 K32 ["onFoundationStyleSheetChange"]
      105 GETUPVAL                         R5 9
      106 GETTABLEKS                       R6 R1 K5 ["Plugin"]
      108 LOADNIL                          R7
      109 LOADNIL                          R8
      110 NEWTABLE                         R9 0 1
      112 MOVE                             R10 R3
      113 SETLIST                          R9 R10 1 [1]
      115 CALL                             R5 4 1
      116 SETTABLEKS                       R5 R0 K33 ["design"]
      118 RETURN                           R0 0

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
      111 NEWTABLE                         R11 0 1
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R12 R12 K11 ["createElement"]
      116 GETUPVAL                         R13 6
      117 DUPTABLE                         R14 K44 [{"providers"}]
      118 NEWTABLE                         R15 0 7
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
      167 CALL                             R19 2 1
      168 GETUPVAL                         R21 12
      169 CALL                             R21 0 1
      170 JUMPIFNOT                        R21 ; [+8]
      171 GETUPVAL                         R20 4
      172 GETTABLEKS                       R20 R20 K11 ["createElement"]
      174 GETUPVAL                         R21 13
      175 GETTABLEKS                       R21 R21 K54 ["AnalyticsTelemetryServiceProvider"]
      177 CALL                             R20 1 1
      178 JUMP                             ; [+7]
      179 GETUPVAL                         R20 4
      180 GETTABLEKS                       R20 R20 K11 ["createElement"]
      182 GETUPVAL                         R21 4
      183 GETTABLEKS                       R21 R21 K55 ["Fragment"]
      185 CALL                             R20 1 1
      186 GETUPVAL                         R22 12
      187 CALL                             R22 0 1
      188 JUMPIFNOT                        R22 ; [+8]
      189 GETUPVAL                         R21 4
      190 GETTABLEKS                       R21 R21 K11 ["createElement"]
      192 GETUPVAL                         R22 14
      193 GETTABLEKS                       R22 R22 K48 ["Provider"]
      195 CALL                             R21 1 1
      196 JUMP                             ; [+7]
      197 GETUPVAL                         R21 4
      198 GETTABLEKS                       R21 R21 K11 ["createElement"]
      200 GETUPVAL                         R22 4
      201 GETTABLEKS                       R22 R22 K55 ["Fragment"]
      203 CALL                             R21 1 1
      204 GETUPVAL                         R23 15
      205 CALL                             R23 0 1
      206 JUMPIFNOT                        R23 ; [+11]
      207 GETUPVAL                         R22 4
      208 GETTABLEKS                       R22 R22 K11 ["createElement"]
      210 GETUPVAL                         R23 16
      211 GETTABLEKS                       R23 R23 K48 ["Provider"]
      213 DUPTABLE                         R24 K57 [{"plugin"}]
      214 SETTABLEKS                       R3 R24 K56 ["plugin"]
      216 CALL                             R22 2 1
      217 JUMP                             ; [+7]
      218 GETUPVAL                         R22 4
      219 GETTABLEKS                       R22 R22 K11 ["createElement"]
      221 GETUPVAL                         R23 4
      222 GETTABLEKS                       R23 R23 K55 ["Fragment"]
      224 CALL                             R22 1 1
      225 SETLIST                          R15 R16 7 [1]
      227 SETTABLEKS                       R15 R14 K43 ["providers"]
      229 DUPTABLE                         R15 K59 [{"App"}]
      230 GETUPVAL                         R16 4
      231 GETTABLEKS                       R16 R16 K11 ["createElement"]
      233 GETUPVAL                         R17 17
      234 DUPTABLE                         R18 K61 [{"plugin", "pluginEnabled"}]
      235 GETUPVAL                         R20 12
      236 CALL                             R20 0 1
      237 JUMPIFNOT                        R20 ; [+2]
      238 MOVE                             R19 R3
      239 JUMP                             ; [+1]
      240 LOADNIL                          R19
      241 SETTABLEKS                       R19 R18 K56 ["plugin"]
      243 GETUPVAL                         R20 12
      244 CALL                             R20 0 1
      245 JUMPIFNOT                        R20 ; [+2]
      246 MOVE                             R19 R4
      247 JUMP                             ; [+1]
      248 LOADNIL                          R19
      249 SETTABLEKS                       R19 R18 K60 ["pluginEnabled"]
      251 CALL                             R16 2 1
      252 SETTABLEKS                       R16 R15 K58 ["App"]
      254 CALL                             R12 3 -1
      255 SETLIST                          R11 R12 -1 [1]
      257 CALL                             R8 3 1
      258 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      260 CALL                             R5 2 -1
      261 RETURN                           R5 -1

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
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K6 ["Packages"]
       61 GETTABLEKS                       R14 R14 K22 ["Analytics"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K23 ["Src"]
       68 GETTABLEKS                       R15 R15 K14 ["Contexts"]
       70 GETTABLEKS                       R15 R15 K24 ["Telemetry"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R3 K25 ["Style"]
       75 GETTABLEKS                       R15 R15 K26 ["Themes"]
       77 GETTABLEKS                       R15 R15 K27 ["StudioTheme"]
       79 GETTABLEKS                       R16 R4 K28 ["Util"]
       81 GETTABLEKS                       R16 R16 K29 ["StudioUri"]
       83 GETTABLEKS                       R17 R3 K30 ["Styling"]
       85 GETTABLEKS                       R17 R17 K31 ["registerPluginStyles"]
       87 GETTABLEKS                       R18 R0 K23 ["Src"]
       89 GETTABLEKS                       R18 R18 K32 ["Resources"]
       91 GETTABLEKS                       R18 R18 K15 ["Localization"]
       93 GETTABLEKS                       R18 R18 K33 ["SourceStrings"]
       95 GETTABLEKS                       R19 R0 K23 ["Src"]
       97 GETTABLEKS                       R19 R19 K32 ["Resources"]
       99 GETTABLEKS                       R19 R19 K15 ["Localization"]
      101 GETTABLEKS                       R19 R19 K34 ["LocalizedStrings"]
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R0 K23 ["Src"]
      107 GETTABLEKS                       R21 R21 K35 ["Host"]
      109 GETTABLEKS                       R21 R21 K36 ["App"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R0 K37 ["Bin"]
      116 GETTABLEKS                       R22 R22 K38 ["Common"]
      118 GETTABLEKS                       R22 R22 K39 ["StudioNetworking"]
      120 CALL                             R21 1 1
      121 GETIMPORT                        R22 K5 [require]
      123 GETTABLEKS                       R23 R0 K23 ["Src"]
      125 GETTABLEKS                       R23 R23 K40 ["Guest"]
      127 GETTABLEKS                       R23 R23 K41 ["createGuestInterface"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K5 [require]
      132 GETTABLEKS                       R24 R0 K23 ["Src"]
      134 GETTABLEKS                       R24 R24 K14 ["Contexts"]
      136 GETTABLEKS                       R24 R24 K42 ["Networking"]
      138 CALL                             R23 1 1
      139 GETIMPORT                        R24 K5 [require]
      141 GETTABLEKS                       R25 R0 K23 ["Src"]
      143 GETTABLEKS                       R25 R25 K14 ["Contexts"]
      145 GETTABLEKS                       R25 R25 K40 ["Guest"]
      147 CALL                             R24 1 1
      148 GETIMPORT                        R25 K5 [require]
      150 GETTABLEKS                       R26 R0 K23 ["Src"]
      152 GETTABLEKS                       R26 R26 K14 ["Contexts"]
      154 GETTABLEKS                       R26 R26 K43 ["DatamodelConfiguration"]
      156 CALL                             R25 1 1
      157 GETTABLEKS                       R26 R1 K44 ["PureComponent"]
      159 LOADK                            R28 K45 ["MainPlugin"]
      160 NAMECALL                         R26 R26 K46 ["extend"]
      162 CALL                             R26 2 1
      163 GETTABLEKS                       R27 R16 K47 ["fromAction"]
      165 LOADK                            R28 K2 ["InputActionManager"]
      166 LOADK                            R29 K48 ["Toggle"]
      167 CALL                             R27 2 1
      168 GETTABLEKS                       R28 R0 K23 ["Src"]
      170 GETTABLEKS                       R28 R28 K49 ["Flags"]
      172 GETIMPORT                        R29 K5 [require]
      174 GETTABLEKS                       R30 R28 K50 ["getFFlagIAMTelemetry"]
      176 CALL                             R29 1 1
      177 GETIMPORT                        R30 K5 [require]
      179 GETTABLEKS                       R31 R28 K51 ["getFFlagIAMFocusedDatamodelChanged"]
      181 CALL                             R30 1 1
      182 DUPCLOSURE                       R31 K52 [PROTO_12]
      183 CAPTURE                          VAL R27
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R17
      193 SETTABLEKS                       R31 R26 K53 ["init"]
      195 DUPCLOSURE                       R31 K54 [PROTO_13]
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R30
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R20
      214 SETTABLEKS                       R31 R26 K55 ["render"]
      216 DUPCLOSURE                       R31 K56 [PROTO_14]
      217 CAPTURE                          VAL R21
      218 SETTABLEKS                       R31 R26 K57 ["willUnmount"]
      220 RETURN                           R26 1
