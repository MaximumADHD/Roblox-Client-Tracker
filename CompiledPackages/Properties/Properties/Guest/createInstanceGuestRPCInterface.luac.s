PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["historyTracker"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["selection"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["historyTracker"]
  GETTABLEKS R5 R1 K1 ["selection"]
  CALL R2 3 1
  GETUPVAL R3 1
  MOVE R4 R0
  GETTABLEKS R5 R1 K1 ["selection"]
  CALL R3 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R5 K7 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "renameSelection"}]
  GETTABLEKS R6 R2 K2 ["beginEditingAsync"]
  SETTABLEKS R6 R5 K2 ["beginEditingAsync"]
  GETTABLEKS R6 R2 K3 ["continueEditing"]
  SETTABLEKS R6 R5 K3 ["continueEditing"]
  GETTABLEKS R6 R2 K4 ["finishEditing"]
  SETTABLEKS R6 R5 K4 ["finishEditing"]
  GETTABLEKS R6 R2 K5 ["resetProperty"]
  SETTABLEKS R6 R5 K5 ["resetProperty"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K6 ["renameSelection"]
  MOVE R6 R4
  RETURN R5 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RpcTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Guest"]
  GETTABLEKS R3 R4 K8 ["createGuestEditing"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Guest"]
  GETTABLEKS R4 R5 K9 ["createGuestSelecting"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K7 ["Guest"]
  GETTABLEKS R6 R7 K10 ["Methods"]
  GETTABLEKS R5 R6 K11 ["renameSelection"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
