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
      117 GETUPVAL                         R12 7
      118 JUMPIFNOT                        R12 ; [+3]
      119 GETTABLEKS                       R11 R0 K11 ["design"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R11
      123 SETTABLEKS                       R11 R10 K45 ["PluginDesign"]
      125 NEWTABLE                         R11 0 1
      127 GETUPVAL                         R12 5
      128 GETTABLEKS                       R12 R12 K14 ["createElement"]
      130 GETUPVAL                         R13 8
      131 GETTABLEKS                       R13 R13 K46 ["ContextStack"]
      133 DUPTABLE                         R14 K48 [{"providers"}]
      134 NEWTABLE                         R15 0 2
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R16 R16 K14 ["createElement"]
      139 GETUPVAL                         R17 9
      140 DUPTABLE                         R18 K50 [{"assetDMListener"}]
      141 GETTABLEKS                       R19 R1 K51 ["AssetDMListener"]
      143 SETTABLEKS                       R19 R18 K49 ["assetDMListener"]
      145 CALL                             R16 2 1
      146 GETUPVAL                         R17 5
      147 GETTABLEKS                       R17 R17 K14 ["createElement"]
      149 GETUPVAL                         R18 10
      150 CALL                             R17 1 -1
      151 SETLIST                          R15 R16 -1 [1]
      153 SETTABLEKS                       R15 R14 K47 ["providers"]
      155 DUPTABLE                         R15 K55 [{"ScrollFrame", "StyleLink", "WidgetRegister"}]
      156 GETUPVAL                         R16 5
      157 GETTABLEKS                       R16 R16 K14 ["createElement"]
      159 GETUPVAL                         R17 11
      160 DUPTABLE                         R18 K58 [{"CanvasSize", "AutomaticCanvasSize"}]
      161 GETIMPORT                        R19 K61 [UDim2.fromScale]
      163 LOADN                            R20 0
      164 LOADN                            R21 0
      165 CALL                             R19 2 1
      166 SETTABLEKS                       R19 R18 K56 ["CanvasSize"]
      168 GETIMPORT                        R19 K64 [Enum.AutomaticSize.XY]
      170 SETTABLEKS                       R19 R18 K57 ["AutomaticCanvasSize"]
      172 DUPTABLE                         R19 K66 [{"MainComponent"}]
      173 GETUPVAL                         R20 5
      174 GETTABLEKS                       R20 R20 K14 ["createElement"]
      176 GETUPVAL                         R21 12
      177 DUPTABLE                         R22 K68 [{"Plugin", "MainButton"}]
      178 SETTABLEKS                       R3 R22 K2 ["Plugin"]
      180 GETTABLEKS                       R23 R1 K35 ["PluginLoaderContext"]
      182 GETTABLEKS                       R23 R23 K69 ["mainButton"]
      184 SETTABLEKS                       R23 R22 K67 ["MainButton"]
      186 CALL                             R20 2 1
      187 SETTABLEKS                       R20 R19 K65 ["MainComponent"]
      189 CALL                             R16 3 1
      190 SETTABLEKS                       R16 R15 K52 ["ScrollFrame"]
      192 GETUPVAL                         R17 7
      193 JUMPIF                           R17 ; [+11]
      194 GETUPVAL                         R16 5
      195 GETTABLEKS                       R16 R16 K14 ["createElement"]
      197 LOADK                            R17 K53 ["StyleLink"]
      198 DUPTABLE                         R18 K71 [{"StyleSheet"}]
      199 GETTABLEKS                       R19 R0 K11 ["design"]
      201 SETTABLEKS                       R19 R18 K70 ["StyleSheet"]
      203 CALL                             R16 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R16
      206 SETTABLEKS                       R16 R15 K53 ["StyleLink"]
      208 GETUPVAL                         R16 5
      209 GETTABLEKS                       R16 R16 K14 ["createElement"]
      211 GETUPVAL                         R17 13
      212 CALL                             R16 1 1
      213 SETTABLEKS                       R16 R15 K54 ["WidgetRegister"]
      215 CALL                             R12 3 -1
      216 SETLIST                          R11 R12 -1 [1]
      218 CALL                             R8 3 1
      219 SETTABLEKS                       R8 R7 K12 ["MainWidget"]
      221 CALL                             R5 2 -1
      222 RETURN                           R5 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["SharedFlags"]
       30 GETTABLEKS                       R4 R4 K11 ["getFFlagDevFrameworkUsePluginDesign"]
       32 CALL                             R4 0 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Packages"]
       37 GETTABLEKS                       R6 R6 K12 ["Cryo"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K13 ["UI"]
       42 GETTABLEKS                       R6 R6 K14 ["DockWidget"]
       44 GETTABLEKS                       R7 R3 K13 ["UI"]
       46 GETTABLEKS                       R7 R7 K15 ["ScrollingFrame"]
       48 GETTABLEKS                       R8 R3 K16 ["ContextServices"]
       50 GETTABLEKS                       R9 R8 K17 ["Plugin"]
       52 GETTABLEKS                       R10 R8 K18 ["Mouse"]
       54 GETTABLEKS                       R11 R8 K19 ["Design"]
       56 GETTABLEKS                       R12 R3 K20 ["Style"]
       58 GETTABLEKS                       R12 R12 K21 ["Themes"]
       60 GETTABLEKS                       R12 R12 K22 ["StudioTheme"]
       62 GETTABLEKS                       R13 R3 K23 ["Styling"]
       64 GETTABLEKS                       R13 R13 K24 ["registerPluginStyles"]
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K6 ["Packages"]
       70 GETTABLEKS                       R15 R15 K25 ["TelemetryProtocol"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R0 K26 ["Src"]
       77 GETTABLEKS                       R16 R16 K27 ["Util"]
       79 GETTABLEKS                       R16 R16 K28 ["Telemetry"]
       81 GETTABLEKS                       R16 R16 K29 ["TelemetryContext"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R17 R0 K26 ["Src"]
       88 GETTABLEKS                       R17 R17 K27 ["Util"]
       90 GETTABLEKS                       R17 R17 K28 ["Telemetry"]
       92 GETTABLEKS                       R17 R17 K30 ["Events"]
       94 GETTABLEKS                       R17 R17 K31 ["OpenThermometer"]
       96 CALL                             R16 1 1
       97 GETTABLEKS                       R17 R0 K26 ["Src"]
       99 GETTABLEKS                       R17 R17 K32 ["Resources"]
      101 GETTABLEKS                       R17 R17 K33 ["Localization"]
      103 GETTABLEKS                       R17 R17 K34 ["SourceStrings"]
      105 GETTABLEKS                       R18 R0 K26 ["Src"]
      107 GETTABLEKS                       R18 R18 K32 ["Resources"]
      109 GETTABLEKS                       R18 R18 K33 ["Localization"]
      111 GETTABLEKS                       R18 R18 K35 ["LocalizedStrings"]
      113 GETIMPORT                        R19 K5 [require]
      115 GETTABLEKS                       R20 R0 K26 ["Src"]
      117 GETTABLEKS                       R20 R20 K36 ["Components"]
      119 GETTABLEKS                       R20 R20 K37 ["MainComponent"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K5 [require]
      124 GETTABLEKS                       R21 R0 K26 ["Src"]
      126 GETTABLEKS                       R21 R21 K36 ["Components"]
      128 GETTABLEKS                       R21 R21 K38 ["Contexts"]
      130 GETTABLEKS                       R21 R21 K39 ["TooltipContextProvider"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K5 [require]
      135 GETTABLEKS                       R22 R0 K26 ["Src"]
      137 GETTABLEKS                       R22 R22 K27 ["Util"]
      139 GETTABLEKS                       R22 R22 K40 ["WidgetRegister"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K5 [require]
      144 GETTABLEKS                       R23 R0 K26 ["Src"]
      146 GETTABLEKS                       R23 R23 K36 ["Components"]
      148 GETTABLEKS                       R23 R23 K38 ["Contexts"]
      150 GETTABLEKS                       R23 R23 K41 ["AssetDMDataManagerProvider"]
      152 CALL                             R22 1 1
      153 GETTABLEKS                       R23 R1 K42 ["PureComponent"]
      155 LOADK                            R25 K43 ["MainPlugin"]
      156 NAMECALL                         R23 R23 K44 ["extend"]
      158 CALL                             R23 2 1
      159 DUPCLOSURE                       R24 K45 [PROTO_6]
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R13
      167 SETTABLEKS                       R24 R23 K46 ["init"]
      169 DUPCLOSURE                       R24 K47 [PROTO_7]
      170 CAPTURE                          VAL R5
      171 SETTABLEKS                       R24 R23 K48 ["setStateAndRefresh"]
      173 DUPCLOSURE                       R24 K49 [PROTO_8]
      174 SETTABLEKS                       R24 R23 K50 ["didUpdate"]
      176 DUPCLOSURE                       R24 K51 [PROTO_9]
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R21
      191 SETTABLEKS                       R24 R23 K52 ["render"]
      193 RETURN                           R23 1
