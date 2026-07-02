PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["telemetry"]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R0 R0 K3 ["logEvent"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 DUPTABLE                         R2 K4 [{"enabled"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["state"]
       18 GETTABLEKS                       R4 R4 K1 ["enabled"]
       20 NOT                              R3 R4
       21 SETTABLEKS                       R3 R2 K1 ["enabled"]
       23 NAMECALL                         R0 R0 K5 ["setStateAndRefresh"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setStateAndRefresh"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setStateAndRefresh"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setStateAndRefresh"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["new"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R0 K5 ["telemetry"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R2 R0 K6 ["toggleEnabled"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K7 ["onClose"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K8 ["onRestore"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K9 ["onWidgetEnabledChanged"]
       26 NEWCLOSURE                       R2 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K10 ["onDockWidgetCreated"]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K11 ["Localization"]
       33 GETTABLEKS                       R2 R2 K4 ["new"]
       35 DUPTABLE                         R3 K16 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PerformanceTools"}]
       36 GETUPVAL                         R4 3
       37 SETTABLEKS                       R4 R3 K12 ["stringResourceTable"]
       39 GETUPVAL                         R4 4
       40 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R0 K17 ["localization"]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K18 ["Analytics"]
       48 GETTABLEKS                       R2 R2 K4 ["new"]
       50 DUPCLOSURE                       R3 K19 [PROTO_5]
       51 NEWTABLE                         R4 0 0
       53 CALL                             R2 2 1
       54 SETTABLEKS                       R2 R0 K20 ["analytics"]
       56 GETUPVAL                         R2 5
       57 GETTABLEKS                       R2 R2 K4 ["new"]
       59 CALL                             R2 0 1
       60 SETTABLEKS                       R2 R0 K21 ["DEPRECATED_stylizer"]
       62 GETUPVAL                         R2 6
       63 GETTABLEKS                       R3 R1 K22 ["Plugin"]
       65 CALL                             R2 1 1
       66 SETTABLEKS                       R2 R0 K23 ["design"]
       68 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R4 R4 K1 ["join"]
        5 GETTABLEKS                       R5 R0 K2 ["state"]
        7 MOVE                             R6 R1
        8 CALL                             R4 2 -1
        9 NAMECALL                         R2 R0 K3 ["setState"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
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
       25 GETTABLEKS                       R9 R0 K7 ["DEPRECATED_stylizer"]
       27 GETTABLEKS                       R10 R0 K8 ["localization"]
       29 GETTABLEKS                       R11 R0 K9 ["analytics"]
       31 GETUPVAL                         R12 3
       32 GETTABLEKS                       R12 R12 K5 ["new"]
       34 GETTABLEKS                       R13 R0 K10 ["telemetry"]
       36 CALL                             R12 1 1
       37 GETUPVAL                         R13 4
       38 GETTABLEKS                       R13 R13 K5 ["new"]
       40 GETTABLEKS                       R14 R0 K11 ["design"]
       42 CALL                             R13 1 -1
       43 SETLIST                          R6 R7 -1 [1]
       45 DUPTABLE                         R7 K13 [{"MainWidget"}]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K14 ["createElement"]
       49 GETUPVAL                         R9 6
       50 NEWTABLE                         R10 16 0
       52 LOADK                            R11 K15 ["PerformanceTools"]
       53 SETTABLEKS                       R11 R10 K16 ["Id"]
       55 SETTABLEKS                       R4 R10 K17 ["Enabled"]
       57 GETTABLEKS                       R11 R0 K8 ["localization"]
       59 LOADK                            R13 K18 ["SceneMonitor"]
       60 LOADK                            R14 K19 ["Name"]
       61 NAMECALL                         R11 R11 K20 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K21 ["Title"]
       66 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       68 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       70 GETIMPORT                        R11 K28 [Enum.InitialDockState.Bottom]
       72 SETTABLEKS                       R11 R10 K26 ["InitialDockState"]
       74 GETIMPORT                        R11 K30 [Vector2.new]
       76 LOADN                            R12 640
       77 LOADN                            R13 480
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K31 ["Size"]
       81 GETIMPORT                        R11 K30 [Vector2.new]
       83 LOADN                            R12 250
       84 LOADN                            R13 200
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K32 ["MinSize"]
       88 GETTABLEKS                       R11 R0 K33 ["onClose"]
       90 SETTABLEKS                       R11 R10 K34 ["OnClose"]
       92 GETTABLEKS                       R11 R1 K35 ["PluginLoaderContext"]
       94 GETTABLEKS                       R11 R11 K36 ["mainDockWidget"]
       96 SETTABLEKS                       R11 R10 K37 ["Widget"]
       98 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
      100 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
      102 GETTABLEKS                       R11 R0 K40 ["onRestore"]
      104 SETTABLEKS                       R11 R10 K41 ["OnWidgetRestored"]
      106 LOADB                            R11 1
      107 SETTABLEKS                       R11 R10 K42 ["ShouldRestore"]
      109 GETUPVAL                         R11 5
      110 GETTABLEKS                       R11 R11 K43 ["Change"]
      112 GETTABLEKS                       R11 R11 K17 ["Enabled"]
      114 GETTABLEKS                       R12 R0 K44 ["onWidgetEnabledChanged"]
      116 SETTABLE                         R12 R10 R11
      117 NEWTABLE                         R11 0 1
      119 GETUPVAL                         R12 5
      120 GETTABLEKS                       R12 R12 K14 ["createElement"]
      122 GETUPVAL                         R13 7
      123 GETTABLEKS                       R13 R13 K45 ["ContextStack"]
      125 DUPTABLE                         R14 K47 [{"providers"}]
      126 NEWTABLE                         R15 0 2
      128 GETUPVAL                         R16 5
      129 GETTABLEKS                       R16 R16 K14 ["createElement"]
      131 GETUPVAL                         R17 8
      132 DUPTABLE                         R18 K49 [{"assetDMListener"}]
      133 GETTABLEKS                       R19 R1 K50 ["AssetDMListener"]
      135 SETTABLEKS                       R19 R18 K48 ["assetDMListener"]
      137 CALL                             R16 2 1
      138 GETUPVAL                         R17 5
      139 GETTABLEKS                       R17 R17 K14 ["createElement"]
      141 GETUPVAL                         R18 9
      142 CALL                             R17 1 -1
      143 SETLIST                          R15 R16 -1 [1]
      145 SETTABLEKS                       R15 R14 K46 ["providers"]
      147 DUPTABLE                         R15 K54 [{"ScrollFrame", "StyleLink", "WidgetRegister"}]
      148 GETUPVAL                         R16 5
      149 GETTABLEKS                       R16 R16 K14 ["createElement"]
      151 GETUPVAL                         R17 10
      152 DUPTABLE                         R18 K57 [{"CanvasSize", "AutomaticCanvasSize"}]
      153 GETIMPORT                        R19 K60 [UDim2.fromScale]
      155 LOADN                            R20 0
      156 LOADN                            R21 0
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K55 ["CanvasSize"]
      160 GETIMPORT                        R19 K63 [Enum.AutomaticSize.XY]
      162 SETTABLEKS                       R19 R18 K56 ["AutomaticCanvasSize"]
      164 DUPTABLE                         R19 K65 [{"MainComponent"}]
      165 GETUPVAL                         R20 5
      166 GETTABLEKS                       R20 R20 K14 ["createElement"]
      168 GETUPVAL                         R21 11
      169 DUPTABLE                         R22 K67 [{"Plugin", "MainButton"}]
      170 SETTABLEKS                       R3 R22 K2 ["Plugin"]
      172 GETTABLEKS                       R23 R1 K35 ["PluginLoaderContext"]
      174 GETTABLEKS                       R23 R23 K68 ["mainButton"]
      176 SETTABLEKS                       R23 R22 K66 ["MainButton"]
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K64 ["MainComponent"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K51 ["ScrollFrame"]
      184 GETUPVAL                         R16 5
      185 GETTABLEKS                       R16 R16 K14 ["createElement"]
      187 LOADK                            R17 K52 ["StyleLink"]
      188 DUPTABLE                         R18 K70 [{"StyleSheet"}]
      189 GETTABLEKS                       R19 R0 K11 ["design"]
      191 SETTABLEKS                       R19 R18 K69 ["StyleSheet"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K52 ["StyleLink"]
      196 GETUPVAL                         R16 5
      197 GETTABLEKS                       R16 R16 K14 ["createElement"]
      199 GETUPVAL                         R17 12
      200 CALL                             R16 1 1
      201 SETTABLEKS                       R16 R15 K53 ["WidgetRegister"]
      203 CALL                             R12 3 -1
      204 SETLIST                          R11 R12 -1 [1]
      206 CALL                             R8 3 1
      207 SETTABLEKS                       R8 R7 K12 ["MainWidget"]
      209 CALL                             R5 2 -1
      210 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["UI"]
       37 GETTABLEKS                       R5 R5 K12 ["DockWidget"]
       39 GETTABLEKS                       R6 R3 K11 ["UI"]
       41 GETTABLEKS                       R6 R6 K13 ["ScrollingFrame"]
       43 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K15 ["Plugin"]
       47 GETTABLEKS                       R9 R7 K16 ["Mouse"]
       49 GETTABLEKS                       R10 R7 K17 ["Design"]
       51 GETTABLEKS                       R11 R3 K18 ["Style"]
       53 GETTABLEKS                       R11 R11 K19 ["Themes"]
       55 GETTABLEKS                       R11 R11 K20 ["StudioTheme"]
       57 GETTABLEKS                       R12 R3 K21 ["Styling"]
       59 GETTABLEKS                       R12 R12 K22 ["registerPluginStyles"]
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R0 K6 ["Packages"]
       65 GETTABLEKS                       R14 R14 K23 ["TelemetryProtocol"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K5 [require]
       70 GETTABLEKS                       R15 R0 K24 ["Src"]
       72 GETTABLEKS                       R15 R15 K25 ["Util"]
       74 GETTABLEKS                       R15 R15 K26 ["Telemetry"]
       76 GETTABLEKS                       R15 R15 K27 ["TelemetryContext"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETTABLEKS                       R16 R0 K24 ["Src"]
       83 GETTABLEKS                       R16 R16 K25 ["Util"]
       85 GETTABLEKS                       R16 R16 K26 ["Telemetry"]
       87 GETTABLEKS                       R16 R16 K28 ["Events"]
       89 GETTABLEKS                       R16 R16 K29 ["OpenThermometer"]
       91 CALL                             R15 1 1
       92 GETTABLEKS                       R16 R0 K24 ["Src"]
       94 GETTABLEKS                       R16 R16 K30 ["Resources"]
       96 GETTABLEKS                       R16 R16 K31 ["Localization"]
       98 GETTABLEKS                       R16 R16 K32 ["SourceStrings"]
      100 GETTABLEKS                       R17 R0 K24 ["Src"]
      102 GETTABLEKS                       R17 R17 K30 ["Resources"]
      104 GETTABLEKS                       R17 R17 K31 ["Localization"]
      106 GETTABLEKS                       R17 R17 K33 ["LocalizedStrings"]
      108 GETIMPORT                        R18 K5 [require]
      110 GETTABLEKS                       R19 R0 K24 ["Src"]
      112 GETTABLEKS                       R19 R19 K34 ["Components"]
      114 GETTABLEKS                       R19 R19 K35 ["MainComponent"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K5 [require]
      119 GETTABLEKS                       R20 R0 K24 ["Src"]
      121 GETTABLEKS                       R20 R20 K34 ["Components"]
      123 GETTABLEKS                       R20 R20 K36 ["Contexts"]
      125 GETTABLEKS                       R20 R20 K37 ["TooltipContextProvider"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K5 [require]
      130 GETTABLEKS                       R21 R0 K24 ["Src"]
      132 GETTABLEKS                       R21 R21 K25 ["Util"]
      134 GETTABLEKS                       R21 R21 K38 ["WidgetRegister"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K5 [require]
      139 GETTABLEKS                       R22 R0 K24 ["Src"]
      141 GETTABLEKS                       R22 R22 K34 ["Components"]
      143 GETTABLEKS                       R22 R22 K36 ["Contexts"]
      145 GETTABLEKS                       R22 R22 K39 ["AssetDMDataManagerProvider"]
      147 CALL                             R21 1 1
      148 GETTABLEKS                       R22 R1 K40 ["PureComponent"]
      150 LOADK                            R24 K41 ["MainPlugin"]
      151 NAMECALL                         R22 R22 K42 ["extend"]
      153 CALL                             R22 2 1
      154 DUPCLOSURE                       R23 K43 [PROTO_6]
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R12
      162 SETTABLEKS                       R23 R22 K44 ["init"]
      164 DUPCLOSURE                       R23 K45 [PROTO_7]
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R23 R22 K46 ["setStateAndRefresh"]
      168 DUPCLOSURE                       R23 K47 [PROTO_8]
      169 SETTABLEKS                       R23 R22 K48 ["didUpdate"]
      171 DUPCLOSURE                       R23 K49 [PROTO_9]
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R20
      185 SETTABLEKS                       R23 R22 K50 ["render"]
      187 RETURN                           R22 1
