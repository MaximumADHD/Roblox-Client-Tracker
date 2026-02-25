PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 SETUPVAL                         R1 0
        3 DUPTABLE                         R1 K2 [{"previousState", "enabled"}]
        4 GETTABLEKS                       R2 R0 K0 ["enabled"]
        6 SETTABLEKS                       R2 R1 K1 ["previousState"]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K0 ["enabled"]
       11 RETURN                           R1 1

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
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K6 ["props"]
       14 GETTABLEKS                       R3 R4 K7 ["PluginLoaderContext"]
       16 GETTABLEKS                       R2 R3 K8 ["mainButton"]
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
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 RETURN                           R1 1

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
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K6 ["props"]
       14 GETTABLEKS                       R3 R4 K7 ["PluginLoaderContext"]
       16 GETTABLEKS                       R2 R3 K8 ["mainButton"]
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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["telemetry"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K2 [{"enabled"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K3 ["state"]
       11 GETTABLEKS                       R5 R6 K1 ["enabled"]
       13 NOT                              R4 R5
       14 SETTABLEKS                       R4 R3 K1 ["enabled"]
       16 NAMECALL                         R0 R0 K4 ["logTelemetryCounterEvent"]
       18 CALL                             R0 3 0
       19 GETUPVAL                         R0 1
       20 DUPCLOSURE                       R2 K5 [PROTO_8]
       21 NAMECALL                         R0 R0 K6 ["setState"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["OnPluginClosed"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 DUPTABLE                         R2 K3 [{"enabled"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["enabled"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K5 ["props"]
       18 GETTABLEKS                       R1 R2 K6 ["PluginLoaderContext"]
       20 GETTABLEKS                       R0 R1 K7 ["mainButton"]
       22 LOADB                            R1 1
       23 SETTABLEKS                       R1 R0 K8 ["Enabled"]
       25 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 DUPTABLE                         R3 K2 [{"enabled"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["enabled"]
        6 SETTABLEKS                       R3 R0 K3 ["state"]
        8 LOADK                            R5 K4 ["DmChanged"]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R3 R2 K5 ["OnInvoke"]
       14 CALL                             R3 3 0
       15 LOADK                            R5 K6 ["DmSessionStarted"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R3 R2 K5 ["OnInvoke"]
       20 CALL                             R3 3 0
       21 LOADK                            R5 K7 ["PreviewSetMainButtonEnabled"]
       22 NEWCLOSURE                       R6 P2
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R3 R2 K5 ["OnInvoke"]
       26 CALL                             R3 3 0
       27 NEWCLOSURE                       R3 P3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 SETTABLEKS                       R3 R0 K8 ["toggleEnabled"]
       33 NEWCLOSURE                       R3 P4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R3 R0 K9 ["onClose"]
       39 NEWCLOSURE                       R3 P5
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R3 R0 K10 ["onRestore"]
       44 NEWCLOSURE                       R3 P6
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R3 R0 K11 ["onWidgetEnabledChanged"]
       48 NEWCLOSURE                       R3 P7
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R3 R0 K12 ["onDockWidgetCreated"]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R4 R5 K13 ["Localization"]
       55 GETTABLEKS                       R3 R4 K14 ["new"]
       57 DUPTABLE                         R4 K18 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       58 GETUPVAL                         R5 5
       59 SETTABLEKS                       R5 R4 K15 ["stringResourceTable"]
       61 GETUPVAL                         R5 6
       62 SETTABLEKS                       R5 R4 K16 ["translationResourceTable"]
       64 LOADK                            R5 K19 ["AvatarSettings"]
       65 SETTABLEKS                       R5 R4 K17 ["pluginName"]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R0 K20 ["localization"]
       70 GETUPVAL                         R3 1
       71 CALL                             R3 0 1
       72 JUMPIFNOT                        R3 ; [+7]
       73 GETUPVAL                         R4 7
       74 GETTABLEKS                       R3 R4 K14 ["new"]
       76 CALL                             R3 0 1
       77 SETTABLEKS                       R3 R0 K21 ["telemetry"]
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R4 R5 K22 ["Analytics"]
       83 GETTABLEKS                       R3 R4 K14 ["new"]
       85 DUPCLOSURE                       R4 K23 [PROTO_14]
       86 NEWTABLE                         R5 0 0
       88 CALL                             R3 2 1
       89 SETTABLEKS                       R3 R0 K24 ["analytics"]
       91 GETUPVAL                         R4 8
       92 GETTABLEKS                       R3 R4 K14 ["new"]
       94 CALL                             R3 0 1
       95 SETTABLEKS                       R3 R0 K25 ["DEPRECATED_stylizer"]
       97 GETUPVAL                         R3 9
       98 GETTABLEKS                       R4 R1 K0 ["Plugin"]
      100 CALL                             R3 1 1
      101 SETTABLEKS                       R3 R0 K26 ["design"]
      103 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 8
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["DEPRECATED_stylizer"]
       29 GETTABLEKS                       R11 R0 K8 ["localization"]
       31 GETTABLEKS                       R12 R0 K9 ["analytics"]
       33 GETUPVAL                         R14 4
       34 CALL                             R14 0 1
       35 JUMPIFNOT                        R14 ; [+7]
       36 GETUPVAL                         R14 5
       37 GETTABLEKS                       R13 R14 K5 ["new"]
       39 GETTABLEKS                       R14 R0 K10 ["telemetry"]
       41 CALL                             R13 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R13
       44 GETUPVAL                         R15 6
       45 GETTABLEKS                       R14 R15 K5 ["new"]
       47 GETTABLEKS                       R15 R0 K11 ["design"]
       49 CALL                             R14 1 -1
       50 SETLIST                          R6 R7 -1 [1]
       52 DUPTABLE                         R7 K13 [{"MainWidget"}]
       53 GETUPVAL                         R8 7
       54 GETUPVAL                         R9 8
       55 NEWTABLE                         R10 16 0
       57 LOADK                            R11 K14 ["AvatarSettings"]
       58 SETTABLEKS                       R11 R10 K15 ["Id"]
       60 SETTABLEKS                       R4 R10 K16 ["Enabled"]
       62 GETTABLEKS                       R11 R0 K8 ["localization"]
       64 LOADK                            R13 K2 ["Plugin"]
       65 LOADK                            R14 K17 ["Name"]
       66 NAMECALL                         R11 R11 K18 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K19 ["Title"]
       71 GETIMPORT                        R11 K23 [Enum.ZIndexBehavior.Sibling]
       73 SETTABLEKS                       R11 R10 K21 ["ZIndexBehavior"]
       75 GETIMPORT                        R11 K26 [Enum.InitialDockState.Left]
       77 SETTABLEKS                       R11 R10 K24 ["InitialDockState"]
       79 GETIMPORT                        R11 K28 [Vector2.new]
       81 LOADN                            R12 103
       82 LOADN                            R13 168
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K29 ["Size"]
       86 GETIMPORT                        R11 K28 [Vector2.new]
       88 LOADN                            R12 103
       89 LOADN                            R13 168
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K30 ["MinSize"]
       93 GETTABLEKS                       R11 R0 K31 ["onClose"]
       95 SETTABLEKS                       R11 R10 K32 ["OnClose"]
       97 LOADB                            R11 1
       98 SETTABLEKS                       R11 R10 K33 ["ShouldRestore"]
      100 GETTABLEKS                       R12 R1 K34 ["PluginLoaderContext"]
      102 GETTABLEKS                       R11 R12 K35 ["mainDockWidget"]
      104 SETTABLEKS                       R11 R10 K36 ["Widget"]
      106 GETTABLEKS                       R11 R0 K37 ["onDockWidgetCreated"]
      108 SETTABLEKS                       R11 R10 K38 ["OnWidgetCreated"]
      110 GETTABLEKS                       R11 R0 K39 ["onRestore"]
      112 SETTABLEKS                       R11 R10 K40 ["OnWidgetRestored"]
      114 GETUPVAL                         R13 9
      115 GETTABLEKS                       R12 R13 K41 ["Change"]
      117 GETTABLEKS                       R11 R12 K16 ["Enabled"]
      119 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      121 SETTABLE                         R12 R10 R11
      122 DUPTABLE                         R11 K45 [{"App", "StyleLink"}]
      123 GETUPVAL                         R12 7
      124 GETUPVAL                         R13 10
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K43 ["App"]
      128 GETUPVAL                         R12 7
      129 LOADK                            R13 K44 ["StyleLink"]
      130 DUPTABLE                         R14 K47 [{"StyleSheet"}]
      131 GETTABLEKS                       R15 R0 K11 ["design"]
      133 SETTABLEKS                       R15 R14 K46 ["StyleSheet"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K44 ["StyleLink"]
      138 CALL                             R8 3 1
      139 SETTABLEKS                       R8 R7 K12 ["MainWidget"]
      141 CALL                             R5 2 -1
      142 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["InvokeKeys"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K12 ["UI"]
       32 GETTABLEKS                       R4 R5 K13 ["DockWidget"]
       34 GETTABLEKS                       R5 R1 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["Plugin"]
       38 GETTABLEKS                       R7 R5 K16 ["Mouse"]
       40 GETTABLEKS                       R8 R5 K17 ["Design"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K9 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Resources"]
       48 GETTABLEKS                       R10 R11 K19 ["MakeTheme"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R12 R1 K20 ["Style"]
       53 GETTABLEKS                       R11 R12 K21 ["Themes"]
       55 GETTABLEKS                       R10 R11 K22 ["StudioTheme"]
       57 GETTABLEKS                       R12 R1 K23 ["Styling"]
       59 GETTABLEKS                       R11 R12 K24 ["registerPluginStyles"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R17 R0 K9 ["Src"]
       65 GETTABLEKS                       R16 R17 K10 ["Util"]
       67 GETTABLEKS                       R15 R16 K25 ["Telemetry"]
       69 GETTABLEKS                       R14 R15 K26 ["EventsConfig"]
       71 GETTABLEKS                       R13 R14 K27 ["MainButtonToggled"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R17 R0 K9 ["Src"]
       78 GETTABLEKS                       R16 R17 K10 ["Util"]
       80 GETTABLEKS                       R15 R16 K25 ["Telemetry"]
       82 GETTABLEKS                       R14 R15 K28 ["TelemetryContext"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R16 R0 K6 ["Packages"]
       89 GETTABLEKS                       R15 R16 K29 ["TelemetryProtocol"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R18 R0 K9 ["Src"]
       94 GETTABLEKS                       R17 R18 K18 ["Resources"]
       96 GETTABLEKS                       R16 R17 K30 ["Localization"]
       98 GETTABLEKS                       R15 R16 K31 ["SourceStrings"]
      100 GETTABLEKS                       R19 R0 K9 ["Src"]
      102 GETTABLEKS                       R18 R19 K18 ["Resources"]
      104 GETTABLEKS                       R17 R18 K30 ["Localization"]
      106 GETTABLEKS                       R16 R17 K32 ["LocalizedStrings"]
      108 GETIMPORT                        R17 K5 [require]
      110 GETTABLEKS                       R20 R0 K9 ["Src"]
      112 GETTABLEKS                       R19 R20 K33 ["Components"]
      114 GETTABLEKS                       R18 R19 K34 ["App"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K5 [require]
      119 GETTABLEKS                       R21 R0 K9 ["Src"]
      121 GETTABLEKS                       R20 R21 K35 ["Flags"]
      123 GETTABLEKS                       R19 R20 K36 ["getFFlagAddTelemetry"]
      125 CALL                             R18 1 1
      126 GETTABLEKS                       R19 R2 K37 ["PureComponent"]
      128 LOADK                            R21 K38 ["MainPlugin"]
      129 NAMECALL                         R19 R19 K39 ["extend"]
      131 CALL                             R19 2 1
      132 GETTABLEKS                       R20 R2 K40 ["createElement"]
      134 LOADB                            R21 0
      135 NEWCLOSURE                       R22 P0
      136 CAPTURE                          REF R21
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R11
      146 SETTABLEKS                       R22 R19 K41 ["init"]
      148 DUPCLOSURE                       R22 K42 [PROTO_16]
      149 SETTABLEKS                       R22 R19 K43 ["didUpdate"]
      151 DUPCLOSURE                       R22 K44 [PROTO_17]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R17
      163 SETTABLEKS                       R22 R19 K45 ["render"]
      165 CLOSEUPVALS                      R21
      166 RETURN                           R19 1
