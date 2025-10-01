PROTO_0:
  DUPTABLE R0 K5 [{"Uri", "Enabled", "Visible", "Text", "Shortcuts"}]
  DUPTABLE R1 K11 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R2 K12 ["Standalone"]
  SETTABLEKS R2 R1 K6 ["DataModel"]
  LOADK R2 K12 ["Standalone"]
  SETTABLEKS R2 R1 K7 ["PluginType"]
  LOADK R2 K13 ["Assistant"]
  SETTABLEKS R2 R1 K8 ["PluginId"]
  LOADK R2 K14 ["Actions"]
  SETTABLEKS R2 R1 K9 ["Category"]
  LOADK R2 K15 ["MCPExplainCode"]
  SETTABLEKS R2 R1 K10 ["ItemId"]
  SETTABLEKS R1 R0 K0 ["Uri"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["Enabled"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Visible"]
  LOADK R1 K16 ["Explain Code"]
  SETTABLEKS R1 R0 K3 ["Text"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["Shortcuts"]
  GETUPVAL R1 0
  MOVE R3 R0
  LOADB R4 1
  NAMECALL R1 R1 K17 ["CreateAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["AssistantButton"]
  RETURN R3 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  LOADK R3 K0 ["AssistantToolbar"]
  RETURN R3 1

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
  LOADK R4 K1 ["Actions"]
  NAMECALL R2 R0 K2 ["GetPluginComponent"]
  CALL R2 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  DUPTABLE R4 K8 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R5 K9 [PROTO_1]
  SETTABLEKS R5 R4 K3 ["getName"]
  DUPCLOSURE R5 K10 [PROTO_2]
  SETTABLEKS R5 R4 K4 ["getDescription"]
  LOADK R5 K11 [""]
  SETTABLEKS R5 R4 K5 ["icon"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["enabled"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["clickableWhenViewportHidden"]
  DUPTABLE R5 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R5 K12 ["plugin"]
  LOADK R6 K19 ["Assistant"]
  SETTABLEKS R6 R5 K13 ["pluginName"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K14 ["translationResourceTable"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K15 ["fallbackResourceTable"]
  DUPCLOSURE R6 K20 [PROTO_3]
  SETTABLEKS R6 R5 K16 ["getToolbarName"]
  SETTABLEKS R4 R5 K17 ["buttonInfo"]
  LOADB R6 1
  SETTABLEKS R6 R4 K6 ["enabled"]
  DUPTABLE R6 K25 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R7 K19 ["Assistant"]
  SETTABLEKS R7 R6 K21 ["id"]
  GETIMPORT R7 K28 [DockWidgetPluginGuiInfo.new]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K29 ["Get"]
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETIMPORT R8 K33 [Enum.InitialDockState.Right]
  JUMP [+2]
  GETIMPORT R8 K35 [Enum.InitialDockState.Bottom]
  LOADB R9 0
  LOADB R10 0
  LOADN R11 128
  LOADN R12 224
  LOADN R13 250
  LOADN R14 200
  CALL R7 7 1
  SETTABLEKS R7 R6 K22 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R7 K36 [PROTO_4]
  SETTABLEKS R7 R6 K23 ["getDockTitle"]
  GETIMPORT R7 K39 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K24 ["zIndexBehavior"]
  SETTABLEKS R6 R5 K40 ["dockWidgetInfo"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K41 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R7 6
  CALL R7 0 1
  JUMPIF R7 [+2]
  MOVE R7 R3
  CALL R7 0 0
  GETTABLEKS R7 R6 K42 ["pluginLoader"]
  NAMECALL R7 R7 K43 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  MOVE R8 R1
  MOVE R9 R0
  MOVE R10 R6
  CALL R8 2 0
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
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K7 ["Flags"]
  GETTABLEKS R7 R8 K16 ["FFlagAddExplainCodetoMCPAssistant"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Flags"]
  GETTABLEKS R8 R9 K17 ["FFlagMoveMCPExplainCodetoBuiltins"]
  CALL R7 1 1
  GETTABLEKS R8 R6 K18 ["Get"]
  GETTABLEKS R9 R7 K18 ["Get"]
  DUPCLOSURE R10 K19 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R10 1
