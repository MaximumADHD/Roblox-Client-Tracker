PROTO_0:
  LOADK R0 K0 ["gameSettingsToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["gameSettingsButton"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+7]
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["General"]
  LOADK R7 K1 ["PluginDescriptionExp"]
  CALL R3 4 1
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["General"]
  LOADK R7 K2 ["PluginDescription"]
  CALL R3 4 1
  RETURN R3 1

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
  GETIMPORT R8 K1 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K21 ["Flags"]
  GETTABLEKS R9 R10 K22 ["getFFlagGameSettingsGameToExperience"]
  CALL R8 1 1
  CALL R8 0 1
  DUPTABLE R9 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R10 K34 [plugin]
  SETTABLEKS R10 R9 K23 ["plugin"]
  LOADK R10 K35 ["GameSettingsPlugin"]
  SETTABLEKS R10 R9 K24 ["pluginName"]
  SETTABLEKS R6 R9 K25 ["translationResourceTable"]
  SETTABLEKS R5 R9 K26 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K28 ["localizationNamespace"]
  DUPCLOSURE R10 K36 [PROTO_0]
  SETTABLEKS R10 R9 K29 ["getToolbarName"]
  DUPTABLE R10 K43 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
  DUPCLOSURE R11 K44 [PROTO_1]
  SETTABLEKS R11 R10 K37 ["getName"]
  DUPCLOSURE R11 K45 [PROTO_2]
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K38 ["getDescription"]
  LOADK R11 K46 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R11 R10 K39 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K40 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K41 ["clickableWhenViewportHidden"]
  NAMECALL R11 R2 K47 ["IsEdit"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K42 ["enabled"]
  SETTABLEKS R10 R9 K30 ["buttonInfo"]
  LOADNIL R10
  SETTABLEKS R10 R9 K31 ["dockWidgetInfo"]
  NEWTABLE R10 1 0
  DUPCLOSURE R11 K48 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K49 ["StudioService.OnOpenGameSettings"]
  SETTABLEKS R10 R9 K32 ["extraTriggers"]
  GETTABLEKS R10 R4 K50 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K51 ["pluginLoader"]
  NAMECALL R11 R11 K52 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K4 ["Parent"]
  GETTABLEKS R13 R14 K53 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K34 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
