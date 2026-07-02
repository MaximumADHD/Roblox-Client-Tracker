PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["closeDMConnection"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["state"]
        9 GETTABLEKS                       R0 R0 K1 ["closeDMConnection"]
       11 NAMECALL                         R0 R0 K2 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["Plugin"]
       17 LOADK                            R2 K4 ["OnStopEditing"]
       18 NAMECALL                         R0 R0 K5 ["Invoke"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 DUPTABLE                         R2 K12 [{["enabled"] = False, ["instanceName"] = "", ["initialData"], ["closeDMConnection"] = }]
       23 GETUPVAL                         R3 2
       24 SETTABLEKS                       R3 R2 K10 ["initialData"]
       26 NAMECALL                         R0 R0 K13 ["setState"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 LOADK                            R3 K1 ["OnEdit"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 LOADK                            R3 K1 ["OnAttachAnalyzer"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"displaySettings"}]
        2 SETTABLEKS                       R0 R3 K0 ["displaySettings"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setDisabled"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"forceRerender"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["state"]
        9 GETTABLEKS                       R5 R5 K1 ["forceRerender"]
       11 NOT                              R4 R5
       12 SETTABLEKS                       R4 R3 K1 ["forceRerender"]
       14 NAMECALL                         R1 R1 K4 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDisabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 GETTABLEKS                       R1 R0 K2 ["FocusedDataModelSession"]
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETTABLEKS                       R2 R1 K3 ["CurrentDataModelTypeAboutToChange"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 DUPTABLE                         R5 K6 [{"closeDMConnection"}]
       17 SETTABLEKS                       R2 R5 K5 ["closeDMConnection"]
       19 NAMECALL                         R3 R3 K7 ["setState"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["closeOnDMChange"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K5 [{["enabled"] = True, ["instanceName"], ["initialData"]}]
        6 SETTABLEKS                       R1 R4 K3 ["instanceName"]
        8 SETTABLEKS                       R0 R4 K4 ["initialData"]
       10 NAMECALL                         R2 R2 K6 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"initialData"}]
        2 SETTABLEKS                       R0 R3 K0 ["initialData"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R2 K10 [{[1] = "AudioLimiter", ["Threshold"] = 0, ["Ratio"] = 0, ["Attack"] = 0, ["Release"] = 0, ["MakeupGain"] = 0, ["Bypass"] = False}]
        1 DUPTABLE                         R3 K17 [{["ShowEnvelope"] = True, ["ShowInputWaveform"] = False, ["ShowOutputWaveform"] = False, ["ShowGainChange"] = True, ["IsPaused"] = False}]
        2 DUPTABLE                         R4 K26 [{["enabled"] = False, ["instanceName"] = "", ["initialData"], ["displaySettings"], ["closeDMConnection"] = , ["forceRerender"] = False}]
        3 SETTABLEKS                       R2 R4 K21 ["initialData"]
        5 SETTABLEKS                       R3 R4 K22 ["displaySettings"]
        7 SETTABLEKS                       R4 R0 K27 ["state"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R0 K28 ["setDisabled"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R4 R0 K29 ["onChanged"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R0 K30 ["onAttachAnalyzer"]
       23 NEWCLOSURE                       R4 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R0 K31 ["updateDisplaySettings"]
       27 NEWCLOSURE                       R4 P4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R0 K32 ["onWidgetEnabledChanged"]
       31 NEWCLOSURE                       R4 P5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R0 K33 ["closeOnDMChange"]
       36 GETTABLEKS                       R4 R1 K34 ["Plugin"]
       38 LOADK                            R6 K35 ["OnOpen"]
       39 NEWCLOSURE                       R7 P6
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R4 R4 K36 ["OnInvoke"]
       43 CALL                             R4 3 0
       44 GETTABLEKS                       R4 R1 K34 ["Plugin"]
       46 LOADK                            R6 K37 ["OnInstanceChanged"]
       47 NEWCLOSURE                       R7 P7
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R4 R4 K36 ["OnInvoke"]
       51 CALL                             R4 3 0
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K38 ["Localization"]
       55 GETTABLEKS                       R4 R4 K39 ["new"]
       57 DUPTABLE                         R5 K44 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AudioCompressorEditor"}]
       58 GETUPVAL                         R6 1
       59 SETTABLEKS                       R6 R5 K40 ["stringResourceTable"]
       61 GETUPVAL                         R6 2
       62 SETTABLEKS                       R6 R5 K41 ["translationResourceTable"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R0 K45 ["localization"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K46 ["Analytics"]
       70 GETTABLEKS                       R4 R4 K39 ["new"]
       72 DUPCLOSURE                       R5 K47 [PROTO_9]
       73 NEWTABLE                         R6 0 0
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R0 K48 ["analytics"]
       78 GETUPVAL                         R4 3
       79 GETTABLEKS                       R4 R4 K39 ["new"]
       81 CALL                             R4 0 1
       82 SETTABLEKS                       R4 R0 K49 ["DEPRECATED_stylizer"]
       84 GETUPVAL                         R4 4
       85 GETTABLEKS                       R5 R1 K34 ["Plugin"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R0 K50 ["design"]
       90 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 LOADK                            R5 K4 ["AudioCompressorEditor"]
        9 JUMPIFNOT                        R4 ; [+14]
       10 LOADK                            R6 K5 ["%* - %*"]
       11 GETTABLEKS                       R8 R0 K6 ["localization"]
       13 LOADK                            R10 K2 ["Plugin"]
       14 LOADK                            R11 K4 ["AudioCompressorEditor"]
       15 NAMECALL                         R8 R8 K7 ["getText"]
       17 CALL                             R8 3 1
       18 GETTABLEKS                       R9 R2 K8 ["instanceName"]
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 3 1
       23 MOVE                             R5 R6
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K10 ["provide"]
       27 NEWTABLE                         R7 0 5
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K11 ["new"]
       32 MOVE                             R9 R3
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K11 ["new"]
       37 NAMECALL                         R10 R3 K12 ["getMouse"]
       39 CALL                             R10 1 -1
       40 CALL                             R9 -1 1
       41 GETTABLEKS                       R10 R0 K13 ["DEPRECATED_stylizer"]
       43 GETTABLEKS                       R11 R0 K6 ["localization"]
       45 GETTABLEKS                       R12 R0 K14 ["analytics"]
       47 SETLIST                          R7 R8 5 [1]
       49 DUPTABLE                         R8 K16 [{"MainWidget"}]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K17 ["createElement"]
       53 GETUPVAL                         R10 4
       54 NEWTABLE                         R11 16 0
       56 LOADK                            R12 K4 ["AudioCompressorEditor"]
       57 SETTABLEKS                       R12 R11 K18 ["Id"]
       59 SETTABLEKS                       R4 R11 K19 ["Enabled"]
       61 SETTABLEKS                       R5 R11 K20 ["Title"]
       63 GETIMPORT                        R12 K24 [Enum.ZIndexBehavior.Sibling]
       65 SETTABLEKS                       R12 R11 K22 ["ZIndexBehavior"]
       67 GETIMPORT                        R12 K27 [Enum.InitialDockState.Float]
       69 SETTABLEKS                       R12 R11 K25 ["InitialDockState"]
       71 GETIMPORT                        R12 K29 [Vector2.new]
       73 LOADN                            R13 640
       74 LOADN                            R14 480
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K30 ["Size"]
       78 GETIMPORT                        R12 K29 [Vector2.new]
       80 LOADN                            R13 250
       81 LOADN                            R14 200
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K31 ["MinSize"]
       85 GETTABLEKS                       R12 R0 K32 ["setDisabled"]
       87 SETTABLEKS                       R12 R11 K33 ["OnClose"]
       89 GETTABLEKS                       R12 R1 K34 ["PluginLoaderContext"]
       91 GETTABLEKS                       R12 R12 K35 ["mainDockWidget"]
       93 SETTABLEKS                       R12 R11 K36 ["Widget"]
       95 GETTABLEKS                       R12 R0 K37 ["onDockWidgetCreated"]
       97 SETTABLEKS                       R12 R11 K38 ["OnWidgetCreated"]
       99 LOADB                            R12 0
      100 SETTABLEKS                       R12 R11 K39 ["ShouldRestore"]
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R12 R12 K40 ["Change"]
      105 GETTABLEKS                       R12 R12 K19 ["Enabled"]
      107 GETTABLEKS                       R13 R0 K41 ["onWidgetEnabledChanged"]
      109 SETTABLE                         R13 R11 R12
      110 DUPTABLE                         R12 K44 [{"Wrapper", "StyleLink"}]
      111 GETUPVAL                         R13 3
      112 GETTABLEKS                       R13 R13 K17 ["createElement"]
      114 GETUPVAL                         R14 5
      115 NEWTABLE                         R15 1 0
      117 GETUPVAL                         R16 3
      118 GETTABLEKS                       R16 R16 K45 ["Tag"]
      120 LOADK                            R17 K46 ["X-Fill X-Column"]
      121 SETTABLE                         R17 R15 R16
      122 DUPTABLE                         R16 K47 [{"AudioCompressorEditor"}]
      123 GETUPVAL                         R17 3
      124 GETTABLEKS                       R17 R17 K17 ["createElement"]
      126 GETUPVAL                         R18 6
      127 DUPTABLE                         R19 K52 [{"Enabled", "Data", "OnChanged", "DisplaySettings", "SetDisplaySettings"}]
      128 SETTABLEKS                       R4 R19 K19 ["Enabled"]
      130 GETTABLEKS                       R20 R2 K53 ["initialData"]
      132 SETTABLEKS                       R20 R19 K48 ["Data"]
      134 GETTABLEKS                       R20 R0 K54 ["onChanged"]
      136 SETTABLEKS                       R20 R19 K49 ["OnChanged"]
      138 GETTABLEKS                       R20 R0 K1 ["state"]
      140 GETTABLEKS                       R20 R20 K55 ["displaySettings"]
      142 SETTABLEKS                       R20 R19 K50 ["DisplaySettings"]
      144 GETTABLEKS                       R20 R0 K56 ["updateDisplaySettings"]
      146 SETTABLEKS                       R20 R19 K51 ["SetDisplaySettings"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K4 ["AudioCompressorEditor"]
      151 CALL                             R13 3 1
      152 SETTABLEKS                       R13 R12 K42 ["Wrapper"]
      154 GETUPVAL                         R13 3
      155 GETTABLEKS                       R13 R13 K17 ["createElement"]
      157 LOADK                            R14 K43 ["StyleLink"]
      158 DUPTABLE                         R15 K58 [{"StyleSheet"}]
      159 GETTABLEKS                       R16 R0 K59 ["design"]
      161 SETTABLEKS                       R16 R15 K57 ["StyleSheet"]
      163 CALL                             R13 2 1
      164 SETTABLEKS                       R13 R12 K43 ["StyleLink"]
      166 CALL                             R9 3 1
      167 SETTABLEKS                       R9 R8 K15 ["MainWidget"]
      169 CALL                             R6 2 -1
      170 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["DockWidget"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["Pane"]
       29 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R6 R5 K13 ["Plugin"]
       33 GETTABLEKS                       R7 R5 K14 ["Mouse"]
       35 GETTABLEKS                       R8 R2 K15 ["Style"]
       37 GETTABLEKS                       R8 R8 K16 ["Themes"]
       39 GETTABLEKS                       R8 R8 K17 ["StudioTheme"]
       41 GETTABLEKS                       R9 R2 K18 ["Styling"]
       43 GETTABLEKS                       R9 R9 K19 ["registerPluginStyles"]
       45 GETTABLEKS                       R10 R0 K20 ["Src"]
       47 GETTABLEKS                       R10 R10 K21 ["Resources"]
       49 GETTABLEKS                       R10 R10 K22 ["Localization"]
       51 GETTABLEKS                       R10 R10 K23 ["SourceStrings"]
       53 GETTABLEKS                       R11 R0 K20 ["Src"]
       55 GETTABLEKS                       R11 R11 K21 ["Resources"]
       57 GETTABLEKS                       R11 R11 K22 ["Localization"]
       59 GETTABLEKS                       R11 R11 K24 ["LocalizedStrings"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R0 K20 ["Src"]
       65 GETTABLEKS                       R13 R13 K25 ["Types"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R0 K20 ["Src"]
       70 GETTABLEKS                       R13 R13 K26 ["Components"]
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R13 K2 ["AudioCompressorEditor"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R1 K27 ["PureComponent"]
       79 LOADK                            R17 K28 ["MainPlugin"]
       80 NAMECALL                         R15 R15 K29 ["extend"]
       82 CALL                             R15 2 1
       83 DUPCLOSURE                       R16 K30 [PROTO_10]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R16 R15 K31 ["init"]
       91 DUPCLOSURE                       R16 K32 [PROTO_11]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R14
       99 SETTABLEKS                       R16 R15 K33 ["render"]
      101 RETURN                           R15 1
