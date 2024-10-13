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
  GETTABLEKS R5 R6 K20 ["getFFlagShowMaterialGeneratorFromElsewhere"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K21 ["PluginLoader"]
  GETTABLEKS R6 R7 K22 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K23 ["Resources"]
  GETTABLEKS R7 R8 K24 ["Localization"]
  GETTABLEKS R6 R7 K25 ["SourceStrings"]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K23 ["Resources"]
  GETTABLEKS R8 R9 K24 ["Localization"]
  GETTABLEKS R7 R8 K26 ["LocalizedStrings"]
  NEWTABLE R8 1 0
  LOADK R10 K27 ["MemStorageService."]
  GETTABLEKS R11 R3 K28 ["LOAD_MATERIAL_GENERATOR"]
  CONCAT R9 R10 R11
  DUPCLOSURE R10 K29 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLE R10 R8 R9
  DUPTABLE R9 K40 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "extraTriggers", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R10 K41 [plugin]
  SETTABLEKS R10 R9 K30 ["plugin"]
  LOADK R10 K14 ["MaterialGenerator"]
  SETTABLEKS R10 R9 K31 ["pluginName"]
  SETTABLEKS R7 R9 K32 ["translationResourceTable"]
  SETTABLEKS R6 R9 K33 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K34 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K35 ["localizationNamespace"]
  MOVE R11 R4
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R8
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K36 ["extraTriggers"]
  DUPCLOSURE R10 K42 [PROTO_2]
  SETTABLEKS R10 R9 K37 ["getToolbarName"]
  DUPTABLE R10 K47 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R11 K48 [PROTO_3]
  SETTABLEKS R11 R10 K43 ["getName"]
  DUPCLOSURE R11 K49 [PROTO_4]
  SETTABLEKS R11 R10 K44 ["getDescription"]
  LOADK R11 K50 [""]
  SETTABLEKS R11 R10 K45 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K46 ["text"]
  SETTABLEKS R10 R9 K38 ["buttonInfo"]
  DUPTABLE R10 K55 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R11 K14 ["MaterialGenerator"]
  SETTABLEKS R11 R10 K51 ["id"]
  GETIMPORT R11 K58 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K62 [Enum.InitialDockState.Left]
  LOADB R13 0
  LOADB R14 0
  LOADN R15 128
  LOADN R16 224
  LOADN R17 250
  LOADN R18 200
  CALL R11 7 1
  SETTABLEKS R11 R10 K52 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K63 [PROTO_5]
  SETTABLEKS R11 R10 K53 ["getDockTitle"]
  GETIMPORT R11 K66 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K54 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K39 ["dockWidgetInfo"]
  GETTABLEKS R10 R5 K67 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K68 ["pluginLoader"]
  NAMECALL R11 R11 K69 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K70 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K41 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
