PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPlaceIsPersistedToCloudAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["FilePublishPlaceAsCancel"]
        2 JUMP                             ; [+1]
        3 LOADK                            R1 K1 ["FileSavePlaceAsCancel"]
        4 DUPTABLE                         R2 K4 [{"userId", "studioSid"}]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K5 ["GetUserId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K2 ["userId"]
       11 GETUPVAL                         R3 1
       12 NAMECALL                         R3 R3 K6 ["GetSessionId"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K3 ["studioSid"]
       17 LOADB                            R3 0
       18 GETUPVAL                         R4 2
       19 JUMPIFNOT                        R4 ; [+26]
       20 GETIMPORT                        R4 K8 [script]
       22 LOADK                            R6 K9 ["Plugin"]
       23 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       25 CALL                             R4 2 1
       26 MOVE                             R5 R4
       27 JUMPIFNOT                        R5 ; [+4]
       28 LOADK                            R7 K11 ["PlaceSessionContextBridge"]
       29 NAMECALL                         R5 R4 K12 ["GetPluginComponent"]
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+18]
       33 GETIMPORT                        R6 K14 [pcall]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          VAL R5
       37 CALL                             R6 1 2
       38 MOVE                             R8 R6
       39 JUMPIFNOT                        R8 ; [+4]
       40 JUMPIFEQKB                       R7 TRUE ; [+2]
       42 LOADB                            R8 0 +1
       43 LOADB                            R8 1
       44 MOVE                             R3 R8
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R4 0
       47 NAMECALL                         R4 R4 K15 ["GetPlaceIsPersistedToCloud"]
       49 CALL                             R4 1 1
       50 MOVE                             R3 R4
       51 JUMPIFNOT                        R3 ; [+15]
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K16 ["Dictionary"]
       55 GETTABLEKS                       R4 R4 K17 ["join"]
       57 MOVE                             R5 R2
       58 DUPTABLE                         R6 K19 [{"placeId"}]
       59 GETIMPORT                        R7 K21 [game]
       61 GETTABLEKS                       R7 R7 K22 ["PlaceId"]
       63 SETTABLEKS                       R7 R6 K18 ["placeId"]
       65 CALL                             R4 2 1
       66 MOVE                             R2 R4
       67 GETUPVAL                         R4 1
       68 LOADK                            R6 K23 ["studio"]
       69 LOADK                            R7 K24 ["TeamCreate"]
       70 MOVE                             R8 R1
       71 MOVE                             R9 R2
       72 NAMECALL                         R4 R4 K25 ["SendEventDeferred"]
       74 CALL                             R4 5 0
       75 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R4 K5 [{"userId", "dataSharingFetchState", "dataSharingEnabled", "universeId", "groupId"}]
        1 GETUPVAL                         R5 0
        2 NAMECALL                         R5 R5 K6 ["GetUserId"]
        4 CALL                             R5 1 1
        5 SETTABLEKS                       R5 R4 K0 ["userId"]
        7 SETTABLEKS                       R0 R4 K1 ["dataSharingFetchState"]
        9 SETTABLEKS                       R1 R4 K2 ["dataSharingEnabled"]
       11 SETTABLEKS                       R2 R4 K3 ["universeId"]
       13 SETTABLEKS                       R3 R4 K4 ["groupId"]
       15 GETUPVAL                         R5 1
       16 LOADK                            R7 K7 ["studio"]
       17 LOADK                            R8 K8 ["CreateNewGame"]
       18 LOADK                            R9 K9 ["DataSharingUniverseCreation"]
       19 MOVE                             R10 R4
       20 NAMECALL                         R5 R5 K10 ["SendEventDeferred"]
       22 CALL                             R5 5 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R1
        6 DUPTABLE                         R4 K5 [{"userId", "studioSid", "placeId"}]
        7 GETUPVAL                         R5 1
        8 NAMECALL                         R5 R5 K6 ["GetUserId"]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K2 ["userId"]
       13 GETUPVAL                         R5 2
       14 NAMECALL                         R5 R5 K7 ["GetSessionId"]
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R5 R4 K3 ["studioSid"]
       19 GETIMPORT                        R5 K9 [game]
       21 GETTABLEKS                       R5 R5 K10 ["PlaceId"]
       23 SETTABLEKS                       R5 R4 K4 ["placeId"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 LOADK                            R5 K11 ["studio"]
       28 LOADK                            R6 K12 ["PublishSuccessful"]
       29 MOVE                             R7 R0
       30 MOVE                             R8 R2
       31 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       33 CALL                             R3 5 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 4 0
       30 GETIMPORT                        R5 K1 [game]
       32 LOADK                            R7 K12 ["AddGetPlaceIsPersistedToCloudPscBridge"]
       33 NAMECALL                         R5 R5 K13 ["GetEngineFeature"]
       35 CALL                             R5 2 1
       36 DUPCLOSURE                       R6 K14 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R6 R4 K15 ["reportSaveCancel"]
       43 DUPCLOSURE                       R6 K16 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R6 R4 K17 ["reportDataSharingToEventIngest"]
       48 DUPCLOSURE                       R6 K18 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R6 R4 K19 ["sendEventDeferred"]
       54 RETURN                           R4 1
