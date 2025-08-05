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
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
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
  GETTABLEKS R5 R0 K13 ["Src"]
  GETTABLEKS R4 R5 K18 ["Flags"]
  GETTABLEKS R3 R4 K19 ["getFFlagEnableQuickImporter"]
  CALL R2 1 1
  LOADNIL R3
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+16]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K13 ["Src"]
  GETTABLEKS R5 R6 K20 ["QuickImporter"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K21 ["new"]
  GETIMPORT R6 K4 [plugin]
  CALL R5 1 1
  MOVE R3 R5
  NAMECALL R5 R3 K22 ["registerAction"]
  CALL R5 1 0
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K23 ["PluginLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K24 ["PluginLoaderBuilder"]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K25 ["Resources"]
  GETTABLEKS R7 R8 K26 ["Localization"]
  GETTABLEKS R6 R7 K27 ["SourceStrings"]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K25 ["Resources"]
  GETTABLEKS R8 R9 K26 ["Localization"]
  GETTABLEKS R7 R8 K28 ["LocalizedStrings"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  GETTABLEKS R9 R10 K29 ["getFFlagImportQueueRibbonDropdown"]
  CALL R8 1 1
  DUPTABLE R9 K39 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R10 K4 [plugin]
  SETTABLEKS R10 R9 K3 ["plugin"]
  LOADK R10 K12 ["AssetImporter"]
  SETTABLEKS R10 R9 K30 ["pluginName"]
  SETTABLEKS R7 R9 K31 ["translationResourceTable"]
  SETTABLEKS R6 R9 K32 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K33 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K34 ["localizationNamespace"]
  DUPCLOSURE R10 K40 [PROTO_0]
  SETTABLEKS R10 R9 K35 ["getToolbarName"]
  DUPTABLE R10 K46 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R11 K47 [PROTO_1]
  SETTABLEKS R11 R10 K41 ["getName"]
  DUPCLOSURE R11 K48 [PROTO_2]
  SETTABLEKS R11 R10 K42 ["getDescription"]
  LOADK R11 K49 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R11 R10 K43 ["icon"]
  DUPCLOSURE R11 K50 [PROTO_3]
  SETTABLEKS R11 R10 K44 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K45 ["clickableWhenViewportHidden"]
  SETTABLEKS R10 R9 K36 ["buttonInfo"]
  LOADNIL R10
  SETTABLEKS R10 R9 K37 ["dockWidgetInfo"]
  MOVE R11 R8
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  DUPCLOSURE R10 K51 [PROTO_4]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["shouldImmediatelyOpen"]
  GETTABLEKS R10 R5 K52 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K53 ["pluginLoader"]
  NAMECALL R11 R11 K54 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+2]
  CLOSEUPVALS R3
  RETURN R0 0
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K2 ["Parent"]
  LOADNIL R13
  NEWCLOSURE R14 P5
  CAPTURE VAL R12
  CAPTURE REF R13
  CAPTURE VAL R10
  SETGLOBAL R14 K55 ["init"]
  GETIMPORT R15 K4 [plugin]
  GETTABLEKS R14 R15 K56 ["Unloading"]
  NEWCLOSURE R16 P6
  CAPTURE REF R3
  CAPTURE REF R13
  NAMECALL R14 R14 K57 ["Connect"]
  CALL R14 2 0
  GETGLOBAL R14 K55 ["init"]
  CALL R14 0 0
  CLOSEUPVALS R3
  RETURN R0 0
