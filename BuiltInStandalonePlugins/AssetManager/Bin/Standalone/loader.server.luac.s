PROTO_0:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["assetManagerToolButton"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Button"]
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
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["assetManagerToolbar"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Toolbar"]
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
  GETTABLEKS R2 R1 K16 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K18 [error]
  LOADK R3 K19 ["roblox-cli should not be loading standalone plugins"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K21 [plugin]
  GETTABLEKS R3 R0 K22 ["Name"]
  SETTABLEKS R3 R2 K22 ["Name"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K14 ["Packages"]
  GETTABLEKS R3 R4 K23 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K24 ["PluginLoaderBuilder"]
  GETIMPORT R4 K10 [game]
  LOADK R6 K25 ["AssetManagerRibbonBar"]
  NAMECALL R4 R4 K12 ["GetFastFlag"]
  CALL R4 2 1
  DUPTABLE R5 K31 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R6 K32 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K26 ["getName"]
  DUPCLOSURE R6 K33 [PROTO_1]
  SETTABLEKS R6 R5 K27 ["getDescription"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K34 ["rbxlocaltheme://AssetManager"]
  JUMP [+1]
  LOADK R6 K35 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K28 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K29 ["enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["clickableWhenViewportHidden"]
  GETTABLEKS R9 R0 K36 ["Src"]
  GETTABLEKS R8 R9 K37 ["Resources"]
  GETTABLEKS R7 R8 K38 ["Localization"]
  GETTABLEKS R6 R7 K39 ["SourceStrings"]
  GETTABLEKS R10 R0 K36 ["Src"]
  GETTABLEKS R9 R10 K37 ["Resources"]
  GETTABLEKS R8 R9 K38 ["Localization"]
  GETTABLEKS R7 R8 K40 ["LocalizedStrings"]
  DUPTABLE R8 K46 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
  GETIMPORT R9 K21 [plugin]
  SETTABLEKS R9 R8 K20 ["plugin"]
  LOADK R9 K2 ["AssetManager"]
  SETTABLEKS R9 R8 K41 ["pluginName"]
  DUPCLOSURE R9 K47 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K42 ["getToolbarName"]
  SETTABLEKS R7 R8 K43 ["translationResourceTable"]
  SETTABLEKS R6 R8 K44 ["fallbackResourceTable"]
  SETTABLEKS R5 R8 K45 ["buttonInfo"]
  DUPTABLE R9 K52 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K2 ["AssetManager"]
  SETTABLEKS R10 R9 K48 ["id"]
  GETIMPORT R10 K55 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K59 [Enum.InitialDockState.Bottom]
  LOADB R12 0
  LOADB R13 0
  LOADN R14 128
  LOADN R15 224
  LOADN R16 250
  LOADN R17 200
  CALL R10 7 1
  SETTABLEKS R10 R9 K49 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K60 [PROTO_3]
  SETTABLEKS R10 R9 K50 ["getDockTitle"]
  GETIMPORT R10 K63 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K51 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K64 ["dockWidgetInfo"]
  GETTABLEKS R9 R3 K65 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K66 ["pluginLoader"]
  NAMECALL R10 R10 K67 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Bin"]
  GETTABLEKS R13 R14 K7 ["Common"]
  GETTABLEKS R12 R13 K68 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K21 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
