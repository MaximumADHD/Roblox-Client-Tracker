PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Clients"]
       22 GETTABLEKS                       R3 R3 K9 ["NotificationClient"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K20 [{"notifications", "allLoaded", "setNotifications", "setCursor", "setAllLoaded", "markNotificationRead", "markNotificationReadFromId", "markAllNotificationsRead", "logNotificationImpressions", "notificationClient"}]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R3 K10 ["notifications"]
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K11 ["allLoaded"]
       33 DUPCLOSURE                       R4 K21 [PROTO_0]
       34 SETTABLEKS                       R4 R3 K12 ["setNotifications"]
       36 DUPCLOSURE                       R4 K22 [PROTO_1]
       37 SETTABLEKS                       R4 R3 K13 ["setCursor"]
       39 DUPCLOSURE                       R4 K23 [PROTO_2]
       40 SETTABLEKS                       R4 R3 K14 ["setAllLoaded"]
       42 DUPCLOSURE                       R4 K24 [PROTO_3]
       43 SETTABLEKS                       R4 R3 K15 ["markNotificationRead"]
       45 DUPCLOSURE                       R4 K25 [PROTO_4]
       46 SETTABLEKS                       R4 R3 K16 ["markNotificationReadFromId"]
       48 DUPCLOSURE                       R4 K26 [PROTO_5]
       49 SETTABLEKS                       R4 R3 K17 ["markAllNotificationsRead"]
       51 DUPCLOSURE                       R4 K27 [PROTO_6]
       52 SETTABLEKS                       R4 R3 K18 ["logNotificationImpressions"]
       54 LOADNIL                          R4
       55 SETTABLEKS                       R4 R3 K19 ["notificationClient"]
       57 GETTABLEKS                       R4 R1 K28 ["createContext"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 RETURN                           R4 1
