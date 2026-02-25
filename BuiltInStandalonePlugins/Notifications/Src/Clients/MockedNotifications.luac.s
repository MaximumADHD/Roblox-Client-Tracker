PROTO_0:
        0 DUPTABLE                         R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K8 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R4 K12 [DateTime.now]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R3 R4 K13 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K9 [5000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K2 ["read"]
       19 LOADK                            R2 K14 ["Notification_Type_A"]
       20 SETTABLEKS                       R2 R1 K3 ["notificationType"]
       22 DUPTABLE                         R2 K16 [{"titleParam"}]
       23 LOADK                            R4 K17 ["Testing titleParameter with index %*."]
       24 MOVE                             R6 R0
       25 NAMECALL                         R4 R4 K18 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 SETTABLEKS                       R3 R2 K15 ["titleParam"]
       31 SETTABLEKS                       R2 R1 K4 ["parameters"]
       33 DUPTABLE                         R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
       34 LOADK                            R3 K25 ["DevForum Product Announcement: <b>Studio Notifications</b>"]
       35 SETTABLEKS                       R3 R2 K19 ["title"]
       37 LOADK                            R3 K26 ["Studio Notifications have been released. Click here to learn more."]
       38 SETTABLEKS                       R3 R2 K20 ["body"]
       40 LOADK                            R3 K27 ["CreateFilledEmphasis"]
       41 SETTABLEKS                       R3 R2 K21 ["targetId"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K28 ["Static"]
       46 GETTABLEKS                       R3 R4 K29 ["rawValue"]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K22 ["targetType"]
       51 LOADK                            R3 K30 ["https://create.roblox.com"]
       52 SETTABLEKS                       R3 R2 K23 ["clickAction"]
       54 SETTABLEKS                       R2 R1 K5 ["creatorStreamNotificationContent"]
       56 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K8 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R4 K12 [DateTime.now]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R3 R4 K13 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K9 [120000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K2 ["read"]
       19 LOADK                            R2 K14 ["Notification_Type_B"]
       20 SETTABLEKS                       R2 R1 K3 ["notificationType"]
       22 DUPTABLE                         R2 K16 [{"titleParam"}]
       23 LOADK                            R4 K17 ["Parameter test with index: %*."]
       24 MOVE                             R6 R0
       25 NAMECALL                         R4 R4 K18 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 SETTABLEKS                       R3 R2 K15 ["titleParam"]
       31 SETTABLEKS                       R2 R1 K4 ["parameters"]
       33 DUPTABLE                         R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
       34 LOADK                            R3 K25 ["<b>LinksGoat</b> sent you a new message."]
       35 SETTABLEKS                       R3 R2 K19 ["title"]
       37 LOADK                            R3 K26 ["ChatGPTum dialogus continuo generat contentum. Linguae machinales potentiam demonstrant in generatione textus. Conversatio artificialis"]
       38 SETTABLEKS                       R3 R2 K20 ["body"]
       40 LOADK                            R3 K27 ["2067243959"]
       41 SETTABLEKS                       R3 R2 K21 ["targetId"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K28 ["User"]
       46 GETTABLEKS                       R3 R4 K29 ["rawValue"]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K22 ["targetType"]
       51 LOADK                            R3 K30 ["https://www.roblox.com/users/2067243959/profile"]
       52 SETTABLEKS                       R3 R2 K23 ["clickAction"]
       54 SETTABLEKS                       R2 R1 K5 ["creatorStreamNotificationContent"]
       56 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K8 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R4 K12 [DateTime.now]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R3 R4 K13 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K9 [3700000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K2 ["read"]
       19 LOADK                            R2 K14 ["Notification_Type_C"]
       20 SETTABLEKS                       R2 R1 K3 ["notificationType"]
       22 DUPTABLE                         R2 K16 [{"titleParam"}]
       23 LOADK                            R4 K17 ["Parameter test with index: %*."]
       24 MOVE                             R6 R0
       25 NAMECALL                         R4 R4 K18 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 SETTABLEKS                       R3 R2 K15 ["titleParam"]
       31 SETTABLEKS                       R2 R1 K4 ["parameters"]
       33 DUPTABLE                         R2 K24 [{"title", "body", "targetId", "targetType", "clickAction"}]
       34 LOADK                            R3 K25 ["You've received an invitation to collaborate on <b>Word Bomb</b>."]
       35 SETTABLEKS                       R3 R2 K19 ["title"]
       37 LOADK                            R3 K26 [""]
       38 SETTABLEKS                       R3 R2 K20 ["body"]
       40 LOADK                            R3 K27 ["2653064683"]
       41 SETTABLEKS                       R3 R2 K21 ["targetId"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K28 ["Universe"]
       46 GETTABLEKS                       R3 R4 K29 ["rawValue"]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K22 ["targetType"]
       51 LOADK                            R3 K30 ["https://www.roblox.com/games/2653064683/Word-Bomb"]
       52 SETTABLEKS                       R3 R2 K23 ["clickAction"]
       54 SETTABLEKS                       R2 R1 K5 ["creatorStreamNotificationContent"]
       56 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"notificationId", "createdUtcTimeInMs", "read", "notificationType", "parameters", "creatorStreamNotificationContent"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K8 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R3 K11 [DateTime.now]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R2 R3 K12 ["UnixTimestampMillis"]
       13 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K2 ["read"]
       18 LOADK                            R2 K13 ["Notification_Type_D"]
       19 SETTABLEKS                       R2 R1 K3 ["notificationType"]
       21 DUPTABLE                         R2 K15 [{"titleParam"}]
       22 LOADK                            R4 K16 ["Testing titleParameter with index %*."]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K17 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 SETTABLEKS                       R3 R2 K14 ["titleParam"]
       30 SETTABLEKS                       R2 R1 K4 ["parameters"]
       32 DUPTABLE                         R2 K23 [{"title", "body", "targetId", "targetType", "clickAction"}]
       33 LOADK                            R3 K24 ["This is an example of a notification w/o an action. {titleParam}"]
       34 SETTABLEKS                       R3 R2 K18 ["title"]
       36 LOADK                            R3 K25 ["This is the body of the notification"]
       37 SETTABLEKS                       R3 R2 K19 ["body"]
       39 LOADK                            R3 K26 [""]
       40 SETTABLEKS                       R3 R2 K20 ["targetId"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K27 ["Static"]
       45 GETTABLEKS                       R3 R4 K28 ["rawValue"]
       47 CALL                             R3 0 1
       48 SETTABLEKS                       R3 R2 K21 ["targetType"]
       50 LOADK                            R3 K26 [""]
       51 SETTABLEKS                       R3 R2 K22 ["clickAction"]
       53 SETTABLEKS                       R2 R1 K5 ["creatorStreamNotificationContent"]
       55 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Enums"]
       15 GETTABLEKS                       R2 R3 K7 ["NotificationTargetType"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 0 4
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R5 K10 [PROTO_2]
       25 CAPTURE                          VAL R1
       26 DUPCLOSURE                       R6 K11 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 SETLIST                          R2 R3 4 [1]
       30 RETURN                           R2 1
