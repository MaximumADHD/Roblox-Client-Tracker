PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 2
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
  CALL R2 0 1
  GETUPVAL R3 1
  MOVE R4 R0
  GETTABLEKS R5 R1 K0 ["historyTracker"]
  GETTABLEKS R6 R1 K1 ["selection"]
  MOVE R7 R2
  CALL R3 4 1
  GETUPVAL R4 2
  MOVE R5 R0
  GETTABLEKS R6 R1 K1 ["selection"]
  MOVE R7 R2
  CALL R4 3 1
  GETUPVAL R5 3
  MOVE R6 R0
  GETTABLEKS R7 R1 K2 ["instancePicker"]
  MOVE R8 R2
  CALL R5 3 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R7 K9 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "instancePickerPickInstanceAsync", "renameSelection"}]
  GETTABLEKS R8 R3 K3 ["beginEditingAsync"]
  SETTABLEKS R8 R7 K3 ["beginEditingAsync"]
  GETTABLEKS R8 R3 K4 ["continueEditing"]
  SETTABLEKS R8 R7 K4 ["continueEditing"]
  GETTABLEKS R8 R3 K5 ["finishEditing"]
  SETTABLEKS R8 R7 K5 ["finishEditing"]
  GETTABLEKS R8 R3 K6 ["resetProperty"]
  SETTABLEKS R8 R7 K6 ["resetProperty"]
  GETTABLEKS R8 R5 K10 ["pickInstanceAsync"]
  SETTABLEKS R8 R7 K7 ["instancePickerPickInstanceAsync"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K8 ["renameSelection"]
  MOVE R8 R6
  RETURN R7 2

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
  GETTABLEKS R4 R5 K9 ["createGuestInstancePicker"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K7 ["Guest"]
  GETTABLEKS R5 R6 K10 ["createGuestInstanceRegistry"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K7 ["Guest"]
  GETTABLEKS R6 R7 K11 ["createGuestSelecting"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K7 ["Guest"]
  GETTABLEKS R8 R9 K12 ["Methods"]
  GETTABLEKS R7 R8 K13 ["renameSelection"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
