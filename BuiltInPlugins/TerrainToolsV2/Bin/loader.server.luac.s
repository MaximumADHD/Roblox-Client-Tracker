PROTO_0:
  LOADK R0 K0 ["TerrainToolsLuaToolbarName"]
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

PROTO_4:
  LOADB R0 1
  RETURN R0 1

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
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R0 K10 ["PluginLoader"]
  GETTABLEKS R3 R4 K11 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K13 ["Resources"]
  GETTABLEKS R4 R5 K14 ["SourceStrings"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K13 ["Resources"]
  GETTABLEKS R5 R6 K15 ["LocalizedStrings"]
  GETIMPORT R6 K17 [game]
  LOADK R8 K18 ["EnableTerrainEditor2"]
  NAMECALL R6 R6 K19 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  DUPTABLE R6 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R7 K31 [plugin]
  SETTABLEKS R7 R6 K20 ["plugin"]
  LOADK R7 K32 ["TerrainToolsV2"]
  SETTABLEKS R7 R6 K21 ["pluginName"]
  SETTABLEKS R5 R6 K22 ["translationResourceTable"]
  SETTABLEKS R4 R6 K23 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K24 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["localizationNamespace"]
  DUPCLOSURE R7 K33 [PROTO_0]
  SETTABLEKS R7 R6 K26 ["getToolbarName"]
  DUPTABLE R7 K39 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K40 [PROTO_1]
  SETTABLEKS R8 R7 K34 ["getName"]
  DUPCLOSURE R8 K41 [PROTO_2]
  SETTABLEKS R8 R7 K35 ["getDescription"]
  LOADK R8 K42 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R8 R7 K36 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K37 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K38 ["clickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K27 ["buttonInfo"]
  DUPTABLE R7 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R8 K48 ["TerrainTools"]
  SETTABLEKS R8 R7 K43 ["id"]
  GETIMPORT R8 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K55 [Enum.InitialDockState.Left]
  LOADB R10 1
  LOADB R11 0
  LOADN R12 44
  LOADN R13 88
  GETTABLEKS R15 R3 K56 ["MIN_WIDGET_SIZE"]
  GETTABLEKS R14 R15 K57 ["X"]
  GETTABLEKS R16 R3 K56 ["MIN_WIDGET_SIZE"]
  GETTABLEKS R15 R16 K58 ["Y"]
  CALL R8 7 1
  SETTABLEKS R8 R7 K44 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K59 [PROTO_3]
  SETTABLEKS R8 R7 K45 ["getDockTitle"]
  GETIMPORT R8 K62 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K46 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K28 ["dockWidgetInfo"]
  GETIMPORT R8 K17 [game]
  LOADK R10 K63 ["Shorelines_Tooling"]
  NAMECALL R8 R8 K19 ["GetFastFlag"]
  CALL R8 2 1
  JUMPIF R8 [+7]
  GETIMPORT R8 K17 [game]
  LOADK R10 K64 ["SmoothVoxels_Tooling"]
  NAMECALL R8 R8 K19 ["GetFastFlag"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  DUPCLOSURE R7 K65 [PROTO_4]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K29 ["shouldImmediatelyOpen"]
  GETTABLEKS R7 R2 K66 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K67 ["pluginLoader"]
  NAMECALL R8 R8 K68 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K69 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K31 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
