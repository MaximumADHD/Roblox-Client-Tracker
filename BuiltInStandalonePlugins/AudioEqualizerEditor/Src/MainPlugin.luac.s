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
       22 DUPTABLE                         R2 K10 [{"enabled", "instanceId", "instanceName", "initialData", "closeDMConnection"}]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K6 ["enabled"]
       26 LOADN                            R3 255
       27 SETTABLEKS                       R3 R2 K7 ["instanceId"]
       29 LOADK                            R3 K11 [""]
       30 SETTABLEKS                       R3 R2 K8 ["instanceName"]
       32 GETUPVAL                         R3 2
       33 SETTABLEKS                       R3 R2 K9 ["initialData"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K1 ["closeDMConnection"]
       38 NAMECALL                         R0 R0 K12 ["setState"]
       40 CALL                             R0 2 0
       41 RETURN                           R0 0

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
       11 DUPTABLE                         R5 K7 [{"enabled", "instanceId", "instanceName", "initialData"}]
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K3 ["enabled"]
       15 SETTABLEKS                       R1 R5 K4 ["instanceId"]
       17 SETTABLEKS                       R2 R5 K5 ["instanceName"]
       19 SETTABLEKS                       R0 R5 K6 ["initialData"]
       21 NAMECALL                         R3 R3 K8 ["setState"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K2 [{"InstanceType", "Bypass"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["NO_INSTANCE"]
        4 SETTABLEKS                       R3 R2 K0 ["InstanceType"]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["Bypass"]
        9 DUPTABLE                         R3 K11 [{"enabled", "instanceId", "instanceName", "initialData", "analysisEnabled", "closeDMConnection", "forceRerender"}]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K4 ["enabled"]
       13 LOADN                            R4 255
       14 SETTABLEKS                       R4 R3 K5 ["instanceId"]
       16 LOADK                            R4 K12 [""]
       17 SETTABLEKS                       R4 R3 K6 ["instanceName"]
       19 SETTABLEKS                       R2 R3 K7 ["initialData"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K8 ["analysisEnabled"]
       24 LOADNIL                          R4
       25 SETTABLEKS                       R4 R3 K9 ["closeDMConnection"]
       27 LOADB                            R4 0
       28 SETTABLEKS                       R4 R3 K10 ["forceRerender"]
       30 SETTABLEKS                       R3 R0 K13 ["state"]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R3 R0 K14 ["setDisabled"]
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R0 K15 ["onChanged"]
       42 NEWCLOSURE                       R3 P2
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R3 R0 K16 ["onAttachAnalyzer"]
       46 NEWCLOSURE                       R3 P3
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R3 R0 K17 ["setAnalysisEnabled"]
       50 NEWCLOSURE                       R3 P4
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R3 R0 K18 ["onWidgetEnabledChanged"]
       54 NEWCLOSURE                       R3 P5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R0 K19 ["closeOnDMChange"]
       59 GETTABLEKS                       R3 R1 K20 ["Plugin"]
       61 LOADK                            R5 K21 ["OnOpen"]
       62 NEWCLOSURE                       R6 P6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U1
       65 NAMECALL                         R3 R3 K22 ["OnInvoke"]
       67 CALL                             R3 3 0
       68 GETTABLEKS                       R3 R1 K20 ["Plugin"]
       70 LOADK                            R5 K23 ["OnInstanceChanged"]
       71 NEWCLOSURE                       R6 P7
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R3 R3 K22 ["OnInvoke"]
       75 CALL                             R3 3 0
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K24 ["Localization"]
       79 GETTABLEKS                       R3 R3 K25 ["new"]
       81 DUPTABLE                         R4 K29 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       82 GETUPVAL                         R5 3
       83 SETTABLEKS                       R5 R4 K26 ["stringResourceTable"]
       85 GETUPVAL                         R5 4
       86 SETTABLEKS                       R5 R4 K27 ["translationResourceTable"]
       88 LOADK                            R5 K30 ["AudioEqualizerEditor"]
       89 SETTABLEKS                       R5 R4 K28 ["pluginName"]
       91 CALL                             R3 1 1
       92 SETTABLEKS                       R3 R0 K31 ["localization"]
       94 GETUPVAL                         R3 2
       95 GETTABLEKS                       R3 R3 K32 ["Analytics"]
       97 GETTABLEKS                       R3 R3 K25 ["new"]
       99 DUPCLOSURE                       R4 K33 [PROTO_9]
      100 NEWTABLE                         R5 0 0
      102 CALL                             R3 2 1
      103 SETTABLEKS                       R3 R0 K34 ["analytics"]
      105 GETUPVAL                         R3 5
      106 GETTABLEKS                       R3 R3 K25 ["new"]
      108 CALL                             R3 0 1
      109 SETTABLEKS                       R3 R0 K35 ["DEPRECATED_stylizer"]
      111 GETUPVAL                         R3 6
      112 GETTABLEKS                       R4 R1 K20 ["Plugin"]
      114 CALL                             R3 1 1
      115 SETTABLEKS                       R3 R0 K36 ["design"]
      117 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 0
       10 LOADK                            R7 K4 ["AudioEqualizerEditor_%*"]
       11 GETTABLEKS                       R9 R2 K5 ["instanceId"]
       13 NAMECALL                         R7 R7 K6 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K7 ["createElement"]
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K13 [{"Enabled", "Data", "OnChanged", "AnalysisEnabled", "SetAnalysisEnabled"}]
       22 SETTABLEKS                       R4 R9 K8 ["Enabled"]
       24 GETTABLEKS                       R10 R2 K14 ["initialData"]
       26 SETTABLEKS                       R10 R9 K9 ["Data"]
       28 GETTABLEKS                       R10 R0 K15 ["onChanged"]
       30 SETTABLEKS                       R10 R9 K10 ["OnChanged"]
       32 GETTABLEKS                       R10 R0 K1 ["state"]
       34 GETTABLEKS                       R10 R10 K16 ["analysisEnabled"]
       36 SETTABLEKS                       R10 R9 K11 ["AnalysisEnabled"]
       38 GETTABLEKS                       R10 R0 K17 ["setAnalysisEnabled"]
       40 SETTABLEKS                       R10 R9 K12 ["SetAnalysisEnabled"]
       42 CALL                             R7 2 1
       43 SETTABLE                         R7 R5 R6
       44 LOADK                            R6 K18 ["AudioEqualizerEditor"]
       45 JUMPIFNOT                        R4 ; [+22]
       46 LOADK                            R7 K19 ["%* - %*"]
       47 GETTABLEKS                       R9 R0 K20 ["localization"]
       49 LOADK                            R11 K2 ["Plugin"]
       50 LOADK                            R13 K21 ["%*Editor"]
       51 GETTABLEKS                       R15 R2 K14 ["initialData"]
       53 GETTABLEKS                       R15 R15 K22 ["InstanceType"]
       55 NAMECALL                         R13 R13 K6 ["format"]
       57 CALL                             R13 2 1
       58 MOVE                             R12 R13
       59 NAMECALL                         R9 R9 K23 ["getText"]
       61 CALL                             R9 3 1
       62 GETTABLEKS                       R10 R2 K24 ["instanceName"]
       64 NAMECALL                         R7 R7 K6 ["format"]
       66 CALL                             R7 3 1
       67 MOVE                             R6 R7
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K25 ["provide"]
       71 NEWTABLE                         R8 0 5
       73 GETUPVAL                         R9 3
       74 GETTABLEKS                       R9 R9 K26 ["new"]
       76 MOVE                             R10 R3
       77 CALL                             R9 1 1
       78 GETUPVAL                         R10 4
       79 GETTABLEKS                       R10 R10 K26 ["new"]
       81 NAMECALL                         R11 R3 K27 ["getMouse"]
       83 CALL                             R11 1 -1
       84 CALL                             R10 -1 1
       85 GETTABLEKS                       R11 R0 K28 ["DEPRECATED_stylizer"]
       87 GETTABLEKS                       R12 R0 K20 ["localization"]
       89 GETTABLEKS                       R13 R0 K29 ["analytics"]
       91 SETLIST                          R8 R9 5 [1]
       93 DUPTABLE                         R9 K31 [{"MainWidget"}]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K7 ["createElement"]
       97 GETUPVAL                         R11 5
       98 NEWTABLE                         R12 16 0
      100 LOADK                            R13 K18 ["AudioEqualizerEditor"]
      101 SETTABLEKS                       R13 R12 K32 ["Id"]
      103 SETTABLEKS                       R4 R12 K8 ["Enabled"]
      105 SETTABLEKS                       R6 R12 K33 ["Title"]
      107 GETIMPORT                        R13 K37 [Enum.ZIndexBehavior.Sibling]
      109 SETTABLEKS                       R13 R12 K35 ["ZIndexBehavior"]
      111 GETIMPORT                        R13 K40 [Enum.InitialDockState.Float]
      113 SETTABLEKS                       R13 R12 K38 ["InitialDockState"]
      115 GETIMPORT                        R13 K42 [Vector2.new]
      117 LOADN                            R14 128
      118 LOADN                            R15 224
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K43 ["Size"]
      122 GETIMPORT                        R13 K42 [Vector2.new]
      124 LOADN                            R14 250
      125 LOADN                            R15 200
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K44 ["MinSize"]
      129 GETTABLEKS                       R13 R0 K45 ["setDisabled"]
      131 SETTABLEKS                       R13 R12 K46 ["OnClose"]
      133 GETTABLEKS                       R13 R1 K47 ["PluginLoaderContext"]
      135 GETTABLEKS                       R13 R13 K48 ["mainDockWidget"]
      137 SETTABLEKS                       R13 R12 K49 ["Widget"]
      139 GETTABLEKS                       R13 R0 K50 ["onDockWidgetCreated"]
      141 SETTABLEKS                       R13 R12 K51 ["OnWidgetCreated"]
      143 LOADB                            R13 0
      144 SETTABLEKS                       R13 R12 K52 ["ShouldRestore"]
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K53 ["Change"]
      149 GETTABLEKS                       R13 R13 K8 ["Enabled"]
      151 GETTABLEKS                       R14 R0 K54 ["onWidgetEnabledChanged"]
      153 SETTABLE                         R14 R12 R13
      154 DUPTABLE                         R13 K57 [{"Wrapper", "StyleLink"}]
      155 GETUPVAL                         R14 0
      156 GETTABLEKS                       R14 R14 K7 ["createElement"]
      158 GETUPVAL                         R15 6
      159 NEWTABLE                         R16 1 0
      161 GETUPVAL                         R17 0
      162 GETTABLEKS                       R17 R17 K58 ["Tag"]
      164 LOADK                            R18 K59 ["X-Fill X-Column"]
      165 SETTABLE                         R18 R16 R17
      166 NEWTABLE                         R17 0 1
      168 MOVE                             R18 R5
      169 SETLIST                          R17 R18 1 [1]
      171 CALL                             R14 3 1
      172 SETTABLEKS                       R14 R13 K55 ["Wrapper"]
      174 GETUPVAL                         R14 0
      175 GETTABLEKS                       R14 R14 K7 ["createElement"]
      177 LOADK                            R15 K56 ["StyleLink"]
      178 DUPTABLE                         R16 K61 [{"StyleSheet"}]
      179 GETTABLEKS                       R17 R0 K62 ["design"]
      181 SETTABLEKS                       R17 R16 K60 ["StyleSheet"]
      183 CALL                             R14 2 1
      184 SETTABLEKS                       R14 R13 K56 ["StyleLink"]
      186 CALL                             R10 3 1
      187 SETTABLEKS                       R10 R9 K30 ["MainWidget"]
      189 CALL                             R7 2 -1
      190 RETURN                           R7 -1

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
       74 GETTABLEKS                       R15 R13 K2 ["AudioEqualizerEditor"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R0 K20 ["Src"]
       81 GETTABLEKS                       R16 R16 K27 ["Util"]
       83 GETTABLEKS                       R16 R16 K28 ["PlotUtil"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R16 R1 K29 ["PureComponent"]
       88 LOADK                            R18 K30 ["MainPlugin"]
       89 NAMECALL                         R16 R16 K31 ["extend"]
       91 CALL                             R16 2 1
       92 DUPCLOSURE                       R17 K32 [PROTO_10]
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R17 R16 K33 ["init"]
      102 DUPCLOSURE                       R17 K34 [PROTO_11]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R17 R16 K35 ["render"]
      112 RETURN                           R16 1
