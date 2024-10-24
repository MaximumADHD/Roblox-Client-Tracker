PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Localization"]
  GETTABLEKS R2 R3 K1 ["new"]
  DUPTABLE R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["translationResourceTable"]
  LOADK R4 K6 ["StartPage"]
  SETTABLEKS R4 R3 K4 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Analytics"]
  GETTABLEKS R2 R3 K1 ["new"]
  DUPCLOSURE R3 K9 [PROTO_0]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K11 ["telemetry"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K12 ["DEPRECATED_stylizer"]
  GETUPVAL R2 5
  GETTABLEKS R3 R1 K13 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K14 ["design"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K1 ["new"]
  GETTABLEKS R3 R1 K13 ["Plugin"]
  NAMECALL R3 R3 K15 ["GetMouse"]
  CALL R3 1 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K16 ["mouse"]
  GETTABLEKS R2 R0 K16 ["mouse"]
  LOADK R4 K17 ["Arrow"]
  LOADN R5 0
  NAMECALL R2 R2 K18 ["__pushCursor"]
  CALL R2 3 0
  GETUPVAL R2 7
  JUMPIFNOT R2 [+26]
  DUPTABLE R2 K20 [{"IsLoggedIn"}]
  GETIMPORT R4 K22 [game]
  LOADK R6 K23 ["StudioUserService"]
  NAMECALL R4 R4 K24 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K19 ["IsLoggedIn"]
  SETTABLEKS R3 R2 K19 ["IsLoggedIn"]
  SETTABLEKS R2 R0 K25 ["state"]
  GETUPVAL R2 8
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R1 K13 ["Plugin"]
  LOADK R4 K26 ["StartPageBridge"]
  NAMECALL R2 R2 K27 ["GetPluginComponent"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K28 ["startPageBridge"]
  LOADB R2 0
  SETTABLEKS R2 R0 K29 ["isRendering"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"IsLoggedIn"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["IsLoggedIn"]
  SETTABLEKS R3 R2 K0 ["IsLoggedIn"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["StudioUserService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K4 ["IsLoggedIn"]
  NAMECALL R2 R1 K5 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["loggedInConnection"]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["load"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["unload"]
  CALL R1 0 0
  GETUPVAL R1 2
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["loggedInConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["startPageBridge"]
  NAMECALL R0 R0 K1 ["OpenLoadingPageAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["startPageBridge"]
  NAMECALL R0 R0 K1 ["CloseLoadingPageAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+33]
  GETTABLEKS R4 R0 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["IsLoggedIn"]
  JUMPIF R3 [+15]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R0 K4 ["isRendering"]
  JUMPIFNOT R3 [+8]
  LOADB R3 0
  SETTABLEKS R3 R0 K4 ["isRendering"]
  GETIMPORT R3 K7 [task.defer]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CALL R3 1 0
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R0 K4 ["isRendering"]
  JUMPIF R3 [+8]
  LOADB R3 1
  SETTABLEKS R3 R0 K4 ["isRendering"]
  GETIMPORT R3 K7 [task.defer]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CALL R3 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["provide"]
  DUPTABLE R4 K15 [{"Plugin", "Mouse", "Stylizer", "Localization", "Analytics", "Telemetry", "Design"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K16 ["new"]
  MOVE R6 R2
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["Plugin"]
  GETTABLEKS R5 R0 K17 ["mouse"]
  SETTABLEKS R5 R4 K9 ["Mouse"]
  GETTABLEKS R5 R0 K18 ["DEPRECATED_stylizer"]
  SETTABLEKS R5 R4 K10 ["Stylizer"]
  GETTABLEKS R5 R0 K19 ["localization"]
  SETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R5 R0 K20 ["analytics"]
  SETTABLEKS R5 R4 K12 ["Analytics"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K16 ["new"]
  GETTABLEKS R6 R0 K21 ["telemetry"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["Telemetry"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K16 ["new"]
  GETTABLEKS R6 R0 K22 ["design"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["Design"]
  DUPTABLE R5 K24 [{"MainWidget"}]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K25 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K35 [{"Id", "Enabled", "ShouldRestore", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "CreateWidgetImmediately"}]
  LOADK R9 K36 ["StartPage"]
  SETTABLEKS R9 R8 K26 ["Id"]
  LOADB R9 1
  SETTABLEKS R9 R8 K27 ["Enabled"]
  LOADB R9 0
  SETTABLEKS R9 R8 K28 ["ShouldRestore"]
  GETTABLEKS R9 R0 K19 ["localization"]
  LOADK R11 K1 ["Plugin"]
  LOADK R12 K37 ["Name"]
  NAMECALL R9 R9 K38 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["Title"]
  GETIMPORT R9 K41 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K30 ["ZIndexBehavior"]
  GETIMPORT R9 K43 [Enum.InitialDockState.Float]
  SETTABLEKS R9 R8 K31 ["InitialDockState"]
  GETIMPORT R9 K45 [Vector2.new]
  LOADN R10 232
  LOADN R11 232
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["Size"]
  GETIMPORT R9 K45 [Vector2.new]
  LOADN R10 232
  LOADN R11 232
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["MinSize"]
  LOADB R9 1
  SETTABLEKS R9 R8 K34 ["CreateWidgetImmediately"]
  DUPTABLE R9 K48 [{"Wrapper", "StyleLink"}]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K25 ["createElement"]
  GETUPVAL R11 8
  NEWTABLE R12 1 0
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K49 ["Tag"]
  LOADK R14 K50 ["X-Fill X-Column"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K52 [{"PageController"}]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K25 ["createElement"]
  GETUPVAL R15 9
  CALL R14 1 1
  SETTABLEKS R14 R13 K51 ["PageController"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K46 ["Wrapper"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K25 ["createElement"]
  LOADK R11 K47 ["StyleLink"]
  DUPTABLE R12 K54 [{"StyleSheet"}]
  GETTABLEKS R13 R0 K22 ["design"]
  SETTABLEKS R13 R12 K53 ["StyleSheet"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K47 ["StyleLink"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K23 ["MainWidget"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaStartPageNetworkCache"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPageWaitForLogin"]
  CALL R3 1 1
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagStudioMoveStandaloneScope"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Network"]
  GETTABLEKS R6 R7 K15 ["GameCache"]
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R6 R4 K16 ["UI"]
  GETTABLEKS R7 R6 K17 ["DockWidget"]
  GETTABLEKS R8 R6 K18 ["Pane"]
  GETTABLEKS R9 R4 K19 ["ContextServices"]
  GETTABLEKS R10 R9 K20 ["Plugin"]
  GETTABLEKS R11 R9 K21 ["Mouse"]
  GETTABLEKS R12 R9 K22 ["Design"]
  GETTABLEKS R15 R4 K23 ["Style"]
  GETTABLEKS R14 R15 K24 ["Themes"]
  GETTABLEKS R13 R14 K25 ["StudioTheme"]
  GETTABLEKS R15 R4 K26 ["Styling"]
  GETTABLEKS R14 R15 K27 ["registerPluginStyles"]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K28 ["Resources"]
  GETTABLEKS R16 R17 K29 ["Localization"]
  GETTABLEKS R15 R16 K30 ["SourceStrings"]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K28 ["Resources"]
  GETTABLEKS R17 R18 K29 ["Localization"]
  GETTABLEKS R16 R17 K31 ["LocalizedStrings"]
  GETIMPORT R17 K33 [game]
  LOADK R19 K34 ["LoginPageCloseOnStartPageOpen"]
  NAMECALL R17 R17 K35 ["GetFastFlag"]
  CALL R17 2 1
  JUMPIFNOT R17 [+10]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K8 ["Src"]
  GETTABLEKS R19 R20 K9 ["SharedFlags"]
  GETTABLEKS R18 R19 K12 ["getFFlagStudioMoveStandaloneScope"]
  CALL R17 1 1
  CALL R17 0 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K8 ["Src"]
  GETTABLEKS R21 R22 K36 ["Util"]
  GETTABLEKS R20 R21 K37 ["Telemetry"]
  GETTABLEKS R19 R20 K38 ["TelemetryProtocol"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K8 ["Src"]
  GETTABLEKS R22 R23 K36 ["Util"]
  GETTABLEKS R21 R22 K37 ["Telemetry"]
  GETTABLEKS R20 R21 K39 ["TelemetryContext"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K8 ["Src"]
  GETTABLEKS R23 R24 K36 ["Util"]
  GETTABLEKS R22 R23 K37 ["Telemetry"]
  GETTABLEKS R21 R22 K40 ["TelemetryProtocolTypes"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K8 ["Src"]
  GETTABLEKS R21 R22 K41 ["Components"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K42 ["PageController"]
  CALL R22 1 1
  GETTABLEKS R23 R1 K43 ["PureComponent"]
  LOADK R25 K44 ["MainPlugin"]
  NAMECALL R23 R23 K45 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K46 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R17
  SETTABLEKS R24 R23 K47 ["init"]
  DUPCLOSURE R24 K48 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R24 R23 K49 ["didMount"]
  DUPCLOSURE R24 K50 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R24 R23 K51 ["willUnmount"]
  DUPCLOSURE R24 K52 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R23 K53 ["render"]
  RETURN R23 1
