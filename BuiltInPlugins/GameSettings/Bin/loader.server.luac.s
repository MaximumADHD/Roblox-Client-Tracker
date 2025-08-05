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
  GETTABLEKS R5 R0 K14 ["Packages"]
  GETTABLEKS R4 R5 K15 ["PluginLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K16 ["PluginLoaderBuilder"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K17 ["Resources"]
  GETTABLEKS R5 R6 K18 ["SourceStrings"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K17 ["Resources"]
  GETTABLEKS R6 R7 K19 ["LocalizedStrings"]
  GETIMPORT R7 K11 [game]
  LOADK R9 K20 ["StudioService"]
  NAMECALL R7 R7 K13 ["GetService"]
  CALL R7 2 1
  DUPTABLE R8 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R9 K32 [plugin]
  SETTABLEKS R9 R8 K21 ["plugin"]
  LOADK R9 K33 ["GameSettingsPlugin"]
  SETTABLEKS R9 R8 K22 ["pluginName"]
  SETTABLEKS R6 R8 K23 ["translationResourceTable"]
  SETTABLEKS R5 R8 K24 ["fallbackResourceTable"]
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
  LOADK R10 K44 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R10 R9 K37 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K39 ["clickableWhenViewportHidden"]
  NAMECALL R10 R2 K45 ["IsEdit"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K40 ["enabled"]
  SETTABLEKS R9 R8 K28 ["buttonInfo"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["dockWidgetInfo"]
  NEWTABLE R9 1 0
  DUPCLOSURE R10 K46 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K47 ["StudioService.OnOpenGameSettings"]
  SETTABLEKS R9 R8 K30 ["extraTriggers"]
  GETTABLEKS R9 R4 K48 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K49 ["pluginLoader"]
  NAMECALL R10 R10 K50 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K51 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K32 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
