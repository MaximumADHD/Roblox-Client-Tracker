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
  GETUPVAL R1 1
  NAMECALL R1 R1 K9 ["createMainPlugin"]
  CALL R1 1 0
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
  GETIMPORT R2 K19 [game]
  LOADK R4 K20 ["EnableRibbonPluginFeature"]
  NAMECALL R2 R2 K21 ["GetEngineFeature"]
  CALL R2 2 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K13 ["Src"]
  GETTABLEKS R5 R6 K22 ["Flags"]
  GETTABLEKS R4 R5 K23 ["getFFlagAddPluginIconsGA"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K22 ["Flags"]
  GETTABLEKS R5 R6 K24 ["getFFlagEnableQuickImporter"]
  CALL R4 1 1
  LOADNIL R5
  MOVE R6 R4
  CALL R6 0 1
  JUMPIFNOT R6 [+16]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K25 ["QuickImporter"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K26 ["new"]
  GETIMPORT R8 K4 [plugin]
  CALL R7 1 1
  MOVE R5 R7
  NAMECALL R7 R5 K27 ["registerAction"]
  CALL R7 1 0
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K7 ["Packages"]
  GETTABLEKS R7 R8 K28 ["PluginLoader"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K29 ["PluginLoaderBuilder"]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K30 ["Resources"]
  GETTABLEKS R9 R10 K31 ["Localization"]
  GETTABLEKS R8 R9 K32 ["SourceStrings"]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K30 ["Resources"]
  GETTABLEKS R10 R11 K31 ["Localization"]
  GETTABLEKS R9 R10 K33 ["LocalizedStrings"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K22 ["Flags"]
  GETTABLEKS R11 R12 K34 ["getFFlagImportQueueRibbonDropdown"]
  CALL R10 1 1
  DUPTABLE R11 K44 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R12 K4 [plugin]
  SETTABLEKS R12 R11 K3 ["plugin"]
  LOADK R12 K12 ["AssetImporter"]
  SETTABLEKS R12 R11 K35 ["pluginName"]
  SETTABLEKS R9 R11 K36 ["translationResourceTable"]
  SETTABLEKS R8 R11 K37 ["fallbackResourceTable"]
  LOADNIL R12
  SETTABLEKS R12 R11 K38 ["overrideLocaleId"]
  LOADNIL R12
  SETTABLEKS R12 R11 K39 ["localizationNamespace"]
  DUPCLOSURE R12 K45 [PROTO_0]
  SETTABLEKS R12 R11 K40 ["getToolbarName"]
  DUPTABLE R12 K51 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R13 K52 [PROTO_1]
  SETTABLEKS R13 R12 K46 ["getName"]
  DUPCLOSURE R13 K53 [PROTO_2]
  SETTABLEKS R13 R12 K47 ["getDescription"]
  MOVE R14 R3
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  JUMPIFNOT R2 [+2]
  LOADK R13 K54 ["rbxlocaltheme://Ribbon3DImport"]
  JUMP [+1]
  LOADK R13 K55 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R13 R12 K48 ["icon"]
  DUPCLOSURE R13 K56 [PROTO_3]
  SETTABLEKS R13 R12 K49 ["text"]
  LOADB R13 1
  SETTABLEKS R13 R12 K50 ["clickableWhenViewportHidden"]
  SETTABLEKS R12 R11 K41 ["buttonInfo"]
  LOADNIL R12
  SETTABLEKS R12 R11 K42 ["dockWidgetInfo"]
  MOVE R13 R10
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  DUPCLOSURE R12 K57 [PROTO_4]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K43 ["shouldImmediatelyOpen"]
  GETTABLEKS R12 R7 K58 ["build"]
  MOVE R13 R11
  CALL R12 1 1
  GETTABLEKS R13 R12 K59 ["pluginLoader"]
  NAMECALL R13 R13 K60 ["waitForUserInteraction"]
  CALL R13 1 1
  JUMPIF R13 [+2]
  CLOSEUPVALS R5
  RETURN R0 0
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K2 ["Parent"]
  LOADNIL R15
  NEWCLOSURE R16 P5
  CAPTURE VAL R14
  CAPTURE REF R15
  CAPTURE VAL R12
  SETGLOBAL R16 K61 ["init"]
  GETIMPORT R17 K4 [plugin]
  GETTABLEKS R16 R17 K62 ["Unloading"]
  NEWCLOSURE R18 P6
  CAPTURE REF R5
  CAPTURE REF R15
  NAMECALL R16 R16 K63 ["Connect"]
  CALL R16 2 0
  GETGLOBAL R16 K61 ["init"]
  CALL R16 0 0
  CLOSEUPVALS R5
  RETURN R0 0
