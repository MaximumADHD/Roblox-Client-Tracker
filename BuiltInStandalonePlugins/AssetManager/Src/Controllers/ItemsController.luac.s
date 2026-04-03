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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["_destroyed"]
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R0 0
       14 MOVE                             R3 R0
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 0
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+16]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K4 ["_itemsCache"]
       24 MOVE                             R10 R7
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R12 R13 K5 ["_pluginController"]
       28 NAMECALL                         R12 R12 K6 ["getCurrentScope"]
       30 CALL                             R12 1 1
       31 GETTABLEKS                       R11 R12 K7 ["Uid"]
       33 NAMECALL                         R8 R8 K8 ["addItem"]
       35 CALL                             R8 3 0
       36 JUMP                             ; [+6]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K9 ["_items_DEPRECATED"]
       40 GETTABLEKS                       R9 R7 K10 ["AssetId"]
       42 SETTABLE                         R7 R8 R9
       43 FORGLOOP                         R3 2 ; [-26]
       45 LOADB                            R3 0
       46 MOVE                             R4 R1
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K11 ["_creators"]
       53 GETTABLE                         R9 R10 R7
       54 JUMPIF                           R9 ; [+4]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K11 ["_creators"]
       58 SETTABLE                         R8 R9 R7
       59 LOADB                            R3 1
       60 FORGLOOP                         R4 2 ; [-11]
       62 JUMPIFNOT                        R3 ; [+10]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R4 R5 K12 ["OnCreatorsChanged"]
       66 GETUPVAL                         R6 1
       67 NAMECALL                         R6 R6 K13 ["getCreators"]
       69 CALL                             R6 1 -1
       70 NAMECALL                         R4 R4 K14 ["Fire"]
       72 CALL                             R4 -1 0
       73 GETUPVAL                         R4 1
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R6 R7 K9 ["_items_DEPRECATED"]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R7 R8 K15 ["_sorts"]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R8 R9 K16 ["_filters"]
       83 GETUPVAL                         R11 0
       84 CALL                             R11 0 1
       85 NOT                              R10 R11
       86 FASTCALL2K                       ASSERT R10 K17 ; [+4]
       88 LOADK                            R11 K17 ["generateRenderItems is deprecated when using ItemsCache"]
       89 GETIMPORT                        R9 K2 [assert]
       91 CALL                             R9 2 0
       92 GETUPVAL                         R9 2
       93 MOVE                             R10 R6
       94 MOVE                             R11 R8
       95 CALL                             R9 2 1
       96 GETUPVAL                         R12 0
       97 CALL                             R12 0 1
       98 NOT                              R11 R12
       99 FASTCALL2K                       ASSERT R11 K18 ; [+4]
      101 LOADK                            R12 K18 ["sortItems is deprecated when using ItemsCache"]
      102 GETIMPORT                        R10 K2 [assert]
      104 CALL                             R10 2 0
      105 NEWCLOSURE                       R10 P0
      106 CAPTURE                          VAL R7
      107 CAPTURE                          UPVAL U3
      108 GETIMPORT                        R11 K21 [table.sort]
      110 MOVE                             R12 R9
      111 MOVE                             R13 R10
      112 CALL                             R11 2 0
      113 MOVE                             R5 R9
      114 SETTABLEKS                       R5 R4 K22 ["_renderItems_DEPRECATED"]
      116 GETUPVAL                         R5 1
      117 GETTABLEKS                       R4 R5 K23 ["OnItemsChanged"]
      119 GETUPVAL                         R7 1
      120 GETTABLEKS                       R6 R7 K22 ["_renderItems_DEPRECATED"]
      122 NAMECALL                         R4 R4 K14 ["Fire"]
      124 CALL                             R4 2 0
      125 JUMPIFNOT                        R2 ; [+7]
      126 GETUPVAL                         R5 1
      127 GETTABLEKS                       R4 R5 K5 ["_pluginController"]
      129 MOVE                             R6 R2
      130 NAMECALL                         R4 R4 K24 ["setRootPlace"]
      132 CALL                             R4 2 0
      133 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["_explorerController"]
        6 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 CALL                             R2 2 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["_itemsCache"]
       16 MOVE                             R5 R2
       17 GETTABLEKS                       R6 R1 K3 ["Uid"]
       19 NAMECALL                         R3 R3 K4 ["removeItem"]
       21 CALL                             R3 3 0
       22 GETUPVAL                         R3 1
       23 NAMECALL                         R3 R3 K5 ["_createRenderItems"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K6 ["_items_DEPRECATED"]
       30 LOADNIL                          R2
       31 SETTABLE                         R2 R1 R0
       32 GETUPVAL                         R1 1
       33 NAMECALL                         R1 R1 K7 ["_updateRenderItems"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+32]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["_explorerController"]
        6 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 GETTABLEKS                       R4 R0 K2 ["Id"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["_itemsCache"]
       17 GETTABLEKS                       R5 R1 K4 ["Uid"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K5 ["AssetInfoField"]
       23 GETTABLEKS                       R7 R8 K6 ["DisplayName"]
       25 GETTABLEKS                       R8 R0 K7 ["Name"]
       27 NAMECALL                         R3 R3 K8 ["updateItemField"]
       29 CALL                             R3 5 0
       30 GETUPVAL                         R3 1
       31 NAMECALL                         R3 R3 K9 ["_createRenderItems"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K10 ["_items_DEPRECATED"]
       38 GETTABLEKS                       R3 R0 K2 ["Id"]
       40 GETTABLE                         R1 R2 R3
       41 GETTABLEKS                       R2 R0 K7 ["Name"]
       43 SETTABLEKS                       R2 R1 K6 ["DisplayName"]
       45 GETUPVAL                         R1 1
       46 NAMECALL                         R1 R1 K11 ["_updateRenderItems"]
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+50]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+47]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K1 ["addRecent"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K2 ["getCurrentShownScope"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R1 R2 K3 ["Uid"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K4 ["RecentUploads"]
       22 GETTABLEKS                       R2 R3 K3 ["Uid"]
       24 JUMPIFNOTEQ                      R1 R2 ; [+28]
       26 GETUPVAL                         R1 2
       27 NAMECALL                         R1 R1 K5 ["_createRenderItems"]
       29 CALL                             R1 1 0
       30 LOADN                            R1 1
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R2 R5 K6 ["_renderItems"]
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETTABLEKS                       R7 R0 K7 ["Path"]
       39 JUMPIFNOTEQ                      R6 R7 ; [+3]
       41 MOVE                             R1 R5
       42 JUMP                             ; [+2]
       43 FORGLOOP                         R2 2 ; [-7]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R2 R3 K8 ["_layoutController"]
       48 MOVE                             R4 R1
       49 NAMECALL                         R2 R2 K9 ["scrollToItem"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R1 R2 K10 ["_searchController"]
       56 NAMECALL                         R1 R1 K11 ["getShowSearchOptions"]
       58 CALL                             R1 1 1
       59 JUMPIFNOT                        R1 ; [+1]
       60 RETURN                           R0 0
       61 GETTABLEKS                       R3 R0 K12 ["Creator"]
       63 GETTABLEKS                       R2 R3 K3 ["Uid"]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R4 R5 K13 ["_pluginController"]
       68 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
       70 CALL                             R4 1 1
       71 GETTABLEKS                       R3 R4 K3 ["Uid"]
       73 JUMPIFEQ                         R2 R3 ; [+2]
       75 LOADB                            R1 0 +1
       76 LOADB                            R1 1
       77 JUMPIF                           R1 ; [+1]
       78 RETURN                           R0 0
       79 GETUPVAL                         R2 0
       80 CALL                             R2 0 1
       81 JUMPIFNOT                        R2 ; [+41]
       82 GETUPVAL                         R3 2
       83 GETTABLEKS                       R2 R3 K0 ["_itemsCache"]
       85 GETTABLEKS                       R5 R0 K12 ["Creator"]
       87 GETTABLEKS                       R4 R5 K3 ["Uid"]
       89 NAMECALL                         R2 R2 K15 ["hasScope"]
       91 CALL                             R2 2 1
       92 JUMPIFNOT                        R2 ; [+40]
       93 GETUPVAL                         R3 2
       94 GETTABLEKS                       R2 R3 K0 ["_itemsCache"]
       96 MOVE                             R4 R0
       97 GETTABLEKS                       R6 R0 K12 ["Creator"]
       99 GETTABLEKS                       R5 R6 K3 ["Uid"]
      101 NAMECALL                         R2 R2 K16 ["addItem"]
      103 CALL                             R2 3 0
      104 GETUPVAL                         R4 2
      105 GETTABLEKS                       R3 R4 K13 ["_pluginController"]
      107 NAMECALL                         R3 R3 K14 ["getCurrentScope"]
      109 CALL                             R3 1 1
      110 GETTABLEKS                       R2 R3 K3 ["Uid"]
      112 GETTABLEKS                       R4 R0 K12 ["Creator"]
      114 GETTABLEKS                       R3 R4 K3 ["Uid"]
      116 JUMPIFNOTEQ                      R2 R3 ; [+16]
      118 GETUPVAL                         R2 2
      119 NAMECALL                         R2 R2 K5 ["_createRenderItems"]
      121 CALL                             R2 1 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R3 2
      124 GETTABLEKS                       R2 R3 K17 ["_items_DEPRECATED"]
      126 GETTABLEKS                       R3 R0 K18 ["AssetId"]
      128 SETTABLE                         R0 R2 R3
      129 GETUPVAL                         R2 2
      130 NAMECALL                         R2 R2 K19 ["_updateRenderItems"]
      132 CALL                             R2 1 0
      133 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R2 K32 [{"_isMock", "_destroyed", "_pluginController", "_explorerController", "_searchController", "_layoutController", "_networking", "_columnWidths", "_items_DEPRECATED", "_renderItems_DEPRECATED", "_itemsCache", "_renderItems", "_creators", "_filters", "_sorts", "_selection", "_stagedEditItemPath", "_selectStartIndex", "_selectEndIndex", "_clickState", "_isDragging", "_lastItemPathClicked", "_lastAssetIdClicked", "_analyticsState", "_connections", "OnVisiblePropertiesChanged", "OnItemsChanged", "OnItemSelectionChanged", "OnSortFilterChanged", "OnCreatorsChanged", "OnScopeFetchProgressChanged", "OnStagedEditItemPathChanged"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["_destroyed"]
        6 GETTABLEKS                       R3 R0 K33 ["PluginController"]
        8 SETTABLEKS                       R3 R2 K2 ["_pluginController"]
       10 GETTABLEKS                       R3 R0 K34 ["ExplorerController"]
       12 SETTABLEKS                       R3 R2 K3 ["_explorerController"]
       14 GETTABLEKS                       R3 R0 K35 ["SearchController"]
       16 SETTABLEKS                       R3 R2 K4 ["_searchController"]
       18 GETTABLEKS                       R3 R0 K36 ["LayoutController"]
       20 SETTABLEKS                       R3 R2 K5 ["_layoutController"]
       22 GETTABLEKS                       R3 R0 K37 ["Networking"]
       24 SETTABLEKS                       R3 R2 K6 ["_networking"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K7 ["_columnWidths"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K8 ["_items_DEPRECATED"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K9 ["_renderItems_DEPRECATED"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K38 ["new"]
       41 LOADN                            R4 5
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K10 ["_itemsCache"]
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R2 K11 ["_renderItems"]
       49 NEWTABLE                         R3 0 0
       51 SETTABLEKS                       R3 R2 K12 ["_creators"]
       53 NEWTABLE                         R3 1 0
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R5 R6 K39 ["AssetInfoField"]
       58 GETTABLEKS                       R4 R5 K40 ["Archived"]
       60 LOADB                            R5 0
       61 SETTABLE                         R5 R3 R4
       62 SETTABLEKS                       R3 R2 K13 ["_filters"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R3 R4 K41 ["get"]
       67 CALL                             R3 0 1
       68 SETTABLEKS                       R3 R2 K14 ["_sorts"]
       70 NEWTABLE                         R3 0 0
       72 SETTABLEKS                       R3 R2 K15 ["_selection"]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K16 ["_stagedEditItemPath"]
       77 LOADN                            R3 1
       78 SETTABLEKS                       R3 R2 K17 ["_selectStartIndex"]
       80 LOADN                            R3 1
       81 SETTABLEKS                       R3 R2 K18 ["_selectEndIndex"]
       83 DUPTABLE                         R3 K44 [{"modsPressed", "targetAssetId"}]
       84 DUPTABLE                         R4 K47 [{"Shift", "Ctrl"}]
       85 LOADB                            R5 0
       86 SETTABLEKS                       R5 R4 K45 ["Shift"]
       88 LOADB                            R5 0
       89 SETTABLEKS                       R5 R4 K46 ["Ctrl"]
       91 SETTABLEKS                       R4 R3 K42 ["modsPressed"]
       93 LOADN                            R4 255
       94 SETTABLEKS                       R4 R3 K43 ["targetAssetId"]
       96 SETTABLEKS                       R3 R2 K19 ["_clickState"]
       98 LOADB                            R3 0
       99 SETTABLEKS                       R3 R2 K20 ["_isDragging"]
      101 LOADK                            R3 K48 [""]
      102 SETTABLEKS                       R3 R2 K21 ["_lastItemPathClicked"]
      104 LOADN                            R3 255
      105 SETTABLEKS                       R3 R2 K22 ["_lastAssetIdClicked"]
      107 DUPTABLE                         R3 K52 [{"Action", "Source", "Position"}]
      108 LOADK                            R4 K53 ["double_click"]
      109 SETTABLEKS                       R4 R3 K49 ["Action"]
      111 LOADK                            R4 K54 ["browse"]
      112 SETTABLEKS                       R4 R3 K50 ["Source"]
      114 LOADN                            R4 0
      115 SETTABLEKS                       R4 R3 K51 ["Position"]
      117 SETTABLEKS                       R3 R2 K23 ["_analyticsState"]
      119 NEWTABLE                         R3 0 0
      121 SETTABLEKS                       R3 R2 K24 ["_connections"]
      123 GETUPVAL                         R4 3
      124 GETTABLEKS                       R3 R4 K38 ["new"]
      126 CALL                             R3 0 1
      127 SETTABLEKS                       R3 R2 K25 ["OnVisiblePropertiesChanged"]
      129 GETUPVAL                         R4 3
      130 GETTABLEKS                       R3 R4 K38 ["new"]
      132 CALL                             R3 0 1
      133 SETTABLEKS                       R3 R2 K26 ["OnItemsChanged"]
      135 GETUPVAL                         R4 3
      136 GETTABLEKS                       R3 R4 K38 ["new"]
      138 CALL                             R3 0 1
      139 SETTABLEKS                       R3 R2 K27 ["OnItemSelectionChanged"]
      141 GETUPVAL                         R4 3
      142 GETTABLEKS                       R3 R4 K38 ["new"]
      144 CALL                             R3 0 1
      145 SETTABLEKS                       R3 R2 K28 ["OnSortFilterChanged"]
      147 GETUPVAL                         R4 3
      148 GETTABLEKS                       R3 R4 K38 ["new"]
      150 CALL                             R3 0 1
      151 SETTABLEKS                       R3 R2 K29 ["OnCreatorsChanged"]
      153 GETUPVAL                         R4 3
      154 GETTABLEKS                       R3 R4 K38 ["new"]
      156 CALL                             R3 0 1
      157 SETTABLEKS                       R3 R2 K30 ["OnScopeFetchProgressChanged"]
      159 GETUPVAL                         R4 3
      160 GETTABLEKS                       R3 R4 K38 ["new"]
      162 CALL                             R3 0 1
      163 SETTABLEKS                       R3 R2 K31 ["OnStagedEditItemPathChanged"]
      165 GETUPVAL                         R5 4
      166 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      168 MOVE                             R4 R2
      169 GETIMPORT                        R3 K56 [setmetatable]
      171 CALL                             R3 2 0
      172 NEWCLOSURE                       R3 P0
      173 CAPTURE                          UPVAL U5
      174 CAPTURE                          VAL R2
      175 CAPTURE                          UPVAL U6
      176 CAPTURE                          UPVAL U7
      177 SETTABLEKS                       R3 R2 K57 ["_fetchAssetsCallback"]
      179 DUPCLOSURE                       R3 K58 [PROTO_8]
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          UPVAL U9
      182 SETTABLEKS                       R3 R2 K59 ["_fetchAssetsErrorCallback"]
      184 GETUPVAL                         R3 5
      185 CALL                             R3 0 1
      186 JUMPIFNOT                        R3 ; [+42]
      187 GETTABLEKS                       R3 R2 K2 ["_pluginController"]
      189 NAMECALL                         R3 R3 K60 ["getCurrentScope"]
      191 CALL                             R3 1 1
      192 GETTABLEKS                       R4 R2 K10 ["_itemsCache"]
      194 GETTABLEKS                       R6 R3 K61 ["Uid"]
      196 NAMECALL                         R4 R4 K62 ["addScope"]
      198 CALL                             R4 2 1
      199 LOADB                            R5 1
      200 SETTABLEKS                       R5 R4 K63 ["Loading"]
      202 GETTABLEKS                       R5 R2 K30 ["OnScopeFetchProgressChanged"]
      204 GETTABLEKS                       R7 R4 K64 ["FetchProgress"]
      206 GETTABLEKS                       R8 R4 K63 ["Loading"]
      208 GETTABLEKS                       R9 R3 K61 ["Uid"]
      210 NAMECALL                         R5 R5 K65 ["Fire"]
      212 CALL                             R5 4 0
      213 MOVE                             R7 R3
      214 NAMECALL                         R5 R2 K66 ["_getNewItemsHandler"]
      216 CALL                             R5 2 1
      217 GETTABLEKS                       R6 R2 K6 ["_networking"]
      219 MOVE                             R8 R3
      220 GETTABLEKS                       R9 R4 K67 ["NextPageToken"]
      222 MOVE                             R10 R5
      223 GETTABLEKS                       R11 R2 K59 ["_fetchAssetsErrorCallback"]
      225 NAMECALL                         R6 R6 K68 ["fetchAssetsAsync"]
      227 CALL                             R6 5 0
      228 JUMP                             ; [+15]
      229 GETTABLEKS                       R3 R2 K6 ["_networking"]
      231 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      233 NAMECALL                         R5 R5 K69 ["getUser"]
      235 CALL                             R5 1 1
      236 LOADNIL                          R6
      237 GETTABLEKS                       R7 R2 K57 ["_fetchAssetsCallback"]
      239 GETTABLEKS                       R8 R2 K59 ["_fetchAssetsErrorCallback"]
      241 NAMECALL                         R3 R3 K68 ["fetchAssetsAsync"]
      243 CALL                             R3 5 0
      244 GETTABLEKS                       R4 R2 K24 ["_connections"]
      246 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      248 GETTABLEKS                       R5 R6 K70 ["OnCurrentScopeChanged"]
      250 NEWCLOSURE                       R7 P2
      251 CAPTURE                          UPVAL U5
      252 CAPTURE                          VAL R2
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U1
      255 NAMECALL                         R5 R5 K71 ["Connect"]
      257 CALL                             R5 2 -1
      258 FASTCALL                         TABLE_INSERT ; [+2]
      259 GETIMPORT                        R3 K74 [table.insert]
      261 CALL                             R3 -1 0
      262 GETTABLEKS                       R4 R2 K24 ["_connections"]
      264 GETTABLEKS                       R6 R2 K4 ["_searchController"]
      266 GETTABLEKS                       R5 R6 K75 ["OnSearchRequested"]
      268 NEWCLOSURE                       R7 P3
      269 CAPTURE                          VAL R2
      270 NAMECALL                         R5 R5 K71 ["Connect"]
      272 CALL                             R5 2 -1
      273 FASTCALL                         TABLE_INSERT ; [+2]
      274 GETIMPORT                        R3 K74 [table.insert]
      276 CALL                             R3 -1 0
      277 GETTABLEKS                       R4 R2 K24 ["_connections"]
      279 GETTABLEKS                       R6 R2 K4 ["_searchController"]
      281 GETTABLEKS                       R5 R6 K76 ["OnShowSearchOptionsChanged"]
      283 NEWCLOSURE                       R7 P4
      284 CAPTURE                          VAL R2
      285 NAMECALL                         R5 R5 K71 ["Connect"]
      287 CALL                             R5 2 -1
      288 FASTCALL                         TABLE_INSERT ; [+2]
      289 GETIMPORT                        R3 K74 [table.insert]
      291 CALL                             R3 -1 0
      292 GETTABLEKS                       R4 R2 K24 ["_connections"]
      294 GETTABLEKS                       R6 R2 K4 ["_searchController"]
      296 GETTABLEKS                       R5 R6 K77 ["OnSearchClosed"]
      298 NEWCLOSURE                       R7 P5
      299 CAPTURE                          VAL R2
      300 NAMECALL                         R5 R5 K71 ["Connect"]
      302 CALL                             R5 2 -1
      303 FASTCALL                         TABLE_INSERT ; [+2]
      304 GETIMPORT                        R3 K74 [table.insert]
      306 CALL                             R3 -1 0
      307 GETTABLEKS                       R4 R2 K24 ["_connections"]
      309 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      311 NAMECALL                         R5 R5 K78 ["getPlugin"]
      313 CALL                             R5 1 1
      314 LOADK                            R7 K79 ["OnAddPlaceSucceeded"]
      315 NEWCLOSURE                       R8 P6
      316 CAPTURE                          VAL R2
      317 NAMECALL                         R5 R5 K80 ["OnInvoke"]
      319 CALL                             R5 3 -1
      320 FASTCALL                         TABLE_INSERT ; [+2]
      321 GETIMPORT                        R3 K74 [table.insert]
      323 CALL                             R3 -1 0
      324 GETTABLEKS                       R4 R2 K24 ["_connections"]
      326 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      328 NAMECALL                         R5 R5 K78 ["getPlugin"]
      330 CALL                             R5 1 1
      331 LOADK                            R7 K81 ["OnRemovePlaceFromGameSucceeded"]
      332 NEWCLOSURE                       R8 P7
      333 CAPTURE                          UPVAL U5
      334 CAPTURE                          VAL R2
      335 CAPTURE                          UPVAL U10
      336 NAMECALL                         R5 R5 K80 ["OnInvoke"]
      338 CALL                             R5 3 -1
      339 FASTCALL                         TABLE_INSERT ; [+2]
      340 GETIMPORT                        R3 K74 [table.insert]
      342 CALL                             R3 -1 0
      343 GETTABLEKS                       R4 R2 K24 ["_connections"]
      345 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      347 NAMECALL                         R5 R5 K78 ["getPlugin"]
      349 CALL                             R5 1 1
      350 LOADK                            R7 K82 ["OnRenamePlaceSucceeded"]
      351 NEWCLOSURE                       R8 P8
      352 CAPTURE                          UPVAL U5
      353 CAPTURE                          VAL R2
      354 CAPTURE                          UPVAL U10
      355 CAPTURE                          UPVAL U1
      356 NAMECALL                         R5 R5 K80 ["OnInvoke"]
      358 CALL                             R5 3 -1
      359 FASTCALL                         TABLE_INSERT ; [+2]
      360 GETIMPORT                        R3 K74 [table.insert]
      362 CALL                             R3 -1 0
      363 GETTABLEKS                       R4 R2 K24 ["_connections"]
      365 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      367 GETTABLEKS                       R5 R6 K83 ["OnNewAssetFetched"]
      369 NEWCLOSURE                       R7 P9
      370 CAPTURE                          UPVAL U5
      371 CAPTURE                          UPVAL U11
      372 CAPTURE                          VAL R2
      373 CAPTURE                          UPVAL U12
      374 NAMECALL                         R5 R5 K71 ["Connect"]
      376 CALL                             R5 2 -1
      377 FASTCALL                         TABLE_INSERT ; [+2]
      378 GETIMPORT                        R3 K74 [table.insert]
      380 CALL                             R3 -1 0
      381 GETUPVAL                         R3 13
      382 CALL                             R3 0 1
      383 JUMPIFNOT                        R3 ; [+15]
      384 GETTABLEKS                       R4 R2 K24 ["_connections"]
      386 GETTABLEKS                       R6 R2 K4 ["_searchController"]
      388 GETTABLEKS                       R5 R6 K84 ["OnIsDefaultSearchStateChanged"]
      390 NEWCLOSURE                       R7 P10
      391 CAPTURE                          VAL R2
      392 NAMECALL                         R5 R5 K71 ["Connect"]
      394 CALL                             R5 2 -1
      395 FASTCALL                         TABLE_INSERT ; [+2]
      396 GETIMPORT                        R3 K74 [table.insert]
      398 CALL                             R3 -1 0
      399 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_destroyed"]
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["_itemsCache"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K2 ["Uid"]
       12 NAMECALL                         R4 R4 K3 ["getScope"]
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+2]
       16 LOADB                            R5 0
       17 RETURN                           R5 1
       18 MOVE                             R5 R0
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K1 ["_itemsCache"]
       25 MOVE                             R12 R9
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R13 R14 K2 ["Uid"]
       29 NAMECALL                         R10 R10 K4 ["addItem"]
       31 CALL                             R10 3 0
       32 FORGLOOP                         R5 2 ; [-11]
       34 LOADB                            R5 0
       35 MOVE                             R6 R1
       36 LOADNIL                          R7
       37 LOADNIL                          R8
       38 FORGPREP                         R6
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R12 R13 K5 ["_creators"]
       42 GETTABLE                         R11 R12 R9
       43 JUMPIF                           R11 ; [+4]
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K5 ["_creators"]
       47 SETTABLE                         R10 R11 R9
       48 LOADB                            R5 1
       49 FORGLOOP                         R6 2 ; [-11]
       51 JUMPIFNOT                        R5 ; [+10]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K6 ["OnCreatorsChanged"]
       55 GETUPVAL                         R8 0
       56 NAMECALL                         R8 R8 K7 ["getCreators"]
       58 CALL                             R8 1 -1
       59 NAMECALL                         R6 R6 K8 ["Fire"]
       61 CALL                             R6 -1 0
       62 GETUPVAL                         R6 0
       63 NAMECALL                         R6 R6 K9 ["getCurrentShownScope"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R7 R6 K2 ["Uid"]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K2 ["Uid"]
       71 JUMPIFNOTEQ                      R7 R8 ; [+5]
       73 GETUPVAL                         R7 0
       74 NAMECALL                         R7 R7 K10 ["_createRenderItems"]
       76 CALL                             R7 1 0
       77 JUMPIFNOT                        R2 ; [+7]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R7 R8 K11 ["_pluginController"]
       81 MOVE                             R9 R2
       82 NAMECALL                         R7 R7 K12 ["setRootPlace"]
       84 CALL                             R7 2 0
       85 SETTABLEKS                       R3 R4 K13 ["NextPageToken"]
       87 JUMPIFEQKNIL                     R3 ; [+17]
       89 JUMPIFEQKS                       R3 K14 [""] ; [+15]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R7 R8 K1 ["_itemsCache"]
       94 NAMECALL                         R7 R7 K15 ["getTotalItemCount"]
       96 CALL                             R7 1 1
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      100 NAMECALL                         R8 R8 K16 ["getMaxItems"]
      102 CALL                             R8 1 1
      103 JUMPIFNOTLT                      R8 R7 ; [+8]
      105 LOADB                            R7 0
      106 SETTABLEKS                       R7 R4 K17 ["Loading"]
      108 LOADN                            R7 0
      109 SETTABLEKS                       R7 R4 K18 ["FetchProgress"]
      111 JUMP                             ; [+14]
      112 LOADB                            R7 1
      113 SETTABLEKS                       R7 R4 K17 ["Loading"]
      115 GETUPVAL                         R8 0
      116 GETTABLEKS                       R7 R8 K1 ["_itemsCache"]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K2 ["Uid"]
      121 NAMECALL                         R7 R7 K19 ["getScopeCacheFetchProgress"]
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R4 K18 ["FetchProgress"]
      126 GETUPVAL                         R8 0
      127 GETTABLEKS                       R7 R8 K20 ["OnScopeFetchProgressChanged"]
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R9 R10 K1 ["_itemsCache"]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R11 R12 K2 ["Uid"]
      135 NAMECALL                         R9 R9 K19 ["getScopeCacheFetchProgress"]
      137 CALL                             R9 2 1
      138 GETTABLEKS                       R10 R4 K17 ["Loading"]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R11 R12 K2 ["Uid"]
      143 NAMECALL                         R7 R7 K8 ["Fire"]
      145 CALL                             R7 4 0
      146 GETTABLEKS                       R7 R4 K17 ["Loading"]
      148 JUMPIF                           R7 ; [+2]
      149 LOADB                            R7 0
      150 RETURN                           R7 1
      151 LOADB                            R7 1
      152 RETURN                           R7 1

PROTO_23:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

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
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 NAMECALL                         R1 R1 K1 ["clearRecent"]
        4 CALL                             R1 1 0
        5 NAMECALL                         R2 R0 K2 ["getCurrentShownScope"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R1 R2 K3 ["Uid"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["RecentUploads"]
       13 GETTABLEKS                       R2 R3 K3 ["Uid"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+4]
       17 NAMECALL                         R1 R0 K5 ["_createRenderItems"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       34 JUMPIFNOT                        R2 ; [+39]
       35 GETUPVAL                         R2 2
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+13]
       38 GETTABLEKS                       R2 R1 K10 ["Uid"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R4 R5 K11 ["RecentUploads"]
       43 GETTABLEKS                       R3 R4 K10 ["Uid"]
       45 JUMPIFNOTEQ                      R2 R3 ; [+5]
       47 NAMECALL                         R2 R0 K12 ["_createRenderItems"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0
       51 MOVE                             R4 R1
       52 NAMECALL                         R2 R0 K13 ["_getNewItemsHandler"]
       54 CALL                             R2 2 1
       55 GETTABLEKS                       R3 R0 K14 ["_itemsCache"]
       57 GETTABLEKS                       R5 R1 K10 ["Uid"]
       59 NAMECALL                         R3 R3 K15 ["addScope"]
       61 CALL                             R3 2 1
       62 GETTABLEKS                       R4 R0 K1 ["_networking"]
       64 MOVE                             R6 R1
       65 GETTABLEKS                       R7 R3 K16 ["NextPageToken"]
       67 MOVE                             R8 R2
       68 GETTABLEKS                       R9 R0 K17 ["_fetchAssetsErrorCallback"]
       70 NAMECALL                         R4 R4 K18 ["fetchAssetsAsync"]
       72 CALL                             R4 5 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R2 R0 K1 ["_networking"]
       76 MOVE                             R4 R1
       77 LOADNIL                          R5
       78 GETTABLEKS                       R6 R0 K19 ["_fetchAssetsCallback"]
       80 GETTABLEKS                       R7 R0 K17 ["_fetchAssetsErrorCallback"]
       82 NAMECALL                         R2 R2 K18 ["fetchAssetsAsync"]
       84 CALL                             R2 5 0
       85 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+92]
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
       27 GETTABLEKS                       R2 R1 K8 ["Type"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K9 ["ScopeType"]
       32 GETTABLEKS                       R3 R4 K10 ["RecentUploads"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+23]
       36 GETTABLEKS                       R2 R0 K11 ["_itemsCache"]
       38 GETTABLEKS                       R4 R1 K12 ["Uid"]
       40 NAMECALL                         R2 R2 K13 ["getScope"]
       42 CALL                             R2 2 1
       43 GETTABLEKS                       R3 R0 K14 ["OnScopeFetchProgressChanged"]
       45 GETTABLEKS                       R5 R2 K15 ["FetchProgress"]
       47 GETTABLEKS                       R6 R2 K16 ["Loading"]
       49 GETTABLEKS                       R7 R1 K12 ["Uid"]
       51 NAMECALL                         R3 R3 K17 ["Fire"]
       53 CALL                             R3 4 0
       54 NAMECALL                         R3 R0 K18 ["_createRenderItems"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R2 R0 K11 ["_itemsCache"]
       60 GETTABLEKS                       R4 R1 K12 ["Uid"]
       62 NAMECALL                         R2 R2 K19 ["addScope"]
       64 CALL                             R2 2 1
       65 LOADB                            R3 1
       66 SETTABLEKS                       R3 R2 K16 ["Loading"]
       68 GETTABLEKS                       R3 R0 K14 ["OnScopeFetchProgressChanged"]
       70 GETTABLEKS                       R5 R2 K15 ["FetchProgress"]
       72 GETTABLEKS                       R6 R2 K16 ["Loading"]
       74 GETTABLEKS                       R7 R1 K12 ["Uid"]
       76 NAMECALL                         R3 R3 K17 ["Fire"]
       78 CALL                             R3 4 0
       79 MOVE                             R5 R1
       80 NAMECALL                         R3 R0 K20 ["_getNewItemsHandler"]
       82 CALL                             R3 2 1
       83 GETTABLEKS                       R4 R0 K3 ["_networking"]
       85 MOVE                             R6 R1
       86 GETTABLEKS                       R7 R2 K21 ["NextPageToken"]
       88 MOVE                             R8 R3
       89 GETTABLEKS                       R9 R0 K22 ["_fetchAssetsErrorCallback"]
       91 NAMECALL                         R4 R4 K23 ["fetchAssetsAsync"]
       93 CALL                             R4 5 0
       94 RETURN                           R0 0
       95 NAMECALL                         R1 R0 K24 ["_clearAndFetchNewItems"]
       97 CALL                             R1 1 0
       98 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Folder deleted successfully"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["getCurrentShownScope"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["Uid"]
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R4 R4 K1 ["getCurrentShownScope"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R3 R4 K2 ["Uid"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+14]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K3 ["_itemsCache"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R5 R1 K2 ["Uid"]
       25 NAMECALL                         R2 R2 K4 ["removeItem"]
       27 CALL                             R2 3 0
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R2 R2 K5 ["_createRenderItems"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K6 ["_explorerController"]
       35 GETUPVAL                         R4 3
       36 NAMECALL                         R2 R2 K7 ["removeFolderWithPath"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["deleteFolderAsync"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R3 R3 K2 ["andThen"]
       13 CALL                             R3 2 1
       14 DUPCLOSURE                       R5 K3 [PROTO_33]
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R3 R3 K4 ["catch"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+38]
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
       33 JUMPIFNOT                        R1 ; [+3]
       34 GETTABLEKS                       R4 R1 K8 ["UseAssetPosition"]
       36 JUMPIF                           R4 ; [+1]
       37 LOADB                            R4 0
       38 SETTABLEKS                       R4 R3 K8 ["UseAssetPosition"]
       40 RETURN                           R3 1
       41 NAMECALL                         R2 R0 K14 ["getItems"]
       43 CALL                             R2 1 1
       44 GETUPVAL                         R3 2
       45 NAMECALL                         R4 R0 K15 ["getSelection_DEPRECATED"]
       47 CALL                             R4 1 1
       48 MOVE                             R5 R2
       49 CALL                             R3 2 1
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R4 R5 K16 ["keys"]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 1
       55 NEWTABLE                         R5 0 0
       57 NEWTABLE                         R6 0 0
       59 NEWTABLE                         R7 0 0
       61 MOVE                             R8 R4
       62 LOADNIL                          R9
       63 LOADNIL                          R10
       64 FORGPREP                         R8
       65 GETTABLE                         R13 R2 R12
       66 MOVE                             R15 R5
       67 GETUPVAL                         R16 4
       68 GETTABLEKS                       R17 R13 K17 ["AssetType"]
       70 CALL                             R16 1 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R14 K20 [table.insert]
       74 CALL                             R14 -1 0
       75 GETTABLEKS                       R16 R13 K21 ["DisplayName"]
       77 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       79 MOVE                             R15 R6
       80 GETIMPORT                        R14 K20 [table.insert]
       82 CALL                             R14 2 0
       83 GETTABLEKS                       R17 R13 K13 ["IsPackage"]
       85 ORK                              R16 R17 K22 [False]
       86 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       88 MOVE                             R15 R7
       89 GETIMPORT                        R14 K20 [table.insert]
       91 CALL                             R14 2 0
       92 FORGLOOP                         R8 2 ; [-28]
       94 DUPTABLE                         R8 K9 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       95 SETTABLEKS                       R4 R8 K4 ["AssetIds"]
       97 SETTABLEKS                       R5 R8 K5 ["AssetTypes"]
       99 SETTABLEKS                       R6 R8 K6 ["AssetNames"]
      101 SETTABLEKS                       R7 R8 K7 ["IsPackages"]
      103 JUMPIFNOT                        R1 ; [+3]
      104 GETTABLEKS                       R9 R1 K8 ["UseAssetPosition"]
      106 JUMPIF                           R9 ; [+1]
      107 LOADB                            R9 0
      108 SETTABLEKS                       R9 R8 K8 ["UseAssetPosition"]
      110 RETURN                           R8 1

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+58]
        3 GETTABLEKS                       R6 R0 K0 ["_renderItems"]
        5 GETTABLE                         R5 R6 R3
        6 JUMPIF                           R5 ; [+1]
        7 RETURN                           R0 0
        8 JUMPIF                           R4 ; [+5]
        9 GETTABLEKS                       R6 R0 K1 ["_lastItemPathClicked"]
       11 JUMPIFEQ                         R6 R5 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFNOT                        R2 ; [+11]
       15 NEWTABLE                         R8 0 1
       17 MOVE                             R9 R5
       18 SETLIST                          R8 R9 1 [1]
       20 NAMECALL                         R6 R0 K2 ["modifySelection"]
       22 CALL                             R6 2 0
       23 SETTABLEKS                       R3 R0 K3 ["_selectStartIndex"]
       25 JUMP                             ; [+28]
       26 JUMPIFNOT                        R1 ; [+15]
       27 SETTABLEKS                       R3 R0 K4 ["_selectEndIndex"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R7 R0 K0 ["_renderItems"]
       32 GETTABLEKS                       R8 R0 K3 ["_selectStartIndex"]
       34 GETTABLEKS                       R9 R0 K4 ["_selectEndIndex"]
       36 CALL                             R6 3 1
       37 MOVE                             R9 R6
       38 NAMECALL                         R7 R0 K5 ["setSelection"]
       40 CALL                             R7 2 0
       41 JUMP                             ; [+12]
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R5
       45 SETLIST                          R8 R9 1 [1]
       47 NAMECALL                         R6 R0 K5 ["setSelection"]
       49 CALL                             R6 2 0
       50 MOVE                             R8 R3
       51 NAMECALL                         R6 R0 K6 ["syncSelectionIndices"]
       53 CALL                             R6 2 0
       54 GETTABLEKS                       R6 R0 K7 ["_layoutController"]
       56 MOVE                             R8 R3
       57 NAMECALL                         R6 R6 K8 ["scrollToItem"]
       59 CALL                             R6 2 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R6 R0 K9 ["_renderItems_DEPRECATED"]
       63 GETTABLE                         R5 R6 R3
       64 JUMPIF                           R5 ; [+1]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R6 R5 K10 ["AssetId"]
       68 JUMPIF                           R4 ; [+5]
       69 GETTABLEKS                       R7 R0 K11 ["_lastAssetIdClicked"]
       71 JUMPIFEQ                         R7 R6 ; [+2]
       73 RETURN                           R0 0
       74 JUMPIFNOT                        R2 ; [+11]
       75 NEWTABLE                         R9 0 1
       77 MOVE                             R10 R6
       78 SETLIST                          R9 R10 1 [1]
       80 NAMECALL                         R7 R0 K2 ["modifySelection"]
       82 CALL                             R7 2 0
       83 SETTABLEKS                       R3 R0 K3 ["_selectStartIndex"]
       85 JUMP                             ; [+28]
       86 JUMPIFNOT                        R1 ; [+15]
       87 SETTABLEKS                       R3 R0 K4 ["_selectEndIndex"]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R8 R0 K9 ["_renderItems_DEPRECATED"]
       92 GETTABLEKS                       R9 R0 K3 ["_selectStartIndex"]
       94 GETTABLEKS                       R10 R0 K4 ["_selectEndIndex"]
       96 CALL                             R7 3 1
       97 MOVE                             R10 R7
       98 NAMECALL                         R8 R0 K12 ["setSelection_DEPRECATED"]
      100 CALL                             R8 2 0
      101 JUMP                             ; [+12]
      102 NEWTABLE                         R9 0 1
      104 MOVE                             R10 R6
      105 SETLIST                          R9 R10 1 [1]
      107 NAMECALL                         R7 R0 K12 ["setSelection_DEPRECATED"]
      109 CALL                             R7 2 0
      110 MOVE                             R9 R3
      111 NAMECALL                         R7 R0 K6 ["syncSelectionIndices"]
      113 CALL                             R7 2 0
      114 GETTABLEKS                       R7 R0 K7 ["_layoutController"]
      116 MOVE                             R9 R3
      117 NAMECALL                         R7 R7 K8 ["scrollToItem"]
      119 CALL                             R7 2 0
      120 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_41:
        0 NAMECALL                         R2 R0 K0 ["getItemsCache"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["keys"]
        9 NAMECALL                         R5 R0 K3 ["getSelection"]
       11 CALL                             R5 1 -1
       12 CALL                             R4 -1 1
       13 LENGTH                           R5 R4
       14 JUMPIFEQKN                       R5 K4 [1] ; [+3]
       16 LOADNIL                          R5
       17 RETURN                           R5 1
       18 GETTABLEKS                       R7 R3 K5 ["Uid"]
       20 GETTABLEN                        R8 R4 1
       21 NAMECALL                         R5 R2 K6 ["getItem"]
       23 CALL                             R5 3 1
       24 JUMPIFEQKNIL                     R1 ; [+5]
       26 GETTABLEKS                       R6 R5 K7 ["AssetType"]
       28 JUMPIFNOTEQ                      R6 R1 ; [+2]
       30 RETURN                           R5 1
       31 LOADNIL                          R6
       32 RETURN                           R6 1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_items_DEPRECATED"]
       11 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_44:
        0 NAMECALL                         R1 R0 K0 ["getItemsCache"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getCurrentShownScope"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["keys"]
        9 NAMECALL                         R4 R0 K3 ["getSelection"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 1
       13 GETTABLEKS                       R6 R2 K4 ["Uid"]
       15 MOVE                             R7 R3
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R9 R10 K5 ["AssetInfoField"]
       19 GETTABLEKS                       R8 R9 K6 ["AssetId"]
       21 NAMECALL                         R4 R1 K7 ["getData"]
       23 CALL                             R4 4 1
       24 RETURN                           R4 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_renderItems_DEPRECATED"]
        8 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["_renderItems"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["_renderItems_DEPRECATED"]
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+39]
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
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R5 1
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+27]
       39 GETTABLEKS                       R5 R3 K7 ["Type"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R7 R8 K8 ["ScopeType"]
       44 GETTABLEKS                       R6 R7 K9 ["RecentUploads"]
       46 JUMPIFNOTEQ                      R5 R6 ; [+19]
       48 RETURN                           R0 0
       49 JUMP                             ; [+16]
       50 GETTABLEKS                       R4 R0 K10 ["_networking"]
       52 GETTABLEKS                       R3 R4 K11 ["nextPageToken"]
       54 JUMPIFNOTEQKS                    R3 K12 [""] ; [+7]
       56 GETTABLEKS                       R4 R0 K10 ["_networking"]
       58 GETTABLEKS                       R3 R4 K13 ["nextPlacesPageToken"]
       60 JUMPIFEQKS                       R3 K12 [""] ; [+4]
       62 LENGTH                           R3 R2
       63 JUMPIFNOTLE                      R1 R3 ; [+2]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R3 R0 K14 ["_searchController"]
       68 NAMECALL                         R3 R3 K15 ["getShowSearchOptions"]
       70 CALL                             R3 1 1
       71 JUMPIFNOT                        R3 ; [+65]
       72 GETTABLEKS                       R3 R0 K14 ["_searchController"]
       74 NAMECALL                         R3 R3 K16 ["getSearchOptions"]
       76 CALL                             R3 1 1
       77 DUPTABLE                         R4 K20 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       78 GETTABLEKS                       R5 R0 K14 ["_searchController"]
       80 NAMECALL                         R5 R5 K21 ["getSearchTerm"]
       82 CALL                             R5 1 1
       83 SETTABLEKS                       R5 R4 K17 ["SearchTerm"]
       85 GETTABLEKS                       R5 R3 K18 ["AssetType"]
       87 SETTABLEKS                       R5 R4 K18 ["AssetType"]
       89 GETTABLEKS                       R5 R3 K19 ["ScopeInfo"]
       91 SETTABLEKS                       R5 R4 K19 ["ScopeInfo"]
       93 GETUPVAL                         R5 0
       94 CALL                             R5 0 1
       95 JUMPIFNOT                        R5 ; [+29]
       96 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
       98 GETTABLEKS                       R8 R4 K19 ["ScopeInfo"]
      100 GETTABLEKS                       R7 R8 K4 ["Uid"]
      102 NAMECALL                         R5 R5 K5 ["getScope"]
      104 CALL                             R5 2 1
      105 LOADB                            R6 1
      106 SETTABLEKS                       R6 R5 K22 ["Loading"]
      108 GETTABLEKS                       R8 R4 K19 ["ScopeInfo"]
      110 NAMECALL                         R6 R0 K23 ["_getNewItemsHandler"]
      112 CALL                             R6 2 1
      113 GETTABLEKS                       R7 R0 K10 ["_networking"]
      115 MOVE                             R9 R4
      116 GETTABLEKS                       R10 R5 K6 ["NextPageToken"]
      118 MOVE                             R11 R6
      119 GETTABLEKS                       R12 R0 K24 ["_fetchAssetsErrorCallback"]
      121 NAMECALL                         R7 R7 K25 ["searchAssetsAsync"]
      123 CALL                             R7 5 0
      124 RETURN                           R0 0
      125 GETTABLEKS                       R5 R0 K10 ["_networking"]
      127 MOVE                             R7 R4
      128 LOADNIL                          R8
      129 GETTABLEKS                       R9 R0 K26 ["_fetchAssetsCallback"]
      131 GETTABLEKS                       R10 R0 K24 ["_fetchAssetsErrorCallback"]
      133 NAMECALL                         R5 R5 K25 ["searchAssetsAsync"]
      135 CALL                             R5 5 0
      136 RETURN                           R0 0
      137 GETTABLEKS                       R3 R0 K27 ["_pluginController"]
      139 NAMECALL                         R3 R3 K28 ["getCurrentScope"]
      141 CALL                             R3 1 1
      142 GETUPVAL                         R4 0
      143 CALL                             R4 0 1
      144 JUMPIFNOT                        R4 ; [+34]
      145 MOVE                             R6 R3
      146 NAMECALL                         R4 R0 K23 ["_getNewItemsHandler"]
      148 CALL                             R4 2 1
      149 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
      151 GETTABLEKS                       R7 R3 K4 ["Uid"]
      153 NAMECALL                         R5 R5 K5 ["getScope"]
      155 CALL                             R5 2 1
      156 JUMPIF                           R5 ; [+7]
      157 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
      159 GETTABLEKS                       R7 R3 K4 ["Uid"]
      161 NAMECALL                         R5 R5 K29 ["addScope"]
      163 CALL                             R5 2 1
      164 LOADB                            R6 1
      165 SETTABLEKS                       R6 R5 K22 ["Loading"]
      167 GETTABLEKS                       R6 R0 K10 ["_networking"]
      169 MOVE                             R8 R3
      170 GETTABLEKS                       R9 R5 K6 ["NextPageToken"]
      172 MOVE                             R10 R4
      173 GETTABLEKS                       R11 R0 K24 ["_fetchAssetsErrorCallback"]
      175 NAMECALL                         R6 R6 K30 ["fetchAssetsAsync"]
      177 CALL                             R6 5 0
      178 RETURN                           R0 0
      179 GETTABLEKS                       R4 R0 K10 ["_networking"]
      181 MOVE                             R6 R3
      182 LOADNIL                          R7
      183 GETTABLEKS                       R8 R0 K26 ["_fetchAssetsCallback"]
      185 GETTABLEKS                       R9 R0 K24 ["_fetchAssetsErrorCallback"]
      187 NAMECALL                         R4 R4 K30 ["fetchAssetsAsync"]
      189 CALL                             R4 5 0
      190 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["selectionHasInsertableAssets is only supported when using ItemsCache"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NAMECALL                         R1 R0 K3 ["getCurrentShownScope"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R1 K4 ["Type"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K5 ["ScopeType"]
       16 GETTABLEKS                       R3 R4 K6 ["ProjectPlaces"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+3]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 LOADB                            R2 0
       23 GETTABLEKS                       R3 R1 K7 ["Uid"]
       25 NAMECALL                         R4 R0 K8 ["getSelection"]
       27 CALL                             R4 1 3
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R0 K9 ["_itemsCache"]
       31 MOVE                             R11 R3
       32 MOVE                             R12 R7
       33 GETUPVAL                         R15 1
       34 GETTABLEKS                       R14 R15 K10 ["AssetInfoField"]
       36 GETTABLEKS                       R13 R14 K11 ["AssetType"]
       38 NAMECALL                         R9 R9 K12 ["getItemField"]
       40 CALL                             R9 4 1
       41 GETUPVAL                         R10 2
       42 MOVE                             R11 R9
       43 CALL                             R10 1 1
       44 JUMPIFNOT                        R10 ; [+2]
       45 LOADB                            R2 1
       46 RETURN                           R2 1
       47 FORGLOOP                         R4 2 ; [-19]
       49 RETURN                           R2 1

PROTO_50:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+27]
        5 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        7 GETTABLEKS                       R6 R0 K1 ["_pluginController"]
        9 NAMECALL                         R6 R6 K2 ["getCurrentScope"]
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R5 R6 K3 ["Uid"]
       14 MOVE                             R6 R1
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K4 ["AssetInfoField"]
       18 GETTABLEKS                       R7 R8 K5 ["AssetType"]
       20 NAMECALL                         R3 R3 K6 ["getData"]
       22 CALL                             R3 4 1
       23 MOVE                             R4 R3
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 LOADB                            R9 1
       28 SETTABLE                         R9 R2 R8
       29 FORGLOOP                         R4 2 ; [-3]
       31 RETURN                           R2 1
       32 MOVE                             R3 R1
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETTABLEKS                       R10 R0 K7 ["_items_DEPRECATED"]
       38 GETTABLE                         R9 R10 R7
       39 GETTABLEKS                       R8 R9 K5 ["AssetType"]
       41 LOADB                            R9 1
       42 SETTABLE                         R9 R2 R8
       43 FORGLOOP                         R3 2 ; [-8]
       45 RETURN                           R2 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_52:
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

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_63:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getSelection_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_selection"]
       11 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMPIF                           R3 ; [+10]
        2 NEWTABLE                         R7 0 0
        4 NAMECALL                         R5 R0 K0 ["setSelection"]
        6 CALL                             R5 2 0
        7 LOADN                            R7 1
        8 NAMECALL                         R5 R0 K1 ["syncSelectionIndices"]
       10 CALL                             R5 2 0
       11 JUMP                             ; [+16]
       12 GETTABLEKS                       R6 R0 K2 ["_selection"]
       14 GETTABLE                         R5 R6 R2
       15 JUMPIF                           R5 ; [+12]
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R2
       19 SETLIST                          R7 R8 1 [1]
       21 NAMECALL                         R5 R0 K0 ["setSelection"]
       23 CALL                             R5 2 0
       24 MOVE                             R7 R3
       25 NAMECALL                         R5 R0 K1 ["syncSelectionIndices"]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K3 ["_analyticsState"]
       30 SETTABLEKS                       R3 R5 K4 ["Position"]
       32 GETUPVAL                         R5 0
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+3]
       35 MOVE                             R5 R4
       36 CALL                             R5 0 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R6 1
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K5 ["MenuContext"]
       42 GETTABLEKS                       R7 R8 K6 ["Asset"]
       44 GETTABLE                         R5 R6 R7
       45 DUPTABLE                         R6 K12 [{"PluginController", "ItemsController", "LayoutController", "Networking", "Localization"}]
       46 GETTABLEKS                       R7 R0 K13 ["_pluginController"]
       48 SETTABLEKS                       R7 R6 K7 ["PluginController"]
       50 SETTABLEKS                       R0 R6 K8 ["ItemsController"]
       52 GETTABLEKS                       R7 R0 K14 ["_layoutController"]
       54 SETTABLEKS                       R7 R6 K9 ["LayoutController"]
       56 GETTABLEKS                       R7 R0 K15 ["_networking"]
       58 SETTABLEKS                       R7 R6 K10 ["Networking"]
       60 SETTABLEKS                       R1 R6 K11 ["Localization"]
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_73:
        0 GETTABLEKS                       R2 R0 K0 ["_stagedEditItemPath"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        7 GETTABLEKS                       R2 R0 K1 ["OnStagedEditItemPathChanged"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+12]
        4 GETTABLEKS                       R1 R0 K2 ["_itemsCache"]
        6 LOADK                            R3 K1 [""]
        7 NAMECALL                         R5 R0 K3 ["getCurrentShownScope"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R4 R5 K4 ["Uid"]
       12 NAMECALL                         R1 R1 K5 ["removeItem"]
       14 CALL                             R1 3 0
       15 LOADNIL                          R3
       16 NAMECALL                         R1 R0 K6 ["setStagedEditItemPath"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_75:
        0 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R3 R4 K1 ["Type"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
        8 GETTABLEKS                       R4 R5 K3 ["ProjectPlaces"]
       10 JUMPIFEQ                         R3 R4 ; [+6]
       12 GETIMPORT                        R3 K5 [warn]
       14 LOADK                            R4 K6 ["Current scope is not ProjectPlaces, cannot rename place"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K7 ["_itemsCache"]
       19 NAMECALL                         R6 R0 K0 ["getCurrentShownScope"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R5 R6 K8 ["Uid"]
       24 MOVE                             R6 R2
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K9 ["AssetInfoField"]
       28 GETTABLEKS                       R7 R8 K10 ["AssetId"]
       30 NAMECALL                         R3 R3 K11 ["getItemField"]
       32 CALL                             R3 4 1
       33 JUMPIF                           R3 ; [+24]
       34 GETUPVAL                         R4 1
       35 LOADK                            R6 K12 ["Couldn't find asset ID for place path %* in cache, falling back to using path"]
       36 MOVE                             R8 R2
       37 NAMECALL                         R6 R6 K13 ["format"]
       39 CALL                             R6 2 1
       40 MOVE                             R5 R6
       41 CALL                             R4 1 0
       42 GETIMPORT                        R5 K16 [string.match]
       44 MOVE                             R6 R2
       45 LOADK                            R7 K17 ["-(%d+)$"]
       46 CALL                             R5 2 -1
       47 FASTCALL                         TONUMBER ; [+2]
       48 GETIMPORT                        R4 K19 [tonumber]
       50 CALL                             R4 -1 1
       51 MOVE                             R3 R4
       52 JUMPIF                           R3 ; [+5]
       53 GETUPVAL                         R4 1
       54 LOADK                            R5 K20 ["Couldn't extract asset ID for this place, cannot rename place"]
       55 LOADK                            R6 K21 ["WARN"]
       56 CALL                             R4 2 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R4 R0 K22 ["_pluginController"]
       60 NAMECALL                         R4 R4 K23 ["getPlugin"]
       62 CALL                             R4 1 1
       63 LOADK                            R6 K24 ["OnRenamePlace"]
       64 DUPTABLE                         R7 K27 [{"Id", "Name"}]
       65 SETTABLEKS                       R3 R7 K25 ["Id"]
       67 SETTABLEKS                       R1 R7 K26 ["Name"]
       69 NAMECALL                         R4 R4 K28 ["Invoke"]
       71 CALL                             R4 3 0
       72 LOADNIL                          R6
       73 NAMECALL                         R4 R0 K29 ["setStagedEditItemPath"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0

PROTO_76:
        0 RETURN                           R0 0

PROTO_77:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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
       41 GETTABLEKS                       R11 R12 K17 ["constructItemPath"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R14 R0 K16 ["Src"]
       48 GETTABLEKS                       R13 R14 K14 ["Util"]
       50 GETTABLEKS                       R12 R13 K18 ["getAssetInfosSlice"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R15 R0 K16 ["Src"]
       57 GETTABLEKS                       R14 R15 K14 ["Util"]
       59 GETTABLEKS                       R13 R14 K19 ["insertItems"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R15 R0 K16 ["Src"]
       66 GETTABLEKS                       R14 R15 K20 ["Types"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R17 R0 K16 ["Src"]
       73 GETTABLEKS                       R16 R17 K21 ["Controllers"]
       75 GETTABLEKS                       R15 R16 K22 ["ItemsCache"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R18 R0 K16 ["Src"]
       82 GETTABLEKS                       R17 R18 K14 ["Util"]
       84 GETTABLEKS                       R16 R17 K23 ["cleanConnections"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R19 R0 K16 ["Src"]
       91 GETTABLEKS                       R18 R19 K14 ["Util"]
       93 GETTABLEKS                       R17 R18 K24 ["renderContextMenu"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K5 [require]
       98 GETTABLEKS                       R20 R0 K16 ["Src"]
      100 GETTABLEKS                       R19 R20 K14 ["Util"]
      102 GETTABLEKS                       R18 R19 K25 ["compareInfoField"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R21 R0 K16 ["Src"]
      109 GETTABLEKS                       R20 R21 K14 ["Util"]
      111 GETTABLEKS                       R19 R20 K26 ["convertToEngineAssetTypeEnum"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K5 [require]
      116 GETTABLEKS                       R22 R0 K16 ["Src"]
      118 GETTABLEKS                       R21 R22 K14 ["Util"]
      120 GETTABLEKS                       R20 R21 K27 ["applyInfoFieldFilter_DEPRECATED"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R23 R0 K16 ["Src"]
      127 GETTABLEKS                       R22 R23 K14 ["Util"]
      129 GETTABLEKS                       R21 R22 K28 ["isInsertable"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K5 [require]
      134 GETTABLEKS                       R24 R0 K16 ["Src"]
      136 GETTABLEKS                       R23 R24 K14 ["Util"]
      138 GETTABLEKS                       R22 R23 K29 ["DefaultSort"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K5 [require]
      143 GETTABLEKS                       R25 R0 K16 ["Src"]
      145 GETTABLEKS                       R24 R25 K14 ["Util"]
      147 GETTABLEKS                       R23 R24 K30 ["logIfDebug"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K5 [require]
      152 GETTABLEKS                       R26 R0 K16 ["Src"]
      154 GETTABLEKS                       R25 R26 K31 ["Resources"]
      156 GETTABLEKS                       R24 R25 K32 ["Constants"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K5 [require]
      161 GETTABLEKS                       R26 R0 K16 ["Src"]
      163 GETTABLEKS                       R25 R26 K33 ["Analytics"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K16 ["Src"]
      170 GETTABLEKS                       R27 R28 K34 ["Flags"]
      172 GETTABLEKS                       R26 R27 K35 ["getEFAssetInsertComponentEnabled"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K16 ["Src"]
      179 GETTABLEKS                       R28 R29 K34 ["Flags"]
      181 GETTABLEKS                       R27 R28 K36 ["getFFlagEnableAssetInserter"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R30 R0 K16 ["Src"]
      188 GETTABLEKS                       R29 R30 K34 ["Flags"]
      190 GETTABLEKS                       R28 R29 K37 ["getFFlagAmrContextMenuRefactor"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K5 [require]
      195 GETTABLEKS                       R31 R0 K16 ["Src"]
      197 GETTABLEKS                       R30 R31 K34 ["Flags"]
      199 GETTABLEKS                       R29 R30 K38 ["getFFlagAmrRecents"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R32 R0 K16 ["Src"]
      206 GETTABLEKS                       R31 R32 K34 ["Flags"]
      208 GETTABLEKS                       R30 R31 K39 ["getFFlagAmrUpdatedItemsCache"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K5 [require]
      213 GETTABLEKS                       R33 R0 K16 ["Src"]
      215 GETTABLEKS                       R32 R33 K34 ["Flags"]
      217 GETTABLEKS                       R31 R32 K40 ["getFFlagAmrSearchAndHistory"]
      219 CALL                             R30 1 1
      220 LOADK                            R33 K41 ["ItemsController"]
      221 NAMECALL                         R31 R3 K42 ["extend"]
      223 CALL                             R31 2 1
      224 DUPCLOSURE                       R32 K43 [PROTO_0]
      225 CAPTURE                          VAL R19
      226 DUPCLOSURE                       R33 K44 [PROTO_1]
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R32
      230 DUPCLOSURE                       R34 K45 [PROTO_3]
      231 CAPTURE                          VAL R29
      232 CAPTURE                          VAL R17
      233 DUPCLOSURE                       R35 K46 [PROTO_4]
      234 CAPTURE                          VAL R29
      235 CAPTURE                          VAL R33
      236 CAPTURE                          VAL R17
      237 DUPCLOSURE                       R36 K47 [PROTO_5]
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R20
      240 DUPCLOSURE                       R37 K48 [PROTO_6]
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R18
      244 DUPCLOSURE                       R38 K49 [PROTO_18]
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R13
      247 CAPTURE                          VAL R21
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R31
      250 CAPTURE                          VAL R29
      251 CAPTURE                          VAL R33
      252 CAPTURE                          VAL R17
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R30
      259 SETTABLEKS                       R38 R31 K50 ["new"]
      261 DUPCLOSURE                       R38 K51 [PROTO_19]
      262 CAPTURE                          VAL R31
      263 SETTABLEKS                       R38 R31 K52 ["mock"]
      265 DUPCLOSURE                       R38 K53 [PROTO_20]
      266 SETTABLEKS                       R38 R31 K54 ["getIsMock"]
      268 DUPCLOSURE                       R38 K55 [PROTO_21]
      269 CAPTURE                          VAL R15
      270 SETTABLEKS                       R38 R31 K56 ["destroy"]
      272 DUPCLOSURE                       R38 K57 [PROTO_23]
      273 SETTABLEKS                       R38 R31 K58 ["_getNewItemsHandler"]
      275 DUPCLOSURE                       R38 K59 [PROTO_24]
      276 SETTABLEKS                       R38 R31 K60 ["_createRenderItems"]
      278 DUPCLOSURE                       R38 K61 [PROTO_25]
      279 CAPTURE                          VAL R23
      280 SETTABLEKS                       R38 R31 K62 ["clearRecent"]
      282 DUPCLOSURE                       R38 K63 [PROTO_26]
      283 CAPTURE                          VAL R29
      284 SETTABLEKS                       R38 R31 K64 ["_clearItems"]
      286 DUPCLOSURE                       R38 K65 [PROTO_27]
      287 CAPTURE                          VAL R29
      288 CAPTURE                          VAL R21
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R23
      291 SETTABLEKS                       R38 R31 K66 ["_clearAndFetchNewItems"]
      293 DUPCLOSURE                       R38 K67 [PROTO_28]
      294 CAPTURE                          VAL R29
      295 CAPTURE                          VAL R5
      296 CAPTURE                          VAL R13
      297 SETTABLEKS                       R38 R31 K68 ["_clearAndFetchSearchItems"]
      299 DUPCLOSURE                       R38 K69 [PROTO_29]
      300 CAPTURE                          VAL R29
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R13
      303 SETTABLEKS                       R38 R31 K70 ["refreshItems"]
      305 DUPCLOSURE                       R38 K71 [PROTO_30]
      306 CAPTURE                          VAL R29
      307 CAPTURE                          VAL R33
      308 CAPTURE                          VAL R17
      309 SETTABLEKS                       R38 R31 K72 ["_updateRenderItems"]
      311 DUPCLOSURE                       R38 K73 [PROTO_31]
      312 SETTABLEKS                       R38 R31 K74 ["finalizeFolder"]
      314 DUPCLOSURE                       R38 K75 [PROTO_34]
      315 CAPTURE                          VAL R22
      316 SETTABLEKS                       R38 R31 K76 ["requestDeleteFolder"]
      318 DUPCLOSURE                       R38 K77 [PROTO_35]
      319 CAPTURE                          VAL R29
      320 CAPTURE                          VAL R37
      321 CAPTURE                          VAL R36
      322 CAPTURE                          VAL R4
      323 CAPTURE                          VAL R18
      324 SETTABLEKS                       R38 R31 K78 ["_createInsertJobData"]
      326 DUPCLOSURE                       R38 K79 [PROTO_36]
      327 CAPTURE                          VAL R29
      328 CAPTURE                          VAL R13
      329 CAPTURE                          VAL R4
      330 CAPTURE                          VAL R25
      331 CAPTURE                          VAL R26
      332 CAPTURE                          VAL R12
      333 SETTABLEKS                       R38 R31 K80 ["handleDoubleClick"]
      335 DUPCLOSURE                       R38 K81 [PROTO_37]
      336 CAPTURE                          VAL R29
      337 SETTABLEKS                       R38 R31 K82 ["setLastItemClicked"]
      339 DUPCLOSURE                       R38 K83 [PROTO_38]
      340 CAPTURE                          VAL R29
      341 CAPTURE                          VAL R11
      342 SETTABLEKS                       R38 R31 K84 ["changeSelection"]
      344 DUPCLOSURE                       R38 K85 [PROTO_39]
      345 SETTABLEKS                       R38 R31 K86 ["moveSelection"]
      347 DUPCLOSURE                       R38 K87 [PROTO_40]
      348 SETTABLEKS                       R38 R31 K88 ["syncSelectionIndices"]
      350 DUPCLOSURE                       R38 K89 [PROTO_41]
      351 CAPTURE                          VAL R4
      352 SETTABLEKS                       R38 R31 K90 ["getSingleItemSelected"]
      354 DUPCLOSURE                       R38 K91 [PROTO_42]
      355 CAPTURE                          VAL R29
      356 SETTABLEKS                       R38 R31 K92 ["getItems"]
      358 DUPCLOSURE                       R38 K93 [PROTO_43]
      359 SETTABLEKS                       R38 R31 K94 ["getItemInfo"]
      361 DUPCLOSURE                       R38 K95 [PROTO_44]
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R13
      364 SETTABLEKS                       R38 R31 K96 ["getSelectionIdsHelper"]
      366 DUPCLOSURE                       R38 K97 [PROTO_45]
      367 SETTABLEKS                       R38 R31 K98 ["getItemsCache"]
      369 DUPCLOSURE                       R38 K99 [PROTO_46]
      370 CAPTURE                          VAL R29
      371 SETTABLEKS                       R38 R31 K100 ["getRenderItems"]
      373 DUPCLOSURE                       R38 K101 [PROTO_47]
      374 CAPTURE                          VAL R29
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R13
      377 SETTABLEKS                       R38 R31 K102 ["requestNextPage"]
      379 DUPCLOSURE                       R38 K103 [PROTO_48]
      380 CAPTURE                          VAL R29
      381 CAPTURE                          VAL R20
      382 SETTABLEKS                       R38 R31 K104 ["findSpecialAssets"]
      384 DUPCLOSURE                       R38 K105 [PROTO_49]
      385 CAPTURE                          VAL R29
      386 CAPTURE                          VAL R13
      387 CAPTURE                          VAL R20
      388 SETTABLEKS                       R38 R31 K106 ["selectionHasInsertableAssets"]
      390 DUPCLOSURE                       R38 K107 [PROTO_50]
      391 CAPTURE                          VAL R29
      392 CAPTURE                          VAL R13
      393 SETTABLEKS                       R38 R31 K108 ["getAssetTypes"]
      395 DUPCLOSURE                       R38 K109 [PROTO_51]
      396 CAPTURE                          VAL R7
      397 SETTABLEKS                       R38 R31 K110 ["getCreators"]
      399 DUPCLOSURE                       R38 K111 [PROTO_52]
      400 CAPTURE                          VAL R29
      401 CAPTURE                          VAL R5
      402 SETTABLEKS                       R38 R31 K112 ["_updateSortFilter"]
      404 DUPCLOSURE                       R38 K113 [PROTO_53]
      405 SETTABLEKS                       R38 R31 K114 ["getFilters"]
      407 DUPCLOSURE                       R38 K115 [PROTO_54]
      408 CAPTURE                          VAL R6
      409 SETTABLEKS                       R38 R31 K116 ["_addFilter"]
      411 DUPCLOSURE                       R38 K117 [PROTO_55]
      412 SETTABLEKS                       R38 R31 K118 ["_removeFilter"]
      414 DUPCLOSURE                       R38 K119 [PROTO_56]
      415 CAPTURE                          VAL R13
      416 SETTABLEKS                       R38 R31 K120 ["_clearAssetTypeFilter"]
      418 DUPCLOSURE                       R38 K121 [PROTO_57]
      419 SETTABLEKS                       R38 R31 K122 ["hasFilter"]
      421 DUPCLOSURE                       R38 K123 [PROTO_58]
      422 SETTABLEKS                       R38 R31 K124 ["toggleFilter"]
      424 DUPCLOSURE                       R38 K125 [PROTO_59]
      425 CAPTURE                          VAL R13
      426 SETTABLEKS                       R38 R31 K126 ["togglePackagesFilter"]
      428 DUPCLOSURE                       R38 K127 [PROTO_60]
      429 CAPTURE                          VAL R13
      430 SETTABLEKS                       R38 R31 K128 ["toggleArchivedFilter"]
      432 DUPCLOSURE                       R38 K129 [PROTO_61]
      433 CAPTURE                          VAL R13
      434 SETTABLEKS                       R38 R31 K130 ["clearFilters"]
      436 DUPCLOSURE                       R38 K131 [PROTO_62]
      437 SETTABLEKS                       R38 R31 K132 ["getSorts"]
      439 DUPCLOSURE                       R38 K133 [PROTO_63]
      440 SETTABLEKS                       R38 R31 K134 ["setSorts"]
      442 DUPCLOSURE                       R38 K135 [PROTO_64]
      443 SETTABLEKS                       R38 R31 K136 ["addSort"]
      445 DUPCLOSURE                       R38 K137 [PROTO_65]
      446 CAPTURE                          VAL R29
      447 SETTABLEKS                       R38 R31 K138 ["getSelection_DEPRECATED"]
      449 DUPCLOSURE                       R38 K139 [PROTO_66]
      450 SETTABLEKS                       R38 R31 K140 ["getSelection"]
      452 DUPCLOSURE                       R38 K141 [PROTO_67]
      453 CAPTURE                          VAL R29
      454 SETTABLEKS                       R38 R31 K142 ["setSelection_DEPRECATED"]
      456 DUPCLOSURE                       R38 K143 [PROTO_68]
      457 SETTABLEKS                       R38 R31 K144 ["setSelection"]
      459 DUPCLOSURE                       R38 K145 [PROTO_69]
      460 CAPTURE                          VAL R29
      461 CAPTURE                          VAL R5
      462 SETTABLEKS                       R38 R31 K146 ["modifySelection_DEPRECATED"]
      464 DUPCLOSURE                       R38 K147 [PROTO_70]
      465 CAPTURE                          VAL R5
      466 SETTABLEKS                       R38 R31 K148 ["modifySelection"]
      468 DUPCLOSURE                       R38 K149 [PROTO_71]
      469 CAPTURE                          VAL R27
      470 CAPTURE                          VAL R16
      471 CAPTURE                          VAL R13
      472 SETTABLEKS                       R38 R31 K150 ["handleRightClick"]
      474 DUPCLOSURE                       R38 K151 [PROTO_72]
      475 SETTABLEKS                       R38 R31 K152 ["getStagedEditItemPath"]
      477 DUPCLOSURE                       R38 K153 [PROTO_73]
      478 SETTABLEKS                       R38 R31 K154 ["setStagedEditItemPath"]
      480 DUPCLOSURE                       R38 K155 [PROTO_74]
      481 SETTABLEKS                       R38 R31 K156 ["removeStagedItem"]
      483 DUPCLOSURE                       R38 K157 [PROTO_75]
      484 CAPTURE                          VAL R13
      485 CAPTURE                          VAL R22
      486 SETTABLEKS                       R38 R31 K158 ["renamePlace"]
      488 DUPCLOSURE                       R38 K159 [PROTO_76]
      489 SETTABLEKS                       R38 R31 K160 ["stageNewFolder"]
      491 DUPCLOSURE                       R38 K161 [PROTO_77]
      492 SETTABLEKS                       R38 R31 K162 ["setAnalyticsInsertAction"]
      494 DUPCLOSURE                       R38 K163 [PROTO_78]
      495 CAPTURE                          VAL R29
      496 CAPTURE                          VAL R4
      497 CAPTURE                          VAL R13
      498 CAPTURE                          VAL R24
      499 SETTABLEKS                       R38 R31 K164 ["sendInsertToAnalytics"]
      501 DUPCLOSURE                       R38 K165 [PROTO_79]
      502 SETTABLEKS                       R38 R31 K166 ["getCurrentShownScope"]
      504 DUPCLOSURE                       R38 K167 [PROTO_80]
      505 CAPTURE                          VAL R29
      506 SETTABLEKS                       R38 R31 K168 ["getIdAssetType"]
      508 DUPCLOSURE                       R38 K169 [PROTO_81]
      509 SETTABLEKS                       R38 R31 K170 ["getPlugin"]
      511 RETURN                           R31 1
