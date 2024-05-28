PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K11 ["studio"]
  LOADK R6 K12 ["NotificationTray"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K13 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  LOADK R3 K0 ["NotificationClicked"]
  DUPTABLE R4 K6 [{"id", "type", "clickAction", "read", "trayIndex"}]
  GETUPVAL R5 1
  MOVE R6 R0
  LOADK R7 K7 ["notificationId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["id"]
  GETUPVAL R5 1
  MOVE R6 R0
  LOADK R7 K8 ["creatorStreamNotificationContent"]
  LOADK R8 K3 ["clickAction"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["type"]
  GETUPVAL R5 1
  MOVE R6 R0
  LOADK R7 K9 ["notificationType"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["clickAction"]
  GETUPVAL R5 1
  MOVE R6 R0
  LOADK R7 K4 ["read"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["read"]
  SETTABLEKS R1 R4 K5 ["trayIndex"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R1 K0 ["MarkAllAsRead"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["SettingsButtonClicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R2 K0 ["NotificationTrayOpened"]
  DUPTABLE R3 K2 [{"bellUnseen"}]
  SETTABLEKS R0 R3 K1 ["bellUnseen"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  LOADK R2 K0 ["NotificationImpressions"]
  DUPTABLE R3 K2 [{"notificationIds"}]
  SETTABLEKS R0 R3 K1 ["notificationIds"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  DUPTABLE R2 K4 [{"notificationClicked", "markAllAsRead", "settingsButtonClicked", "trayOpened"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R3 R2 K0 ["notificationClicked"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["markAllAsRead"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["settingsButtonClicked"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K3 ["trayOpened"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K5 ["logNotificationImpressions"]
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
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["optional"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Clients"]
  GETTABLEKS R6 R7 K13 ["NotificationClient"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETGLOBAL R6 K15 ["createAnalyticsHandler"]
  GETTABLEKS R7 R2 K16 ["Analytics"]
  GETTABLEKS R6 R7 K17 ["new"]
  GETGLOBAL R7 K15 ["createAnalyticsHandler"]
  CALL R6 1 1
  RETURN R6 1
