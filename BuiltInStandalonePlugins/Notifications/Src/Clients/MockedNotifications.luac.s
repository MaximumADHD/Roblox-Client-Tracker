PROTO_0:
  DUPTABLE R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K8 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["notificationId"]
  GETIMPORT R4 K12 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K13 ["UnixTimestampMillis"]
  SUBK R2 R3 K9 [5000]
  SETTABLEKS R2 R1 K1 ["createdUtcTimeInMs"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["read"]
  LOADK R2 K14 ["Notification_Type_A"]
  SETTABLEKS R2 R1 K3 ["notificationType"]
  DUPTABLE R2 K16 [{"titleParam"}]
  LOADK R4 K17 ["Testing titleParameter with index %*."]
  MOVE R6 R0
  NAMECALL R4 R4 K18 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K15 ["titleParam"]
  SETTABLEKS R2 R1 K4 ["parameters"]
  DUPTABLE R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
  LOADK R3 K25 ["DevForum Product Announcement: <b>Studio Notifications</b>"]
  SETTABLEKS R3 R2 K19 ["title"]
  LOADK R3 K26 ["Studio Notifications have been released. Click here to learn more."]
  SETTABLEKS R3 R2 K20 ["body"]
  LOADK R3 K27 ["CreateFilledEmphasis"]
  SETTABLEKS R3 R2 K21 ["targetId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K28 ["Static"]
  GETTABLEKS R3 R4 K29 ["rawValue"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K22 ["targetType"]
  LOADK R3 K30 ["https://create.roblox.com"]
  SETTABLEKS R3 R2 K23 ["clickAction"]
  SETTABLEKS R2 R1 K5 ["creatorStreamNotificationContent"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K8 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["notificationId"]
  GETIMPORT R4 K12 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K13 ["UnixTimestampMillis"]
  SUBK R2 R3 K9 [120000]
  SETTABLEKS R2 R1 K1 ["createdUtcTimeInMs"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["read"]
  LOADK R2 K14 ["Notification_Type_B"]
  SETTABLEKS R2 R1 K3 ["notificationType"]
  DUPTABLE R2 K16 [{"titleParam"}]
  LOADK R4 K17 ["Parameter test with index: %*."]
  MOVE R6 R0
  NAMECALL R4 R4 K18 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K15 ["titleParam"]
  SETTABLEKS R2 R1 K4 ["parameters"]
  DUPTABLE R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
  LOADK R3 K25 ["<b>LinksGoat</b> sent you a new message."]
  SETTABLEKS R3 R2 K19 ["title"]
  LOADK R3 K26 ["ChatGPTum dialogus continuo generat contentum. Linguae machinales potentiam demonstrant in generatione textus. Conversatio artificialis"]
  SETTABLEKS R3 R2 K20 ["body"]
  LOADK R3 K27 ["2067243959"]
  SETTABLEKS R3 R2 K21 ["targetId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K28 ["User"]
  GETTABLEKS R3 R4 K29 ["rawValue"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K22 ["targetType"]
  LOADK R3 K30 ["https://www.roblox.com/users/2067243959/profile"]
  SETTABLEKS R3 R2 K23 ["clickAction"]
  SETTABLEKS R2 R1 K5 ["creatorStreamNotificationContent"]
  RETURN R1 1

PROTO_2:
  DUPTABLE R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K8 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["notificationId"]
  GETIMPORT R4 K12 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K13 ["UnixTimestampMillis"]
  SUBK R2 R3 K9 [3700000]
  SETTABLEKS R2 R1 K1 ["createdUtcTimeInMs"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["read"]
  LOADK R2 K14 ["Notification_Type_C"]
  SETTABLEKS R2 R1 K3 ["notificationType"]
  DUPTABLE R2 K16 [{"titleParam"}]
  LOADK R4 K17 ["Parameter test with index: %*."]
  MOVE R6 R0
  NAMECALL R4 R4 K18 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K15 ["titleParam"]
  SETTABLEKS R2 R1 K4 ["parameters"]
  DUPTABLE R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
  LOADK R3 K25 ["You've received an invitation to collaborate on <b>Word Bomb</b>."]
  SETTABLEKS R3 R2 K19 ["title"]
  LOADK R3 K26 [""]
  SETTABLEKS R3 R2 K20 ["body"]
  LOADK R3 K27 ["2653064683"]
  SETTABLEKS R3 R2 K21 ["targetId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K28 ["Universe"]
  GETTABLEKS R3 R4 K29 ["rawValue"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K22 ["targetType"]
  LOADK R3 K30 ["https://www.roblox.com/games/2653064683/Word-Bomb"]
  SETTABLEKS R3 R2 K23 ["clickAction"]
  SETTABLEKS R2 R1 K5 ["creatorStreamNotificationContent"]
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K8 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["notificationId"]
  GETIMPORT R3 K11 [DateTime.now]
  CALL R3 0 1
  GETTABLEKS R2 R3 K12 ["UnixTimestampMillis"]
  SETTABLEKS R2 R1 K1 ["createdUtcTimeInMs"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["read"]
  LOADK R2 K13 ["Notification_Type_D"]
  SETTABLEKS R2 R1 K3 ["notificationType"]
  DUPTABLE R2 K15 [{"titleParam"}]
  LOADK R4 K16 ["Testing titleParameter with index %*."]
  MOVE R6 R0
  NAMECALL R4 R4 K17 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K14 ["titleParam"]
  SETTABLEKS R2 R1 K4 ["parameters"]
  DUPTABLE R2 K23 [{"title", "body", "targetId", "targetType", "clickAction"}]
  LOADK R3 K24 ["This is an example of a notification w/o an action. {titleParam}"]
  SETTABLEKS R3 R2 K18 ["title"]
  LOADK R3 K25 ["This is the body of the notification"]
  SETTABLEKS R3 R2 K19 ["body"]
  LOADK R3 K26 [""]
  SETTABLEKS R3 R2 K20 ["targetId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K27 ["Static"]
  GETTABLEKS R3 R4 K28 ["rawValue"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K21 ["targetType"]
  LOADK R3 K26 [""]
  SETTABLEKS R3 R2 K22 ["clickAction"]
  SETTABLEKS R2 R1 K5 ["creatorStreamNotificationContent"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["NotificationTargetType"]
  CALL R1 1 1
  NEWTABLE R2 0 4
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R5 K10 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R6 K11 [PROTO_3]
  CAPTURE VAL R1
  SETLIST R2 R3 4 [1]
  RETURN R2 1
