PROTO_0:
  LOADK R3 K0 ["Mesh Importer"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["Import"]
  RETURN R3 1

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
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K24 ["Flags"]
  GETTABLEKS R7 R8 K25 ["getFFlagImportQueueRibbonDropdown"]
  CALL R6 1 1
  DUPTABLE R7 K35 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R8 K4 [plugin]
  SETTABLEKS R8 R7 K3 ["plugin"]
  LOADK R8 K12 ["AssetImporter"]
  SETTABLEKS R8 R7 K26 ["pluginName"]
  SETTABLEKS R5 R7 K27 ["translationResourceTable"]
  SETTABLEKS R4 R7 K28 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K29 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K30 ["localizationNamespace"]
  DUPCLOSURE R8 K36 [PROTO_0]
  SETTABLEKS R8 R7 K31 ["getToolbarName"]
  DUPTABLE R8 K42 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K43 [PROTO_1]
  SETTABLEKS R9 R8 K37 ["getName"]
  DUPCLOSURE R9 K44 [PROTO_2]
  SETTABLEKS R9 R8 K38 ["getDescription"]
  LOADK R9 K45 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K39 ["icon"]
  DUPCLOSURE R9 K46 [PROTO_3]
  SETTABLEKS R9 R8 K40 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K41 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K32 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["dockWidgetInfo"]
  MOVE R9 R6
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  DUPCLOSURE R8 K47 [PROTO_4]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K34 ["shouldImmediatelyOpen"]
  GETTABLEKS R8 R3 K48 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K49 ["pluginLoader"]
  NAMECALL R9 R9 K50 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K2 ["Parent"]
  LOADNIL R11
  NEWCLOSURE R12 P5
  CAPTURE VAL R10
  CAPTURE REF R11
  CAPTURE VAL R8
  SETGLOBAL R12 K51 ["init"]
  GETIMPORT R13 K4 [plugin]
  GETTABLEKS R12 R13 K52 ["Unloading"]
  NEWCLOSURE R14 P6
  CAPTURE REF R11
  NAMECALL R12 R12 K53 ["Connect"]
  CALL R12 2 0
  GETGLOBAL R12 K51 ["init"]
  CALL R12 0 0
  CLOSEUPVALS R11
  RETURN R0 0
