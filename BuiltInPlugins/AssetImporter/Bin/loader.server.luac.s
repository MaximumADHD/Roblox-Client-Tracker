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
  GETIMPORT R1 K4 [plugin]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["TestLoader"]
  CALL R1 1 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Flags"]
  GETTABLEKS R3 R4 K11 ["getFFlagAssetImportSwitchTestRunner"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+25]
  GETTABLEKS R3 R1 K12 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+32]
  GETTABLEKS R3 R1 K13 ["isFTF"]
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R1 K14 ["launch"]
  LOADK R4 K15 ["AssetImporter"]
  GETTABLEKS R5 R0 K9 ["Src"]
  CALL R3 2 0
  RETURN R0 0
  GETIMPORT R3 K17 [print]
  LOADK R4 K18 ["roblox-cli is no longer supported as a test runner for this plugin."]
  CALL R3 1 0
  GETIMPORT R3 K17 [print]
  LOADK R4 K19 ["Please use FeatureTest instead! (go/ftf)"]
  CALL R3 1 0
  RETURN R0 0
  JUMP [+11]
  GETTABLEKS R3 R1 K14 ["launch"]
  LOADK R4 K15 ["AssetImporter"]
  GETTABLEKS R5 R0 K9 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K12 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K20 ["PluginLoader"]
  GETTABLEKS R4 R5 K21 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K22 ["Resources"]
  GETTABLEKS R5 R6 K23 ["Localization"]
  GETTABLEKS R4 R5 K24 ["SourceStrings"]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K22 ["Resources"]
  GETTABLEKS R6 R7 K23 ["Localization"]
  GETTABLEKS R5 R6 K25 ["LocalizedStrings"]
  GETIMPORT R6 K27 [game]
  LOADK R8 K28 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K29 ["GetFastFlag"]
  CALL R6 2 1
  DUPTABLE R7 K38 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K4 [plugin]
  SETTABLEKS R8 R7 K3 ["plugin"]
  LOADK R8 K15 ["AssetImporter"]
  SETTABLEKS R8 R7 K30 ["pluginName"]
  SETTABLEKS R5 R7 K31 ["translationResourceTable"]
  SETTABLEKS R4 R7 K32 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K34 ["localizationNamespace"]
  DUPCLOSURE R8 K39 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K35 ["getToolbarName"]
  DUPTABLE R8 K45 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K46 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K40 ["getName"]
  DUPCLOSURE R9 K47 [PROTO_2]
  SETTABLEKS R9 R8 K41 ["getDescription"]
  LOADK R9 K48 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K42 ["icon"]
  DUPCLOSURE R9 K49 [PROTO_3]
  SETTABLEKS R9 R8 K43 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K44 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K36 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K37 ["dockWidgetInfo"]
  GETTABLEKS R8 R3 K50 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K51 ["pluginLoader"]
  NAMECALL R9 R9 K52 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K2 ["Parent"]
  LOADNIL R11
  NEWCLOSURE R12 P4
  CAPTURE VAL R10
  CAPTURE REF R11
  CAPTURE VAL R8
  SETGLOBAL R12 K53 ["init"]
  GETIMPORT R13 K4 [plugin]
  GETTABLEKS R12 R13 K54 ["Unloading"]
  NEWCLOSURE R14 P5
  CAPTURE REF R11
  NAMECALL R12 R12 K55 ["Connect"]
  CALL R12 2 0
  GETGLOBAL R12 K53 ["init"]
  CALL R12 0 0
  CLOSEUPVALS R11
  RETURN R0 0
