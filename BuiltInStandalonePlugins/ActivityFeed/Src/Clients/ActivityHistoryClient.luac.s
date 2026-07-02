PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K0 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K2 [pairs]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 SETTABLE                         R7 R1 R6
       13 FORGLOOP                         R3 2 ; [-2]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 1
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 2
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R3 K0 ["JSONDecode"]
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K2 [pairs]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 SETTABLE                         R8 R2 R7
       14 FORGLOOP                         R4 2 ; [-2]
       16 MOVE                             R0 R2
       17 SETUPVAL                         R0 0
       18 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 LENGTH                           R1 R0
        9 LOADN                            R2 0
       10 JUMPIFNOTLE                      R1 R2 ; [+4]
       12 NEWTABLE                         R1 0 0
       14 RETURN                           R1 1
       15 NEWTABLE                         R1 0 0
       17 GETIMPORT                        R2 K4 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          REF R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CALL                             R2 1 2
       24 JUMPIF                           R2 ; [+17]
       25 GETIMPORT                        R4 K6 [print]
       27 LOADK                            R6 K7 ["error decoding json "]
       28 FASTCALL1                        TOSTRING R0 ; [+3]
       29 MOVE                             R11 R0
       30 GETIMPORT                        R10 K9 [tostring]
       32 CALL                             R10 1 1
       33 MOVE                             R7 R10
       34 LOADK                            R8 K10 [": "]
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R10 R3
       37 GETIMPORT                        R9 K9 [tostring]
       39 CALL                             R9 1 1
       40 CONCAT                           R5 R6 R9
       41 CALL                             R4 1 0
       42 CLOSEUPVALS                      R1
       43 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["fetchActivityHistory error "]
        3 GETTABLEKS                       R5 R0 K3 ["responseCode"]
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K5 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 LOADN                            R2 200
        3 JUMPIFNOTLE                      R2 R1 ; [+14]
        5 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        7 LOADN                            R2 300
        8 JUMPIFNOTLT                      R1 R2 ; [+9]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R3 R0 K1 ["responseBody"]
       13 NAMECALL                         R1 R1 K2 ["JSONDecode"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K1 ["responseBody"]
       18 GETIMPORT                        R1 K4 [pairs]
       20 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       22 GETTABLEKS                       R2 R2 K5 ["events"]
       24 CALL                             R1 1 3
       25 FORGPREP_NEXT                    R1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R7 R5 K6 ["metaData"]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K6 ["metaData"]
       32 FORGLOOP                         R1 2 ; [-7]
       34 GETUPVAL                         R1 2
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 DUPTABLE                         R6 K5 [{[1], ["clientType"] = 0, ["universeId"], ["reverseOrder"]}]
        4 GETUPVAL                         R7 0
        5 SETTABLEKS                       R7 R6 K0 ["entryCount"]
        7 SETTABLEKS                       R1 R6 K3 ["universeId"]
        9 SETTABLEKS                       R4 R6 K4 ["reverseOrder"]
       11 JUMPIFEQKNIL                     R1 ; [+4]
       13 LOADN                            R7 0
       14 JUMPIFNOTLE                      R1 R7 ; [+2]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R2 ; [+2]
       18 SETTABLEKS                       R2 R6 K6 ["cursor"]
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETIMPORT                        R7 K9 [DateTime.fromUnixTimestampMillis]
       23 MOVE                             R8 R3
       24 CALL                             R7 1 1
       25 NAMECALL                         R7 R7 K10 ["ToIsoDate"]
       27 CALL                             R7 1 1
       28 SETTABLEKS                       R7 R6 K11 ["startDate"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K12 ["composeUrl"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K13 ["APIS_URL"]
       36 LOADK                            R9 K14 ["activity-feed-api/v1/history"]
       37 MOVE                             R10 R6
       38 CALL                             R7 3 1
       39 DUPCLOSURE                       R8 K15 [PROTO_3]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R5
       44 GETUPVAL                         R10 4
       45 GETUPVAL                         R12 4
       46 MOVE                             R14 R7
       47 NAMECALL                         R12 R12 K16 ["get"]
       49 CALL                             R12 2 -1
       50 NAMECALL                         R10 R10 K17 ["handleRetry"]
       52 CALL                             R10 -1 1
       53 DUPCLOSURE                       R12 K18 [PROTO_5]
       54 NAMECALL                         R10 R10 K19 ["catch"]
       56 CALL                             R10 2 1
       57 MOVE                             R12 R9
       58 MOVE                             R13 R8
       59 NAMECALL                         R10 R10 K20 ["andThen"]
       61 CALL                             R10 3 0
       62 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 DUPTABLE                         R2 K9 [{"id", "eventType", "userId", "universeId", "placeId", "resourceId", "metaData", "createdUnixTimeMs"}]
        6 GETTABLEKS                       R3 R1 K10 ["Id"]
        8 JUMPIF                           R3 ; [+5]
        9 GETUPVAL                         R3 0
       10 LOADB                            R5 0
       11 NAMECALL                         R3 R3 K11 ["GenerateGUID"]
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K1 ["id"]
       16 GETTABLEKS                       R3 R1 K12 ["EventType"]
       18 SETTABLEKS                       R3 R2 K2 ["eventType"]
       20 GETTABLEKS                       R3 R1 K13 ["UserId"]
       22 SETTABLEKS                       R3 R2 K3 ["userId"]
       24 GETTABLEKS                       R3 R1 K14 ["UniverseId"]
       26 SETTABLEKS                       R3 R2 K4 ["universeId"]
       28 GETTABLEKS                       R3 R1 K15 ["PlaceId"]
       30 SETTABLEKS                       R3 R2 K5 ["placeId"]
       32 GETTABLEKS                       R3 R1 K16 ["ResourceId"]
       34 SETTABLEKS                       R3 R2 K6 ["resourceId"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R4 R1 K17 ["MetaData"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K7 ["metaData"]
       42 GETTABLEKS                       R3 R1 K18 ["CreatedUnixTimeMs"]
       44 SETTABLEKS                       R3 R2 K8 ["createdUnixTimeMs"]
       46 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SubscribeEventNotificationsAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["UnsubscribeEventNotificationsAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K2 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKN                       R0 K0 [0] ; [+7]
        6 GETUPVAL                         R0 1
        7 JUMPIFEQKNIL                     R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K1 ["getActivityHistoryManager"]
       16 CALL                             R0 0 1
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K3 [pcall]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CALL                             R1 1 1
       26 JUMPIF                           R1 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R2 R0 K4 ["EventNotificationReceived"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R2 R2 K5 ["connect"]
       35 CALL                             R2 2 1
       36 NEWCLOSURE                       R3 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R2
       40 RETURN                           R3 1

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Players"]
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R0 R0 K3 ["GetNameFromUserIdAsync"]
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R2 K0 [""]
        1 GETIMPORT                        R3 K2 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U0
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+5]
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R2
       11 CALL                             R5 2 0
       12 JUMP                             ; [+3]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R4
       15 CALL                             R5 1 0
       16 CLOSEUPVALS                      R2
       17 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+4]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+4]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 GETIMPORT                        R4 K1 [pairs]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 ADDK                             R3 R3 K2 [1]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["new"]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R8
       14 CALL                             R9 1 1
       15 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       17 MOVE                             R11 R2
       18 MOVE                             R12 R9
       19 GETIMPORT                        R10 K6 [table.insert]
       21 CALL                             R10 2 0
       22 FORGLOOP                         R4 2 ; [-15]
       24 NEWTABLE                         R4 0 0
       26 LOADN                            R5 0
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          REF R5
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 GETIMPORT                        R7 K1 [pairs]
       34 MOVE                             R8 R2
       35 CALL                             R7 1 3
       36 FORGPREP_NEXT                    R7
       37 NEWCLOSURE                       R14 P2
       38 CAPTURE                          REF R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 NAMECALL                         R12 R11 K7 ["andThen"]
       44 CALL                             R12 2 1
       45 NEWCLOSURE                       R14 P3
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 NAMECALL                         R12 R12 K8 ["catch"]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R7 2 ; [-17]
       55 CLOSEUPVALS                      R3
       56 RETURN                           R0 0

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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["SharedTypes"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K8 ["Util"]
       27 GETTABLEKS                       R3 R3 K10 ["Promise"]
       29 GETTABLEKS                       R4 R1 K11 ["RobloxAPI"]
       31 GETTABLEKS                       R4 R4 K12 ["Url"]
       33 GETTABLEKS                       R4 R4 K13 ["new"]
       35 CALL                             R4 0 1
       36 GETTABLEKS                       R5 R1 K14 ["Http"]
       38 GETTABLEKS                       R5 R5 K15 ["Networking"]
       40 GETTABLEKS                       R6 R5 K13 ["new"]
       42 DUPTABLE                         R7 K20 [{["isInternal"] = True, ["loggingLevel"] = 0}]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K22 [game]
       46 LOADK                            R9 K23 ["ActivityFeedEndpointFetchCount"]
       47 NAMECALL                         R7 R7 K24 ["GetFastInt"]
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K22 [game]
       52 LOADK                            R10 K25 ["HttpService"]
       53 NAMECALL                         R8 R8 K26 ["GetService"]
       55 CALL                             R8 2 1
       56 DUPCLOSURE                       R9 K27 [PROTO_0]
       57 CAPTURE                          VAL R8
       58 DUPCLOSURE                       R10 K28 [PROTO_2]
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R11 K29 [PROTO_6]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R12 K30 [PROTO_7]
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R10
       69 DUPCLOSURE                       R13 K31 [PROTO_13]
       70 CAPTURE                          VAL R12
       71 DUPCLOSURE                       R14 K32 [PROTO_19]
       72 CAPTURE                          VAL R3
       73 DUPTABLE                         R15 K36 [{"fetchActivityHistory", "activityFeedRTEEffect", "fetchUsernames"}]
       74 SETTABLEKS                       R11 R15 K33 ["fetchActivityHistory"]
       76 SETTABLEKS                       R13 R15 K34 ["activityFeedRTEEffect"]
       78 SETTABLEKS                       R14 R15 K35 ["fetchUsernames"]
       80 RETURN                           R15 1
