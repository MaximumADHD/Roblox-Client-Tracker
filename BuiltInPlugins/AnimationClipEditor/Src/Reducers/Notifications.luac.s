PROTO_0:
  GETTABLEKS R5 R1 K0 ["notification"]
  GETTABLE R4 R0 R5
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R5 K1 ["Notification "]
  GETTABLEKS R6 R1 K0 ["notification"]
  LOADK R7 K2 [" does not exist in Notifications."]
  CONCAT R4 R5 R7
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["Dictionary"]
  GETTABLEKS R2 R3 K6 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K0 ["notification"]
  GETTABLEKS R6 R1 K7 ["value"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETTABLEKS R3 R1 K0 ["notification"]
  JUMPIFNOTEQKS R3 K8 ["Loaded"] [+7]
  GETTABLEKS R3 R1 K7 ["value"]
  JUMPIFNOT R3 [+3]
  LOADB R3 0
  SETTABLEKS R3 R2 K9 ["Saved"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  DUPTABLE R3 K15 [{"QuantizeWarning", "Saved", "Loaded", "ClippedWarning", "InvalidAnimation", "CannotPasteError"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["QuantizeWarning"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["Saved"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["Loaded"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["ClippedWarning"]
  LOADB R4 0
  SETTABLEKS R4 R3 K13 ["InvalidAnimation"]
  LOADB R4 0
  SETTABLEKS R4 R3 K14 ["CannotPasteError"]
  GETTABLEKS R4 R1 K16 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K18 [{"SetNotification"}]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K17 ["SetNotification"]
  CALL R4 2 -1
  RETURN R4 -1
