PROTO_0:
        0 DUPTABLE                         R2 K3 [{"_mock", "_store", "api"}]
        1 SETTABLEKS                       R1 R2 K0 ["_mock"]
        3 SETTABLEKS                       R0 R2 K1 ["_store"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["new"]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K2 ["api"]
       11 GETUPVAL                         R5 1
       12 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K6 [setmetatable]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R4 ; [+4]
        3 MOVE                             R4 R2
        4 DUPTABLE                         R5 K20 [{["id"] = 0, ["name"] = "string", ["description"] = "string", ["isArchived"] = True, ["rootPlaceId"] = 0, ["isActive"] = True, ["privacyType"] = "string", ["creatorType"] = "group", ["creatorTargetId"] = 2, ["creatorName"] = "BadgeBuds", ["created"] = "2021-06-23T01:07:02.659Z", ["updated"] = "2021-06-23T01:07:02.659Z"}]
        5 CALL                             R4 1 0
        6 RETURN                           R0 0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 NAMECALL                         R4 R0 K21 ["getUniverseInfoImpl"]
       12 CALL                             R4 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to get universe id"]
        6 GETUPVAL                         R3 1
        7 LOADK                            R4 K3 ["with error"]
        8 MOVE                             R5 R0
        9 CALL                             R1 4 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["api"]
        2 GETTABLEKS                       R4 R4 K1 ["Develop"]
        4 GETTABLEKS                       R4 R4 K2 ["V1"]
        6 GETTABLEKS                       R4 R4 K3 ["Universes"]
        8 GETTABLEKS                       R4 R4 K4 ["get"]
       10 NEWTABLE                         R5 0 0
       12 MOVE                             R6 R4
       13 MOVE                             R7 R1
       14 CALL                             R6 1 1
       15 NAMECALL                         R6 R6 K5 ["makeRequest"]
       17 CALL                             R6 1 1
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R2
       20 NEWCLOSURE                       R9 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R6 R6 K6 ["andThen"]
       26 CALL                             R6 3 0
       27 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 MOVE                             R3 R1
        4 NEWTABLE                         R4 0 3
        6 DUPTABLE                         R5 K5 [{["name"] = "Test", ["id"] = 1}]
        7 DUPTABLE                         R6 K8 [{["name"] = "BadgeBuds", ["id"] = 2}]
        8 DUPTABLE                         R7 K11 [{["name"] = "MyGroup", ["id"] = 3}]
        9 SETLIST                          R4 R5 3 [1]
       11 CALL                             R3 1 0
       12 RETURN                           R0 0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R0 K12 ["getManagedGroupsImpl"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 GETTABLEKS                       R2 R2 K1 ["groups"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to fetch groups with edit permission"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["api"]
        2 GETTABLEKS                       R3 R3 K1 ["APIS"]
        4 GETTABLEKS                       R3 R3 K2 ["CreatorHomeApi"]
        6 GETTABLEKS                       R3 R3 K3 ["V1"]
        8 GETTABLEKS                       R3 R3 K4 ["groups"]
       10 LOADK                            R4 K5 ["StudioAssetImporter"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R4 R3 K6 ["makeRequest"]
       14 CALL                             R4 1 1
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R7 P1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R4 R4 K7 ["andThen"]
       22 CALL                             R4 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R5 ; [+4]
        3 MOVE                             R5 R3
        4 DUPTABLE                         R6 K9 [{["duration"] = "month", ["usage"] = 1, ["capacity"] = 10, ["expirationTime"] = "0"}]
        5 CALL                             R5 1 0
        6 RETURN                           R0 0
        7 MOVE                             R7 R1
        8 MOVE                             R8 R2
        9 MOVE                             R9 R3
       10 MOVE                             R10 R4
       11 NAMECALL                         R5 R0 K10 ["fetchUploadQuotasImpl"]
       13 CALL                             R5 5 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 GETTABLEKS                       R3 R3 K1 ["quotas"]
        5 GETTABLEN                        R2 R3 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to get asset quota data"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R5 R0 K0 ["api"]
        2 GETTABLEKS                       R5 R5 K1 ["APIS"]
        4 GETTABLEKS                       R5 R5 K2 ["Publish"]
        6 GETTABLEKS                       R5 R5 K3 ["V1"]
        8 GETTABLEKS                       R5 R5 K4 ["assetQuotas"]
       10 MOVE                             R6 R5
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 CALL                             R6 2 1
       14 NAMECALL                         R6 R6 K5 ["makeRequest"]
       16 CALL                             R6 1 1
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R9 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R4
       22 NAMECALL                         R6 R6 K6 ["andThen"]
       24 CALL                             R6 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETTABLEKS                       R4 R1 K10 ["RobloxAPI"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K11 ["Src"]
       24 GETTABLEKS                       R6 R6 K12 ["Types"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K11 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Flags"]
       33 GETTABLEKS                       R7 R7 K14 ["getFFlagDebugAssetImportPlugin"]
       35 CALL                             R6 1 1
       36 LOADK                            R9 K15 ["Networking"]
       37 NAMECALL                         R7 R3 K16 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K17 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R7
       43 SETTABLEKS                       R8 R7 K18 ["new"]
       45 DUPCLOSURE                       R8 K19 [PROTO_1]
       46 SETTABLEKS                       R8 R7 K20 ["destroy"]
       48 DUPCLOSURE                       R8 K21 [PROTO_2]
       49 SETTABLEKS                       R8 R7 K22 ["getUniverseInfo"]
       51 DUPCLOSURE                       R8 K23 [PROTO_5]
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R8 R7 K24 ["getUniverseInfoImpl"]
       55 DUPCLOSURE                       R8 K25 [PROTO_6]
       56 SETTABLEKS                       R8 R7 K26 ["getManagedGroups"]
       58 DUPCLOSURE                       R8 K27 [PROTO_9]
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R8 R7 K28 ["getManagedGroupsImpl"]
       62 DUPCLOSURE                       R8 K29 [PROTO_10]
       63 SETTABLEKS                       R8 R7 K30 ["fetchUploadQuotas"]
       65 DUPCLOSURE                       R8 K31 [PROTO_13]
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R8 R7 K32 ["fetchUploadQuotasImpl"]
       69 RETURN                           R7 1
