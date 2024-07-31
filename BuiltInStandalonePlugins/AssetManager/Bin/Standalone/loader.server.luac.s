PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K11 ["DebugAssetMgInAssetDm"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K13 ["EnableAssetManager"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K14 ["Packages"]
  GETTABLEKS R2 R3 K15 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K16 ["launch"]
  LOADK R3 K2 ["AssetManager"]
  GETTABLEKS R4 R0 K17 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K18 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K20 [plugin]
  GETTABLEKS R3 R0 K21 ["Name"]
  SETTABLEKS R3 R2 K21 ["Name"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K14 ["Packages"]
  GETTABLEKS R4 R5 K22 ["PluginLoader"]
  GETTABLEKS R3 R4 K23 ["PluginLoaderBuilder"]
  CALL R2 1 1
  DUPTABLE R3 K28 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R4 K29 [PROTO_0]
  SETTABLEKS R4 R3 K24 ["getName"]
  DUPCLOSURE R4 K30 [PROTO_1]
  SETTABLEKS R4 R3 K25 ["getDescription"]
  LOADK R4 K31 ["rbxlocaltheme://AssetManager"]
  SETTABLEKS R4 R3 K26 ["icon"]
  LOADB R4 1
  SETTABLEKS R4 R3 K27 ["enabled"]
  GETTABLEKS R7 R0 K17 ["Src"]
  GETTABLEKS R6 R7 K32 ["Resources"]
  GETTABLEKS R5 R6 K33 ["Localization"]
  GETTABLEKS R4 R5 K34 ["SourceStrings"]
  GETTABLEKS R8 R0 K17 ["Src"]
  GETTABLEKS R7 R8 K32 ["Resources"]
  GETTABLEKS R6 R7 K33 ["Localization"]
  GETTABLEKS R5 R6 K35 ["LocalizedStrings"]
  DUPTABLE R6 K41 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
  GETIMPORT R7 K20 [plugin]
  SETTABLEKS R7 R6 K19 ["plugin"]
  LOADK R7 K2 ["AssetManager"]
  SETTABLEKS R7 R6 K36 ["pluginName"]
  DUPCLOSURE R7 K42 [PROTO_2]
  SETTABLEKS R7 R6 K37 ["getToolbarName"]
  SETTABLEKS R5 R6 K38 ["translationResourceTable"]
  SETTABLEKS R4 R6 K39 ["fallbackResourceTable"]
  SETTABLEKS R3 R6 K40 ["buttonInfo"]
  DUPTABLE R7 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R8 K2 ["AssetManager"]
  SETTABLEKS R8 R7 K43 ["id"]
  GETIMPORT R8 K50 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K54 [Enum.InitialDockState.Bottom]
  LOADB R10 0
  LOADB R11 0
  LOADN R12 128
  LOADN R13 224
  LOADN R14 250
  LOADN R15 200
  CALL R8 7 1
  SETTABLEKS R8 R7 K44 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K55 [PROTO_3]
  SETTABLEKS R8 R7 K45 ["getDockTitle"]
  GETIMPORT R8 K58 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K46 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K59 ["dockWidgetInfo"]
  GETTABLEKS R7 R2 K60 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K61 ["pluginLoader"]
  NAMECALL R8 R8 K62 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Bin"]
  GETTABLEKS R11 R12 K7 ["Common"]
  GETTABLEKS R10 R11 K63 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K20 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
