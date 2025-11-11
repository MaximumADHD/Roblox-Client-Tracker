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
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R3 1
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R4 2
  MOVE R5 R0
  GETTABLEKS R6 R1 K0 ["historyTracker"]
  GETTABLEKS R7 R1 K1 ["selection"]
  MOVE R8 R2
  CALL R4 4 1
  GETUPVAL R5 3
  MOVE R6 R0
  GETTABLEKS R7 R1 K1 ["selection"]
  MOVE R8 R3
  CALL R5 3 1
  GETUPVAL R6 4
  MOVE R7 R0
  GETTABLEKS R8 R1 K2 ["instancePicker"]
  MOVE R9 R2
  CALL R6 3 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPTABLE R8 K9 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "instancePickerPickInstanceAsync", "deactivateInstancePickerAsync"}]
  GETTABLEKS R9 R4 K3 ["beginEditingAsync"]
  SETTABLEKS R9 R8 K3 ["beginEditingAsync"]
  GETTABLEKS R9 R4 K4 ["continueEditing"]
  SETTABLEKS R9 R8 K4 ["continueEditing"]
  GETTABLEKS R9 R4 K5 ["finishEditing"]
  SETTABLEKS R9 R8 K5 ["finishEditing"]
  GETTABLEKS R9 R4 K6 ["resetProperty"]
  SETTABLEKS R9 R8 K6 ["resetProperty"]
  GETTABLEKS R9 R6 K10 ["pickInstanceAsync"]
  SETTABLEKS R9 R8 K7 ["instancePickerPickInstanceAsync"]
  GETTABLEKS R9 R6 K8 ["deactivateInstancePickerAsync"]
  SETTABLEKS R9 R8 K8 ["deactivateInstancePickerAsync"]
  MOVE R9 R7
  RETURN R8 2

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
  GETTABLEKS R8 R0 K7 ["Guest"]
  GETTABLEKS R7 R8 K12 ["createPropertyCatalog"]
  CALL R6 1 1
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R7 1
