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
        1 GETTABLEKS                       R1 R1 K0 ["isUnmounted"]
        3 JUMPIF                           R1 ; [+9]
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"enabled"}]
        6 GETTABLEKS                       R4 R0 K3 ["Checked"]
        8 SETTABLEKS                       R4 R3 K1 ["enabled"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R0 R1 K2 ["syncStateWithActionConnection"]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K3 ["isUnmounted"]
       16 JUMPIFNOT                        R1 ; [+3]
       17 NAMECALL                         R1 R0 K4 ["Disconnect"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K3 [{[1] = False, ["focusedType"] = False}]
        1 SETTABLEKS                       R2 R0 K4 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K5 ["toggleEnabled"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R0 K6 ["isUnmounted"]
       10 GETTABLEKS                       R2 R1 K7 ["Plugin"]
       12 LOADK                            R4 K8 ["Actions"]
       13 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       15 CALL                             R2 2 1
       16 GETIMPORT                        R3 K12 [task.spawn]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CALL                             R3 1 0
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R3 R0 K13 ["onClose"]
       29 NEWCLOSURE                       R3 P3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R3 R0 K14 ["onRestore"]
       35 NEWCLOSURE                       R3 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R3 R0 K15 ["onWidgetEnabledChanged"]
       41 NEWCLOSURE                       R3 P5
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R3 R0 K16 ["onDockWidgetCreated"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K17 ["Localization"]
       48 GETTABLEKS                       R3 R3 K18 ["new"]
       50 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "CollectionDebugger"}]
       51 GETUPVAL                         R5 2
       52 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       54 GETUPVAL                         R5 3
       55 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R0 K24 ["localization"]
       60 GETUPVAL                         R3 4
       61 GETTABLEKS                       R3 R3 K17 ["Localization"]
       63 GETTABLEKS                       R3 R3 K18 ["new"]
       65 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "CollectionDebugger"}]
       66 GETUPVAL                         R5 2
       67 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       69 GETUPVAL                         R5 3
       70 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R0 K25 ["localizationLEGACY"]
       75 GETUPVAL                         R3 5
       76 GETTABLEKS                       R3 R3 K18 ["new"]
       78 CALL                             R3 0 1
       79 SETTABLEKS                       R3 R0 K26 ["DEPRECATED_stylizer"]
       81 GETUPVAL                         R3 6
       82 GETTABLEKS                       R3 R3 K27 ["Util"]
       84 GETTABLEKS                       R3 R3 K28 ["createFoundationDesignBinding"]
       86 CALL                             R3 0 2
       87 SETTABLEKS                       R4 R0 K29 ["onFoundationStyleSheetChange"]
       89 GETUPVAL                         R5 7
       90 GETTABLEKS                       R6 R1 K7 ["Plugin"]
       92 LOADNIL                          R7
       93 LOADNIL                          R8
       94 NEWTABLE                         R9 0 1
       96 MOVE                             R10 R3
       97 SETLIST                          R9 R10 1 [1]
       99 CALL                             R5 4 1
      100 SETTABLEKS                       R5 R0 K30 ["design"]
      102 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"focusedType"}]
        2 ORK                              R4 R0 K2 [False]
        3 SETTABLEKS                       R4 R3 K0 ["focusedType"]
        5 NAMECALL                         R1 R1 K3 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Plugin"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["disconnectFocus"]
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["enabled"]
        8 GETTABLEKS                       R4 R0 K2 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["focusedType"]
       12 GETTABLEKS                       R5 R0 K5 ["localization"]
       14 LOADK                            R7 K1 ["Plugin"]
       15 LOADK                            R8 K6 ["Name"]
       16 NAMECALL                         R5 R5 K7 ["getText"]
       18 CALL                             R5 3 1
       19 MOVE                             R6 R5
       20 JUMPIFNOTEQKS                    R4 K8 ["PlayClient"] ; [+13]
       22 GETTABLEKS                       R7 R0 K5 ["localization"]
       24 LOADK                            R9 K1 ["Plugin"]
       25 LOADK                            R10 K9 ["TitleClient"]
       26 DUPTABLE                         R11 K11 [{"name"}]
       27 SETTABLEKS                       R5 R11 K10 ["name"]
       29 NAMECALL                         R7 R7 K7 ["getText"]
       31 CALL                             R7 4 1
       32 MOVE                             R6 R7
       33 JUMP                             ; [+13]
       34 JUMPIFNOTEQKS                    R4 K12 ["PlayServer"] ; [+12]
       36 GETTABLEKS                       R7 R0 K5 ["localization"]
       38 LOADK                            R9 K1 ["Plugin"]
       39 LOADK                            R10 K13 ["TitleServer"]
       40 DUPTABLE                         R11 K11 [{"name"}]
       41 SETTABLEKS                       R5 R11 K10 ["name"]
       43 NAMECALL                         R7 R7 K7 ["getText"]
       45 CALL                             R7 4 1
       46 MOVE                             R6 R7
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K14 ["provide"]
       50 NEWTABLE                         R8 0 4
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K15 ["new"]
       55 MOVE                             R10 R2
       56 CALL                             R9 1 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K15 ["new"]
       60 NAMECALL                         R11 R2 K16 ["getMouse"]
       62 CALL                             R11 1 -1
       63 CALL                             R10 -1 1
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K15 ["new"]
       67 GETTABLEKS                       R12 R0 K17 ["design"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R0 K18 ["localizationLEGACY"]
       72 SETLIST                          R8 R9 4 [1]
       74 DUPTABLE                         R9 K20 [{"MainWidget"}]
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R10 R10 K21 ["createElement"]
       78 GETUPVAL                         R11 5
       79 NEWTABLE                         R12 16 0
       81 LOADK                            R13 K22 ["Collections"]
       82 SETTABLEKS                       R13 R12 K23 ["Id"]
       84 SETTABLEKS                       R3 R12 K24 ["Enabled"]
       86 SETTABLEKS                       R6 R12 K25 ["Title"]
       88 GETIMPORT                        R13 K29 [Enum.ZIndexBehavior.Sibling]
       90 SETTABLEKS                       R13 R12 K27 ["ZIndexBehavior"]
       92 GETIMPORT                        R13 K32 [Enum.InitialDockState.Right]
       94 SETTABLEKS                       R13 R12 K30 ["InitialDockState"]
       96 GETIMPORT                        R13 K34 [Vector2.new]
       98 LOADN                            R14 1200
       99 LOADN                            R15 250
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K35 ["Size"]
      103 GETIMPORT                        R13 K34 [Vector2.new]
      105 LOADN                            R14 200
      106 LOADN                            R15 100
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K36 ["MinSize"]
      110 GETTABLEKS                       R13 R0 K37 ["onClose"]
      112 SETTABLEKS                       R13 R12 K38 ["OnClose"]
      114 LOADB                            R13 1
      115 SETTABLEKS                       R13 R12 K39 ["ShouldRestore"]
      117 GETTABLEKS                       R13 R0 K40 ["onRestore"]
      119 SETTABLEKS                       R13 R12 K41 ["OnWidgetRestored"]
      121 GETTABLEKS                       R13 R1 K42 ["PluginLoaderContext"]
      123 GETTABLEKS                       R13 R13 K43 ["mainDockWidget"]
      125 SETTABLEKS                       R13 R12 K44 ["Widget"]
      127 GETTABLEKS                       R13 R0 K45 ["onDockWidgetCreated"]
      129 SETTABLEKS                       R13 R12 K46 ["OnWidgetCreated"]
      131 GETTABLEKS                       R13 R0 K17 ["design"]
      133 SETTABLEKS                       R13 R12 K47 ["PluginDesign"]
      135 GETUPVAL                         R13 4
      136 GETTABLEKS                       R13 R13 K48 ["Change"]
      138 GETTABLEKS                       R13 R13 K24 ["Enabled"]
      140 GETTABLEKS                       R14 R0 K49 ["onWidgetEnabledChanged"]
      142 SETTABLE                         R14 R12 R13
      143 DUPTABLE                         R13 K51 [{"FoundationProvider"}]
      144 GETUPVAL                         R14 4
      145 GETTABLEKS                       R14 R14 K21 ["createElement"]
      147 GETUPVAL                         R15 6
      148 DUPTABLE                         R16 K54 [{"onStyleSheetChange", "plugin"}]
      149 GETTABLEKS                       R17 R0 K55 ["onFoundationStyleSheetChange"]
      151 SETTABLEKS                       R17 R16 K52 ["onStyleSheetChange"]
      153 SETTABLEKS                       R2 R16 K53 ["plugin"]
      155 DUPTABLE                         R17 K57 [{"LocalizationProvider"}]
      156 GETUPVAL                         R18 4
      157 GETTABLEKS                       R18 R18 K21 ["createElement"]
      159 GETUPVAL                         R19 7
      160 GETTABLEKS                       R19 R19 K58 ["Provider"]
      162 DUPTABLE                         R20 K59 [{"localization"}]
      163 GETTABLEKS                       R21 R0 K5 ["localization"]
      165 SETTABLEKS                       R21 R20 K5 ["localization"]
      167 DUPTABLE                         R21 K60 [{"Collections"}]
      168 GETUPVAL                         R22 4
      169 GETTABLEKS                       R22 R22 K21 ["createElement"]
      171 GETUPVAL                         R23 8
      172 GETTABLEKS                       R23 R23 K58 ["Provider"]
      174 DUPTABLE                         R24 K61 [{"plugin", "focusedType"}]
      175 SETTABLEKS                       R2 R24 K53 ["plugin"]
      177 SETTABLEKS                       R4 R24 K4 ["focusedType"]
      179 DUPTABLE                         R25 K63 [{"App"}]
      180 GETUPVAL                         R26 4
      181 GETTABLEKS                       R26 R26 K21 ["createElement"]
      183 GETUPVAL                         R27 9
      184 DUPTABLE                         R28 K59 [{"localization"}]
      185 GETTABLEKS                       R29 R0 K5 ["localization"]
      187 SETTABLEKS                       R29 R28 K5 ["localization"]
      189 CALL                             R26 2 1
      190 SETTABLEKS                       R26 R25 K62 ["App"]
      192 CALL                             R22 3 1
      193 SETTABLEKS                       R22 R21 K22 ["Collections"]
      195 CALL                             R18 3 1
      196 SETTABLEKS                       R18 R17 K56 ["LocalizationProvider"]
      198 CALL                             R14 3 1
      199 SETTABLEKS                       R14 R13 K50 ["FoundationProvider"]
      201 CALL                             R10 3 1
      202 SETTABLEKS                       R10 R9 K19 ["MainWidget"]
      204 CALL                             R7 2 -1
      205 RETURN                           R7 -1

PROTO_15:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isUnmounted"]
        3 GETTABLEKS                       R1 R0 K1 ["actionActivatedConnection"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["actionActivatedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K3 ["syncStateWithActionConnection"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETTABLEKS                       R1 R0 K3 ["syncStateWithActionConnection"]
       16 NAMECALL                         R1 R1 K2 ["Disconnect"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K4 ["disconnectFocus"]
       21 JUMPIFNOT                        R1 ; [+3]
       22 GETTABLEKS                       R1 R0 K4 ["disconnectFocus"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R3 K14 ["Util"]
       38 GETTABLEKS                       R6 R6 K15 ["StudioUri"]
       40 GETTABLEKS                       R7 R1 K16 ["UI"]
       42 GETTABLEKS                       R7 R7 K17 ["DockWidget"]
       44 GETTABLEKS                       R8 R1 K18 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K19 ["Plugin"]
       48 GETTABLEKS                       R10 R8 K20 ["Mouse"]
       50 GETTABLEKS                       R11 R8 K21 ["Design"]
       52 GETTABLEKS                       R12 R1 K22 ["Style"]
       54 GETTABLEKS                       R12 R12 K23 ["Themes"]
       56 GETTABLEKS                       R12 R12 K24 ["StudioTheme"]
       58 GETTABLEKS                       R13 R1 K25 ["Styling"]
       60 GETTABLEKS                       R13 R13 K26 ["registerPluginStyles"]
       62 GETTABLEKS                       R14 R0 K27 ["Src"]
       64 GETTABLEKS                       R14 R14 K28 ["Resources"]
       66 GETTABLEKS                       R14 R14 K13 ["Localization"]
       68 GETTABLEKS                       R14 R14 K29 ["SourceStrings"]
       70 GETTABLEKS                       R15 R0 K27 ["Src"]
       72 GETTABLEKS                       R15 R15 K28 ["Resources"]
       74 GETTABLEKS                       R15 R15 K13 ["Localization"]
       76 GETTABLEKS                       R15 R15 K30 ["LocalizedStrings"]
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R17 R0 K27 ["Src"]
       82 GETTABLEKS                       R17 R17 K31 ["Host"]
       84 GETTABLEKS                       R17 R17 K32 ["App"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R0 K27 ["Src"]
       91 GETTABLEKS                       R18 R18 K31 ["Host"]
       93 GETTABLEKS                       R18 R18 K33 ["CollectionsProvider"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R19 R0 K27 ["Src"]
      100 GETTABLEKS                       R19 R19 K31 ["Host"]
      102 GETTABLEKS                       R19 R19 K34 ["trackFocusedDataModelType"]
      104 CALL                             R18 1 1
      105 GETTABLEKS                       R19 R6 K35 ["fromAction"]
      107 LOADK                            R20 K2 ["CollectionDebugger"]
      108 LOADK                            R21 K36 ["Toggle"]
      109 CALL                             R19 2 1
      110 GETTABLEKS                       R20 R2 K37 ["PureComponent"]
      112 LOADK                            R22 K38 ["MainPlugin"]
      113 NAMECALL                         R20 R20 K39 ["extend"]
      115 CALL                             R20 2 1
      116 DUPCLOSURE                       R21 K40 [PROTO_11]
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R13
      125 SETTABLEKS                       R21 R20 K41 ["init"]
      127 DUPCLOSURE                       R21 K42 [PROTO_13]
      128 CAPTURE                          VAL R18
      129 SETTABLEKS                       R21 R20 K43 ["didMount"]
      131 DUPCLOSURE                       R21 K44 [PROTO_14]
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R16
      142 SETTABLEKS                       R21 R20 K45 ["render"]
      144 DUPCLOSURE                       R21 K46 [PROTO_15]
      145 SETTABLEKS                       R21 R20 K47 ["willUnmount"]
      147 RETURN                           R20 1
