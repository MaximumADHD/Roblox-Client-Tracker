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

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K5 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R3 K6 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K7 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K8 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R3 R2 K3 ["icon"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["enabled"]
  DUPTABLE R3 K15 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R3 K9 ["plugin"]
  LOADK R4 K16 ["AvatarSettings"]
  SETTABLEKS R4 R3 K10 ["pluginName"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K11 ["translationResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["fallbackResourceTable"]
  DUPCLOSURE R4 K17 [PROTO_2]
  SETTABLEKS R4 R3 K13 ["getToolbarName"]
  SETTABLEKS R2 R3 K14 ["buttonInfo"]
  GETIMPORT R4 K19 [game]
  LOADK R6 K20 ["RunService"]
  NAMECALL R4 R4 K21 ["GetService"]
  CALL R4 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K22 ["get"]
  CALL R6 0 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K23 ["Standalone"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  NAMECALL R6 R4 K24 ["IsEdit"]
  CALL R6 1 1
  JUMPIF R5 [+1]
  JUMPIFNOT R6 [+46]
  LOADB R7 1
  SETTABLEKS R7 R2 K4 ["enabled"]
  DUPTABLE R7 K29 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R8 K16 ["AvatarSettings"]
  SETTABLEKS R8 R7 K25 ["id"]
  GETIMPORT R8 K32 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K36 [Enum.InitialDockState.Bottom]
  LOADB R10 0
  LOADB R11 0
  LOADN R12 128
  LOADN R13 224
  LOADN R14 250
  LOADN R15 200
  CALL R8 7 1
  SETTABLEKS R8 R7 K26 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K37 [PROTO_3]
  SETTABLEKS R8 R7 K27 ["getDockTitle"]
  GETIMPORT R8 K40 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K28 ["zIndexBehavior"]
  SETTABLEKS R7 R3 K41 ["dockWidgetInfo"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["build"]
  MOVE R8 R3
  CALL R7 1 1
  GETTABLEKS R8 R7 K43 ["pluginLoader"]
  NAMECALL R8 R8 K44 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  MOVE R9 R1
  MOVE R10 R0
  MOVE R11 R7
  CALL R9 2 0
  RETURN R0 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["build"]
  MOVE R8 R3
  CALL R7 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["PluginLoader"]
  GETTABLEKS R2 R3 K8 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Resources"]
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K12 ["SourceStrings"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K13 ["LocalizedStrings"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K14 ["Bin"]
  GETTABLEKS R6 R7 K15 ["Common"]
  GETTABLEKS R5 R6 K16 ["pluginType"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
