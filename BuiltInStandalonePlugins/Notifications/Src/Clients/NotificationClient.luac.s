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
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K6 ["Studio"]
       16 GETTABLEKS                       R6 R7 K7 ["rawValue"]
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
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K10 ["composeUrl"]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K11 ["APIS_URL"]
       43 LOADK                            R7 K12 ["creator-notifications/v1/creator-stream-notifications/"]
       44 LOADK                            R9 K13 ["users/%*/notifications"]
       45 MOVE                             R11 R2
       46 NAMECALL                         R9 R9 K14 ["format"]
       48 CALL                             R9 2 1
       49 MOVE                             R8 R9
       50 CONCAT                           R6 R7 R8
       51 MOVE                             R7 R3
       52 CALL                             R4 3 1
       53 GETUPVAL                         R5 3
       54 GETUPVAL                         R7 3
       55 MOVE                             R9 R4
       56 NAMECALL                         R7 R7 K15 ["get"]
       58 CALL                             R7 2 -1
       59 NAMECALL                         R5 R5 K16 ["handleRetry"]
       61 CALL                             R5 -1 1
       62 DUPCLOSURE                       R7 K17 [PROTO_0]
       63 NAMECALL                         R5 R5 K18 ["catch"]
       65 CALL                             R5 2 1
       66 NAMECALL                         R5 R5 K19 ["await"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R6 R5 K20 ["responseCode"]
       71 LOADN                            R7 200
       72 JUMPIFNOTLE                      R7 R6 ; [+14]
       74 GETTABLEKS                       R6 R5 K20 ["responseCode"]
       76 LOADN                            R7 44
       77 JUMPIFNOTLT                      R6 R7 ; [+9]
       79 GETUPVAL                         R6 4
       80 GETTABLEKS                       R8 R5 K21 ["responseBody"]
       82 NAMECALL                         R6 R6 K22 ["JSONDecode"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K21 ["responseBody"]
       87 RETURN                           R5 1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["composeUrl"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["APIS_URL"]
       10 LOADK                            R5 K3 ["creator-notifications/v1/creator-stream-notifications/"]
       11 LOADK                            R7 K4 ["users/%*/notification/%*"]
       12 MOVE                             R9 R1
       13 MOVE                             R10 R0
       14 NAMECALL                         R7 R7 K5 ["format"]
       16 CALL                             R7 3 1
       17 MOVE                             R6 R7
       18 CONCAT                           R4 R5 R6
       19 CALL                             R2 2 1
       20 DUPTABLE                         R3 K7 [{"Status"}]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K6 ["Status"]
       24 DUPTABLE                         R4 K12 [{"Url", "Body", "Method", "Headers"}]
       25 SETTABLEKS                       R2 R4 K8 ["Url"]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 NAMECALL                         R5 R5 K13 ["JSONEncode"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K9 ["Body"]
       34 LOADK                            R5 K14 ["PUT"]
       35 SETTABLEKS                       R5 R4 K10 ["Method"]
       37 NEWTABLE                         R5 1 0
       39 LOADK                            R6 K15 ["application/json"]
       40 SETTABLEKS                       R6 R5 K16 ["Content-Type"]
       42 SETTABLEKS                       R5 R4 K11 ["Headers"]
       44 GETUPVAL                         R5 3
       45 GETUPVAL                         R7 3
       46 MOVE                             R9 R4
       47 NAMECALL                         R7 R7 K17 ["request"]
       49 CALL                             R7 2 -1
       50 NAMECALL                         R5 R5 K18 ["handleRetry"]
       52 CALL                             R5 -1 1
       53 DUPCLOSURE                       R7 K19 [PROTO_2]
       54 NAMECALL                         R5 R5 K20 ["catch"]
       56 CALL                             R5 2 1
       57 NAMECALL                         R5 R5 K21 ["await"]
       59 CALL                             R5 1 -1
       60 RETURN                           R5 -1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["composeUrl"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["APIS_URL"]
       10 LOADK                            R4 K3 ["creator-notifications/v1/creator-stream-notifications/"]
       11 LOADK                            R6 K4 ["users/%*/notifications"]
       12 MOVE                             R8 R0
       13 NAMECALL                         R6 R6 K5 ["format"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 CONCAT                           R3 R4 R5
       18 CALL                             R1 2 1
       19 NEWTABLE                         R2 1 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K6 ["Studio"]
       24 GETTABLEKS                       R3 R4 K7 ["rawValue"]
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K8 ["notification-channel"]
       29 DUPTABLE                         R3 K13 [{"Url", "Body", "Method", "Headers"}]
       30 SETTABLEKS                       R1 R3 K9 ["Url"]
       32 GETUPVAL                         R4 3
       33 MOVE                             R6 R2
       34 NAMECALL                         R4 R4 K14 ["JSONEncode"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K10 ["Body"]
       39 LOADK                            R4 K15 ["PUT"]
       40 SETTABLEKS                       R4 R3 K11 ["Method"]
       42 NEWTABLE                         R4 1 0
       44 LOADK                            R5 K16 ["application/json"]
       45 SETTABLEKS                       R5 R4 K17 ["Content-Type"]
       47 SETTABLEKS                       R4 R3 K12 ["Headers"]
       49 GETUPVAL                         R4 4
       50 GETUPVAL                         R6 4
       51 MOVE                             R8 R3
       52 NAMECALL                         R6 R6 K18 ["request"]
       54 CALL                             R6 2 -1
       55 NAMECALL                         R4 R4 K19 ["handleRetry"]
       57 CALL                             R4 -1 1
       58 DUPCLOSURE                       R6 K20 [PROTO_4]
       59 NAMECALL                         R4 R4 K21 ["catch"]
       61 CALL                             R4 2 1
       62 NAMECALL                         R4 R4 K22 ["await"]
       64 CALL                             R4 1 -1
       65 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R1 K7 ["RobloxAPI"]
       18 GETTABLEKS                       R3 R4 K8 ["Url"]
       20 GETTABLEKS                       R2 R3 K9 ["new"]
       22 CALL                             R2 0 1
       23 GETTABLEKS                       R4 R1 K10 ["Http"]
       25 GETTABLEKS                       R3 R4 K11 ["Networking"]
       27 GETTABLEKS                       R4 R3 K9 ["new"]
       29 DUPTABLE                         R5 K14 [{"isInternal", "loggingLevel"}]
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K12 ["isInternal"]
       33 LOADN                            R6 0
       34 SETTABLEKS                       R6 R5 K13 ["loggingLevel"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K16 [game]
       39 LOADK                            R7 K17 ["HttpService"]
       40 NAMECALL                         R5 R5 K18 ["GetService"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K16 [game]
       45 LOADK                            R8 K19 ["StudioService"]
       46 NAMECALL                         R6 R6 K18 ["GetService"]
       48 CALL                             R6 2 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R10 R0 K20 ["Src"]
       53 GETTABLEKS                       R9 R10 K21 ["Enums"]
       55 GETTABLEKS                       R8 R9 K22 ["NotificationChannel"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K23 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R9 K24 [PROTO_3]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R10 K25 [PROTO_5]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 DUPTABLE                         R11 K29 [{"getNotifications", "markNotificationRead", "markAllNotificationsRead"}]
       76 SETTABLEKS                       R8 R11 K26 ["getNotifications"]
       78 SETTABLEKS                       R9 R11 K27 ["markNotificationRead"]
       80 SETTABLEKS                       R10 R11 K28 ["markAllNotificationsRead"]
       82 RETURN                           R11 1
