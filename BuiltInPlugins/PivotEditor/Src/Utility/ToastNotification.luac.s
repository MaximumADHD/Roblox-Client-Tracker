PROTO_0:
        0 JUMPIF                           R0 ; [+7]
        1 GETIMPORT                        R1 K1 [game]
        3 LOADK                            R3 K2 ["ToastNotificationService"]
        4 NAMECALL                         R1 R1 K3 ["GetService"]
        6 CALL                             R1 2 1
        7 MOVE                             R0 R1
        8 DUPTABLE                         R2 K5 [{"_notificationService"}]
        9 SETTABLEKS                       R0 R2 K4 ["_notificationService"]
       11 GETUPVAL                         R3 0
       12 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [setmetatable]
       16 CALL                             R1 2 1
       17 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_notificationService"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_notificationService"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["_notificationService"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K1 ["ShowNotification"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_notificationService"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_notificationService"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["HideNotification"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R2 K8 ["ContextItem"]
       20 LOADK                            R6 K9 ["ToastNotification"]
       21 NAMECALL                         R4 R3 K10 ["extend"]
       23 CALL                             R4 2 1
       24 DUPCLOSURE                       R5 K11 [PROTO_0]
       25 CAPTURE                          VAL R4
       26 SETTABLEKS                       R5 R4 K12 ["new"]
       28 DUPCLOSURE                       R5 K13 [PROTO_1]
       29 SETTABLEKS                       R5 R4 K14 ["destroy"]
       31 DUPCLOSURE                       R5 K15 [PROTO_2]
       32 SETTABLEKS                       R5 R4 K16 ["showNotification"]
       34 DUPCLOSURE                       R5 K17 [PROTO_3]
       35 SETTABLEKS                       R5 R4 K18 ["hideNotification"]
       37 RETURN                           R4 1
