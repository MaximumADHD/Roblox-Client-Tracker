PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["BindableEvent"]
  CALL R0 1 1
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["LOAD_MATERIAL_GENERATOR"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K5 ["Bind"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K6 ["Event"]
  RETURN R1 1

PROTO_2:
  LOADK R3 K0 ["MaterialGenerator"]
  RETURN R3 1

PROTO_3:
  LOADK R3 K0 ["MaterialGenerator"]
  RETURN R3 1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["MemStorageService"]
  NAMECALL R1 R1 K9 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K12 ["SharedPluginConstants"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K13 ["launch"]
  LOADK R5 K14 ["MaterialGenerator"]
  GETTABLEKS R6 R0 K15 ["Src"]
  CALL R4 2 0
  GETTABLEKS R4 R2 K16 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K7 [game]
  LOADK R6 K17 ["EnableMaterialGenerator"]
  NAMECALL R4 R4 K18 ["GetFastFlag"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K15 ["Src"]
  GETTABLEKS R6 R7 K19 ["Flags"]
  GETTABLEKS R5 R6 K20 ["getFFlagImprovePluginSpeedMaterialGenerator"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K15 ["Src"]
  GETTABLEKS R7 R8 K19 ["Flags"]
  GETTABLEKS R6 R7 K21 ["getFFlagShowMaterialGeneratorFromElsewhere"]
  CALL R5 1 1
  MOVE R6 R4
  CALL R6 0 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K22 ["PluginLoader"]
  GETTABLEKS R7 R8 K23 ["PluginLoaderBuilder"]
  CALL R6 1 1
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K24 ["Resources"]
  GETTABLEKS R8 R9 K25 ["Localization"]
  GETTABLEKS R7 R8 K26 ["SourceStrings"]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K24 ["Resources"]
  GETTABLEKS R9 R10 K25 ["Localization"]
  GETTABLEKS R8 R9 K27 ["LocalizedStrings"]
  NEWTABLE R9 1 0
  LOADK R11 K28 ["MemStorageService."]
  GETTABLEKS R12 R3 K29 ["LOAD_MATERIAL_GENERATOR"]
  CONCAT R10 R11 R12
  DUPCLOSURE R11 K30 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLE R11 R9 R10
  DUPTABLE R10 K41 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "extraTriggers", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R11 K42 [plugin]
  SETTABLEKS R11 R10 K31 ["plugin"]
  LOADK R11 K14 ["MaterialGenerator"]
  SETTABLEKS R11 R10 K32 ["pluginName"]
  SETTABLEKS R8 R10 K33 ["translationResourceTable"]
  SETTABLEKS R7 R10 K34 ["fallbackResourceTable"]
  LOADNIL R11
  SETTABLEKS R11 R10 K35 ["overrideLocaleId"]
  LOADNIL R11
  SETTABLEKS R11 R10 K36 ["localizationNamespace"]
  MOVE R12 R5
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  MOVE R11 R9
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K37 ["extraTriggers"]
  DUPCLOSURE R11 K43 [PROTO_2]
  SETTABLEKS R11 R10 K38 ["getToolbarName"]
  DUPTABLE R11 K48 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R12 K49 [PROTO_3]
  SETTABLEKS R12 R11 K44 ["getName"]
  DUPCLOSURE R12 K50 [PROTO_4]
  SETTABLEKS R12 R11 K45 ["getDescription"]
  LOADK R12 K51 [""]
  SETTABLEKS R12 R11 K46 ["icon"]
  LOADNIL R12
  SETTABLEKS R12 R11 K47 ["text"]
  SETTABLEKS R11 R10 K39 ["buttonInfo"]
  DUPTABLE R11 K56 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R12 K14 ["MaterialGenerator"]
  SETTABLEKS R12 R11 K52 ["id"]
  GETIMPORT R12 K59 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R13 K63 [Enum.InitialDockState.Left]
  LOADB R14 0
  LOADB R15 0
  LOADN R16 128
  LOADN R17 224
  LOADN R18 250
  LOADN R19 200
  CALL R12 7 1
  SETTABLEKS R12 R11 K53 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R12 K64 [PROTO_5]
  SETTABLEKS R12 R11 K54 ["getDockTitle"]
  GETIMPORT R12 K67 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K55 ["zIndexBehavior"]
  SETTABLEKS R11 R10 K40 ["dockWidgetInfo"]
  GETTABLEKS R11 R6 K68 ["build"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R12 R11 K69 ["pluginLoader"]
  NAMECALL R12 R12 K70 ["waitForUserInteraction"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  RETURN R0 0
  GETIMPORT R13 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K71 ["main"]
  CALL R13 1 1
  MOVE R14 R13
  GETIMPORT R15 K42 [plugin]
  MOVE R16 R11
  CALL R14 2 0
  RETURN R0 0
