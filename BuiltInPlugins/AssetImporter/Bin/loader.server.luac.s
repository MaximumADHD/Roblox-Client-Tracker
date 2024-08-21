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

PROTO_4:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETIMPORT R0 K4 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Controllers"]
  GETTABLEKS R1 R2 K7 ["Initialization"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K8 ["new"]
  GETIMPORT R2 K1 [plugin]
  GETUPVAL R3 2
  CALL R1 2 1
  SETUPVAL R1 1
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagAssetImporterPackageMigration"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+59]
  GETIMPORT R2 K9 [plugin]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagAssetImportSwitchTestRunner"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIFNOT R4 [+25]
  GETTABLEKS R4 R2 K13 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+32]
  GETTABLEKS R4 R2 K14 ["isFTF"]
  CALL R4 0 1
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R2 K15 ["launch"]
  LOADK R5 K16 ["AssetImporter"]
  GETTABLEKS R6 R0 K5 ["Src"]
  CALL R4 2 0
  RETURN R0 0
  GETIMPORT R4 K18 [print]
  LOADK R5 K19 ["roblox-cli is no longer supported as a test runner for this plugin."]
  CALL R4 1 0
  GETIMPORT R4 K18 [print]
  LOADK R5 K20 ["Please use FeatureTest instead! (go/ftf)"]
  CALL R4 1 0
  RETURN R0 0
  JUMP [+11]
  GETTABLEKS R4 R2 K15 ["launch"]
  LOADK R5 K16 ["AssetImporter"]
  GETTABLEKS R6 R0 K5 ["Src"]
  CALL R4 2 0
  GETTABLEKS R4 R2 K13 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K21 ["PluginLoader"]
  GETTABLEKS R3 R4 K22 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K23 ["Resources"]
  GETTABLEKS R4 R5 K24 ["Localization"]
  GETTABLEKS R3 R4 K25 ["SourceStrings"]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K23 ["Resources"]
  GETTABLEKS R5 R6 K24 ["Localization"]
  GETTABLEKS R4 R5 K26 ["LocalizedStrings"]
  GETIMPORT R5 K28 [game]
  LOADK R7 K29 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R5 R5 K30 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K39 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K9 [plugin]
  SETTABLEKS R7 R6 K8 ["plugin"]
  LOADK R7 K16 ["AssetImporter"]
  SETTABLEKS R7 R6 K31 ["pluginName"]
  SETTABLEKS R4 R6 K32 ["translationResourceTable"]
  SETTABLEKS R3 R6 K33 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K34 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K35 ["localizationNamespace"]
  DUPCLOSURE R7 K40 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K36 ["getToolbarName"]
  DUPTABLE R7 K46 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K47 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K41 ["getName"]
  DUPCLOSURE R8 K48 [PROTO_2]
  SETTABLEKS R8 R7 K42 ["getDescription"]
  LOADK R8 K49 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R8 R7 K43 ["icon"]
  DUPCLOSURE R8 K50 [PROTO_3]
  SETTABLEKS R8 R7 K44 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K45 ["clickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K37 ["buttonInfo"]
  LOADNIL R7
  SETTABLEKS R7 R6 K38 ["dockWidgetInfo"]
  GETTABLEKS R7 R2 K51 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K52 ["pluginLoader"]
  NAMECALL R8 R8 K53 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  MOVE R9 R1
  CALL R9 0 1
  JUMPIFNOT R9 [+27]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K2 ["Parent"]
  LOADNIL R10
  NEWCLOSURE R11 P4
  CAPTURE VAL R9
  CAPTURE REF R10
  CAPTURE VAL R7
  SETGLOBAL R11 K54 ["init"]
  GETIMPORT R12 K9 [plugin]
  GETTABLEKS R11 R12 K55 ["Unloading"]
  NEWCLOSURE R13 P5
  CAPTURE REF R10
  NAMECALL R11 R11 K56 ["Connect"]
  CALL R11 2 0
  GETGLOBAL R11 K54 ["init"]
  CALL R11 0 0
  CLOSEUPVALS R10
  RETURN R0 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K57 ["DEPRECATED_main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K9 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
