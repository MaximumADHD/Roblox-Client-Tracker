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
       23 GETUPVAL                         R13 1
       24 GETTABLEKS                       R13 R13 K8 ["new"]
       26 NEWCLOSURE                       R14 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R12
       29 CALL                             R13 1 1
       30 NEWCLOSURE                       R15 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R10
       33 CAPTURE                          VAL R2
       34 NAMECALL                         R13 R13 K9 ["andThen"]
       36 CALL                             R13 2 1
       37 NEWCLOSURE                       R15 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R10
       40 CAPTURE                          VAL R3
       41 NAMECALL                         R13 R13 K10 ["catch"]
       43 CALL                             R13 2 0
       44 FORGLOOP                         R6 2 ; [-37]
       46 RETURN                           R0 0

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
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Promise"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R6 R5 K12 ["Signal"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K11 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["cleanConnections"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R9 R9 K15 ["NetworkingImpl"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K16 ["NetworkingMock"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K13 ["Src"]
       56 GETTABLEKS                       R11 R11 K17 ["Types"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K13 ["Src"]
       63 GETTABLEKS                       R12 R12 K18 ["Resources"]
       65 GETTABLEKS                       R12 R12 K19 ["Constants"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K13 ["Src"]
       72 GETTABLEKS                       R13 R13 K20 ["Flags"]
       74 GETTABLEKS                       R13 R13 K21 ["getFFlagAmrAssetDetailView"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K13 ["Src"]
       81 GETTABLEKS                       R14 R14 K20 ["Flags"]
       83 GETTABLEKS                       R14 R14 K22 ["getFFlagDebugAmrMockContent"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K13 ["Src"]
       90 GETTABLEKS                       R15 R15 K20 ["Flags"]
       92 GETTABLEKS                       R15 R15 K23 ["getFIntAmrRequestPageSize"]
       94 CALL                             R14 1 1
       95 LOADK                            R17 K24 ["Networking"]
       96 NAMECALL                         R15 R3 K25 ["extend"]
       98 CALL                             R15 2 1
       99 MOVE                             R16 R14
      100 CALL                             R16 0 1
      101 DUPCLOSURE                       R17 K26 [PROTO_0]
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R15
      107 SETTABLEKS                       R17 R15 K27 ["new"]
      109 DUPCLOSURE                       R17 K28 [PROTO_1]
      110 CAPTURE                          VAL R15
      111 SETTABLEKS                       R17 R15 K29 ["mock"]
      113 DUPCLOSURE                       R17 K30 [PROTO_2]
      114 CAPTURE                          VAL R7
      115 SETTABLEKS                       R17 R15 K31 ["destroy"]
      117 DUPCLOSURE                       R17 K32 [PROTO_3]
      118 SETTABLEKS                       R17 R15 K33 ["makeFetchRequestsStale"]
      120 DUPCLOSURE                       R17 K34 [PROTO_4]
      121 SETTABLEKS                       R17 R15 K35 ["getFetchEpochId"]
      123 DUPCLOSURE                       R17 K36 [PROTO_5]
      124 SETTABLEKS                       R17 R15 K37 ["fetchUsername"]
      126 DUPCLOSURE                       R17 K38 [PROTO_6]
      127 SETTABLEKS                       R17 R15 K39 ["fetchUniverseInfoAsync"]
      129 DUPCLOSURE                       R17 K40 [PROTO_7]
      130 SETTABLEKS                       R17 R15 K41 ["fetchGroupsAsync"]
      132 DUPCLOSURE                       R17 K42 [PROTO_8]
      133 SETTABLEKS                       R17 R15 K43 ["fetchInventoryFolderReadyAsync"]
      135 DUPCLOSURE                       R17 K44 [PROTO_10]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R10
      139 SETTABLEKS                       R17 R15 K45 ["fetchAssetsAsync"]
      141 DUPCLOSURE                       R17 K46 [PROTO_12]
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R16
      144 SETTABLEKS                       R17 R15 K47 ["searchAssetsAsync"]
      146 DUPCLOSURE                       R17 K48 [PROTO_13]
      147 SETTABLEKS                       R17 R15 K49 ["fetchAssetInfoAsync"]
      149 DUPCLOSURE                       R17 K50 [PROTO_15]
      150 CAPTURE                          VAL R12
      151 SETTABLEKS                       R17 R15 K51 ["grantAssetsPermissionsAsync"]
      153 DUPCLOSURE                       R17 K52 [PROTO_16]
      154 SETTABLEKS                       R17 R15 K53 ["checkAssetsPermissionsAsync"]
      156 DUPCLOSURE                       R17 K54 [PROTO_17]
      157 SETTABLEKS                       R17 R15 K55 ["getThumbnailUriForScope"]
      159 DUPCLOSURE                       R17 K56 [PROTO_18]
      160 SETTABLEKS                       R17 R15 K57 ["getThumbnailForScopeAsync"]
      162 DUPCLOSURE                       R17 K58 [PROTO_19]
      163 SETTABLEKS                       R17 R15 K59 ["getThumbnailForItem"]
      165 DUPCLOSURE                       R17 K60 [PROTO_20]
      166 SETTABLEKS                       R17 R15 K61 ["getThumbnailForItemAsync"]
      168 DUPCLOSURE                       R17 K62 [PROTO_21]
      169 SETTABLEKS                       R17 R15 K63 ["getFontFamilyThumbnail"]
      171 DUPCLOSURE                       R17 K64 [PROTO_22]
      172 SETTABLEKS                       R17 R15 K65 ["fetchPluginInfoAsync"]
      174 DUPCLOSURE                       R17 K66 [PROTO_23]
      175 SETTABLEKS                       R17 R15 K67 ["_addOngoingScopeFetch"]
      177 DUPCLOSURE                       R17 K68 [PROTO_24]
      178 SETTABLEKS                       R17 R15 K69 ["_removeOngoingScopeFetch"]
      180 DUPCLOSURE                       R17 K70 [PROTO_25]
      181 SETTABLEKS                       R17 R15 K71 ["getScopesOngoingFetches"]
      183 DUPCLOSURE                       R17 K72 [PROTO_29]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R17 R15 K73 ["fetchFoldersAsync"]
      188 DUPCLOSURE                       R17 K74 [PROTO_30]
      189 SETTABLEKS                       R17 R15 K75 ["createFolderAsync"]
      191 DUPCLOSURE                       R17 K76 [PROTO_31]
      192 SETTABLEKS                       R17 R15 K77 ["deleteFolderAsync"]
      194 DUPCLOSURE                       R17 K78 [PROTO_32]
      195 SETTABLEKS                       R17 R15 K79 ["updateFolderMetadataAsync"]
      197 DUPCLOSURE                       R17 K80 [PROTO_33]
      198 SETTABLEKS                       R17 R15 K81 ["getItemParentsAsync"]
      200 DUPCLOSURE                       R17 K82 [PROTO_34]
      201 SETTABLEKS                       R17 R15 K83 ["getFolderMetadataAsync"]
      203 DUPCLOSURE                       R17 K84 [PROTO_35]
      204 SETTABLEKS                       R17 R15 K85 ["createPlaceAsync"]
      206 DUPCLOSURE                       R17 K86 [PROTO_36]
      207 SETTABLEKS                       R17 R15 K87 ["removePlaceAsync"]
      209 DUPCLOSURE                       R17 K88 [PROTO_37]
      210 SETTABLEKS                       R17 R15 K89 ["renamePlaceAsync"]
      212 DUPCLOSURE                       R17 K90 [PROTO_38]
      213 SETTABLEKS                       R17 R15 K91 ["moveItemsAsync"]
      215 DUPCLOSURE                       R17 K92 [PROTO_39]
      216 SETTABLEKS                       R17 R15 K93 ["fetchToolboxTechnicalDetailsAsync"]
      218 DUPCLOSURE                       R17 K94 [PROTO_40]
      219 SETTABLEKS                       R17 R15 K95 ["fetchAssetPermissionsAsync"]
      221 RETURN                           R15 1
