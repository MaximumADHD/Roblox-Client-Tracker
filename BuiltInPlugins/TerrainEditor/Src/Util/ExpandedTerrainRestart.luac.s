PROTO_0:
        0 LOADK                            R3 K0 ["PlaceSessionContextBridge"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NAMECALL                         R2 R1 K2 ["GetPlaceIsPersistedToCloudAsync"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADK                            R3 K3 ["Cloud"]
        9 RETURN                           R3 1
       10 LOADK                            R3 K4 ["Local"]
       11 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R2 R1 K2 ["ActivateAsync"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["PlaceSessionContextBridge"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NAMECALL                         R2 R1 K2 ["GetPlaceIsPersistedToCloudAsync"]
        6 CALL                             R2 1 1
        7 NAMECALL                         R3 R1 K3 ["GetPlaceIdAsync"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R4 R1 K4 ["GetUniverseIdAsync"]
       12 CALL                             R4 1 1
       13 MOVE                             R6 R2
       14 JUMPIFNOT                        R6 ; [+3]
       15 MOVE                             R6 R3
       16 JUMPIFNOT                        R6 ; [+1]
       17 MOVE                             R6 R4
       18 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       20 LOADK                            R7 K5 ["Current place is not persisted to cloud"]
       21 GETIMPORT                        R5 K7 [assert]
       23 CALL                             R5 2 0
       24 LOADK                            R7 K8 ["PublishMediator"]
       25 NAMECALL                         R5 R0 K1 ["GetPluginComponent"]
       27 CALL                             R5 2 1
       28 DUPTABLE                         R8 K14 [{["ForceSave"] = True, ["PersistToEdgeIfTeamCreate"] = True, ["PublishType"], ["WaitUntilCanPublish"] = True}]
       29 GETIMPORT                        R9 K18 [Enum.PlacePublishType.Save]
       31 SETTABLEKS                       R9 R8 K12 ["PublishType"]
       33 NAMECALL                         R6 R5 K19 ["SavePlaceAsync"]
       35 CALL                             R6 2 0
       36 LOADK                            R8 K20 ["PlaceOpener"]
       37 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
       39 CALL                             R6 2 1
       40 DUPTABLE                         R9 K22 [{"PlaceLaunchInfo"}]
       41 DUPTABLE                         R10 K25 [{"PlaceId", "UniverseId"}]
       42 SETTABLEKS                       R3 R10 K23 ["PlaceId"]
       44 SETTABLEKS                       R4 R10 K24 ["UniverseId"]
       46 SETTABLEKS                       R10 R9 K21 ["PlaceLaunchInfo"]
       48 LOADB                            R10 1
       49 NAMECALL                         R7 R6 K26 ["ReplacePlaceAsync"]
       51 CALL                             R7 3 0
       52 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["Cloud"] ; [+5]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 LOADK                            R4 K1 ["Actions"]
        7 NAMECALL                         R2 R0 K2 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R3 R2 K3 ["ActivateAsync"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETTABLEKS                       R2 R2 K10 ["fromAction"]
       20 LOADK                            R3 K11 ["PlaceManagement"]
       21 LOADK                            R4 K12 ["Close"]
       22 CALL                             R2 2 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K13 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K14 ["getPlaceKindAsync"]
       28 DUPCLOSURE                       R4 K15 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R5 K16 [PROTO_2]
       31 DUPCLOSURE                       R6 K17 [PROTO_3]
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R6 R3 K18 ["restartAsync"]
       36 RETURN                           R3 1
