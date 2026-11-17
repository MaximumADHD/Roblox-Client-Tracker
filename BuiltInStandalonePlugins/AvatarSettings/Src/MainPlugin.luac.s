PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 SETUPVAL                         R1 0
        3 DUPTABLE                         R1 K3 [{["previousState"], [2] = False}]
        4 GETTABLEKS                       R2 R0 K0 ["enabled"]
        6 SETTABLEKS                       R2 R1 K1 ["previousState"]
        8 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+1]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.Edit]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["props"]
       14 GETTABLEKS                       R2 R2 K7 ["PluginLoaderContext"]
       16 GETTABLEKS                       R2 R2 K8 ["mainButton"]
       18 SETTABLEKS                       R1 R2 K9 ["Enabled"]
       20 JUMPIF                           R1 ; [+7]
       21 GETUPVAL                         R2 0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R2 R2 K10 ["setState"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R2 R2 K10 ["setState"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K2 ["previousState"]
        5 SETTABLEKS                       R2 R1 K0 ["enabled"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.Edit]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["props"]
       14 GETTABLEKS                       R2 R2 K7 ["PluginLoaderContext"]
       16 GETTABLEKS                       R2 R2 K8 ["mainButton"]
       18 SETTABLEKS                       R1 R2 K9 ["Enabled"]
       20 JUMPIF                           R1 ; [+6]
       21 GETUPVAL                         R2 0
       22 DUPCLOSURE                       R4 K10 [PROTO_3]
       23 NAMECALL                         R2 R2 K11 ["setState"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 0
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R2 R2 K11 ["setState"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"previousState", "enabled"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["previousState"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["enabled"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"previousState", "enabled"}]
        1 GETTABLEKS                       R3 R0 K1 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["previousState"]
        6 GETTABLEKS                       R3 R0 K1 ["enabled"]
        8 NOT                              R2 R3
        9 SETTABLEKS                       R2 R1 K1 ["enabled"]
       11 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetry"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"enabled"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K3 ["state"]
        8 GETTABLEKS                       R5 R5 K1 ["enabled"]
       10 NOT                              R4 R5
       11 SETTABLEKS                       R4 R3 K1 ["enabled"]
       13 NAMECALL                         R0 R0 K4 ["logTelemetryCounterEvent"]
       15 CALL                             R0 3 0
       16 GETUPVAL                         R0 0
       17 DUPCLOSURE                       R2 K5 [PROTO_8]
       18 NAMECALL                         R0 R0 K6 ["setState"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OnPluginClosed"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 DUPTABLE                         R2 K4 [{["enabled"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K6 ["props"]
       15 GETTABLEKS                       R0 R0 K7 ["PluginLoaderContext"]
       17 GETTABLEKS                       R0 R0 K8 ["mainButton"]
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K9 ["Enabled"]
       22 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K1 [{"enabled"}]
        4 SETTABLEKS                       R0 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K2 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 DUPTABLE                         R3 K3 [{["enabled"] = False}]
        3 SETTABLEKS                       R3 R0 K4 ["state"]
        5 LOADK                            R5 K5 ["DmChanged"]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R3 R2 K6 ["OnInvoke"]
       11 CALL                             R3 3 0
       12 LOADK                            R5 K7 ["DmSessionStarted"]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R3 R2 K6 ["OnInvoke"]
       17 CALL                             R3 3 0
       18 LOADK                            R5 K8 ["PreviewSetMainButtonEnabled"]
       19 NEWCLOSURE                       R6 P2
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R3 R2 K6 ["OnInvoke"]
       23 CALL                             R3 3 0
       24 NEWCLOSURE                       R3 P3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 SETTABLEKS                       R3 R0 K9 ["toggleEnabled"]
       29 NEWCLOSURE                       R3 P4
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R0 K10 ["onClose"]
       35 NEWCLOSURE                       R3 P5
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R3 R0 K11 ["onRestore"]
       40 NEWCLOSURE                       R3 P6
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R3 R0 K12 ["onWidgetEnabledChanged"]
       44 NEWCLOSURE                       R3 P7
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R3 R0 K13 ["onDockWidgetCreated"]
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K14 ["Localization"]
       51 GETTABLEKS                       R3 R3 K15 ["new"]
       53 DUPTABLE                         R4 K20 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AvatarSettings"}]
       54 GETUPVAL                         R5 4
       55 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       57 GETUPVAL                         R5 5
       58 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       60 CALL                             R3 1 1
       61 SETTABLEKS                       R3 R0 K21 ["localization"]
       63 GETUPVAL                         R3 6
       64 GETTABLEKS                       R3 R3 K15 ["new"]
       66 CALL                             R3 0 1
       67 SETTABLEKS                       R3 R0 K22 ["telemetry"]
       69 GETUPVAL                         R3 7
       70 GETTABLEKS                       R3 R3 K15 ["new"]
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R0 K23 ["DEPRECATED_stylizer"]
       75 GETUPVAL                         R3 8
       76 GETTABLEKS                       R4 R1 K0 ["Plugin"]
       78 CALL                             R3 1 1
       79 SETTABLEKS                       R3 R0 K24 ["design"]
       81 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 7
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
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["DEPRECATED_stylizer"]
       29 GETTABLEKS                       R11 R0 K8 ["localization"]
       31 GETUPVAL                         R12 4
       32 GETTABLEKS                       R12 R12 K5 ["new"]
       34 GETTABLEKS                       R13 R0 K9 ["telemetry"]
       36 CALL                             R12 1 1
       37 GETUPVAL                         R13 5
       38 GETTABLEKS                       R13 R13 K5 ["new"]
       40 GETTABLEKS                       R14 R0 K10 ["design"]
       42 CALL                             R13 1 -1
       43 SETLIST                          R6 R7 -1 [1]
       45 DUPTABLE                         R7 K12 [{"MainWidget"}]
       46 GETUPVAL                         R8 6
       47 GETUPVAL                         R9 7
       48 NEWTABLE                         R10 16 0
       50 LOADK                            R11 K13 ["AvatarSettings"]
       51 SETTABLEKS                       R11 R10 K14 ["Id"]
       53 SETTABLEKS                       R4 R10 K15 ["Enabled"]
       55 GETTABLEKS                       R11 R0 K8 ["localization"]
       57 LOADK                            R13 K2 ["Plugin"]
       58 LOADK                            R14 K16 ["Name"]
       59 NAMECALL                         R11 R11 K17 ["getText"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K18 ["Title"]
       64 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       66 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       68 GETIMPORT                        R11 K25 [Enum.InitialDockState.Left]
       70 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       72 GETIMPORT                        R11 K27 [Vector2.new]
       74 LOADN                            R12 615
       75 LOADN                            R13 680
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K28 ["Size"]
       79 GETIMPORT                        R11 K27 [Vector2.new]
       81 LOADN                            R12 615
       82 LOADN                            R13 680
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       86 GETTABLEKS                       R11 R0 K30 ["onClose"]
       88 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       90 LOADB                            R11 1
       91 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
       93 GETTABLEKS                       R11 R1 K33 ["PluginLoaderContext"]
       95 GETTABLEKS                       R11 R11 K34 ["mainDockWidget"]
       97 SETTABLEKS                       R11 R10 K35 ["Widget"]
       99 GETTABLEKS                       R11 R0 K36 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R11 R10 K37 ["OnWidgetCreated"]
      103 GETTABLEKS                       R11 R0 K38 ["onRestore"]
      105 SETTABLEKS                       R11 R10 K39 ["OnWidgetRestored"]
      107 GETUPVAL                         R11 8
      108 GETTABLEKS                       R11 R11 K40 ["Change"]
      110 GETTABLEKS                       R11 R11 K15 ["Enabled"]
      112 GETTABLEKS                       R12 R0 K41 ["onWidgetEnabledChanged"]
      114 SETTABLE                         R12 R10 R11
      115 DUPTABLE                         R11 K44 [{"App", "StyleLink"}]
      116 GETUPVAL                         R12 6
      117 GETUPVAL                         R13 9
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K42 ["App"]
      121 GETUPVAL                         R12 6
      122 LOADK                            R13 K43 ["StyleLink"]
      123 DUPTABLE                         R14 K46 [{"StyleSheet"}]
      124 GETTABLEKS                       R15 R0 K10 ["design"]
      126 SETTABLEKS                       R15 R14 K45 ["StyleSheet"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K43 ["StyleLink"]
      131 CALL                             R8 3 1
      132 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      134 CALL                             R5 2 -1
      135 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["InvokeKeys"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R4 R4 K13 ["DockWidget"]
       34 GETTABLEKS                       R5 R1 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["Plugin"]
       38 GETTABLEKS                       R7 R5 K16 ["Mouse"]
       40 GETTABLEKS                       R8 R5 K17 ["Design"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K9 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Resources"]
       48 GETTABLEKS                       R10 R10 K19 ["MakeTheme"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R1 K20 ["Style"]
       53 GETTABLEKS                       R10 R10 K21 ["Themes"]
       55 GETTABLEKS                       R10 R10 K22 ["StudioTheme"]
       57 GETTABLEKS                       R11 R1 K23 ["Styling"]
       59 GETTABLEKS                       R11 R11 K24 ["registerPluginStyles"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R0 K9 ["Src"]
       65 GETTABLEKS                       R13 R13 K10 ["Util"]
       67 GETTABLEKS                       R13 R13 K25 ["Telemetry"]
       69 GETTABLEKS                       R13 R13 K26 ["EventsConfig"]
       71 GETTABLEKS                       R13 R13 K27 ["MainButtonToggled"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R14 R0 K9 ["Src"]
       78 GETTABLEKS                       R14 R14 K10 ["Util"]
       80 GETTABLEKS                       R14 R14 K25 ["Telemetry"]
       82 GETTABLEKS                       R14 R14 K28 ["TelemetryContext"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K6 ["Packages"]
       89 GETTABLEKS                       R15 R15 K29 ["TelemetryProtocol"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R0 K9 ["Src"]
       94 GETTABLEKS                       R15 R15 K18 ["Resources"]
       96 GETTABLEKS                       R15 R15 K30 ["Localization"]
       98 GETTABLEKS                       R15 R15 K31 ["SourceStrings"]
      100 GETTABLEKS                       R16 R0 K9 ["Src"]
      102 GETTABLEKS                       R16 R16 K18 ["Resources"]
      104 GETTABLEKS                       R16 R16 K30 ["Localization"]
      106 GETTABLEKS                       R16 R16 K32 ["LocalizedStrings"]
      108 GETIMPORT                        R17 K5 [require]
      110 GETTABLEKS                       R18 R0 K9 ["Src"]
      112 GETTABLEKS                       R18 R18 K33 ["Components"]
      114 GETTABLEKS                       R18 R18 K34 ["App"]
      116 CALL                             R17 1 1
      117 GETTABLEKS                       R18 R2 K35 ["PureComponent"]
      119 LOADK                            R20 K36 ["MainPlugin"]
      120 NAMECALL                         R18 R18 K37 ["extend"]
      122 CALL                             R18 2 1
      123 GETTABLEKS                       R19 R2 K38 ["createElement"]
      125 LOADB                            R20 0
      126 NEWCLOSURE                       R21 P0
      127 CAPTURE                          REF R20
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 SETTABLEKS                       R21 R18 K39 ["init"]
      138 DUPCLOSURE                       R21 K40 [PROTO_15]
      139 SETTABLEKS                       R21 R18 K41 ["didUpdate"]
      141 DUPCLOSURE                       R21 K42 [PROTO_16]
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R17
      152 SETTABLEKS                       R21 R18 K43 ["render"]
      154 CLOSEUPVALS                      R20
      155 RETURN                           R18 1
