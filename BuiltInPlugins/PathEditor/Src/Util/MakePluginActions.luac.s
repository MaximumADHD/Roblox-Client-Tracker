PROTO_0:
  DUPTABLE R3 K3 [{"id", "text", "allowBinding"}]
  SETTABLEKS R2 R3 K0 ["id"]
  LOADK R6 K4 ["ContextMenu"]
  MOVE R7 R2
  NAMECALL R4 R1 K5 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["text"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["allowBinding"]
  RETURN R3 1

PROTO_1:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_INEXT R3
  DUPTABLE R8 K5 [{"id", "text", "allowBinding"}]
  SETTABLEKS R7 R8 K2 ["id"]
  LOADK R11 K6 ["ContextMenu"]
  MOVE R12 R7
  NAMECALL R9 R1 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K3 ["text"]
  LOADB R9 0
  SETTABLEKS R9 R8 K4 ["allowBinding"]
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [inext] [-15]
  GETTABLEKS R3 R2 K8 ["MoveTool"]
  LOADK R4 K9 ["1"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  GETTABLEKS R3 R2 K11 ["AddPointMode"]
  LOADK R4 K12 ["2"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  GETTABLEKS R3 R2 K13 ["AddTangentMode"]
  LOADK R4 K14 ["3"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  GETTABLEKS R3 R2 K15 ["DoneEditing"]
  LOADK R4 K16 ["Enter"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  GETTABLEKS R3 R2 K17 ["DeletePoint"]
  LOADK R4 K18 ["Delete"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  GETTABLEKS R3 R2 K19 ["DeletePoint2"]
  LOADK R4 K20 ["Backspace"]
  SETTABLEKS R4 R3 K10 ["defaultShortcut"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PathEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  NEWTABLE R1 0 6
  LOADK R2 K4 ["DoneEditing"]
  LOADK R3 K5 ["AddPointMode"]
  LOADK R4 K6 ["AddTangentMode"]
  LOADK R5 K7 ["MoveTool"]
  LOADK R6 K8 ["DeletePoint"]
  LOADK R7 K9 ["DeletePoint2"]
  SETLIST R1 R2 6 [1]
  DUPCLOSURE R2 K10 [PROTO_0]
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R1
  RETURN R3 1
