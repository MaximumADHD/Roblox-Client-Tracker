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
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["reset"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 DUPTABLE                         R2 K2 [{"IsLoggedIn"}]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["IsLoggedIn"]
       11 SETTABLEKS                       R3 R2 K1 ["IsLoggedIn"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 2
       19 NAMECALL                         R0 R0 K4 ["connectPlaceManager"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioUserService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADK                            R4 K4 ["IsLoggedIn"]
        7 NAMECALL                         R2 R1 K5 ["GetPropertyChangedSignal"]
        9 CALL                             R2 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R2 R2 K6 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K7 ["loggedInConnection"]
       21 GETUPVAL                         R2 2
       22 JUMPIFNOT                        R2 ; [+3]
       23 NAMECALL                         R2 R0 K8 ["connectPlaceManager"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K9 ["load"]
       29 GETUPVAL                         R4 4
       30 JUMPIFNOT                        R4 ; [+3]
       31 GETTABLEKS                       R3 R0 K10 ["focusChangedSignal"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

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
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K8 ["Src"]
       86 GETTABLEKS                       R11 R11 K17 ["SharedFlags"]
       88 GETTABLEKS                       R11 R11 K20 ["getFFlagStudioChannelSwitcherUI"]
       90 CALL                             R10 1 1
       91 CALL                             R10 0 1
       92 GETIMPORT                        R11 K5 [require]
       94 GETTABLEKS                       R12 R0 K8 ["Src"]
       96 GETTABLEKS                       R12 R12 K9 ["Util"]
       98 GETTABLEKS                       R12 R12 K21 ["SessionChannel"]
      100 CALL                             R11 1 1
      101 GETTABLEKS                       R12 R3 K22 ["UI"]
      103 GETTABLEKS                       R13 R12 K23 ["DockWidget"]
      105 GETTABLEKS                       R14 R3 K24 ["ContextServices"]
      107 GETTABLEKS                       R15 R14 K25 ["Plugin"]
      109 GETTABLEKS                       R16 R14 K26 ["Mouse"]
      111 GETTABLEKS                       R17 R14 K27 ["Design"]
      113 GETTABLEKS                       R18 R3 K9 ["Util"]
      115 GETTABLEKS                       R18 R18 K28 ["Signal"]
      117 GETTABLEKS                       R19 R3 K29 ["Style"]
      119 GETTABLEKS                       R19 R19 K30 ["Themes"]
      121 GETTABLEKS                       R19 R19 K31 ["StudioTheme"]
      123 GETTABLEKS                       R20 R3 K32 ["Styling"]
      125 GETTABLEKS                       R20 R20 K33 ["registerPluginStyles"]
      127 GETTABLEKS                       R21 R4 K34 ["Components"]
      129 GETTABLEKS                       R21 R21 K35 ["FoundationProviderAdapter"]
      131 GETTABLEKS                       R22 R0 K8 ["Src"]
      133 GETTABLEKS                       R22 R22 K36 ["Resources"]
      135 GETTABLEKS                       R22 R22 K37 ["Localization"]
      137 GETTABLEKS                       R22 R22 K38 ["SourceStrings"]
      139 GETTABLEKS                       R23 R0 K8 ["Src"]
      141 GETTABLEKS                       R23 R23 K36 ["Resources"]
      143 GETTABLEKS                       R23 R23 K37 ["Localization"]
      145 GETTABLEKS                       R23 R23 K39 ["LocalizedStrings"]
      147 GETTABLEKS                       R24 R7 K40 ["createGetFFlag"]
      149 LOADK                            R25 K41 ["LoginPageCloseOnStartPageOpen"]
      150 CALL                             R24 1 1
      151 CALL                             R24 0 1
      152 GETIMPORT                        R25 K5 [require]
      154 GETTABLEKS                       R26 R0 K8 ["Src"]
      156 GETTABLEKS                       R26 R26 K9 ["Util"]
      158 GETTABLEKS                       R26 R26 K42 ["Telemetry"]
      160 GETTABLEKS                       R26 R26 K43 ["TelemetryProtocol"]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K5 [require]
      165 GETTABLEKS                       R27 R0 K8 ["Src"]
      167 GETTABLEKS                       R27 R27 K9 ["Util"]
      169 GETTABLEKS                       R27 R27 K42 ["Telemetry"]
      171 GETTABLEKS                       R27 R27 K44 ["TelemetryContext"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K5 [require]
      176 GETTABLEKS                       R28 R0 K8 ["Src"]
      178 GETTABLEKS                       R28 R28 K9 ["Util"]
      180 GETTABLEKS                       R28 R28 K42 ["Telemetry"]
      182 GETTABLEKS                       R28 R28 K45 ["TelemetryProtocolTypes"]
      184 CALL                             R27 1 1
      185 GETIMPORT                        R28 K5 [require]
      187 GETTABLEKS                       R29 R0 K8 ["Src"]
      189 GETTABLEKS                       R29 R29 K10 ["Foundation"]
      191 GETTABLEKS                       R29 R29 K34 ["Components"]
      193 GETTABLEKS                       R29 R29 K46 ["PageController"]
      195 CALL                             R28 1 1
      196 GETIMPORT                        R29 K5 [require]
      198 GETTABLEKS                       R30 R0 K8 ["Src"]
      200 GETTABLEKS                       R30 R30 K47 ["Types"]
      202 CALL                             R29 1 1
      203 GETIMPORT                        R30 K5 [require]
      205 GETTABLEKS                       R31 R0 K8 ["Src"]
      207 GETTABLEKS                       R31 R31 K9 ["Util"]
      209 GETTABLEKS                       R31 R31 K48 ["Services"]
      211 CALL                             R30 1 1
      212 GETTABLEKS                       R31 R30 K49 ["StartPageManager"]
      214 GETTABLEKS                       R32 R1 K50 ["PureComponent"]
      216 LOADK                            R34 K51 ["MainPlugin"]
      217 NAMECALL                         R32 R32 K52 ["extend"]
      219 CALL                             R32 2 1
      220 DUPCLOSURE                       R33 K53 [PROTO_1]
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R31
      233 CAPTURE                          VAL R6
      234 SETTABLEKS                       R33 R32 K54 ["init"]
      236 DUPCLOSURE                       R33 K55 [PROTO_2]
      237 SETTABLEKS                       R33 R32 K56 ["disconnectPlaceManager"]
      239 DUPCLOSURE                       R33 K57 [PROTO_4]
      240 CAPTURE                          VAL R5
      241 SETTABLEKS                       R33 R32 K58 ["connectPlaceManager"]
      243 DUPCLOSURE                       R33 K59 [PROTO_6]
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R8
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R9
      249 SETTABLEKS                       R33 R32 K60 ["didMount"]
      251 DUPCLOSURE                       R33 K61 [PROTO_7]
      252 CAPTURE                          VAL R5
      253 CAPTURE                          VAL R8
      254 SETTABLEKS                       R33 R32 K62 ["willUnmount"]
      256 DUPCLOSURE                       R33 K63 [PROTO_12]
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R14
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R17
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R9
      265 CAPTURE                          VAL R21
      266 CAPTURE                          VAL R28
      267 SETTABLEKS                       R33 R32 K64 ["render"]
      269 RETURN                           R32 1
