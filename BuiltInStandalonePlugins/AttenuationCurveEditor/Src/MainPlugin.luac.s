PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["closeDMConnection"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["state"]
        9 GETTABLEKS                       R0 R1 K1 ["closeDMConnection"]
       11 NAMECALL                         R0 R0 K2 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K3 ["Plugin"]
       17 LOADK                            R2 K4 ["OnStopEditing"]
       18 NAMECALL                         R0 R0 K5 ["Invoke"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 DUPTABLE                         R2 K10 [{"enabled", "initialCurveData", "instanceId", "instanceName", "closeDMConnection"}]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K6 ["enabled"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K7 ["initialCurveData"]
       30 LOADN                            R3 255
       31 SETTABLEKS                       R3 R2 K8 ["instanceId"]
       33 LOADK                            R3 K11 [""]
       34 SETTABLEKS                       R3 R2 K9 ["instanceName"]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K1 ["closeDMConnection"]
       39 NAMECALL                         R0 R0 K12 ["setState"]
       41 CALL                             R0 2 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Plugin"]
        3 LOADK                            R3 K1 ["OnEdit"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["stringifyCurveTable"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 -1
        9 NAMECALL                         R1 R1 K3 ["Invoke"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setDisabled"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"forceRerender"}]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["state"]
        9 GETTABLEKS                       R5 R6 K1 ["forceRerender"]
       11 NOT                              R4 R5
       12 SETTABLEKS                       R4 R3 K1 ["forceRerender"]
       14 NAMECALL                         R1 R1 K4 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setDisabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Plugin"]
        3 GETTABLEKS                       R0 R1 K1 ["MultipleDocumentInterfaceInstance"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["closeOnDMChange"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["destringifyCurveTable"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 DUPTABLE                         R5 K6 [{"enabled", "instanceId", "instanceName", "initialCurveData"}]
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K2 ["enabled"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K8 ["state"]
       17 GETTABLEKS                       R7 R8 K3 ["instanceId"]
       19 ADDK                             R6 R7 K7 [1]
       20 SETTABLEKS                       R6 R5 K3 ["instanceId"]
       22 SETTABLEKS                       R1 R5 K4 ["instanceName"]
       24 SETTABLEKS                       R2 R5 K5 ["initialCurveData"]
       26 NAMECALL                         R3 R3 K9 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"initialCurveData"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K2 ["destringifyCurveTable"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["initialCurveData"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R2 K6 [{"enabled", "instanceId", "instanceName", "initialCurveData", "closeDMConnection", "forceRerender"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 LOADN                            R3 255
        5 SETTABLEKS                       R3 R2 K1 ["instanceId"]
        7 LOADK                            R3 K7 [""]
        8 SETTABLEKS                       R3 R2 K2 ["instanceName"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K3 ["initialCurveData"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["closeDMConnection"]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K5 ["forceRerender"]
       20 SETTABLEKS                       R2 R0 K8 ["state"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R0 K9 ["setDisabled"]
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R2 R0 K10 ["onChanged"]
       32 NEWCLOSURE                       R2 P2
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R0 K11 ["onWidgetEnabledChanged"]
       36 NEWCLOSURE                       R2 P3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K12 ["closeOnDMChange"]
       41 GETTABLEKS                       R2 R1 K13 ["Plugin"]
       43 LOADK                            R4 K14 ["OnOpen"]
       44 NEWCLOSURE                       R5 P4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 NAMECALL                         R2 R2 K15 ["OnInvoke"]
       49 CALL                             R2 3 0
       50 GETTABLEKS                       R2 R1 K13 ["Plugin"]
       52 LOADK                            R4 K16 ["OnInstanceChanged"]
       53 NEWCLOSURE                       R5 P5
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U0
       56 NAMECALL                         R2 R2 K15 ["OnInvoke"]
       58 CALL                             R2 3 0
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R3 R4 K17 ["Localization"]
       62 GETTABLEKS                       R2 R3 K18 ["new"]
       64 DUPTABLE                         R3 K22 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       65 GETUPVAL                         R4 2
       66 SETTABLEKS                       R4 R3 K19 ["stringResourceTable"]
       68 GETUPVAL                         R4 3
       69 SETTABLEKS                       R4 R3 K20 ["translationResourceTable"]
       71 LOADK                            R4 K23 ["AttenuationCurveEditor"]
       72 SETTABLEKS                       R4 R3 K21 ["pluginName"]
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R0 K24 ["localization"]
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R3 R4 K25 ["Analytics"]
       80 GETTABLEKS                       R2 R3 K18 ["new"]
       82 DUPCLOSURE                       R3 K26 [PROTO_7]
       83 NEWTABLE                         R4 0 0
       85 CALL                             R2 2 1
       86 SETTABLEKS                       R2 R0 K27 ["analytics"]
       88 GETUPVAL                         R3 4
       89 GETTABLEKS                       R2 R3 K18 ["new"]
       91 CALL                             R2 0 1
       92 SETTABLEKS                       R2 R0 K28 ["DEPRECATED_stylizer"]
       94 GETUPVAL                         R2 5
       95 GETTABLEKS                       R3 R1 K13 ["Plugin"]
       97 CALL                             R2 1 1
       98 SETTABLEKS                       R2 R0 K29 ["design"]
      100 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K9 [{"CurveData", "Enabled", "InstanceId", "OnChanged"}]
       15 GETTABLEKS                       R9 R2 K10 ["initialCurveData"]
       17 SETTABLEKS                       R9 R8 K5 ["CurveData"]
       19 SETTABLEKS                       R4 R8 K6 ["Enabled"]
       21 GETTABLEKS                       R9 R2 K11 ["instanceId"]
       23 SETTABLEKS                       R9 R8 K7 ["InstanceId"]
       25 GETTABLEKS                       R9 R0 K12 ["onChanged"]
       27 SETTABLEKS                       R9 R8 K8 ["OnChanged"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K13 ["AttenuationCurveEditor"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K14 ["provide"]
       35 NEWTABLE                         R7 0 5
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K15 ["new"]
       40 MOVE                             R9 R3
       41 CALL                             R8 1 1
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R9 R10 K15 ["new"]
       45 NAMECALL                         R10 R3 K16 ["getMouse"]
       47 CALL                             R10 1 -1
       48 CALL                             R9 -1 1
       49 GETTABLEKS                       R10 R0 K17 ["DEPRECATED_stylizer"]
       51 GETTABLEKS                       R11 R0 K18 ["localization"]
       53 GETTABLEKS                       R12 R0 K19 ["analytics"]
       55 SETLIST                          R7 R8 5 [1]
       57 DUPTABLE                         R8 K21 [{"MainWidget"}]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R9 R10 K4 ["createElement"]
       61 GETUPVAL                         R10 5
       62 NEWTABLE                         R11 16 0
       64 LOADK                            R12 K13 ["AttenuationCurveEditor"]
       65 SETTABLEKS                       R12 R11 K22 ["Id"]
       67 SETTABLEKS                       R4 R11 K6 ["Enabled"]
       69 GETTABLEKS                       R16 R0 K18 ["localization"]
       71 LOADK                            R18 K2 ["Plugin"]
       72 LOADK                            R19 K23 ["Name"]
       73 NAMECALL                         R16 R16 K24 ["getText"]
       75 CALL                             R16 3 1
       76 MOVE                             R13 R16
       77 LOADK                            R14 K25 [" - "]
       78 GETTABLEKS                       R15 R2 K26 ["instanceName"]
       80 CONCAT                           R12 R13 R15
       81 SETTABLEKS                       R12 R11 K27 ["Title"]
       83 GETIMPORT                        R12 K31 [Enum.ZIndexBehavior.Sibling]
       85 SETTABLEKS                       R12 R11 K29 ["ZIndexBehavior"]
       87 GETIMPORT                        R12 K34 [Enum.InitialDockState.Float]
       89 SETTABLEKS                       R12 R11 K32 ["InitialDockState"]
       91 GETIMPORT                        R12 K36 [Vector2.new]
       93 LOADN                            R13 128
       94 LOADN                            R14 224
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K37 ["Size"]
       98 GETIMPORT                        R12 K36 [Vector2.new]
      100 LOADN                            R13 28
      101 LOADN                            R14 44
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K38 ["MinSize"]
      105 GETTABLEKS                       R12 R0 K39 ["setDisabled"]
      107 SETTABLEKS                       R12 R11 K40 ["OnClose"]
      109 GETTABLEKS                       R13 R1 K41 ["PluginLoaderContext"]
      111 GETTABLEKS                       R12 R13 K42 ["mainDockWidget"]
      113 SETTABLEKS                       R12 R11 K43 ["Widget"]
      115 GETTABLEKS                       R12 R0 K44 ["onDockWidgetCreated"]
      117 SETTABLEKS                       R12 R11 K45 ["OnWidgetCreated"]
      119 LOADB                            R12 0
      120 SETTABLEKS                       R12 R11 K46 ["ShouldRestore"]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R13 R14 K47 ["Change"]
      125 GETTABLEKS                       R12 R13 K6 ["Enabled"]
      127 GETTABLEKS                       R13 R0 K48 ["onWidgetEnabledChanged"]
      129 SETTABLE                         R13 R11 R12
      130 DUPTABLE                         R12 K51 [{"Wrapper", "StyleLink"}]
      131 GETUPVAL                         R14 0
      132 GETTABLEKS                       R13 R14 K4 ["createElement"]
      134 GETUPVAL                         R14 6
      135 NEWTABLE                         R15 1 0
      137 GETUPVAL                         R17 0
      138 GETTABLEKS                       R16 R17 K52 ["Tag"]
      140 LOADK                            R17 K53 ["X-Fill X-Column"]
      141 SETTABLE                         R17 R15 R16
      142 MOVE                             R16 R5
      143 CALL                             R13 3 1
      144 SETTABLEKS                       R13 R12 K49 ["Wrapper"]
      146 GETUPVAL                         R14 0
      147 GETTABLEKS                       R13 R14 K4 ["createElement"]
      149 LOADK                            R14 K50 ["StyleLink"]
      150 DUPTABLE                         R15 K55 [{"StyleSheet"}]
      151 GETTABLEKS                       R16 R0 K56 ["design"]
      153 SETTABLEKS                       R16 R15 K54 ["StyleSheet"]
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K50 ["StyleLink"]
      158 CALL                             R9 3 1
      159 SETTABLEKS                       R9 R8 K20 ["MainWidget"]
      161 CALL                             R6 2 -1
      162 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["DockWidget"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       29 GETTABLEKS                       R7 R6 K13 ["Plugin"]
       31 GETTABLEKS                       R8 R6 K14 ["Mouse"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R11 R0 K15 ["Src"]
       37 GETTABLEKS                       R10 R11 K16 ["Types"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R13 R0 K15 ["Src"]
       44 GETTABLEKS                       R12 R13 K17 ["Util"]
       46 GETTABLEKS                       R11 R12 K18 ["AttenuationUtil"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R13 R2 K19 ["Style"]
       51 GETTABLEKS                       R12 R13 K20 ["Themes"]
       53 GETTABLEKS                       R11 R12 K21 ["StudioTheme"]
       55 GETTABLEKS                       R13 R2 K22 ["Styling"]
       57 GETTABLEKS                       R12 R13 K23 ["registerPluginStyles"]
       59 GETTABLEKS                       R16 R0 K15 ["Src"]
       61 GETTABLEKS                       R15 R16 K24 ["Resources"]
       63 GETTABLEKS                       R14 R15 K25 ["Localization"]
       65 GETTABLEKS                       R13 R14 K26 ["SourceStrings"]
       67 GETTABLEKS                       R17 R0 K15 ["Src"]
       69 GETTABLEKS                       R16 R17 K24 ["Resources"]
       71 GETTABLEKS                       R15 R16 K25 ["Localization"]
       73 GETTABLEKS                       R14 R15 K27 ["LocalizedStrings"]
       75 GETTABLEKS                       R16 R0 K15 ["Src"]
       77 GETTABLEKS                       R15 R16 K28 ["Components"]
       79 GETIMPORT                        R16 K5 [require]
       81 GETTABLEKS                       R17 R15 K29 ["AttenuationCurveRenderer"]
       83 CALL                             R16 1 1
       84 GETTABLEKS                       R17 R1 K30 ["PureComponent"]
       86 LOADK                            R19 K31 ["MainPlugin"]
       87 NAMECALL                         R17 R17 K32 ["extend"]
       89 CALL                             R17 2 1
       90 DUPCLOSURE                       R18 K33 [PROTO_8]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R18 R17 K34 ["init"]
       99 DUPCLOSURE                       R18 K35 [PROTO_9]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R18 R17 K36 ["render"]
      109 RETURN                           R17 1
