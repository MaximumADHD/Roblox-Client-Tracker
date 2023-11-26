PROTO_0:
  LOADK R0 K0 ["luaPlayerEmulatorToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["luaPlayerEmulatorButton"]
  RETURN R0 1

PROTO_2:
  LOADK R0 K0 [""]
  RETURN R0 1

PROTO_3:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["PLUGIN_WIDGET_STATE"]
  NAMECALL R0 R0 K3 ["GetSetting"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["RunService"]
  NAMECALL R2 R2 K12 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K13 ["defineLuaFlags"]
  CALL R3 1 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K15 ["PluginLoader"]
  GETTABLEKS R5 R6 K16 ["PluginLoaderBuilder"]
  CALL R4 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K17 ["Resources"]
  GETTABLEKS R5 R6 K18 ["SourceStrings"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K17 ["Resources"]
  GETTABLEKS R6 R7 K19 ["LocalizedStrings"]
  DUPTABLE R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R8 K31 [plugin]
  SETTABLEKS R8 R7 K20 ["plugin"]
  LOADK R8 K32 ["PlayerEmulator"]
  SETTABLEKS R8 R7 K21 ["pluginName"]
  SETTABLEKS R6 R7 K22 ["translationResourceTable"]
  SETTABLEKS R5 R7 K23 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K24 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["localizationNamespace"]
  DUPCLOSURE R8 K33 [PROTO_0]
  SETTABLEKS R8 R7 K26 ["getToolbarName"]
  DUPTABLE R8 K39 [{"getName", "getDescription", "icon", "text", "enabled"}]
  DUPCLOSURE R9 K40 [PROTO_1]
  SETTABLEKS R9 R8 K34 ["getName"]
  DUPCLOSURE R9 K41 [PROTO_2]
  SETTABLEKS R9 R8 K35 ["getDescription"]
  LOADK R9 K42 ["rbxlocaltheme://Player"]
  SETTABLEKS R9 R8 K36 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K37 ["text"]
  NAMECALL R9 R2 K43 ["IsEdit"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K38 ["enabled"]
  SETTABLEKS R8 R7 K27 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K28 ["dockWidgetInfo"]
  DUPCLOSURE R8 K44 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K29 ["shouldImmediatelyOpen"]
  GETTABLEKS R8 R4 K45 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K46 ["pluginLoader"]
  NAMECALL R9 R9 K47 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K48 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K31 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
