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
  JUMPIFNOT R2 [+22]
  GETIMPORT R2 K9 [plugin]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["launch"]
  LOADK R4 K13 ["AssetImporter"]
  GETTABLEKS R5 R0 K5 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K14 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K15 ["PluginLoader"]
  GETTABLEKS R3 R4 K16 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K17 ["Resources"]
  GETTABLEKS R4 R5 K18 ["Localization"]
  GETTABLEKS R3 R4 K19 ["SourceStrings"]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K17 ["Resources"]
  GETTABLEKS R5 R6 K18 ["Localization"]
  GETTABLEKS R4 R5 K20 ["LocalizedStrings"]
  GETIMPORT R5 K22 [game]
  LOADK R7 K23 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R5 R5 K24 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K9 [plugin]
  SETTABLEKS R7 R6 K8 ["plugin"]
  LOADK R7 K13 ["AssetImporter"]
  SETTABLEKS R7 R6 K25 ["pluginName"]
  SETTABLEKS R4 R6 K26 ["translationResourceTable"]
  SETTABLEKS R3 R6 K27 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K28 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K29 ["localizationNamespace"]
  DUPCLOSURE R7 K34 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K30 ["getToolbarName"]
  DUPTABLE R7 K40 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K41 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K35 ["getName"]
  DUPCLOSURE R8 K42 [PROTO_2]
  SETTABLEKS R8 R7 K36 ["getDescription"]
  LOADK R8 K43 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R8 R7 K37 ["icon"]
  DUPCLOSURE R8 K44 [PROTO_3]
  SETTABLEKS R8 R7 K38 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K39 ["clickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K31 ["buttonInfo"]
  LOADNIL R7
  SETTABLEKS R7 R6 K32 ["dockWidgetInfo"]
  GETTABLEKS R7 R2 K45 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K46 ["pluginLoader"]
  NAMECALL R8 R8 K47 ["waitForUserInteraction"]
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
  SETGLOBAL R11 K48 ["init"]
  GETIMPORT R12 K9 [plugin]
  GETTABLEKS R11 R12 K49 ["Unloading"]
  NEWCLOSURE R13 P5
  CAPTURE REF R10
  NAMECALL R11 R11 K50 ["Connect"]
  CALL R11 2 0
  GETGLOBAL R11 K48 ["init"]
  CALL R11 0 0
  CLOSEUPVALS R10
  RETURN R0 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K51 ["DEPRECATED_main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K9 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
