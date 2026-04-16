PROTO_0:
        0 DUPTABLE                         R1 K8 [{"_isMock", "_impl", "nextPageToken", "nextPlacesPageToken", "_scopesOngoingFetches", "_epochId", "_connections", "OnScopesOngoingFetchesChanged"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+2]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["_isMock"]
        7 JUMPIF                           R0 ; [+3]
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R2 1
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K1 ["_impl"]
       16 LOADK                            R2 K9 [""]
       17 SETTABLEKS                       R2 R1 K2 ["nextPageToken"]
       19 LOADK                            R2 K9 [""]
       20 SETTABLEKS                       R2 R1 K3 ["nextPlacesPageToken"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K4 ["_scopesOngoingFetches"]
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R1 K5 ["_epochId"]
       29 NEWTABLE                         R2 0 0
       31 SETTABLEKS                       R2 R1 K6 ["_connections"]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R2 R3 K10 ["new"]
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R1 K7 ["OnScopesOngoingFetchesChanged"]
       39 GETUPVAL                         R4 4
       40 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       42 MOVE                             R3 R1
       43 GETIMPORT                        R2 K12 [setmetatable]
       45 CALL                             R2 2 0
       46 GETUPVAL                         R2 5
       47 CALL                             R2 0 1
       48 JUMPIFNOT                        R2 ; [+9]
       49 GETTABLEKS                       R2 R1 K0 ["_isMock"]
       51 JUMPIFNOT                        R2 ; [+6]
       52 GETTABLEKS                       R3 R1 K1 ["_impl"]
       54 GETTABLEKS                       R2 R3 K13 ["resume"]
       56 SETTABLEKS                       R2 R1 K13 ["resume"]
       58 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+6]
        8 GETTABLEKS                       R2 R0 K1 ["_impl"]
       10 GETTABLEKS                       R1 R2 K2 ["resume"]
       12 SETTABLEKS                       R1 R0 K2 ["resume"]
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["_connections"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R2 R0 K1 ["_epochId"]
        5 ADDK                             R1 R2 K0 [1]
        6 SETTABLEKS                       R1 R0 K1 ["_epochId"]
        8 GETTABLEKS                       R2 R0 K2 ["_impl"]
       10 GETTABLEKS                       R1 R2 K3 ["setupNewFetchSession"]
       12 CALL                             R1 0 0
       13 GETTABLEKS                       R1 R0 K1 ["_epochId"]
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["_impl"]
       18 GETTABLEKS                       R1 R2 K3 ["setupNewFetchSession"]
       20 CALL                             R1 0 -1
       21 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_epochId"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["fetchUsername"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["fetchUniverseInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["fetchGroupsAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K5 [{"ScopeInfo", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["ScopeInfo"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["PageToken"]
        7 LOADN                            R3 238
        8 SETTABLEKS                       R3 R2 K2 ["MaxPageSize"]
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R3 R2 K3 ["FetchSessionId"]
       13 SETTABLEKS                       R0 R2 K4 ["Resolve"]
       15 SETTABLEKS                       R0 R2 K4 ["Resolve"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K6 ["_impl"]
       20 GETTABLEKS                       R3 R4 K7 ["fetchAssetsAsync"]
       22 MOVE                             R4 R2
       23 GETUPVAL                         R5 4
       24 GETUPVAL                         R6 5
       25 CALL                             R3 3 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R2 K5 [{"ScopeInfo", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["ScopeInfo"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["PageToken"]
        7 LOADN                            R3 238
        8 SETTABLEKS                       R3 R2 K2 ["MaxPageSize"]
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R3 R2 K3 ["FetchSessionId"]
       13 SETTABLEKS                       R0 R2 K4 ["Resolve"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K6 ["_impl"]
       18 GETTABLEKS                       R3 R4 K7 ["fetchPlacesAsync"]
       20 MOVE                             R4 R2
       21 GETUPVAL                         R5 4
       22 GETUPVAL                         R6 5
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEN                        R1 R0 1
        5 JUMPIF                           R1 ; [+2]
        6 GETTABLEN                        R1 R0 2
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+4]
        3 NAMECALL                         R5 R0 K0 ["getFetchEpochId"]
        5 CALL                             R5 1 1
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R6 R0 K1 ["_impl"]
        9 GETTABLEKS                       R5 R6 K2 ["_fetchScopeId"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R8 R9 K3 ["all"]
       30 NEWTABLE                         R9 0 2
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R10 R11 K4 ["new"]
       35 NEWCLOSURE                       R11 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CALL                             R10 1 1
       43 MOVE                             R11 R7
       44 CALL                             R11 0 -1
       45 SETLIST                          R9 R10 -1 [1]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R10 K5 [PROTO_12]
       49 CAPTURE                          UPVAL U0
       50 NAMECALL                         R8 R8 K6 ["andThen"]
       52 CALL                             R8 2 0
       53 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 LOADNIL                          R7
        5 MOVE                             R8 R2
        6 CALL                             R3 5 0
        7 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R2 K8 [{"SearchTerm", "AssetType", "ScopeInfo", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve", "IncludeFolders"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["SearchTerm"]
        4 SETTABLEKS                       R3 R2 K0 ["SearchTerm"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["AssetType"]
        9 SETTABLEKS                       R3 R2 K1 ["AssetType"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["ScopeInfo"]
       14 SETTABLEKS                       R3 R2 K2 ["ScopeInfo"]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K3 ["PageToken"]
       19 LOADN                            R3 238
       20 SETTABLEKS                       R3 R2 K4 ["MaxPageSize"]
       22 GETUPVAL                         R3 2
       23 SETTABLEKS                       R3 R2 K5 ["FetchSessionId"]
       25 SETTABLEKS                       R0 R2 K6 ["Resolve"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K7 ["IncludeFolders"]
       30 SETTABLEKS                       R3 R2 K7 ["IncludeFolders"]
       32 GETUPVAL                         R3 3
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+10]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R4 R5 K9 ["_impl"]
       38 GETTABLEKS                       R3 R4 K10 ["searchAssetsAsync"]
       40 MOVE                             R4 R2
       41 GETUPVAL                         R5 5
       42 GETUPVAL                         R6 6
       43 CALL                             R3 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R4 R5 K9 ["_impl"]
       48 GETTABLEKS                       R3 R4 K10 ["searchAssetsAsync"]
       50 MOVE                             R4 R2
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U2
       54 GETUPVAL                         R6 6
       55 CALL                             R3 3 0
       56 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+4]
        3 NAMECALL                         R5 R0 K0 ["getFetchEpochId"]
        5 CALL                             R5 1 1
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R6 R0 K1 ["_impl"]
        9 GETTABLEKS                       R5 R6 K2 ["_fetchScopeId"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K3 ["new"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R5
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CALL                             R6 1 1
       23 DUPCLOSURE                       R8 K4 [PROTO_16]
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R6 R6 K5 ["andThen"]
       27 CALL                             R6 2 0
       28 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R7 K1 ["fetchAssetInfoAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["grantUniverseUseAssetsPermissions"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_20:
        0 GETTABLEKS                       R8 R0 K0 ["_impl"]
        2 GETTABLEKS                       R7 R8 K1 ["grantAssetsPermissionsAsync"]
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 MOVE                             R12 R5
        9 MOVE                             R13 R6
       10 CALL                             R7 6 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R7 K1 ["checkAssetsPermissionsAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["getThumbnailUriForScope"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["getThumbnailForScopeAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["getThumbnailForItem"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_25:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["getThumbnailForItemAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 -1
        8 RETURN                           R4 -1

PROTO_26:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["fetchPluginInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R0 K0 ["_scopesOngoingFetches"]
        6 GETTABLEKS                       R8 R6 K1 ["Uid"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R7 R8
       10 FORGLOOP                         R2 2 ; [-7]
       12 GETTABLEKS                       R2 R0 K2 ["OnScopesOngoingFetchesChanged"]
       14 GETIMPORT                        R4 K5 [table.clone]
       16 GETTABLEKS                       R5 R0 K0 ["_scopesOngoingFetches"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K6 ["Fire"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_28:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R0 K0 ["_scopesOngoingFetches"]
        6 GETTABLEKS                       R8 R6 K1 ["Uid"]
        8 LOADNIL                          R9
        9 SETTABLE                         R9 R7 R8
       10 FORGLOOP                         R2 2 ; [-7]
       12 GETTABLEKS                       R2 R0 K2 ["OnScopesOngoingFetchesChanged"]
       14 GETIMPORT                        R4 K5 [table.clone]
       16 GETTABLEKS                       R5 R0 K0 ["_scopesOngoingFetches"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K6 ["Fire"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_scopesOngoingFetches"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["Scopes"]
        4 NAMECALL                         R2 R2 K1 ["_addOngoingScopeFetch"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["_impl"]
       10 GETTABLEKS                       R2 R3 K3 ["fetchFoldersAsync"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Scopes"]
        4 NAMECALL                         R1 R1 K1 ["_removeOngoingScopeFetch"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Scopes"]
        4 NAMECALL                         R1 R1 K1 ["_removeOngoingScopeFetch"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R4 1 1
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 NAMECALL                         R4 R4 K1 ["andThen"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R6 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NAMECALL                         R4 R4 K2 ["catch"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["createFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["deleteFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_36:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["updateFolderMetadataAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_37:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R5 R6 K1 ["moveItemsAsync"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 MOVE                             R9 R4
        8 CALL                             R5 4 -1
        9 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["Promise"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R6 R5 K12 ["Signal"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R10 R0 K13 ["Src"]
       33 GETTABLEKS                       R9 R10 K11 ["Util"]
       35 GETTABLEKS                       R8 R9 K14 ["cleanConnections"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R9 R10 K15 ["NetworkingImpl"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R11 K1 [script]
       49 GETTABLEKS                       R10 R11 K16 ["NetworkingMock"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R12 R0 K13 ["Src"]
       56 GETTABLEKS                       R11 R12 K17 ["Types"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R14 R0 K13 ["Src"]
       63 GETTABLEKS                       R13 R14 K18 ["Flags"]
       65 GETTABLEKS                       R12 R13 K19 ["getFFlagDebugAmrMockContent"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R15 R0 K13 ["Src"]
       72 GETTABLEKS                       R14 R15 K18 ["Flags"]
       74 GETTABLEKS                       R13 R14 K20 ["getFFlagAmrOrganizationFoundation"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R16 R0 K13 ["Src"]
       81 GETTABLEKS                       R15 R16 K18 ["Flags"]
       83 GETTABLEKS                       R14 R15 K21 ["getFFlagAmrFixNetworkingEpochs"]
       85 CALL                             R13 1 1
       86 LOADK                            R16 K22 ["Networking"]
       87 NAMECALL                         R14 R3 K23 ["extend"]
       89 CALL                             R14 2 1
       90 DUPCLOSURE                       R15 K24 [PROTO_0]
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R15 R14 K25 ["new"]
       99 DUPCLOSURE                       R15 K26 [PROTO_1]
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R15 R14 K27 ["mock"]
      104 DUPCLOSURE                       R15 K28 [PROTO_2]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R15 R14 K29 ["destroy"]
      108 DUPCLOSURE                       R15 K30 [PROTO_3]
      109 CAPTURE                          VAL R13
      110 SETTABLEKS                       R15 R14 K31 ["makeFetchRequestsStale"]
      112 DUPCLOSURE                       R15 K32 [PROTO_4]
      113 SETTABLEKS                       R15 R14 K33 ["getFetchEpochId"]
      115 DUPCLOSURE                       R15 K34 [PROTO_5]
      116 SETTABLEKS                       R15 R14 K35 ["fetchUsername"]
      118 DUPCLOSURE                       R15 K36 [PROTO_6]
      119 SETTABLEKS                       R15 R14 K37 ["fetchUniverseInfoAsync"]
      121 DUPCLOSURE                       R15 K38 [PROTO_7]
      122 SETTABLEKS                       R15 R14 K39 ["fetchGroupsAsync"]
      124 DUPCLOSURE                       R15 K40 [PROTO_13]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R15 R14 K41 ["fetchAssetsAsync"]
      129 DUPCLOSURE                       R15 K42 [PROTO_17]
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R15 R14 K43 ["searchAssetsAsync"]
      134 DUPCLOSURE                       R15 K44 [PROTO_18]
      135 SETTABLEKS                       R15 R14 K45 ["fetchAssetInfoAsync"]
      137 DUPCLOSURE                       R15 K46 [PROTO_19]
      138 SETTABLEKS                       R15 R14 K47 ["grantUniverseUseAssetsPermissions"]
      140 DUPCLOSURE                       R15 K48 [PROTO_20]
      141 SETTABLEKS                       R15 R14 K49 ["grantAssetsPermissionsAsync"]
      143 DUPCLOSURE                       R15 K50 [PROTO_21]
      144 SETTABLEKS                       R15 R14 K51 ["checkAssetsPermissionsAsync"]
      146 DUPCLOSURE                       R15 K52 [PROTO_22]
      147 SETTABLEKS                       R15 R14 K53 ["getThumbnailUriForScope"]
      149 DUPCLOSURE                       R15 K54 [PROTO_23]
      150 SETTABLEKS                       R15 R14 K55 ["getThumbnailForScopeAsync"]
      152 DUPCLOSURE                       R15 K56 [PROTO_24]
      153 SETTABLEKS                       R15 R14 K57 ["getThumbnailForItem"]
      155 DUPCLOSURE                       R15 K58 [PROTO_25]
      156 SETTABLEKS                       R15 R14 K59 ["getThumbnailForItemAsync"]
      158 DUPCLOSURE                       R15 K60 [PROTO_26]
      159 SETTABLEKS                       R15 R14 K61 ["fetchPluginInfoAsync"]
      161 DUPCLOSURE                       R15 K62 [PROTO_27]
      162 SETTABLEKS                       R15 R14 K63 ["_addOngoingScopeFetch"]
      164 DUPCLOSURE                       R15 K64 [PROTO_28]
      165 SETTABLEKS                       R15 R14 K65 ["_removeOngoingScopeFetch"]
      167 DUPCLOSURE                       R15 K66 [PROTO_29]
      168 SETTABLEKS                       R15 R14 K67 ["getScopesOngoingFetches"]
      170 DUPCLOSURE                       R15 K68 [PROTO_33]
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R15 R14 K69 ["fetchFoldersAsync"]
      174 DUPCLOSURE                       R15 K70 [PROTO_34]
      175 SETTABLEKS                       R15 R14 K71 ["createFolderAsync"]
      177 DUPCLOSURE                       R15 K72 [PROTO_35]
      178 SETTABLEKS                       R15 R14 K73 ["deleteFolderAsync"]
      180 DUPCLOSURE                       R15 K74 [PROTO_36]
      181 SETTABLEKS                       R15 R14 K75 ["updateFolderMetadataAsync"]
      183 DUPCLOSURE                       R15 K76 [PROTO_37]
      184 SETTABLEKS                       R15 R14 K77 ["moveItemsAsync"]
      186 RETURN                           R14 1
