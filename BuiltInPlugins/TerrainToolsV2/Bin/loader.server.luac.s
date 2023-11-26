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
  DUPTABLE R6 K26 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
  GETIMPORT R7 K27 [plugin]
  SETTABLEKS R7 R6 K16 ["plugin"]
  LOADK R7 K28 ["TerrainToolsV2"]
  SETTABLEKS R7 R6 K17 ["pluginName"]
  SETTABLEKS R5 R6 K18 ["translationResourceTable"]
  SETTABLEKS R4 R6 K19 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K20 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K21 ["localizationNamespace"]
  DUPCLOSURE R7 K29 [PROTO_0]
  SETTABLEKS R7 R6 K22 ["getToolbarName"]
  DUPTABLE R7 K35 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K36 [PROTO_1]
  SETTABLEKS R8 R7 K30 ["getName"]
  DUPCLOSURE R8 K37 [PROTO_2]
  SETTABLEKS R8 R7 K31 ["getDescription"]
  LOADK R8 K38 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R8 R7 K32 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K34 ["clickableWhenViewportHidden"]
  SETTABLEKS R7 R6 K23 ["buttonInfo"]
  DUPTABLE R7 K43 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R8 K44 ["TerrainTools"]
  SETTABLEKS R8 R7 K39 ["id"]
  GETIMPORT R8 K47 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K51 [Enum.InitialDockState.Left]
  LOADB R10 1
  LOADB R11 0
  LOADN R12 44
  LOADN R13 88
  GETTABLEKS R15 R3 K52 ["MIN_WIDGET_SIZE"]
  GETTABLEKS R14 R15 K53 ["X"]
  GETTABLEKS R16 R3 K52 ["MIN_WIDGET_SIZE"]
  GETTABLEKS R15 R16 K54 ["Y"]
  CALL R8 7 1
  SETTABLEKS R8 R7 K40 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K55 [PROTO_3]
  SETTABLEKS R8 R7 K41 ["getDockTitle"]
  GETIMPORT R8 K58 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K42 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K24 ["dockWidgetInfo"]
  GETIMPORT R8 K60 [game]
  LOADK R10 K61 ["Shorelines_Tooling"]
  NAMECALL R8 R8 K62 ["GetFastFlag"]
  CALL R8 2 1
  JUMPIF R8 [+7]
  GETIMPORT R8 K60 [game]
  LOADK R10 K63 ["SmoothVoxels_Tooling"]
  NAMECALL R8 R8 K62 ["GetFastFlag"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  DUPCLOSURE R7 K64 [PROTO_4]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["shouldImmediatelyOpen"]
  GETTABLEKS R7 R2 K65 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K66 ["pluginLoader"]
  NAMECALL R8 R8 K67 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K68 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K27 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
