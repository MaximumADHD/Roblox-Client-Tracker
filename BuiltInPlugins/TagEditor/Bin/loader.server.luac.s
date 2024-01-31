PROTO_0:
  LOADK R0 K0 ["tagEditorToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["TagEditor"]
  RETURN R0 1

PROTO_2:
  LOADK R3 K0 [""]
  RETURN R3 1

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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_TagEditor"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETTABLEKS R2 R3 K11 ["shouldPluginRun"]
  CALL R1 1 1
  GETIMPORT R2 K8 [require]
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K12 ["defineLuaFlags"]
  CALL R2 1 0
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K13 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K14 ["PluginLoader"]
  GETTABLEKS R4 R5 K15 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K18 ["SourceStrings"]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K16 ["Resources"]
  GETTABLEKS R6 R7 K17 ["Localization"]
  GETTABLEKS R5 R6 K19 ["LocalizedStrings"]
  DUPTABLE R6 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K30 [plugin]
  SETTABLEKS R7 R6 K20 ["plugin"]
  LOADK R7 K31 ["TagEditor"]
  SETTABLEKS R7 R6 K21 ["pluginName"]
  SETTABLEKS R5 R6 K22 ["translationResourceTable"]
  SETTABLEKS R4 R6 K23 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K24 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["localizationNamespace"]
  DUPCLOSURE R7 K32 [PROTO_0]
  SETTABLEKS R7 R6 K26 ["getToolbarName"]
  DUPTABLE R7 K38 [{"getName", "getDescription", "icon", "text", "ClickableWhenViewportHidden"}]
  DUPCLOSURE R8 K39 [PROTO_1]
  SETTABLEKS R8 R7 K33 ["getName"]
  DUPCLOSURE R8 K40 [PROTO_2]
  SETTABLEKS R8 R7 K34 ["getDescription"]
  LOADK R8 K41 [""]
  SETTABLEKS R8 R7 K35 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K36 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K37 ["ClickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K27 ["buttonInfo"]
  DUPTABLE R7 K46 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  JUMPIFNOT R2 [+2]
  LOADK R8 K31 ["TagEditor"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K42 ["id"]
  GETIMPORT R8 K49 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K53 [Enum.InitialDockState.Right]
  LOADB R10 0
  LOADB R11 0
  LOADN R12 44
  LOADN R13 200
  LOADN R14 200
  LOADN R15 250
  CALL R8 7 1
  SETTABLEKS R8 R7 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K54 [PROTO_3]
  SETTABLEKS R8 R7 K44 ["getDockTitle"]
  GETIMPORT R8 K57 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K45 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K28 ["dockWidgetInfo"]
  GETTABLEKS R7 R3 K58 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K59 ["pluginLoader"]
  NAMECALL R8 R8 K60 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K61 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K30 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
