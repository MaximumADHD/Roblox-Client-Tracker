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
       22 DUPTABLE                         R2 K16 [{["enabled"] = False, ["initialData"], ["initialPropertyType"] = "None", ["instanceId"] = -1, ["instanceName"] = "", ["closeDMConnection"] = }]
       23 GETUPVAL                         R3 2
       24 SETTABLEKS                       R3 R2 K8 ["initialData"]
       26 NAMECALL                         R0 R0 K17 ["setState"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Plugin"]
        3 LOADK                            R4 K1 ["OnEdit"]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 NAMECALL                         R2 R2 K2 ["Invoke"]
        8 CALL                             R2 4 0
        9 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDisabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["closeOnDMChange"]
        3 CALL                             R4 0 0
        4 GETUPVAL                         R4 0
        5 DUPTABLE                         R6 K7 [{["enabled"] = True, ["instanceId"], ["instanceName"], ["initialData"], ["initialPropertyType"]}]
        6 SETTABLEKS                       R2 R6 K3 ["instanceId"]
        8 SETTABLEKS                       R3 R6 K4 ["instanceName"]
       10 SETTABLEKS                       R0 R6 K5 ["initialData"]
       12 SETTABLEKS                       R1 R6 K6 ["initialPropertyType"]
       14 NAMECALL                         R4 R4 K8 ["setState"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K3 [{"instanceId", "instanceName", "initialData"}]
        2 SETTABLEKS                       R1 R5 K0 ["instanceId"]
        4 SETTABLEKS                       R2 R5 K1 ["instanceName"]
        6 SETTABLEKS                       R0 R5 K2 ["initialData"]
        8 NAMECALL                         R3 R3 K4 ["setState"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R2 K3 [{"InstanceType", "DistanceCurve", "AngleCurve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["NO_INSTANCE"]
        4 SETTABLEKS                       R3 R2 K0 ["InstanceType"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["DistanceCurve"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K2 ["AngleCurve"]
       14 DUPTABLE                         R3 K17 [{["enabled"] = False, ["instanceId"] = -1, ["instanceName"] = "", ["initialData"], ["initialPropertyType"] = "None", ["closeDMConnection"] = , ["forceRerender"] = False}]
       15 SETTABLEKS                       R2 R3 K11 ["initialData"]
       17 SETTABLEKS                       R3 R0 K18 ["state"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R0 K19 ["setDisabled"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R0 K20 ["onChanged"]
       29 NEWCLOSURE                       R3 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R3 R0 K21 ["onWidgetEnabledChanged"]
       33 NEWCLOSURE                       R3 P3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R0 K22 ["closeOnDMChange"]
       38 GETTABLEKS                       R3 R1 K23 ["Plugin"]
       40 LOADK                            R5 K24 ["OnOpen"]
       41 NEWCLOSURE                       R6 P4
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R3 R3 K25 ["OnInvoke"]
       45 CALL                             R3 3 0
       46 GETTABLEKS                       R3 R1 K23 ["Plugin"]
       48 LOADK                            R5 K26 ["OnInstanceChanged"]
       49 NEWCLOSURE                       R6 P5
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R3 R3 K25 ["OnInvoke"]
       53 CALL                             R3 3 0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K27 ["Localization"]
       57 GETTABLEKS                       R3 R3 K28 ["new"]
       59 DUPTABLE                         R4 K33 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DirectionalCurveEditor"}]
       60 GETUPVAL                         R5 2
       61 SETTABLEKS                       R5 R4 K29 ["stringResourceTable"]
       63 GETUPVAL                         R5 3
       64 SETTABLEKS                       R5 R4 K30 ["translationResourceTable"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R0 K34 ["localization"]
       69 GETUPVAL                         R3 1
       70 GETTABLEKS                       R3 R3 K35 ["Analytics"]
       72 GETTABLEKS                       R3 R3 K28 ["new"]
       74 DUPCLOSURE                       R4 K36 [PROTO_7]
       75 NEWTABLE                         R5 0 0
       77 CALL                             R3 2 1
       78 SETTABLEKS                       R3 R0 K37 ["analytics"]
       80 GETUPVAL                         R3 4
       81 GETTABLEKS                       R3 R3 K28 ["new"]
       83 CALL                             R3 0 1
       84 SETTABLEKS                       R3 R0 K38 ["DEPRECATED_stylizer"]
       86 GETUPVAL                         R3 5
       87 GETTABLEKS                       R4 R1 K23 ["Plugin"]
       89 CALL                             R3 1 1
       90 SETTABLEKS                       R3 R0 K39 ["design"]
       92 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 0
       10 LOADK                            R7 K4 ["DirectionalCurveEditor_"]
       11 GETTABLEKS                       R8 R2 K5 ["instanceId"]
       13 CONCAT                           R6 R7 R8
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K6 ["createElement"]
       17 GETUPVAL                         R8 1
       18 DUPTABLE                         R9 K11 [{"Enabled", "Data", "OnChanged", "InitialPropertyType"}]
       19 SETTABLEKS                       R4 R9 K7 ["Enabled"]
       21 GETTABLEKS                       R10 R2 K12 ["initialData"]
       23 SETTABLEKS                       R10 R9 K8 ["Data"]
       25 GETTABLEKS                       R10 R0 K13 ["onChanged"]
       27 SETTABLEKS                       R10 R9 K9 ["OnChanged"]
       29 GETTABLEKS                       R10 R2 K14 ["initialPropertyType"]
       31 SETTABLEKS                       R10 R9 K10 ["InitialPropertyType"]
       33 CALL                             R7 2 1
       34 SETTABLE                         R7 R5 R6
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K15 ["provide"]
       38 NEWTABLE                         R7 0 6
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K16 ["new"]
       43 MOVE                             R9 R3
       44 CALL                             R8 1 1
       45 LOADNIL                          R9
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K16 ["new"]
       49 NAMECALL                         R11 R3 K17 ["getMouse"]
       51 CALL                             R11 1 -1
       52 CALL                             R10 -1 1
       53 GETTABLEKS                       R11 R0 K18 ["DEPRECATED_stylizer"]
       55 GETTABLEKS                       R12 R0 K19 ["localization"]
       57 GETTABLEKS                       R13 R0 K20 ["analytics"]
       59 SETLIST                          R7 R8 6 [1]
       61 DUPTABLE                         R8 K22 [{"MainWidget"}]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K6 ["createElement"]
       65 GETUPVAL                         R10 5
       66 NEWTABLE                         R11 16 0
       68 LOADK                            R12 K23 ["DirectionalCurveEditor"]
       69 SETTABLEKS                       R12 R11 K24 ["Id"]
       71 SETTABLEKS                       R4 R11 K7 ["Enabled"]
       73 GETTABLEKS                       R16 R0 K19 ["localization"]
       75 LOADK                            R18 K2 ["Plugin"]
       76 LOADK                            R19 K25 ["Name"]
       77 NAMECALL                         R16 R16 K26 ["getText"]
       79 CALL                             R16 3 1
       80 MOVE                             R13 R16
       81 LOADK                            R14 K27 [" - "]
       82 GETTABLEKS                       R15 R2 K28 ["instanceName"]
       84 CONCAT                           R12 R13 R15
       85 SETTABLEKS                       R12 R11 K29 ["Title"]
       87 GETIMPORT                        R12 K33 [Enum.ZIndexBehavior.Sibling]
       89 SETTABLEKS                       R12 R11 K31 ["ZIndexBehavior"]
       91 GETIMPORT                        R12 K36 [Enum.InitialDockState.Float]
       93 SETTABLEKS                       R12 R11 K34 ["InitialDockState"]
       95 GETIMPORT                        R12 K38 [Vector2.new]
       97 LOADN                            R13 540
       98 LOADN                            R14 540
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K39 ["Size"]
      102 GETIMPORT                        R12 K38 [Vector2.new]
      104 LOADN                            R13 540
      105 LOADN                            R14 300
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K40 ["MinSize"]
      109 GETTABLEKS                       R12 R0 K41 ["setDisabled"]
      111 SETTABLEKS                       R12 R11 K42 ["OnClose"]
      113 GETTABLEKS                       R12 R1 K43 ["PluginLoaderContext"]
      115 GETTABLEKS                       R12 R12 K44 ["mainDockWidget"]
      117 SETTABLEKS                       R12 R11 K45 ["Widget"]
      119 GETTABLEKS                       R12 R0 K46 ["onDockWidgetCreated"]
      121 SETTABLEKS                       R12 R11 K47 ["OnWidgetCreated"]
      123 LOADB                            R12 0
      124 SETTABLEKS                       R12 R11 K48 ["ShouldRestore"]
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R12 R12 K49 ["Change"]
      129 GETTABLEKS                       R12 R12 K7 ["Enabled"]
      131 GETTABLEKS                       R13 R0 K50 ["onWidgetEnabledChanged"]
      133 SETTABLE                         R13 R11 R12
      134 DUPTABLE                         R12 K53 [{"Wrapper", "StyleLink"}]
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K6 ["createElement"]
      138 GETUPVAL                         R14 6
      139 NEWTABLE                         R15 1 0
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R16 R16 K54 ["Tag"]
      144 LOADK                            R17 K55 ["X-Fill X-Column"]
      145 SETTABLE                         R17 R15 R16
      146 MOVE                             R16 R5
      147 CALL                             R13 3 1
      148 SETTABLEKS                       R13 R12 K51 ["Wrapper"]
      150 GETUPVAL                         R13 0
      151 GETTABLEKS                       R13 R13 K6 ["createElement"]
      153 LOADK                            R14 K52 ["StyleLink"]
      154 DUPTABLE                         R15 K57 [{"StyleSheet"}]
      155 GETTABLEKS                       R16 R0 K58 ["design"]
      157 SETTABLEKS                       R16 R15 K56 ["StyleSheet"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K52 ["StyleLink"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K21 ["MainWidget"]
      165 CALL                             R6 2 -1
      166 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
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
       23 GETTABLEKS                       R4 R3 K10 ["DockWidget"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       29 GETTABLEKS                       R7 R6 K13 ["Plugin"]
       31 GETTABLEKS                       R8 R6 K14 ["Mouse"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R10 R0 K15 ["Src"]
       37 GETTABLEKS                       R10 R10 K16 ["Types"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R2 K17 ["Style"]
       42 GETTABLEKS                       R10 R10 K18 ["Themes"]
       44 GETTABLEKS                       R10 R10 K19 ["StudioTheme"]
       46 GETTABLEKS                       R11 R2 K20 ["Styling"]
       48 GETTABLEKS                       R11 R11 K21 ["registerPluginStyles"]
       50 GETTABLEKS                       R12 R0 K15 ["Src"]
       52 GETTABLEKS                       R12 R12 K22 ["Resources"]
       54 GETTABLEKS                       R12 R12 K23 ["Localization"]
       56 GETTABLEKS                       R12 R12 K24 ["SourceStrings"]
       58 GETTABLEKS                       R13 R0 K15 ["Src"]
       60 GETTABLEKS                       R13 R13 K22 ["Resources"]
       62 GETTABLEKS                       R13 R13 K23 ["Localization"]
       64 GETTABLEKS                       R13 R13 K25 ["LocalizedStrings"]
       66 GETTABLEKS                       R14 R0 K15 ["Src"]
       68 GETTABLEKS                       R14 R14 K26 ["Components"]
       70 GETIMPORT                        R15 K5 [require]
       72 GETTABLEKS                       R16 R14 K27 ["AttenuationCurveRenderer"]
       74 CALL                             R15 1 1
       75 GETTABLEKS                       R16 R1 K28 ["PureComponent"]
       77 LOADK                            R18 K29 ["MainPlugin"]
       78 NAMECALL                         R16 R16 K30 ["extend"]
       80 CALL                             R16 2 1
       81 DUPCLOSURE                       R17 K31 [PROTO_8]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R17 R16 K32 ["init"]
       90 DUPCLOSURE                       R17 K33 [PROTO_9]
       91 SETTABLEKS                       R17 R16 K34 ["didUpdate"]
       93 DUPCLOSURE                       R17 K35 [PROTO_10]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R17 R16 K36 ["render"]
      103 RETURN                           R16 1
