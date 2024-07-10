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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagAssetImporterPackageMigration"]
  CALL R3 1 1
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETIMPORT R4 K11 [plugin]
  JUMPIF R4 [+1]
  RETURN R0 0
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+38]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["TestLoader"]
  CALL R4 1 1
  MOVE R5 R3
  CALL R5 0 1
  JUMPIFNOT R5 [+17]
  GETTABLEKS R5 R4 K14 ["getDebugFlags"]
  LOADK R6 K15 ["AssetImporter"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["EnableRoactConfigs"]
  JUMPIFNOT R6 [+10]
  GETIMPORT R6 K18 [_G]
  LOADB R7 1
  SETTABLEKS R7 R6 K19 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
  GETIMPORT R6 K18 [_G]
  LOADB R7 1
  SETTABLEKS R7 R6 K20 ["___COMPAT_WARNINGS__"]
  GETTABLEKS R5 R4 K21 ["launch"]
  LOADK R6 K15 ["AssetImporter"]
  GETTABLEKS R7 R0 K5 ["Src"]
  CALL R5 2 0
  GETTABLEKS R5 R4 K22 ["isCli"]
  CALL R5 0 1
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+33]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K23 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K24 ["Utility"]
  GETTABLEKS R6 R7 K25 ["DebugFlags"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["EnableRoactConfigs"]
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R4 K26 ["setGlobalConfig"]
  DUPTABLE R7 K30 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["elementTracing"]
  LOADB R8 1
  SETTABLEKS R8 R7 K28 ["propValidation"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["typeChecks"]
  CALL R6 1 0
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K31 ["PluginLoader"]
  GETTABLEKS R5 R6 K32 ["PluginLoaderBuilder"]
  CALL R4 1 1
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K33 ["Resources"]
  GETTABLEKS R6 R7 K34 ["Localization"]
  GETTABLEKS R5 R6 K35 ["SourceStrings"]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K33 ["Resources"]
  GETTABLEKS R7 R8 K34 ["Localization"]
  GETTABLEKS R6 R7 K36 ["LocalizedStrings"]
  GETIMPORT R7 K38 [game]
  LOADK R9 K39 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R7 R7 K40 ["GetFastFlag"]
  CALL R7 2 1
  DUPTABLE R8 K49 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R9 K11 [plugin]
  SETTABLEKS R9 R8 K10 ["plugin"]
  LOADK R9 K15 ["AssetImporter"]
  SETTABLEKS R9 R8 K41 ["pluginName"]
  SETTABLEKS R6 R8 K42 ["translationResourceTable"]
  SETTABLEKS R5 R8 K43 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K44 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K45 ["localizationNamespace"]
  DUPCLOSURE R9 K50 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K46 ["getToolbarName"]
  DUPTABLE R9 K56 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R10 K57 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K51 ["getName"]
  DUPCLOSURE R10 K58 [PROTO_2]
  SETTABLEKS R10 R9 K52 ["getDescription"]
  LOADK R10 K59 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R10 R9 K53 ["icon"]
  DUPCLOSURE R10 K60 [PROTO_3]
  SETTABLEKS R10 R9 K54 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K55 ["clickableWhenViewportHidden"]
  SETTABLEKS R9 R8 K47 ["buttonInfo"]
  LOADNIL R9
  SETTABLEKS R9 R8 K48 ["dockWidgetInfo"]
  GETTABLEKS R9 R4 K61 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K62 ["pluginLoader"]
  NAMECALL R10 R10 K63 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K64 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K11 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
