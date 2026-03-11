PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_updateProgressInfo"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K0 ["_updateProgressInfo"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K11 [{"_isMock", "_impl", "nextPageToken", "nextPlacesPageToken", "_fetchProgressInfo", "_scopesOngoingFetches", "_connections", "OnScopesOngoingFetchesChanged", "OnFetchFinished", "OnFetchProgressChanged", "OnFetchProgressInfoChanged"}]
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
       16 LOADK                            R2 K12 [""]
       17 SETTABLEKS                       R2 R1 K2 ["nextPageToken"]
       19 LOADK                            R2 K12 [""]
       20 SETTABLEKS                       R2 R1 K3 ["nextPlacesPageToken"]
       22 DUPTABLE                         R2 K15 [{"FetchProgress", "IsLoading"}]
       23 LOADN                            R3 0
       24 SETTABLEKS                       R3 R2 K13 ["FetchProgress"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K14 ["IsLoading"]
       29 SETTABLEKS                       R2 R1 K4 ["_fetchProgressInfo"]
       31 NEWTABLE                         R2 0 0
       33 SETTABLEKS                       R2 R1 K5 ["_scopesOngoingFetches"]
       35 NEWTABLE                         R2 0 0
       37 SETTABLEKS                       R2 R1 K6 ["_connections"]
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R2 R3 K16 ["new"]
       42 CALL                             R2 0 1
       43 SETTABLEKS                       R2 R1 K7 ["OnScopesOngoingFetchesChanged"]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R2 R3 K16 ["new"]
       48 CALL                             R2 0 1
       49 SETTABLEKS                       R2 R1 K8 ["OnFetchFinished"]
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R2 R3 K16 ["new"]
       54 CALL                             R2 0 1
       55 SETTABLEKS                       R2 R1 K9 ["OnFetchProgressChanged"]
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R2 R3 K16 ["new"]
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R1 K10 ["OnFetchProgressInfoChanged"]
       63 GETUPVAL                         R4 4
       64 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       66 MOVE                             R3 R1
       67 GETIMPORT                        R2 K18 [setmetatable]
       69 CALL                             R2 2 0
       70 GETUPVAL                         R2 5
       71 CALL                             R2 0 1
       72 JUMPIFNOT                        R2 ; [+9]
       73 GETTABLEKS                       R2 R1 K0 ["_isMock"]
       75 JUMPIFNOT                        R2 ; [+6]
       76 GETTABLEKS                       R3 R1 K1 ["_impl"]
       78 GETTABLEKS                       R2 R3 K19 ["resume"]
       80 SETTABLEKS                       R2 R1 K19 ["resume"]
       82 GETUPVAL                         R2 6
       83 CALL                             R2 0 1
       84 JUMPIF                           R2 ; [+26]
       85 GETTABLEKS                       R3 R1 K6 ["_connections"]
       87 GETTABLEKS                       R4 R1 K9 ["OnFetchProgressChanged"]
       89 NEWCLOSURE                       R6 P0
       90 CAPTURE                          VAL R1
       91 NAMECALL                         R4 R4 K20 ["Connect"]
       93 CALL                             R4 2 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R2 K23 [table.insert]
       97 CALL                             R2 -1 0
       98 GETTABLEKS                       R3 R1 K6 ["_connections"]
      100 GETTABLEKS                       R4 R1 K8 ["OnFetchFinished"]
      102 NEWCLOSURE                       R6 P1
      103 CAPTURE                          VAL R1
      104 NAMECALL                         R4 R4 K20 ["Connect"]
      106 CALL                             R4 2 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R2 K23 [table.insert]
      110 CALL                             R2 -1 0
      111 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["_connections"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["Deprecated when FFlagAmrUpdatedItemsCache is enabled"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R0 K3 ["_fetchProgressInfo"]
       11 JUMPIFEQKNIL                     R1 ; [+3]
       13 MOVE                             R4 R1
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R3 K4 ["FetchProgress"]
       17 SETTABLEKS                       R4 R3 K4 ["FetchProgress"]
       19 JUMPIFEQKNIL                     R2 ; [+3]
       21 MOVE                             R4 R2
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R4 R3 K5 ["IsLoading"]
       25 SETTABLEKS                       R4 R3 K5 ["IsLoading"]
       27 GETTABLEKS                       R4 R0 K6 ["OnFetchProgressInfoChanged"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K7 ["copy"]
       32 MOVE                             R7 R3
       33 CALL                             R6 1 -1
       34 NAMECALL                         R4 R4 K8 ["Fire"]
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_fetchProgressInfo"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Deprecated when FFlagAmrUpdatedItemsCache is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 LOADN                            R3 0
       10 LOADB                            R4 1
       11 NAMECALL                         R1 R0 K3 ["_updateProgressInfo"]
       13 CALL                             R1 3 0
       14 GETTABLEKS                       R2 R0 K4 ["_impl"]
       16 GETTABLEKS                       R1 R2 K5 ["setupNewFetchSession"]
       18 CALL                             R1 0 -1
       19 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 LOADN                            R3 0
        4 LOADB                            R4 0
        5 NAMECALL                         R1 R0 K0 ["_updateProgressInfo"]
        7 CALL                             R1 3 0
        8 GETTABLEKS                       R2 R0 K1 ["_impl"]
       10 GETTABLEKS                       R1 R2 K2 ["setupNewFetchSession"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["fetchUsername"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["fetchUniverseInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["fetchGroupsAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R3 ; [+4]
        1 GETUPVAL                         R4 0
        2 SETTABLEKS                       R3 R4 K0 ["nextPageToken"]
        4 JUMP                             ; [+4]
        5 GETUPVAL                         R4 0
        6 LOADK                            R5 K1 [""]
        7 SETTABLEKS                       R5 R4 K0 ["nextPageToken"]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R2 K6 [{"ScopeInfo", "PageToken", "PlacesPageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["ScopeInfo"]
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 GETUPVAL                         R3 2
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K7 ["nextPageToken"]
       12 SETTABLEKS                       R3 R2 K1 ["PageToken"]
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADNIL                          R3
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K8 ["nextPlacesPageToken"]
       22 SETTABLEKS                       R3 R2 K2 ["PlacesPageToken"]
       24 LOADN                            R3 238
       25 SETTABLEKS                       R3 R2 K3 ["MaxPageSize"]
       27 GETUPVAL                         R3 4
       28 SETTABLEKS                       R3 R2 K4 ["FetchSessionId"]
       30 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       32 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U5
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R5 R6 K9 ["_impl"]
       40 GETTABLEKS                       R4 R5 K10 ["fetchAssetsAsync"]
       42 MOVE                             R5 R2
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R6 R7 K11 ["OnFetchProgressChanged"]
       46 GETUPVAL                         R8 1
       47 CALL                             R8 0 1
       48 JUMPIFNOT                        R8 ; [+2]
       49 GETUPVAL                         R7 5
       50 JUMP                             ; [+1]
       51 MOVE                             R7 R3
       52 GETUPVAL                         R8 6
       53 CALL                             R4 4 0
       54 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
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

PROTO_15:
        0 JUMPIFNOT                        R3 ; [+4]
        1 GETUPVAL                         R4 0
        2 SETTABLEKS                       R3 R4 K0 ["nextPlacesPageToken"]
        4 JUMP                             ; [+4]
        5 GETUPVAL                         R4 0
        6 LOADK                            R5 K1 [""]
        7 SETTABLEKS                       R5 R4 K0 ["nextPlacesPageToken"]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R2 K6 [{"ScopeInfo", "PageToken", "PlacesPageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["ScopeInfo"]
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 GETUPVAL                         R3 2
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K7 ["nextPageToken"]
       12 SETTABLEKS                       R3 R2 K1 ["PageToken"]
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADNIL                          R3
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K8 ["nextPlacesPageToken"]
       22 SETTABLEKS                       R3 R2 K2 ["PlacesPageToken"]
       24 LOADN                            R3 238
       25 SETTABLEKS                       R3 R2 K3 ["MaxPageSize"]
       27 GETUPVAL                         R3 4
       28 SETTABLEKS                       R3 R2 K4 ["FetchSessionId"]
       30 SETTABLEKS                       R0 R2 K5 ["Resolve"]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K9 ["_impl"]
       38 GETTABLEKS                       R4 R5 K10 ["fetchPlacesAsync"]
       40 MOVE                             R5 R2
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R6 R7 K11 ["OnFetchProgressChanged"]
       44 GETUPVAL                         R8 1
       45 CALL                             R8 0 1
       46 JUMPIFNOT                        R8 ; [+2]
       47 GETUPVAL                         R7 5
       48 JUMP                             ; [+1]
       49 MOVE                             R7 R3
       50 GETUPVAL                         R8 6
       51 CALL                             R4 4 0
       52 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIF                           R1 ; [+2]
        2 GETTABLEN                        R1 R0 2
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["OnFetchProgressChanged"]
       11 LOADN                            R3 1
       12 LOADB                            R4 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K1 ["Uid"]
       16 NAMECALL                         R1 R1 K2 ["Fire"]
       18 CALL                             R1 4 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K3 ["OnFetchFinished"]
       23 NAMECALL                         R1 R1 K2 ["Fire"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R5 R6 K1 ["_fetchScopeId"]
        4 GETUPVAL                         R6 0
        5 CALL                             R6 0 1
        6 JUMPIF                           R6 ; [+4]
        7 NAMECALL                         R6 R0 K2 ["_setupNewFetchSession"]
        9 CALL                             R6 1 1
       10 MOVE                             R5 R6
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R5
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          REF R5
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K3 ["all"]
       32 NEWTABLE                         R9 0 2
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R10 R11 K4 ["new"]
       37 NEWCLOSURE                       R11 P2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CALL                             R10 1 1
       46 MOVE                             R11 R7
       47 CALL                             R11 0 -1
       48 SETLIST                          R9 R10 -1 [1]
       50 CALL                             R8 1 1
       51 NEWCLOSURE                       R10 P3
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R8 R8 K5 ["andThen"]
       57 CALL                             R8 2 0
       58 CLOSEUPVALS                      R5
       59 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+9]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R2 R3 K0 ["nextPageToken"]
        7 JUMP                             ; [+4]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K1 [""]
       10 SETTABLEKS                       R4 R3 K0 ["nextPageToken"]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 LOADNIL                          R6
       16 MOVE                             R7 R2
       17 CALL                             R3 4 0
       18 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R2 K8 [{"SearchTerm", "AssetType", "ScopeInfo", "PageToken", "PlacesPageToken", "MaxPageSize", "FetchSessionId", "Resolve"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["SearchTerm"]
        4 SETTABLEKS                       R3 R2 K0 ["SearchTerm"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["AssetType"]
        9 SETTABLEKS                       R3 R2 K1 ["AssetType"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["ScopeInfo"]
       14 SETTABLEKS                       R3 R2 K2 ["ScopeInfo"]
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+2]
       19 GETUPVAL                         R3 2
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K9 ["nextPageToken"]
       24 SETTABLEKS                       R3 R2 K3 ["PageToken"]
       26 GETUPVAL                         R4 1
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+2]
       29 LOADNIL                          R3
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R3 R4 K10 ["nextPlacesPageToken"]
       34 SETTABLEKS                       R3 R2 K4 ["PlacesPageToken"]
       36 LOADN                            R3 238
       37 SETTABLEKS                       R3 R2 K5 ["MaxPageSize"]
       39 GETUPVAL                         R3 4
       40 SETTABLEKS                       R3 R2 K6 ["FetchSessionId"]
       42 SETTABLEKS                       R0 R2 K7 ["Resolve"]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R4 R5 K11 ["_impl"]
       47 GETTABLEKS                       R3 R4 K12 ["searchAssetsAsync"]
       49 MOVE                             R4 R2
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R5 R6 K13 ["OnFetchProgressChanged"]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U5
       57 GETUPVAL                         R7 6
       58 CALL                             R3 4 0
       59 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["OnFetchProgressChanged"]
        8 LOADN                            R3 1
        9 LOADB                            R4 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K1 ["ScopeInfo"]
       13 GETTABLEKS                       R5 R6 K2 ["Uid"]
       15 NAMECALL                         R1 R1 K3 ["Fire"]
       17 CALL                             R1 4 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K4 ["OnFetchFinished"]
       22 NAMECALL                         R1 R1 K3 ["Fire"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R6 R0 K0 ["_impl"]
        2 GETTABLEKS                       R5 R6 K1 ["_fetchScopeId"]
        4 GETUPVAL                         R6 0
        5 CALL                             R6 0 1
        6 JUMPIF                           R6 ; [+4]
        7 NAMECALL                         R6 R0 K2 ["_setupNewFetchSession"]
        9 CALL                             R6 1 1
       10 MOVE                             R5 R6
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K3 ["new"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R5
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CALL                             R6 1 1
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R6 R6 K4 ["andThen"]
       29 CALL                             R6 2 0
       30 CLOSEUPVALS                      R5
       31 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R7 K1 ["fetchAssetInfoAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["grantUniverseUseAssetsPermissions"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R7 R0 K0 ["_impl"]
        2 GETTABLEKS                       R6 R7 K1 ["checkAssetsPermissionsAsync"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 MOVE                             R11 R5
        9 CALL                             R6 5 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["getThumbnailUriForScope"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_29:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["getThumbnailForScopeAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["getThumbnailForItem"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_31:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["getThumbnailForItemAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 -1
        8 RETURN                           R4 -1

PROTO_32:
        0 GETTABLEKS                       R5 R0 K0 ["_impl"]
        2 GETTABLEKS                       R4 R5 K1 ["fetchPluginInfoAsync"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_scopesOngoingFetches"]
        2 RETURN                           R1 1

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Scopes"]
        4 NAMECALL                         R1 R1 K1 ["_removeOngoingScopeFetch"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["createFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_41:
        0 GETTABLEKS                       R3 R0 K0 ["_impl"]
        2 GETTABLEKS                       R2 R3 K1 ["deleteFolderAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_42:
        0 GETTABLEKS                       R4 R0 K0 ["_impl"]
        2 GETTABLEKS                       R3 R4 K1 ["updateFolderMetadataAsync"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_43:
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
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Dash"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R1 K12 ["Util"]
       34 GETTABLEKS                       R7 R6 K13 ["Signal"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R11 R0 K14 ["Src"]
       40 GETTABLEKS                       R10 R11 K12 ["Util"]
       42 GETTABLEKS                       R9 R10 K15 ["cleanConnections"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R11 K1 [script]
       49 GETTABLEKS                       R10 R11 K16 ["NetworkingImpl"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R11 R12 K17 ["NetworkingMock"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R13 R0 K14 ["Src"]
       63 GETTABLEKS                       R12 R13 K18 ["Types"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R15 R0 K14 ["Src"]
       70 GETTABLEKS                       R14 R15 K19 ["Flags"]
       72 GETTABLEKS                       R13 R14 K20 ["getFFlagDebugAmrMockContent"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R16 R0 K14 ["Src"]
       79 GETTABLEKS                       R15 R16 K19 ["Flags"]
       81 GETTABLEKS                       R14 R15 K21 ["getFFlagAmrOrganizationFoundation"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R17 R0 K14 ["Src"]
       88 GETTABLEKS                       R16 R17 K19 ["Flags"]
       90 GETTABLEKS                       R15 R16 K22 ["getFFlagAmrUpdatedItemsCache"]
       92 CALL                             R14 1 1
       93 LOADK                            R17 K23 ["Networking"]
       94 NAMECALL                         R15 R3 K24 ["extend"]
       96 CALL                             R15 2 1
       97 DUPCLOSURE                       R16 K25 [PROTO_2]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R14
      105 SETTABLEKS                       R16 R15 K26 ["new"]
      107 DUPCLOSURE                       R16 K27 [PROTO_3]
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R13
      110 SETTABLEKS                       R16 R15 K28 ["mock"]
      112 DUPCLOSURE                       R16 K29 [PROTO_4]
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R16 R15 K30 ["destroy"]
      116 DUPCLOSURE                       R16 K31 [PROTO_5]
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R16 R15 K32 ["_updateProgressInfo"]
      121 DUPCLOSURE                       R16 K33 [PROTO_6]
      122 SETTABLEKS                       R16 R15 K34 ["getProgressInfo"]
      124 DUPCLOSURE                       R16 K35 [PROTO_7]
      125 CAPTURE                          VAL R14
      126 SETTABLEKS                       R16 R15 K36 ["_setupNewFetchSession"]
      128 DUPCLOSURE                       R16 K37 [PROTO_8]
      129 CAPTURE                          VAL R14
      130 SETTABLEKS                       R16 R15 K38 ["makeFetchRequestsStale"]
      132 DUPCLOSURE                       R16 K39 [PROTO_9]
      133 SETTABLEKS                       R16 R15 K40 ["fetchUsername"]
      135 DUPCLOSURE                       R16 K41 [PROTO_10]
      136 SETTABLEKS                       R16 R15 K42 ["fetchUniverseInfoAsync"]
      138 DUPCLOSURE                       R16 K43 [PROTO_11]
      139 SETTABLEKS                       R16 R15 K44 ["fetchGroupsAsync"]
      141 DUPCLOSURE                       R16 K45 [PROTO_19]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R16 R15 K46 ["fetchAssetsAsync"]
      146 DUPCLOSURE                       R16 K47 [PROTO_23]
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R16 R15 K48 ["searchAssetsAsync"]
      151 DUPCLOSURE                       R16 K49 [PROTO_24]
      152 SETTABLEKS                       R16 R15 K50 ["fetchAssetInfoAsync"]
      154 DUPCLOSURE                       R16 K51 [PROTO_25]
      155 SETTABLEKS                       R16 R15 K52 ["grantUniverseUseAssetsPermissions"]
      157 DUPCLOSURE                       R16 K53 [PROTO_26]
      158 SETTABLEKS                       R16 R15 K54 ["grantAssetsPermissionsAsync"]
      160 DUPCLOSURE                       R16 K55 [PROTO_27]
      161 SETTABLEKS                       R16 R15 K56 ["checkAssetsPermissionsAsync"]
      163 DUPCLOSURE                       R16 K57 [PROTO_28]
      164 SETTABLEKS                       R16 R15 K58 ["getThumbnailUriForScope"]
      166 DUPCLOSURE                       R16 K59 [PROTO_29]
      167 SETTABLEKS                       R16 R15 K60 ["getThumbnailForScopeAsync"]
      169 DUPCLOSURE                       R16 K61 [PROTO_30]
      170 SETTABLEKS                       R16 R15 K62 ["getThumbnailForItem"]
      172 DUPCLOSURE                       R16 K63 [PROTO_31]
      173 SETTABLEKS                       R16 R15 K64 ["getThumbnailForItemAsync"]
      175 DUPCLOSURE                       R16 K65 [PROTO_32]
      176 SETTABLEKS                       R16 R15 K66 ["fetchPluginInfoAsync"]
      178 DUPCLOSURE                       R16 K67 [PROTO_33]
      179 SETTABLEKS                       R16 R15 K68 ["_addOngoingScopeFetch"]
      181 DUPCLOSURE                       R16 K69 [PROTO_34]
      182 SETTABLEKS                       R16 R15 K70 ["_removeOngoingScopeFetch"]
      184 DUPCLOSURE                       R16 K71 [PROTO_35]
      185 SETTABLEKS                       R16 R15 K72 ["getScopesOngoingFetches"]
      187 DUPCLOSURE                       R16 K73 [PROTO_39]
      188 CAPTURE                          VAL R4
      189 SETTABLEKS                       R16 R15 K74 ["fetchFoldersAsync"]
      191 DUPCLOSURE                       R16 K75 [PROTO_40]
      192 SETTABLEKS                       R16 R15 K76 ["createFolderAsync"]
      194 DUPCLOSURE                       R16 K77 [PROTO_41]
      195 SETTABLEKS                       R16 R15 K78 ["deleteFolderAsync"]
      197 DUPCLOSURE                       R16 K79 [PROTO_42]
      198 SETTABLEKS                       R16 R15 K80 ["updateFolderMetadataAsync"]
      200 DUPCLOSURE                       R16 K81 [PROTO_43]
      201 SETTABLEKS                       R16 R15 K82 ["moveItemsAsync"]
      203 RETURN                           R15 1
