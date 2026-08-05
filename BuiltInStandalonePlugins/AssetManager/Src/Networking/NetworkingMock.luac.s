PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_requestTracker"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
        7 ADDK                             R1 R1 K2 [1]
        8 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["_fetchScopeId"]
       13 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 LOADB                            R3 1
        4 CALL                             R1 2 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["UserName"]
       10 LOADB                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K1 ["FetchUsername"]
        8 RETURN                           R0 0

PROTO_3:
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
       11 DUPTABLE                         R2 K20 [{["created"] = "", ["creatorName"] = "TestUser", ["creatorTargetId"] = 0, ["creatorType"], ["description"] = "", ["id"] = 1, ["isActive"] = False, ["isArchived"] = False, ["name"] = "TestGame", ["privacyType"] = "", ["rootPlaceId"] = 1, ["updated"] = ""}]
       12 GETIMPORT                        R4 K24 [Enum.CreatorType.User]
       14 FASTCALL1                        TOSTRING R4 ; [+2]
       15 GETIMPORT                        R3 K26 [tostring]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K8 ["creatorType"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchUniverseInfo"]
        9 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchGroupsAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Groups"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["FetchGroups"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R3 R2 K1 ["FetchInventoryFolderReady"]
        7 RETURN                           R0 0

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_9]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 LOADNIL                          R6
        1 JUMPIFNOT                        R5 ; [+10]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["generate"]
        5 MOVE                             R8 R3
        6 JUMPIF                           R8 ; [+2]
        7 GETUPVAL                         R8 1
        8 CALL                             R8 0 1
        9 CALL                             R7 1 1
       10 MOVE                             R6 R7
       11 JUMP                             ; [+36]
       12 GETTABLEKS                       R7 R1 K1 ["ScopeInfo"]
       14 GETTABLEKS                       R7 R7 K2 ["Type"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K3 ["ScopeType"]
       19 GETTABLEKS                       R8 R8 K4 ["ProjectPlaces"]
       21 JUMPIFNOTEQ                      R7 R8 ; [+14]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K5 ["Places"]
       26 GETTABLEKS                       R9 R1 K1 ["ScopeInfo"]
       28 GETTABLEKS                       R9 R9 K6 ["Id"]
       30 GETTABLE                         R7 R8 R9
       31 JUMPIF                           R7 ; [+2]
       32 NEWTABLE                         R7 0 0
       34 MOVE                             R6 R7
       35 JUMP                             ; [+12]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K7 ["Assets"]
       39 GETTABLEKS                       R9 R1 K1 ["ScopeInfo"]
       41 GETTABLEKS                       R9 R9 K6 ["Id"]
       43 GETTABLE                         R7 R8 R9
       44 JUMPIF                           R7 ; [+2]
       45 NEWTABLE                         R7 0 0
       47 MOVE                             R6 R7
       48 NEWTABLE                         R7 0 0
       50 MOVE                             R8 R6
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 FORGPREP                         R8
       54 GETTABLEKS                       R13 R12 K8 ["Creator"]
       56 GETTABLEKS                       R13 R13 K9 ["Name"]
       58 GETTABLEKS                       R14 R12 K8 ["Creator"]
       60 SETTABLE                         R14 R7 R13
       61 FORGLOOP                         R8 2 ; [-8]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R6
       65 MOVE                             R10 R7
       66 GETTABLEKS                       R11 R1 K10 ["FetchSessionId"]
       68 LOADNIL                          R12
       69 MOVE                             R13 R4
       70 CALL                             R8 5 0
       71 MOVE                             R8 R2
       72 CALL                             R8 0 0
       73 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test fetchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["_fetchAssetsAsyncImpl"]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 3
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K2 ["Resolve"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R3
       15 MOVE                             R10 R2
       16 CALL                             R4 6 0
       17 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Folders"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["ScopeInfo"]
       11 GETTABLEKS                       R3 R3 K3 ["Id"]
       13 GETTABLE                         R1 R2 R3
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R1
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["FetchSessionId"]
       24 LOADNIL                          R6
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K5 ["PageToken"]
       28 CALL                             R2 5 0
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K6 ["Resolve"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K6 ["Resolve"]
       36 CALL                             R2 0 0
       37 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["FetchAssets"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R4 R3 K2 ["FetchFolders"]
       20 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test searchAssetsAsync error - folders"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Resolve"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["Folders"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["ScopeInfo"]
       15 GETTABLEKS                       R3 R3 K4 ["Id"]
       17 GETTABLE                         R1 R2 R3
       18 JUMPIF                           R1 ; [+2]
       19 NEWTABLE                         R1 0 0
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 NEWTABLE                         R4 0 0
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K5 ["FetchSessionId"]
       28 LOADNIL                          R6
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K6 ["PageToken"]
       32 CALL                             R2 5 0
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K1 ["Resolve"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K1 ["Resolve"]
       40 CALL                             R2 0 0
       41 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test searchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Resolve"]
        7 CALL                             R4 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["_fetchAssetsAsyncImpl"]
       12 GETUPVAL                         R5 3
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K1 ["Resolve"]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R3
       19 MOVE                             R10 R2
       20 CALL                             R4 6 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["IncludeFolders"]
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["ResumeAsync"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R4 R3 K2 ["SearchFolders"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["ResumeAsync"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R4 R3 K3 ["SearchAssets"]
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Places"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["UserId"]
        6 GETTABLE                         R3 R4 R5
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K2 ["Creator"]
       15 GETTABLEKS                       R10 R10 K3 ["Name"]
       17 GETTABLEKS                       R11 R9 K2 ["Creator"]
       19 SETTABLE                         R11 R4 R10
       20 FORGLOOP                         R5 2 ; [-8]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R3
       24 MOVE                             R7 R4
       25 GETTABLEKS                       R8 R1 K4 ["FetchSessionId"]
       27 LOADNIL                          R9
       28 MOVE                             R10 R2
       29 JUMPIF                           R10 ; [+3]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K5 ["PageToken"]
       33 CALL                             R5 5 0
       34 GETTABLEKS                       R5 R1 K6 ["Resolve"]
       36 CALL                             R5 0 0
       37 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["Test fetchPlacesAsync error"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Resolve"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["_fetchPlacesImplAsync"]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R3 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R4 K3 ["Universe"]
        9 JUMPIFEQ                         R3 R4 ; [+16]
       11 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R3 R3 K1 ["Type"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       18 GETTABLEKS                       R4 R4 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R3 R4 ; [+5]
       22 GETTABLEKS                       R3 R0 K5 ["Resolve"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K6 ["ResumeAsync"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K7 ["FetchPlaces"]
       36 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R2 1
        1 NEWTABLE                         R3 0 0
        3 RETURN                           R2 2

PROTO_22:
        0 DUPTABLE                         R2 K5 [{[1], ["errorCode"] = 123, ["code"] = "MockError"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 RETURN                           R2 1

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+20]
        1 NEWTABLE                         R2 0 0
        3 JUMPIFEQKB                       R1 FALSE ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["map"]
        8 GETUPVAL                         R4 1
        9 DUPCLOSURE                       R5 K1 [PROTO_22]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 GETUPVAL                         R3 2
       13 LENGTH                           R5 R2
       14 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 2
       22 LOADB                            R3 1
       23 NEWTABLE                         R4 0 0
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R5
        7 SETTABLEKS                       R7 R6 K1 ["GrantAssetsPermissions"]
        9 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R2 K2 [{"value", "error"}]
        1 DUPTABLE                         R3 K4 [{"status"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["ApiPermissionStatus"]
        5 GETTABLEKS                       R4 R4 K6 ["UnknownError"]
        7 SETTABLEKS                       R4 R3 K3 ["status"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 DUPTABLE                         R3 K11 [{["code"] = 123, ["message"] = "MockError"}]
       12 SETTABLEKS                       R3 R2 K1 ["error"]
       14 RETURN                           R2 1

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["map"]
        6 GETUPVAL                         R4 2
        7 DUPCLOSURE                       R5 K1 [PROTO_25]
        8 CAPTURE                          UPVAL U3
        9 CALL                             R3 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R4
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R6 R5 K1 ["CheckAssetsPermissions"]
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R1 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_29:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["get"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["AvailableImages"]
        7 GETTABLEKS                       R4 R4 K2 ["Placeholder"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R1 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 SETTABLEKS                       R4 R3 K1 ["GetThumbnailForItem"]
        7 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchAssetInfoAsync error for asset %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 DUPTABLE                         R1 K18 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"] = "Mock Individual Asset", ["Description"] = "A mock asset fetched via fetching asset info directly", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
       11 LOADK                            R3 K19 ["users/%*/creator-inventory-items/asset-%*"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K20 ["Id"]
       15 GETUPVAL                         R6 1
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R2 R1 K2 ["Path"]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K3 ["AssetId"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K4 ["AssetType"]
       28 GETTABLEKS                       R2 R2 K21 ["Model"]
       30 SETTABLEKS                       R2 R1 K4 ["AssetType"]
       32 GETUPVAL                         R3 4
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADN                            R2 10000
       36 JUMP                             ; [+1]
       37 LOADK                            R2 K22 ["2021-01-01T00:00:00Z"]
       38 SETTABLEKS                       R2 R1 K11 ["Created"]
       40 GETUPVAL                         R3 4
       41 CALL                             R3 0 1
       42 JUMPIFNOT                        R3 ; [+2]
       43 LOADN                            R2 10000
       44 JUMP                             ; [+1]
       45 LOADK                            R2 K22 ["2021-01-01T00:00:00Z"]
       46 SETTABLEKS                       R2 R1 K12 ["Modified"]
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R2 R2 K13 ["ModerationStatus"]
       51 GETTABLEKS                       R2 R2 K23 ["Approved"]
       53 SETTABLEKS                       R2 R1 K13 ["ModerationStatus"]
       55 GETUPVAL                         R2 2
       56 SETTABLEKS                       R2 R1 K14 ["Creator"]
       58 GETUPVAL                         R2 3
       59 GETTABLEKS                       R2 R2 K24 ["AssetSource"]
       61 GETTABLEKS                       R2 R2 K25 ["Uploaded"]
       63 SETTABLEKS                       R2 R1 K15 ["Source"]
       65 DUPTABLE                         R2 K28 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"] = "Mock Dependency Asset", ["Description"] = "A mock asset that another asset depends on", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
       66 LOADK                            R4 K19 ["users/%*/creator-inventory-items/asset-%*"]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K20 ["Id"]
       70 GETUPVAL                         R8 1
       71 ADDK                             R7 R8 K10 [1]
       72 NAMECALL                         R4 R4 K1 ["format"]
       74 CALL                             R4 3 1
       75 MOVE                             R3 R4
       76 SETTABLEKS                       R3 R2 K2 ["Path"]
       78 GETUPVAL                         R4 1
       79 ADDK                             R3 R4 K10 [1]
       80 SETTABLEKS                       R3 R2 K3 ["AssetId"]
       82 GETUPVAL                         R3 3
       83 GETTABLEKS                       R3 R3 K4 ["AssetType"]
       85 GETTABLEKS                       R3 R3 K29 ["Mesh"]
       87 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       89 GETUPVAL                         R4 4
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+2]
       92 LOADN                            R3 10000
       93 JUMP                             ; [+1]
       94 LOADK                            R3 K22 ["2021-01-01T00:00:00Z"]
       95 SETTABLEKS                       R3 R2 K11 ["Created"]
       97 GETUPVAL                         R4 4
       98 CALL                             R4 0 1
       99 JUMPIFNOT                        R4 ; [+2]
      100 LOADN                            R3 10000
      101 JUMP                             ; [+1]
      102 LOADK                            R3 K22 ["2021-01-01T00:00:00Z"]
      103 SETTABLEKS                       R3 R2 K12 ["Modified"]
      105 GETUPVAL                         R3 3
      106 GETTABLEKS                       R3 R3 K13 ["ModerationStatus"]
      108 GETTABLEKS                       R3 R3 K23 ["Approved"]
      110 SETTABLEKS                       R3 R2 K13 ["ModerationStatus"]
      112 GETUPVAL                         R3 2
      113 SETTABLEKS                       R3 R2 K14 ["Creator"]
      115 GETUPVAL                         R3 3
      116 GETTABLEKS                       R3 R3 K24 ["AssetSource"]
      118 GETTABLEKS                       R3 R3 K25 ["Uploaded"]
      120 SETTABLEKS                       R3 R2 K15 ["Source"]
      122 GETUPVAL                         R3 5
      123 MOVE                             R4 R1
      124 CALL                             R3 1 0
      125 GETUPVAL                         R3 6
      126 JUMPIFNOT                        R3 ; [+3]
      127 GETUPVAL                         R3 5
      128 MOVE                             R4 R2
      129 CALL                             R3 1 0
      130 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R4
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R6 R5 K1 ["FetchAssetInfo"]
       13 RETURN                           R0 0

PROTO_35:
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
       11 DUPTABLE                         R2 K4 [{["versionId"] = 1}]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchPluginInfo"]
        9 RETURN                           R0 0

PROTO_37:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Folders"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Scope"]
       13 GETTABLEKS                       R4 R4 K3 ["Id"]
       15 GETTABLE                         R2 R3 R4
       16 JUMPIF                           R2 ; [+2]
       17 NEWTABLE                         R2 0 0
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["Scope"]
       22 GETTABLEKS                       R3 R3 K4 ["Uid"]
       24 SETTABLE                         R2 R1 R3
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R4 R3 K1 ["FetchFolders"]
       10 RETURN                           R0 0

PROTO_39:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["Test createFolderAsync error"]
        3 CALL                             R2 1 0
        4 DUPTABLE                         R2 K14 [{["AssetId"], ["DisplayName"], ["AssetType"], ["Path"], ["Creator"], ["Created"], ["Modified"], ["VersionNumber"] = 1, ["ModerationStatus"], ["Source"], ["Archived"] = False}]
        5 SETTABLEKS                       R0 R2 K1 ["AssetId"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K15 ["FolderName"]
       10 SETTABLEKS                       R3 R2 K2 ["DisplayName"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K16 ["ScopeType"]
       15 GETTABLEKS                       R3 R3 K17 ["Folder"]
       17 SETTABLEKS                       R3 R2 K3 ["AssetType"]
       19 LOADK                            R4 K18 ["folder-%*"]
       20 MOVE                             R6 R0
       21 NAMECALL                         R4 R4 K19 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 SETTABLEKS                       R3 R2 K4 ["Path"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K20 ["RootScope"]
       30 SETTABLEKS                       R3 R2 K5 ["Creator"]
       32 GETUPVAL                         R4 3
       33 CALL                             R4 0 1
       34 JUMPIFNOT                        R4 ; [+2]
       35 LOADN                            R3 10000
       36 JUMP                             ; [+1]
       37 LOADK                            R3 K21 ["2021-01-01T00:00:00Z"]
       38 SETTABLEKS                       R3 R2 K6 ["Created"]
       40 GETUPVAL                         R4 3
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+2]
       43 LOADN                            R3 10000
       44 JUMP                             ; [+1]
       45 LOADK                            R3 K21 ["2021-01-01T00:00:00Z"]
       46 SETTABLEKS                       R3 R2 K7 ["Modified"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K10 ["ModerationStatus"]
       51 GETTABLEKS                       R3 R3 K22 ["Approved"]
       53 SETTABLEKS                       R3 R2 K10 ["ModerationStatus"]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K23 ["AssetSource"]
       58 GETTABLEKS                       R3 R3 K24 ["Uploaded"]
       60 SETTABLEKS                       R3 R2 K11 ["Source"]
       62 GETUPVAL                         R3 4
       63 MOVE                             R4 R2
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["CreateFolder"]
       11 RETURN                           R0 0

PROTO_42:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["new"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test deleteFolderAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_44:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["DeleteFolder"]
        8 RETURN                           R0 0

PROTO_46:
        0 DUPCLOSURE                       R2 K0 [PROTO_44]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["new"]
        4 DUPCLOSURE                       R4 K2 [PROTO_45]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1

PROTO_47:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test updateFolderMetadataAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["FolderMetadata"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["UpdateFolderMetadata"]
        9 RETURN                           R0 0

PROTO_50:
        0 DUPCLOSURE                       R3 K0 [PROTO_48]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["new"]
        5 DUPCLOSURE                       R5 K2 [PROTO_49]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 CALL                             R4 1 -1
        9 RETURN                           R4 -1

PROTO_51:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R3 K4 [{[1] = 400, ["message"] = "Test getItemParentsAsync error"}]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K6 [{"results"}]
        8 MOVE                             R5 R1
        9 JUMPIF                           R5 ; [+2]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K5 ["results"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_52:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["GetItemParents"]
        9 RETURN                           R0 0

PROTO_54:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K1 [{"path"}]
        7 SETTABLEKS                       R7 R10 K0 ["path"]
        9 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-10]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["new"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R2
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_55:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R3 K4 [{[1] = 400, ["message"] = "Test moveItemsAsync error"}]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K6 [{"errors"}]
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K5 ["errors"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_56:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["MoveItems"]
        8 RETURN                           R0 0

PROTO_58:
        0 DUPCLOSURE                       R1 K0 [PROTO_56]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_57]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_59:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
        9 GETTABLE                         R1 R2 R0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["ResumeAsync"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Images"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["MockData"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFIntDebugAmrMockCount"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K17 ["getFFlagAmrOptimizeLoadingPerformance"]
       63 CALL                             R7 1 1
       64 NEWTABLE                         R8 32 0
       66 NEWTABLE                         R9 0 0
       68 SETTABLEKS                       R9 R8 K18 ["ResumeAsync"]
       70 LOADN                            R9 0
       71 SETTABLEKS                       R9 R8 K19 ["_fetchScopeId"]
       73 DUPCLOSURE                       R9 K20 [PROTO_0]
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R9 R8 K21 ["setupNewFetchSession"]
       77 DUPCLOSURE                       R9 K22 [PROTO_2]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R9 R8 K23 ["fetchUsername"]
       82 DUPCLOSURE                       R9 K24 [PROTO_4]
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R9 R8 K25 ["fetchUniverseInfoAsync"]
       86 DUPCLOSURE                       R9 K26 [PROTO_6]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R9 R8 K27 ["fetchGroupsAsync"]
       91 DUPCLOSURE                       R9 K28 [PROTO_10]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R9 R8 K29 ["fetchInventoryFolderReadyAsync"]
       96 DUPCLOSURE                       R9 K30 [PROTO_11]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R9 R8 K31 ["_fetchAssetsAsyncImpl"]
      102 DUPCLOSURE                       R9 K32 [PROTO_14]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R9 R8 K33 ["fetchAssetsAsync"]
      107 DUPCLOSURE                       R9 K34 [PROTO_17]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R9 R8 K35 ["searchAssetsAsync"]
      112 DUPCLOSURE                       R9 K36 [PROTO_18]
      113 CAPTURE                          VAL R5
      114 SETTABLEKS                       R9 R8 K37 ["_fetchPlacesImplAsync"]
      116 DUPCLOSURE                       R9 K38 [PROTO_20]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R9 R8 K39 ["fetchPlacesAsync"]
      121 DUPCLOSURE                       R9 K40 [PROTO_21]
      122 SETTABLEKS                       R9 R8 K41 ["grantUniverseUseAssetsPermissions"]
      124 DUPCLOSURE                       R9 K42 [PROTO_24]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R9 R8 K43 ["grantAssetsPermissionsAsync"]
      129 DUPCLOSURE                       R9 K44 [PROTO_27]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R9 R8 K45 ["checkAssetsPermissionsAsync"]
      135 DUPCLOSURE                       R9 K46 [PROTO_28]
      136 CAPTURE                          VAL R1
      137 SETTABLEKS                       R9 R8 K47 ["getThumbnailUriForScope"]
      139 DUPCLOSURE                       R9 K48 [PROTO_29]
      140 CAPTURE                          VAL R1
      141 SETTABLEKS                       R9 R8 K49 ["getThumbnailForScopeAsync"]
      143 DUPCLOSURE                       R9 K50 [PROTO_30]
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R9 R8 K51 ["getThumbnailForItem"]
      147 DUPCLOSURE                       R9 K52 [PROTO_32]
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R9 R8 K53 ["getThumbnailForItemAsync"]
      151 DUPCLOSURE                       R9 K54 [PROTO_34]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R7
      155 SETTABLEKS                       R9 R8 K55 ["fetchAssetInfoAsync"]
      157 DUPCLOSURE                       R9 K56 [PROTO_36]
      158 CAPTURE                          VAL R8
      159 SETTABLEKS                       R9 R8 K57 ["fetchPluginInfoAsync"]
      161 DUPCLOSURE                       R9 K58 [PROTO_38]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R5
      164 SETTABLEKS                       R9 R8 K59 ["fetchFoldersAsync"]
      166 DUPCLOSURE                       R9 K60 [PROTO_42]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R8
      171 SETTABLEKS                       R9 R8 K61 ["createFolderAsync"]
      173 DUPCLOSURE                       R9 K62 [PROTO_46]
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R8
      176 SETTABLEKS                       R9 R8 K63 ["deleteFolderAsync"]
      178 DUPCLOSURE                       R9 K64 [PROTO_50]
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R8
      182 SETTABLEKS                       R9 R8 K65 ["updateFolderMetadataAsync"]
      184 DUPCLOSURE                       R9 K66 [PROTO_54]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R8
      187 SETTABLEKS                       R9 R8 K67 ["getItemParentsAsync"]
      189 DUPCLOSURE                       R9 K68 [PROTO_58]
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R8
      192 SETTABLEKS                       R9 R8 K69 ["moveItemsAsync"]
      194 DUPCLOSURE                       R9 K70 [PROTO_59]
      195 CAPTURE                          VAL R8
      196 SETTABLEKS                       R9 R8 K71 ["resume"]
      198 RETURN                           R8 1
