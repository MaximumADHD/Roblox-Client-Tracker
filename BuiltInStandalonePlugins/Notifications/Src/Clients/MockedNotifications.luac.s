PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1], ["createdUtcTimeInMs"], ["read"] = False, ["notificationType"] = "Notification_Type_A", ["parameters"], ["creatorStreamNotificationContent"]}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K10 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R3 K14 [DateTime.now]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R3 R3 K15 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K11 [5000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 DUPTABLE                         R2 K17 [{"titleParam"}]
       17 LOADK                            R4 K18 ["Testing titleParameter with index %*."]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K19 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 SETTABLEKS                       R3 R2 K16 ["titleParam"]
       25 SETTABLEKS                       R2 R1 K6 ["parameters"]
       27 DUPTABLE                         R2 K29 [{["title"] = "DevForum Product Announcement: <b>Studio Notifications</b>", ["body"] = "Studio Notifications have been released. Click here to learn more.", ["targetId"] = "CreateFilledEmphasis", ["targetType"], ["clickAction"] = "https://create.roblox.com"}]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K30 ["Static"]
       31 GETTABLEKS                       R3 R3 K31 ["rawValue"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K26 ["targetType"]
       36 SETTABLEKS                       R2 R1 K7 ["creatorStreamNotificationContent"]
       38 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K8 [{[1], ["createdUtcTimeInMs"], ["read"] = False, ["notificationType"] = "Notification_Type_B", ["parameters"], ["creatorStreamNotificationContent"]}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K10 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R3 K14 [DateTime.now]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R3 R3 K15 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K11 [120000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 DUPTABLE                         R2 K17 [{"titleParam"}]
       17 LOADK                            R4 K18 ["Parameter test with index: %*."]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K19 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 SETTABLEKS                       R3 R2 K16 ["titleParam"]
       25 SETTABLEKS                       R2 R1 K6 ["parameters"]
       27 DUPTABLE                         R2 K29 [{["title"] = "<b>LinksGoat</b> sent you a new message.", ["body"] = "ChatGPTum dialogus continuo generat contentum. Linguae machinales potentiam demonstrant in generatione textus. Conversatio artificialis", ["targetId"] = "2067243959", ["targetType"], ["clickAction"] = "https://www.roblox.com/users/2067243959/profile"}]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K30 ["User"]
       31 GETTABLEKS                       R3 R3 K31 ["rawValue"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K26 ["targetType"]
       36 SETTABLEKS                       R2 R1 K7 ["creatorStreamNotificationContent"]
       38 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K8 [{[1], ["createdUtcTimeInMs"], ["read"] = False, ["notificationType"] = "Notification_Type_C", ["parameters"], ["creatorStreamNotificationContent"]}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K10 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R3 K14 [DateTime.now]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R3 R3 K15 ["UnixTimestampMillis"]
       13 SUBK                             R2 R3 K11 [3700000]
       14 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       16 DUPTABLE                         R2 K17 [{"titleParam"}]
       17 LOADK                            R4 K18 ["Parameter test with index: %*."]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K19 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 SETTABLEKS                       R3 R2 K16 ["titleParam"]
       25 SETTABLEKS                       R2 R1 K6 ["parameters"]
       27 DUPTABLE                         R2 K29 [{["title"] = "You've received an invitation to collaborate on <b>Word Bomb</b>.", ["body"] = "", ["targetId"] = "2653064683", ["targetType"], ["clickAction"] = "https://www.roblox.com/games/2653064683/Word-Bomb"}]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K30 ["Universe"]
       31 GETTABLEKS                       R3 R3 K31 ["rawValue"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K26 ["targetType"]
       36 SETTABLEKS                       R2 R1 K7 ["creatorStreamNotificationContent"]
       38 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K8 [{[1], ["createdUtcTimeInMs"], ["read"] = False, ["notificationType"] = "Notification_Type_D", ["parameters"], ["creatorStreamNotificationContent"]}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K10 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["notificationId"]
        8 GETIMPORT                        R2 K13 [DateTime.now]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R2 R2 K14 ["UnixTimestampMillis"]
       13 SETTABLEKS                       R2 R1 K1 ["createdUtcTimeInMs"]
       15 DUPTABLE                         R2 K16 [{"titleParam"}]
       16 LOADK                            R4 K17 ["Testing titleParameter with index %*."]
       17 MOVE                             R6 R0
       18 NAMECALL                         R4 R4 K18 ["format"]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 SETTABLEKS                       R3 R2 K15 ["titleParam"]
       24 SETTABLEKS                       R2 R1 K6 ["parameters"]
       26 DUPTABLE                         R2 K27 [{["title"] = "This is an example of a notification w/o an action. {titleParam}", ["body"] = "This is the body of the notification", ["targetId"] = "", ["targetType"], ["clickAction"] = ""}]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K28 ["Static"]
       30 GETTABLEKS                       R3 R3 K29 ["rawValue"]
       32 CALL                             R3 0 1
       33 SETTABLEKS                       R3 R2 K25 ["targetType"]
       35 SETTABLEKS                       R2 R1 K7 ["creatorStreamNotificationContent"]
       37 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Enums"]
       15 GETTABLEKS                       R2 R2 K7 ["NotificationTargetType"]
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
