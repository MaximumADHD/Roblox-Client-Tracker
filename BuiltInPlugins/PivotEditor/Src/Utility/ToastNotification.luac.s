PROTO_0:
  JUMPIF R0 [+7]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["ToastNotificationService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  MOVE R0 R1
  DUPTABLE R2 K5 [{"_notificationService"}]
  SETTABLEKS R0 R2 K4 ["_notificationService"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K7 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_notificationService"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_notificationService"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K0 ["_notificationService"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["ShowNotification"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_notificationService"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K0 ["_notificationService"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["HideNotification"]
  CALL R2 2 0
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
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETTABLEKS R3 R2 K8 ["ContextItem"]
  LOADK R6 K9 ["ToastNotification"]
  NAMECALL R4 R3 K10 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K12 ["new"]
  DUPCLOSURE R5 K13 [PROTO_1]
  SETTABLEKS R5 R4 K14 ["destroy"]
  DUPCLOSURE R5 K15 [PROTO_2]
  SETTABLEKS R5 R4 K16 ["showNotification"]
  DUPCLOSURE R5 K17 [PROTO_3]
  SETTABLEKS R5 R4 K18 ["hideNotification"]
  RETURN R4 1
