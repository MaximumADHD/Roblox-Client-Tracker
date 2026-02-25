PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R3 K1 ["join"]
       10 DUPTABLE                         R3 K5 [{"studioSid", "clientId", "placeId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K6 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K7 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R5 K9 [game]
       25 GETTABLEKS                       R4 R5 K10 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K11 ["studio"]
       33 LOADK                            R6 K12 ["NotificationTray"]
       34 MOVE                             R7 R0
       35 MOVE                             R8 R2
       36 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       38 CALL                             R3 5 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["NotificationClicked"]
        2 DUPTABLE                         R4 K6 [{"id", "type", "clickAction", "read", "trayIndex"}]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADK                            R7 K7 ["notificationId"]
        6 CALL                             R5 2 1
        7 SETTABLEKS                       R5 R4 K1 ["id"]
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R0
       11 LOADK                            R7 K8 ["creatorStreamNotificationContent"]
       12 LOADK                            R8 K3 ["clickAction"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K2 ["type"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 LOADK                            R7 K9 ["notificationType"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K3 ["clickAction"]
       22 GETUPVAL                         R5 1
       23 MOVE                             R6 R0
       24 LOADK                            R7 K4 ["read"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K4 ["read"]
       28 SETTABLEKS                       R1 R4 K5 ["trayIndex"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MarkAllAsRead"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["SettingsButtonClicked"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["NotificationTrayOpened"]
        2 DUPTABLE                         R3 K2 [{"bellUnseen"}]
        3 SETTABLEKS                       R0 R3 K1 ["bellUnseen"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["NotificationImpressions"]
        2 DUPTABLE                         R3 K2 [{"notificationIds"}]
        3 SETTABLEKS                       R0 R3 K1 ["notificationIds"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPTABLE                         R2 K4 [{"notificationClicked", "markAllAsRead", "settingsButtonClicked", "trayOpened"}]
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K0 ["notificationClicked"]
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["markAllAsRead"]
       13 NEWCLOSURE                       R3 P3
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["settingsButtonClicked"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K3 ["trayOpened"]
       21 NEWCLOSURE                       R3 P5
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K5 ["logNotificationImpressions"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Packages"]
       22 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Src"]
       29 GETTABLEKS                       R6 R7 K10 ["Util"]
       31 GETTABLEKS                       R5 R6 K11 ["optional"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R8 R0 K9 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["Clients"]
       40 GETTABLEKS                       R6 R7 K13 ["NotificationClient"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_6]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 SETGLOBAL                        R6 K15 ["createAnalyticsHandler"]
       48 GETTABLEKS                       R7 R2 K16 ["Analytics"]
       50 GETTABLEKS                       R6 R7 K17 ["new"]
       52 GETGLOBAL                        R7 K15 ["createAnalyticsHandler"]
       54 CALL                             R6 1 1
       55 RETURN                           R6 1
