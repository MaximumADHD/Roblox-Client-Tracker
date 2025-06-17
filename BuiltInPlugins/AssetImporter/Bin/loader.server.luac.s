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
  LOADB R0 1
  RETURN R0 1

PROTO_5:
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

PROTO_6:
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
  GETTABLEKS R2 R1 K9 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+20]
  GETTABLEKS R2 R1 K10 ["isFTF"]
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R1 K11 ["launch"]
  LOADK R3 K12 ["AssetImporter"]
  GETTABLEKS R4 R0 K13 ["Src"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K15 [print]
  LOADK R3 K16 ["roblox-cli is no longer supported as a test runner for this plugin."]
  CALL R2 1 0
  GETIMPORT R2 K15 [print]
  LOADK R3 K17 ["Please use FeatureTest instead! (go/ftf)"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K18 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K19 ["PluginLoaderBuilder"]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K20 ["Resources"]
  GETTABLEKS R5 R6 K21 ["Localization"]
  GETTABLEKS R4 R5 K22 ["SourceStrings"]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K20 ["Resources"]
  GETTABLEKS R6 R7 K21 ["Localization"]
  GETTABLEKS R5 R6 K23 ["LocalizedStrings"]
  GETIMPORT R6 K25 [game]
  LOADK R8 K26 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K27 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K28 ["Flags"]
  GETTABLEKS R8 R9 K29 ["getFFlagImportQueueRibbonDropdown"]
  CALL R7 1 1
  DUPTABLE R8 K39 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R9 K4 [plugin]
  SETTABLEKS R9 R8 K3 ["plugin"]
  LOADK R9 K12 ["AssetImporter"]
  SETTABLEKS R9 R8 K30 ["pluginName"]
  SETTABLEKS R5 R8 K31 ["translationResourceTable"]
  SETTABLEKS R4 R8 K32 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K33 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K34 ["localizationNamespace"]
  DUPCLOSURE R9 K40 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K35 ["getToolbarName"]
  DUPTABLE R9 K46 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R10 K47 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K41 ["getName"]
  DUPCLOSURE R10 K48 [PROTO_2]
  SETTABLEKS R10 R9 K42 ["getDescription"]
  LOADK R10 K49 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R10 R9 K43 ["icon"]
  DUPCLOSURE R10 K50 [PROTO_3]
  SETTABLEKS R10 R9 K44 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K45 ["clickableWhenViewportHidden"]
  SETTABLEKS R9 R8 K36 ["buttonInfo"]
  LOADNIL R9
  SETTABLEKS R9 R8 K37 ["dockWidgetInfo"]
  MOVE R10 R7
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  DUPCLOSURE R9 K51 [PROTO_4]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K38 ["shouldImmediatelyOpen"]
  GETTABLEKS R9 R3 K52 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K53 ["pluginLoader"]
  NAMECALL R10 R10 K54 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  LOADNIL R12
  NEWCLOSURE R13 P5
  CAPTURE VAL R11
  CAPTURE REF R12
  CAPTURE VAL R9
  SETGLOBAL R13 K55 ["init"]
  GETIMPORT R14 K4 [plugin]
  GETTABLEKS R13 R14 K56 ["Unloading"]
  NEWCLOSURE R15 P6
  CAPTURE REF R12
  NAMECALL R13 R13 K57 ["Connect"]
  CALL R13 2 0
  GETGLOBAL R13 K55 ["init"]
  CALL R13 0 0
  CLOSEUPVALS R12
  RETURN R0 0
