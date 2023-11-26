PROTO_0:
  GETTABLEKS R3 R1 K0 ["currentTab"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["currentTab"]
  JUMPIFEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["Analytics"]
  LOADK R5 K3 ["changeTab"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K0 ["currentTab"]
  NAMECALL R3 R3 K4 ["report"]
  CALL R3 3 0
  GETTABLEKS R3 R1 K5 ["currentTool"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K5 ["currentTool"]
  JUMPIFEQ R3 R4 [+22]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K5 ["currentTool"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["None"]
  JUMPIFEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["Analytics"]
  LOADK R5 K7 ["changeTool"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K5 ["currentTool"]
  NAMECALL R3 R3 K4 ["report"]
  CALL R3 3 0
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K5 ["currentTool"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["None"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K8 ["PluginActivationController"]
  NAMECALL R3 R3 K9 ["deselectTool"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K8 ["PluginActivationController"]
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K5 ["currentTool"]
  NAMECALL R3 R3 K10 ["activateTool"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Children"]
  GETTABLE R3 R4 R5
  NOT R2 R3
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["ToolSelectionListener can't have children"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  DUPTABLE R2 K2 [{"currentTab", "currentTool"}]
  GETTABLEKS R4 R0 K3 ["Tools"]
  GETTABLEKS R3 R4 K0 ["currentTab"]
  SETTABLEKS R3 R2 K0 ["currentTab"]
  GETTABLEKS R4 R0 K3 ["Tools"]
  GETTABLEKS R3 R4 K1 ["currentTool"]
  SETTABLEKS R3 R2 K1 ["currentTool"]
  RETURN R2 1

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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["ContextItems"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["TerrainEnums"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K15 ["ToolId"]
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K17 ["Name"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K20 ["didUpdate"]
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K22 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K25 [{"Analytics", "PluginActivationController"}]
  GETTABLEKS R12 R4 K23 ["Analytics"]
  SETTABLEKS R12 R11 K23 ["Analytics"]
  GETTABLEKS R12 R6 K24 ["PluginActivationController"]
  SETTABLEKS R12 R11 K24 ["PluginActivationController"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  DUPCLOSURE R10 K26 [PROTO_2]
  GETTABLEKS R11 R3 K27 ["connect"]
  MOVE R12 R10
  LOADNIL R13
  CALL R11 2 1
  MOVE R12 R9
  CALL R11 1 -1
  RETURN R11 -1
