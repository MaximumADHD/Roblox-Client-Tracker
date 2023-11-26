PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
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
  LOADK R7 K1 ["Name"]
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
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["shouldPluginRun"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R0 K9 ["PluginLoader"]
  GETTABLEKS R3 R4 K10 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R3 R4 K13 ["SourceStrings"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["Localization"]
  GETTABLEKS R4 R5 K14 ["LocalizedStrings"]
  DUPTABLE R5 K24 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R6 K25 [plugin]
  SETTABLEKS R6 R5 K15 ["plugin"]
  LOADK R6 K26 ["NestedPackagePublisher"]
  SETTABLEKS R6 R5 K16 ["pluginName"]
  SETTABLEKS R4 R5 K17 ["translationResourceTable"]
  SETTABLEKS R3 R5 K18 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K19 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K20 ["localizationNamespace"]
  DUPCLOSURE R6 K27 [PROTO_0]
  SETTABLEKS R6 R5 K21 ["getToolbarName"]
  DUPTABLE R6 K33 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R7 K34 [PROTO_1]
  SETTABLEKS R7 R6 K28 ["getName"]
  DUPCLOSURE R7 K35 [PROTO_2]
  SETTABLEKS R7 R6 K29 ["getDescription"]
  LOADK R7 K36 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R7 R6 K30 ["icon"]
  LOADNIL R7
  SETTABLEKS R7 R6 K31 ["text"]
  LOADB R7 1
  SETTABLEKS R7 R6 K32 ["clickableWhenViewportHidden"]
  SETTABLEKS R6 R5 K22 ["buttonInfo"]
  DUPTABLE R6 K41 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R7 K26 ["NestedPackagePublisher"]
  SETTABLEKS R7 R6 K37 ["id"]
  GETIMPORT R7 K44 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R8 K48 [Enum.InitialDockState.Bottom]
  LOADB R9 0
  LOADB R10 0
  LOADN R11 128
  LOADN R12 224
  LOADN R13 250
  LOADN R14 200
  CALL R7 7 1
  SETTABLEKS R7 R6 K38 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R7 K49 [PROTO_3]
  SETTABLEKS R7 R6 K39 ["getDockTitle"]
  GETIMPORT R7 K52 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K40 ["zIndexBehavior"]
  SETTABLEKS R6 R5 K23 ["dockWidgetInfo"]
  GETTABLEKS R6 R2 K53 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K54 ["pluginLoader"]
  NAMECALL R7 R7 K55 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K56 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K25 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
