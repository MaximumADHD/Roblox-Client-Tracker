PROTO_0:
  LOADK R3 K0 ["FindReplaceAllButton"]
  RETURN R3 1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  LOADK R3 K0 ["FindReplaceAllToolbar"]
  RETURN R3 1

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
  DUPTABLE R2 K6 [{"getName", "getDescription", "icon", "clickableWhenViewportHidden", "enabled"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K8 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["icon"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["clickableWhenViewportHidden"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["enabled"]
  DUPTABLE R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R3 K10 ["plugin"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K17 ["PLUGIN_NAME"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["translationResourceTable"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["fallbackResourceTable"]
  DUPCLOSURE R4 K18 [PROTO_2]
  SETTABLEKS R4 R3 K14 ["getToolbarName"]
  SETTABLEKS R2 R3 K15 ["buttonInfo"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K19 ["get"]
  CALL R5 0 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K20 ["Standalone"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 5
  NAMECALL R5 R5 K21 ["IsEdit"]
  CALL R5 1 1
  JUMPIF R4 [+1]
  JUMPIFNOT R5 [+48]
  LOADB R6 1
  SETTABLEKS R6 R2 K5 ["enabled"]
  DUPTABLE R6 K26 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["PLUGIN_NAME"]
  SETTABLEKS R7 R6 K22 ["id"]
  GETIMPORT R7 K29 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R8 K33 [Enum.InitialDockState.Left]
  LOADB R9 0
  LOADB R10 0
  LOADN R11 128
  LOADN R12 224
  LOADN R13 250
  LOADN R14 200
  CALL R7 7 1
  SETTABLEKS R7 R6 K23 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R7 K34 [PROTO_3]
  SETTABLEKS R7 R6 K24 ["getDockTitle"]
  GETIMPORT R7 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K25 ["zIndexBehavior"]
  SETTABLEKS R6 R3 K38 ["dockWidgetInfo"]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K39 ["build"]
  MOVE R7 R3
  CALL R6 1 1
  GETTABLEKS R7 R6 K40 ["pluginLoader"]
  NAMECALL R7 R7 K41 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  MOVE R8 R1
  MOVE R9 R0
  MOVE R10 R6
  CALL R8 2 0
  RETURN R0 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K39 ["build"]
  MOVE R7 R3
  CALL R6 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["FindReplaceAll"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["PluginLoaderBuilder"]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Localization"]
  GETTABLEKS R4 R5 K16 ["SourceStrings"]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Resources"]
  GETTABLEKS R6 R7 K15 ["Localization"]
  GETTABLEKS R5 R6 K17 ["LocalizedStrings"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K18 ["Util"]
  GETTABLEKS R7 R8 K19 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K20 ["Bin"]
  GETTABLEKS R9 R10 K21 ["Common"]
  GETTABLEKS R8 R9 K22 ["pluginType"]
  CALL R7 1 1
  DUPCLOSURE R8 K23 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R8 1
