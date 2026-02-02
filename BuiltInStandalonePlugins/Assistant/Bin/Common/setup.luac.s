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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  RETURN R0 1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  GETTABLEKS R2 R0 K1 ["MultipleDocumentInterfaceInstance"]
  DUPTABLE R3 K7 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R4 K8 [PROTO_0]
  SETTABLEKS R4 R3 K2 ["getName"]
  DUPCLOSURE R4 K9 [PROTO_1]
  SETTABLEKS R4 R3 K3 ["getDescription"]
  LOADK R4 K10 [""]
  SETTABLEKS R4 R3 K4 ["icon"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["enabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["clickableWhenViewportHidden"]
  DUPTABLE R4 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
  SETTABLEKS R0 R4 K11 ["plugin"]
  LOADK R5 K19 ["Assistant"]
  SETTABLEKS R5 R4 K12 ["pluginName"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K13 ["translationResourceTable"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K14 ["fallbackResourceTable"]
  DUPCLOSURE R5 K20 [PROTO_2]
  SETTABLEKS R5 R4 K15 ["getToolbarName"]
  SETTABLEKS R3 R4 K16 ["buttonInfo"]
  DUPTABLE R5 K22 [{"SessionStarted"}]
  NEWCLOSURE R6 P3
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K21 ["SessionStarted"]
  SETTABLEKS R5 R4 K17 ["extraTriggers"]
  LOADB R5 1
  SETTABLEKS R5 R3 K5 ["enabled"]
  DUPTABLE R5 K27 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R6 K19 ["Assistant"]
  SETTABLEKS R6 R5 K23 ["id"]
  GETIMPORT R6 K30 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R7 K34 [Enum.InitialDockState.Right]
  LOADB R8 0
  LOADB R9 0
  LOADN R10 128
  LOADN R11 224
  LOADN R12 250
  LOADN R13 200
  CALL R6 7 1
  SETTABLEKS R6 R5 K24 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R6 K35 [PROTO_4]
  SETTABLEKS R6 R5 K25 ["getDockTitle"]
  GETIMPORT R6 K38 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K26 ["zIndexBehavior"]
  SETTABLEKS R5 R4 K39 ["dockWidgetInfo"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K40 ["build"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R6 R5 K41 ["pluginLoader"]
  NAMECALL R6 R6 K42 ["waitForUserInteraction"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  RETURN R0 0
  MOVE R7 R1
  MOVE R8 R0
  MOVE R9 R5
  CALL R7 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["PluginLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["PluginLoaderBuilder"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K12 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K13 ["LocalizedStrings"]
  DUPCLOSURE R5 K14 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
