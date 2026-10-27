PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "StartPage"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K7 ["localization"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["Analytics"]
       18 GETTABLEKS                       R2 R2 K1 ["new"]
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 NEWTABLE                         R4 0 0
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R0 K10 ["analytics"]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K1 ["new"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R0 K11 ["telemetry"]
       32 GETUPVAL                         R3 4
       33 JUMPIFNOT                        R3 ; [+5]
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K1 ["new"]
       37 CALL                             R2 0 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 SETTABLEKS                       R2 R0 K12 ["focusChangedSignal"]
       42 GETUPVAL                         R2 6
       43 GETTABLEKS                       R2 R2 K1 ["new"]
       45 CALL                             R2 0 1
       46 SETTABLEKS                       R2 R0 K13 ["DEPRECATED_stylizer"]
       48 GETUPVAL                         R2 7
       49 JUMPIFNOT                        R2 ; [+22]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K14 ["Util"]
       53 GETTABLEKS                       R2 R2 K15 ["createFoundationDesignBinding"]
       55 CALL                             R2 0 2
       56 SETTABLEKS                       R3 R0 K16 ["onFoundationStyleSheetChange"]
       58 GETUPVAL                         R4 8
       59 GETTABLEKS                       R5 R1 K17 ["Plugin"]
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 NEWTABLE                         R8 0 1
       65 MOVE                             R9 R2
       66 SETLIST                          R8 R9 1 [1]
       68 CALL                             R4 4 1
       69 SETTABLEKS                       R4 R0 K18 ["design"]
       71 JUMP                             ; [+6]
       72 GETUPVAL                         R2 8
       73 GETTABLEKS                       R3 R1 K17 ["Plugin"]
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R2 R0 K18 ["design"]
       78 GETUPVAL                         R2 9
       79 GETTABLEKS                       R2 R2 K1 ["new"]
       81 GETTABLEKS                       R3 R1 K17 ["Plugin"]
       83 NAMECALL                         R3 R3 K19 ["GetMouse"]
       85 CALL                             R3 1 -1
       86 CALL                             R2 -1 1
       87 SETTABLEKS                       R2 R0 K20 ["mouse"]
       89 GETTABLEKS                       R2 R0 K20 ["mouse"]
       91 LOADK                            R4 K21 ["Arrow"]
       92 LOADN                            R5 0
       93 NAMECALL                         R2 R2 K22 ["__pushCursor"]
       95 CALL                             R2 3 0
       96 DUPTABLE                         R2 K24 [{"IsLoggedIn"}]
       97 GETIMPORT                        R3 K26 [game]
       99 LOADK                            R5 K27 ["StudioUserService"]
      100 NAMECALL                         R3 R3 K28 ["GetService"]
      102 CALL                             R3 2 1
      103 GETTABLEKS                       R3 R3 K23 ["IsLoggedIn"]
      105 SETTABLEKS                       R3 R2 K23 ["IsLoggedIn"]
      107 SETTABLEKS                       R2 R0 K29 ["state"]
      109 GETUPVAL                         R2 10
      110 JUMPIFNOT                        R2 ; [+11]
      111 GETTABLEKS                       R2 R1 K17 ["Plugin"]
      113 LOADK                            R4 K30 ["StartPageBridge"]
      114 NAMECALL                         R2 R2 K31 ["GetPluginComponent"]
      116 CALL                             R2 2 1
      117 SETTABLEKS                       R2 R0 K32 ["startPageBridge"]
      119 LOADB                            R2 0
      120 SETTABLEKS                       R2 R0 K33 ["isRendering"]
      122 GETUPVAL                         R2 11
      123 NAMECALL                         R2 R2 K34 ["getRecentAPIGamesFromRegistry"]
      125 CALL                             R2 1 1
      126 LENGTH                           R4 R2
      127 FASTCALL2K                       MATH_MIN R4 K35 ; [+4]
      129 LOADK                            R5 K35 [5]
      130 GETIMPORT                        R3 K38 [math.min]
      132 CALL                             R3 2 1
      133 LOADN                            R6 1
      134 MOVE                             R4 R3
      135 LOADN                            R5 1
      136 FORNPREP                         R4
      137 GETUPVAL                         R7 12
      138 GETTABLE                         R8 R2 R6
      139 GETTABLEKS                       R8 R8 K39 ["RootPlaceId"]
      141 CALL                             R7 1 0
      142 FORNLOOP                         R4
      143 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["placeClosedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["placeClosedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["placeClosedConnection"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["invalidateRecentsLists"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["disconnectPlaceManager"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [game]
        5 LOADK                            R3 K3 ["StudioUserService"]
        6 NAMECALL                         R1 R1 K4 ["GetService"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K5 ["IsLoggedIn"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K6 ["props"]
       15 GETTABLEKS                       R1 R1 K7 ["Plugin"]
       17 LOADK                            R3 K8 ["PlaceManager"]
       18 NAMECALL                         R1 R1 K9 ["GetPluginComponent"]
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R2 R1 K10 ["PlaceDocPanelClosed"]
       23 DUPCLOSURE                       R4 K11 [PROTO_3]
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R2 R2 K12 ["Connect"]
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R0 K13 ["placeClosedConnection"]
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"IsLoggedIn"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["IsLoggedIn"]
        5 SETTABLEKS                       R3 R2 K0 ["IsLoggedIn"]
        7 NAMECALL                         R0 R0 K2 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["connectPlaceManager"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioUserService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADK                            R4 K4 ["IsLoggedIn"]
        7 NAMECALL                         R2 R1 K5 ["GetPropertyChangedSignal"]
        9 CALL                             R2 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R2 R2 K6 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K7 ["loggedInConnection"]
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R2 ; [+3]
       21 NAMECALL                         R2 R0 K8 ["connectPlaceManager"]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K9 ["load"]
       27 GETUPVAL                         R4 2
       28 JUMPIFNOT                        R4 ; [+3]
       29 GETTABLEKS                       R3 R0 K10 ["focusChangedSignal"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unload"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["loggedInConnection"]
        6 NAMECALL                         R1 R1 K2 ["Disconnect"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 NAMECALL                         R1 R0 K3 ["disconnectPlaceManager"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startPageBridge"]
        3 NAMECALL                         R0 R0 K1 ["OpenLoadingPageAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startPageBridge"]
        3 NAMECALL                         R0 R0 K1 ["CloseLoadingPageAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["focusChangedSignal"]
        5 LOADB                            R2 1
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["focusChangedSignal"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["IsLoggedIn"]
        8 JUMPIF                           R3 ; [+15]
        9 GETUPVAL                         R3 0
       10 JUMPIFNOT                        R3 ; [+11]
       11 GETTABLEKS                       R3 R0 K4 ["isRendering"]
       13 JUMPIFNOT                        R3 ; [+8]
       14 LOADB                            R3 0
       15 SETTABLEKS                       R3 R0 K4 ["isRendering"]
       17 GETIMPORT                        R3 K7 [task.defer]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CALL                             R3 1 0
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 0
       25 JUMPIFNOT                        R3 ; [+11]
       26 GETTABLEKS                       R3 R0 K4 ["isRendering"]
       28 JUMPIF                           R3 ; [+8]
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R0 K4 ["isRendering"]
       32 GETIMPORT                        R3 K7 [task.defer]
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          VAL R0
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K8 ["provide"]
       40 DUPTABLE                         R4 K15 [{"Plugin", "Mouse", "Stylizer", "Localization", "Analytics", "Telemetry", "Design"}]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K16 ["new"]
       44 MOVE                             R6 R2
       45 CALL                             R5 1 1
       46 SETTABLEKS                       R5 R4 K1 ["Plugin"]
       48 GETTABLEKS                       R5 R0 K17 ["mouse"]
       50 SETTABLEKS                       R5 R4 K9 ["Mouse"]
       52 GETTABLEKS                       R5 R0 K18 ["DEPRECATED_stylizer"]
       54 SETTABLEKS                       R5 R4 K10 ["Stylizer"]
       56 GETTABLEKS                       R5 R0 K19 ["localization"]
       58 SETTABLEKS                       R5 R4 K11 ["Localization"]
       60 GETTABLEKS                       R5 R0 K20 ["analytics"]
       62 SETTABLEKS                       R5 R4 K12 ["Analytics"]
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R5 R5 K16 ["new"]
       67 GETTABLEKS                       R6 R0 K21 ["telemetry"]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K13 ["Telemetry"]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R5 R5 K16 ["new"]
       75 GETTABLEKS                       R6 R0 K22 ["design"]
       77 CALL                             R5 1 1
       78 SETTABLEKS                       R5 R4 K14 ["Design"]
       80 DUPTABLE                         R5 K24 [{"MainWidget"}]
       81 GETUPVAL                         R6 5
       82 GETTABLEKS                       R6 R6 K25 ["createElement"]
       84 GETUPVAL                         R7 6
       85 DUPTABLE                         R8 K40 [{["Id"] = "StartPage", ["Enabled"] = True, ["ShouldRestore"] = False, ["Title"], ["ZIndexBehavior"], ["InitialDockState"], ["OnWidgetFocused"], ["OnWidgetFocusReleased"], ["Size"], ["MinSize"], ["CreateWidgetImmediately"] = True}]
       86 GETTABLEKS                       R9 R0 K19 ["localization"]
       88 LOADK                            R11 K1 ["Plugin"]
       89 LOADK                            R12 K41 ["Name"]
       90 NAMECALL                         R9 R9 K42 ["getText"]
       92 CALL                             R9 3 1
       93 SETTABLEKS                       R9 R8 K32 ["Title"]
       95 GETIMPORT                        R9 K45 [Enum.ZIndexBehavior.Sibling]
       97 SETTABLEKS                       R9 R8 K33 ["ZIndexBehavior"]
       99 GETIMPORT                        R9 K47 [Enum.InitialDockState.Float]
      101 SETTABLEKS                       R9 R8 K34 ["InitialDockState"]
      103 NEWCLOSURE                       R9 P2
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R9 R8 K35 ["OnWidgetFocused"]
      108 NEWCLOSURE                       R9 P3
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R9 R8 K36 ["OnWidgetFocusReleased"]
      113 GETIMPORT                        R9 K49 [Vector2.new]
      115 LOADN                            R10 1000
      116 LOADN                            R11 1000
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R8 K37 ["Size"]
      120 GETIMPORT                        R9 K49 [Vector2.new]
      122 LOADN                            R10 1000
      123 LOADN                            R11 1000
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R8 K38 ["MinSize"]
      127 GETUPVAL                         R9 5
      128 GETTABLEKS                       R9 R9 K25 ["createElement"]
      130 GETUPVAL                         R10 8
      131 DUPTABLE                         R11 K51 [{"onStyleSheetChange"}]
      132 GETTABLEKS                       R12 R0 K52 ["onFoundationStyleSheetChange"]
      134 SETTABLEKS                       R12 R11 K50 ["onStyleSheetChange"]
      136 DUPTABLE                         R12 K54 [{"PageController"}]
      137 GETUPVAL                         R13 5
      138 GETTABLEKS                       R13 R13 K25 ["createElement"]
      140 GETUPVAL                         R14 9
      141 CALL                             R13 1 1
      142 SETTABLEKS                       R13 R12 K53 ["PageController"]
      144 CALL                             R9 3 -1
      145 CALL                             R6 -1 1
      146 SETTABLEKS                       R6 R5 K23 ["MainWidget"]
      148 CALL                             R3 2 -1
      149 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Network"]
       43 GETTABLEKS                       R6 R6 K14 ["GameCache"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Network"]
       52 GETTABLEKS                       R7 R7 K15 ["PreLaunchTeamCreate"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Packages"]
       59 GETTABLEKS                       R8 R8 K16 ["SafeFlags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["SharedFlags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
       70 CALL                             R8 1 1
       71 CALL                             R8 0 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K8 ["Src"]
       76 GETTABLEKS                       R10 R10 K17 ["SharedFlags"]
       78 GETTABLEKS                       R10 R10 K19 ["getFFlagLuaStartPageAutoRefresh"]
       80 CALL                             R9 1 1
       81 CALL                             R9 0 1
       82 GETTABLEKS                       R10 R3 K20 ["UI"]
       84 GETTABLEKS                       R11 R10 K21 ["DockWidget"]
       86 GETTABLEKS                       R12 R3 K22 ["ContextServices"]
       88 GETTABLEKS                       R13 R12 K23 ["Plugin"]
       90 GETTABLEKS                       R14 R12 K24 ["Mouse"]
       92 GETTABLEKS                       R15 R12 K25 ["Design"]
       94 GETTABLEKS                       R16 R3 K9 ["Util"]
       96 GETTABLEKS                       R16 R16 K26 ["Signal"]
       98 GETTABLEKS                       R17 R3 K27 ["Style"]
      100 GETTABLEKS                       R17 R17 K28 ["Themes"]
      102 GETTABLEKS                       R17 R17 K29 ["StudioTheme"]
      104 GETTABLEKS                       R18 R3 K30 ["Styling"]
      106 GETTABLEKS                       R18 R18 K31 ["registerPluginStyles"]
      108 GETTABLEKS                       R19 R4 K32 ["Components"]
      110 GETTABLEKS                       R19 R19 K33 ["FoundationProviderAdapter"]
      112 GETTABLEKS                       R20 R0 K8 ["Src"]
      114 GETTABLEKS                       R20 R20 K34 ["Resources"]
      116 GETTABLEKS                       R20 R20 K35 ["Localization"]
      118 GETTABLEKS                       R20 R20 K36 ["SourceStrings"]
      120 GETTABLEKS                       R21 R0 K8 ["Src"]
      122 GETTABLEKS                       R21 R21 K34 ["Resources"]
      124 GETTABLEKS                       R21 R21 K35 ["Localization"]
      126 GETTABLEKS                       R21 R21 K37 ["LocalizedStrings"]
      128 GETTABLEKS                       R22 R7 K38 ["createGetFFlag"]
      130 LOADK                            R23 K39 ["LoginPageCloseOnStartPageOpen"]
      131 CALL                             R22 1 1
      132 CALL                             R22 0 1
      133 GETIMPORT                        R23 K5 [require]
      135 GETTABLEKS                       R24 R0 K8 ["Src"]
      137 GETTABLEKS                       R24 R24 K9 ["Util"]
      139 GETTABLEKS                       R24 R24 K40 ["Telemetry"]
      141 GETTABLEKS                       R24 R24 K41 ["TelemetryProtocol"]
      143 CALL                             R23 1 1
      144 GETIMPORT                        R24 K5 [require]
      146 GETTABLEKS                       R25 R0 K8 ["Src"]
      148 GETTABLEKS                       R25 R25 K9 ["Util"]
      150 GETTABLEKS                       R25 R25 K40 ["Telemetry"]
      152 GETTABLEKS                       R25 R25 K42 ["TelemetryContext"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K5 [require]
      157 GETTABLEKS                       R26 R0 K8 ["Src"]
      159 GETTABLEKS                       R26 R26 K9 ["Util"]
      161 GETTABLEKS                       R26 R26 K40 ["Telemetry"]
      163 GETTABLEKS                       R26 R26 K43 ["TelemetryProtocolTypes"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K5 [require]
      168 GETTABLEKS                       R27 R0 K8 ["Src"]
      170 GETTABLEKS                       R27 R27 K10 ["Foundation"]
      172 GETTABLEKS                       R27 R27 K32 ["Components"]
      174 GETTABLEKS                       R27 R27 K44 ["PageController"]
      176 CALL                             R26 1 1
      177 GETIMPORT                        R27 K5 [require]
      179 GETTABLEKS                       R28 R0 K8 ["Src"]
      181 GETTABLEKS                       R28 R28 K45 ["Types"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K5 [require]
      186 GETTABLEKS                       R29 R0 K8 ["Src"]
      188 GETTABLEKS                       R29 R29 K9 ["Util"]
      190 GETTABLEKS                       R29 R29 K46 ["Services"]
      192 CALL                             R28 1 1
      193 GETTABLEKS                       R29 R28 K47 ["StartPageManager"]
      195 GETTABLEKS                       R30 R1 K48 ["PureComponent"]
      197 LOADK                            R32 K49 ["MainPlugin"]
      198 NAMECALL                         R30 R30 K50 ["extend"]
      200 CALL                             R30 2 1
      201 DUPCLOSURE                       R31 K51 [PROTO_1]
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R29
      214 CAPTURE                          VAL R6
      215 SETTABLEKS                       R31 R30 K52 ["init"]
      217 DUPCLOSURE                       R31 K53 [PROTO_2]
      218 SETTABLEKS                       R31 R30 K54 ["disconnectPlaceManager"]
      220 DUPCLOSURE                       R31 K55 [PROTO_4]
      221 CAPTURE                          VAL R5
      222 SETTABLEKS                       R31 R30 K56 ["connectPlaceManager"]
      224 DUPCLOSURE                       R31 K57 [PROTO_6]
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R5
      227 CAPTURE                          VAL R9
      228 SETTABLEKS                       R31 R30 K58 ["didMount"]
      230 DUPCLOSURE                       R31 K59 [PROTO_7]
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R8
      233 SETTABLEKS                       R31 R30 K60 ["willUnmount"]
      235 DUPCLOSURE                       R31 K61 [PROTO_12]
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R26
      246 SETTABLEKS                       R31 R30 K62 ["render"]
      248 RETURN                           R30 1
