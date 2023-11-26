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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_AssetImporter3"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Utility"]
  GETTABLEKS R2 R3 K11 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K12 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K13 ["RunService"]
  NAMECALL R2 R2 K14 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K15 ["PluginLoader"]
  GETTABLEKS R4 R5 K16 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K17 ["Resources"]
  GETTABLEKS R5 R6 K18 ["Localization"]
  GETTABLEKS R4 R5 K19 ["SourceStrings"]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K17 ["Resources"]
  GETTABLEKS R6 R7 K18 ["Localization"]
  GETTABLEKS R5 R6 K20 ["LocalizedStrings"]
  GETIMPORT R6 K8 [require]
  GETIMPORT R9 K5 [script]
  GETTABLEKS R8 R9 K6 ["Parent"]
  GETTABLEKS R7 R8 K21 ["defineLuaFlags"]
  CALL R6 1 0
  GETIMPORT R6 K1 [game]
  LOADK R8 K22 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K3 ["GetFastFlag"]
  CALL R6 2 1
  DUPTABLE R7 K32 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K33 [plugin]
  SETTABLEKS R8 R7 K23 ["plugin"]
  LOADK R8 K34 ["AssetImporter"]
  SETTABLEKS R8 R7 K24 ["pluginName"]
  SETTABLEKS R5 R7 K25 ["translationResourceTable"]
  SETTABLEKS R4 R7 K26 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K28 ["localizationNamespace"]
  DUPCLOSURE R8 K35 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K29 ["getToolbarName"]
  DUPTABLE R8 K41 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K42 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K36 ["getName"]
  DUPCLOSURE R9 K43 [PROTO_2]
  SETTABLEKS R9 R8 K37 ["getDescription"]
  LOADK R9 K44 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K38 ["icon"]
  DUPCLOSURE R9 K45 [PROTO_3]
  SETTABLEKS R9 R8 K39 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K40 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K30 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K31 ["dockWidgetInfo"]
  GETTABLEKS R8 R3 K46 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K47 ["pluginLoader"]
  NAMECALL R9 R9 K48 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K8 [require]
  GETIMPORT R13 K5 [script]
  GETTABLEKS R12 R13 K6 ["Parent"]
  GETTABLEKS R11 R12 K49 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K33 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
