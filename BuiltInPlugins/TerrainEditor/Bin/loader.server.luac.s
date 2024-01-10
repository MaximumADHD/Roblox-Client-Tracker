PROTO_0:
  LOADK R0 K0 ["TerrainEditorLuaToolbarName"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["Editor"]
  RETURN R0 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["PluginButtonEditorTooltip"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["Title"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["main"]
  CALL R0 1 1
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R1 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETIMPORT R4 K1 [require]
  GETTABLEKS R6 R3 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["TestLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["launch"]
  LOADK R6 K12 ["TerrainEditor"]
  GETTABLEKS R7 R3 K6 ["Src"]
  CALL R5 2 0
  GETTABLEKS R5 R2 K13 ["RunningUnderCLI"]
  CALL R5 0 1
  JUMPIF R5 [+7]
  GETIMPORT R5 K15 [game]
  LOADK R7 K16 ["EnableTerrainEditor2"]
  NAMECALL R5 R5 K17 ["GetFastFlag"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R1 K18 ["PluginLoader"]
  GETTABLEKS R6 R7 K19 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETTABLEKS R9 R1 K6 ["Src"]
  GETTABLEKS R8 R9 K20 ["Resources"]
  GETTABLEKS R7 R8 K21 ["Localization"]
  GETTABLEKS R6 R7 K22 ["SourceStrings"]
  GETTABLEKS R10 R1 K6 ["Src"]
  GETTABLEKS R9 R10 K20 ["Resources"]
  GETTABLEKS R8 R9 K21 ["Localization"]
  GETTABLEKS R7 R8 K23 ["LocalizedStrings"]
  DUPTABLE R8 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R9 K34 [plugin]
  SETTABLEKS R9 R8 K24 ["plugin"]
  LOADK R9 K12 ["TerrainEditor"]
  SETTABLEKS R9 R8 K25 ["pluginName"]
  SETTABLEKS R7 R8 K26 ["translationResourceTable"]
  SETTABLEKS R6 R8 K27 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K28 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["localizationNamespace"]
  DUPCLOSURE R9 K35 [PROTO_0]
  SETTABLEKS R9 R8 K30 ["getToolbarName"]
  DUPTABLE R9 K41 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R10 K42 [PROTO_1]
  SETTABLEKS R10 R9 K36 ["getName"]
  DUPCLOSURE R10 K43 [PROTO_2]
  SETTABLEKS R10 R9 K37 ["getDescription"]
  LOADK R10 K44 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R10 R9 K38 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K39 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K40 ["clickableWhenViewportHidden"]
  SETTABLEKS R9 R8 K31 ["buttonInfo"]
  DUPTABLE R9 K49 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K12 ["TerrainEditor"]
  SETTABLEKS R10 R9 K45 ["id"]
  GETIMPORT R10 K52 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K56 [Enum.InitialDockState.Left]
  LOADB R12 1
  LOADB R13 0
  LOADN R14 64
  LOADN R15 88
  LOADN R16 64
  LOADN R17 200
  CALL R10 7 1
  SETTABLEKS R10 R9 K46 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K57 [PROTO_3]
  SETTABLEKS R10 R9 K47 ["getDockTitle"]
  GETIMPORT R10 K60 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K48 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K32 ["dockWidgetInfo"]
  GETTABLEKS R9 R5 K61 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K62 ["pluginLoader"]
  NAMECALL R10 R10 K63 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  MOVE R11 R0
  GETIMPORT R12 K34 [plugin]
  MOVE R13 R9
  CALL R11 2 0
  RETURN R0 0
