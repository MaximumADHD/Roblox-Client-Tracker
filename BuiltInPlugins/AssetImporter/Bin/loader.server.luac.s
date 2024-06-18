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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["PluginLoader"]
  GETTABLEKS R3 R4 K11 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K12 ["Resources"]
  GETTABLEKS R4 R5 K13 ["Localization"]
  GETTABLEKS R3 R4 K14 ["SourceStrings"]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Localization"]
  GETTABLEKS R4 R5 K15 ["LocalizedStrings"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K16 ["defineLuaFlags"]
  CALL R5 1 0
  GETIMPORT R5 K18 [game]
  LOADK R7 K19 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R5 R5 K20 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K31 [plugin]
  SETTABLEKS R7 R6 K21 ["plugin"]
  LOADK R7 K32 ["AssetImporter"]
  SETTABLEKS R7 R6 K22 ["pluginName"]
  SETTABLEKS R4 R6 K23 ["translationResourceTable"]
  SETTABLEKS R3 R6 K24 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K26 ["localizationNamespace"]
  DUPCLOSURE R7 K33 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K27 ["getToolbarName"]
  DUPTABLE R7 K39 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K40 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K34 ["getName"]
  DUPCLOSURE R8 K41 [PROTO_2]
  SETTABLEKS R8 R7 K35 ["getDescription"]
  LOADK R8 K42 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R8 R7 K36 ["icon"]
  DUPCLOSURE R8 K43 [PROTO_3]
  SETTABLEKS R8 R7 K37 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K38 ["clickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K28 ["buttonInfo"]
  LOADNIL R7
  SETTABLEKS R7 R6 K29 ["dockWidgetInfo"]
  GETTABLEKS R7 R2 K44 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K45 ["pluginLoader"]
  NAMECALL R8 R8 K46 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K47 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K31 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
