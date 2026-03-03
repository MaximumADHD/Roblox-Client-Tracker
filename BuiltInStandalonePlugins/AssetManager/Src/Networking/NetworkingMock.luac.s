PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 LOADB                            R3 1
        4 CALL                             R1 2 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["UserName"]
       10 LOADB                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K1 ["FetchUsername"]
        8 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchUniverseInfoAsync error for universe %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K14 [{"created", "creatorName", "creatorTargetId", "creatorType", "description", "id", "isActive", "isArchived", "name", "privacyType", "rootPlaceId", "updated"}]
       12 LOADK                            R3 K15 [""]
       13 SETTABLEKS                       R3 R2 K2 ["created"]
       15 LOADK                            R3 K16 ["TestUser"]
       16 SETTABLEKS                       R3 R2 K3 ["creatorName"]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["creatorTargetId"]
       21 GETIMPORT                        R4 K20 [Enum.CreatorType.User]
       23 FASTCALL1                        TOSTRING R4 ; [+2]
       24 GETIMPORT                        R3 K22 [tostring]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K5 ["creatorType"]
       29 LOADK                            R3 K15 [""]
       30 SETTABLEKS                       R3 R2 K6 ["description"]
       32 LOADN                            R3 1
       33 SETTABLEKS                       R3 R2 K7 ["id"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K8 ["isActive"]
       38 LOADB                            R3 0
       39 SETTABLEKS                       R3 R2 K9 ["isArchived"]
       41 LOADK                            R3 K23 ["TestGame"]
       42 SETTABLEKS                       R3 R2 K10 ["name"]
       44 LOADK                            R3 K15 [""]
       45 SETTABLEKS                       R3 R2 K11 ["privacyType"]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K12 ["rootPlaceId"]
       50 LOADK                            R3 K15 [""]
       51 SETTABLEKS                       R3 R2 K13 ["updated"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchUniverseInfo"]
        9 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchGroupsAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["Groups"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["FetchGroups"]
        9 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchGroupsAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["GroupsPayload"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["FetchGroups"]
        9 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R7
        1 JUMPIFNOT                        R6 ; [+10]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R8 R9 K0 ["generate"]
        5 MOVE                             R9 R4
        6 JUMPIF                           R9 ; [+2]
        7 GETUPVAL                         R9 1
        8 CALL                             R9 0 1
        9 CALL                             R8 1 1
       10 MOVE                             R7 R8
       11 JUMP                             ; [+36]
       12 GETTABLEKS                       R9 R2 K1 ["ScopeInfo"]
       14 GETTABLEKS                       R8 R9 K2 ["Type"]
       16 GETUPVAL                         R11 2
       17 GETTABLEKS                       R10 R11 K3 ["ScopeType"]
       19 GETTABLEKS                       R9 R10 K4 ["Places"]
       21 JUMPIFNOTEQ                      R8 R9 ; [+14]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K4 ["Places"]
       26 GETTABLEKS                       R11 R2 K1 ["ScopeInfo"]
       28 GETTABLEKS                       R10 R11 K5 ["Id"]
       30 GETTABLE                         R8 R9 R10
       31 JUMPIF                           R8 ; [+2]
       32 NEWTABLE                         R8 0 0
       34 MOVE                             R7 R8
       35 JUMP                             ; [+12]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K6 ["Assets"]
       39 GETTABLEKS                       R11 R2 K1 ["ScopeInfo"]
       41 GETTABLEKS                       R10 R11 K5 ["Id"]
       43 GETTABLE                         R8 R9 R10
       44 JUMPIF                           R8 ; [+2]
       45 NEWTABLE                         R8 0 0
       47 MOVE                             R7 R8
       48 NEWTABLE                         R8 0 0
       50 MOVE                             R9 R7
       51 LOADNIL                          R10
       52 LOADNIL                          R11
       53 FORGPREP                         R9
       54 GETTABLEKS                       R15 R13 K7 ["Creator"]
       56 GETTABLEKS                       R14 R15 K8 ["Name"]
       58 GETTABLEKS                       R15 R13 K7 ["Creator"]
       60 SETTABLE                         R15 R8 R14
       61 FORGLOOP                         R9 2 ; [-8]
       63 LOADN                            R11 1
       64 NAMECALL                         R9 R0 K9 ["Fire"]
       66 CALL                             R9 2 0
       67 MOVE                             R9 R1
       68 MOVE                             R10 R7
       69 MOVE                             R11 R8
       70 LOADNIL                          R12
       71 MOVE                             R13 R5
       72 CALL                             R9 4 0
       73 MOVE                             R9 R3
       74 CALL                             R9 0 0
       75 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test fetchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["_fetchAssetsAsyncImpl"]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 3
       10 GETUPVAL                         R7 4
       11 GETUPVAL                         R9 4
       12 GETTABLEKS                       R8 R9 K2 ["Resolve"]
       14 MOVE                             R9 R1
       15 MOVE                             R10 R3
       16 MOVE                             R11 R2
       17 CALL                             R4 7 0
       18 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["Folders"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["ScopeInfo"]
       11 GETTABLEKS                       R3 R4 K3 ["Id"]
       13 GETTABLE                         R1 R2 R3
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 3
       18 LOADN                            R4 1
       19 NAMECALL                         R2 R2 K4 ["Fire"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 4
       23 MOVE                             R3 R1
       24 NEWTABLE                         R4 0 0
       26 LOADNIL                          R5
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["PageToken"]
       30 CALL                             R2 4 0
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K6 ["Resolve"]
       34 JUMPIFNOT                        R2 ; [+4]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R2 R3 K6 ["Resolve"]
       38 CALL                             R2 0 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R5 R4 K1 ["FetchAssets"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["ResumeAsync"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R5 R4 K2 ["FetchFolders"]
       22 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test searchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["Resolve"]
        7 CALL                             R4 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["_fetchAssetsAsyncImpl"]
       12 GETUPVAL                         R5 3
       13 GETUPVAL                         R6 4
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K1 ["Resolve"]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R3
       20 MOVE                             R11 R2
       21 CALL                             R4 7 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R5 R4 K1 ["SearchAssets"]
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Places"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["UserId"]
        6 GETTABLE                         R4 R5 R6
        7 NEWTABLE                         R5 0 0
        9 MOVE                             R6 R4
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R12 R10 K2 ["Creator"]
       15 GETTABLEKS                       R11 R12 K3 ["Name"]
       17 GETTABLEKS                       R12 R10 K2 ["Creator"]
       19 SETTABLE                         R12 R5 R11
       20 FORGLOOP                         R6 2 ; [-8]
       22 LOADN                            R8 1
       23 NAMECALL                         R6 R0 K4 ["Fire"]
       25 CALL                             R6 2 0
       26 MOVE                             R6 R1
       27 MOVE                             R7 R4
       28 MOVE                             R8 R5
       29 LOADNIL                          R9
       30 MOVE                             R10 R3
       31 JUMPIF                           R10 ; [+3]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R10 R11 K5 ["PageToken"]
       35 CALL                             R6 4 0
       36 GETTABLEKS                       R6 R2 K6 ["Resolve"]
       38 CALL                             R6 0 0
       39 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["Test fetchPlacesAsync error"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Resolve"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["_fetchPlacesImplAsync"]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R1
       16 CALL                             R2 4 0
       17 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R4 R5 K1 ["Type"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
        7 GETTABLEKS                       R5 R6 K3 ["Universe"]
        9 JUMPIFEQ                         R4 R5 ; [+16]
       11 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R4 R5 K1 ["Type"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       18 GETTABLEKS                       R5 R6 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R4 R5 ; [+5]
       22 GETTABLEKS                       R4 R0 K5 ["Resolve"]
       24 CALL                             R4 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K6 ["ResumeAsync"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R4 K7 ["FetchPlaces"]
       37 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R2 1
        1 NEWTABLE                         R3 0 0
        3 RETURN                           R2 2

PROTO_18:
        0 DUPTABLE                         R2 K3 [{"assetId", "errorCode", "code"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 LOADN                            R3 123
        4 SETTABLEKS                       R3 R2 K1 ["errorCode"]
        6 LOADK                            R3 K4 ["MockError"]
        7 SETTABLEKS                       R3 R2 K2 ["code"]
        9 RETURN                           R2 1

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R2 0
        2 LOADB                            R3 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["map"]
        6 GETUPVAL                         R5 2
        7 DUPCLOSURE                       R6 K1 [PROTO_18]
        8 CALL                             R4 2 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          VAL R5
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R7 R6 K1 ["GrantAssetsPermissions"]
        9 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R2 K2 [{"value", "error"}]
        1 DUPTABLE                         R3 K4 [{"status"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K5 ["ApiPermissionStatus"]
        5 GETTABLEKS                       R4 R5 K6 ["UnknownError"]
        7 SETTABLEKS                       R4 R3 K3 ["status"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 DUPTABLE                         R3 K9 [{"code", "message"}]
       12 LOADN                            R4 123
       13 SETTABLEKS                       R4 R3 K7 ["code"]
       15 LOADK                            R4 K10 ["MockError"]
       16 SETTABLEKS                       R4 R3 K8 ["message"]
       18 SETTABLEKS                       R3 R2 K1 ["error"]
       20 RETURN                           R2 1

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["map"]
        6 GETUPVAL                         R4 2
        7 DUPCLOSURE                       R5 K1 [PROTO_21]
        8 CAPTURE                          UPVAL U3
        9 CALL                             R3 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R4
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R6 R5 K1 ["CheckAssetsPermissions"]
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R2 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_25:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["get"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["AvailableImages"]
        7 GETTABLEKS                       R4 R5 K2 ["Placeholder"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R2 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_27:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 GETIMPORT                        R3 K4 [Enum.AssetFetchStatus.Failure]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K0 [""]
        9 GETIMPORT                        R3 K6 [Enum.AssetFetchStatus.Success]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 SETTABLEKS                       R4 R3 K1 ["GetThumbnailForItem"]
        7 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchAssetInfoAsync error for asset %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 DUPTABLE                         R1 K14 [{"Path", "AssetId", "AssetType", "DisplayName", "Description", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived"}]
       11 LOADK                            R3 K15 ["users/%*/creator-inventory-items/asset-%*"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K16 ["Id"]
       15 GETUPVAL                         R6 1
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R2 R1 K2 ["Path"]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K3 ["AssetId"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K4 ["AssetType"]
       28 GETTABLEKS                       R2 R3 K17 ["Model"]
       30 SETTABLEKS                       R2 R1 K4 ["AssetType"]
       32 LOADK                            R2 K18 ["Mock Individual Asset"]
       33 SETTABLEKS                       R2 R1 K5 ["DisplayName"]
       35 LOADK                            R2 K19 ["A mock asset fetched via fetching asset info directly"]
       36 SETTABLEKS                       R2 R1 K6 ["Description"]
       38 LOADN                            R2 1
       39 SETTABLEKS                       R2 R1 K7 ["VersionNumber"]
       41 LOADK                            R2 K20 ["2021-01-01T00:00:00Z"]
       42 SETTABLEKS                       R2 R1 K8 ["Created"]
       44 LOADK                            R2 K20 ["2021-01-01T00:00:00Z"]
       45 SETTABLEKS                       R2 R1 K9 ["Modified"]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R3 R4 K10 ["ModerationStatus"]
       50 GETTABLEKS                       R2 R3 K21 ["Approved"]
       52 SETTABLEKS                       R2 R1 K10 ["ModerationStatus"]
       54 GETUPVAL                         R2 2
       55 SETTABLEKS                       R2 R1 K11 ["Creator"]
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R3 R4 K22 ["AssetSource"]
       60 GETTABLEKS                       R2 R3 K23 ["Uploaded"]
       62 SETTABLEKS                       R2 R1 K12 ["Source"]
       64 LOADB                            R2 0
       65 SETTABLEKS                       R2 R1 K13 ["Archived"]
       67 DUPTABLE                         R2 K14 [{"Path", "AssetId", "AssetType", "DisplayName", "Description", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived"}]
       68 LOADK                            R4 K15 ["users/%*/creator-inventory-items/asset-%*"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R6 R7 K16 ["Id"]
       72 GETUPVAL                         R8 1
       73 ADDK                             R7 R8 K24 [1]
       74 NAMECALL                         R4 R4 K1 ["format"]
       76 CALL                             R4 3 1
       77 MOVE                             R3 R4
       78 SETTABLEKS                       R3 R2 K2 ["Path"]
       80 GETUPVAL                         R4 1
       81 ADDK                             R3 R4 K24 [1]
       82 SETTABLEKS                       R3 R2 K3 ["AssetId"]
       84 GETUPVAL                         R5 3
       85 GETTABLEKS                       R4 R5 K4 ["AssetType"]
       87 GETTABLEKS                       R3 R4 K25 ["Mesh"]
       89 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       91 LOADK                            R3 K26 ["Mock Dependency Asset"]
       92 SETTABLEKS                       R3 R2 K5 ["DisplayName"]
       94 LOADK                            R3 K27 ["A mock asset that another asset depends on"]
       95 SETTABLEKS                       R3 R2 K6 ["Description"]
       97 LOADN                            R3 1
       98 SETTABLEKS                       R3 R2 K7 ["VersionNumber"]
      100 LOADK                            R3 K20 ["2021-01-01T00:00:00Z"]
      101 SETTABLEKS                       R3 R2 K8 ["Created"]
      103 LOADK                            R3 K20 ["2021-01-01T00:00:00Z"]
      104 SETTABLEKS                       R3 R2 K9 ["Modified"]
      106 GETUPVAL                         R5 3
      107 GETTABLEKS                       R4 R5 K10 ["ModerationStatus"]
      109 GETTABLEKS                       R3 R4 K21 ["Approved"]
      111 SETTABLEKS                       R3 R2 K10 ["ModerationStatus"]
      113 GETUPVAL                         R3 2
      114 SETTABLEKS                       R3 R2 K11 ["Creator"]
      116 GETUPVAL                         R5 3
      117 GETTABLEKS                       R4 R5 K22 ["AssetSource"]
      119 GETTABLEKS                       R3 R4 K23 ["Uploaded"]
      121 SETTABLEKS                       R3 R2 K12 ["Source"]
      123 LOADB                            R3 0
      124 SETTABLEKS                       R3 R2 K13 ["Archived"]
      126 GETUPVAL                         R3 4
      127 MOVE                             R4 R1
      128 CALL                             R3 1 0
      129 GETUPVAL                         R3 4
      130 MOVE                             R4 R2
      131 CALL                             R3 1 0
      132 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R5 R4 K1 ["FetchAssetInfo"]
       11 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchPluginInfoAsync error for plugin %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K3 [{"versionId"}]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K2 ["versionId"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchPluginInfo"]
        9 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R2 R5 K1 ["Scopes"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R9 2
       14 GETTABLEKS                       R8 R9 K2 ["Folders"]
       16 GETTABLEKS                       R9 R6 K3 ["Id"]
       18 GETTABLE                         R7 R8 R9
       19 JUMPIF                           R7 ; [+2]
       20 NEWTABLE                         R7 0 0
       22 GETTABLEKS                       R8 R6 K4 ["Uid"]
       24 SETTABLE                         R7 R1 R8
       25 FORGLOOP                         R2 2 ; [-13]
       27 GETUPVAL                         R2 3
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R4 R3 K1 ["FetchFolders"]
       10 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test createFolderAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_36:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["CreateFolder"]
        8 RETURN                           R0 0

PROTO_38:
        0 DUPCLOSURE                       R1 K0 [PROTO_36]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_37]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_39:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test createFolderAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["CreateFolder"]
        8 RETURN                           R0 0

PROTO_42:
        0 DUPCLOSURE                       R1 K0 [PROTO_40]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_41]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test updateFolderMetadataAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["FolderMetadata"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_44:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["UpdateFolderMetadata"]
        9 RETURN                           R0 0

PROTO_46:
        0 DUPCLOSURE                       R2 K0 [PROTO_44]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 DUPCLOSURE                       R4 K2 [PROTO_45]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_47:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test moveItemsAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["MoveItems"]
        8 RETURN                           R0 0

PROTO_50:
        0 DUPCLOSURE                       R4 K0 [PROTO_48]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["new"]
        4 DUPCLOSURE                       R6 K2 [PROTO_49]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R5 1 -1
        7 RETURN                           R5 -1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_requestTracker"]
        4 LOADN                            R0 0
        5 RETURN                           R0 1

PROTO_52:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        9 GETTABLE                         R1 R2 R0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R0
       15 MOVE                             R2 R1
       16 GETVARARGS                       R3 -1
       17 CALL                             R2 -1 0
       18 LOADB                            R2 1
       19 RETURN                           R2 1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Images"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R7 R8 K13 ["Parent"]
       43 GETTABLEKS                       R6 R7 K14 ["MockData"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Flags"]
       52 GETTABLEKS                       R7 R8 K16 ["getFIntDebugAmrMockCount"]
       54 CALL                             R6 1 1
       55 NEWTABLE                         R7 32 0
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R7 K17 ["ResumeAsync"]
       61 DUPCLOSURE                       R8 K18 [PROTO_1]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R8 R7 K19 ["fetchUsername"]
       66 DUPCLOSURE                       R8 K20 [PROTO_3]
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R8 R7 K21 ["fetchUniverseInfoAsync"]
       70 DUPCLOSURE                       R8 K22 [PROTO_5]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R8 R7 K23 ["fetchGroupsAsync"]
       75 DUPCLOSURE                       R8 K24 [PROTO_7]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R8 R7 K25 ["fetchGroupsAsync_DEPRECATED"]
       80 DUPCLOSURE                       R8 K26 [PROTO_8]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R8 R7 K27 ["_fetchAssetsAsyncImpl"]
       86 DUPCLOSURE                       R8 K28 [PROTO_11]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R8 R7 K29 ["fetchAssetsAsync"]
       91 DUPCLOSURE                       R8 K30 [PROTO_13]
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R8 R7 K31 ["searchAssetsAsync"]
       95 DUPCLOSURE                       R8 K32 [PROTO_14]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R8 R7 K33 ["_fetchPlacesImplAsync"]
       99 DUPCLOSURE                       R8 K34 [PROTO_16]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R8 R7 K35 ["fetchPlacesAsync"]
      104 DUPCLOSURE                       R8 K36 [PROTO_17]
      105 SETTABLEKS                       R8 R7 K37 ["grantUniverseUseAssetsPermissions"]
      107 DUPCLOSURE                       R8 K38 [PROTO_20]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R8 R7 K39 ["grantAssetsPermissionsAsync"]
      112 DUPCLOSURE                       R8 K40 [PROTO_23]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R8 R7 K41 ["checkAssetsPermissionsAsync"]
      118 DUPCLOSURE                       R8 K42 [PROTO_24]
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R8 R7 K43 ["getThumbnailUriForScope"]
      122 DUPCLOSURE                       R8 K44 [PROTO_25]
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R8 R7 K45 ["getThumbnailForScopeAsync"]
      126 DUPCLOSURE                       R8 K46 [PROTO_26]
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R8 R7 K47 ["getThumbnailForItem"]
      130 DUPCLOSURE                       R8 K48 [PROTO_28]
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R8 R7 K49 ["getThumbnailForItemAsync"]
      134 DUPCLOSURE                       R8 K50 [PROTO_30]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R8 R7 K51 ["fetchAssetInfoAsync"]
      139 DUPCLOSURE                       R8 K52 [PROTO_32]
      140 CAPTURE                          VAL R7
      141 SETTABLEKS                       R8 R7 K53 ["fetchPluginInfoAsync"]
      143 DUPCLOSURE                       R8 K54 [PROTO_34]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R8 R7 K55 ["fetchFoldersAsync"]
      148 DUPCLOSURE                       R8 K56 [PROTO_38]
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R8 R7 K57 ["createFolderAsync"]
      153 DUPCLOSURE                       R8 K58 [PROTO_42]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R7
      156 SETTABLEKS                       R8 R7 K59 ["deleteFolderAsync"]
      158 DUPCLOSURE                       R8 K60 [PROTO_46]
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R7
      162 SETTABLEKS                       R8 R7 K61 ["updateFolderMetadataAsync"]
      164 DUPCLOSURE                       R8 K62 [PROTO_50]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R7
      167 SETTABLEKS                       R8 R7 K63 ["moveItemsAsync"]
      169 DUPCLOSURE                       R8 K64 [PROTO_51]
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R8 R7 K65 ["setupNewFetchSession"]
      173 DUPCLOSURE                       R8 K66 [PROTO_52]
      174 CAPTURE                          VAL R7
      175 SETTABLEKS                       R8 R7 K67 ["resume"]
      177 RETURN                           R7 1
