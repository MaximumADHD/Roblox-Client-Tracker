PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADN R2 0
  NAMECALL R0 R0 K4 ["ExitAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
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
  GETTABLEKS R3 R4 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagAssetImportRefactorPluginInit"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+28]
  GETIMPORT R3 K11 [plugin]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K14 ["EnableRoactConfigs"]
  CALL R4 0 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R4 R3 K15 ["setGlobalConfig"]
  DUPTABLE R5 K19 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["elementTracing"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["propValidation"]
  LOADB R6 1
  SETTABLEKS R6 R5 K18 ["typeChecks"]
  CALL R4 1 0
  GETTABLEKS R3 R1 K20 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K21 ["RunTests"]
  CALL R3 0 1
  JUMPIFNOT R3 [+191]
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+11]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K22 ["DEPRECATED_commonInit"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K23 ["Testing"]
  GETTABLEKS R4 R5 K24 ["isFTF"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIF R4 [+35]
  GETIMPORT R4 K26 [game]
  LOADK R6 K27 ["ChooseAnimationForRestPose"]
  LOADB R7 1
  NAMECALL R4 R4 K28 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K26 [game]
  LOADK R6 K29 ["HideAnimationSettingForGltf"]
  LOADB R7 1
  NAMECALL R4 R4 K28 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K26 [game]
  LOADK R6 K30 ["ImporterOpensAvatarPreviewerBetaCheck"]
  LOADB R7 1
  NAMECALL R4 R4 K28 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K26 [game]
  LOADK R6 K31 ["AssetImportUseUploadId"]
  LOADB R7 1
  NAMECALL R4 R4 K28 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K26 [game]
  LOADK R6 K32 ["KeepZeroInfluenceBones"]
  LOADB R7 1
  NAMECALL R4 R4 K28 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K33 ["Dev"]
  GETTABLEKS R5 R6 K34 ["TestEZ"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K35 ["TestBootstrap"]
  GETTABLEKS R7 R4 K36 ["Reporters"]
  GETTABLEKS R6 R7 K37 ["TeamCityReporter"]
  GETTABLEKS R8 R1 K38 ["LogTestsQuiet"]
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R4 K36 ["Reporters"]
  GETTABLEKS R7 R8 K39 ["TextReporterQuiet"]
  JUMP [+4]
  GETTABLEKS R8 R4 K36 ["Reporters"]
  GETTABLEKS R7 R8 K40 ["TextReporter"]
  GETIMPORT R10 K43 [_G]
  GETTABLEKS R9 R10 K41 ["TEAMCITY"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R6
  JUMP [+1]
  MOVE R8 R7
  GETIMPORT R9 K45 [print]
  LOADK R11 K46 ["----- All %* Tests ------"]
  GETTABLEKS R13 R0 K47 ["Name"]
  NAMECALL R11 R11 K48 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  CALL R9 1 0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K5 ["Src"]
  SETLIST R11 R12 1 [1]
  MOVE R12 R8
  NAMECALL R9 R5 K49 ["run"]
  CALL R9 3 0
  GETIMPORT R9 K45 [print]
  LOADK R10 K50 ["----------------------------------"]
  CALL R9 1 0
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+28]
  GETIMPORT R9 K45 [print]
  LOADK R10 K51 [""]
  CALL R9 1 0
  GETIMPORT R9 K45 [print]
  LOADK R11 K52 ["----- All %* Integration Tests ------"]
  GETTABLEKS R13 R0 K47 ["Name"]
  NAMECALL R11 R11 K48 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  CALL R9 1 0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K53 ["IntegrationTests"]
  SETLIST R11 R12 1 [1]
  MOVE R12 R8
  NAMECALL R9 R5 K49 ["run"]
  CALL R9 3 0
  GETIMPORT R9 K45 [print]
  LOADK R10 K50 ["----------------------------------"]
  CALL R9 1 0
  GETTABLEKS R9 R1 K54 ["RunDeveloperFrameworkTests"]
  CALL R9 0 1
  JUMPIFNOT R9 [+26]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K12 ["Packages"]
  GETTABLEKS R10 R11 K55 ["Framework"]
  CALL R9 1 1
  GETIMPORT R10 K45 [print]
  LOADK R11 K51 [""]
  CALL R10 1 0
  GETIMPORT R10 K45 [print]
  LOADK R11 K56 ["----- All DeveloperFramework Tests ------"]
  CALL R10 1 0
  GETTABLEKS R11 R9 K57 ["TestHelpers"]
  GETTABLEKS R10 R11 K58 ["runFrameworkTests"]
  MOVE R11 R4
  MOVE R12 R8
  CALL R10 2 0
  GETIMPORT R10 K45 [print]
  LOADK R11 K50 ["----------------------------------"]
  CALL R10 1 0
  GETTABLEKS R9 R1 K20 ["RunningUnderCLI"]
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETIMPORT R9 K60 [pcall]
  DUPCLOSURE R10 K61 [PROTO_0]
  CALL R9 1 0
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K62 ["PluginLoader"]
  GETTABLEKS R4 R5 K63 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K64 ["Resources"]
  GETTABLEKS R5 R6 K65 ["Localization"]
  GETTABLEKS R4 R5 K66 ["SourceStrings"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K64 ["Resources"]
  GETTABLEKS R6 R7 K65 ["Localization"]
  GETTABLEKS R5 R6 K67 ["LocalizedStrings"]
  GETIMPORT R6 K26 [game]
  LOADK R8 K68 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R6 R6 K69 ["GetFastFlag"]
  CALL R6 2 1
  DUPTABLE R7 K78 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K11 [plugin]
  SETTABLEKS R8 R7 K10 ["plugin"]
  LOADK R8 K79 ["AssetImporter"]
  SETTABLEKS R8 R7 K70 ["pluginName"]
  SETTABLEKS R5 R7 K71 ["translationResourceTable"]
  SETTABLEKS R4 R7 K72 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K73 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K74 ["localizationNamespace"]
  DUPCLOSURE R8 K80 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K75 ["getToolbarName"]
  DUPTABLE R8 K86 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R9 K87 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K81 ["getName"]
  DUPCLOSURE R9 K88 [PROTO_3]
  SETTABLEKS R9 R8 K82 ["getDescription"]
  LOADK R9 K89 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R9 R8 K83 ["icon"]
  DUPCLOSURE R9 K90 [PROTO_4]
  SETTABLEKS R9 R8 K84 ["text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K85 ["clickableWhenViewportHidden"]
  SETTABLEKS R8 R7 K76 ["buttonInfo"]
  LOADNIL R8
  SETTABLEKS R8 R7 K77 ["dockWidgetInfo"]
  GETTABLEKS R8 R3 K91 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K92 ["pluginLoader"]
  NAMECALL R9 R9 K93 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K94 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K11 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
