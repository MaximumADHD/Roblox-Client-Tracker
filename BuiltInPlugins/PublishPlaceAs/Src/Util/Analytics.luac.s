PROTO_0:
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
       17 GETUPVAL                         R3 0
       18 NAMECALL                         R3 R3 K7 ["GetPlaceIsPersistedToCloud"]
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+15]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K8 ["Dictionary"]
       25 GETTABLEKS                       R3 R4 K9 ["join"]
       27 MOVE                             R4 R2
       28 DUPTABLE                         R5 K11 [{"placeId"}]
       29 GETIMPORT                        R7 K13 [game]
       31 GETTABLEKS                       R6 R7 K14 ["PlaceId"]
       33 SETTABLEKS                       R6 R5 K10 ["placeId"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 1
       38 LOADK                            R5 K15 ["studio"]
       39 LOADK                            R6 K16 ["TeamCreate"]
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 NAMECALL                         R3 R3 K17 ["SendEventDeferred"]
       44 CALL                             R3 5 0
       45 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
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
       19 GETIMPORT                        R6 K9 [game]
       21 GETTABLEKS                       R5 R6 K10 ["PlaceId"]
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
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Cryo"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 4 0
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K13 ["reportSaveCancel"]
       36 DUPCLOSURE                       R5 K14 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R5 R4 K15 ["reportDataSharingToEventIngest"]
       41 DUPCLOSURE                       R5 K16 [PROTO_2]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R5 R4 K17 ["sendEventDeferred"]
       47 RETURN                           R4 1
