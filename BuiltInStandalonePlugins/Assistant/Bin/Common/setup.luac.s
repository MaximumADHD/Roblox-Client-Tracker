PROTO_0:
  LOADK R3 K0 ["AssistantButton"]
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
  LOADK R3 K0 ["AssistantToolbar"]
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
  DUPTABLE R2 K6 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K8 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["icon"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["clickableWhenViewportHidden"]
  DUPTABLE R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R3 K10 ["plugin"]
  LOADK R4 K17 ["Assistant"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K12 ["translationResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K13 ["fallbackResourceTable"]
  DUPCLOSURE R4 K18 [PROTO_2]
  SETTABLEKS R4 R3 K14 ["getToolbarName"]
  SETTABLEKS R2 R3 K15 ["buttonInfo"]
  LOADB R4 1
  SETTABLEKS R4 R2 K4 ["enabled"]
  DUPTABLE R4 K23 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R5 K17 ["Assistant"]
  SETTABLEKS R5 R4 K19 ["id"]
  GETIMPORT R5 K26 [DockWidgetPluginGuiInfo.new]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K27 ["Get"]
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  GETIMPORT R6 K31 [Enum.InitialDockState.Right]
  JUMP [+2]
  GETIMPORT R6 K33 [Enum.InitialDockState.Bottom]
  LOADB R7 0
  LOADB R8 0
  LOADN R9 128
  LOADN R10 224
  LOADN R11 250
  LOADN R12 200
  CALL R5 7 1
  SETTABLEKS R5 R4 K20 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R5 K34 [PROTO_3]
  SETTABLEKS R5 R4 K21 ["getDockTitle"]
  GETIMPORT R5 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K22 ["zIndexBehavior"]
  SETTABLEKS R4 R3 K38 ["dockWidgetInfo"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K39 ["build"]
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEKS R5 R4 K40 ["pluginLoader"]
  NAMECALL R5 R5 K41 ["waitForUserInteraction"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  RETURN R0 0
  MOVE R6 R1
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["FFlagDockAssistantRightSide"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["PluginLoaderBuilder"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Localization"]
  GETTABLEKS R4 R5 K14 ["SourceStrings"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K12 ["Resources"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  GETTABLEKS R5 R6 K15 ["LocalizedStrings"]
  DUPCLOSURE R6 K16 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R6 1
