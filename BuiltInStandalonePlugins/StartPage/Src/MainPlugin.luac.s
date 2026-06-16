PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 LOADK                            R4 K6 ["StartPage"]
       13 SETTABLEKS                       R4 R3 K4 ["pluginName"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K7 ["localization"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["Analytics"]
       21 GETTABLEKS                       R2 R2 K1 ["new"]
       23 DUPCLOSURE                       R3 K9 [PROTO_0]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R0 K10 ["analytics"]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K1 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R0 K11 ["telemetry"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K1 ["new"]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R0 K12 ["DEPRECATED_stylizer"]
       41 GETUPVAL                         R2 5
       42 JUMPIFNOT                        R2 ; [+22]
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R2 R2 K13 ["Util"]
       46 GETTABLEKS                       R2 R2 K14 ["createFoundationDesignBinding"]
       48 CALL                             R2 0 2
       49 SETTABLEKS                       R3 R0 K15 ["onFoundationStyleSheetChange"]
       51 GETUPVAL                         R4 6
       52 GETTABLEKS                       R5 R1 K16 ["Plugin"]
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 NEWTABLE                         R8 0 1
       58 MOVE                             R9 R2
       59 SETLIST                          R8 R9 1 [1]
       61 CALL                             R4 4 1
       62 SETTABLEKS                       R4 R0 K17 ["design"]
       64 JUMP                             ; [+6]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R3 R1 K16 ["Plugin"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K17 ["design"]
       71 GETUPVAL                         R2 7
       72 GETTABLEKS                       R2 R2 K1 ["new"]
       74 GETTABLEKS                       R3 R1 K16 ["Plugin"]
       76 NAMECALL                         R3 R3 K18 ["GetMouse"]
       78 CALL                             R3 1 -1
       79 CALL                             R2 -1 1
       80 SETTABLEKS                       R2 R0 K19 ["mouse"]
       82 GETTABLEKS                       R2 R0 K19 ["mouse"]
       84 LOADK                            R4 K20 ["Arrow"]
       85 LOADN                            R5 0
       86 NAMECALL                         R2 R2 K21 ["__pushCursor"]
       88 CALL                             R2 3 0
       89 DUPTABLE                         R2 K23 [{"IsLoggedIn"}]
       90 GETIMPORT                        R3 K25 [game]
       92 LOADK                            R5 K26 ["StudioUserService"]
       93 NAMECALL                         R3 R3 K27 ["GetService"]
       95 CALL                             R3 2 1
       96 GETTABLEKS                       R3 R3 K22 ["IsLoggedIn"]
       98 SETTABLEKS                       R3 R2 K22 ["IsLoggedIn"]
      100 SETTABLEKS                       R2 R0 K28 ["state"]
      102 GETUPVAL                         R2 8
      103 JUMPIFNOT                        R2 ; [+11]
      104 GETTABLEKS                       R2 R1 K16 ["Plugin"]
      106 LOADK                            R4 K29 ["StartPageBridge"]
      107 NAMECALL                         R2 R2 K30 ["GetPluginComponent"]
      109 CALL                             R2 2 1
      110 SETTABLEKS                       R2 R0 K31 ["startPageBridge"]
      112 LOADB                            R2 0
      113 SETTABLEKS                       R2 R0 K32 ["isRendering"]
      115 GETUPVAL                         R2 9
      116 NAMECALL                         R2 R2 K33 ["getRecentAPIGamesFromRegistry"]
      118 CALL                             R2 1 1
      119 LENGTH                           R4 R2
      120 FASTCALL2K                       MATH_MIN R4 K34 ; [+4]
      122 LOADK                            R5 K34 [5]
      123 GETIMPORT                        R3 K37 [math.min]
      125 CALL                             R3 2 1
      126 LOADN                            R6 1
      127 MOVE                             R4 R3
      128 LOADN                            R5 1
      129 FORNPREP                         R4
      130 GETUPVAL                         R7 10
      131 GETTABLE                         R8 R2 R6
      132 GETTABLEKS                       R8 R8 K38 ["RootPlaceId"]
      134 CALL                             R7 1 0
      135 FORNLOOP                         R4
      136 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"IsLoggedIn"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["IsLoggedIn"]
        5 SETTABLEKS                       R3 R2 K0 ["IsLoggedIn"]
        7 NAMECALL                         R0 R0 K2 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["invalidateRecentsLists"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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
       13 NAMECALL                         R2 R2 K6 ["Connect"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K7 ["loggedInConnection"]
       18 GETUPVAL                         R2 0
       19 JUMPIFNOT                        R2 ; [+17]
       20 GETTABLEKS                       R2 R0 K8 ["props"]
       22 GETTABLEKS                       R2 R2 K9 ["Plugin"]
       24 LOADK                            R4 K10 ["PlaceManager"]
       25 NAMECALL                         R2 R2 K11 ["GetPluginComponent"]
       27 CALL                             R2 2 1
       28 GETTABLEKS                       R3 R2 K12 ["PlaceDocPanelClosed"]
       30 DUPCLOSURE                       R5 K13 [PROTO_3]
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R3 R3 K6 ["Connect"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R0 K14 ["placeClosedConnection"]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K15 ["load"]
       40 CALL                             R2 0 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unload"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["loggedInConnection"]
        6 NAMECALL                         R1 R1 K2 ["Disconnect"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K3 ["placeClosedConnection"]
       13 NAMECALL                         R1 R1 K2 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startPageBridge"]
        3 NAMECALL                         R0 R0 K1 ["OpenLoadingPageAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startPageBridge"]
        3 NAMECALL                         R0 R0 K1 ["CloseLoadingPageAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
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
       85 DUPTABLE                         R8 K35 [{"Id", "Enabled", "ShouldRestore", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "CreateWidgetImmediately"}]
       86 LOADK                            R9 K36 ["StartPage"]
       87 SETTABLEKS                       R9 R8 K26 ["Id"]
       89 LOADB                            R9 1
       90 SETTABLEKS                       R9 R8 K27 ["Enabled"]
       92 LOADB                            R9 0
       93 SETTABLEKS                       R9 R8 K28 ["ShouldRestore"]
       95 GETTABLEKS                       R9 R0 K19 ["localization"]
       97 LOADK                            R11 K1 ["Plugin"]
       98 LOADK                            R12 K37 ["Name"]
       99 NAMECALL                         R9 R9 K38 ["getText"]
      101 CALL                             R9 3 1
      102 SETTABLEKS                       R9 R8 K29 ["Title"]
      104 GETIMPORT                        R9 K41 [Enum.ZIndexBehavior.Sibling]
      106 SETTABLEKS                       R9 R8 K30 ["ZIndexBehavior"]
      108 GETIMPORT                        R9 K43 [Enum.InitialDockState.Float]
      110 SETTABLEKS                       R9 R8 K31 ["InitialDockState"]
      112 GETIMPORT                        R9 K45 [Vector2.new]
      114 LOADN                            R10 232
      115 LOADN                            R11 232
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K32 ["Size"]
      119 GETIMPORT                        R9 K45 [Vector2.new]
      121 LOADN                            R10 232
      122 LOADN                            R11 232
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K33 ["MinSize"]
      126 LOADB                            R9 1
      127 SETTABLEKS                       R9 R8 K34 ["CreateWidgetImmediately"]
      129 GETUPVAL                         R9 5
      130 GETTABLEKS                       R9 R9 K25 ["createElement"]
      132 GETUPVAL                         R10 7
      133 DUPTABLE                         R11 K47 [{"onStyleSheetChange"}]
      134 GETTABLEKS                       R12 R0 K48 ["onFoundationStyleSheetChange"]
      136 SETTABLEKS                       R12 R11 K46 ["onStyleSheetChange"]
      138 DUPTABLE                         R12 K50 [{"PageController"}]
      139 GETUPVAL                         R13 5
      140 GETTABLEKS                       R13 R13 K25 ["createElement"]
      142 GETUPVAL                         R14 8
      143 CALL                             R13 1 1
      144 SETTABLEKS                       R13 R12 K49 ["PageController"]
      146 CALL                             R9 3 -1
      147 CALL                             R6 -1 1
      148 SETTABLEKS                       R6 R5 K23 ["MainWidget"]
      150 CALL                             R3 2 -1
      151 RETURN                           R3 -1

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
       57 GETTABLEKS                       R8 R0 K8 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["SharedFlags"]
       61 GETTABLEKS                       R8 R8 K17 ["safeGetFastFlag"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Src"]
       68 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       70 GETTABLEKS                       R9 R9 K18 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
       72 CALL                             R8 1 1
       73 CALL                             R8 0 1
       74 GETTABLEKS                       R9 R3 K19 ["UI"]
       76 GETTABLEKS                       R10 R9 K20 ["DockWidget"]
       78 GETTABLEKS                       R11 R3 K21 ["ContextServices"]
       80 GETTABLEKS                       R12 R11 K22 ["Plugin"]
       82 GETTABLEKS                       R13 R11 K23 ["Mouse"]
       84 GETTABLEKS                       R14 R11 K24 ["Design"]
       86 GETTABLEKS                       R15 R3 K25 ["Style"]
       88 GETTABLEKS                       R15 R15 K26 ["Themes"]
       90 GETTABLEKS                       R15 R15 K27 ["StudioTheme"]
       92 GETTABLEKS                       R16 R3 K28 ["Styling"]
       94 GETTABLEKS                       R16 R16 K29 ["registerPluginStyles"]
       96 GETTABLEKS                       R17 R4 K30 ["Components"]
       98 GETTABLEKS                       R17 R17 K31 ["FoundationProviderAdapter"]
      100 GETTABLEKS                       R18 R0 K8 ["Src"]
      102 GETTABLEKS                       R18 R18 K32 ["Resources"]
      104 GETTABLEKS                       R18 R18 K33 ["Localization"]
      106 GETTABLEKS                       R18 R18 K34 ["SourceStrings"]
      108 GETTABLEKS                       R19 R0 K8 ["Src"]
      110 GETTABLEKS                       R19 R19 K32 ["Resources"]
      112 GETTABLEKS                       R19 R19 K33 ["Localization"]
      114 GETTABLEKS                       R19 R19 K35 ["LocalizedStrings"]
      116 MOVE                             R20 R7
      117 LOADK                            R21 K36 ["LoginPageCloseOnStartPageOpen"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K5 [require]
      121 GETTABLEKS                       R22 R0 K8 ["Src"]
      123 GETTABLEKS                       R22 R22 K9 ["Util"]
      125 GETTABLEKS                       R22 R22 K37 ["Telemetry"]
      127 GETTABLEKS                       R22 R22 K38 ["TelemetryProtocol"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K5 [require]
      132 GETTABLEKS                       R23 R0 K8 ["Src"]
      134 GETTABLEKS                       R23 R23 K9 ["Util"]
      136 GETTABLEKS                       R23 R23 K37 ["Telemetry"]
      138 GETTABLEKS                       R23 R23 K39 ["TelemetryContext"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K5 [require]
      143 GETTABLEKS                       R24 R0 K8 ["Src"]
      145 GETTABLEKS                       R24 R24 K9 ["Util"]
      147 GETTABLEKS                       R24 R24 K37 ["Telemetry"]
      149 GETTABLEKS                       R24 R24 K40 ["TelemetryProtocolTypes"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R25 R0 K8 ["Src"]
      156 GETTABLEKS                       R25 R25 K10 ["Foundation"]
      158 GETTABLEKS                       R25 R25 K30 ["Components"]
      160 GETTABLEKS                       R25 R25 K41 ["PageController"]
      162 CALL                             R24 1 1
      163 GETIMPORT                        R25 K5 [require]
      165 GETTABLEKS                       R26 R0 K8 ["Src"]
      167 GETTABLEKS                       R26 R26 K42 ["Types"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K5 [require]
      172 GETTABLEKS                       R27 R0 K8 ["Src"]
      174 GETTABLEKS                       R27 R27 K9 ["Util"]
      176 GETTABLEKS                       R27 R27 K43 ["Services"]
      178 CALL                             R26 1 1
      179 GETTABLEKS                       R27 R26 K44 ["StartPageManager"]
      181 GETTABLEKS                       R28 R1 K45 ["PureComponent"]
      183 LOADK                            R30 K46 ["MainPlugin"]
      184 NAMECALL                         R28 R28 K47 ["extend"]
      186 CALL                             R28 2 1
      187 DUPCLOSURE                       R29 K48 [PROTO_1]
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R6
      199 SETTABLEKS                       R29 R28 K49 ["init"]
      201 DUPCLOSURE                       R29 K50 [PROTO_4]
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R5
      204 SETTABLEKS                       R29 R28 K51 ["didMount"]
      206 DUPCLOSURE                       R29 K52 [PROTO_5]
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R8
      209 SETTABLEKS                       R29 R28 K53 ["willUnmount"]
      211 DUPCLOSURE                       R29 K54 [PROTO_8]
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R24
      221 SETTABLEKS                       R29 R28 K55 ["render"]
      223 RETURN                           R28 1
