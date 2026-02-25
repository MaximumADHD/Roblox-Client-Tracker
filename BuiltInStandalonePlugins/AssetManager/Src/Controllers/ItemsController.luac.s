PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R9 0
        5 GETTABLE                         R8 R9 R5
        6 LOADK                            R10 K0 ["No filter function for field %*"]
        7 MOVE                             R12 R5
        8 NAMECALL                         R10 R10 K1 ["format"]
       10 CALL                             R10 2 1
       11 MOVE                             R9 R10
       12 FASTCALL2                        ASSERT R8 R9 ; [+3]
       14 GETIMPORT                        R7 K3 [assert]
       16 CALL                             R7 2 0
       17 GETUPVAL                         R8 0
       18 GETTABLE                         R7 R8 R5
       19 MOVE                             R8 R0
       20 MOVE                             R9 R6
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+2]
       23 LOADB                            R7 0
       24 RETURN                           R7 1
       25 FORGLOOP                         R2 2 ; [-22]
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["getFilteredItemsList is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K4 [next]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+7]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K5 ["values"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 NEWTABLE                         R2 0 0
       23 MOVE                             R3 R0
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETUPVAL                         R8 2
       28 MOVE                             R9 R7
       29 MOVE                             R10 R1
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R7
       36 GETIMPORT                        R8 K8 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-13]
       41 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+22]
        4 GETTABLEKS                       R2 R0 K1 ["SearchRank"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETTABLEKS                       R2 R1 K1 ["SearchRank"]
        9 JUMPIFNOT                        R2 ; [+15]
       10 GETTABLEKS                       R2 R0 K1 ["SearchRank"]
       12 GETTABLEKS                       R3 R1 K1 ["SearchRank"]
       14 JUMPIFEQ                         R2 R3 ; [+10]
       16 GETTABLEKS                       R3 R0 K1 ["SearchRank"]
       18 GETTABLEKS                       R4 R1 K1 ["SearchRank"]
       20 JUMPIFLT                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 0
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R9 R6 K2 ["Key"]
       32 GETTABLE                         R7 R8 R9
       33 MOVE                             R8 R0
       34 MOVE                             R9 R1
       35 GETTABLEKS                       R10 R6 K3 ["IsAscending"]
       37 CALL                             R7 3 1
       38 JUMPIFEQKN                       R7 K0 [0] ; [+6]
       40 JUMPIFEQKN                       R7 K4 [1] ; [+2]
       42 LOADB                            R8 0 +1
       43 LOADB                            R8 1
       44 RETURN                           R8 1
       45 FORGLOOP                         R2 2 ; [-17]
       47 LOADB                            R2 0
       48 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["sortItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 GETIMPORT                        R3 K5 [table.sort]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["generateRenderItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 GETUPVAL                         R6 0
       14 CALL                             R6 0 1
       15 NOT                              R5 R6
       16 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       18 LOADK                            R6 K3 ["sortItems is deprecated when using ItemsCache"]
       19 GETIMPORT                        R4 K2 [assert]
       21 CALL                             R4 2 0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 GETIMPORT                        R5 K6 [table.sort]
       27 MOVE                             R6 R3
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["getAssetsToInsert_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 GETTABLE                         R10 R1 R6
       17 GETTABLEKS                       R9 R10 K3 ["AssetType"]
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+2]
       21 LOADB                            R8 1
       22 SETTABLE                         R8 R2 R6
       23 FORGLOOP                         R3 2 ; [-9]
       25 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 MOVE                             R7 R0
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R14 R1 K0 ["Uid"]
       14 MOVE                             R15 R10
       15 NAMECALL                         R12 R2 K1 ["getItem"]
       17 CALL                             R12 3 1
       18 JUMPIF                           R12 ; [+9]
       19 GETUPVAL                         R13 0
       20 LOADK                            R15 K2 ["AssetInfo not found in cache for path: %*"]
       21 MOVE                             R17 R10
       22 NAMECALL                         R15 R15 K3 ["format"]
       24 CALL                             R15 2 1
       25 MOVE                             R14 R15
       26 CALL                             R13 1 0
       27 JUMP                             ; [+39]
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R14 R12 K4 ["AssetType"]
       31 CALL                             R13 1 1
       32 JUMPIFNOT                        R13 ; [+34]
       33 GETTABLEKS                       R15 R12 K5 ["AssetId"]
       35 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       37 MOVE                             R14 R3
       38 GETIMPORT                        R13 K8 [table.insert]
       40 CALL                             R13 2 0
       41 MOVE                             R14 R4
       42 GETUPVAL                         R15 2
       43 GETTABLEKS                       R16 R12 K4 ["AssetType"]
       45 CALL                             R15 1 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R13 K8 [table.insert]
       49 CALL                             R13 -1 0
       50 GETTABLEKS                       R15 R12 K9 ["DisplayName"]
       52 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       54 MOVE                             R14 R5
       55 GETIMPORT                        R13 K8 [table.insert]
       57 CALL                             R13 2 0
       58 GETTABLEKS                       R16 R12 K11 ["IsPackage"]
       60 ORK                              R15 R16 K10 [False]
       61 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       63 MOVE                             R14 R6
       64 GETIMPORT                        R13 K8 [table.insert]
       66 CALL                             R13 2 0
       67 FORGLOOP                         R7 2 ; [-56]
       69 DUPTABLE                         R7 K15 [{"Ids", "Types", "Names", "IsPackage"}]
       70 SETTABLEKS                       R3 R7 K12 ["Ids"]
       72 SETTABLEKS                       R4 R7 K13 ["Types"]
       74 SETTABLEKS                       R5 R7 K14 ["Names"]
       76 SETTABLEKS                       R6 R7 K11 ["IsPackage"]
       78 RETURN                           R7 1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["fetchAssetsCallback is deprecated when using ItemsCache"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["_destroyed"]
       15 JUMPIFNOT                        R3 ; [+1]
       16 RETURN                           R0 0
       17 MOVE                             R3 R0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETUPVAL                         R8 0
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+16]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K4 ["_itemsCache"]
       27 MOVE                             R10 R7
       28 GETUPVAL                         R13 2
       29 GETTABLEKS                       R12 R13 K5 ["_pluginController"]
       31 NAMECALL                         R12 R12 K6 ["getCurrentScope"]
       33 CALL                             R12 1 1
       34 GETTABLEKS                       R11 R12 K7 ["Uid"]
       36 NAMECALL                         R8 R8 K8 ["addItem"]
       38 CALL                             R8 3 0
       39 JUMP                             ; [+6]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K9 ["_items_DEPRECATED"]
       43 GETTABLEKS                       R9 R7 K10 ["AssetId"]
       45 SETTABLE                         R7 R8 R9
       46 FORGLOOP                         R3 2 ; [-26]
       48 LOADB                            R3 0
       49 MOVE                             R4 R1
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 GETUPVAL                         R11 2
       54 GETTABLEKS                       R10 R11 K11 ["_creators"]
       56 GETTABLE                         R9 R10 R7
       57 JUMPIF                           R9 ; [+4]
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R9 R10 K11 ["_creators"]
       61 SETTABLE                         R8 R9 R7
       62 LOADB                            R3 1
       63 FORGLOOP                         R4 2 ; [-11]
       65 JUMPIFNOT                        R3 ; [+10]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R4 R5 K12 ["OnCreatorsChanged"]
       69 GETUPVAL                         R6 2
       70 NAMECALL                         R6 R6 K13 ["getCreators"]
       72 CALL                             R6 1 -1
       73 NAMECALL                         R4 R4 K14 ["Fire"]
       75 CALL                             R4 -1 0
       76 GETUPVAL                         R4 2
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R6 R7 K9 ["_items_DEPRECATED"]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R7 R8 K15 ["_sorts"]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R8 R9 K16 ["_filters"]
       86 GETUPVAL                         R11 0
       87 CALL                             R11 0 1
       88 NOT                              R10 R11
       89 FASTCALL2K                       ASSERT R10 K17 ; [+4]
       91 LOADK                            R11 K17 ["generateRenderItems is deprecated when using ItemsCache"]
       92 GETIMPORT                        R9 K2 [assert]
       94 CALL                             R9 2 0
       95 GETUPVAL                         R9 3
       96 MOVE                             R10 R6
       97 MOVE                             R11 R8
       98 CALL                             R9 2 1
       99 GETUPVAL                         R12 0
      100 CALL                             R12 0 1
      101 NOT                              R11 R12
      102 FASTCALL2K                       ASSERT R11 K18 ; [+4]
      104 LOADK                            R12 K18 ["sortItems is deprecated when using ItemsCache"]
      105 GETIMPORT                        R10 K2 [assert]
      107 CALL                             R10 2 0
      108 NEWCLOSURE                       R10 P0
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U4
      111 GETIMPORT                        R11 K21 [table.sort]
      113 MOVE                             R12 R9
      114 MOVE                             R13 R10
      115 CALL                             R11 2 0
      116 MOVE                             R5 R9
      117 SETTABLEKS                       R5 R4 K22 ["_renderItems_DEPRECATED"]
      119 GETUPVAL                         R5 2
      120 GETTABLEKS                       R4 R5 K23 ["OnItemsChanged"]
      122 GETUPVAL                         R7 2
      123 GETTABLEKS                       R6 R7 K22 ["_renderItems_DEPRECATED"]
      125 NAMECALL                         R4 R4 K14 ["Fire"]
      127 CALL                             R4 2 0
      128 JUMPIFNOT                        R2 ; [+7]
      129 GETUPVAL                         R5 2
      130 GETTABLEKS                       R4 R5 K5 ["_pluginController"]
      132 MOVE                             R6 R2
      133 NAMECALL                         R4 R4 K24 ["setRootPlace"]
      135 CALL                             R4 2 0
      136 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Error fetching assets: %*. Status code: %*"]
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K1 ["pretty"]
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 MOVE                             R7 R1
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 3 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+132]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
        6 GETTABLEKS                       R3 R0 K1 ["Uid"]
        8 NAMECALL                         R1 R1 K2 ["hasScope"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+40]
       12 GETUPVAL                         R1 1
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["_selection"]
       17 GETUPVAL                         R1 1
       18 LOADN                            R3 1
       19 NAMECALL                         R1 R1 K4 ["syncSelectionIndices"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K5 ["OnItemSelectionChanged"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K3 ["_selection"]
       28 NAMECALL                         R1 R1 K6 ["Fire"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       34 GETTABLEKS                       R3 R0 K1 ["Uid"]
       36 NAMECALL                         R1 R1 K7 ["getScope"]
       38 CALL                             R1 2 1
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R2 R3 K8 ["OnScopeFetchProgressChanged"]
       42 GETTABLEKS                       R4 R1 K9 ["FetchProgress"]
       44 GETTABLEKS                       R5 R1 K10 ["Loading"]
       46 GETTABLEKS                       R6 R0 K1 ["Uid"]
       48 NAMECALL                         R2 R2 K6 ["Fire"]
       50 CALL                             R2 4 0
       51 JUMP                             ; [+78]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       55 GETTABLEKS                       R3 R0 K1 ["Uid"]
       57 NAMECALL                         R1 R1 K11 ["addScope"]
       59 CALL                             R1 2 0
       60 GETUPVAL                         R2 1
       61 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       63 GETTABLEKS                       R3 R0 K1 ["Uid"]
       65 NAMECALL                         R1 R1 K7 ["getScope"]
       67 CALL                             R1 2 1
       68 LOADB                            R2 1
       69 SETTABLEKS                       R2 R1 K10 ["Loading"]
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R2 R3 K12 ["_networking"]
       74 LOADK                            R3 K13 [""]
       75 SETTABLEKS                       R3 R2 K14 ["nextPageToken"]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R2 R3 K12 ["_networking"]
       80 LOADK                            R3 K13 [""]
       81 SETTABLEKS                       R3 R2 K15 ["nextPlacesPageToken"]
       83 GETUPVAL                         R4 1
       84 GETTABLEKS                       R3 R4 K16 ["_sorts"]
       86 LENGTH                           R2 R3
       87 JUMPIFNOTEQKN                    R2 K17 [0] ; [+8]
       89 GETUPVAL                         R2 1
       90 GETUPVAL                         R4 2
       91 GETTABLEKS                       R3 R4 K18 ["get"]
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K16 ["_sorts"]
       96 GETUPVAL                         R3 1
       97 GETTABLEKS                       R2 R3 K19 ["_pluginController"]
       99 NAMECALL                         R2 R2 K20 ["getCurrentScope"]
      101 CALL                             R2 1 1
      102 GETUPVAL                         R3 1
      103 MOVE                             R5 R2
      104 NAMECALL                         R3 R3 K21 ["_getNewItemsHandler"]
      106 CALL                             R3 2 1
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R4 R5 K12 ["_networking"]
      110 MOVE                             R6 R2
      111 GETTABLEKS                       R7 R1 K22 ["NextPageToken"]
      113 MOVE                             R8 R3
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R9 R10 K23 ["_fetchAssetsErrorCallback"]
      117 NAMECALL                         R4 R4 K24 ["fetchAssetsAsync"]
      119 CALL                             R4 5 0
      120 GETUPVAL                         R5 1
      121 GETTABLEKS                       R4 R5 K8 ["OnScopeFetchProgressChanged"]
      123 LOADN                            R6 0
      124 LOADB                            R7 1
      125 GETTABLEKS                       R8 R0 K1 ["Uid"]
      127 NAMECALL                         R4 R4 K6 ["Fire"]
      129 CALL                             R4 4 0
      130 GETUPVAL                         R1 1
      131 NAMECALL                         R1 R1 K25 ["_createRenderItems"]
      133 CALL                             R1 1 0
      134 JUMP                             ; [+4]
      135 GETUPVAL                         R1 1
      136 NAMECALL                         R1 R1 K26 ["_clearAndFetchNewItems"]
      138 CALL                             R1 1 0
      139 GETTABLEKS                       R1 R0 K27 ["Type"]
      141 GETUPVAL                         R4 3
      142 GETTABLEKS                       R3 R4 K28 ["ScopeType"]
      144 GETTABLEKS                       R2 R3 K29 ["ProjectPlaces"]
      146 JUMPIFNOTEQ                      R1 R2 ; [+5]
      148 GETUPVAL                         R1 1
      149 NAMECALL                         R1 R1 K30 ["_clearAssetTypeFilter"]
      151 CALL                             R1 1 0
      152 GETUPVAL                         R2 1
      153 GETTABLEKS                       R1 R2 K31 ["_analyticsState"]
      155 LOADK                            R2 K32 ["browse"]
      156 SETTABLEKS                       R2 R1 K33 ["Source"]
      158 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearAndFetchSearchItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_clearItems"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["_analyticsState"]
        8 LOADK                            R2 K2 ["search"]
        9 SETTABLEKS                       R2 R1 K3 ["Source"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K4 ["clearFilters"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 NAMECALL                         R1 R1 K5 ["_clearAndFetchNewItems"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearAndFetchNewItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_items_DEPRECATED"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K1 ["_createRenderItems"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 NAMECALL                         R1 R1 K2 ["_updateRenderItems"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_items_DEPRECATED"]
        3 GETTABLEKS                       R3 R0 K1 ["Id"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["Name"]
        8 SETTABLEKS                       R2 R1 K3 ["DisplayName"]
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 0
       14 NAMECALL                         R1 R1 K4 ["_createRenderItems"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 NAMECALL                         R1 R1 K5 ["_updateRenderItems"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_searchController"]
        3 NAMECALL                         R1 R1 K1 ["getShowSearchOptions"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R0 K2 ["Creator"]
       10 GETTABLEKS                       R2 R3 K3 ["Uid"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["_pluginController"]
       15 NAMECALL                         R4 R4 K5 ["getCurrentScope"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R3 R4 K3 ["Uid"]
       20 JUMPIFEQ                         R2 R3 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIF                           R1 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+41]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K6 ["_itemsCache"]
       32 GETTABLEKS                       R5 R0 K2 ["Creator"]
       34 GETTABLEKS                       R4 R5 K3 ["Uid"]
       36 NAMECALL                         R2 R2 K7 ["hasScope"]
       38 CALL                             R2 2 1
       39 JUMPIFNOT                        R2 ; [+40]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K6 ["_itemsCache"]
       43 MOVE                             R4 R0
       44 GETTABLEKS                       R6 R0 K2 ["Creator"]
       46 GETTABLEKS                       R5 R6 K3 ["Uid"]
       48 NAMECALL                         R2 R2 K8 ["addItem"]
       50 CALL                             R2 3 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K4 ["_pluginController"]
       54 NAMECALL                         R3 R3 K5 ["getCurrentScope"]
       56 CALL                             R3 1 1
       57 GETTABLEKS                       R2 R3 K3 ["Uid"]
       59 GETTABLEKS                       R4 R0 K2 ["Creator"]
       61 GETTABLEKS                       R3 R4 K3 ["Uid"]
       63 JUMPIFNOTEQ                      R2 R3 ; [+16]
       65 GETUPVAL                         R2 0
       66 NAMECALL                         R2 R2 K9 ["_createRenderItems"]
       68 CALL                             R2 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R2 R3 K10 ["_items_DEPRECATED"]
       73 GETTABLEKS                       R3 R0 K11 ["AssetId"]
       75 SETTABLE                         R0 R2 R3
       76 GETUPVAL                         R2 0
       77 NAMECALL                         R2 R2 K12 ["_updateRenderItems"]
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R2 K29 [{"_isMock", "_destroyed", "_pluginController", "_searchController", "_layoutController", "_networking", "_columnWidths", "_items_DEPRECATED", "_renderItems_DEPRECATED", "_itemsCache", "_renderItems", "_creators", "_filters", "_sorts", "_selection", "_selectStartIndex", "_selectEndIndex", "_clickState", "_isDragging", "_lastItemPathClicked", "_lastAssetIdClicked", "_analyticsState", "_connections", "OnVisiblePropertiesChanged", "OnItemsChanged", "OnItemSelectionChanged", "OnSortFilterChanged", "OnCreatorsChanged", "OnScopeFetchProgressChanged"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["_destroyed"]
        6 GETTABLEKS                       R3 R0 K30 ["PluginController"]
        8 SETTABLEKS                       R3 R2 K2 ["_pluginController"]
       10 GETTABLEKS                       R3 R0 K31 ["SearchController"]
       12 SETTABLEKS                       R3 R2 K3 ["_searchController"]
       14 GETTABLEKS                       R3 R0 K32 ["LayoutController"]
       16 SETTABLEKS                       R3 R2 K4 ["_layoutController"]
       18 GETTABLEKS                       R3 R0 K33 ["Networking"]
       20 SETTABLEKS                       R3 R2 K5 ["_networking"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K6 ["_columnWidths"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K7 ["_items_DEPRECATED"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K8 ["_renderItems_DEPRECATED"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K34 ["new"]
       37 LOADN                            R4 5
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K9 ["_itemsCache"]
       41 NEWTABLE                         R3 0 0
       43 SETTABLEKS                       R3 R2 K10 ["_renderItems"]
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R2 K11 ["_creators"]
       49 NEWTABLE                         R3 1 0
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K35 ["AssetInfoField"]
       54 GETTABLEKS                       R4 R5 K36 ["Archived"]
       56 LOADB                            R5 0
       57 SETTABLE                         R5 R3 R4
       58 SETTABLEKS                       R3 R2 K12 ["_filters"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R3 R4 K37 ["get"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K13 ["_sorts"]
       66 NEWTABLE                         R3 0 0
       68 SETTABLEKS                       R3 R2 K14 ["_selection"]
       70 LOADN                            R3 1
       71 SETTABLEKS                       R3 R2 K15 ["_selectStartIndex"]
       73 LOADN                            R3 1
       74 SETTABLEKS                       R3 R2 K16 ["_selectEndIndex"]
       76 DUPTABLE                         R3 K40 [{"modsPressed", "targetAssetId"}]
       77 DUPTABLE                         R4 K43 [{"Shift", "Ctrl"}]
       78 LOADB                            R5 0
       79 SETTABLEKS                       R5 R4 K41 ["Shift"]
       81 LOADB                            R5 0
       82 SETTABLEKS                       R5 R4 K42 ["Ctrl"]
       84 SETTABLEKS                       R4 R3 K38 ["modsPressed"]
       86 LOADN                            R4 255
       87 SETTABLEKS                       R4 R3 K39 ["targetAssetId"]
       89 SETTABLEKS                       R3 R2 K17 ["_clickState"]
       91 LOADB                            R3 0
       92 SETTABLEKS                       R3 R2 K18 ["_isDragging"]
       94 LOADK                            R3 K44 [""]
       95 SETTABLEKS                       R3 R2 K19 ["_lastItemPathClicked"]
       97 LOADN                            R3 255
       98 SETTABLEKS                       R3 R2 K20 ["_lastAssetIdClicked"]
      100 DUPTABLE                         R3 K48 [{"Action", "Source", "Position"}]
      101 LOADK                            R4 K49 ["double_click"]
      102 SETTABLEKS                       R4 R3 K45 ["Action"]
      104 LOADK                            R4 K50 ["browse"]
      105 SETTABLEKS                       R4 R3 K46 ["Source"]
      107 LOADN                            R4 0
      108 SETTABLEKS                       R4 R3 K47 ["Position"]
      110 SETTABLEKS                       R3 R2 K21 ["_analyticsState"]
      112 NEWTABLE                         R3 0 0
      114 SETTABLEKS                       R3 R2 K22 ["_connections"]
      116 GETUPVAL                         R4 3
      117 GETTABLEKS                       R3 R4 K34 ["new"]
      119 CALL                             R3 0 1
      120 SETTABLEKS                       R3 R2 K23 ["OnVisiblePropertiesChanged"]
      122 GETUPVAL                         R4 3
      123 GETTABLEKS                       R3 R4 K34 ["new"]
      125 CALL                             R3 0 1
      126 SETTABLEKS                       R3 R2 K24 ["OnItemsChanged"]
      128 GETUPVAL                         R4 3
      129 GETTABLEKS                       R3 R4 K34 ["new"]
      131 CALL                             R3 0 1
      132 SETTABLEKS                       R3 R2 K25 ["OnItemSelectionChanged"]
      134 GETUPVAL                         R4 3
      135 GETTABLEKS                       R3 R4 K34 ["new"]
      137 CALL                             R3 0 1
      138 SETTABLEKS                       R3 R2 K26 ["OnSortFilterChanged"]
      140 GETUPVAL                         R4 3
      141 GETTABLEKS                       R3 R4 K34 ["new"]
      143 CALL                             R3 0 1
      144 SETTABLEKS                       R3 R2 K27 ["OnCreatorsChanged"]
      146 GETUPVAL                         R4 3
      147 GETTABLEKS                       R3 R4 K34 ["new"]
      149 CALL                             R3 0 1
      150 SETTABLEKS                       R3 R2 K28 ["OnScopeFetchProgressChanged"]
      152 GETUPVAL                         R5 4
      153 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      155 MOVE                             R4 R2
      156 GETIMPORT                        R3 K52 [setmetatable]
      158 CALL                             R3 2 0
      159 NEWCLOSURE                       R3 P0
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          UPVAL U6
      162 CAPTURE                          VAL R2
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U8
      165 SETTABLEKS                       R3 R2 K53 ["_fetchAssetsCallback"]
      167 DUPCLOSURE                       R3 K54 [PROTO_8]
      168 CAPTURE                          UPVAL U9
      169 CAPTURE                          UPVAL U10
      170 SETTABLEKS                       R3 R2 K55 ["_fetchAssetsErrorCallback"]
      172 GETUPVAL                         R3 5
      173 CALL                             R3 0 1
      174 JUMPIFNOT                        R3 ; [+42]
      175 GETTABLEKS                       R3 R2 K2 ["_pluginController"]
      177 NAMECALL                         R3 R3 K56 ["getCurrentScope"]
      179 CALL                             R3 1 1
      180 GETTABLEKS                       R4 R2 K9 ["_itemsCache"]
      182 GETTABLEKS                       R6 R3 K57 ["Uid"]
      184 NAMECALL                         R4 R4 K58 ["addScope"]
      186 CALL                             R4 2 1
      187 LOADB                            R5 1
      188 SETTABLEKS                       R5 R4 K59 ["Loading"]
      190 GETTABLEKS                       R5 R2 K28 ["OnScopeFetchProgressChanged"]
      192 GETTABLEKS                       R7 R4 K60 ["FetchProgress"]
      194 GETTABLEKS                       R8 R4 K59 ["Loading"]
      196 GETTABLEKS                       R9 R3 K57 ["Uid"]
      198 NAMECALL                         R5 R5 K61 ["Fire"]
      200 CALL                             R5 4 0
      201 MOVE                             R7 R3
      202 NAMECALL                         R5 R2 K62 ["_getNewItemsHandler"]
      204 CALL                             R5 2 1
      205 GETTABLEKS                       R6 R2 K5 ["_networking"]
      207 MOVE                             R8 R3
      208 GETTABLEKS                       R9 R4 K63 ["NextPageToken"]
      210 MOVE                             R10 R5
      211 GETTABLEKS                       R11 R2 K55 ["_fetchAssetsErrorCallback"]
      213 NAMECALL                         R6 R6 K64 ["fetchAssetsAsync"]
      215 CALL                             R6 5 0
      216 JUMP                             ; [+15]
      217 GETTABLEKS                       R3 R2 K5 ["_networking"]
      219 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      221 NAMECALL                         R5 R5 K65 ["getUser"]
      223 CALL                             R5 1 1
      224 LOADNIL                          R6
      225 GETTABLEKS                       R7 R2 K53 ["_fetchAssetsCallback"]
      227 GETTABLEKS                       R8 R2 K55 ["_fetchAssetsErrorCallback"]
      229 NAMECALL                         R3 R3 K64 ["fetchAssetsAsync"]
      231 CALL                             R3 5 0
      232 GETTABLEKS                       R4 R2 K22 ["_connections"]
      234 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      236 GETTABLEKS                       R5 R6 K66 ["OnCurrentScopeChanged"]
      238 NEWCLOSURE                       R7 P2
      239 CAPTURE                          UPVAL U5
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U2
      242 CAPTURE                          UPVAL U1
      243 NAMECALL                         R5 R5 K67 ["Connect"]
      245 CALL                             R5 2 -1
      246 FASTCALL                         TABLE_INSERT ; [+2]
      247 GETIMPORT                        R3 K70 [table.insert]
      249 CALL                             R3 -1 0
      250 GETTABLEKS                       R4 R2 K22 ["_connections"]
      252 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      254 GETTABLEKS                       R5 R6 K71 ["OnSearchRequested"]
      256 NEWCLOSURE                       R7 P3
      257 CAPTURE                          VAL R2
      258 NAMECALL                         R5 R5 K67 ["Connect"]
      260 CALL                             R5 2 -1
      261 FASTCALL                         TABLE_INSERT ; [+2]
      262 GETIMPORT                        R3 K70 [table.insert]
      264 CALL                             R3 -1 0
      265 GETTABLEKS                       R4 R2 K22 ["_connections"]
      267 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      269 GETTABLEKS                       R5 R6 K72 ["OnShowSearchOptionsChanged"]
      271 NEWCLOSURE                       R7 P4
      272 CAPTURE                          VAL R2
      273 NAMECALL                         R5 R5 K67 ["Connect"]
      275 CALL                             R5 2 -1
      276 FASTCALL                         TABLE_INSERT ; [+2]
      277 GETIMPORT                        R3 K70 [table.insert]
      279 CALL                             R3 -1 0
      280 GETTABLEKS                       R4 R2 K22 ["_connections"]
      282 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      284 GETTABLEKS                       R5 R6 K73 ["OnSearchClosed"]
      286 NEWCLOSURE                       R7 P5
      287 CAPTURE                          VAL R2
      288 NAMECALL                         R5 R5 K67 ["Connect"]
      290 CALL                             R5 2 -1
      291 FASTCALL                         TABLE_INSERT ; [+2]
      292 GETIMPORT                        R3 K70 [table.insert]
      294 CALL                             R3 -1 0
      295 GETTABLEKS                       R4 R2 K22 ["_connections"]
      297 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      299 NAMECALL                         R5 R5 K74 ["getPlugin"]
      301 CALL                             R5 1 1
      302 LOADK                            R7 K75 ["OnAddPlaceSucceeded"]
      303 NEWCLOSURE                       R8 P6
      304 CAPTURE                          VAL R2
      305 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      307 CALL                             R5 3 -1
      308 FASTCALL                         TABLE_INSERT ; [+2]
      309 GETIMPORT                        R3 K70 [table.insert]
      311 CALL                             R3 -1 0
      312 GETTABLEKS                       R4 R2 K22 ["_connections"]
      314 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      316 NAMECALL                         R5 R5 K74 ["getPlugin"]
      318 CALL                             R5 1 1
      319 LOADK                            R7 K77 ["OnRemovePlaceFromGameSucceeded"]
      320 NEWCLOSURE                       R8 P7
      321 CAPTURE                          VAL R2
      322 CAPTURE                          UPVAL U5
      323 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      325 CALL                             R5 3 -1
      326 FASTCALL                         TABLE_INSERT ; [+2]
      327 GETIMPORT                        R3 K70 [table.insert]
      329 CALL                             R3 -1 0
      330 GETTABLEKS                       R4 R2 K22 ["_connections"]
      332 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      334 NAMECALL                         R5 R5 K74 ["getPlugin"]
      336 CALL                             R5 1 1
      337 LOADK                            R7 K78 ["OnRenamePlaceSucceeded"]
      338 NEWCLOSURE                       R8 P8
      339 CAPTURE                          VAL R2
      340 CAPTURE                          UPVAL U5
      341 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      343 CALL                             R5 3 -1
      344 FASTCALL                         TABLE_INSERT ; [+2]
      345 GETIMPORT                        R3 K70 [table.insert]
      347 CALL                             R3 -1 0
      348 GETTABLEKS                       R4 R2 K22 ["_connections"]
      350 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      352 GETTABLEKS                       R5 R6 K79 ["OnNewAssetFetched"]
      354 NEWCLOSURE                       R7 P9
      355 CAPTURE                          VAL R2
      356 CAPTURE                          UPVAL U5
      357 NAMECALL                         R5 R5 K67 ["Connect"]
      359 CALL                             R5 2 -1
      360 FASTCALL                         TABLE_INSERT ; [+2]
      361 GETIMPORT                        R3 K70 [table.insert]
      363 CALL                             R3 -1 0
      364 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_columnWidths"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_items_DEPRECATED"]
        9 GETTABLEKS                       R1 R0 K3 ["_itemsCache"]
       11 NAMECALL                         R1 R1 K4 ["destroy"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["_itemsCache"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K5 ["_creators"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K6 ["_filters"]
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K7 ["_sorts"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K8 ["_selection"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R2 R0 K9 ["_connections"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K9 ["_connections"]
       36 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_searchController"]
        2 NAMECALL                         R2 R2 K1 ["getShowSearchOptions"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["_searchController"]
        8 NAMECALL                         R2 R2 K2 ["getSearchOptions"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R1 R2 K3 ["ScopeInfo"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       16 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+6]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["_destroyed"]
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["_itemsCache"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K2 ["Uid"]
       15 NAMECALL                         R4 R4 K3 ["getScope"]
       17 CALL                             R4 2 1
       18 JUMPIF                           R4 ; [+2]
       19 LOADB                            R5 0
       20 RETURN                           R5 1
       21 MOVE                             R5 R0
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K1 ["_itemsCache"]
       28 MOVE                             R12 R9
       29 GETUPVAL                         R14 2
       30 GETTABLEKS                       R13 R14 K2 ["Uid"]
       32 NAMECALL                         R10 R10 K4 ["addItem"]
       34 CALL                             R10 3 0
       35 FORGLOOP                         R5 2 ; [-11]
       37 LOADB                            R5 0
       38 MOVE                             R6 R1
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R12 R13 K5 ["_creators"]
       45 GETTABLE                         R11 R12 R9
       46 JUMPIF                           R11 ; [+4]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R11 R12 K5 ["_creators"]
       50 SETTABLE                         R10 R11 R9
       51 LOADB                            R5 1
       52 FORGLOOP                         R6 2 ; [-11]
       54 JUMPIFNOT                        R5 ; [+10]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R6 R7 K6 ["OnCreatorsChanged"]
       58 GETUPVAL                         R8 1
       59 NAMECALL                         R8 R8 K7 ["getCreators"]
       61 CALL                             R8 1 -1
       62 NAMECALL                         R6 R6 K8 ["Fire"]
       64 CALL                             R6 -1 0
       65 GETUPVAL                         R6 1
       66 NAMECALL                         R6 R6 K9 ["getCurrentShownScope"]
       68 CALL                             R6 1 1
       69 GETTABLEKS                       R7 R6 K2 ["Uid"]
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R8 R9 K2 ["Uid"]
       74 JUMPIFNOTEQ                      R7 R8 ; [+5]
       76 GETUPVAL                         R7 1
       77 NAMECALL                         R7 R7 K10 ["_createRenderItems"]
       79 CALL                             R7 1 0
       80 JUMPIFNOT                        R2 ; [+7]
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R7 R8 K11 ["_pluginController"]
       84 MOVE                             R9 R2
       85 NAMECALL                         R7 R7 K12 ["setRootPlace"]
       87 CALL                             R7 2 0
       88 SETTABLEKS                       R3 R4 K13 ["NextPageToken"]
       90 JUMPIFEQKNIL                     R3 ; [+17]
       92 JUMPIFEQKS                       R3 K14 [""] ; [+15]
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R7 R8 K1 ["_itemsCache"]
       97 NAMECALL                         R7 R7 K15 ["getTotalItemCount"]
       99 CALL                             R7 1 1
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      103 NAMECALL                         R8 R8 K16 ["getMaxItems"]
      105 CALL                             R8 1 1
      106 JUMPIFNOTLT                      R8 R7 ; [+8]
      108 LOADB                            R7 0
      109 SETTABLEKS                       R7 R4 K17 ["Loading"]
      111 LOADN                            R7 0
      112 SETTABLEKS                       R7 R4 K18 ["FetchProgress"]
      114 JUMP                             ; [+14]
      115 LOADB                            R7 1
      116 SETTABLEKS                       R7 R4 K17 ["Loading"]
      118 GETUPVAL                         R8 1
      119 GETTABLEKS                       R7 R8 K1 ["_itemsCache"]
      121 GETUPVAL                         R10 2
      122 GETTABLEKS                       R9 R10 K2 ["Uid"]
      124 NAMECALL                         R7 R7 K19 ["getScopeCacheFetchProgress"]
      126 CALL                             R7 2 1
      127 SETTABLEKS                       R7 R4 K18 ["FetchProgress"]
      129 GETUPVAL                         R8 1
      130 GETTABLEKS                       R7 R8 K20 ["OnScopeFetchProgressChanged"]
      132 GETUPVAL                         R10 1
      133 GETTABLEKS                       R9 R10 K1 ["_itemsCache"]
      135 GETUPVAL                         R12 2
      136 GETTABLEKS                       R11 R12 K2 ["Uid"]
      138 NAMECALL                         R9 R9 K19 ["getScopeCacheFetchProgress"]
      140 CALL                             R9 2 1
      141 GETTABLEKS                       R10 R4 K17 ["Loading"]
      143 GETUPVAL                         R12 2
      144 GETTABLEKS                       R11 R12 K2 ["Uid"]
      146 NAMECALL                         R7 R7 K8 ["Fire"]
      148 CALL                             R7 4 0
      149 GETTABLEKS                       R7 R4 K17 ["Loading"]
      151 JUMPIF                           R7 ; [+2]
      152 LOADB                            R7 0
      153 RETURN                           R7 1
      154 LOADB                            R7 1
      155 RETURN                           R7 1

PROTO_23:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 NAMECALL                         R4 R0 K1 ["getCurrentShownScope"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R3 R4 K2 ["Uid"]
        7 GETTABLEKS                       R4 R0 K3 ["_filters"]
        9 GETTABLEKS                       R5 R0 K4 ["_sorts"]
       11 NAMECALL                         R1 R1 K5 ["getSortedFilteredPaths"]
       13 CALL                             R1 4 1
       14 SETTABLEKS                       R1 R0 K6 ["_renderItems"]
       16 GETTABLEKS                       R2 R0 K7 ["OnItemsChanged"]
       18 GETTABLEKS                       R4 R0 K6 ["_renderItems"]
       20 NAMECALL                         R2 R2 K8 ["Fire"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_networking"]
        5 NAMECALL                         R1 R1 K1 ["makeFetchRequestsStale"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+32]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["_renderItems"]
       15 GETTABLEKS                       R1 R0 K3 ["_itemsCache"]
       17 NAMECALL                         R1 R1 K4 ["reset"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K5 ["OnItemsChanged"]
       22 GETTABLEKS                       R3 R0 K2 ["_renderItems"]
       24 NAMECALL                         R1 R1 K6 ["Fire"]
       26 CALL                             R1 2 0
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K7 ["_selection"]
       31 LOADN                            R3 1
       32 NAMECALL                         R1 R0 K8 ["syncSelectionIndices"]
       34 CALL                             R1 2 0
       35 GETTABLEKS                       R1 R0 K9 ["OnItemSelectionChanged"]
       37 GETTABLEKS                       R3 R0 K7 ["_selection"]
       39 NAMECALL                         R1 R1 K6 ["Fire"]
       41 CALL                             R1 2 0
       42 JUMP                             ; [+23]
       43 NEWTABLE                         R1 0 0
       45 SETTABLEKS                       R1 R0 K10 ["_items_DEPRECATED"]
       47 NEWTABLE                         R1 0 0
       49 SETTABLEKS                       R1 R0 K11 ["_renderItems_DEPRECATED"]
       51 GETTABLEKS                       R1 R0 K5 ["OnItemsChanged"]
       53 GETTABLEKS                       R3 R0 K10 ["_items_DEPRECATED"]
       55 NAMECALL                         R1 R1 K6 ["Fire"]
       57 CALL                             R1 2 0
       58 NEWTABLE                         R1 0 0
       60 SETTABLEKS                       R1 R0 K7 ["_selection"]
       62 LOADN                            R3 1
       63 NAMECALL                         R1 R0 K8 ["syncSelectionIndices"]
       65 CALL                             R1 2 0
       66 NEWTABLE                         R1 0 0
       68 SETTABLEKS                       R1 R0 K12 ["_creators"]
       70 RETURN                           R0 0

PROTO_26:
        0 NAMECALL                         R1 R0 K0 ["_clearItems"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+10]
        6 GETTABLEKS                       R1 R0 K1 ["_networking"]
        8 LOADK                            R2 K2 [""]
        9 SETTABLEKS                       R2 R1 K3 ["nextPageToken"]
       11 GETTABLEKS                       R1 R0 K1 ["_networking"]
       13 LOADK                            R2 K2 [""]
       14 SETTABLEKS                       R2 R1 K4 ["nextPlacesPageToken"]
       16 GETTABLEKS                       R2 R0 K5 ["_sorts"]
       18 LENGTH                           R1 R2
       19 JUMPIFNOTEQKN                    R1 K6 [0] ; [+7]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K7 ["get"]
       24 CALL                             R1 0 1
       25 SETTABLEKS                       R1 R0 K5 ["_sorts"]
       27 GETTABLEKS                       R1 R0 K8 ["_pluginController"]
       29 NAMECALL                         R1 R1 K9 ["getCurrentScope"]
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 0
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+23]
       35 MOVE                             R4 R1
       36 NAMECALL                         R2 R0 K10 ["_getNewItemsHandler"]
       38 CALL                             R2 2 1
       39 GETTABLEKS                       R3 R0 K11 ["_itemsCache"]
       41 GETTABLEKS                       R5 R1 K12 ["Uid"]
       43 NAMECALL                         R3 R3 K13 ["addScope"]
       45 CALL                             R3 2 1
       46 GETTABLEKS                       R4 R0 K1 ["_networking"]
       48 MOVE                             R6 R1
       49 GETTABLEKS                       R7 R3 K14 ["NextPageToken"]
       51 MOVE                             R8 R2
       52 GETTABLEKS                       R9 R0 K15 ["_fetchAssetsErrorCallback"]
       54 NAMECALL                         R4 R4 K16 ["fetchAssetsAsync"]
       56 CALL                             R4 5 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R2 R0 K1 ["_networking"]
       60 MOVE                             R4 R1
       61 LOADNIL                          R5
       62 GETTABLEKS                       R6 R0 K17 ["_fetchAssetsCallback"]
       64 GETTABLEKS                       R7 R0 K15 ["_fetchAssetsErrorCallback"]
       66 NAMECALL                         R2 R2 K16 ["fetchAssetsAsync"]
       68 CALL                             R2 5 0
       69 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R1 R0 K0 ["_clearItems"]
        2 CALL                             R1 1 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_sorts"]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+10]
       10 GETTABLEKS                       R1 R0 K2 ["_networking"]
       12 LOADK                            R2 K3 [""]
       13 SETTABLEKS                       R2 R1 K4 ["nextPageToken"]
       15 GETTABLEKS                       R1 R0 K2 ["_networking"]
       17 LOADK                            R2 K3 [""]
       18 SETTABLEKS                       R2 R1 K5 ["nextPlacesPageToken"]
       20 NAMECALL                         R1 R0 K6 ["clearFilters"]
       22 CALL                             R1 1 0
       23 GETTABLEKS                       R1 R0 K7 ["OnSortFilterChanged"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R4 R0 K1 ["_sorts"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R5 R0 K8 ["_filters"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R1 R1 K9 ["Fire"]
       35 CALL                             R1 -1 0
       36 GETTABLEKS                       R1 R0 K10 ["_searchController"]
       38 NAMECALL                         R1 R1 K11 ["getSearchOptions"]
       40 CALL                             R1 1 1
       41 GETTABLEKS                       R3 R1 K12 ["ScopeInfo"]
       43 GETTABLEKS                       R2 R3 K13 ["Type"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R4 R5 K14 ["ScopeType"]
       48 GETTABLEKS                       R3 R4 K15 ["Universe"]
       50 JUMPIFNOTEQ                      R2 R3 ; [+74]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R5 R6 K16 ["AssetInfoField"]
       55 GETTABLEKS                       R4 R5 K17 ["DisplayName"]
       57 GETTABLEKS                       R5 R0 K10 ["_searchController"]
       59 NAMECALL                         R5 R5 K18 ["getSearchTerm"]
       61 CALL                             R5 1 -1
       62 NAMECALL                         R2 R0 K19 ["_addFilter"]
       64 CALL                             R2 -1 0
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R5 R6 K16 ["AssetInfoField"]
       68 GETTABLEKS                       R4 R5 K20 ["AssetType"]
       70 NEWTABLE                         R5 1 0
       72 GETTABLEKS                       R6 R1 K20 ["AssetType"]
       74 LOADB                            R7 1
       75 SETTABLE                         R7 R5 R6
       76 NAMECALL                         R2 R0 K19 ["_addFilter"]
       78 CALL                             R2 3 0
       79 NAMECALL                         R2 R0 K21 ["_updateSortFilter"]
       81 CALL                             R2 1 0
       82 GETUPVAL                         R2 0
       83 CALL                             R2 0 1
       84 JUMPIFNOT                        R2 ; [+27]
       85 GETTABLEKS                       R2 R0 K22 ["_itemsCache"]
       87 GETTABLEKS                       R5 R1 K12 ["ScopeInfo"]
       89 GETTABLEKS                       R4 R5 K23 ["Uid"]
       91 NAMECALL                         R2 R2 K24 ["addScope"]
       93 CALL                             R2 2 1
       94 GETTABLEKS                       R5 R1 K12 ["ScopeInfo"]
       96 NAMECALL                         R3 R0 K25 ["_getNewItemsHandler"]
       98 CALL                             R3 2 1
       99 GETTABLEKS                       R4 R0 K2 ["_networking"]
      101 GETTABLEKS                       R6 R1 K12 ["ScopeInfo"]
      103 GETTABLEKS                       R7 R2 K26 ["NextPageToken"]
      105 MOVE                             R8 R3
      106 GETTABLEKS                       R9 R0 K27 ["_fetchAssetsErrorCallback"]
      108 NAMECALL                         R4 R4 K28 ["fetchAssetsAsync"]
      110 CALL                             R4 5 0
      111 RETURN                           R0 0
      112 GETTABLEKS                       R2 R0 K2 ["_networking"]
      114 GETTABLEKS                       R4 R1 K12 ["ScopeInfo"]
      116 LOADNIL                          R5
      117 GETTABLEKS                       R6 R0 K29 ["_fetchAssetsCallback"]
      119 GETTABLEKS                       R7 R0 K27 ["_fetchAssetsErrorCallback"]
      121 NAMECALL                         R2 R2 K28 ["fetchAssetsAsync"]
      123 CALL                             R2 5 0
      124 RETURN                           R0 0
      125 DUPTABLE                         R2 K31 [{"SearchTerm", "AssetType", "ScopeInfo"}]
      126 GETTABLEKS                       R3 R0 K10 ["_searchController"]
      128 NAMECALL                         R3 R3 K18 ["getSearchTerm"]
      130 CALL                             R3 1 1
      131 SETTABLEKS                       R3 R2 K30 ["SearchTerm"]
      133 GETTABLEKS                       R3 R1 K20 ["AssetType"]
      135 SETTABLEKS                       R3 R2 K20 ["AssetType"]
      137 GETTABLEKS                       R3 R1 K12 ["ScopeInfo"]
      139 SETTABLEKS                       R3 R2 K12 ["ScopeInfo"]
      141 GETUPVAL                         R3 0
      142 CALL                             R3 0 1
      143 JUMPIFNOT                        R3 ; [+26]
      144 GETTABLEKS                       R3 R0 K22 ["_itemsCache"]
      146 GETTABLEKS                       R6 R1 K12 ["ScopeInfo"]
      148 GETTABLEKS                       R5 R6 K23 ["Uid"]
      150 NAMECALL                         R3 R3 K24 ["addScope"]
      152 CALL                             R3 2 1
      153 GETTABLEKS                       R6 R2 K12 ["ScopeInfo"]
      155 NAMECALL                         R4 R0 K25 ["_getNewItemsHandler"]
      157 CALL                             R4 2 1
      158 GETTABLEKS                       R5 R0 K2 ["_networking"]
      160 MOVE                             R7 R2
      161 GETTABLEKS                       R8 R3 K26 ["NextPageToken"]
      163 MOVE                             R9 R4
      164 GETTABLEKS                       R10 R0 K27 ["_fetchAssetsErrorCallback"]
      166 NAMECALL                         R5 R5 K32 ["searchAssetsAsync"]
      168 CALL                             R5 5 0
      169 RETURN                           R0 0
      170 GETTABLEKS                       R3 R0 K2 ["_networking"]
      172 MOVE                             R5 R2
      173 LOADNIL                          R6
      174 GETTABLEKS                       R7 R0 K29 ["_fetchAssetsCallback"]
      176 GETTABLEKS                       R8 R0 K27 ["_fetchAssetsErrorCallback"]
      178 NAMECALL                         R3 R3 K32 ["searchAssetsAsync"]
      180 CALL                             R3 5 0
      181 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+61]
        3 GETTABLEKS                       R2 R0 K0 ["_sorts"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["get"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K0 ["_sorts"]
       14 GETTABLEKS                       R1 R0 K3 ["_networking"]
       16 NAMECALL                         R1 R1 K4 ["makeFetchRequestsStale"]
       18 CALL                             R1 1 0
       19 NAMECALL                         R1 R0 K5 ["_clearItems"]
       21 CALL                             R1 1 0
       22 GETTABLEKS                       R1 R0 K6 ["_pluginController"]
       24 NAMECALL                         R1 R1 K7 ["getCurrentScope"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R0 K8 ["_itemsCache"]
       29 GETTABLEKS                       R4 R1 K9 ["Uid"]
       31 NAMECALL                         R2 R2 K10 ["addScope"]
       33 CALL                             R2 2 1
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R2 K11 ["Loading"]
       37 GETTABLEKS                       R3 R0 K12 ["OnScopeFetchProgressChanged"]
       39 GETTABLEKS                       R5 R2 K13 ["FetchProgress"]
       41 GETTABLEKS                       R6 R2 K11 ["Loading"]
       43 GETTABLEKS                       R7 R1 K9 ["Uid"]
       45 NAMECALL                         R3 R3 K14 ["Fire"]
       47 CALL                             R3 4 0
       48 MOVE                             R5 R1
       49 NAMECALL                         R3 R0 K15 ["_getNewItemsHandler"]
       51 CALL                             R3 2 1
       52 GETTABLEKS                       R4 R0 K3 ["_networking"]
       54 MOVE                             R6 R1
       55 GETTABLEKS                       R7 R2 K16 ["NextPageToken"]
       57 MOVE                             R8 R3
       58 GETTABLEKS                       R9 R0 K17 ["_fetchAssetsErrorCallback"]
       60 NAMECALL                         R4 R4 K18 ["fetchAssetsAsync"]
       62 CALL                             R4 5 0
       63 RETURN                           R0 0
       64 NAMECALL                         R1 R0 K19 ["_clearAndFetchNewItems"]
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["_updateRenderItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K3 ["_items_DEPRECATED"]
       11 GETTABLEKS                       R3 R0 K4 ["_sorts"]
       13 GETTABLEKS                       R4 R0 K5 ["_filters"]
       15 GETUPVAL                         R7 0
       16 CALL                             R7 0 1
       17 NOT                              R6 R7
       18 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       20 LOADK                            R7 K6 ["generateRenderItems is deprecated when using ItemsCache"]
       21 GETIMPORT                        R5 K2 [assert]
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 1
       25 MOVE                             R6 R2
       26 MOVE                             R7 R4
       27 CALL                             R5 2 1
       28 GETUPVAL                         R8 0
       29 CALL                             R8 0 1
       30 NOT                              R7 R8
       31 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       33 LOADK                            R8 K7 ["sortItems is deprecated when using ItemsCache"]
       34 GETIMPORT                        R6 K2 [assert]
       36 CALL                             R6 2 0
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 GETIMPORT                        R7 K10 [table.sort]
       42 MOVE                             R8 R5
       43 MOVE                             R9 R6
       44 CALL                             R7 2 0
       45 MOVE                             R1 R5
       46 SETTABLEKS                       R1 R0 K11 ["_renderItems_DEPRECATED"]
       48 GETTABLEKS                       R1 R0 K12 ["OnItemsChanged"]
       50 GETTABLEKS                       R3 R0 K11 ["_renderItems_DEPRECATED"]
       52 NAMECALL                         R1 R1 K13 ["Fire"]
       54 CALL                             R1 2 0
       55 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+34]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R3 R0 K0 ["getSelection"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R0 K1 ["_pluginController"]
        9 NAMECALL                         R4 R4 K2 ["getCurrentScope"]
       11 CALL                             R4 1 1
       12 NAMECALL                         R5 R0 K3 ["getItemsCache"]
       14 CALL                             R5 1 -1
       15 CALL                             R2 -1 1
       16 DUPTABLE                         R3 K9 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       17 GETTABLEKS                       R4 R2 K10 ["Ids"]
       19 SETTABLEKS                       R4 R3 K4 ["AssetIds"]
       21 GETTABLEKS                       R4 R2 K11 ["Types"]
       23 SETTABLEKS                       R4 R3 K5 ["AssetTypes"]
       25 GETTABLEKS                       R4 R2 K12 ["Names"]
       27 SETTABLEKS                       R4 R3 K6 ["AssetNames"]
       29 GETTABLEKS                       R4 R2 K13 ["IsPackage"]
       31 SETTABLEKS                       R4 R3 K7 ["IsPackages"]
       33 ORK                              R4 R1 K14 [False]
       34 SETTABLEKS                       R4 R3 K8 ["UseAssetPosition"]
       36 RETURN                           R3 1
       37 NAMECALL                         R2 R0 K15 ["getItems"]
       39 CALL                             R2 1 1
       40 GETUPVAL                         R3 2
       41 NAMECALL                         R4 R0 K16 ["getSelection_DEPRECATED"]
       43 CALL                             R4 1 1
       44 MOVE                             R5 R2
       45 CALL                             R3 2 1
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R4 R5 K17 ["keys"]
       49 MOVE                             R5 R3
       50 CALL                             R4 1 1
       51 NEWTABLE                         R5 0 0
       53 NEWTABLE                         R6 0 0
       55 NEWTABLE                         R7 0 0
       57 MOVE                             R8 R4
       58 LOADNIL                          R9
       59 LOADNIL                          R10
       60 FORGPREP                         R8
       61 GETTABLE                         R13 R2 R12
       62 MOVE                             R15 R5
       63 GETUPVAL                         R16 4
       64 GETTABLEKS                       R17 R13 K18 ["AssetType"]
       66 CALL                             R16 1 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R14 K21 [table.insert]
       70 CALL                             R14 -1 0
       71 GETTABLEKS                       R16 R13 K22 ["DisplayName"]
       73 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       75 MOVE                             R15 R6
       76 GETIMPORT                        R14 K21 [table.insert]
       78 CALL                             R14 2 0
       79 GETTABLEKS                       R17 R13 K13 ["IsPackage"]
       81 ORK                              R16 R17 K14 [False]
       82 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       84 MOVE                             R15 R7
       85 GETIMPORT                        R14 K21 [table.insert]
       87 CALL                             R14 2 0
       88 FORGLOOP                         R8 2 ; [-28]
       90 DUPTABLE                         R8 K9 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       91 SETTABLEKS                       R4 R8 K4 ["AssetIds"]
       93 SETTABLEKS                       R5 R8 K5 ["AssetTypes"]
       95 SETTABLEKS                       R6 R8 K6 ["AssetNames"]
       97 SETTABLEKS                       R7 R8 K7 ["IsPackages"]
       99 ORK                              R9 R1 K14 [False]
      100 SETTABLEKS                       R9 R8 K8 ["UseAssetPosition"]
      102 RETURN                           R8 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+97]
        3 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        5 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R0 K2 ["_renderItems"]
       10 GETTABLE                         R3 R4 R1
       11 GETTABLEKS                       R4 R0 K3 ["_itemsCache"]
       13 GETTABLEKS                       R6 R2 K4 ["Uid"]
       15 MOVE                             R7 R3
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R9 R10 K5 ["AssetInfoField"]
       19 GETTABLEKS                       R8 R9 K6 ["AssetType"]
       21 NAMECALL                         R4 R4 K7 ["getItemField"]
       23 CALL                             R4 4 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K8 ["keys"]
       27 GETTABLEKS                       R7 R0 K9 ["_selection"]
       29 CALL                             R6 1 1
       30 LENGTH                           R5 R6
       31 JUMPIFNOTEQKN                    R5 K10 [1] ; [+30]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K6 ["AssetType"]
       36 GETTABLEKS                       R5 R6 K11 ["Place"]
       38 JUMPIFNOTEQ                      R4 R5 ; [+23]
       40 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
       42 GETTABLEKS                       R7 R2 K4 ["Uid"]
       44 MOVE                             R8 R3
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K5 ["AssetInfoField"]
       48 GETTABLEKS                       R9 R10 K12 ["AssetId"]
       50 NAMECALL                         R5 R5 K7 ["getItemField"]
       52 CALL                             R5 4 1
       53 NAMECALL                         R6 R0 K13 ["getPlugin"]
       55 CALL                             R6 1 1
       56 LOADK                            R8 K14 ["OnOpenPlace"]
       57 MOVE                             R9 R5
       58 NAMECALL                         R6 R6 K15 ["Invoke"]
       60 CALL                             R6 3 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R5 R0 K16 ["_analyticsState"]
       64 SETTABLEKS                       R1 R5 K17 ["Position"]
       66 GETTABLEKS                       R5 R0 K16 ["_analyticsState"]
       68 LOADK                            R6 K18 ["double_click"]
       69 SETTABLEKS                       R6 R5 K19 ["Action"]
       71 GETUPVAL                         R5 3
       72 JUMPIFNOT                        R5 ; [+20]
       73 GETUPVAL                         R5 4
       74 CALL                             R5 0 1
       75 JUMPIFNOT                        R5 ; [+17]
       76 NAMECALL                         R5 R0 K20 ["_createInsertJobData"]
       78 CALL                             R5 1 1
       79 GETTABLEKS                       R6 R0 K0 ["_pluginController"]
       81 NAMECALL                         R6 R6 K13 ["getPlugin"]
       83 CALL                             R6 1 1
       84 LOADK                            R8 K21 ["AssetInsertController"]
       85 NAMECALL                         R6 R6 K22 ["GetPluginComponent"]
       87 CALL                             R6 2 1
       88 MOVE                             R9 R5
       89 NAMECALL                         R7 R6 K23 ["DispatchInsertJobAsync"]
       91 CALL                             R7 2 0
       92 RETURN                           R0 0
       93 GETUPVAL                         R5 5
       94 MOVE                             R6 R0
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R8 R0 K24 ["_networking"]
       98 CALL                             R5 3 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R3 R0 K25 ["_items_DEPRECATED"]
      102 GETIMPORT                        R4 K27 [next]
      104 GETTABLEKS                       R5 R0 K9 ["_selection"]
      106 CALL                             R4 1 1
      107 GETTABLE                         R2 R3 R4
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R4 R5 K8 ["keys"]
      111 GETTABLEKS                       R5 R0 K9 ["_selection"]
      113 CALL                             R4 1 1
      114 LENGTH                           R3 R4
      115 JUMPIFNOTEQKN                    R3 K10 [1] ; [+20]
      117 GETTABLEKS                       R3 R2 K6 ["AssetType"]
      119 GETUPVAL                         R6 1
      120 GETTABLEKS                       R5 R6 K6 ["AssetType"]
      122 GETTABLEKS                       R4 R5 K11 ["Place"]
      124 JUMPIFNOTEQ                      R3 R4 ; [+11]
      126 NAMECALL                         R3 R0 K13 ["getPlugin"]
      128 CALL                             R3 1 1
      129 LOADK                            R5 K14 ["OnOpenPlace"]
      130 GETTABLEKS                       R6 R2 K12 ["AssetId"]
      132 NAMECALL                         R3 R3 K15 ["Invoke"]
      134 CALL                             R3 3 0
      135 RETURN                           R0 0
      136 GETTABLEKS                       R3 R0 K16 ["_analyticsState"]
      138 SETTABLEKS                       R1 R3 K17 ["Position"]
      140 GETTABLEKS                       R3 R0 K16 ["_analyticsState"]
      142 LOADK                            R4 K18 ["double_click"]
      143 SETTABLEKS                       R4 R3 K19 ["Action"]
      145 GETUPVAL                         R3 3
      146 JUMPIFNOT                        R3 ; [+20]
      147 GETUPVAL                         R3 4
      148 CALL                             R3 0 1
      149 JUMPIFNOT                        R3 ; [+17]
      150 NAMECALL                         R3 R0 K20 ["_createInsertJobData"]
      152 CALL                             R3 1 1
      153 GETTABLEKS                       R4 R0 K0 ["_pluginController"]
      155 NAMECALL                         R4 R4 K13 ["getPlugin"]
      157 CALL                             R4 1 1
      158 LOADK                            R6 K21 ["AssetInsertController"]
      159 NAMECALL                         R4 R4 K22 ["GetPluginComponent"]
      161 CALL                             R4 2 1
      162 MOVE                             R7 R3
      163 NAMECALL                         R5 R4 K23 ["DispatchInsertJobAsync"]
      165 CALL                             R5 2 0
      166 RETURN                           R0 0
      167 GETUPVAL                         R3 5
      168 MOVE                             R4 R0
      169 LOADNIL                          R5
      170 GETTABLEKS                       R6 R0 K24 ["_networking"]
      172 CALL                             R3 3 0
      173 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        5 GETTABLE                         R2 R3 R1
        6 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K2 ["_renderItems_DEPRECATED"]
       11 GETTABLE                         R3 R4 R1
       12 GETTABLEKS                       R2 R3 K3 ["AssetId"]
       14 SETTABLEKS                       R2 R0 K4 ["_lastAssetIdClicked"]
       16 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+56]
        3 GETTABLEKS                       R6 R0 K0 ["_renderItems"]
        5 GETTABLE                         R5 R6 R3
        6 JUMPIF                           R4 ; [+5]
        7 GETTABLEKS                       R6 R0 K1 ["_lastItemPathClicked"]
        9 JUMPIFEQ                         R6 R5 ; [+2]
       11 RETURN                           R0 0
       12 JUMPIFNOT                        R2 ; [+11]
       13 NEWTABLE                         R8 0 1
       15 MOVE                             R9 R5
       16 SETLIST                          R8 R9 1 [1]
       18 NAMECALL                         R6 R0 K2 ["modifySelection"]
       20 CALL                             R6 2 0
       21 SETTABLEKS                       R3 R0 K3 ["_selectStartIndex"]
       23 JUMP                             ; [+28]
       24 JUMPIFNOT                        R1 ; [+15]
       25 SETTABLEKS                       R3 R0 K4 ["_selectEndIndex"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R7 R0 K0 ["_renderItems"]
       30 GETTABLEKS                       R8 R0 K3 ["_selectStartIndex"]
       32 GETTABLEKS                       R9 R0 K4 ["_selectEndIndex"]
       34 CALL                             R6 3 1
       35 MOVE                             R9 R6
       36 NAMECALL                         R7 R0 K5 ["setSelection"]
       38 CALL                             R7 2 0
       39 JUMP                             ; [+12]
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R5
       43 SETLIST                          R8 R9 1 [1]
       45 NAMECALL                         R6 R0 K5 ["setSelection"]
       47 CALL                             R6 2 0
       48 MOVE                             R8 R3
       49 NAMECALL                         R6 R0 K6 ["syncSelectionIndices"]
       51 CALL                             R6 2 0
       52 GETTABLEKS                       R6 R0 K7 ["_layoutController"]
       54 MOVE                             R8 R3
       55 NAMECALL                         R6 R6 K8 ["scrollToItem"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R6 R0 K9 ["_renderItems_DEPRECATED"]
       61 GETTABLE                         R5 R6 R3
       62 JUMPIF                           R5 ; [+1]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R6 R5 K10 ["AssetId"]
       66 JUMPIF                           R4 ; [+5]
       67 GETTABLEKS                       R7 R0 K11 ["_lastAssetIdClicked"]
       69 JUMPIFEQ                         R7 R6 ; [+2]
       71 RETURN                           R0 0
       72 JUMPIFNOT                        R2 ; [+11]
       73 NEWTABLE                         R9 0 1
       75 MOVE                             R10 R6
       76 SETLIST                          R9 R10 1 [1]
       78 NAMECALL                         R7 R0 K2 ["modifySelection"]
       80 CALL                             R7 2 0
       81 SETTABLEKS                       R3 R0 K3 ["_selectStartIndex"]
       83 JUMP                             ; [+28]
       84 JUMPIFNOT                        R1 ; [+15]
       85 SETTABLEKS                       R3 R0 K4 ["_selectEndIndex"]
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R8 R0 K9 ["_renderItems_DEPRECATED"]
       90 GETTABLEKS                       R9 R0 K3 ["_selectStartIndex"]
       92 GETTABLEKS                       R10 R0 K4 ["_selectEndIndex"]
       94 CALL                             R7 3 1
       95 MOVE                             R10 R7
       96 NAMECALL                         R8 R0 K12 ["setSelection_DEPRECATED"]
       98 CALL                             R8 2 0
       99 JUMP                             ; [+12]
      100 NEWTABLE                         R9 0 1
      102 MOVE                             R10 R6
      103 SETLIST                          R9 R10 1 [1]
      105 NAMECALL                         R7 R0 K12 ["setSelection_DEPRECATED"]
      107 CALL                             R7 2 0
      108 MOVE                             R9 R3
      109 NAMECALL                         R7 R0 K6 ["syncSelectionIndices"]
      111 CALL                             R7 2 0
      112 GETTABLEKS                       R7 R0 K7 ["_layoutController"]
      114 MOVE                             R9 R3
      115 NAMECALL                         R7 R7 K8 ["scrollToItem"]
      117 CALL                             R7 2 0
      118 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R4 R0 K0 ["_selectEndIndex"]
        2 ADD                              R3 R4 R2
        3 MOVE                             R6 R1
        4 LOADB                            R7 0
        5 MOVE                             R8 R3
        6 LOADB                            R9 1
        7 NAMECALL                         R4 R0 K1 ["changeSelection"]
        9 CALL                             R4 5 0
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R4 R0 K2 ["syncSelectionIndices"]
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_items_DEPRECATED"]
       11 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_renderItems_DEPRECATED"]
        8 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["_renderItems"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["_renderItems_DEPRECATED"]
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+26]
       11 NAMECALL                         R3 R0 K2 ["getCurrentShownScope"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R0 K3 ["_itemsCache"]
       16 GETTABLEKS                       R6 R3 K4 ["Uid"]
       18 NAMECALL                         R4 R4 K5 ["getScope"]
       20 CALL                             R4 2 1
       21 JUMPIFNOTEQKNIL                  R4 ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
       26 GETTABLEKS                       R7 R3 K4 ["Uid"]
       28 NAMECALL                         R5 R5 K5 ["getScope"]
       30 CALL                             R5 2 1
       31 GETTABLEKS                       R4 R5 K6 ["NextPageToken"]
       33 JUMPIFNOTEQKNIL                  R4 ; [+19]
       35 RETURN                           R0 0
       36 JUMP                             ; [+16]
       37 GETTABLEKS                       R4 R0 K7 ["_networking"]
       39 GETTABLEKS                       R3 R4 K8 ["nextPageToken"]
       41 JUMPIFNOTEQKS                    R3 K9 [""] ; [+7]
       43 GETTABLEKS                       R4 R0 K7 ["_networking"]
       45 GETTABLEKS                       R3 R4 K10 ["nextPlacesPageToken"]
       47 JUMPIFEQKS                       R3 K9 [""] ; [+4]
       49 LENGTH                           R3 R2
       50 JUMPIFNOTLE                      R1 R3 ; [+2]
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R0 K11 ["_searchController"]
       55 NAMECALL                         R3 R3 K12 ["getShowSearchOptions"]
       57 CALL                             R3 1 1
       58 JUMPIFNOT                        R3 ; [+65]
       59 GETTABLEKS                       R3 R0 K11 ["_searchController"]
       61 NAMECALL                         R3 R3 K13 ["getSearchOptions"]
       63 CALL                             R3 1 1
       64 DUPTABLE                         R4 K17 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       65 GETTABLEKS                       R5 R0 K11 ["_searchController"]
       67 NAMECALL                         R5 R5 K18 ["getSearchTerm"]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K14 ["SearchTerm"]
       72 GETTABLEKS                       R5 R3 K15 ["AssetType"]
       74 SETTABLEKS                       R5 R4 K15 ["AssetType"]
       76 GETTABLEKS                       R5 R3 K16 ["ScopeInfo"]
       78 SETTABLEKS                       R5 R4 K16 ["ScopeInfo"]
       80 GETUPVAL                         R5 0
       81 CALL                             R5 0 1
       82 JUMPIFNOT                        R5 ; [+29]
       83 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
       85 GETTABLEKS                       R8 R4 K16 ["ScopeInfo"]
       87 GETTABLEKS                       R7 R8 K4 ["Uid"]
       89 NAMECALL                         R5 R5 K5 ["getScope"]
       91 CALL                             R5 2 1
       92 LOADB                            R6 1
       93 SETTABLEKS                       R6 R5 K19 ["Loading"]
       95 GETTABLEKS                       R8 R4 K16 ["ScopeInfo"]
       97 NAMECALL                         R6 R0 K20 ["_getNewItemsHandler"]
       99 CALL                             R6 2 1
      100 GETTABLEKS                       R7 R0 K7 ["_networking"]
      102 MOVE                             R9 R4
      103 GETTABLEKS                       R10 R5 K6 ["NextPageToken"]
      105 MOVE                             R11 R6
      106 GETTABLEKS                       R12 R0 K21 ["_fetchAssetsErrorCallback"]
      108 NAMECALL                         R7 R7 K22 ["searchAssetsAsync"]
      110 CALL                             R7 5 0
      111 RETURN                           R0 0
      112 GETTABLEKS                       R5 R0 K7 ["_networking"]
      114 MOVE                             R7 R4
      115 LOADNIL                          R8
      116 GETTABLEKS                       R9 R0 K23 ["_fetchAssetsCallback"]
      118 GETTABLEKS                       R10 R0 K21 ["_fetchAssetsErrorCallback"]
      120 NAMECALL                         R5 R5 K22 ["searchAssetsAsync"]
      122 CALL                             R5 5 0
      123 RETURN                           R0 0
      124 GETTABLEKS                       R3 R0 K24 ["_pluginController"]
      126 NAMECALL                         R3 R3 K25 ["getCurrentScope"]
      128 CALL                             R3 1 1
      129 GETUPVAL                         R4 0
      130 CALL                             R4 0 1
      131 JUMPIFNOT                        R4 ; [+34]
      132 MOVE                             R6 R3
      133 NAMECALL                         R4 R0 K20 ["_getNewItemsHandler"]
      135 CALL                             R4 2 1
      136 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
      138 GETTABLEKS                       R7 R3 K4 ["Uid"]
      140 NAMECALL                         R5 R5 K5 ["getScope"]
      142 CALL                             R5 2 1
      143 JUMPIF                           R5 ; [+7]
      144 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
      146 GETTABLEKS                       R7 R3 K4 ["Uid"]
      148 NAMECALL                         R5 R5 K26 ["addScope"]
      150 CALL                             R5 2 1
      151 LOADB                            R6 1
      152 SETTABLEKS                       R6 R5 K19 ["Loading"]
      154 GETTABLEKS                       R6 R0 K7 ["_networking"]
      156 MOVE                             R8 R3
      157 GETTABLEKS                       R9 R5 K6 ["NextPageToken"]
      159 MOVE                             R10 R4
      160 GETTABLEKS                       R11 R0 K21 ["_fetchAssetsErrorCallback"]
      162 NAMECALL                         R6 R6 K27 ["fetchAssetsAsync"]
      164 CALL                             R6 5 0
      165 RETURN                           R0 0
      166 GETTABLEKS                       R4 R0 K7 ["_networking"]
      168 MOVE                             R6 R3
      169 LOADNIL                          R7
      170 GETTABLEKS                       R8 R0 K23 ["_fetchAssetsCallback"]
      172 GETTABLEKS                       R9 R0 K21 ["_fetchAssetsErrorCallback"]
      174 NAMECALL                         R4 R4 K27 ["fetchAssetsAsync"]
      176 CALL                             R4 5 0
      177 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["findSpecialAssets is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R9 R0 K3 ["_items_DEPRECATED"]
       17 GETTABLE                         R8 R9 R7
       18 JUMPIFNOT                        R8 ; [+24]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R10 R8 K4 ["AssetType"]
       22 CALL                             R9 1 1
       23 JUMPIF                           R9 ; [+19]
       24 GETTABLEKS                       R10 R8 K4 ["AssetType"]
       26 GETTABLE                         R9 R2 R10
       27 JUMPIF                           R9 ; [+5]
       28 GETTABLEKS                       R9 R8 K4 ["AssetType"]
       30 NEWTABLE                         R10 0 0
       32 SETTABLE                         R10 R2 R9
       33 GETTABLEKS                       R11 R8 K4 ["AssetType"]
       35 GETTABLE                         R10 R2 R11
       36 GETTABLEKS                       R11 R8 K5 ["AssetId"]
       38 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       40 GETIMPORT                        R9 K8 [table.insert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R3 2 ; [-29]
       45 RETURN                           R2 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R1 R0 K0 ["_createRenderItems"]
        5 CALL                             R1 1 0
        6 JUMP                             ; [+3]
        7 NAMECALL                         R1 R0 K1 ["_updateRenderItems"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K2 ["OnSortFilterChanged"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K3 ["_sorts"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R0 K4 ["_filters"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R1 R1 K5 ["Fire"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R0 K0 ["_filters"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R6 R0 K0 ["_filters"]
        9 GETTABLE                         R5 R6 R1
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 SETTABLE                         R4 R3 R1
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K0 ["_filters"]
       16 SETTABLE                         R2 R3 R1
       17 RETURN                           R0 0

PROTO_46:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R9 R0 K0 ["_filters"]
        6 GETTABLE                         R8 R9 R1
        7 LOADNIL                          R9
        8 SETTABLE                         R9 R8 R7
        9 GETIMPORT                        R8 K2 [next]
       11 GETTABLEKS                       R10 R0 K0 ["_filters"]
       13 GETTABLE                         R9 R10 R1
       14 CALL                             R8 1 1
       15 JUMPIFNOTEQKNIL                  R8 ; [+5]
       17 GETTABLEKS                       R8 R0 K0 ["_filters"]
       19 LOADNIL                          R9
       20 SETTABLE                         R9 R8 R1
       21 FORGLOOP                         R3 2 ; [-18]
       23 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["_filters"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R3 R4 K2 ["AssetType"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETTABLEKS                       R1 R0 K0 ["_filters"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
       14 GETTABLEKS                       R2 R3 K2 ["AssetType"]
       16 LOADNIL                          R3
       17 SETTABLE                         R3 R1 R2
       18 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_49:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["hasFilter"]
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 MOVE                             R5 R1
        7 NEWTABLE                         R6 0 1
        9 MOVE                             R7 R2
       10 SETLIST                          R6 R7 1 [1]
       12 NAMECALL                         R3 R0 K1 ["_removeFilter"]
       14 CALL                             R3 3 0
       15 JUMP                             ; [+8]
       16 MOVE                             R5 R1
       17 NEWTABLE                         R6 1 0
       19 LOADB                            R7 1
       20 SETTABLE                         R7 R6 R2
       21 NAMECALL                         R3 R0 K2 ["_addFilter"]
       23 CALL                             R3 3 0
       24 NAMECALL                         R3 R0 K3 ["_updateSortFilter"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R2 R0 K0 ["_filters"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R3 R4 K2 ["IsPackage"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETTABLEKS                       R1 R0 K0 ["_filters"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
       14 GETTABLEKS                       R2 R3 K2 ["IsPackage"]
       16 LOADNIL                          R3
       17 SETTABLE                         R3 R1 R2
       18 JUMP                             ; [+9]
       19 GETTABLEKS                       R1 R0 K0 ["_filters"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R2 R3 K2 ["IsPackage"]
       26 LOADB                            R3 1
       27 SETTABLE                         R3 R1 R2
       28 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R2 R3 K2 ["Archived"]
        7 GETTABLEKS                       R5 R0 K0 ["_filters"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K1 ["AssetInfoField"]
       12 GETTABLEKS                       R6 R7 K2 ["Archived"]
       14 GETTABLE                         R4 R5 R6
       15 NOT                              R3 R4
       16 SETTABLE                         R3 R1 R2
       17 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_52:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["AssetInfoField"]
        5 GETTABLEKS                       R2 R3 K1 ["Archived"]
        7 LOADB                            R3 0
        8 SETTABLE                         R3 R1 R2
        9 SETTABLEKS                       R1 R0 K2 ["_filters"]
       11 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_54:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_55:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_sorts"]
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K1 ["Key"]
        8 JUMPIFNOTEQ                      R8 R1 ; [+11]
       10 GETTABLEKS                       R8 R7 K2 ["IsAscending"]
       12 NOT                              R2 R8
       13 GETIMPORT                        R8 K5 [table.remove]
       15 GETTABLEKS                       R9 R0 K0 ["_sorts"]
       17 MOVE                             R10 R6
       18 CALL                             R8 2 0
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R3 2 ; [-15]
       22 DUPTABLE                         R3 K6 [{"Key", "IsAscending"}]
       23 SETTABLEKS                       R1 R3 K1 ["Key"]
       25 SETTABLEKS                       R2 R3 K2 ["IsAscending"]
       27 GETTABLEKS                       R5 R0 K0 ["_sorts"]
       29 LOADN                            R6 1
       30 FASTCALL3                        TABLE_INSERT R5 R6 R3
       32 MOVE                             R7 R3
       33 GETIMPORT                        R4 K8 [table.insert]
       35 CALL                             R4 3 0
       36 NAMECALL                         R4 R0 K9 ["_updateSortFilter"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getSelection_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_selection"]
       11 RETURN                           R1 1

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_58:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["setSelection_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R0 K3 ["_selection"]
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R7 R0 K3 ["_selection"]
       19 LOADB                            R8 1
       20 SETTABLE                         R8 R7 R6
       21 FORGLOOP                         R2 2 ; [-5]
       23 GETTABLEKS                       R2 R0 K4 ["OnItemSelectionChanged"]
       25 GETTABLEKS                       R4 R0 K3 ["_selection"]
       27 NAMECALL                         R2 R2 K5 ["Fire"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_59:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_selection"]
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R0 K0 ["_selection"]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R7 R6
       12 FORGLOOP                         R2 2 ; [-5]
       14 GETTABLEKS                       R2 R0 K1 ["OnItemSelectionChanged"]
       16 GETTABLEKS                       R4 R0 K0 ["_selection"]
       18 NAMECALL                         R2 R2 K2 ["Fire"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["modifySelection_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R8 R0 K3 ["_selection"]
       15 GETTABLE                         R7 R8 R6
       16 JUMPIFNOT                        R7 ; [+5]
       17 GETTABLEKS                       R7 R0 K3 ["_selection"]
       19 LOADNIL                          R8
       20 SETTABLE                         R8 R7 R6
       21 JUMP                             ; [+4]
       22 GETTABLEKS                       R7 R0 K3 ["_selection"]
       24 LOADB                            R8 1
       25 SETTABLE                         R8 R7 R6
       26 FORGLOOP                         R2 2 ; [-14]
       28 GETTABLEKS                       R2 R0 K4 ["OnItemSelectionChanged"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R5 R0 K3 ["_selection"]
       33 CALL                             R4 1 -1
       34 NAMECALL                         R2 R2 K5 ["Fire"]
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_61:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["_selection"]
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+5]
        8 GETTABLEKS                       R7 R0 K0 ["_selection"]
       10 LOADNIL                          R8
       11 SETTABLE                         R8 R7 R6
       12 JUMP                             ; [+4]
       13 GETTABLEKS                       R7 R0 K0 ["_selection"]
       15 LOADB                            R8 1
       16 SETTABLE                         R8 R7 R6
       17 FORGLOOP                         R2 2 ; [-14]
       19 GETTABLEKS                       R2 R0 K1 ["OnItemSelectionChanged"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R5 R0 K0 ["_selection"]
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R2 K2 ["Fire"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_62:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMPIF                           R3 ; [+10]
        2 NEWTABLE                         R6 0 0
        4 NAMECALL                         R4 R0 K0 ["setSelection"]
        6 CALL                             R4 2 0
        7 LOADN                            R6 1
        8 NAMECALL                         R4 R0 K1 ["syncSelectionIndices"]
       10 CALL                             R4 2 0
       11 JUMP                             ; [+16]
       12 GETTABLEKS                       R5 R0 K2 ["_selection"]
       14 GETTABLE                         R4 R5 R2
       15 JUMPIF                           R4 ; [+12]
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R2
       19 SETLIST                          R6 R7 1 [1]
       21 NAMECALL                         R4 R0 K0 ["setSelection"]
       23 CALL                             R4 2 0
       24 MOVE                             R6 R3
       25 NAMECALL                         R4 R0 K1 ["syncSelectionIndices"]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K3 ["_analyticsState"]
       30 SETTABLEKS                       R3 R4 K4 ["Position"]
       32 GETUPVAL                         R5 0
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K5 ["MenuContext"]
       36 GETTABLEKS                       R6 R7 K6 ["Asset"]
       38 GETTABLE                         R4 R5 R6
       39 DUPTABLE                         R5 K11 [{"PluginController", "ItemsController", "Networking", "Localization"}]
       40 GETTABLEKS                       R6 R0 K12 ["_pluginController"]
       42 SETTABLEKS                       R6 R5 K7 ["PluginController"]
       44 SETTABLEKS                       R0 R5 K8 ["ItemsController"]
       46 GETTABLEKS                       R6 R0 K13 ["_networking"]
       48 SETTABLEKS                       R6 R5 K9 ["Networking"]
       50 SETTABLEKS                       R1 R5 K10 ["Localization"]
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_64:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+36]
        7 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R3 R4 K1 ["Uid"]
       12 GETTABLEKS                       R4 R0 K2 ["_selection"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R0 K3 ["_itemsCache"]
       19 MOVE                             R11 R3
       20 MOVE                             R12 R7
       21 NAMECALL                         R9 R9 K4 ["getItem"]
       23 CALL                             R9 3 1
       24 GETTABLEKS                       R12 R9 K5 ["AssetId"]
       26 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       28 MOVE                             R11 R2
       29 GETIMPORT                        R10 K8 [table.insert]
       31 CALL                             R10 2 0
       32 GETTABLEKS                       R12 R9 K9 ["AssetType"]
       34 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       36 MOVE                             R11 R1
       37 GETIMPORT                        R10 K8 [table.insert]
       39 CALL                             R10 2 0
       40 FORGLOOP                         R4 2 ; [-24]
       42 JUMP                             ; [+24]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K10 ["keys"]
       46 GETTABLEKS                       R4 R0 K2 ["_selection"]
       48 CALL                             R3 1 1
       49 MOVE                             R2 R3
       50 MOVE                             R3 R2
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 GETTABLEKS                       R9 R0 K11 ["_items_DEPRECATED"]
       56 GETTABLE                         R8 R9 R7
       57 GETTABLEKS                       R11 R8 K9 ["AssetType"]
       59 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       61 MOVE                             R10 R1
       62 GETIMPORT                        R9 K8 [table.insert]
       64 CALL                             R9 2 0
       65 FORGLOOP                         R3 2 ; [-12]
       67 GETTABLEKS                       R5 R0 K12 ["_sorts"]
       69 LENGTH                           R4 R5
       70 LOADN                            R5 0
       71 JUMPIFNOTLT                      R5 R4 ; [+7]
       73 GETTABLEKS                       R5 R0 K12 ["_sorts"]
       75 GETTABLEN                        R4 R5 1
       76 GETTABLEKS                       R3 R4 K13 ["Key"]
       78 JUMP                             ; [+9]
       79 GETTABLEKS                       R5 R0 K14 ["_analyticsState"]
       81 GETTABLEKS                       R4 R5 K15 ["Source"]
       83 JUMPIFNOTEQKS                    R4 K16 ["search"] ; [+3]
       85 LOADK                            R3 K17 ["SearchRank"]
       86 JUMP                             ; [+1]
       87 LOADK                            R3 K18 [""]
       88 DUPTABLE                         R4 K30 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode"}]
       89 SETTABLEKS                       R2 R4 K19 ["assetIds"]
       91 SETTABLEKS                       R1 R4 K20 ["assetTypes"]
       93 GETTABLEKS                       R6 R0 K14 ["_analyticsState"]
       95 GETTABLEKS                       R5 R6 K31 ["Action"]
       97 SETTABLEKS                       R5 R4 K21 ["insertType"]
       99 GETTABLEKS                       R6 R0 K14 ["_analyticsState"]
      101 GETTABLEKS                       R5 R6 K15 ["Source"]
      103 SETTABLEKS                       R5 R4 K22 ["insertSource"]
      105 GETTABLEKS                       R5 R0 K32 ["_searchController"]
      107 NAMECALL                         R5 R5 K33 ["getSearchTerm"]
      109 CALL                             R5 1 1
      110 SETTABLEKS                       R5 R4 K23 ["searchKeywords"]
      112 GETTABLEKS                       R5 R0 K32 ["_searchController"]
      114 NAMECALL                         R5 R5 K34 ["getSearchId"]
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R4 K24 ["searchId"]
      119 GETUPVAL                         R6 1
      120 GETTABLEKS                       R5 R6 K10 ["keys"]
      122 GETTABLEKS                       R6 R0 K35 ["_filters"]
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R4 K25 ["filterTypes"]
      127 SETTABLEKS                       R3 R4 K26 ["sortType"]
      129 GETTABLEKS                       R6 R0 K14 ["_analyticsState"]
      131 GETTABLEKS                       R5 R6 K36 ["Position"]
      133 SETTABLEKS                       R5 R4 K27 ["position"]
      135 GETTABLEKS                       R5 R0 K37 ["_layoutController"]
      137 NAMECALL                         R5 R5 K38 ["getIsCompact"]
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K28 ["isCompact"]
      142 GETTABLEKS                       R7 R0 K37 ["_layoutController"]
      144 NAMECALL                         R7 R7 K39 ["getBrowserLayout"]
      146 CALL                             R7 1 1
      147 GETTABLEKS                       R6 R7 K40 ["ViewType"]
      149 GETUPVAL                         R9 2
      150 GETTABLEKS                       R8 R9 K40 ["ViewType"]
      152 GETTABLEKS                       R7 R8 K41 ["List"]
      154 JUMPIFNOTEQ                      R6 R7 ; [+3]
      156 LOADK                            R5 K42 ["list"]
      157 JUMP                             ; [+1]
      158 LOADK                            R5 K43 ["grid"]
      159 SETTABLEKS                       R5 R4 K29 ["viewMode"]
      161 GETUPVAL                         R6 3
      162 GETTABLEKS                       R5 R6 K44 ["sendInsertEvent"]
      164 MOVE                             R6 R4
      165 CALL                             R5 1 0
      166 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["getIdAssetType is deprecated when using ItemsCache"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R3 R0 K3 ["_items_DEPRECATED"]
       11 GETTABLE                         R2 R3 R1
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R2 K4 ["AssetType"]
       17 RETURN                           R3 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

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
       22 GETTABLEKS                       R5 R6 K10 ["Dash"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["copy"]
       27 GETTABLEKS                       R6 R4 K12 ["join"]
       29 GETTABLEKS                       R7 R4 K13 ["keys"]
       31 GETTABLEKS                       R8 R1 K14 ["Util"]
       33 GETTABLEKS                       R9 R8 K15 ["Signal"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R13 R0 K16 ["Src"]
       39 GETTABLEKS                       R12 R13 K14 ["Util"]
       41 GETTABLEKS                       R11 R12 K17 ["getAssetInfosSlice"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R14 R0 K16 ["Src"]
       48 GETTABLEKS                       R13 R14 K14 ["Util"]
       50 GETTABLEKS                       R12 R13 K18 ["insertItems"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R14 R0 K16 ["Src"]
       57 GETTABLEKS                       R13 R14 K19 ["Types"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R16 R0 K16 ["Src"]
       64 GETTABLEKS                       R15 R16 K20 ["Controllers"]
       66 GETTABLEKS                       R14 R15 K21 ["ItemsCache"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R17 R0 K16 ["Src"]
       73 GETTABLEKS                       R16 R17 K14 ["Util"]
       75 GETTABLEKS                       R15 R16 K22 ["cleanConnections"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R18 R0 K16 ["Src"]
       82 GETTABLEKS                       R17 R18 K14 ["Util"]
       84 GETTABLEKS                       R16 R17 K23 ["renderContextMenu"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R19 R0 K16 ["Src"]
       91 GETTABLEKS                       R18 R19 K14 ["Util"]
       93 GETTABLEKS                       R17 R18 K24 ["compareInfoField"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K5 [require]
       98 GETTABLEKS                       R20 R0 K16 ["Src"]
      100 GETTABLEKS                       R19 R20 K14 ["Util"]
      102 GETTABLEKS                       R18 R19 K25 ["convertToEngineAssetTypeEnum"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R21 R0 K16 ["Src"]
      109 GETTABLEKS                       R20 R21 K14 ["Util"]
      111 GETTABLEKS                       R19 R20 K26 ["applyInfoFieldFilter_DEPRECATED"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K5 [require]
      116 GETTABLEKS                       R22 R0 K16 ["Src"]
      118 GETTABLEKS                       R21 R22 K14 ["Util"]
      120 GETTABLEKS                       R20 R21 K27 ["isInsertable"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R23 R0 K16 ["Src"]
      127 GETTABLEKS                       R22 R23 K14 ["Util"]
      129 GETTABLEKS                       R21 R22 K28 ["DefaultSort"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K5 [require]
      134 GETTABLEKS                       R24 R0 K16 ["Src"]
      136 GETTABLEKS                       R23 R24 K14 ["Util"]
      138 GETTABLEKS                       R22 R23 K29 ["logIfDebug"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K5 [require]
      143 GETTABLEKS                       R24 R0 K16 ["Src"]
      145 GETTABLEKS                       R23 R24 K30 ["Analytics"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K5 [require]
      150 GETTABLEKS                       R26 R0 K16 ["Src"]
      152 GETTABLEKS                       R25 R26 K31 ["Flags"]
      154 GETTABLEKS                       R24 R25 K32 ["getEFAssetInsertComponentEnabled"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R27 R0 K16 ["Src"]
      161 GETTABLEKS                       R26 R27 K31 ["Flags"]
      163 GETTABLEKS                       R25 R26 K33 ["getFFlagEnableAssetInserter"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K16 ["Src"]
      170 GETTABLEKS                       R27 R28 K31 ["Flags"]
      172 GETTABLEKS                       R26 R27 K34 ["getFFlagAmrUpdatedItemsCache"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K16 ["Src"]
      179 GETTABLEKS                       R28 R29 K31 ["Flags"]
      181 GETTABLEKS                       R27 R28 K35 ["getFFlagAmrCleanupContextAndInput"]
      183 CALL                             R26 1 1
      184 LOADK                            R29 K36 ["ItemsController"]
      185 NAMECALL                         R27 R3 K37 ["extend"]
      187 CALL                             R27 2 1
      188 DUPCLOSURE                       R28 K38 [PROTO_0]
      189 CAPTURE                          VAL R18
      190 DUPCLOSURE                       R29 K39 [PROTO_1]
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R28
      194 DUPCLOSURE                       R30 K40 [PROTO_3]
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R16
      197 DUPCLOSURE                       R31 K41 [PROTO_4]
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R16
      201 DUPCLOSURE                       R32 K42 [PROTO_5]
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R19
      204 DUPCLOSURE                       R33 K43 [PROTO_6]
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R17
      208 DUPCLOSURE                       R34 K44 [PROTO_17]
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R27
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R4
      220 SETTABLEKS                       R34 R27 K45 ["new"]
      222 DUPCLOSURE                       R34 K46 [PROTO_18]
      223 CAPTURE                          VAL R27
      224 SETTABLEKS                       R34 R27 K47 ["mock"]
      226 DUPCLOSURE                       R34 K48 [PROTO_19]
      227 SETTABLEKS                       R34 R27 K49 ["getIsMock"]
      229 DUPCLOSURE                       R34 K50 [PROTO_20]
      230 CAPTURE                          VAL R14
      231 SETTABLEKS                       R34 R27 K51 ["destroy"]
      233 DUPCLOSURE                       R34 K52 [PROTO_21]
      234 SETTABLEKS                       R34 R27 K53 ["getCurrentShownScope"]
      236 DUPCLOSURE                       R34 K54 [PROTO_23]
      237 CAPTURE                          VAL R26
      238 SETTABLEKS                       R34 R27 K55 ["_getNewItemsHandler"]
      240 DUPCLOSURE                       R34 K56 [PROTO_24]
      241 SETTABLEKS                       R34 R27 K57 ["_createRenderItems"]
      243 DUPCLOSURE                       R34 K58 [PROTO_25]
      244 CAPTURE                          VAL R25
      245 SETTABLEKS                       R34 R27 K59 ["_clearItems"]
      247 DUPCLOSURE                       R34 K60 [PROTO_26]
      248 CAPTURE                          VAL R25
      249 CAPTURE                          VAL R20
      250 SETTABLEKS                       R34 R27 K61 ["_clearAndFetchNewItems"]
      252 DUPCLOSURE                       R34 K62 [PROTO_27]
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R12
      256 SETTABLEKS                       R34 R27 K63 ["_clearAndFetchSearchItems"]
      258 DUPCLOSURE                       R34 K64 [PROTO_28]
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R20
      261 SETTABLEKS                       R34 R27 K65 ["refreshItems"]
      263 DUPCLOSURE                       R34 K66 [PROTO_29]
      264 CAPTURE                          VAL R25
      265 CAPTURE                          VAL R29
      266 CAPTURE                          VAL R16
      267 SETTABLEKS                       R34 R27 K67 ["_updateRenderItems"]
      269 DUPCLOSURE                       R34 K68 [PROTO_30]
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R32
      273 CAPTURE                          VAL R4
      274 CAPTURE                          VAL R17
      275 SETTABLEKS                       R34 R27 K69 ["_createInsertJobData"]
      277 DUPCLOSURE                       R34 K70 [PROTO_31]
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R12
      280 CAPTURE                          VAL R4
      281 CAPTURE                          VAL R23
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R11
      284 SETTABLEKS                       R34 R27 K71 ["handleDoubleClick"]
      286 DUPCLOSURE                       R34 K72 [PROTO_32]
      287 CAPTURE                          VAL R25
      288 SETTABLEKS                       R34 R27 K73 ["setLastItemClicked"]
      290 DUPCLOSURE                       R34 K74 [PROTO_33]
      291 CAPTURE                          VAL R25
      292 CAPTURE                          VAL R10
      293 SETTABLEKS                       R34 R27 K75 ["changeSelection"]
      295 DUPCLOSURE                       R34 K76 [PROTO_34]
      296 SETTABLEKS                       R34 R27 K77 ["moveSelection"]
      298 DUPCLOSURE                       R34 K78 [PROTO_35]
      299 SETTABLEKS                       R34 R27 K79 ["syncSelectionIndices"]
      301 DUPCLOSURE                       R34 K80 [PROTO_36]
      302 CAPTURE                          VAL R25
      303 SETTABLEKS                       R34 R27 K81 ["getItems"]
      305 DUPCLOSURE                       R34 K82 [PROTO_37]
      306 SETTABLEKS                       R34 R27 K83 ["getItemInfo"]
      308 DUPCLOSURE                       R34 K84 [PROTO_38]
      309 SETTABLEKS                       R34 R27 K85 ["getItemsCache"]
      311 DUPCLOSURE                       R34 K86 [PROTO_39]
      312 CAPTURE                          VAL R25
      313 SETTABLEKS                       R34 R27 K87 ["getRenderItems"]
      315 DUPCLOSURE                       R34 K88 [PROTO_40]
      316 CAPTURE                          VAL R25
      317 SETTABLEKS                       R34 R27 K89 ["requestNextPage"]
      319 DUPCLOSURE                       R34 K90 [PROTO_41]
      320 CAPTURE                          VAL R25
      321 CAPTURE                          VAL R19
      322 SETTABLEKS                       R34 R27 K91 ["findSpecialAssets"]
      324 DUPCLOSURE                       R34 K92 [PROTO_42]
      325 CAPTURE                          VAL R7
      326 SETTABLEKS                       R34 R27 K93 ["getCreators"]
      328 DUPCLOSURE                       R34 K94 [PROTO_43]
      329 CAPTURE                          VAL R25
      330 CAPTURE                          VAL R5
      331 SETTABLEKS                       R34 R27 K95 ["_updateSortFilter"]
      333 DUPCLOSURE                       R34 K96 [PROTO_44]
      334 SETTABLEKS                       R34 R27 K97 ["getFilters"]
      336 DUPCLOSURE                       R34 K98 [PROTO_45]
      337 CAPTURE                          VAL R6
      338 SETTABLEKS                       R34 R27 K99 ["_addFilter"]
      340 DUPCLOSURE                       R34 K100 [PROTO_46]
      341 SETTABLEKS                       R34 R27 K101 ["_removeFilter"]
      343 DUPCLOSURE                       R34 K102 [PROTO_47]
      344 CAPTURE                          VAL R12
      345 SETTABLEKS                       R34 R27 K103 ["_clearAssetTypeFilter"]
      347 DUPCLOSURE                       R34 K104 [PROTO_48]
      348 SETTABLEKS                       R34 R27 K105 ["hasFilter"]
      350 DUPCLOSURE                       R34 K106 [PROTO_49]
      351 SETTABLEKS                       R34 R27 K107 ["toggleFilter"]
      353 DUPCLOSURE                       R34 K108 [PROTO_50]
      354 CAPTURE                          VAL R12
      355 SETTABLEKS                       R34 R27 K109 ["togglePackagesFilter"]
      357 DUPCLOSURE                       R34 K110 [PROTO_51]
      358 CAPTURE                          VAL R12
      359 SETTABLEKS                       R34 R27 K111 ["toggleArchivedFilter"]
      361 DUPCLOSURE                       R34 K112 [PROTO_52]
      362 CAPTURE                          VAL R12
      363 SETTABLEKS                       R34 R27 K113 ["clearFilters"]
      365 DUPCLOSURE                       R34 K114 [PROTO_53]
      366 SETTABLEKS                       R34 R27 K115 ["getSorts"]
      368 DUPCLOSURE                       R34 K116 [PROTO_54]
      369 SETTABLEKS                       R34 R27 K117 ["setSorts"]
      371 DUPCLOSURE                       R34 K118 [PROTO_55]
      372 SETTABLEKS                       R34 R27 K119 ["addSort"]
      374 DUPCLOSURE                       R34 K120 [PROTO_56]
      375 CAPTURE                          VAL R25
      376 SETTABLEKS                       R34 R27 K121 ["getSelection_DEPRECATED"]
      378 DUPCLOSURE                       R34 K122 [PROTO_57]
      379 SETTABLEKS                       R34 R27 K123 ["getSelection"]
      381 DUPCLOSURE                       R34 K124 [PROTO_58]
      382 CAPTURE                          VAL R25
      383 SETTABLEKS                       R34 R27 K125 ["setSelection_DEPRECATED"]
      385 DUPCLOSURE                       R34 K126 [PROTO_59]
      386 SETTABLEKS                       R34 R27 K127 ["setSelection"]
      388 DUPCLOSURE                       R34 K128 [PROTO_60]
      389 CAPTURE                          VAL R25
      390 CAPTURE                          VAL R5
      391 SETTABLEKS                       R34 R27 K129 ["modifySelection_DEPRECATED"]
      393 DUPCLOSURE                       R34 K130 [PROTO_61]
      394 CAPTURE                          VAL R5
      395 SETTABLEKS                       R34 R27 K131 ["modifySelection"]
      397 DUPCLOSURE                       R34 K132 [PROTO_62]
      398 CAPTURE                          VAL R15
      399 CAPTURE                          VAL R12
      400 SETTABLEKS                       R34 R27 K133 ["handleRightClick"]
      402 DUPCLOSURE                       R34 K134 [PROTO_63]
      403 SETTABLEKS                       R34 R27 K135 ["setAnalyticsInsertAction"]
      405 DUPCLOSURE                       R34 K136 [PROTO_64]
      406 CAPTURE                          VAL R25
      407 CAPTURE                          VAL R4
      408 CAPTURE                          VAL R12
      409 CAPTURE                          VAL R22
      410 SETTABLEKS                       R34 R27 K137 ["sendInsertToAnalytics"]
      412 DUPCLOSURE                       R34 K138 [PROTO_65]
      413 CAPTURE                          VAL R25
      414 SETTABLEKS                       R34 R27 K139 ["getIdAssetType"]
      416 DUPCLOSURE                       R34 K140 [PROTO_66]
      417 SETTABLEKS                       R34 R27 K141 ["getPlugin"]
      419 RETURN                           R27 1
