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
  GETTABLEKS R6 R0 K15 ["Packages"]
  GETTABLEKS R5 R6 K16 ["PluginLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K17 ["PluginLoaderBuilder"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K18 ["Resources"]
  GETTABLEKS R6 R7 K19 ["SourceStrings"]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K18 ["Resources"]
  GETTABLEKS R7 R8 K20 ["LocalizedStrings"]
  DUPTABLE R8 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R9 K32 [plugin]
  SETTABLEKS R9 R8 K21 ["plugin"]
  LOADK R9 K33 ["PlayerEmulator"]
  SETTABLEKS R9 R8 K22 ["pluginName"]
  SETTABLEKS R7 R8 K23 ["translationResourceTable"]
  SETTABLEKS R6 R8 K24 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K25 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K26 ["localizationNamespace"]
  DUPCLOSURE R9 K34 [PROTO_0]
  SETTABLEKS R9 R8 K27 ["getToolbarName"]
  DUPTABLE R9 K41 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
  DUPCLOSURE R10 K42 [PROTO_1]
  SETTABLEKS R10 R9 K35 ["getName"]
  DUPCLOSURE R10 K43 [PROTO_2]
  SETTABLEKS R10 R9 K36 ["getDescription"]
  LOADK R10 K44 ["rbxlocaltheme://Player"]
  SETTABLEKS R10 R9 K37 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["text"]
  GETIMPORT R10 K10 [game]
  LOADK R12 K45 ["PlayerEmulatorButtonAlwaysClickable"]
  NAMECALL R10 R10 K46 ["GetFastFlag"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["clickableWhenViewportHidden"]
  NAMECALL R10 R2 K47 ["IsEdit"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K40 ["enabled"]
  SETTABLEKS R9 R8 K28 ["buttonInfo"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["dockWidgetInfo"]
  DUPCLOSURE R9 K48 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K30 ["shouldImmediatelyOpen"]
  GETTABLEKS R9 R5 K49 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K50 ["pluginLoader"]
  NAMECALL R10 R10 K51 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K52 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K32 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
