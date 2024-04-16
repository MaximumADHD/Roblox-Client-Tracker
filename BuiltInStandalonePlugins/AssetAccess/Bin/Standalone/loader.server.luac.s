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
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K9 ["Src"]
  GETTABLEKS R1 R2 K10 ["SharedFlags"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K11 ["getFFlagAssetAccessErrorMessageImprovements"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["launch"]
  LOADK R5 K2 ["AssetAccess"]
  GETTABLEKS R6 R0 K9 ["Src"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K15 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K17 [plugin]
  GETTABLEKS R5 R0 K18 ["Name"]
  SETTABLEKS R5 R4 K18 ["Name"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K19 ["PluginLoader"]
  GETTABLEKS R5 R6 K20 ["PluginLoaderBuilder"]
  CALL R4 1 1
  DUPTABLE R5 K25 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R6 K26 [PROTO_0]
  SETTABLEKS R6 R5 K21 ["getName"]
  DUPCLOSURE R6 K27 [PROTO_1]
  SETTABLEKS R6 R5 K22 ["getDescription"]
  LOADK R6 K28 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K23 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K24 ["enabled"]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K29 ["Resources"]
  GETTABLEKS R7 R8 K30 ["Localization"]
  GETTABLEKS R6 R7 K31 ["SourceStrings"]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K29 ["Resources"]
  GETTABLEKS R8 R9 K30 ["Localization"]
  GETTABLEKS R7 R8 K32 ["LocalizedStrings"]
  DUPTABLE R8 K38 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
  GETIMPORT R9 K17 [plugin]
  SETTABLEKS R9 R8 K16 ["plugin"]
  LOADK R9 K2 ["AssetAccess"]
  SETTABLEKS R9 R8 K33 ["pluginName"]
  DUPCLOSURE R9 K39 [PROTO_2]
  SETTABLEKS R9 R8 K34 ["getToolbarName"]
  SETTABLEKS R7 R8 K35 ["translationResourceTable"]
  SETTABLEKS R6 R8 K36 ["fallbackResourceTable"]
  SETTABLEKS R5 R8 K37 ["buttonInfo"]
  DUPTABLE R9 K44 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K2 ["AssetAccess"]
  SETTABLEKS R10 R9 K40 ["id"]
  GETIMPORT R10 K47 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K51 [Enum.InitialDockState.Bottom]
  LOADB R12 0
  LOADB R13 0
  LOADN R14 128
  LOADN R15 224
  LOADN R16 250
  LOADN R17 200
  CALL R10 7 1
  SETTABLEKS R10 R9 K41 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K52 [PROTO_3]
  SETTABLEKS R10 R9 K42 ["getDockTitle"]
  GETIMPORT R10 K55 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K43 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K56 ["dockWidgetInfo"]
  GETTABLEKS R9 R4 K57 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K58 ["pluginLoader"]
  NAMECALL R10 R10 K59 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K60 ["Parent"]
  GETTABLEKS R12 R13 K61 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K17 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
