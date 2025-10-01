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
  GETIMPORT R5 K10 [game]
  LOADK R7 K26 ["EnableRibbonPluginFeature"]
  NAMECALL R5 R5 K27 ["GetEngineFeature"]
  CALL R5 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K28 ["Src"]
  GETTABLEKS R8 R9 K29 ["Flags"]
  GETTABLEKS R7 R8 K30 ["getFFlagAddPluginIconsGA"]
  CALL R6 1 1
  DUPTABLE R7 K36 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R8 K37 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K31 ["getName"]
  DUPCLOSURE R8 K38 [PROTO_1]
  SETTABLEKS R8 R7 K32 ["getDescription"]
  JUMPIFNOT R4 [+8]
  JUMPIFNOT R5 [+5]
  MOVE R9 R6
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADK R8 K39 ["rbxlocaltheme://RibbonAssetManager"]
  JUMP [+3]
  LOADK R8 K40 ["rbxlocaltheme://AssetManager"]
  JUMP [+1]
  LOADK R8 K41 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R8 R7 K33 ["icon"]
  LOADB R8 1
  SETTABLEKS R8 R7 K34 ["enabled"]
  LOADB R8 1
  SETTABLEKS R8 R7 K35 ["clickableWhenViewportHidden"]
  GETTABLEKS R11 R0 K28 ["Src"]
  GETTABLEKS R10 R11 K42 ["Resources"]
  GETTABLEKS R9 R10 K43 ["Localization"]
  GETTABLEKS R8 R9 K44 ["SourceStrings"]
  GETTABLEKS R12 R0 K28 ["Src"]
  GETTABLEKS R11 R12 K42 ["Resources"]
  GETTABLEKS R10 R11 K43 ["Localization"]
  GETTABLEKS R9 R10 K45 ["LocalizedStrings"]
  DUPTABLE R10 K51 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
  GETIMPORT R11 K21 [plugin]
  SETTABLEKS R11 R10 K20 ["plugin"]
  LOADK R11 K2 ["AssetManager"]
  SETTABLEKS R11 R10 K46 ["pluginName"]
  DUPCLOSURE R11 K52 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K47 ["getToolbarName"]
  SETTABLEKS R9 R10 K48 ["translationResourceTable"]
  SETTABLEKS R8 R10 K49 ["fallbackResourceTable"]
  SETTABLEKS R7 R10 K50 ["buttonInfo"]
  DUPTABLE R11 K57 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R12 K2 ["AssetManager"]
  SETTABLEKS R12 R11 K53 ["id"]
  GETIMPORT R12 K60 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R13 K64 [Enum.InitialDockState.Bottom]
  LOADB R14 0
  LOADB R15 0
  LOADN R16 128
  LOADN R17 224
  LOADN R18 250
  LOADN R19 200
  CALL R12 7 1
  SETTABLEKS R12 R11 K54 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R12 K65 [PROTO_3]
  SETTABLEKS R12 R11 K55 ["getDockTitle"]
  GETIMPORT R12 K68 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K56 ["zIndexBehavior"]
  SETTABLEKS R11 R10 K69 ["dockWidgetInfo"]
  GETTABLEKS R11 R3 K70 ["build"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R12 R11 K71 ["pluginLoader"]
  NAMECALL R12 R12 K72 ["waitForUserInteraction"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  RETURN R0 0
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Bin"]
  GETTABLEKS R15 R16 K7 ["Common"]
  GETTABLEKS R14 R15 K73 ["main"]
  CALL R13 1 1
  MOVE R14 R13
  GETIMPORT R15 K21 [plugin]
  MOVE R16 R11
  CALL R14 2 0
  RETURN R0 0
