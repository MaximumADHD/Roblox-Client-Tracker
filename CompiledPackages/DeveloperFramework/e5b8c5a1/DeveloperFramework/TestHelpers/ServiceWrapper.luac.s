PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockAnalyticsService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockAssetManagerService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockCalloutService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockChangeHistoryService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockCoreGui"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockHttpService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockInsertService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockMarketplaceService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockMaterialGenerationService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockMaterialService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockMemStorageService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockSelectionService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockStudioService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockToastNotificationService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockStudioDeviceEmulatorService"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R2 K15 [{"AnalyticsService", "AssetManagerService", "CalloutService", "ChangeHistoryService", "CoreGui", "HttpService", "InsertService", "MarketplaceService", "MaterialGenerationService", "MaterialService", "MemStorageService", "Selection", "StudioService", "ToastNotificationService", "StudioDeviceEmulatorService"}]
        1 DUPCLOSURE                       R3 K16 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R3 R2 K0 ["AnalyticsService"]
        5 DUPCLOSURE                       R3 K17 [PROTO_1]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R3 R2 K1 ["AssetManagerService"]
        9 DUPCLOSURE                       R3 K18 [PROTO_2]
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R3 R2 K2 ["CalloutService"]
       13 DUPCLOSURE                       R3 K19 [PROTO_3]
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R3 R2 K3 ["ChangeHistoryService"]
       17 DUPCLOSURE                       R3 K20 [PROTO_4]
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R3 R2 K4 ["CoreGui"]
       21 DUPCLOSURE                       R3 K21 [PROTO_5]
       22 CAPTURE                          UPVAL U0
       23 SETTABLEKS                       R3 R2 K5 ["HttpService"]
       25 DUPCLOSURE                       R3 K22 [PROTO_6]
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R3 R2 K6 ["InsertService"]
       29 DUPCLOSURE                       R3 K23 [PROTO_7]
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R3 R2 K7 ["MarketplaceService"]
       33 DUPCLOSURE                       R3 K24 [PROTO_8]
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R3 R2 K8 ["MaterialGenerationService"]
       37 NEWCLOSURE                       R3 P9
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K9 ["MaterialService"]
       42 DUPCLOSURE                       R3 K25 [PROTO_10]
       43 CAPTURE                          UPVAL U0
       44 SETTABLEKS                       R3 R2 K10 ["MemStorageService"]
       46 DUPCLOSURE                       R3 K26 [PROTO_11]
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R3 R2 K11 ["Selection"]
       50 DUPCLOSURE                       R3 K27 [PROTO_12]
       51 CAPTURE                          UPVAL U0
       52 SETTABLEKS                       R3 R2 K12 ["StudioService"]
       54 DUPCLOSURE                       R3 K28 [PROTO_13]
       55 CAPTURE                          UPVAL U0
       56 SETTABLEKS                       R3 R2 K13 ["ToastNotificationService"]
       58 DUPCLOSURE                       R3 K29 [PROTO_14]
       59 CAPTURE                          UPVAL U0
       60 SETTABLEKS                       R3 R2 K14 ["StudioDeviceEmulatorService"]
       62 GETTABLE                         R3 R2 R0
       63 CALL                             R3 0 -1
       64 RETURN                           R3 -1

PROTO_16:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETIMPORT                        R4 K2 [Instance.new]
        5 LOADK                            R5 K3 ["Folder"]
        6 CALL                             R4 1 1
        7 MOVE                             R2 R4
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 DUPTABLE                         R4 K7 [{"_mock", "_instance", "_service"}]
       14 SETTABLEKS                       R3 R4 K4 ["_mock"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 MOVE                             R5 R2
       18 JUMP                             ; [+6]
       19 GETIMPORT                        R5 K9 [game]
       21 MOVE                             R7 R0
       22 NAMECALL                         R5 R5 K10 ["GetService"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K5 ["_instance"]
       27 JUMPIF                           R1 ; [+5]
       28 GETUPVAL                         R6 1
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+4]
       31 JUMPIFNOTEQKS                    R0 K11 ["AssetManagerService"] ; [+3]
       33 MOVE                             R5 R3
       34 JUMP                             ; [+6]
       35 GETIMPORT                        R5 K9 [game]
       37 MOVE                             R7 R0
       38 NAMECALL                         R5 R5 K10 ["GetService"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K6 ["_service"]
       43 GETUPVAL                         R7 2
       44 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       46 MOVE                             R6 R4
       47 GETIMPORT                        R5 K13 [setmetatable]
       49 CALL                             R5 2 1
       50 RETURN                           R5 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["_mock"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_mock"]
       11 GETTABLEKS                       R1 R0 K2 ["_instance"]
       13 NAMECALL                         R1 R1 K1 ["Destroy"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K2 ["_instance"]
       19 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_instance"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_service"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Instances"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["isCli"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 8 0
       21 SETTABLEKS                       R2 R2 K7 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_15]
       24 CAPTURE                          VAL R0
       25 DUPCLOSURE                       R4 K9 [PROTO_16]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R2 K10 ["new"]
       31 DUPCLOSURE                       R4 K11 [PROTO_17]
       32 SETTABLEKS                       R4 R2 K12 ["destroy"]
       34 DUPCLOSURE                       R4 K13 [PROTO_18]
       35 SETTABLEKS                       R4 R2 K14 ["asInstance"]
       37 DUPCLOSURE                       R4 K15 [PROTO_19]
       38 SETTABLEKS                       R4 R2 K16 ["asService"]
       40 RETURN                           R2 1
