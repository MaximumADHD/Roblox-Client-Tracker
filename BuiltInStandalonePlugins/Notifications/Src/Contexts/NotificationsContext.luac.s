PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Clients"]
  GETTABLEKS R3 R4 K9 ["NotificationClient"]
  CALL R2 1 1
  DUPTABLE R3 K20 [{"notifications", "allLoaded", "setNotifications", "setCursor", "setAllLoaded", "markNotificationRead", "markNotificationReadFromId", "markAllNotificationsRead", "logNotificationImpressions", "notificationClient"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K10 ["notifications"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["allLoaded"]
  DUPCLOSURE R4 K21 [PROTO_0]
  SETTABLEKS R4 R3 K12 ["setNotifications"]
  DUPCLOSURE R4 K22 [PROTO_1]
  SETTABLEKS R4 R3 K13 ["setCursor"]
  DUPCLOSURE R4 K23 [PROTO_2]
  SETTABLEKS R4 R3 K14 ["setAllLoaded"]
  DUPCLOSURE R4 K24 [PROTO_3]
  SETTABLEKS R4 R3 K15 ["markNotificationRead"]
  DUPCLOSURE R4 K25 [PROTO_4]
  SETTABLEKS R4 R3 K16 ["markNotificationReadFromId"]
  DUPCLOSURE R4 K26 [PROTO_5]
  SETTABLEKS R4 R3 K17 ["markAllNotificationsRead"]
  DUPCLOSURE R4 K27 [PROTO_6]
  SETTABLEKS R4 R3 K18 ["logNotificationImpressions"]
  LOADNIL R4
  SETTABLEKS R4 R3 K19 ["notificationClient"]
  GETTABLEKS R4 R1 K28 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  RETURN R4 1
