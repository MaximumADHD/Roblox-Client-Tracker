PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["info"]
  GETTABLEKS R1 R2 K1 ["type"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  JUMPIFNOT R0 [+4]
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["extra data is not supported for comsumers of properties at this time"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["beginEditingAsync"]
  CALL R1 0 0
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  JUMPIFEQKS R0 K0 ["value"] [+10]
  GETIMPORT R2 K2 [error]
  LOADK R4 K3 ["Cannot set that part %*, it's not supported at this time"]
  MOVE R6 R0
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["updateValue"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"value", "multiple"}]
  GETTABLEKS R3 R0 K3 ["info"]
  GETTABLEKS R2 R3 K0 ["value"]
  SETTABLEKS R2 R1 K0 ["value"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["multiple"]
  DUPTABLE R2 K8 [{"typeof", "parts", "modified", "readonly"}]
  GETTABLEKS R4 R0 K3 ["info"]
  GETTABLEKS R3 R4 K9 ["type"]
  SETTABLEKS R3 R2 K4 ["typeof"]
  DUPTABLE R3 K10 [{"value"}]
  SETTABLEKS R1 R3 K0 ["value"]
  SETTABLEKS R3 R2 K5 ["parts"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["modified"]
  GETTABLEKS R5 R0 K3 ["info"]
  GETTABLEKS R4 R5 K7 ["readonly"]
  ORK R3 R4 K11 [False]
  SETTABLEKS R3 R2 K7 ["readonly"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["useMemo"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R7 R0 K3 ["info"]
  GETTABLEKS R6 R7 K9 ["type"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETTABLEKS R4 R0 K13 ["editingSteps"]
  JUMPIF R4 [+1]
  GETUPVAL R4 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  GETTABLEKS R8 R4 K15 ["beginEditingAsync"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["useCallback"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K16 ["updateValue"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["useCallback"]
  GETTABLEKS R8 R4 K17 ["finishEditing"]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R4 K17 ["finishEditing"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 3
  GETUPVAL R9 4
  DUPTABLE R10 K24 [{"tag", "AnchorPoint", "LayoutOrder", "Position", "Size", "ZIndex"}]
  LOADK R11 K25 ["auto-xy row flex-x-between align-y-center align-x-left"]
  SETTABLEKS R11 R10 K18 ["tag"]
  GETTABLEKS R11 R0 K19 ["AnchorPoint"]
  SETTABLEKS R11 R10 K19 ["AnchorPoint"]
  GETTABLEKS R11 R0 K20 ["LayoutOrder"]
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  GETTABLEKS R11 R0 K21 ["Position"]
  SETTABLEKS R11 R10 K21 ["Position"]
  GETTABLEKS R11 R0 K22 ["Size"]
  SETTABLEKS R11 R10 K22 ["Size"]
  GETTABLEKS R11 R0 K23 ["ZIndex"]
  SETTABLEKS R11 R10 K23 ["ZIndex"]
  GETUPVAL R11 3
  MOVE R12 R3
  DUPTABLE R13 K27 [{"info", "beginEditingAsync", "setPart", "finishEditing"}]
  SETTABLEKS R2 R13 K3 ["info"]
  SETTABLEKS R5 R13 K15 ["beginEditingAsync"]
  SETTABLEKS R6 R13 K26 ["setPart"]
  SETTABLEKS R7 R13 K17 ["finishEditing"]
  CALL R11 2 -1
  CALL R8 -1 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R0 K8 ["PropertyTypes"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R9 R0 K10 ["Components"]
  GETTABLEKS R8 R9 K11 ["PropertyEntries"]
  GETTABLEKS R7 R8 K12 ["PropertyView"]
  GETTABLEKS R6 R7 K13 ["getPropertyView"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K14 ["createElement"]
  GETTABLEKS R7 R2 K15 ["View"]
  DUPTABLE R8 K18 [{"beginEditingAsync", "finishEditing"}]
  DUPCLOSURE R9 K19 [PROTO_0]
  SETTABLEKS R9 R8 K16 ["beginEditingAsync"]
  DUPCLOSURE R9 K20 [PROTO_1]
  SETTABLEKS R9 R8 K17 ["finishEditing"]
  DUPCLOSURE R9 K21 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R9 1
