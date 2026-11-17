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
       22 DUPTABLE                         R2 K14 [{["enabled"] = False, ["instanceId"] = -1, ["instanceName"] = "", ["initialData"], ["closeDMConnection"] = }]
       23 GETUPVAL                         R3 2
       24 SETTABLEKS                       R3 R2 K12 ["initialData"]
       26 NAMECALL                         R0 R0 K15 ["setState"]
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
        1 DUPTABLE                         R3 K1 [{"analysisEnabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["analysisEnabled"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["closeOnDMChange"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["setInstanceType"]
        7 GETTABLEKS                       R4 R0 K2 ["InstanceType"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 0
       11 DUPTABLE                         R5 K8 [{["enabled"] = True, ["instanceId"], ["instanceName"], ["initialData"]}]
       12 SETTABLEKS                       R1 R5 K5 ["instanceId"]
       14 SETTABLEKS                       R2 R5 K6 ["instanceName"]
       16 SETTABLEKS                       R0 R5 K7 ["initialData"]
       18 NAMECALL                         R3 R3 K9 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K3 [{[1], ["Bypass"] = False}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["NO_INSTANCE"]
        4 SETTABLEKS                       R3 R2 K0 ["InstanceType"]
        6 DUPTABLE                         R3 K16 [{["enabled"] = False, ["instanceId"] = -1, ["instanceName"] = "", ["initialData"], ["analysisEnabled"] = True, ["closeDMConnection"] = , ["forceRerender"] = False}]
        7 SETTABLEKS                       R2 R3 K10 ["initialData"]
        9 SETTABLEKS                       R3 R0 K17 ["state"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R3 R0 K18 ["setDisabled"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R0 K19 ["onChanged"]
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R0 K20 ["onAttachAnalyzer"]
       25 NEWCLOSURE                       R3 P3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R3 R0 K21 ["setAnalysisEnabled"]
       29 NEWCLOSURE                       R3 P4
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R3 R0 K22 ["onWidgetEnabledChanged"]
       33 NEWCLOSURE                       R3 P5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R0 K23 ["closeOnDMChange"]
       38 GETTABLEKS                       R3 R1 K24 ["Plugin"]
       40 LOADK                            R5 K25 ["OnOpen"]
       41 NEWCLOSURE                       R6 P6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 NAMECALL                         R3 R3 K26 ["OnInvoke"]
       46 CALL                             R3 3 0
       47 GETTABLEKS                       R3 R1 K24 ["Plugin"]
       49 LOADK                            R5 K27 ["OnInstanceChanged"]
       50 NEWCLOSURE                       R6 P7
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R3 R3 K26 ["OnInvoke"]
       54 CALL                             R3 3 0
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K28 ["Localization"]
       58 GETTABLEKS                       R3 R3 K29 ["new"]
       60 DUPTABLE                         R4 K34 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AudioEqualizerEditor"}]
       61 GETUPVAL                         R5 3
       62 SETTABLEKS                       R5 R4 K30 ["stringResourceTable"]
       64 GETUPVAL                         R5 4
       65 SETTABLEKS                       R5 R4 K31 ["translationResourceTable"]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R0 K35 ["localization"]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K36 ["Analytics"]
       73 GETTABLEKS                       R3 R3 K29 ["new"]
       75 DUPCLOSURE                       R4 K37 [PROTO_9]
       76 NEWTABLE                         R5 0 0
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R0 K38 ["analytics"]
       81 GETUPVAL                         R3 5
       82 GETTABLEKS                       R3 R3 K29 ["new"]
       84 CALL                             R3 0 1
       85 SETTABLEKS                       R3 R0 K39 ["DEPRECATED_stylizer"]
       87 GETUPVAL                         R3 6
       88 GETTABLEKS                       R4 R1 K24 ["Plugin"]
       90 CALL                             R3 1 1
       91 SETTABLEKS                       R3 R0 K40 ["design"]
       93 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 0
       10 LOADK                            R6 K4 ["AudioEqualizerEditor_%*"]
       11 GETTABLEKS                       R8 R2 K5 ["instanceId"]
       13 NAMECALL                         R6 R6 K6 ["format"]
       15 CALL                             R6 2 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K7 ["createElement"]
       19 GETUPVAL                         R8 1
       20 DUPTABLE                         R9 K13 [{"Enabled", "Data", "OnChanged", "AnalysisEnabled", "SetAnalysisEnabled"}]
       21 SETTABLEKS                       R4 R9 K8 ["Enabled"]
       23 GETTABLEKS                       R10 R2 K14 ["initialData"]
       25 SETTABLEKS                       R10 R9 K9 ["Data"]
       27 GETTABLEKS                       R10 R0 K15 ["onChanged"]
       29 SETTABLEKS                       R10 R9 K10 ["OnChanged"]
       31 GETTABLEKS                       R10 R0 K1 ["state"]
       33 GETTABLEKS                       R10 R10 K16 ["analysisEnabled"]
       35 SETTABLEKS                       R10 R9 K11 ["AnalysisEnabled"]
       37 GETTABLEKS                       R10 R0 K17 ["setAnalysisEnabled"]
       39 SETTABLEKS                       R10 R9 K12 ["SetAnalysisEnabled"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R5 R6
       43 LOADK                            R6 K18 ["AudioEqualizerEditor"]
       44 JUMPIFNOT                        R4 ; [+21]
       45 LOADK                            R7 K19 ["%* - %*"]
       46 GETTABLEKS                       R9 R0 K20 ["localization"]
       48 LOADK                            R11 K2 ["Plugin"]
       49 LOADK                            R12 K21 ["%*Editor"]
       50 GETTABLEKS                       R14 R2 K14 ["initialData"]
       52 GETTABLEKS                       R14 R14 K22 ["InstanceType"]
       54 NAMECALL                         R12 R12 K6 ["format"]
       56 CALL                             R12 2 1
       57 NAMECALL                         R9 R9 K23 ["getText"]
       59 CALL                             R9 3 1
       60 GETTABLEKS                       R10 R2 K24 ["instanceName"]
       62 NAMECALL                         R7 R7 K6 ["format"]
       64 CALL                             R7 3 1
       65 MOVE                             R6 R7
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K25 ["provide"]
       69 NEWTABLE                         R8 0 5
       71 GETUPVAL                         R9 3
       72 GETTABLEKS                       R9 R9 K26 ["new"]
       74 MOVE                             R10 R3
       75 CALL                             R9 1 1
       76 GETUPVAL                         R10 4
       77 GETTABLEKS                       R10 R10 K26 ["new"]
       79 NAMECALL                         R11 R3 K27 ["getMouse"]
       81 CALL                             R11 1 -1
       82 CALL                             R10 -1 1
       83 GETTABLEKS                       R11 R0 K28 ["DEPRECATED_stylizer"]
       85 GETTABLEKS                       R12 R0 K20 ["localization"]
       87 GETTABLEKS                       R13 R0 K29 ["analytics"]
       89 SETLIST                          R8 R9 5 [1]
       91 DUPTABLE                         R9 K31 [{"MainWidget"}]
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K7 ["createElement"]
       95 GETUPVAL                         R11 5
       96 NEWTABLE                         R12 16 0
       98 LOADK                            R13 K18 ["AudioEqualizerEditor"]
       99 SETTABLEKS                       R13 R12 K32 ["Id"]
      101 SETTABLEKS                       R4 R12 K8 ["Enabled"]
      103 SETTABLEKS                       R6 R12 K33 ["Title"]
      105 GETIMPORT                        R13 K37 [Enum.ZIndexBehavior.Sibling]
      107 SETTABLEKS                       R13 R12 K35 ["ZIndexBehavior"]
      109 GETIMPORT                        R13 K40 [Enum.InitialDockState.Float]
      111 SETTABLEKS                       R13 R12 K38 ["InitialDockState"]
      113 GETIMPORT                        R13 K42 [Vector2.new]
      115 LOADN                            R14 640
      116 LOADN                            R15 480
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K43 ["Size"]
      120 GETIMPORT                        R13 K42 [Vector2.new]
      122 LOADN                            R14 250
      123 LOADN                            R15 200
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K44 ["MinSize"]
      127 GETTABLEKS                       R13 R0 K45 ["setDisabled"]
      129 SETTABLEKS                       R13 R12 K46 ["OnClose"]
      131 GETTABLEKS                       R13 R1 K47 ["PluginLoaderContext"]
      133 GETTABLEKS                       R13 R13 K48 ["mainDockWidget"]
      135 SETTABLEKS                       R13 R12 K49 ["Widget"]
      137 GETTABLEKS                       R13 R0 K50 ["onDockWidgetCreated"]
      139 SETTABLEKS                       R13 R12 K51 ["OnWidgetCreated"]
      141 LOADB                            R13 0
      142 SETTABLEKS                       R13 R12 K52 ["ShouldRestore"]
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K53 ["Change"]
      147 GETTABLEKS                       R13 R13 K8 ["Enabled"]
      149 GETTABLEKS                       R14 R0 K54 ["onWidgetEnabledChanged"]
      151 SETTABLE                         R14 R12 R13
      152 GETUPVAL                         R14 6
      153 JUMPIFNOT                        R14 ; [+3]
      154 GETTABLEKS                       R13 R0 K55 ["design"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R13
      158 SETTABLEKS                       R13 R12 K56 ["PluginDesign"]
      160 DUPTABLE                         R13 K59 [{"Wrapper", "StyleLink"}]
      161 GETUPVAL                         R14 0
      162 GETTABLEKS                       R14 R14 K7 ["createElement"]
      164 GETUPVAL                         R15 7
      165 NEWTABLE                         R16 1 0
      167 GETUPVAL                         R17 0
      168 GETTABLEKS                       R17 R17 K60 ["Tag"]
      170 LOADK                            R18 K61 ["X-Fill X-Column"]
      171 SETTABLE                         R18 R16 R17
      172 NEWTABLE                         R17 0 1
      174 MOVE                             R18 R5
      175 SETLIST                          R17 R18 1 [1]
      177 CALL                             R14 3 1
      178 SETTABLEKS                       R14 R13 K57 ["Wrapper"]
      180 GETUPVAL                         R15 6
      181 JUMPIF                           R15 ; [+11]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R14 R14 K7 ["createElement"]
      185 LOADK                            R15 K58 ["StyleLink"]
      186 DUPTABLE                         R16 K63 [{"StyleSheet"}]
      187 GETTABLEKS                       R17 R0 K55 ["design"]
      189 SETTABLEKS                       R17 R16 K62 ["StyleSheet"]
      191 CALL                             R14 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R14
      194 SETTABLEKS                       R14 R13 K58 ["StyleLink"]
      196 CALL                             R10 3 1
      197 SETTABLEKS                       R10 R9 K30 ["MainWidget"]
      199 CALL                             R7 2 -1
      200 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
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
       79 GETTABLEKS                       R16 R14 K2 ["AudioEqualizerEditor"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R0 K22 ["Src"]
       86 GETTABLEKS                       R17 R17 K29 ["Util"]
       88 GETTABLEKS                       R17 R17 K30 ["PlotUtil"]
       90 CALL                             R16 1 1
       91 GETTABLEKS                       R17 R1 K31 ["PureComponent"]
       93 LOADK                            R19 K32 ["MainPlugin"]
       94 NAMECALL                         R17 R17 K33 ["extend"]
       96 CALL                             R17 2 1
       97 DUPCLOSURE                       R18 K34 [PROTO_10]
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R18 R17 K35 ["init"]
      107 DUPCLOSURE                       R18 K36 [PROTO_11]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R18 R17 K37 ["render"]
      118 RETURN                           R17 1
