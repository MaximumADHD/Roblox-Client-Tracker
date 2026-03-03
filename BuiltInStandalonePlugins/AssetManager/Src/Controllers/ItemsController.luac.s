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
      161 CAPTURE                          VAL R2
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          UPVAL U7
      164 SETTABLEKS                       R3 R2 K53 ["_fetchAssetsCallback"]
      166 DUPCLOSURE                       R3 K54 [PROTO_8]
      167 CAPTURE                          UPVAL U8
      168 CAPTURE                          UPVAL U9
      169 SETTABLEKS                       R3 R2 K55 ["_fetchAssetsErrorCallback"]
      171 GETUPVAL                         R3 5
      172 CALL                             R3 0 1
      173 JUMPIFNOT                        R3 ; [+42]
      174 GETTABLEKS                       R3 R2 K2 ["_pluginController"]
      176 NAMECALL                         R3 R3 K56 ["getCurrentScope"]
      178 CALL                             R3 1 1
      179 GETTABLEKS                       R4 R2 K9 ["_itemsCache"]
      181 GETTABLEKS                       R6 R3 K57 ["Uid"]
      183 NAMECALL                         R4 R4 K58 ["addScope"]
      185 CALL                             R4 2 1
      186 LOADB                            R5 1
      187 SETTABLEKS                       R5 R4 K59 ["Loading"]
      189 GETTABLEKS                       R5 R2 K28 ["OnScopeFetchProgressChanged"]
      191 GETTABLEKS                       R7 R4 K60 ["FetchProgress"]
      193 GETTABLEKS                       R8 R4 K59 ["Loading"]
      195 GETTABLEKS                       R9 R3 K57 ["Uid"]
      197 NAMECALL                         R5 R5 K61 ["Fire"]
      199 CALL                             R5 4 0
      200 MOVE                             R7 R3
      201 NAMECALL                         R5 R2 K62 ["_getNewItemsHandler"]
      203 CALL                             R5 2 1
      204 GETTABLEKS                       R6 R2 K5 ["_networking"]
      206 MOVE                             R8 R3
      207 GETTABLEKS                       R9 R4 K63 ["NextPageToken"]
      209 MOVE                             R10 R5
      210 GETTABLEKS                       R11 R2 K55 ["_fetchAssetsErrorCallback"]
      212 NAMECALL                         R6 R6 K64 ["fetchAssetsAsync"]
      214 CALL                             R6 5 0
      215 JUMP                             ; [+15]
      216 GETTABLEKS                       R3 R2 K5 ["_networking"]
      218 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      220 NAMECALL                         R5 R5 K65 ["getUser"]
      222 CALL                             R5 1 1
      223 LOADNIL                          R6
      224 GETTABLEKS                       R7 R2 K53 ["_fetchAssetsCallback"]
      226 GETTABLEKS                       R8 R2 K55 ["_fetchAssetsErrorCallback"]
      228 NAMECALL                         R3 R3 K64 ["fetchAssetsAsync"]
      230 CALL                             R3 5 0
      231 GETTABLEKS                       R4 R2 K22 ["_connections"]
      233 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      235 GETTABLEKS                       R5 R6 K66 ["OnCurrentScopeChanged"]
      237 NEWCLOSURE                       R7 P2
      238 CAPTURE                          UPVAL U5
      239 CAPTURE                          VAL R2
      240 CAPTURE                          UPVAL U2
      241 CAPTURE                          UPVAL U1
      242 NAMECALL                         R5 R5 K67 ["Connect"]
      244 CALL                             R5 2 -1
      245 FASTCALL                         TABLE_INSERT ; [+2]
      246 GETIMPORT                        R3 K70 [table.insert]
      248 CALL                             R3 -1 0
      249 GETTABLEKS                       R4 R2 K22 ["_connections"]
      251 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      253 GETTABLEKS                       R5 R6 K71 ["OnSearchRequested"]
      255 NEWCLOSURE                       R7 P3
      256 CAPTURE                          VAL R2
      257 NAMECALL                         R5 R5 K67 ["Connect"]
      259 CALL                             R5 2 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R3 K70 [table.insert]
      263 CALL                             R3 -1 0
      264 GETTABLEKS                       R4 R2 K22 ["_connections"]
      266 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      268 GETTABLEKS                       R5 R6 K72 ["OnShowSearchOptionsChanged"]
      270 NEWCLOSURE                       R7 P4
      271 CAPTURE                          VAL R2
      272 NAMECALL                         R5 R5 K67 ["Connect"]
      274 CALL                             R5 2 -1
      275 FASTCALL                         TABLE_INSERT ; [+2]
      276 GETIMPORT                        R3 K70 [table.insert]
      278 CALL                             R3 -1 0
      279 GETTABLEKS                       R4 R2 K22 ["_connections"]
      281 GETTABLEKS                       R6 R2 K3 ["_searchController"]
      283 GETTABLEKS                       R5 R6 K73 ["OnSearchClosed"]
      285 NEWCLOSURE                       R7 P5
      286 CAPTURE                          VAL R2
      287 NAMECALL                         R5 R5 K67 ["Connect"]
      289 CALL                             R5 2 -1
      290 FASTCALL                         TABLE_INSERT ; [+2]
      291 GETIMPORT                        R3 K70 [table.insert]
      293 CALL                             R3 -1 0
      294 GETTABLEKS                       R4 R2 K22 ["_connections"]
      296 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      298 NAMECALL                         R5 R5 K74 ["getPlugin"]
      300 CALL                             R5 1 1
      301 LOADK                            R7 K75 ["OnAddPlaceSucceeded"]
      302 NEWCLOSURE                       R8 P6
      303 CAPTURE                          VAL R2
      304 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      306 CALL                             R5 3 -1
      307 FASTCALL                         TABLE_INSERT ; [+2]
      308 GETIMPORT                        R3 K70 [table.insert]
      310 CALL                             R3 -1 0
      311 GETTABLEKS                       R4 R2 K22 ["_connections"]
      313 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      315 NAMECALL                         R5 R5 K74 ["getPlugin"]
      317 CALL                             R5 1 1
      318 LOADK                            R7 K77 ["OnRemovePlaceFromGameSucceeded"]
      319 NEWCLOSURE                       R8 P7
      320 CAPTURE                          VAL R2
      321 CAPTURE                          UPVAL U5
      322 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      324 CALL                             R5 3 -1
      325 FASTCALL                         TABLE_INSERT ; [+2]
      326 GETIMPORT                        R3 K70 [table.insert]
      328 CALL                             R3 -1 0
      329 GETTABLEKS                       R4 R2 K22 ["_connections"]
      331 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      333 NAMECALL                         R5 R5 K74 ["getPlugin"]
      335 CALL                             R5 1 1
      336 LOADK                            R7 K78 ["OnRenamePlaceSucceeded"]
      337 NEWCLOSURE                       R8 P8
      338 CAPTURE                          VAL R2
      339 CAPTURE                          UPVAL U5
      340 NAMECALL                         R5 R5 K76 ["OnInvoke"]
      342 CALL                             R5 3 -1
      343 FASTCALL                         TABLE_INSERT ; [+2]
      344 GETIMPORT                        R3 K70 [table.insert]
      346 CALL                             R3 -1 0
      347 GETTABLEKS                       R4 R2 K22 ["_connections"]
      349 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      351 GETTABLEKS                       R5 R6 K79 ["OnNewAssetFetched"]
      353 NEWCLOSURE                       R7 P9
      354 CAPTURE                          UPVAL U5
      355 CAPTURE                          UPVAL U10
      356 CAPTURE                          VAL R2
      357 CAPTURE                          UPVAL U11
      358 NAMECALL                         R5 R5 K67 ["Connect"]
      360 CALL                             R5 2 -1
      361 FASTCALL                         TABLE_INSERT ; [+2]
      362 GETIMPORT                        R3 K70 [table.insert]
      364 CALL                             R3 -1 0
      365 RETURN                           R2 1

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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getItems is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_items_DEPRECATED"]
       11 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_renderItems_DEPRECATED"]
        8 RETURN                           R1 1

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_45:
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

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_56:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getSelection_DEPRECATED is deprecated when using ItemsCache"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_selection"]
       11 RETURN                           R1 1

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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
       39 DUPTABLE                         R5 K12 [{"PluginController", "ItemsController", "LayoutController", "Networking", "Localization"}]
       40 GETTABLEKS                       R6 R0 K13 ["_pluginController"]
       42 SETTABLEKS                       R6 R5 K7 ["PluginController"]
       44 SETTABLEKS                       R0 R5 K8 ["ItemsController"]
       46 GETTABLEKS                       R6 R0 K14 ["_layoutController"]
       48 SETTABLEKS                       R6 R5 K9 ["LayoutController"]
       50 GETTABLEKS                       R6 R0 K15 ["_networking"]
       52 SETTABLEKS                       R6 R5 K10 ["Networking"]
       54 SETTABLEKS                       R1 R5 K11 ["Localization"]
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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
      143 GETTABLEKS                       R25 R0 K16 ["Src"]
      145 GETTABLEKS                       R24 R25 K30 ["Resources"]
      147 GETTABLEKS                       R23 R24 K31 ["Constants"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K5 [require]
      152 GETTABLEKS                       R25 R0 K16 ["Src"]
      154 GETTABLEKS                       R24 R25 K32 ["Analytics"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R27 R0 K16 ["Src"]
      161 GETTABLEKS                       R26 R27 K33 ["Flags"]
      163 GETTABLEKS                       R25 R26 K34 ["getEFAssetInsertComponentEnabled"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K16 ["Src"]
      170 GETTABLEKS                       R27 R28 K33 ["Flags"]
      172 GETTABLEKS                       R26 R27 K35 ["getFFlagEnableAssetInserter"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K16 ["Src"]
      179 GETTABLEKS                       R28 R29 K33 ["Flags"]
      181 GETTABLEKS                       R27 R28 K36 ["getFFlagAmrRecents"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R30 R0 K16 ["Src"]
      188 GETTABLEKS                       R29 R30 K33 ["Flags"]
      190 GETTABLEKS                       R28 R29 K37 ["getFFlagAmrUpdatedItemsCache"]
      192 CALL                             R27 1 1
      193 LOADK                            R30 K38 ["ItemsController"]
      194 NAMECALL                         R28 R3 K39 ["extend"]
      196 CALL                             R28 2 1
      197 DUPCLOSURE                       R29 K40 [PROTO_0]
      198 CAPTURE                          VAL R18
      199 DUPCLOSURE                       R30 K41 [PROTO_1]
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R29
      203 DUPCLOSURE                       R31 K42 [PROTO_3]
      204 CAPTURE                          VAL R27
      205 CAPTURE                          VAL R16
      206 DUPCLOSURE                       R32 K43 [PROTO_4]
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R16
      210 DUPCLOSURE                       R33 K44 [PROTO_5]
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R19
      213 DUPCLOSURE                       R34 K45 [PROTO_6]
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R17
      217 DUPCLOSURE                       R35 K46 [PROTO_17]
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R22
      230 SETTABLEKS                       R35 R28 K47 ["new"]
      232 DUPCLOSURE                       R35 K48 [PROTO_18]
      233 CAPTURE                          VAL R28
      234 SETTABLEKS                       R35 R28 K49 ["mock"]
      236 DUPCLOSURE                       R35 K50 [PROTO_19]
      237 SETTABLEKS                       R35 R28 K51 ["getIsMock"]
      239 DUPCLOSURE                       R35 K52 [PROTO_20]
      240 CAPTURE                          VAL R14
      241 SETTABLEKS                       R35 R28 K53 ["destroy"]
      243 DUPCLOSURE                       R35 K54 [PROTO_21]
      244 SETTABLEKS                       R35 R28 K55 ["getCurrentShownScope"]
      246 DUPCLOSURE                       R35 K56 [PROTO_23]
      247 SETTABLEKS                       R35 R28 K57 ["_getNewItemsHandler"]
      249 DUPCLOSURE                       R35 K58 [PROTO_24]
      250 SETTABLEKS                       R35 R28 K59 ["_createRenderItems"]
      252 DUPCLOSURE                       R35 K60 [PROTO_25]
      253 CAPTURE                          VAL R22
      254 SETTABLEKS                       R35 R28 K61 ["clearRecent"]
      256 DUPCLOSURE                       R35 K62 [PROTO_26]
      257 CAPTURE                          VAL R27
      258 SETTABLEKS                       R35 R28 K63 ["_clearItems"]
      260 DUPCLOSURE                       R35 K64 [PROTO_27]
      261 CAPTURE                          VAL R27
      262 CAPTURE                          VAL R20
      263 CAPTURE                          VAL R26
      264 CAPTURE                          VAL R22
      265 SETTABLEKS                       R35 R28 K65 ["_clearAndFetchNewItems"]
      267 DUPCLOSURE                       R35 K66 [PROTO_28]
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R12
      271 SETTABLEKS                       R35 R28 K67 ["_clearAndFetchSearchItems"]
      273 DUPCLOSURE                       R35 K68 [PROTO_29]
      274 CAPTURE                          VAL R27
      275 CAPTURE                          VAL R20
      276 SETTABLEKS                       R35 R28 K69 ["refreshItems"]
      278 DUPCLOSURE                       R35 K70 [PROTO_30]
      279 CAPTURE                          VAL R27
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R16
      282 SETTABLEKS                       R35 R28 K71 ["_updateRenderItems"]
      284 DUPCLOSURE                       R35 K72 [PROTO_31]
      285 CAPTURE                          VAL R27
      286 CAPTURE                          VAL R34
      287 CAPTURE                          VAL R33
      288 CAPTURE                          VAL R4
      289 CAPTURE                          VAL R17
      290 SETTABLEKS                       R35 R28 K73 ["_createInsertJobData"]
      292 DUPCLOSURE                       R35 K74 [PROTO_32]
      293 CAPTURE                          VAL R27
      294 CAPTURE                          VAL R12
      295 CAPTURE                          VAL R4
      296 CAPTURE                          VAL R24
      297 CAPTURE                          VAL R25
      298 CAPTURE                          VAL R11
      299 SETTABLEKS                       R35 R28 K75 ["handleDoubleClick"]
      301 DUPCLOSURE                       R35 K76 [PROTO_33]
      302 CAPTURE                          VAL R27
      303 SETTABLEKS                       R35 R28 K77 ["setLastItemClicked"]
      305 DUPCLOSURE                       R35 K78 [PROTO_34]
      306 CAPTURE                          VAL R27
      307 CAPTURE                          VAL R10
      308 SETTABLEKS                       R35 R28 K79 ["changeSelection"]
      310 DUPCLOSURE                       R35 K80 [PROTO_35]
      311 SETTABLEKS                       R35 R28 K81 ["moveSelection"]
      313 DUPCLOSURE                       R35 K82 [PROTO_36]
      314 SETTABLEKS                       R35 R28 K83 ["syncSelectionIndices"]
      316 DUPCLOSURE                       R35 K84 [PROTO_37]
      317 CAPTURE                          VAL R27
      318 SETTABLEKS                       R35 R28 K85 ["getItems"]
      320 DUPCLOSURE                       R35 K86 [PROTO_38]
      321 SETTABLEKS                       R35 R28 K87 ["getItemInfo"]
      323 DUPCLOSURE                       R35 K88 [PROTO_39]
      324 SETTABLEKS                       R35 R28 K89 ["getItemsCache"]
      326 DUPCLOSURE                       R35 K90 [PROTO_40]
      327 CAPTURE                          VAL R27
      328 SETTABLEKS                       R35 R28 K91 ["getRenderItems"]
      330 DUPCLOSURE                       R35 K92 [PROTO_41]
      331 CAPTURE                          VAL R27
      332 SETTABLEKS                       R35 R28 K93 ["requestNextPage"]
      334 DUPCLOSURE                       R35 K94 [PROTO_42]
      335 CAPTURE                          VAL R27
      336 CAPTURE                          VAL R19
      337 SETTABLEKS                       R35 R28 K95 ["findSpecialAssets"]
      339 DUPCLOSURE                       R35 K96 [PROTO_43]
      340 CAPTURE                          VAL R27
      341 CAPTURE                          VAL R12
      342 SETTABLEKS                       R35 R28 K97 ["getAssetTypes"]
      344 DUPCLOSURE                       R35 K98 [PROTO_44]
      345 CAPTURE                          VAL R7
      346 SETTABLEKS                       R35 R28 K99 ["getCreators"]
      348 DUPCLOSURE                       R35 K100 [PROTO_45]
      349 CAPTURE                          VAL R27
      350 CAPTURE                          VAL R5
      351 SETTABLEKS                       R35 R28 K101 ["_updateSortFilter"]
      353 DUPCLOSURE                       R35 K102 [PROTO_46]
      354 SETTABLEKS                       R35 R28 K103 ["getFilters"]
      356 DUPCLOSURE                       R35 K104 [PROTO_47]
      357 CAPTURE                          VAL R6
      358 SETTABLEKS                       R35 R28 K105 ["_addFilter"]
      360 DUPCLOSURE                       R35 K106 [PROTO_48]
      361 SETTABLEKS                       R35 R28 K107 ["_removeFilter"]
      363 DUPCLOSURE                       R35 K108 [PROTO_49]
      364 CAPTURE                          VAL R12
      365 SETTABLEKS                       R35 R28 K109 ["_clearAssetTypeFilter"]
      367 DUPCLOSURE                       R35 K110 [PROTO_50]
      368 SETTABLEKS                       R35 R28 K111 ["hasFilter"]
      370 DUPCLOSURE                       R35 K112 [PROTO_51]
      371 SETTABLEKS                       R35 R28 K113 ["toggleFilter"]
      373 DUPCLOSURE                       R35 K114 [PROTO_52]
      374 CAPTURE                          VAL R12
      375 SETTABLEKS                       R35 R28 K115 ["togglePackagesFilter"]
      377 DUPCLOSURE                       R35 K116 [PROTO_53]
      378 CAPTURE                          VAL R12
      379 SETTABLEKS                       R35 R28 K117 ["toggleArchivedFilter"]
      381 DUPCLOSURE                       R35 K118 [PROTO_54]
      382 CAPTURE                          VAL R12
      383 SETTABLEKS                       R35 R28 K119 ["clearFilters"]
      385 DUPCLOSURE                       R35 K120 [PROTO_55]
      386 SETTABLEKS                       R35 R28 K121 ["getSorts"]
      388 DUPCLOSURE                       R35 K122 [PROTO_56]
      389 SETTABLEKS                       R35 R28 K123 ["setSorts"]
      391 DUPCLOSURE                       R35 K124 [PROTO_57]
      392 SETTABLEKS                       R35 R28 K125 ["addSort"]
      394 DUPCLOSURE                       R35 K126 [PROTO_58]
      395 CAPTURE                          VAL R27
      396 SETTABLEKS                       R35 R28 K127 ["getSelection_DEPRECATED"]
      398 DUPCLOSURE                       R35 K128 [PROTO_59]
      399 SETTABLEKS                       R35 R28 K129 ["getSelection"]
      401 DUPCLOSURE                       R35 K130 [PROTO_60]
      402 CAPTURE                          VAL R27
      403 SETTABLEKS                       R35 R28 K131 ["setSelection_DEPRECATED"]
      405 DUPCLOSURE                       R35 K132 [PROTO_61]
      406 SETTABLEKS                       R35 R28 K133 ["setSelection"]
      408 DUPCLOSURE                       R35 K134 [PROTO_62]
      409 CAPTURE                          VAL R27
      410 CAPTURE                          VAL R5
      411 SETTABLEKS                       R35 R28 K135 ["modifySelection_DEPRECATED"]
      413 DUPCLOSURE                       R35 K136 [PROTO_63]
      414 CAPTURE                          VAL R5
      415 SETTABLEKS                       R35 R28 K137 ["modifySelection"]
      417 DUPCLOSURE                       R35 K138 [PROTO_64]
      418 CAPTURE                          VAL R15
      419 CAPTURE                          VAL R12
      420 SETTABLEKS                       R35 R28 K139 ["handleRightClick"]
      422 DUPCLOSURE                       R35 K140 [PROTO_65]
      423 SETTABLEKS                       R35 R28 K141 ["setAnalyticsInsertAction"]
      425 DUPCLOSURE                       R35 K142 [PROTO_66]
      426 CAPTURE                          VAL R27
      427 CAPTURE                          VAL R4
      428 CAPTURE                          VAL R12
      429 CAPTURE                          VAL R23
      430 SETTABLEKS                       R35 R28 K143 ["sendInsertToAnalytics"]
      432 DUPCLOSURE                       R35 K144 [PROTO_67]
      433 CAPTURE                          VAL R27
      434 SETTABLEKS                       R35 R28 K145 ["getIdAssetType"]
      436 DUPCLOSURE                       R35 K146 [PROTO_68]
      437 SETTABLEKS                       R35 R28 K147 ["getPlugin"]
      439 RETURN                           R28 1
