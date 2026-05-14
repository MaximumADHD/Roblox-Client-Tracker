PROTO_0:
        0 DUPTABLE                         R1 K6 [{"_isMock", "_impl", "_scopesOngoingFetches", "_epochId", "_connections", "OnScopesOngoingFetchesChanged"}]
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
       20 LOADN                            R2 0
       21 SETTABLEKS                       R2 R1 K3 ["_epochId"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K4 ["_connections"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K7 ["new"]
       30 CALL                             R2 0 1
       31 SETTABLEKS                       R2 R1 K5 ["OnScopesOngoingFetchesChanged"]
       33 GETUPVAL                         R4 4
       34 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       36 MOVE                             R3 R1
       37 GETIMPORT                        R2 K9 [setmetatable]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 5
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+9]
       43 GETTABLEKS                       R2 R1 K0 ["_isMock"]
       45 JUMPIFNOT                        R2 ; [+6]
       46 GETTABLEKS                       R2 R1 K1 ["_impl"]
       48 GETTABLEKS                       R2 R2 K10 ["resume"]
       50 SETTABLEKS                       R2 R1 K10 ["resume"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K1 ["_impl"]
       10 GETTABLEKS                       R1 R1 K2 ["resume"]
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
       10 LOADN                            R3 238
       11 SETTABLEKS                       R3 R2 K3 ["MaxPageSize"]
       13 GETUPVAL                         R3 3
       14 SETTABLEKS                       R3 R2 K4 ["FetchSessionId"]
       16 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       18 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K7 ["_impl"]
       23 GETTABLEKS                       R3 R3 K8 ["fetchAssetsAsync"]
       25 MOVE                             R4 R2
       26 GETUPVAL                         R5 5
       27 GETUPVAL                         R6 6
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_11:
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
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K6 ["_impl"]
       18 GETTABLEKS                       R3 R3 K7 ["fetchPlacesAsync"]
       20 MOVE                             R4 R2
       21 GETUPVAL                         R5 4
       22 GETUPVAL                         R6 5
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R6 R0 K0 ["getFetchEpochId"]
        2 CALL                             R6 1 1
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R5
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R6
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 NEWCLOSURE                       R8 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K1 ["all"]
       23 NEWTABLE                         R10 0 2
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K2 ["new"]
       28 NEWCLOSURE                       R12 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CALL                             R11 1 1
       37 MOVE                             R12 R8
       38 CALL                             R12 0 -1
       39 SETLIST                          R10 R11 -1 [1]
       41 CALL                             R9 1 0
       42 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R2 K8 [{"SearchTerm", "AssetType", "ScopeInfo", "PageToken", "MaxPageSize", "FetchSessionId", "Resolve", "IncludeFolders"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["SearchTerm"]
        4 SETTABLEKS                       R3 R2 K0 ["SearchTerm"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AssetType"]
        9 SETTABLEKS                       R3 R2 K1 ["AssetType"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["ScopeInfo"]
       14 SETTABLEKS                       R3 R2 K2 ["ScopeInfo"]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K3 ["PageToken"]
       19 LOADN                            R3 238
       20 SETTABLEKS                       R3 R2 K4 ["MaxPageSize"]
       22 GETUPVAL                         R3 2
       23 SETTABLEKS                       R3 R2 K5 ["FetchSessionId"]
       25 SETTABLEKS                       R0 R2 K6 ["Resolve"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["IncludeFolders"]
       30 SETTABLEKS                       R3 R2 K7 ["IncludeFolders"]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K9 ["_impl"]
       35 GETTABLEKS                       R3 R3 K10 ["searchAssetsAsync"]
       37 MOVE                             R4 R2
       38 GETUPVAL                         R5 4
       39 GETUPVAL                         R6 5
       40 CALL                             R3 3 0
       41 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R5 R0 K0 ["getFetchEpochId"]
        2 CALL                             R5 1 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K1 ["new"]
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R5
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 CALL                             R6 1 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R6 K1 ["fetchAssetInfoAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["grantUniverseUseAssetsPermissions"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_18:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R7 R7 K1 ["grantAssetsPermissionsAsync"]
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 MOVE                             R12 R5
        9 MOVE                             R13 R6
       10 CALL                             R7 6 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R6 K1 ["checkAssetsPermissionsAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["getThumbnailUriForScope"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["getThumbnailForScopeAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["getThumbnailForItem"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["getThumbnailForItemAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 -1
        8 RETURN                           R4 -1

PROTO_24:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R4 K1 ["fetchPluginInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_scopesOngoingFetches"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_impl"]
        3 GETTABLEKS                       R2 R2 K1 ["fetchFoldersAsync"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_removeOngoingScopeFetch"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_removeOngoingScopeFetch"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["createFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R2 K1 ["deleteFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R3 K1 ["updateFolderMetadataAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_35:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R5 R5 K1 ["moveItemsAsync"]
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
       74 GETTABLEKS                       R13 R13 K21 ["getFFlagDebugAmrMockContent"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K13 ["Src"]
       81 GETTABLEKS                       R14 R14 K20 ["Flags"]
       83 GETTABLEKS                       R14 R14 K22 ["getFFlagAmrOrganizationFoundation"]
       85 CALL                             R13 1 1
       86 LOADK                            R16 K23 ["Networking"]
       87 NAMECALL                         R14 R3 K24 ["extend"]
       89 CALL                             R14 2 1
       90 DUPCLOSURE                       R15 K25 [PROTO_0]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R13
       97 SETTABLEKS                       R15 R14 K26 ["new"]
       99 DUPCLOSURE                       R15 K27 [PROTO_1]
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R15 R14 K28 ["mock"]
      104 DUPCLOSURE                       R15 K29 [PROTO_2]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R15 R14 K30 ["destroy"]
      108 DUPCLOSURE                       R15 K31 [PROTO_3]
      109 SETTABLEKS                       R15 R14 K32 ["makeFetchRequestsStale"]
      111 DUPCLOSURE                       R15 K33 [PROTO_4]
      112 SETTABLEKS                       R15 R14 K34 ["getFetchEpochId"]
      114 DUPCLOSURE                       R15 K35 [PROTO_5]
      115 SETTABLEKS                       R15 R14 K36 ["fetchUsername"]
      117 DUPCLOSURE                       R15 K37 [PROTO_6]
      118 SETTABLEKS                       R15 R14 K38 ["fetchUniverseInfoAsync"]
      120 DUPCLOSURE                       R15 K39 [PROTO_7]
      121 SETTABLEKS                       R15 R14 K40 ["fetchGroupsAsync"]
      123 DUPCLOSURE                       R15 K41 [PROTO_8]
      124 SETTABLEKS                       R15 R14 K42 ["fetchInventoryFolderReadyAsync"]
      126 DUPCLOSURE                       R15 K43 [PROTO_13]
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R15 R14 K44 ["fetchAssetsAsync"]
      130 DUPCLOSURE                       R15 K45 [PROTO_15]
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R15 R14 K46 ["searchAssetsAsync"]
      134 DUPCLOSURE                       R15 K47 [PROTO_16]
      135 SETTABLEKS                       R15 R14 K48 ["fetchAssetInfoAsync"]
      137 DUPCLOSURE                       R15 K49 [PROTO_17]
      138 SETTABLEKS                       R15 R14 K50 ["grantUniverseUseAssetsPermissions"]
      140 DUPCLOSURE                       R15 K51 [PROTO_18]
      141 SETTABLEKS                       R15 R14 K52 ["grantAssetsPermissionsAsync"]
      143 DUPCLOSURE                       R15 K53 [PROTO_19]
      144 SETTABLEKS                       R15 R14 K54 ["checkAssetsPermissionsAsync"]
      146 DUPCLOSURE                       R15 K55 [PROTO_20]
      147 SETTABLEKS                       R15 R14 K56 ["getThumbnailUriForScope"]
      149 DUPCLOSURE                       R15 K57 [PROTO_21]
      150 SETTABLEKS                       R15 R14 K58 ["getThumbnailForScopeAsync"]
      152 DUPCLOSURE                       R15 K59 [PROTO_22]
      153 SETTABLEKS                       R15 R14 K60 ["getThumbnailForItem"]
      155 DUPCLOSURE                       R15 K61 [PROTO_23]
      156 SETTABLEKS                       R15 R14 K62 ["getThumbnailForItemAsync"]
      158 DUPCLOSURE                       R15 K63 [PROTO_24]
      159 SETTABLEKS                       R15 R14 K64 ["fetchPluginInfoAsync"]
      161 DUPCLOSURE                       R15 K65 [PROTO_25]
      162 SETTABLEKS                       R15 R14 K66 ["_addOngoingScopeFetch"]
      164 DUPCLOSURE                       R15 K67 [PROTO_26]
      165 SETTABLEKS                       R15 R14 K68 ["_removeOngoingScopeFetch"]
      167 DUPCLOSURE                       R15 K69 [PROTO_27]
      168 SETTABLEKS                       R15 R14 K70 ["getScopesOngoingFetches"]
      170 DUPCLOSURE                       R15 K71 [PROTO_31]
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R4
      173 SETTABLEKS                       R15 R14 K72 ["fetchFoldersAsync"]
      175 DUPCLOSURE                       R15 K73 [PROTO_32]
      176 SETTABLEKS                       R15 R14 K74 ["createFolderAsync"]
      178 DUPCLOSURE                       R15 K75 [PROTO_33]
      179 SETTABLEKS                       R15 R14 K76 ["deleteFolderAsync"]
      181 DUPCLOSURE                       R15 K77 [PROTO_34]
      182 SETTABLEKS                       R15 R14 K78 ["updateFolderMetadataAsync"]
      184 DUPCLOSURE                       R15 K79 [PROTO_35]
      185 SETTABLEKS                       R15 R14 K80 ["moveItemsAsync"]
      187 RETURN                           R14 1
