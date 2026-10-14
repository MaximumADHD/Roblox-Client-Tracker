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
       18 GETIMPORT                        R4 K8 [script]
       20 LOADK                            R6 K9 ["Plugin"]
       21 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       23 CALL                             R4 2 1
       24 MOVE                             R5 R4
       25 JUMPIFNOT                        R5 ; [+4]
       26 LOADK                            R7 K11 ["PlaceSessionContextBridge"]
       27 NAMECALL                         R5 R4 K12 ["GetPluginComponent"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+12]
       31 GETIMPORT                        R6 K14 [pcall]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R5
       35 CALL                             R6 1 2
       36 MOVE                             R8 R6
       37 JUMPIFNOT                        R8 ; [+4]
       38 JUMPIFEQKB                       R7 TRUE ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 MOVE                             R3 R8
       43 JUMPIFNOT                        R3 ; [+15]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K15 ["Dictionary"]
       47 GETTABLEKS                       R6 R6 K16 ["join"]
       49 MOVE                             R7 R2
       50 DUPTABLE                         R8 K18 [{"placeId"}]
       51 GETIMPORT                        R9 K20 [game]
       53 GETTABLEKS                       R9 R9 K21 ["PlaceId"]
       55 SETTABLEKS                       R9 R8 K17 ["placeId"]
       57 CALL                             R6 2 1
       58 MOVE                             R2 R6
       59 GETUPVAL                         R6 1
       60 LOADK                            R8 K22 ["studio"]
       61 LOADK                            R9 K23 ["TeamCreate"]
       62 MOVE                             R10 R1
       63 MOVE                             R11 R2
       64 NAMECALL                         R6 R6 K24 ["SendEventDeferred"]
       66 CALL                             R6 5 0
       67 RETURN                           R0 0

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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K1 ["join"]
        9 MOVE                             R3 R1
       10 DUPTABLE                         R4 K6 [{"userId", "studioSid", "placeId", "universeId"}]
       11 GETUPVAL                         R5 2
       12 NAMECALL                         R5 R5 K7 ["GetUserId"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K2 ["userId"]
       17 GETUPVAL                         R5 3
       18 NAMECALL                         R5 R5 K8 ["GetSessionId"]
       20 CALL                             R5 1 1
       21 SETTABLEKS                       R5 R4 K3 ["studioSid"]
       23 GETIMPORT                        R5 K10 [game]
       25 GETTABLEKS                       R5 R5 K11 ["PlaceId"]
       27 SETTABLEKS                       R5 R4 K4 ["placeId"]
       29 GETIMPORT                        R5 K10 [game]
       31 GETTABLEKS                       R5 R5 K12 ["GameId"]
       33 SETTABLEKS                       R5 R4 K5 ["universeId"]
       35 CALL                             R2 2 1
       36 GETUPVAL                         R3 3
       37 LOADK                            R5 K13 ["studio"]
       38 LOADK                            R6 K14 ["FirstPublishFlow"]
       39 MOVE                             R7 R0
       40 MOVE                             R8 R2
       41 NAMECALL                         R3 R3 K15 ["SendEventDeferred"]
       43 CALL                             R3 5 0
       44 RETURN                           R0 0

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
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R2 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Flags"]
       36 GETTABLEKS                       R6 R6 K14 ["getEngineFeatureStudioUnifiedPublishAction"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R6 R4 K16 ["reportSaveCancel"]
       45 DUPCLOSURE                       R6 K17 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R6 R4 K18 ["reportDataSharingToEventIngest"]
       50 DUPCLOSURE                       R6 K19 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R6 R4 K20 ["sendEventDeferred"]
       56 DUPCLOSURE                       R6 K21 [PROTO_4]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R6 R4 K22 ["reportFirstPublishFlow"]
       63 RETURN                           R4 1
