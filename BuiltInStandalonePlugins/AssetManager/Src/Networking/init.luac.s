PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1], ["_impl"], ["_scopesOngoingFetches"], ["_epochId"] = 0, ["_connections"], ["OnScopesOngoingFetchesChanged"], ["OnAssetPermissionsChanged"]}]
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
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K2 ["_scopesOngoingFetches"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K5 ["_connections"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K9 ["new"]
       27 CALL                             R2 0 1
       28 SETTABLEKS                       R2 R1 K6 ["OnScopesOngoingFetchesChanged"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K9 ["new"]
       33 CALL                             R2 0 1
       34 SETTABLEKS                       R2 R1 K7 ["OnAssetPermissionsChanged"]
       36 GETUPVAL                         R4 4
       37 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K11 [setmetatable]
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R2 R1 K0 ["_isMock"]
       45 JUMPIFNOT                        R2 ; [+6]
       46 GETTABLEKS                       R2 R1 K1 ["_impl"]
       48 GETTABLEKS                       R2 R2 K12 ["resume"]
       50 SETTABLEKS                       R2 R1 K12 ["resume"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["_connections"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["_epochId"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["_epochId"]
        5 GETTABLEKS                       R1 R0 K2 ["_impl"]
        7 GETTABLEKS                       R1 R1 K3 ["setupNewFetchSession"]
        9 CALL                             R1 0 0
       10 GETTABLEKS                       R1 R0 K1 ["_epochId"]
       12 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_epochId"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["fetchUsername"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["fetchUniverseInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["fetchGroupsAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["fetchInventoryFolderReadyAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_9:
        0 DUPTABLE                         R2 K6 [{"ScopeInfo", "RootScope", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["ScopeInfo"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["RootScope"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["PageToken"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K3 ["MaxPageSize"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K4 ["FetchSessionId"]
       16 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K7 ["Type"]
       21 GETUPVAL                         R4 5
       22 GETTABLEKS                       R4 R4 K8 ["ScopeType"]
       24 GETTABLEKS                       R4 R4 K9 ["ProjectPlaces"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+11]
       28 GETUPVAL                         R3 6
       29 GETTABLEKS                       R3 R3 K10 ["_impl"]
       31 GETTABLEKS                       R3 R3 K11 ["fetchPlacesAsync"]
       33 MOVE                             R4 R2
       34 GETUPVAL                         R5 7
       35 GETUPVAL                         R6 8
       36 CALL                             R3 3 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 6
       39 GETTABLEKS                       R3 R3 K10 ["_impl"]
       41 GETTABLEKS                       R3 R3 K12 ["fetchAssetsAsync"]
       43 MOVE                             R4 R2
       44 GETUPVAL                         R5 7
       45 GETUPVAL                         R6 8
       46 CALL                             R3 3 0
       47 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R6 R0 K0 ["getFetchEpochId"]
        2 CALL                             R6 1 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["new"]
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R5
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R6
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 CALL                             R7 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R2 K8 [{"SearchTerm", "AssetTypes", "ScopeInfo", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve", "IncludeFolders"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["SearchTerm"]
        4 SETTABLEKS                       R3 R2 K0 ["SearchTerm"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AssetTypes"]
        9 SETTABLEKS                       R3 R2 K1 ["AssetTypes"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["ScopeInfo"]
       14 SETTABLEKS                       R3 R2 K2 ["ScopeInfo"]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K3 ["PageToken"]
       19 GETUPVAL                         R3 2
       20 SETTABLEKS                       R3 R2 K4 ["MaxPageSize"]
       22 GETUPVAL                         R3 3
       23 SETTABLEKS                       R3 R2 K5 ["FetchSessionId"]
       25 SETTABLEKS                       R0 R2 K6 ["Resolve"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["IncludeFolders"]
       30 SETTABLEKS                       R3 R2 K7 ["IncludeFolders"]
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R3 R3 K9 ["_impl"]
       35 GETTABLEKS                       R3 R3 K10 ["searchAssetsAsync"]
       37 MOVE                             R4 R2
       38 GETUPVAL                         R5 5
       39 GETUPVAL                         R6 6
       40 CALL                             R3 3 0
       41 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R5 R0 K0 ["getFetchEpochId"]
        2 CALL                             R5 1 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K1 ["new"]
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CALL                             R6 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R6 K1 ["fetchAssetInfoAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnAssetPermissionsChanged"]
        6 NAMECALL                         R2 R2 K1 ["Fire"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R7 R7 K1 ["grantAssetsPermissionsAsync"]
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 MOVE                             R12 R5
        9 NEWCLOSURE                       R13 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R6
       13 CALL                             R7 6 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R6 K1 ["checkAssetsPermissionsAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["getThumbnailUriForScope"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["getThumbnailForScopeAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["getThumbnailForItem"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["getThumbnailForItemAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 -1
        8 RETURN                           R4 -1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["getFontFamilyThumbnail"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_22:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["fetchPluginInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_scopesOngoingFetches"]
        2 GETTABLEKS                       R3 R1 K1 ["Uid"]
        4 LOADB                            R4 1
        5 SETTABLE                         R4 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["OnScopesOngoingFetchesChanged"]
        8 GETIMPORT                        R4 K5 [table.clone]
       10 GETTABLEKS                       R5 R0 K0 ["_scopesOngoingFetches"]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K6 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_scopesOngoingFetches"]
        2 GETTABLEKS                       R3 R1 K1 ["Uid"]
        4 LOADNIL                          R4
        5 SETTABLE                         R4 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["OnScopesOngoingFetchesChanged"]
        8 GETIMPORT                        R4 K5 [table.clone]
       10 GETTABLEKS                       R5 R0 K0 ["_scopesOngoingFetches"]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K6 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_scopesOngoingFetches"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_impl"]
        3 GETTABLEKS                       R2 R2 K1 ["fetchFoldersAsync"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_removeOngoingScopeFetch"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_removeOngoingScopeFetch"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R4 R1 K0 ["Scopes"]
        2 GETTABLEKS                       R5 R1 K1 ["Roots"]
        4 MOVE                             R6 R4
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLE                         R11 R5 R9
        9 DUPTABLE                         R12 K5 [{"Scope", "Root", "MaxPageSize"}]
       10 SETTABLEKS                       R10 R12 K2 ["Scope"]
       12 SETTABLEKS                       R11 R12 K3 ["Root"]
       14 GETUPVAL                         R13 0
       15 GETTABLEKS                       R13 R13 K6 ["FolderBreadthMax"]
       17 SETTABLEKS                       R13 R12 K4 ["MaxPageSize"]
       19 MOVE                             R15 R10
       20 NAMECALL                         R13 R0 K7 ["_addOngoingScopeFetch"]
       22 CALL                             R13 2 0
       23 GETUPVAL                         R14 1
       24 CALL                             R14 0 1
       25 JUMPIFNOT                        R14 ; [+9]
       26 GETUPVAL                         R13 2
       27 GETTABLEKS                       R13 R13 K8 ["Networking"]
       29 GETTABLEKS                       R13 R13 K9 ["fetchFoldersAsync"]
       31 MOVE                             R14 R10
       32 MOVE                             R15 R11
       33 CALL                             R13 2 1
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K10 ["new"]
       38 NEWCLOSURE                       R14 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R12
       41 CALL                             R13 1 1
       42 NEWCLOSURE                       R16 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R2
       46 NAMECALL                         R14 R13 K11 ["andThen"]
       48 CALL                             R14 2 1
       49 NEWCLOSURE                       R16 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R3
       53 NAMECALL                         R14 R14 K12 ["catch"]
       55 CALL                             R14 2 0
       56 FORGLOOP                         R6 2 ; [-49]
       58 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["createFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["deleteFolderAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_32:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["updateFolderMetadataAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 -1
        8 RETURN                           R4 -1

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["getItemParentsAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["getFolderMetadataAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["createPlaceAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["removePlaceAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["renamePlaceAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["moveItemsAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["fetchToolboxTechnicalDetailsAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_40:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["fetchAssetPermissionsAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Promise"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R2 K12 ["Util"]
       34 GETTABLEKS                       R7 R6 K13 ["Signal"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R9 K12 ["Util"]
       42 GETTABLEKS                       R9 R9 K15 ["cleanConnections"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K16 ["NetworkingImpl"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETIMPORT                        R11 K1 [script]
       56 GETTABLEKS                       R11 R11 K17 ["NetworkingMock"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K14 ["Src"]
       63 GETTABLEKS                       R12 R12 K18 ["Types"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K14 ["Src"]
       70 GETTABLEKS                       R13 R13 K19 ["Resources"]
       72 GETTABLEKS                       R13 R13 K20 ["Constants"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R0 K14 ["Src"]
       79 GETTABLEKS                       R14 R14 K21 ["Flags"]
       81 GETTABLEKS                       R14 R14 K22 ["getFFlagAmrAssetDetailView"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R15 R0 K14 ["Src"]
       88 GETTABLEKS                       R15 R15 K21 ["Flags"]
       90 GETTABLEKS                       R15 R15 K23 ["getFFlagDebugAmrMockContent"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K14 ["Src"]
       97 GETTABLEKS                       R16 R16 K21 ["Flags"]
       99 GETTABLEKS                       R16 R16 K24 ["getFIntAmrRequestPageSize"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETTABLEKS                       R17 R0 K14 ["Src"]
      106 GETTABLEKS                       R17 R17 K21 ["Flags"]
      108 GETTABLEKS                       R17 R17 K25 ["getFFlagAmrUseAssetManagementNetworking"]
      110 CALL                             R16 1 1
      111 LOADK                            R19 K26 ["Networking"]
      112 NAMECALL                         R17 R4 K27 ["extend"]
      114 CALL                             R17 2 1
      115 MOVE                             R18 R15
      116 CALL                             R18 0 1
      117 DUPCLOSURE                       R19 K28 [PROTO_0]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R17
      123 SETTABLEKS                       R19 R17 K29 ["new"]
      125 DUPCLOSURE                       R19 K30 [PROTO_1]
      126 CAPTURE                          VAL R17
      127 SETTABLEKS                       R19 R17 K31 ["mock"]
      129 DUPCLOSURE                       R19 K32 [PROTO_2]
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R19 R17 K33 ["destroy"]
      133 DUPCLOSURE                       R19 K34 [PROTO_3]
      134 SETTABLEKS                       R19 R17 K35 ["makeFetchRequestsStale"]
      136 DUPCLOSURE                       R19 K36 [PROTO_4]
      137 SETTABLEKS                       R19 R17 K37 ["getFetchEpochId"]
      139 DUPCLOSURE                       R19 K38 [PROTO_5]
      140 SETTABLEKS                       R19 R17 K39 ["fetchUsername"]
      142 DUPCLOSURE                       R19 K40 [PROTO_6]
      143 SETTABLEKS                       R19 R17 K41 ["fetchUniverseInfoAsync"]
      145 DUPCLOSURE                       R19 K42 [PROTO_7]
      146 SETTABLEKS                       R19 R17 K43 ["fetchGroupsAsync"]
      148 DUPCLOSURE                       R19 K44 [PROTO_8]
      149 SETTABLEKS                       R19 R17 K45 ["fetchInventoryFolderReadyAsync"]
      151 DUPCLOSURE                       R19 K46 [PROTO_10]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R11
      155 SETTABLEKS                       R19 R17 K47 ["fetchAssetsAsync"]
      157 DUPCLOSURE                       R19 K48 [PROTO_12]
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R18
      160 SETTABLEKS                       R19 R17 K49 ["searchAssetsAsync"]
      162 DUPCLOSURE                       R19 K50 [PROTO_13]
      163 SETTABLEKS                       R19 R17 K51 ["fetchAssetInfoAsync"]
      165 DUPCLOSURE                       R19 K52 [PROTO_15]
      166 CAPTURE                          VAL R13
      167 SETTABLEKS                       R19 R17 K53 ["grantAssetsPermissionsAsync"]
      169 DUPCLOSURE                       R19 K54 [PROTO_16]
      170 SETTABLEKS                       R19 R17 K55 ["checkAssetsPermissionsAsync"]
      172 DUPCLOSURE                       R19 K56 [PROTO_17]
      173 SETTABLEKS                       R19 R17 K57 ["getThumbnailUriForScope"]
      175 DUPCLOSURE                       R19 K58 [PROTO_18]
      176 SETTABLEKS                       R19 R17 K59 ["getThumbnailForScopeAsync"]
      178 DUPCLOSURE                       R19 K60 [PROTO_19]
      179 SETTABLEKS                       R19 R17 K61 ["getThumbnailForItem"]
      181 DUPCLOSURE                       R19 K62 [PROTO_20]
      182 SETTABLEKS                       R19 R17 K63 ["getThumbnailForItemAsync"]
      184 DUPCLOSURE                       R19 K64 [PROTO_21]
      185 SETTABLEKS                       R19 R17 K65 ["getFontFamilyThumbnail"]
      187 DUPCLOSURE                       R19 K66 [PROTO_22]
      188 SETTABLEKS                       R19 R17 K67 ["fetchPluginInfoAsync"]
      190 DUPCLOSURE                       R19 K68 [PROTO_23]
      191 SETTABLEKS                       R19 R17 K69 ["_addOngoingScopeFetch"]
      193 DUPCLOSURE                       R19 K70 [PROTO_24]
      194 SETTABLEKS                       R19 R17 K71 ["_removeOngoingScopeFetch"]
      196 DUPCLOSURE                       R19 K72 [PROTO_25]
      197 SETTABLEKS                       R19 R17 K73 ["getScopesOngoingFetches"]
      199 DUPCLOSURE                       R19 K74 [PROTO_29]
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R5
      204 SETTABLEKS                       R19 R17 K75 ["fetchFoldersAsync"]
      206 DUPCLOSURE                       R19 K76 [PROTO_30]
      207 SETTABLEKS                       R19 R17 K77 ["createFolderAsync"]
      209 DUPCLOSURE                       R19 K78 [PROTO_31]
      210 SETTABLEKS                       R19 R17 K79 ["deleteFolderAsync"]
      212 DUPCLOSURE                       R19 K80 [PROTO_32]
      213 SETTABLEKS                       R19 R17 K81 ["updateFolderMetadataAsync"]
      215 DUPCLOSURE                       R19 K82 [PROTO_33]
      216 SETTABLEKS                       R19 R17 K83 ["getItemParentsAsync"]
      218 DUPCLOSURE                       R19 K84 [PROTO_34]
      219 SETTABLEKS                       R19 R17 K85 ["getFolderMetadataAsync"]
      221 DUPCLOSURE                       R19 K86 [PROTO_35]
      222 SETTABLEKS                       R19 R17 K87 ["createPlaceAsync"]
      224 DUPCLOSURE                       R19 K88 [PROTO_36]
      225 SETTABLEKS                       R19 R17 K89 ["removePlaceAsync"]
      227 DUPCLOSURE                       R19 K90 [PROTO_37]
      228 SETTABLEKS                       R19 R17 K91 ["renamePlaceAsync"]
      230 DUPCLOSURE                       R19 K92 [PROTO_38]
      231 SETTABLEKS                       R19 R17 K93 ["moveItemsAsync"]
      233 DUPCLOSURE                       R19 K94 [PROTO_39]
      234 SETTABLEKS                       R19 R17 K95 ["fetchToolboxTechnicalDetailsAsync"]
      236 DUPCLOSURE                       R19 K96 [PROTO_40]
      237 SETTABLEKS                       R19 R17 K97 ["fetchAssetPermissionsAsync"]
      239 RETURN                           R17 1
