PROTO_0:
  LOADK R0 K0 ["Alignment"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["AlignTool"]
  RETURN R0 1

PROTO_2:
  LOADK R0 K0 [""]
  RETURN R0 1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["WindowTitle"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R3 R0 K6 ["PluginLoader"]
  GETTABLEKS R2 R3 K7 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R2 R3 K11 ["SourceStrings"]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["Localization"]
  GETTABLEKS R3 R4 K12 ["LocalizedStrings"]
  DUPTABLE R4 K22 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R5 K23 [plugin]
  SETTABLEKS R5 R4 K13 ["plugin"]
  LOADK R5 K24 ["AlignmentTool"]
  SETTABLEKS R5 R4 K14 ["pluginName"]
  SETTABLEKS R3 R4 K15 ["translationResourceTable"]
  SETTABLEKS R2 R4 K16 ["fallbackResourceTable"]
  LOADNIL R5
  SETTABLEKS R5 R4 K17 ["overrideLocaleId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K18 ["localizationNamespace"]
  DUPCLOSURE R5 K25 [PROTO_0]
  SETTABLEKS R5 R4 K19 ["getToolbarName"]
  DUPTABLE R5 K31 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R6 K32 [PROTO_1]
  SETTABLEKS R6 R5 K26 ["getName"]
  DUPCLOSURE R6 K33 [PROTO_2]
  SETTABLEKS R6 R5 K27 ["getDescription"]
  LOADK R6 K34 [""]
  SETTABLEKS R6 R5 K28 ["icon"]
  LOADNIL R6
  SETTABLEKS R6 R5 K29 ["text"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["clickableWhenViewportHidden"]
  SETTABLEKS R5 R4 K20 ["buttonInfo"]
  DUPTABLE R5 K39 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R6 K24 ["AlignmentTool"]
  SETTABLEKS R6 R5 K35 ["id"]
  GETIMPORT R6 K42 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R7 K46 [Enum.InitialDockState.Left]
  LOADB R8 0
  LOADB R9 0
  LOADN R10 44
  LOADN R11 250
  LOADN R12 175
  LOADN R13 250
  CALL R6 7 1
  SETTABLEKS R6 R5 K36 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R6 K47 [PROTO_3]
  SETTABLEKS R6 R5 K37 ["getDockTitle"]
  GETIMPORT R6 K50 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K38 ["zIndexBehavior"]
  SETTABLEKS R5 R4 K21 ["dockWidgetInfo"]
  GETTABLEKS R5 R1 K51 ["build"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R6 R5 K52 ["pluginLoader"]
  NAMECALL R6 R6 K53 ["waitForUserInteraction"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K54 ["main"]
  CALL R7 1 1
  MOVE R8 R7
  GETIMPORT R9 K23 [plugin]
  MOVE R10 R5
  CALL R8 2 0
  RETURN R0 0
