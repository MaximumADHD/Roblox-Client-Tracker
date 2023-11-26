PROTO_0:
  LOADK R3 K0 ["MaterialGenerator"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["MaterialGenerator"]
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
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["launch"]
  LOADK R3 K9 ["MaterialGenerator"]
  GETTABLEKS R4 R0 K10 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K11 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K13 [game]
  LOADK R4 K14 ["EnableMaterialGenerator"]
  NAMECALL R2 R2 K15 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K16 ["Flags"]
  GETTABLEKS R3 R4 K17 ["getFFlagImprovePluginSpeedMaterialGenerator"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K18 ["PluginLoader"]
  GETTABLEKS R4 R5 K19 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K20 ["Resources"]
  GETTABLEKS R5 R6 K21 ["Localization"]
  GETTABLEKS R4 R5 K22 ["SourceStrings"]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K20 ["Resources"]
  GETTABLEKS R6 R7 K21 ["Localization"]
  GETTABLEKS R5 R6 K23 ["LocalizedStrings"]
  DUPTABLE R6 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K34 [plugin]
  SETTABLEKS R7 R6 K24 ["plugin"]
  LOADK R7 K9 ["MaterialGenerator"]
  SETTABLEKS R7 R6 K25 ["pluginName"]
  SETTABLEKS R5 R6 K26 ["translationResourceTable"]
  SETTABLEKS R4 R6 K27 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K28 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K29 ["localizationNamespace"]
  DUPCLOSURE R7 K35 [PROTO_0]
  SETTABLEKS R7 R6 K30 ["getToolbarName"]
  DUPTABLE R7 K40 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R8 K41 [PROTO_1]
  SETTABLEKS R8 R7 K36 ["getName"]
  DUPCLOSURE R8 K42 [PROTO_2]
  SETTABLEKS R8 R7 K37 ["getDescription"]
  LOADK R8 K43 [""]
  SETTABLEKS R8 R7 K38 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K39 ["text"]
  SETTABLEKS R7 R6 K31 ["buttonInfo"]
  DUPTABLE R7 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R8 K9 ["MaterialGenerator"]
  SETTABLEKS R8 R7 K44 ["id"]
  GETIMPORT R8 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K55 [Enum.InitialDockState.Left]
  LOADB R10 0
  LOADB R11 0
  LOADN R12 128
  LOADN R13 224
  LOADN R14 250
  LOADN R15 200
  CALL R8 7 1
  SETTABLEKS R8 R7 K45 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K56 [PROTO_3]
  SETTABLEKS R8 R7 K46 ["getDockTitle"]
  GETIMPORT R8 K59 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K47 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K32 ["dockWidgetInfo"]
  GETTABLEKS R7 R3 K60 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K61 ["pluginLoader"]
  NAMECALL R8 R8 K62 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K63 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K34 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
