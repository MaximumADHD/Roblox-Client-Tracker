PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 1
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K3 [{"count", "notificationChannel"}]
        6 LOADN                            R6 10
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K5 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["count"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K6 ["Studio"]
       16 GETTABLEKS                       R6 R6 K7 ["rawValue"]
       18 CALL                             R6 0 -1
       19 FASTCALL                         TOSTRING ; [+2]
       20 GETIMPORT                        R5 K5 [tostring]
       22 CALL                             R5 -1 1
       23 SETTABLEKS                       R5 R4 K2 ["notificationChannel"]
       25 MOVE                             R3 R4
       26 JUMPIFNOT                        R0 ; [+7]
       27 LOADB                            R5 1
       28 FASTCALL1                        TOSTRING R5 ; [+2]
       29 GETIMPORT                        R4 K5 [tostring]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K8 ["full-refresh"]
       34 JUMPIFNOT                        R1 ; [+2]
       35 SETTABLEKS                       R1 R3 K9 ["cursor"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K10 ["composeUrl"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K11 ["APIS_URL"]
       43 LOADK                            R7 K12 ["creator-notifications/v1/creator-stream-notifications/"]
       44 LOADK                            R8 K13 ["users/%*/notifications"]
       45 MOVE                             R10 R2
       46 NAMECALL                         R8 R8 K14 ["format"]
       48 CALL                             R8 2 1
       49 CONCAT                           R6 R7 R8
       50 MOVE                             R7 R3
       51 CALL                             R4 3 1
       52 GETUPVAL                         R5 3
       53 GETUPVAL                         R7 3
       54 MOVE                             R9 R4
       55 NAMECALL                         R7 R7 K15 ["get"]
       57 CALL                             R7 2 -1
       58 NAMECALL                         R5 R5 K16 ["handleRetry"]
       60 CALL                             R5 -1 1
       61 DUPCLOSURE                       R7 K17 [PROTO_0]
       62 NAMECALL                         R5 R5 K18 ["catch"]
       64 CALL                             R5 2 1
       65 NAMECALL                         R5 R5 K19 ["await"]
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R5 K20 ["responseCode"]
       70 LOADN                            R7 200
       71 JUMPIFNOTLE                      R7 R6 ; [+14]
       73 GETTABLEKS                       R6 R5 K20 ["responseCode"]
       75 LOADN                            R7 300
       76 JUMPIFNOTLT                      R6 R7 ; [+9]
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R8 R5 K21 ["responseBody"]
       81 NAMECALL                         R6 R6 K22 ["JSONDecode"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K21 ["responseBody"]
       86 RETURN                           R5 1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["composeUrl"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["APIS_URL"]
       10 LOADK                            R5 K3 ["creator-notifications/v1/creator-stream-notifications/"]
       11 LOADK                            R6 K4 ["users/%*/notification/%*"]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R0
       14 NAMECALL                         R6 R6 K5 ["format"]
       16 CALL                             R6 3 1
       17 CONCAT                           R4 R5 R6
       18 CALL                             R2 2 1
       19 DUPTABLE                         R3 K8 [{["Status"] = True}]
       20 DUPTABLE                         R4 K14 [{["Url"], ["Body"], ["Method"] = "PUT", ["Headers"]}]
       21 SETTABLEKS                       R2 R4 K9 ["Url"]
       23 GETUPVAL                         R5 2
       24 MOVE                             R7 R3
       25 NAMECALL                         R5 R5 K15 ["JSONEncode"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K10 ["Body"]
       30 NEWTABLE                         R5 1 0
       32 LOADK                            R6 K16 ["application/json"]
       33 SETTABLEKS                       R6 R5 K17 ["Content-Type"]
       35 SETTABLEKS                       R5 R4 K13 ["Headers"]
       37 GETUPVAL                         R5 3
       38 GETUPVAL                         R7 3
       39 MOVE                             R9 R4
       40 NAMECALL                         R7 R7 K18 ["request"]
       42 CALL                             R7 2 -1
       43 NAMECALL                         R5 R5 K19 ["handleRetry"]
       45 CALL                             R5 -1 1
       46 DUPCLOSURE                       R7 K20 [PROTO_2]
       47 NAMECALL                         R5 R5 K21 ["catch"]
       49 CALL                             R5 2 1
       50 NAMECALL                         R5 R5 K22 ["await"]
       52 CALL                             R5 1 -1
       53 RETURN                           R5 -1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["composeUrl"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["APIS_URL"]
       10 LOADK                            R4 K3 ["creator-notifications/v1/creator-stream-notifications/"]
       11 LOADK                            R5 K4 ["users/%*/notifications"]
       12 MOVE                             R7 R0
       13 NAMECALL                         R5 R5 K5 ["format"]
       15 CALL                             R5 2 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R1 2 1
       18 NEWTABLE                         R2 1 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K6 ["Studio"]
       23 GETTABLEKS                       R3 R3 K7 ["rawValue"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K8 ["notification-channel"]
       28 DUPTABLE                         R3 K14 [{["Url"], ["Body"], ["Method"] = "PUT", ["Headers"]}]
       29 SETTABLEKS                       R1 R3 K9 ["Url"]
       31 GETUPVAL                         R4 3
       32 MOVE                             R6 R2
       33 NAMECALL                         R4 R4 K15 ["JSONEncode"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K10 ["Body"]
       38 NEWTABLE                         R4 1 0
       40 LOADK                            R5 K16 ["application/json"]
       41 SETTABLEKS                       R5 R4 K17 ["Content-Type"]
       43 SETTABLEKS                       R4 R3 K13 ["Headers"]
       45 GETUPVAL                         R4 4
       46 GETUPVAL                         R6 4
       47 MOVE                             R8 R3
       48 NAMECALL                         R6 R6 K18 ["request"]
       50 CALL                             R6 2 -1
       51 NAMECALL                         R4 R4 K19 ["handleRetry"]
       53 CALL                             R4 -1 1
       54 DUPCLOSURE                       R6 K20 [PROTO_4]
       55 NAMECALL                         R4 R4 K21 ["catch"]
       57 CALL                             R4 2 1
       58 NAMECALL                         R4 R4 K22 ["await"]
       60 CALL                             R4 1 -1
       61 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["RobloxAPI"]
       18 GETTABLEKS                       R2 R2 K8 ["Url"]
       20 GETTABLEKS                       R2 R2 K9 ["new"]
       22 CALL                             R2 0 1
       23 GETTABLEKS                       R3 R1 K10 ["Http"]
       25 GETTABLEKS                       R3 R3 K11 ["Networking"]
       27 GETTABLEKS                       R4 R3 K9 ["new"]
       29 DUPTABLE                         R5 K16 [{["isInternal"] = True, ["loggingLevel"] = 0}]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K18 [game]
       33 LOADK                            R7 K19 ["HttpService"]
       34 NAMECALL                         R5 R5 K20 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K18 [game]
       39 LOADK                            R8 K21 ["StudioService"]
       40 NAMECALL                         R6 R6 K20 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K22 ["Src"]
       47 GETTABLEKS                       R8 R8 K23 ["Enums"]
       49 GETTABLEKS                       R8 R8 K24 ["NotificationChannel"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K25 [PROTO_1]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R9 K26 [PROTO_3]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R10 K27 [PROTO_5]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 DUPTABLE                         R11 K31 [{"getNotifications", "markNotificationRead", "markAllNotificationsRead"}]
       70 SETTABLEKS                       R8 R11 K28 ["getNotifications"]
       72 SETTABLEKS                       R9 R11 K29 ["markNotificationRead"]
       74 SETTABLEKS                       R10 R11 K30 ["markAllNotificationsRead"]
       76 RETURN                           R11 1
