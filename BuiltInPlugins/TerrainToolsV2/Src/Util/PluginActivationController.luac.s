PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["pauseActivatedTool"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K7 [{"_plugin", "_active", "_activeTool", "_selectedTool", "_pluginDeactivationConnection", "_onToolActivated", "_onToolDeactivated"}]
  SETTABLEKS R0 R2 K0 ["_plugin"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["_active"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["None"]
  SETTABLEKS R3 R2 K2 ["_activeTool"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["None"]
  SETTABLEKS R3 R2 K3 ["_selectedTool"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["_pluginDeactivationConnection"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K5 ["_onToolActivated"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K6 ["_onToolDeactivated"]
  GETUPVAL R3 2
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K11 [setmetatable]
  CALL R1 2 1
  GETTABLEKS R3 R1 K0 ["_plugin"]
  FASTCALL2K ASSERT R3 K12 [+4]
  LOADK R4 K12 ["PluginActivationController.new() requires a plugin"]
  GETIMPORT R2 K14 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K15 ["onPluginDeactivation"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_activeTool"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["None"]
  JUMPIFEQ R1 R2 [+4]
  GETTABLEKS R1 R0 K2 ["_active"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_activeTool"]
  SETTABLEKS R1 R0 K3 ["_selectedTool"]
  NAMECALL R1 R0 K4 ["deactivateTool"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_activeTool"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["None"]
  JUMPIFNOTEQ R1 R2 [+11]
  GETTABLEKS R1 R0 K2 ["_active"]
  JUMPIF R1 [+7]
  GETTABLEKS R1 R0 K3 ["_selectedTool"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["None"]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETTABLEKS R3 R0 K3 ["_selectedTool"]
  NAMECALL R1 R0 K4 ["activateTool"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_onToolActivated"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_onToolDeactivated"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_activeTool"]
  RETURN R1 1

PROTO_7:
  NAMECALL R1 R0 K0 ["deselectTool"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_plugin"]
  NAMECALL R1 R1 K2 ["IsActivated"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  NAMECALL R1 R1 K3 ["Deactivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["None"]
  JUMPIFNOTEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["activateTool requires toolId to not be ToolId.None"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  LOADB R2 1
  SETTABLEKS R2 R0 K4 ["_active"]
  SETTABLEKS R1 R0 K5 ["_activeTool"]
  GETTABLEKS R2 R0 K5 ["_activeTool"]
  SETTABLEKS R2 R0 K6 ["_selectedTool"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["ToolActivatesPlugin"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K8 ["_plugin"]
  LOADB R4 1
  NAMECALL R2 R2 K9 ["Activate"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K10 ["_pluginDeactivationConnection"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K10 ["_pluginDeactivationConnection"]
  NAMECALL R2 R2 K11 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K8 ["_plugin"]
  GETTABLEKS R2 R3 K12 ["Deactivation"]
  GETTABLEKS R4 R0 K13 ["onPluginDeactivation"]
  NAMECALL R2 R2 K14 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_pluginDeactivationConnection"]
  GETTABLEKS R2 R0 K15 ["_onToolActivated"]
  MOVE R4 R1
  NAMECALL R2 R2 K16 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_pluginDeactivationConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_pluginDeactivationConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_pluginDeactivationConnection"]
  GETTABLEKS R1 R0 K2 ["_activeTool"]
  LOADB R2 0
  SETTABLEKS R2 R0 K3 ["_active"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["None"]
  SETTABLEKS R2 R0 K2 ["_activeTool"]
  GETTABLEKS R2 R0 K5 ["_plugin"]
  NAMECALL R2 R2 K6 ["IsActivated"]
  CALL R2 1 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["_plugin"]
  NAMECALL R2 R2 K7 ["Deactivate"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K8 ["_onToolDeactivated"]
  MOVE R4 R1
  NAMECALL R2 R2 K9 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["deactivateTool"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["None"]
  SETTABLEKS R1 R0 K2 ["_selectedTool"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["ContextServices"]
  GETTABLEKS R2 R3 K8 ["ContextItem"]
  GETTABLEKS R3 R1 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["Signal"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K13 ["TerrainEnums"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K14 ["ToolId"]
  LOADK R10 K15 ["PluginActivationController"]
  NAMECALL R8 R2 K16 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K17 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K18 ["new"]
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K20 ["pauseActivatedTool"]
  DUPCLOSURE R9 K21 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K22 ["restoreSelectedTool"]
  DUPCLOSURE R9 K23 [PROTO_4]
  SETTABLEKS R9 R8 K24 ["subscribeToToolActivated"]
  DUPCLOSURE R9 K25 [PROTO_5]
  SETTABLEKS R9 R8 K26 ["subscribeToToolDeactivated"]
  DUPCLOSURE R9 K27 [PROTO_6]
  SETTABLEKS R9 R8 K28 ["getActiveTool"]
  DUPCLOSURE R9 K29 [PROTO_7]
  SETTABLEKS R9 R8 K30 ["destroy"]
  DUPCLOSURE R9 K31 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K32 ["activateTool"]
  DUPCLOSURE R9 K33 [PROTO_9]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K34 ["deactivateTool"]
  DUPCLOSURE R9 K35 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K36 ["deselectTool"]
  RETURN R8 1
