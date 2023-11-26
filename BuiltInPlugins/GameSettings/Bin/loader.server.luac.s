PROTO_0:
  LOADK R0 K0 ["gameSettingsToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["gameSettingsButton"]
  RETURN R0 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["General"]
  LOADK R7 K1 ["PluginDescription"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnOpenGameSettings"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K11 [game]
  LOADK R4 K12 ["RunService"]
  NAMECALL R2 R2 K13 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R0 K14 ["PluginLoader"]
  GETTABLEKS R4 R5 K15 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["SourceStrings"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K18 ["LocalizedStrings"]
  GETIMPORT R6 K11 [game]
  LOADK R8 K19 ["StudioService"]
  NAMECALL R6 R6 K13 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R8 K31 [plugin]
  SETTABLEKS R8 R7 K20 ["plugin"]
  LOADK R8 K32 ["GameSettings"]
  SETTABLEKS R8 R7 K21 ["pluginName"]
  SETTABLEKS R5 R7 K22 ["translationResourceTable"]
  SETTABLEKS R4 R7 K23 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K24 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["localizationNamespace"]
  DUPCLOSURE R8 K33 [PROTO_0]
  SETTABLEKS R8 R7 K26 ["getToolbarName"]
  DUPTABLE R8 K40 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
  DUPCLOSURE R9 K41 [PROTO_1]
  SETTABLEKS R9 R8 K34 ["getName"]
  DUPCLOSURE R9 K42 [PROTO_2]
  SETTABLEKS R9 R8 K35 ["getDescription"]
  LOADK R9 K43 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R9 R8 K36 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K37 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K38 ["clickableWhenViewportHidden"]
  NAMECALL R9 R2 K44 ["IsEdit"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["enabled"]
  SETTABLEKS R8 R7 K27 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K28 ["dockWidgetInfo"]
  NEWTABLE R8 1 0
  DUPCLOSURE R9 K45 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K46 ["StudioService.OnOpenGameSettings"]
  SETTABLEKS R8 R7 K29 ["extraTriggers"]
  GETTABLEKS R8 R3 K47 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K48 ["pluginLoader"]
  NAMECALL R9 R9 K49 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K50 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K31 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
