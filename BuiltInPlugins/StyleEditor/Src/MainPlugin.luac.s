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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETUPVAL                         R2 0
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K0 ["enabled"]
        5 SETTABLEKS                       R2 R1 K0 ["enabled"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+38]
        1 LOADK                            R3 K0 ["StyleBase"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+33]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["createItemId"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["store"]
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R2 K4 ["dispatch"]
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["getStudioDefaultStyleSheet"]
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+14]
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R0 K6 ["IsDescendantOf"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+9]
       30 GETUPVAL                         R3 4
       31 NEWTABLE                         R5 0 1
       33 MOVE                             R6 R0
       34 SETLIST                          R5 R6 1 [1]
       36 NAMECALL                         R3 R3 K7 ["Set"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectStyle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"enabled"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K1 ["enabled"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["store"]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 -1
        9 NAMECALL                         R0 R0 K1 ["dispatch"]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["store"]
       15 NAMECALL                         R0 R0 K2 ["flush"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K3 ["openConnection"]
       21 JUMPIFNOT                        R0 ; [+6]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K3 ["openConnection"]
       25 NAMECALL                         R0 R0 K4 ["Disconnect"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["firstRender"]
        5 DUPTABLE                         R4 K3 [{"enabled"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["enabled"]
        9 NAMECALL                         R2 R0 K4 ["setState"]
       11 CALL                             R2 2 0
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K5 ["toggleEnabled"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K6 ["onClose"]
       20 NEWCLOSURE                       R2 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K7 ["onRestore"]
       24 NEWCLOSURE                       R2 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K8 ["onWidgetEnabledChanged"]
       28 NEWCLOSURE                       R2 P4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R0 K9 ["onDockWidgetCreated"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K10 ["Localization"]
       35 GETTABLEKS                       R2 R2 K11 ["new"]
       37 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
       38 GETUPVAL                         R4 1
       39 SETTABLEKS                       R4 R3 K12 ["stringResourceTable"]
       41 GETUPVAL                         R4 2
       42 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       44 LOADK                            R4 K17 ["StyleEditor"]
       45 SETTABLEKS                       R4 R3 K14 ["pluginName"]
       47 NEWTABLE                         R4 1 0
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K18 ["Resources"]
       52 GETTABLEKS                       R5 R5 K19 ["LOCALIZATION_PROJECT_NAME"]
       54 DUPTABLE                         R6 K20 [{"stringResourceTable", "translationResourceTable"}]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K18 ["Resources"]
       58 GETTABLEKS                       R7 R7 K21 ["SourceStrings"]
       60 SETTABLEKS                       R7 R6 K12 ["stringResourceTable"]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K18 ["Resources"]
       65 GETTABLEKS                       R7 R7 K22 ["LocalizedStrings"]
       67 SETTABLEKS                       R7 R6 K13 ["translationResourceTable"]
       69 SETTABLE                         R6 R4 R5
       70 SETTABLEKS                       R4 R3 K15 ["libraries"]
       72 CALL                             R2 1 1
       73 SETTABLEKS                       R2 R0 K23 ["localization"]
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K11 ["new"]
       78 GETUPVAL                         R3 5
       79 CALL                             R2 1 1
       80 SETTABLEKS                       R2 R0 K24 ["telemetry"]
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R3 R1 K25 ["Plugin"]
       85 CALL                             R2 1 1
       86 SETTABLEKS                       R2 R0 K26 ["design"]
       88 GETUPVAL                         R2 7
       89 DUPTABLE                         R3 K30 [{"Localization", "Networking", "Plugin", "Telemetry", "recordChange"}]
       90 GETTABLEKS                       R4 R0 K23 ["localization"]
       92 SETTABLEKS                       R4 R3 K10 ["Localization"]
       94 GETUPVAL                         R4 8
       95 GETTABLEKS                       R4 R4 K11 ["new"]
       97 DUPTABLE                         R5 K32 [{"isInternal"}]
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R5 K31 ["isInternal"]
      101 CALL                             R4 1 1
      102 SETTABLEKS                       R4 R3 K27 ["Networking"]
      104 GETTABLEKS                       R4 R1 K25 ["Plugin"]
      106 SETTABLEKS                       R4 R3 K25 ["Plugin"]
      108 GETTABLEKS                       R4 R0 K24 ["telemetry"]
      110 SETTABLEKS                       R4 R3 K28 ["Telemetry"]
      112 GETUPVAL                         R4 9
      113 GETUPVAL                         R5 10
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K29 ["recordChange"]
      117 CALL                             R2 1 1
      118 SETTABLEKS                       R2 R0 K33 ["store"]
      120 NEWCLOSURE                       R2 P5
      121 CAPTURE                          UPVAL U11
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          UPVAL U13
      125 CAPTURE                          UPVAL U14
      126 SETTABLEKS                       R2 R0 K34 ["selectStyle"]
      128 GETTABLEKS                       R3 R1 K36 ["PluginLoaderContext"]
      130 GETTABLEKS                       R3 R3 K37 ["signals"]
      132 GETTABLEKS                       R2 R3 K35 ["GuiService.OpenStyleEditor"]
      134 NEWCLOSURE                       R4 P6
      135 CAPTURE                          VAL R0
      136 NAMECALL                         R2 R2 K38 ["Connect"]
      138 CALL                             R2 2 1
      139 SETTABLEKS                       R2 R0 K39 ["openConnection"]
      141 GETTABLEKS                       R2 R1 K25 ["Plugin"]
      143 GETTABLEKS                       R2 R2 K40 ["Unloading"]
      145 NEWCLOSURE                       R4 P7
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U15
      148 NAMECALL                         R2 R2 K38 ["Connect"]
      150 CALL                             R2 2 0
      151 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K6 ["firstRender"]
       15 JUMPIFNOT                        R1 ; [+20]
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K6 ["firstRender"]
       19 GETIMPORT                        R1 K9 [os.clock]
       21 CALL                             R1 0 1
       22 GETTABLEKS                       R4 R0 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K11 ["LoadStartTimestamp"]
       26 SUB                              R3 R1 R4
       27 MULK                             R2 R3 K10 [1000]
       28 GETTABLEKS                       R3 R0 K12 ["store"]
       30 GETUPVAL                         R5 0
       31 MOVE                             R6 R2
       32 CALL                             R5 1 -1
       33 NAMECALL                         R3 R3 K13 ["dispatch"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETTABLEKS                       R10 R0 K8 ["localization"]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K5 ["new"]
       36 GETTABLEKS                       R12 R0 K9 ["telemetry"]
       38 CALL                             R11 1 1
       39 GETUPVAL                         R12 5
       40 CALL                             R12 0 -1
       41 SETLIST                          R6 R7 -1 [1]
       43 DUPTABLE                         R7 K11 [{"MainWidget"}]
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R8 R8 K12 ["createElement"]
       47 GETUPVAL                         R9 7
       48 NEWTABLE                         R10 16 0
       50 LOADK                            R11 K13 ["StyleEditor"]
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
       68 GETIMPORT                        R11 K25 [Enum.InitialDockState.Right]
       70 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       72 GETIMPORT                        R11 K27 [Vector2.new]
       74 LOADN                            R12 68
       75 LOADN                            R13 244
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K28 ["Size"]
       79 GETTABLEKS                       R11 R0 K29 ["onClose"]
       81 SETTABLEKS                       R11 R10 K30 ["OnClose"]
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K31 ["ShouldRestore"]
       86 GETTABLEKS                       R11 R1 K32 ["PluginLoaderContext"]
       88 GETTABLEKS                       R11 R11 K33 ["mainDockWidget"]
       90 SETTABLEKS                       R11 R10 K34 ["Widget"]
       92 GETTABLEKS                       R11 R0 K35 ["onRestore"]
       94 SETTABLEKS                       R11 R10 K36 ["OnWidgetRestored"]
       96 GETTABLEKS                       R11 R0 K37 ["onDockWidgetCreated"]
       98 SETTABLEKS                       R11 R10 K38 ["OnWidgetCreated"]
      100 GETUPVAL                         R11 8
      101 GETTABLEKS                       R11 R11 K39 ["Change"]
      103 GETTABLEKS                       R11 R11 K15 ["Enabled"]
      105 GETTABLEKS                       R12 R0 K40 ["onWidgetEnabledChanged"]
      107 SETTABLE                         R12 R10 R11
      108 DUPTABLE                         R11 K43 [{"AppRoot", "StyleLink"}]
      109 GETUPVAL                         R12 6
      110 GETTABLEKS                       R12 R12 K12 ["createElement"]
      112 GETUPVAL                         R13 9
      113 CALL                             R12 1 1
      114 SETTABLEKS                       R12 R11 K41 ["AppRoot"]
      116 GETUPVAL                         R12 6
      117 GETTABLEKS                       R12 R12 K12 ["createElement"]
      119 LOADK                            R13 K42 ["StyleLink"]
      120 DUPTABLE                         R14 K45 [{"StyleSheet"}]
      121 GETTABLEKS                       R15 R0 K46 ["design"]
      123 SETTABLEKS                       R15 R14 K44 ["StyleSheet"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K42 ["StyleLink"]
      128 CALL                             R8 3 1
      129 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      131 CALL                             R5 2 -1
      132 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MessageBusService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Selection"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETIMPORT                        R4 K10 [require]
       27 GETTABLEKS                       R5 R3 K11 ["Packages"]
       29 GETTABLEKS                       R5 R5 K12 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R6 R3 K11 ["Packages"]
       36 GETTABLEKS                       R6 R6 K13 ["ReactRoblox"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R7 R3 K11 ["Packages"]
       43 GETTABLEKS                       R7 R7 K14 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K15 ["UI"]
       48 GETTABLEKS                       R8 R7 K16 ["DockWidget"]
       50 GETTABLEKS                       R9 R6 K17 ["Styling"]
       52 GETTABLEKS                       R9 R9 K18 ["registerPluginStyles"]
       54 GETTABLEKS                       R10 R6 K19 ["ContextServices"]
       56 GETTABLEKS                       R11 R6 K20 ["Http"]
       58 GETTABLEKS                       R11 R11 K21 ["Networking"]
       60 GETTABLEKS                       R12 R10 K22 ["Plugin"]
       62 GETTABLEKS                       R13 R10 K23 ["Mouse"]
       64 GETTABLEKS                       R14 R10 K24 ["Store"]
       66 GETTABLEKS                       R15 R3 K25 ["Src"]
       68 GETTABLEKS                       R15 R15 K26 ["Actions"]
       70 GETIMPORT                        R16 K10 [require]
       72 GETTABLEKS                       R17 R15 K27 ["Window"]
       74 GETTABLEKS                       R17 R17 K28 ["SelectItem"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K10 [require]
       79 GETTABLEKS                       R18 R3 K25 ["Src"]
       81 GETTABLEKS                       R18 R18 K29 ["Util"]
       83 GETTABLEKS                       R18 R18 K30 ["createStore"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K10 [require]
       88 GETTABLEKS                       R19 R3 K25 ["Src"]
       90 GETTABLEKS                       R19 R19 K29 ["Util"]
       92 GETTABLEKS                       R19 R19 K31 ["recordChange"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K10 [require]
       97 GETTABLEKS                       R20 R3 K25 ["Src"]
       99 GETTABLEKS                       R20 R20 K32 ["Resources"]
      101 GETTABLEKS                       R20 R20 K33 ["MakeTheme"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K10 [require]
      106 GETTABLEKS                       R21 R3 K25 ["Src"]
      108 GETTABLEKS                       R21 R21 K34 ["Contexts"]
      110 GETTABLEKS                       R21 R21 K35 ["Telemetry"]
      112 GETTABLEKS                       R21 R21 K36 ["TelemetryContext"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K10 [require]
      117 GETTABLEKS                       R22 R3 K25 ["Src"]
      119 GETTABLEKS                       R22 R22 K34 ["Contexts"]
      121 GETTABLEKS                       R22 R22 K35 ["Telemetry"]
      123 GETTABLEKS                       R22 R22 K37 ["TelemetryProtocol"]
      125 CALL                             R21 1 1
      126 GETIMPORT                        R22 K10 [require]
      128 GETTABLEKS                       R23 R3 K25 ["Src"]
      130 GETTABLEKS                       R23 R23 K29 ["Util"]
      132 GETTABLEKS                       R23 R23 K38 ["TreeTableHelpers"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K10 [require]
      137 GETTABLEKS                       R24 R3 K25 ["Src"]
      139 GETTABLEKS                       R24 R24 K29 ["Util"]
      141 GETTABLEKS                       R24 R24 K39 ["DesignHelpers"]
      143 CALL                             R23 1 1
      144 GETTABLEKS                       R24 R3 K25 ["Src"]
      146 GETTABLEKS                       R24 R24 K40 ["Components"]
      148 GETIMPORT                        R25 K10 [require]
      150 GETTABLEKS                       R26 R24 K41 ["AppRoot"]
      152 CALL                             R25 1 1
      153 GETTABLEKS                       R26 R3 K25 ["Src"]
      155 GETTABLEKS                       R26 R26 K42 ["Thunks"]
      157 GETIMPORT                        R27 K10 [require]
      159 GETTABLEKS                       R28 R26 K35 ["Telemetry"]
      161 GETTABLEKS                       R28 R28 K43 ["SendPluginMountedEvent"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K10 [require]
      166 GETTABLEKS                       R29 R26 K35 ["Telemetry"]
      168 GETTABLEKS                       R29 R29 K44 ["SendPluginUnmountedEvent"]
      170 CALL                             R28 1 1
      171 GETTABLEKS                       R29 R3 K25 ["Src"]
      173 GETTABLEKS                       R29 R29 K32 ["Resources"]
      175 GETTABLEKS                       R29 R29 K45 ["Localization"]
      177 GETTABLEKS                       R29 R29 K46 ["SourceStrings"]
      179 GETTABLEKS                       R30 R3 K25 ["Src"]
      181 GETTABLEKS                       R30 R30 K32 ["Resources"]
      183 GETTABLEKS                       R30 R30 K45 ["Localization"]
      185 GETTABLEKS                       R30 R30 K47 ["LocalizedStrings"]
      187 GETTABLEKS                       R31 R4 K48 ["PureComponent"]
      189 LOADK                            R33 K49 ["MainPlugin"]
      190 NAMECALL                         R31 R31 K50 ["extend"]
      192 CALL                             R31 2 1
      193 DUPCLOSURE                       R32 K51 [PROTO_10]
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R29
      196 CAPTURE                          VAL R30
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R28
      210 SETTABLEKS                       R32 R31 K52 ["init"]
      212 DUPCLOSURE                       R32 K53 [PROTO_11]
      213 CAPTURE                          VAL R27
      214 SETTABLEKS                       R32 R31 K54 ["didUpdate"]
      216 DUPCLOSURE                       R32 K55 [PROTO_12]
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R25
      227 SETTABLEKS                       R32 R31 K56 ["render"]
      229 RETURN                           R31 1
