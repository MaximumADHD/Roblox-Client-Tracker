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
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagAssetImportUseTestLoader"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagAssetImportRefactorPluginInit"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K10 [plugin]
  JUMPIF R3 [+1]
  RETURN R0 0
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["launch"]
  LOADK R5 K14 ["AssetImporter"]
  GETTABLEKS R6 R0 K5 ["Src"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K15 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+33]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K16 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K17 ["Utility"]
  GETTABLEKS R5 R6 K18 ["DebugFlags"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K19 ["EnableRoactConfigs"]
  CALL R5 0 1
  JUMPIFNOT R5 [+13]
  GETTABLEKS R5 R3 K20 ["setGlobalConfig"]
  DUPTABLE R6 K24 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K21 ["elementTracing"]
  LOADB R7 1
  SETTABLEKS R7 R6 K22 ["propValidation"]
  LOADB R7 1
  SETTABLEKS R7 R6 K23 ["typeChecks"]
  CALL R5 1 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K25 ["PluginLoader"]
  GETTABLEKS R4 R5 K26 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K27 ["Resources"]
  GETTABLEKS R5 R6 K28 ["Localization"]
  GETTABLEKS R4 R5 K29 ["SourceStrings"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K27 ["Resources"]
  GETTABLEKS R6 R7 K28 ["Localization"]
  GETTABLEKS R5 R6 K30 ["LocalizedStrings"]
  GETIMPORT R6 K32 [game]
  LOADK R8 K33 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K34 ["GetFastFlag"]
  CALL R6 2 1
  DUPTABLE R7 K43 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K10 [plugin]
  SETTABLEKS R8 R7 K9 ["plugin"]
  LOADK R8 K14 ["AssetImporter"]
  SETTABLEKS R8 R7 K35 ["pluginName"]
  SETTABLEKS R5 R7 K36 ["translationResourceTable"]
  SETTABLEKS R4 R7 K37 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K38 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K39 ["localizationNamespace"]
  DUPCLOSURE R8 K44 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K40 ["getToolbarName"]
  DUPTABLE R8 K50 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K51 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K45 ["getName"]
  DUPCLOSURE R9 K52 [PROTO_2]
  SETTABLEKS R9 R8 K46 ["getDescription"]
  LOADK R9 K53 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K47 ["icon"]
  DUPCLOSURE R9 K54 [PROTO_3]
  SETTABLEKS R9 R8 K48 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K49 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K41 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K42 ["dockWidgetInfo"]
  GETTABLEKS R8 R3 K55 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K56 ["pluginLoader"]
  NAMECALL R9 R9 K57 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K58 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K10 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
