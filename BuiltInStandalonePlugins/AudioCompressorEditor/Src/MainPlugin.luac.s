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
      110 GETUPVAL                         R13 5
      111 JUMPIFNOT                        R13 ; [+3]
      112 GETTABLEKS                       R12 R0 K42 ["design"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R12
      116 SETTABLEKS                       R12 R11 K43 ["PluginDesign"]
      118 DUPTABLE                         R12 K46 [{"Wrapper", "StyleLink"}]
      119 GETUPVAL                         R13 3
      120 GETTABLEKS                       R13 R13 K17 ["createElement"]
      122 GETUPVAL                         R14 6
      123 NEWTABLE                         R15 1 0
      125 GETUPVAL                         R16 3
      126 GETTABLEKS                       R16 R16 K47 ["Tag"]
      128 LOADK                            R17 K48 ["X-Fill X-Column"]
      129 SETTABLE                         R17 R15 R16
      130 DUPTABLE                         R16 K49 [{"AudioCompressorEditor"}]
      131 GETUPVAL                         R17 3
      132 GETTABLEKS                       R17 R17 K17 ["createElement"]
      134 GETUPVAL                         R18 7
      135 DUPTABLE                         R19 K54 [{"Enabled", "Data", "OnChanged", "DisplaySettings", "SetDisplaySettings"}]
      136 SETTABLEKS                       R4 R19 K19 ["Enabled"]
      138 GETTABLEKS                       R20 R2 K55 ["initialData"]
      140 SETTABLEKS                       R20 R19 K50 ["Data"]
      142 GETTABLEKS                       R20 R0 K56 ["onChanged"]
      144 SETTABLEKS                       R20 R19 K51 ["OnChanged"]
      146 GETTABLEKS                       R20 R0 K1 ["state"]
      148 GETTABLEKS                       R20 R20 K57 ["displaySettings"]
      150 SETTABLEKS                       R20 R19 K52 ["DisplaySettings"]
      152 GETTABLEKS                       R20 R0 K58 ["updateDisplaySettings"]
      154 SETTABLEKS                       R20 R19 K53 ["SetDisplaySettings"]
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K4 ["AudioCompressorEditor"]
      159 CALL                             R13 3 1
      160 SETTABLEKS                       R13 R12 K44 ["Wrapper"]
      162 GETUPVAL                         R14 5
      163 JUMPIF                           R14 ; [+11]
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R13 R13 K17 ["createElement"]
      167 LOADK                            R14 K45 ["StyleLink"]
      168 DUPTABLE                         R15 K60 [{"StyleSheet"}]
      169 GETTABLEKS                       R16 R0 K42 ["design"]
      171 SETTABLEKS                       R16 R15 K59 ["StyleSheet"]
      173 CALL                             R13 2 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R13
      176 SETTABLEKS                       R13 R12 K45 ["StyleLink"]
      178 CALL                             R9 3 1
      179 SETTABLEKS                       R9 R8 K15 ["MainWidget"]
      181 CALL                             R6 2 -1
      182 RETURN                           R6 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K10 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R4 R2 K11 ["UI"]
       28 GETTABLEKS                       R4 R4 K12 ["DockWidget"]
       30 GETTABLEKS                       R5 R2 K11 ["UI"]
       32 GETTABLEKS                       R5 R5 K13 ["Pane"]
       34 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       38 GETTABLEKS                       R8 R6 K16 ["Mouse"]
       40 GETTABLEKS                       R9 R2 K17 ["Style"]
       42 GETTABLEKS                       R9 R9 K18 ["Themes"]
       44 GETTABLEKS                       R9 R9 K19 ["StudioTheme"]
       46 GETTABLEKS                       R10 R2 K20 ["Styling"]
       48 GETTABLEKS                       R10 R10 K21 ["registerPluginStyles"]
       50 GETTABLEKS                       R11 R0 K22 ["Src"]
       52 GETTABLEKS                       R11 R11 K23 ["Resources"]
       54 GETTABLEKS                       R11 R11 K24 ["Localization"]
       56 GETTABLEKS                       R11 R11 K25 ["SourceStrings"]
       58 GETTABLEKS                       R12 R0 K22 ["Src"]
       60 GETTABLEKS                       R12 R12 K23 ["Resources"]
       62 GETTABLEKS                       R12 R12 K24 ["Localization"]
       64 GETTABLEKS                       R12 R12 K26 ["LocalizedStrings"]
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R0 K22 ["Src"]
       70 GETTABLEKS                       R14 R14 K27 ["Types"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R0 K22 ["Src"]
       75 GETTABLEKS                       R14 R14 K28 ["Components"]
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R14 K2 ["AudioCompressorEditor"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R16 R1 K29 ["PureComponent"]
       84 LOADK                            R18 K30 ["MainPlugin"]
       85 NAMECALL                         R16 R16 K31 ["extend"]
       87 CALL                             R16 2 1
       88 DUPCLOSURE                       R17 K32 [PROTO_10]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R17 R16 K33 ["init"]
       96 DUPCLOSURE                       R17 K34 [PROTO_11]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R15
      105 SETTABLEKS                       R17 R16 K35 ["render"]
      107 RETURN                           R16 1
