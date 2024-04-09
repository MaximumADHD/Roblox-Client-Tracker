PROTO_0:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["Mesh Importer"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["Import"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Utility"]
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
  GETTABLEKS R5 R0 K13 ["PluginLoader"]
  GETTABLEKS R4 R5 K14 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K15 ["Resources"]
  GETTABLEKS R5 R6 K16 ["Localization"]
  GETTABLEKS R4 R5 K17 ["SourceStrings"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K15 ["Resources"]
  GETTABLEKS R6 R7 K16 ["Localization"]
  GETTABLEKS R5 R6 K18 ["LocalizedStrings"]
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K19 ["defineLuaFlags"]
  CALL R6 1 0
  GETIMPORT R6 K10 [game]
  LOADK R8 K20 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K21 ["GetFastFlag"]
  CALL R6 2 1
  DUPTABLE R7 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K32 [plugin]
  SETTABLEKS R8 R7 K22 ["plugin"]
  LOADK R8 K33 ["AssetImporter"]
  SETTABLEKS R8 R7 K23 ["pluginName"]
  SETTABLEKS R5 R7 K24 ["translationResourceTable"]
  SETTABLEKS R4 R7 K25 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["localizationNamespace"]
  DUPCLOSURE R8 K34 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K28 ["getToolbarName"]
  DUPTABLE R8 K40 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K41 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K35 ["getName"]
  DUPCLOSURE R9 K42 [PROTO_2]
  SETTABLEKS R9 R8 K36 ["getDescription"]
  LOADK R9 K43 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K37 ["icon"]
  DUPCLOSURE R9 K44 [PROTO_3]
  SETTABLEKS R9 R8 K38 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K29 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K30 ["dockWidgetInfo"]
  GETTABLEKS R8 R3 K45 ["build"]
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
  GETIMPORT R12 K32 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
