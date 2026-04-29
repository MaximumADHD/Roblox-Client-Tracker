PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["_itemsCache"]
        9 GETTABLEKS                       R4 R1 K3 ["Uid"]
       11 NAMECALL                         R2 R2 K4 ["hasScope"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+40]
       15 GETUPVAL                         R2 0
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K5 ["_selection"]
       20 GETUPVAL                         R2 0
       21 LOADN                            R4 1
       22 NAMECALL                         R2 R2 K6 ["syncSelectionIndices"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K7 ["OnItemSelectionChanged"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K5 ["_selection"]
       31 NAMECALL                         R2 R2 K8 ["Fire"]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K2 ["_itemsCache"]
       37 GETTABLEKS                       R4 R1 K3 ["Uid"]
       39 NAMECALL                         R2 R2 K9 ["getScope"]
       41 CALL                             R2 2 1
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K10 ["OnScopeFetchProgressChanged"]
       45 GETTABLEKS                       R5 R2 K11 ["FetchProgress"]
       47 GETTABLEKS                       R6 R2 K12 ["Loading"]
       49 GETTABLEKS                       R7 R1 K3 ["Uid"]
       51 NAMECALL                         R3 R3 K8 ["Fire"]
       53 CALL                             R3 4 0
       54 JUMP                             ; [+6]
       55 GETUPVAL                         R2 0
       56 MOVE                             R4 R1
       57 LOADB                            R5 1
       58 NAMECALL                         R2 R2 K13 ["_startNewScopeFetch"]
       60 CALL                             R2 3 0
       61 GETUPVAL                         R2 0
       62 NAMECALL                         R2 R2 K14 ["_createRenderItems"]
       64 CALL                             R2 1 0
       65 GETTABLEKS                       R2 R1 K15 ["Parent"]
       67 JUMPIFNOT                        R2 ; [+24]
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R2 R3 K2 ["_itemsCache"]
       71 GETTABLEKS                       R4 R1 K15 ["Parent"]
       73 NAMECALL                         R2 R2 K4 ["hasScope"]
       75 CALL                             R2 2 1
       76 JUMPIF                           R2 ; [+15]
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R2 R3 K16 ["_explorerController"]
       80 GETTABLEKS                       R4 R1 K15 ["Parent"]
       82 NAMECALL                         R2 R2 K17 ["getScopeWithUid"]
       84 CALL                             R2 2 1
       85 JUMPIFNOT                        R2 ; [+6]
       86 GETUPVAL                         R3 0
       87 MOVE                             R5 R2
       88 LOADB                            R6 0
       89 NAMECALL                         R3 R3 K13 ["_startNewScopeFetch"]
       91 CALL                             R3 3 0
       92 GETTABLEKS                       R2 R1 K18 ["Type"]
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R4 R5 K19 ["ScopeType"]
       97 GETTABLEKS                       R3 R4 K20 ["ProjectPlaces"]
       99 JUMPIFNOTEQ                      R2 R3 ; [+5]
      101 GETUPVAL                         R2 0
      102 NAMECALL                         R2 R2 K21 ["_clearAssetTypeFilter"]
      104 CALL                             R2 1 0
      105 GETUPVAL                         R2 2
      106 CALL                             R2 0 1
      107 JUMPIFNOT                        R2 ; [+29]
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R2 R3 K22 ["_lastUsedFolderRootUid"]
      111 JUMPIFEQKNIL                     R2 ; [+25]
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R2 R3 K16 ["_explorerController"]
      116 MOVE                             R4 R1
      117 NAMECALL                         R2 R2 K23 ["getScopeRoot"]
      119 CALL                             R2 2 1
      120 JUMPIFEQKNIL                     R2 ; [+8]
      122 GETTABLEKS                       R3 R2 K3 ["Uid"]
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R4 R5 K22 ["_lastUsedFolderRootUid"]
      127 JUMPIFEQ                         R3 R4 ; [+9]
      129 GETUPVAL                         R3 0
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K24 ["_lastUsedFolderName"]
      133 GETUPVAL                         R3 0
      134 LOADNIL                          R4
      135 SETTABLEKS                       R4 R3 K22 ["_lastUsedFolderRootUid"]
      137 GETUPVAL                         R3 0
      138 GETTABLEKS                       R2 R3 K25 ["_analyticsState"]
      140 LOADK                            R3 K26 ["browse"]
      141 SETTABLEKS                       R3 R2 K27 ["Source"]
      143 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_explorerController"]
        3 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["_itemsCache"]
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R1 K3 ["Uid"]
       16 NAMECALL                         R3 R3 K4 ["removeItem"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R3 0
       20 NAMECALL                         R3 R3 K5 ["_createRenderItems"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_explorerController"]
        3 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K3 ["_itemsCache"]
       14 GETTABLEKS                       R5 R1 K4 ["Uid"]
       16 MOVE                             R6 R2
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K5 ["AssetInfoField"]
       20 GETTABLEKS                       R7 R8 K6 ["DisplayName"]
       22 GETTABLEKS                       R8 R0 K7 ["Name"]
       24 NAMECALL                         R3 R3 K8 ["updateItemField"]
       26 CALL                             R3 5 0
       27 GETUPVAL                         R3 0
       28 NAMECALL                         R3 R3 K9 ["_createRenderItems"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["Uid"]
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R3 R0 K1 ["Creator"]
        9 GETTABLEKS                       R2 R3 K0 ["Uid"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K2 ["_itemsCache"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K3 ["addRecent"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R4 1
       19 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R3 R4 K0 ["Uid"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K5 ["RecentUploads"]
       27 GETTABLEKS                       R4 R5 K0 ["Uid"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+28]
       31 GETUPVAL                         R3 1
       32 NAMECALL                         R3 R3 K6 ["_createRenderItems"]
       34 CALL                             R3 1 0
       35 LOADN                            R3 1
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R4 R7 K7 ["_renderItems"]
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETTABLEKS                       R9 R0 K8 ["Path"]
       44 JUMPIFNOTEQ                      R8 R9 ; [+3]
       46 MOVE                             R3 R7
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R4 2 ; [-7]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K9 ["_layoutController"]
       53 MOVE                             R6 R3
       54 NAMECALL                         R4 R4 K10 ["scrollToItem"]
       56 CALL                             R4 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R3 R4 K11 ["_searchController"]
       61 NAMECALL                         R3 R3 K12 ["getShowSearchOptions"]
       63 CALL                             R3 1 1
       64 JUMPIFNOT                        R3 ; [+1]
       65 RETURN                           R0 0
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R5 R6 K13 ["_pluginController"]
       69 NAMECALL                         R5 R5 K14 ["getCurrentScope"]
       71 CALL                             R5 1 1
       72 GETTABLEKS                       R4 R5 K0 ["Uid"]
       74 JUMPIFEQ                         R2 R4 ; [+2]
       76 LOADB                            R3 0 +1
       77 LOADB                            R3 1
       78 JUMPIF                           R3 ; [+1]
       79 RETURN                           R0 0
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R4 R5 K2 ["_itemsCache"]
       83 MOVE                             R6 R2
       84 NAMECALL                         R4 R4 K15 ["hasScope"]
       86 CALL                             R4 2 1
       87 JUMPIFNOT                        R4 ; [+22]
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R4 R5 K2 ["_itemsCache"]
       91 MOVE                             R6 R0
       92 MOVE                             R7 R2
       93 NAMECALL                         R4 R4 K16 ["addItem"]
       95 CALL                             R4 3 0
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R5 R6 K13 ["_pluginController"]
       99 NAMECALL                         R5 R5 K14 ["getCurrentScope"]
      101 CALL                             R5 1 1
      102 GETTABLEKS                       R4 R5 K0 ["Uid"]
      104 JUMPIFNOTEQ                      R4 R2 ; [+5]
      106 GETUPVAL                         R4 1
      107 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      109 CALL                             R4 1 0
      110 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_layoutController"]
        3 NAMECALL                         R0 R0 K1 ["getIsCompact"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K0 ["_layoutController"]
       10 NAMECALL                         R0 R0 K2 ["toggleSidebar"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 0
       14 NAMECALL                         R0 R0 K3 ["_clearAndFetchSearchItems"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_8:
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
       20 GETUPVAL                         R1 1
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 0
       24 LOADB                            R3 0
       25 NAMECALL                         R1 R1 K6 ["setShowAllSearchFolders"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_searchController"]
        3 NAMECALL                         R0 R0 K1 ["getShowSearchOptions"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["_renderItems"]
       10 LENGTH                           R0 R1
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["_createRenderItems"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_searchController"]
        3 NAMECALL                         R0 R0 K1 ["getShowSearchOptions"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["_renderItems"]
       10 LENGTH                           R0 R1
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["_createRenderItems"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R2 64 0
        2 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["_destroyed"]
        7 GETTABLEKS                       R3 R0 K2 ["PluginController"]
        9 SETTABLEKS                       R3 R2 K3 ["_pluginController"]
       11 GETTABLEKS                       R3 R0 K4 ["ExplorerController"]
       13 SETTABLEKS                       R3 R2 K5 ["_explorerController"]
       15 GETTABLEKS                       R3 R0 K6 ["SearchController"]
       17 SETTABLEKS                       R3 R2 K7 ["_searchController"]
       19 GETTABLEKS                       R3 R0 K8 ["LayoutController"]
       21 SETTABLEKS                       R3 R2 K9 ["_layoutController"]
       23 GETTABLEKS                       R3 R0 K10 ["Networking"]
       25 SETTABLEKS                       R3 R2 K11 ["_networking"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K12 ["_columnWidths"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K13 ["new"]
       34 GETUPVAL                         R5 1
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+2]
       37 LOADN                            R4 10
       38 JUMP                             ; [+1]
       39 LOADN                            R4 5
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K14 ["_itemsCache"]
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K15 ["_renderItems"]
       47 NEWTABLE                         R3 0 0
       49 SETTABLEKS                       R3 R2 K16 ["_creators"]
       51 NEWTABLE                         R3 1 0
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R5 R6 K17 ["AssetInfoField"]
       56 GETTABLEKS                       R4 R5 K18 ["Archived"]
       58 LOADB                            R5 0
       59 SETTABLE                         R5 R3 R4
       60 SETTABLEKS                       R3 R2 K19 ["_filters"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R3 R4 K20 ["get"]
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K21 ["_sorts"]
       68 NEWTABLE                         R3 0 0
       70 SETTABLEKS                       R3 R2 K22 ["_selection"]
       72 LOADNIL                          R3
       73 SETTABLEKS                       R3 R2 K23 ["_stagedEditItemPath"]
       75 LOADB                            R3 0
       76 SETTABLEKS                       R3 R2 K24 ["_moveSelectionToNewFolder"]
       78 LOADN                            R3 1
       79 SETTABLEKS                       R3 R2 K25 ["_selectStartIndex"]
       81 LOADN                            R3 1
       82 SETTABLEKS                       R3 R2 K26 ["_selectEndIndex"]
       84 DUPTABLE                         R3 K29 [{"modsPressed", "targetAssetId"}]
       85 DUPTABLE                         R4 K32 [{"Shift", "Ctrl"}]
       86 LOADB                            R5 0
       87 SETTABLEKS                       R5 R4 K30 ["Shift"]
       89 LOADB                            R5 0
       90 SETTABLEKS                       R5 R4 K31 ["Ctrl"]
       92 SETTABLEKS                       R4 R3 K27 ["modsPressed"]
       94 LOADN                            R4 255
       95 SETTABLEKS                       R4 R3 K28 ["targetAssetId"]
       97 SETTABLEKS                       R3 R2 K33 ["_clickState"]
       99 LOADB                            R3 0
      100 SETTABLEKS                       R3 R2 K34 ["_isDragging"]
      102 LOADK                            R3 K35 [""]
      103 SETTABLEKS                       R3 R2 K36 ["_lastItemPathClicked"]
      105 LOADNIL                          R3
      106 SETTABLEKS                       R3 R2 K37 ["_lastUsedFolderName"]
      108 LOADNIL                          R3
      109 SETTABLEKS                       R3 R2 K38 ["_lastUsedFolderRootUid"]
      111 LOADB                            R3 0
      112 SETTABLEKS                       R3 R2 K39 ["_showAllSearchFolders"]
      114 LOADN                            R3 0
      115 SETTABLEKS                       R3 R2 K40 ["_searchFolderCount"]
      117 DUPTABLE                         R3 K44 [{"Action", "Source", "Position"}]
      118 LOADK                            R4 K45 ["double_click"]
      119 SETTABLEKS                       R4 R3 K41 ["Action"]
      121 LOADK                            R4 K46 ["browse"]
      122 SETTABLEKS                       R4 R3 K42 ["Source"]
      124 LOADN                            R4 0
      125 SETTABLEKS                       R4 R3 K43 ["Position"]
      127 SETTABLEKS                       R3 R2 K47 ["_analyticsState"]
      129 NEWTABLE                         R3 0 0
      131 SETTABLEKS                       R3 R2 K48 ["_connections"]
      133 GETUPVAL                         R4 4
      134 GETTABLEKS                       R3 R4 K13 ["new"]
      136 CALL                             R3 0 1
      137 SETTABLEKS                       R3 R2 K49 ["OnVisiblePropertiesChanged"]
      139 GETUPVAL                         R4 4
      140 GETTABLEKS                       R3 R4 K13 ["new"]
      142 CALL                             R3 0 1
      143 SETTABLEKS                       R3 R2 K50 ["OnItemsChanged"]
      145 GETUPVAL                         R4 4
      146 GETTABLEKS                       R3 R4 K13 ["new"]
      148 CALL                             R3 0 1
      149 SETTABLEKS                       R3 R2 K51 ["OnItemSelectionChanged"]
      151 GETUPVAL                         R4 4
      152 GETTABLEKS                       R3 R4 K13 ["new"]
      154 CALL                             R3 0 1
      155 SETTABLEKS                       R3 R2 K52 ["OnSortFilterChanged"]
      157 GETUPVAL                         R4 4
      158 GETTABLEKS                       R3 R4 K13 ["new"]
      160 CALL                             R3 0 1
      161 SETTABLEKS                       R3 R2 K53 ["OnCreatorsChanged"]
      163 GETUPVAL                         R4 4
      164 GETTABLEKS                       R3 R4 K13 ["new"]
      166 CALL                             R3 0 1
      167 SETTABLEKS                       R3 R2 K54 ["OnScopeFetchProgressChanged"]
      169 GETUPVAL                         R4 4
      170 GETTABLEKS                       R3 R4 K13 ["new"]
      172 CALL                             R3 0 1
      173 SETTABLEKS                       R3 R2 K55 ["OnSearchFolderCountChanged"]
      175 GETUPVAL                         R4 4
      176 GETTABLEKS                       R3 R4 K13 ["new"]
      178 CALL                             R3 0 1
      179 SETTABLEKS                       R3 R2 K56 ["OnStagedEditItemPathChanged"]
      181 GETUPVAL                         R5 5
      182 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      184 MOVE                             R4 R2
      185 GETIMPORT                        R3 K58 [setmetatable]
      187 CALL                             R3 2 0
      188 DUPCLOSURE                       R3 K59 [PROTO_1]
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          UPVAL U7
      191 SETTABLEKS                       R3 R2 K60 ["_fetchAssetsErrorCallback"]
      193 GETUPVAL                         R3 8
      194 CALL                             R3 0 1
      195 JUMPIFNOT                        R3 ; [+9]
      196 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      198 NAMECALL                         R5 R5 K61 ["getCurrentScope"]
      200 CALL                             R5 1 -1
      201 NAMECALL                         R3 R2 K62 ["_startNewScopeFetch"]
      203 CALL                             R3 -1 0
      204 JUMP                             ; [+41]
      205 GETTABLEKS                       R3 R2 K3 ["_pluginController"]
      207 NAMECALL                         R3 R3 K61 ["getCurrentScope"]
      209 CALL                             R3 1 1
      210 GETTABLEKS                       R4 R2 K14 ["_itemsCache"]
      212 GETTABLEKS                       R6 R3 K63 ["Uid"]
      214 NAMECALL                         R4 R4 K64 ["addScope"]
      216 CALL                             R4 2 1
      217 LOADB                            R5 1
      218 SETTABLEKS                       R5 R4 K65 ["Loading"]
      220 GETTABLEKS                       R5 R2 K54 ["OnScopeFetchProgressChanged"]
      222 GETTABLEKS                       R7 R4 K66 ["FetchProgress"]
      224 GETTABLEKS                       R8 R4 K65 ["Loading"]
      226 GETTABLEKS                       R9 R3 K63 ["Uid"]
      228 NAMECALL                         R5 R5 K67 ["Fire"]
      230 CALL                             R5 4 0
      231 MOVE                             R7 R3
      232 NAMECALL                         R5 R2 K68 ["_getNewItemsHandler"]
      234 CALL                             R5 2 1
      235 GETTABLEKS                       R6 R2 K11 ["_networking"]
      237 MOVE                             R8 R3
      238 GETTABLEKS                       R9 R4 K69 ["NextPageToken"]
      240 MOVE                             R10 R5
      241 GETTABLEKS                       R11 R2 K60 ["_fetchAssetsErrorCallback"]
      243 NAMECALL                         R6 R6 K70 ["fetchAssetsAsync"]
      245 CALL                             R6 5 0
      246 GETTABLEKS                       R4 R2 K48 ["_connections"]
      248 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      250 GETTABLEKS                       R5 R6 K71 ["OnCurrentScopeChanged"]
      252 NEWCLOSURE                       R7 P1
      253 CAPTURE                          VAL R2
      254 CAPTURE                          UPVAL U2
      255 CAPTURE                          UPVAL U1
      256 NAMECALL                         R5 R5 K72 ["Connect"]
      258 CALL                             R5 2 -1
      259 FASTCALL                         TABLE_INSERT ; [+2]
      260 GETIMPORT                        R3 K75 [table.insert]
      262 CALL                             R3 -1 0
      263 GETTABLEKS                       R4 R2 K48 ["_connections"]
      265 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      267 NAMECALL                         R5 R5 K76 ["getPlugin"]
      269 CALL                             R5 1 1
      270 LOADK                            R7 K77 ["OnAddPlaceSucceeded"]
      271 NEWCLOSURE                       R8 P2
      272 CAPTURE                          VAL R2
      273 NAMECALL                         R5 R5 K78 ["OnInvoke"]
      275 CALL                             R5 3 -1
      276 FASTCALL                         TABLE_INSERT ; [+2]
      277 GETIMPORT                        R3 K75 [table.insert]
      279 CALL                             R3 -1 0
      280 GETTABLEKS                       R4 R2 K48 ["_connections"]
      282 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      284 NAMECALL                         R5 R5 K76 ["getPlugin"]
      286 CALL                             R5 1 1
      287 LOADK                            R7 K79 ["OnRemovePlaceFromGameSucceeded"]
      288 NEWCLOSURE                       R8 P3
      289 CAPTURE                          VAL R2
      290 CAPTURE                          UPVAL U9
      291 NAMECALL                         R5 R5 K78 ["OnInvoke"]
      293 CALL                             R5 3 -1
      294 FASTCALL                         TABLE_INSERT ; [+2]
      295 GETIMPORT                        R3 K75 [table.insert]
      297 CALL                             R3 -1 0
      298 GETTABLEKS                       R4 R2 K48 ["_connections"]
      300 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      302 NAMECALL                         R5 R5 K76 ["getPlugin"]
      304 CALL                             R5 1 1
      305 LOADK                            R7 K80 ["OnRenamePlaceSucceeded"]
      306 NEWCLOSURE                       R8 P4
      307 CAPTURE                          VAL R2
      308 CAPTURE                          UPVAL U9
      309 CAPTURE                          UPVAL U2
      310 NAMECALL                         R5 R5 K78 ["OnInvoke"]
      312 CALL                             R5 3 -1
      313 FASTCALL                         TABLE_INSERT ; [+2]
      314 GETIMPORT                        R3 K75 [table.insert]
      316 CALL                             R3 -1 0
      317 GETTABLEKS                       R4 R2 K48 ["_connections"]
      319 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      321 GETTABLEKS                       R5 R6 K81 ["OnNewAssetFetched"]
      323 NEWCLOSURE                       R7 P5
      324 CAPTURE                          UPVAL U1
      325 CAPTURE                          VAL R2
      326 CAPTURE                          UPVAL U10
      327 NAMECALL                         R5 R5 K72 ["Connect"]
      329 CALL                             R5 2 -1
      330 FASTCALL                         TABLE_INSERT ; [+2]
      331 GETIMPORT                        R3 K75 [table.insert]
      333 CALL                             R3 -1 0
      334 GETTABLEKS                       R4 R2 K48 ["_connections"]
      336 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      338 GETTABLEKS                       R5 R6 K82 ["OnSearchRequested"]
      340 NEWCLOSURE                       R7 P6
      341 CAPTURE                          VAL R2
      342 NAMECALL                         R5 R5 K72 ["Connect"]
      344 CALL                             R5 2 -1
      345 FASTCALL                         TABLE_INSERT ; [+2]
      346 GETIMPORT                        R3 K75 [table.insert]
      348 CALL                             R3 -1 0
      349 GETTABLEKS                       R4 R2 K48 ["_connections"]
      351 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      353 GETTABLEKS                       R5 R6 K83 ["OnShowSearchOptionsChanged"]
      355 NEWCLOSURE                       R7 P7
      356 CAPTURE                          VAL R2
      357 CAPTURE                          UPVAL U1
      358 NAMECALL                         R5 R5 K72 ["Connect"]
      360 CALL                             R5 2 -1
      361 FASTCALL                         TABLE_INSERT ; [+2]
      362 GETIMPORT                        R3 K75 [table.insert]
      364 CALL                             R3 -1 0
      365 GETTABLEKS                       R4 R2 K48 ["_connections"]
      367 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      369 GETTABLEKS                       R5 R6 K84 ["OnIsDefaultSearchStateChanged"]
      371 NEWCLOSURE                       R7 P8
      372 CAPTURE                          VAL R2
      373 NAMECALL                         R5 R5 K72 ["Connect"]
      375 CALL                             R5 2 -1
      376 FASTCALL                         TABLE_INSERT ; [+2]
      377 GETIMPORT                        R3 K75 [table.insert]
      379 CALL                             R3 -1 0
      380 GETUPVAL                         R3 1
      381 CALL                             R3 0 1
      382 JUMPIFNOT                        R3 ; [+30]
      383 GETTABLEKS                       R4 R2 K48 ["_connections"]
      385 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      387 GETTABLEKS                       R5 R6 K85 ["OnBrowserLayoutChanged"]
      389 NEWCLOSURE                       R7 P9
      390 CAPTURE                          VAL R2
      391 NAMECALL                         R5 R5 K72 ["Connect"]
      393 CALL                             R5 2 -1
      394 FASTCALL                         TABLE_INSERT ; [+2]
      395 GETIMPORT                        R3 K75 [table.insert]
      397 CALL                             R3 -1 0
      398 GETTABLEKS                       R4 R2 K48 ["_connections"]
      400 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      402 GETTABLEKS                       R5 R6 K86 ["OnGridStateUpdated"]
      404 NEWCLOSURE                       R7 P10
      405 CAPTURE                          VAL R2
      406 NAMECALL                         R5 R5 K72 ["Connect"]
      408 CALL                             R5 2 -1
      409 FASTCALL                         TABLE_INSERT ; [+2]
      410 GETIMPORT                        R3 K75 [table.insert]
      412 CALL                             R3 -1 0
      413 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["_destroyed"]
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADB                            R5 0
        5 RETURN                           R5 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["_itemsCache"]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K2 ["Uid"]
       12 NAMECALL                         R5 R5 K3 ["getScope"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K4 ["_networking"]
       21 NAMECALL                         R6 R6 K5 ["getFetchEpochId"]
       23 CALL                             R6 1 1
       24 JUMPIFEQ                         R2 R6 ; [+22]
       26 LOADB                            R6 0
       27 SETTABLEKS                       R6 R5 K6 ["Loading"]
       29 LOADN                            R6 0
       30 SETTABLEKS                       R6 R5 K7 ["FetchProgress"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K8 ["OnScopeFetchProgressChanged"]
       35 GETTABLEKS                       R8 R5 K7 ["FetchProgress"]
       37 GETTABLEKS                       R9 R5 K6 ["Loading"]
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R10 R11 K2 ["Uid"]
       42 NAMECALL                         R6 R6 K9 ["Fire"]
       44 CALL                             R6 4 0
       45 LOADB                            R6 0
       46 RETURN                           R6 1
       47 MOVE                             R6 R0
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R11 R12 K1 ["_itemsCache"]
       54 MOVE                             R13 R10
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R14 R15 K2 ["Uid"]
       58 NAMECALL                         R11 R11 K10 ["addItem"]
       60 CALL                             R11 3 0
       61 FORGLOOP                         R6 2 ; [-11]
       63 LOADB                            R6 0
       64 MOVE                             R7 R1
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 FORGPREP                         R7
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K11 ["_creators"]
       71 GETTABLE                         R12 R13 R10
       72 JUMPIF                           R12 ; [+4]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K11 ["_creators"]
       76 SETTABLE                         R11 R12 R10
       77 LOADB                            R6 1
       78 FORGLOOP                         R7 2 ; [-11]
       80 JUMPIFNOT                        R6 ; [+10]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R7 R8 K12 ["OnCreatorsChanged"]
       84 GETUPVAL                         R9 0
       85 NAMECALL                         R9 R9 K13 ["getCreators"]
       87 CALL                             R9 1 -1
       88 NAMECALL                         R7 R7 K9 ["Fire"]
       90 CALL                             R7 -1 0
       91 GETUPVAL                         R7 0
       92 NAMECALL                         R7 R7 K14 ["getCurrentShownScope"]
       94 CALL                             R7 1 1
       95 GETTABLEKS                       R8 R7 K2 ["Uid"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R9 R10 K2 ["Uid"]
      100 JUMPIFNOTEQ                      R8 R9 ; [+5]
      102 GETUPVAL                         R8 0
      103 NAMECALL                         R8 R8 K15 ["_createRenderItems"]
      105 CALL                             R8 1 0
      106 JUMPIFNOT                        R3 ; [+7]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R8 R9 K16 ["_pluginController"]
      110 MOVE                             R10 R3
      111 NAMECALL                         R8 R8 K17 ["setRootPlace"]
      113 CALL                             R8 2 0
      114 SETTABLEKS                       R4 R5 K18 ["NextPageToken"]
      116 JUMPIFEQKNIL                     R4 ; [+17]
      118 JUMPIFEQKS                       R4 K19 [""] ; [+15]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      123 NAMECALL                         R8 R8 K20 ["getTotalItemCount"]
      125 CALL                             R8 1 1
      126 GETUPVAL                         R10 0
      127 GETTABLEKS                       R9 R10 K1 ["_itemsCache"]
      129 NAMECALL                         R9 R9 K21 ["getMaxItems"]
      131 CALL                             R9 1 1
      132 JUMPIFNOTLT                      R9 R8 ; [+8]
      134 LOADB                            R8 0
      135 SETTABLEKS                       R8 R5 K6 ["Loading"]
      137 LOADN                            R8 0
      138 SETTABLEKS                       R8 R5 K7 ["FetchProgress"]
      140 JUMP                             ; [+14]
      141 LOADB                            R8 1
      142 SETTABLEKS                       R8 R5 K6 ["Loading"]
      144 GETUPVAL                         R9 0
      145 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      147 GETUPVAL                         R11 1
      148 GETTABLEKS                       R10 R11 K2 ["Uid"]
      150 NAMECALL                         R8 R8 K22 ["getScopeCacheFetchProgress"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R5 K7 ["FetchProgress"]
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R8 R9 K8 ["OnScopeFetchProgressChanged"]
      158 GETUPVAL                         R11 0
      159 GETTABLEKS                       R10 R11 K1 ["_itemsCache"]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R12 R13 K2 ["Uid"]
      164 NAMECALL                         R10 R10 K22 ["getScopeCacheFetchProgress"]
      166 CALL                             R10 2 1
      167 GETTABLEKS                       R11 R5 K6 ["Loading"]
      169 GETUPVAL                         R13 1
      170 GETTABLEKS                       R12 R13 K2 ["Uid"]
      172 NAMECALL                         R8 R8 K9 ["Fire"]
      174 CALL                             R8 4 0
      175 GETTABLEKS                       R8 R5 K6 ["Loading"]
      177 JUMPIF                           R8 ; [+2]
      178 LOADB                            R8 0
      179 RETURN                           R8 1
      180 LOADB                            R8 1
      181 RETURN                           R8 1

PROTO_17:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R3 R4 K1 ["Uid"]
        8 GETTABLEKS                       R4 R0 K2 ["_searchController"]
       10 NAMECALL                         R4 R4 K3 ["getShowSearchOptions"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 0
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+38]
       16 JUMPIFNOT                        R4 ; [+37]
       17 GETTABLEKS                       R5 R0 K4 ["_layoutController"]
       19 NAMECALL                         R5 R5 K5 ["getFolderLimit"]
       21 CALL                             R5 1 1
       22 DUPTABLE                         R6 K8 [{"AssetType", "FolderCount"}]
       23 GETTABLEKS                       R8 R0 K2 ["_searchController"]
       25 NAMECALL                         R8 R8 K9 ["getSearchOptions"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R7 R8 K6 ["AssetType"]
       30 SETTABLEKS                       R7 R6 K6 ["AssetType"]
       32 GETTABLEKS                       R8 R0 K10 ["_showAllSearchFolders"]
       34 JUMPIFNOT                        R8 ; [+2]
       35 LOADNIL                          R7
       36 JUMP                             ; [+1]
       37 MOVE                             R7 R5
       38 SETTABLEKS                       R7 R6 K7 ["FolderCount"]
       40 GETTABLEKS                       R7 R0 K11 ["_itemsCache"]
       42 MOVE                             R9 R3
       43 GETTABLEKS                       R10 R0 K12 ["_filters"]
       45 GETTABLEKS                       R11 R0 K13 ["_sorts"]
       47 MOVE                             R12 R6
       48 NAMECALL                         R7 R7 K14 ["getSortedFilteredPathsForSearch"]
       50 CALL                             R7 5 2
       51 MOVE                             R1 R7
       52 MOVE                             R2 R8
       53 JUMP                             ; [+11]
       54 GETTABLEKS                       R5 R0 K11 ["_itemsCache"]
       56 MOVE                             R7 R3
       57 GETTABLEKS                       R8 R0 K12 ["_filters"]
       59 GETTABLEKS                       R9 R0 K13 ["_sorts"]
       61 NAMECALL                         R5 R5 K15 ["getSortedFilteredPaths"]
       63 CALL                             R5 4 1
       64 MOVE                             R1 R5
       65 SETTABLEKS                       R1 R0 K16 ["_renderItems"]
       67 GETTABLEKS                       R5 R0 K17 ["OnItemsChanged"]
       69 GETTABLEKS                       R7 R0 K16 ["_renderItems"]
       71 NAMECALL                         R5 R5 K18 ["Fire"]
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 0
       75 CALL                             R5 0 1
       76 JUMPIFNOT                        R5 ; [+12]
       77 JUMPIFNOT                        R4 ; [+11]
       78 GETTABLEKS                       R5 R0 K19 ["_searchFolderCount"]
       80 JUMPIFEQ                         R2 R5 ; [+8]
       82 SETTABLEKS                       R2 R0 K19 ["_searchFolderCount"]
       84 GETTABLEKS                       R5 R0 K20 ["OnSearchFolderCountChanged"]
       86 NAMECALL                         R5 R5 K18 ["Fire"]
       88 CALL                             R5 1 0
       89 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 LOADK                            R1 K0 ["GetItemsFailed"]
        1 GETTABLEKS                       R2 R0 K1 ["code"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["ErrorTypeLookup"]
        7 GETTABLEKS                       R3 R4 K3 ["GetItems"]
        9 GETTABLEKS                       R4 R0 K1 ["code"]
       11 GETTABLE                         R2 R3 R4
       12 OR                               R1 R2 R1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["_pluginController"]
       16 DUPTABLE                         R4 K7 [{"Key", "SubKey"}]
       17 LOADK                            R5 K8 ["Toast"]
       18 SETTABLEKS                       R5 R4 K5 ["Key"]
       20 SETTABLEKS                       R1 R4 K6 ["SubKey"]
       22 NAMECALL                         R2 R2 K9 ["showToast"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        2 GETTABLEKS                       R5 R1 K1 ["Uid"]
        4 NAMECALL                         R3 R3 K2 ["addScope"]
        6 CALL                             R3 2 1
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K3 ["Loading"]
       10 JUMPIFNOT                        R2 ; [+11]
       11 GETTABLEKS                       R5 R0 K4 ["_sorts"]
       13 LENGTH                           R4 R5
       14 JUMPIFNOTEQKN                    R4 K5 [0] ; [+7]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["get"]
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R0 K4 ["_sorts"]
       22 MOVE                             R6 R1
       23 NAMECALL                         R4 R0 K7 ["_getNewItemsHandler"]
       25 CALL                             R4 2 1
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 GETTABLEKS                       R6 R0 K8 ["_networking"]
       31 MOVE                             R8 R1
       32 GETTABLEKS                       R9 R3 K9 ["NextPageToken"]
       34 MOVE                             R10 R4
       35 GETUPVAL                         R12 2
       36 CALL                             R12 0 1
       37 JUMPIFNOT                        R12 ; [+2]
       38 MOVE                             R11 R5
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R11 R0 K10 ["_fetchAssetsErrorCallback"]
       42 NAMECALL                         R6 R6 K11 ["fetchAssetsAsync"]
       44 CALL                             R6 5 0
       45 GETTABLEKS                       R6 R0 K12 ["OnScopeFetchProgressChanged"]
       47 LOADN                            R8 0
       48 LOADB                            R9 1
       49 GETTABLEKS                       R10 R1 K1 ["Uid"]
       51 NAMECALL                         R6 R6 K13 ["Fire"]
       53 CALL                             R6 4 0
       54 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_networking"]
        2 NAMECALL                         R1 R1 K1 ["makeFetchRequestsStale"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["OnScopeFetchProgressChanged"]
        7 LOADN                            R3 0
        8 LOADB                            R4 0
        9 NAMECALL                         R6 R0 K3 ["getCurrentShownScope"]
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R5 R6 K4 ["Uid"]
       14 NAMECALL                         R1 R1 K5 ["Fire"]
       16 CALL                             R1 4 0
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K6 ["_renderItems"]
       21 GETTABLEKS                       R1 R0 K7 ["_itemsCache"]
       23 NAMECALL                         R1 R1 K8 ["reset"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R1 R0 K9 ["OnItemsChanged"]
       28 GETTABLEKS                       R3 R0 K6 ["_renderItems"]
       30 NAMECALL                         R1 R1 K5 ["Fire"]
       32 CALL                             R1 2 0
       33 NEWTABLE                         R1 0 0
       35 SETTABLEKS                       R1 R0 K10 ["_selection"]
       37 LOADN                            R3 1
       38 NAMECALL                         R1 R0 K11 ["syncSelectionIndices"]
       40 CALL                             R1 2 0
       41 GETTABLEKS                       R1 R0 K12 ["OnItemSelectionChanged"]
       43 GETTABLEKS                       R3 R0 K10 ["_selection"]
       45 NAMECALL                         R1 R1 K5 ["Fire"]
       47 CALL                             R1 2 0
       48 NEWTABLE                         R1 0 0
       50 SETTABLEKS                       R1 R0 K13 ["_creators"]
       52 RETURN                           R0 0

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["_clearItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R2 R0 K1 ["_sorts"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["get"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K1 ["_sorts"]
       14 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       16 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["Uid"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K7 ["RecentUploads"]
       24 GETTABLEKS                       R3 R4 K6 ["Uid"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+5]
       28 NAMECALL                         R2 R0 K8 ["_createRenderItems"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 MOVE                             R4 R1
       33 LOADB                            R5 1
       34 NAMECALL                         R2 R0 K9 ["_startNewScopeFetch"]
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_showAllSearchFolders"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        7 GETTABLEKS                       R2 R0 K1 ["_searchController"]
        9 NAMECALL                         R2 R2 K2 ["getShowSearchOptions"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R2 R0 K3 ["_createRenderItems"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_27:
        0 NAMECALL                         R1 R0 K0 ["_clearItems"]
        2 CALL                             R1 1 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_sorts"]
        7 NAMECALL                         R1 R0 K2 ["clearFilters"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["OnSortFilterChanged"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R4 R0 K1 ["_sorts"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R5 R0 K4 ["_filters"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R1 R1 K5 ["Fire"]
       22 CALL                             R1 -1 0
       23 GETTABLEKS                       R1 R0 K6 ["_searchController"]
       25 NAMECALL                         R1 R1 K7 ["getSearchOptions"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R1 K8 ["ScopeInfo"]
       30 GETTABLEKS                       R3 R2 K9 ["Type"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K10 ["ScopeType"]
       35 GETTABLEKS                       R4 R5 K11 ["Universe"]
       37 JUMPIFNOTEQ                      R3 R4 ; [+34]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K12 ["AssetInfoField"]
       42 GETTABLEKS                       R5 R6 K13 ["DisplayName"]
       44 GETTABLEKS                       R6 R0 K6 ["_searchController"]
       46 NAMECALL                         R6 R6 K14 ["getSearchTerm"]
       48 CALL                             R6 1 -1
       49 NAMECALL                         R3 R0 K15 ["_addFilter"]
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R6 R7 K12 ["AssetInfoField"]
       55 GETTABLEKS                       R5 R6 K16 ["AssetType"]
       57 NEWTABLE                         R6 1 0
       59 GETTABLEKS                       R7 R1 K16 ["AssetType"]
       61 LOADB                            R8 1
       62 SETTABLE                         R8 R6 R7
       63 NAMECALL                         R3 R0 K15 ["_addFilter"]
       65 CALL                             R3 3 0
       66 MOVE                             R5 R2
       67 LOADB                            R6 0
       68 NAMECALL                         R3 R0 K17 ["_startNewScopeFetch"]
       70 CALL                             R3 3 0
       71 RETURN                           R0 0
       72 DUPTABLE                         R3 K19 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       73 GETTABLEKS                       R4 R0 K6 ["_searchController"]
       75 NAMECALL                         R4 R4 K14 ["getSearchTerm"]
       77 CALL                             R4 1 1
       78 SETTABLEKS                       R4 R3 K18 ["SearchTerm"]
       80 GETTABLEKS                       R4 R1 K16 ["AssetType"]
       82 SETTABLEKS                       R4 R3 K16 ["AssetType"]
       84 SETTABLEKS                       R2 R3 K8 ["ScopeInfo"]
       86 GETTABLEKS                       R4 R0 K20 ["_itemsCache"]
       88 GETTABLEKS                       R6 R2 K21 ["Uid"]
       90 NAMECALL                         R4 R4 K22 ["addScope"]
       92 CALL                             R4 2 1
       93 MOVE                             R7 R2
       94 NAMECALL                         R5 R0 K23 ["_getNewItemsHandler"]
       96 CALL                             R5 2 1
       97 GETTABLEKS                       R6 R0 K24 ["_networking"]
       99 MOVE                             R8 R3
      100 GETTABLEKS                       R9 R4 K25 ["NextPageToken"]
      102 MOVE                             R10 R5
      103 GETTABLEKS                       R11 R0 K26 ["_fetchAssetsErrorCallback"]
      105 NAMECALL                         R6 R6 K27 ["searchAssetsAsync"]
      107 CALL                             R6 5 0
      108 GETUPVAL                         R6 2
      109 CALL                             R6 0 1
      110 JUMPIFNOT                        R6 ; [+25]
      111 DUPTABLE                         R6 K29 [{"SearchTerm", "IncludeFolders", "ScopeInfo"}]
      112 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      114 NAMECALL                         R7 R7 K14 ["getSearchTerm"]
      116 CALL                             R7 1 1
      117 SETTABLEKS                       R7 R6 K18 ["SearchTerm"]
      119 LOADB                            R7 1
      120 SETTABLEKS                       R7 R6 K28 ["IncludeFolders"]
      122 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      124 MOVE                             R3 R6
      125 GETTABLEKS                       R6 R0 K24 ["_networking"]
      127 MOVE                             R8 R3
      128 GETTABLEKS                       R9 R4 K25 ["NextPageToken"]
      130 MOVE                             R10 R5
      131 GETTABLEKS                       R11 R0 K26 ["_fetchAssetsErrorCallback"]
      133 NAMECALL                         R6 R6 K27 ["searchAssetsAsync"]
      135 CALL                             R6 5 0
      136 GETTABLEKS                       R6 R0 K30 ["OnScopeFetchProgressChanged"]
      138 LOADN                            R8 0
      139 LOADB                            R9 1
      140 GETTABLEKS                       R10 R2 K21 ["Uid"]
      142 NAMECALL                         R6 R6 K5 ["Fire"]
      144 CALL                             R6 4 0
      145 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_sorts"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["get"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K0 ["_sorts"]
       11 NAMECALL                         R1 R0 K3 ["_clearItems"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       16 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["Type"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K7 ["ScopeType"]
       24 GETTABLEKS                       R3 R4 K8 ["RecentUploads"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+23]
       28 GETTABLEKS                       R2 R0 K9 ["_itemsCache"]
       30 GETTABLEKS                       R4 R1 K10 ["Uid"]
       32 NAMECALL                         R2 R2 K11 ["getScope"]
       34 CALL                             R2 2 1
       35 GETTABLEKS                       R3 R0 K12 ["OnScopeFetchProgressChanged"]
       37 GETTABLEKS                       R5 R2 K13 ["FetchProgress"]
       39 GETTABLEKS                       R6 R2 K14 ["Loading"]
       41 GETTABLEKS                       R7 R1 K10 ["Uid"]
       43 NAMECALL                         R3 R3 K15 ["Fire"]
       45 CALL                             R3 4 0
       46 NAMECALL                         R3 R0 K16 ["_createRenderItems"]
       48 CALL                             R3 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 2
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+6]
       53 MOVE                             R4 R1
       54 LOADB                            R5 0
       55 NAMECALL                         R2 R0 K17 ["_startNewScopeFetch"]
       57 CALL                             R2 3 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R2 R0 K9 ["_itemsCache"]
       61 GETTABLEKS                       R4 R1 K10 ["Uid"]
       63 NAMECALL                         R2 R2 K18 ["addScope"]
       65 CALL                             R2 2 1
       66 LOADB                            R3 1
       67 SETTABLEKS                       R3 R2 K14 ["Loading"]
       69 GETTABLEKS                       R3 R0 K12 ["OnScopeFetchProgressChanged"]
       71 GETTABLEKS                       R5 R2 K13 ["FetchProgress"]
       73 GETTABLEKS                       R6 R2 K14 ["Loading"]
       75 GETTABLEKS                       R7 R1 K10 ["Uid"]
       77 NAMECALL                         R3 R3 K15 ["Fire"]
       79 CALL                             R3 4 0
       80 MOVE                             R5 R1
       81 NAMECALL                         R3 R0 K19 ["_getNewItemsHandler"]
       83 CALL                             R3 2 1
       84 GETTABLEKS                       R4 R0 K20 ["_networking"]
       86 MOVE                             R6 R1
       87 GETTABLEKS                       R7 R2 K21 ["NextPageToken"]
       89 MOVE                             R8 R3
       90 GETTABLEKS                       R9 R0 K22 ["_fetchAssetsErrorCallback"]
       92 NAMECALL                         R4 R4 K23 ["fetchAssetsAsync"]
       94 CALL                             R4 5 0
       95 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["_selection"]
        2 GETTABLEKS                       R3 R0 K1 ["_lastItemPathClicked"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+7]
        6 NEWTABLE                         R1 0 1
        8 GETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
       10 SETLIST                          R1 R2 1 [1]
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["keys"]
       16 GETTABLEKS                       R2 R0 K0 ["_selection"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["getScopeWithUid"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R0 K2 ["_searchController"]
       11 NAMECALL                         R4 R4 K3 ["getShowSearchOptions"]
       13 CALL                             R4 1 1
       14 JUMPIF                           R3 ; [+25]
       15 GETUPVAL                         R5 1
       16 LOADK                            R7 K4 ["Could not find folder scope for asset %* from browser, adding."]
       17 MOVE                             R9 R1
       18 NAMECALL                         R7 R7 K5 ["format"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 NAMECALL                         R6 R0 K6 ["getCurrentShownScope"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R5 R6 K7 ["Uid"]
       28 GETTABLEKS                       R6 R0 K8 ["_itemsCache"]
       30 MOVE                             R8 R5
       31 MOVE                             R9 R1
       32 NAMECALL                         R6 R6 K9 ["getItem"]
       34 CALL                             R6 3 1
       35 GETUPVAL                         R7 2
       36 MOVE                             R8 R6
       37 MOVE                             R9 R5
       38 CALL                             R7 2 1
       39 MOVE                             R3 R7
       40 JUMPIFNOT                        R4 ; [+11]
       41 GETTABLEKS                       R5 R0 K2 ["_searchController"]
       43 GETUPVAL                         R8 3
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+2]
       46 LOADB                            R7 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 NAMECALL                         R5 R5 K10 ["hideSearchOptions"]
       51 CALL                             R5 2 0
       52 GETTABLEKS                       R5 R0 K11 ["_pluginController"]
       54 MOVE                             R7 R3
       55 NAMECALL                         R5 R5 K12 ["setCurrentScope"]
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["SourceZone"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["UiZone"]
        5 GETTABLEKS                       R2 R3 K2 ["Sidebar"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+20]
        9 GETTABLEKS                       R1 R0 K3 ["DraggedItems"]
       11 GETTABLEKS                       R2 R1 K4 ["Path"]
       13 JUMPIF                           R2 ; [+7]
       14 GETUPVAL                         R2 1
       15 LOADK                            R3 K5 ["Dragged folder scope is missing path information, cannot move items"]
       16 LOADK                            R4 K6 ["WARN"]
       17 CALL                             R2 2 0
       18 NEWTABLE                         R2 0 0
       20 RETURN                           R2 1
       21 NEWTABLE                         R2 0 1
       23 GETTABLEKS                       R3 R1 K4 ["Path"]
       25 SETLIST                          R2 R3 1 [1]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R1 R0 K3 ["DraggedItems"]
       30 RETURN                           R1 1

PROTO_33:
        0 LOADNIL                          R5
        1 SETTABLEKS                       R5 R0 K0 ["_lastUsedFolderName"]
        3 GETTABLEKS                       R5 R0 K1 ["_explorerController"]
        5 MOVE                             R7 R3
        6 NAMECALL                         R5 R5 K2 ["getScopeWithUid"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+5]
       10 GETTABLEKS                       R6 R5 K3 ["Name"]
       12 SETTABLEKS                       R6 R0 K0 ["_lastUsedFolderName"]
       14 JUMP                             ; [+14]
       15 JUMPIFNOT                        R4 ; [+13]
       16 GETTABLEKS                       R6 R0 K4 ["_itemsCache"]
       18 GETTABLEKS                       R8 R2 K5 ["Uid"]
       20 MOVE                             R9 R4
       21 NAMECALL                         R6 R6 K6 ["getItem"]
       23 CALL                             R6 3 1
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETTABLEKS                       R7 R6 K7 ["DisplayName"]
       27 SETTABLEKS                       R7 R0 K0 ["_lastUsedFolderName"]
       29 GETTABLEKS                       R6 R0 K1 ["_explorerController"]
       31 MOVE                             R8 R1
       32 NAMECALL                         R6 R6 K8 ["getScopeRoot"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+3]
       36 GETTABLEKS                       R7 R6 K5 ["Uid"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R7
       40 SETTABLEKS                       R7 R0 K9 ["_lastUsedFolderRootUid"]
       42 RETURN                           R0 0

PROTO_34:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["errors"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R6 K1 ["item"]
        9 GETTABLEKS                       R7 R8 K2 ["path"]
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R1 R7
       13 FORGLOOP                         R2 2 ; [-7]
       15 GETUPVAL                         R3 0
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 0
       19 CALL                             R2 1 1
       20 JUMP                             ; [+9]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K3 ["_explorerController"]
       24 GETUPVAL                         R5 3
       25 NAMECALL                         R3 R3 K4 ["getScopeRoot"]
       27 CALL                             R3 2 1
       28 GETTABLEKS                       R2 R3 K5 ["Uid"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K6 ["_itemsCache"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K7 ["hasScope"]
       36 CALL                             R3 2 1
       37 JUMPIF                           R3 ; [+40]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K3 ["_explorerController"]
       41 MOVE                             R5 R2
       42 NAMECALL                         R3 R3 K8 ["getScopeWithUid"]
       44 CALL                             R3 2 1
       45 JUMPIF                           R3 ; [+15]
       46 GETUPVAL                         R3 4
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R4 R5 K6 ["_itemsCache"]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R6 R7 K5 ["Uid"]
       53 GETUPVAL                         R7 0
       54 NAMECALL                         R4 R4 K9 ["getItem"]
       56 CALL                             R4 3 1
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R5 R6 K5 ["Uid"]
       60 CALL                             R3 2 1
       61 JUMPIF                           R3 ; [+10]
       62 GETUPVAL                         R4 6
       63 LOADK                            R6 K10 ["Couldn't get folder scope for target %*, cannot move items"]
       64 GETUPVAL                         R8 0
       65 NAMECALL                         R6 R6 K11 ["format"]
       67 CALL                             R6 2 1
       68 MOVE                             R5 R6
       69 LOADK                            R6 K12 ["WARN"]
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R4 2
       73 MOVE                             R6 R3
       74 LOADB                            R7 0
       75 NAMECALL                         R4 R4 K13 ["_startNewScopeFetch"]
       77 CALL                             R4 3 0
       78 LOADB                            R3 0
       79 GETUPVAL                         R5 2
       80 GETTABLEKS                       R4 R5 K14 ["_searchController"]
       82 NAMECALL                         R4 R4 K15 ["getShowSearchOptions"]
       84 CALL                             R4 1 1
       85 JUMPIF                           R4 ; [+20]
       86 GETUPVAL                         R4 7
       87 LOADNIL                          R5
       88 LOADNIL                          R6
       89 FORGPREP                         R4
       90 GETTABLE                         R9 R1 R8
       91 JUMPIF                           R9 ; [+12]
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R9 R10 K6 ["_itemsCache"]
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R11 R12 K5 ["Uid"]
       98 MOVE                             R12 R2
       99 MOVE                             R13 R8
      100 NAMECALL                         R9 R9 K16 ["moveItem"]
      102 CALL                             R9 4 0
      103 LOADB                            R3 1
      104 FORGLOOP                         R4 2 ; [-15]
      106 JUMPIFNOT                        R3 ; [+4]
      107 GETUPVAL                         R4 2
      108 NAMECALL                         R4 R4 K17 ["_createRenderItems"]
      110 CALL                             R4 1 0
      111 GETUPVAL                         R5 2
      112 GETTABLEKS                       R4 R5 K3 ["_explorerController"]
      114 GETUPVAL                         R7 3
      115 GETTABLEKS                       R6 R7 K5 ["Uid"]
      117 MOVE                             R7 R2
      118 GETUPVAL                         R8 7
      119 MOVE                             R9 R1
      120 NAMECALL                         R4 R4 K18 ["moveScopes"]
      122 CALL                             R4 5 0
      123 JUMPIFNOT                        R3 ; [+8]
      124 GETUPVAL                         R4 2
      125 GETUPVAL                         R6 8
      126 GETUPVAL                         R7 5
      127 MOVE                             R8 R2
      128 GETUPVAL                         R9 0
      129 NAMECALL                         R4 R4 K19 ["_updateLastUsedFolder"]
      131 CALL                             R4 5 0
      132 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETIMPORT                        R2 K2 [string.find]
        5 GETTABLEKS                       R3 R0 K3 ["message"]
        7 LOADK                            R4 K4 ["cannot be the same"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADK                            R1 K5 ["CannotBeSame"]
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K6 ["UnknownError"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K7 ["_pluginController"]
       16 DUPTABLE                         R4 K10 [{"Key", "SubKey"}]
       17 LOADK                            R5 K11 ["Toast"]
       18 SETTABLEKS                       R5 R4 K8 ["Key"]
       20 SETTABLEKS                       R1 R4 K9 ["SubKey"]
       22 NAMECALL                         R2 R2 K12 ["showToast"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 LENGTH                           R5 R4
        4 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 NAMECALL                         R5 R0 K1 ["getCurrentShownScope"]
        9 CALL                             R5 1 1
       10 OR                               R6 R3 R5
       11 GETTABLEKS                       R8 R6 K2 ["Type"]
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R10 R11 K3 ["ScopeType"]
       16 GETTABLEKS                       R9 R10 K4 ["Folder"]
       18 JUMPIFNOTEQ                      R8 R9 ; [+4]
       20 GETTABLEKS                       R7 R6 K5 ["Id"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 JUMPIFNOT                        R2 ; [+11]
       25 GETIMPORT                        R10 K9 [string.match]
       27 MOVE                             R11 R2
       28 LOADK                            R12 K10 ["(%d+)$"]
       29 CALL                             R10 2 1
       30 ORK                              R9 R10 K6 [""]
       31 FASTCALL1                        TONUMBER R9 ; [+2]
       32 GETIMPORT                        R8 K12 [tonumber]
       34 CALL                             R8 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 GETTABLEKS                       R10 R6 K2 ["Type"]
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K3 ["ScopeType"]
       42 GETTABLEKS                       R11 R12 K4 ["Folder"]
       44 JUMPIFNOTEQ                      R10 R11 ; [+8]
       46 GETTABLEKS                       R9 R0 K13 ["_explorerController"]
       48 MOVE                             R11 R6
       49 NAMECALL                         R9 R9 K14 ["getScopeRoot"]
       51 CALL                             R9 2 1
       52 JUMP                             ; [+1]
       53 MOVE                             R9 R6
       54 GETUPVAL                         R10 2
       55 MOVE                             R11 R4
       56 GETTABLEKS                       R12 R6 K15 ["Uid"]
       58 GETTABLEKS                       R13 R0 K16 ["_itemsCache"]
       60 CALL                             R10 3 1
       61 MOVE                             R11 R10
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 GETTABLEKS                       R16 R0 K17 ["_networking"]
       67 MOVE                             R18 R9
       68 MOVE                             R19 R15
       69 MOVE                             R20 R7
       70 MOVE                             R21 R8
       71 NAMECALL                         R16 R16 K18 ["moveItemsAsync"]
       73 CALL                             R16 5 1
       74 NEWCLOSURE                       R18 P0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R6
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 NAMECALL                         R16 R16 K19 ["andThen"]
       86 CALL                             R16 2 1
       87 NEWCLOSURE                       R18 P1
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R0
       90 NAMECALL                         R16 R16 K20 ["catch"]
       92 CALL                             R16 2 0
       93 FORGLOOP                         R11 2 ; [-29]
       95 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Uid"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K0 ["Uid"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+11]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["_itemsCache"]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["Uid"]
       18 NAMECALL                         R1 R1 K3 ["addItem"]
       20 CALL                             R1 3 0
       21 GETUPVAL                         R1 2
       22 MOVE                             R2 R0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K0 ["Uid"]
       26 CALL                             R1 2 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K4 ["_explorerController"]
       30 MOVE                             R4 R1
       31 NAMECALL                         R2 R2 K5 ["handleCreatedFolder"]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K6 ["_moveSelectionToNewFolder"]
       37 JUMPIFNOT                        R2 ; [+31]
       38 GETUPVAL                         R2 1
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K6 ["_moveSelectionToNewFolder"]
       42 GETUPVAL                         R2 1
       43 DUPTABLE                         R4 K9 [{"SourceZone", "DraggedItems"}]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K10 ["UiZone"]
       47 GETTABLEKS                       R5 R6 K11 ["Browser"]
       49 SETTABLEKS                       R5 R4 K7 ["SourceZone"]
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R5 R6 K12 ["keys"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K13 ["_selection"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K8 ["DraggedItems"]
       60 GETTABLEKS                       R5 R0 K14 ["Path"]
       62 GETUPVAL                         R6 1
       63 NAMECALL                         R6 R6 K1 ["getCurrentShownScope"]
       65 CALL                             R6 1 -1
       66 NAMECALL                         R2 R2 K15 ["requestMoveSelectionToItem"]
       68 CALL                             R2 -1 0
       69 RETURN                           R0 0

PROTO_38:
        0 LOADK                            R1 K0 ["CreateFolderFailed"]
        1 GETIMPORT                        R2 K3 [string.find]
        3 GETTABLEKS                       R4 R0 K5 ["message"]
        5 ORK                              R3 R4 K4 [""]
        6 LOADK                            R4 K6 ["exceed the maximum folder depth"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K7 ["ErrorTypeLookup"]
       12 GETTABLEKS                       R2 R3 K8 ["CreateFolder"]
       14 GETTABLEN                        R1 R2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K9 ["_pluginController"]
       18 DUPTABLE                         R4 K12 [{"Key", "SubKey"}]
       19 LOADK                            R5 K13 ["Toast"]
       20 SETTABLEKS                       R5 R4 K10 ["Key"]
       22 SETTABLEKS                       R1 R4 K11 ["SubKey"]
       24 NAMECALL                         R2 R2 K14 ["showToast"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 1
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K15 ["_moveSelectionToNewFolder"]
       31 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Uid"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["getCurrentShownScope"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K0 ["Uid"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+15]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K2 ["_itemsCache"]
       14 LOADK                            R2 K3 [""]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["Uid"]
       18 NAMECALL                         R0 R0 K4 ["removeItem"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 1
       22 NAMECALL                         R0 R0 K5 ["_createRenderItems"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R3 R2 K0 ["Parent"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+6]
        4 GETUPVAL                         R3 0
        5 LOADK                            R4 K1 ["Staged folder scope is missing parent information, cannot finalize folder creation"]
        6 LOADK                            R5 K2 ["WARN"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K3 ["_explorerController"]
       11 GETTABLEKS                       R5 R2 K0 ["Parent"]
       13 NAMECALL                         R3 R3 K4 ["getScopeWithUid"]
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+6]
       18 GETUPVAL                         R4 0
       19 LOADK                            R5 K5 ["Parent scope for staged folder does not exist locally, cannot finalize folder creation"]
       20 LOADK                            R6 K2 ["WARN"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R4 R0 K3 ["_explorerController"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K6 ["getScopeRoot"]
       28 CALL                             R4 2 1
       29 JUMPIFNOTEQKNIL                  R4 ; [+6]
       31 GETUPVAL                         R5 0
       32 LOADK                            R6 K7 ["Root scope for staged folder does not exist locally, cannot finalize folder creation"]
       33 LOADK                            R7 K2 ["WARN"]
       34 CALL                             R5 2 0
       35 RETURN                           R0 0
       36 LOADNIL                          R7
       37 NAMECALL                         R5 R0 K8 ["setStagedEditItemPath"]
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R5 R0 K3 ["_explorerController"]
       42 NAMECALL                         R5 R5 K9 ["removeStagedFolder"]
       44 CALL                             R5 1 0
       45 GETTABLEKS                       R5 R0 K10 ["_networking"]
       47 DUPTABLE                         R7 K14 [{"ParentScope", "RootScope", "FolderName"}]
       48 SETTABLEKS                       R3 R7 K11 ["ParentScope"]
       50 SETTABLEKS                       R4 R7 K12 ["RootScope"]
       52 SETTABLEKS                       R1 R7 K13 ["FolderName"]
       54 NAMECALL                         R5 R5 K15 ["createFolderAsync"]
       56 CALL                             R5 2 1
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 NAMECALL                         R5 R5 K16 ["andThen"]
       65 CALL                             R5 2 1
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R5 R5 K17 ["catch"]
       71 CALL                             R5 2 1
       72 NEWCLOSURE                       R7 P2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R5 R5 K18 ["finally"]
       77 CALL                             R5 2 0
       78 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Parent"]
        3 GETTABLEKS                       R4 R0 K1 ["folderItem"]
        5 GETTABLEKS                       R3 R4 K2 ["folder"]
        7 GETTABLEKS                       R2 R3 K3 ["updateTime"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K4 ["_itemsCache"]
       12 MOVE                             R5 R1
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R8 R9 K5 ["AssetInfoField"]
       17 GETTABLEKS                       R7 R8 K6 ["DisplayName"]
       19 GETUPVAL                         R8 4
       20 NAMECALL                         R3 R3 K7 ["updateItemField"]
       22 CALL                             R3 5 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K4 ["_itemsCache"]
       26 MOVE                             R5 R1
       27 GETUPVAL                         R6 2
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R8 R9 K5 ["AssetInfoField"]
       31 GETTABLEKS                       R7 R8 K8 ["Modified"]
       33 MOVE                             R8 R2
       34 NAMECALL                         R3 R3 K7 ["updateItemField"]
       36 CALL                             R3 5 0
       37 GETUPVAL                         R4 1
       38 NAMECALL                         R4 R4 K9 ["getCurrentShownScope"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R3 R4 K10 ["Uid"]
       43 JUMPIFNOTEQ                      R1 R3 ; [+5]
       45 GETUPVAL                         R3 1
       46 NAMECALL                         R3 R3 K11 ["_createRenderItems"]
       48 CALL                             R3 1 0
       49 GETUPVAL                         R3 0
       50 GETUPVAL                         R4 4
       51 SETTABLEKS                       R4 R3 K12 ["Name"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K13 ["_explorerController"]
       56 GETUPVAL                         R5 0
       57 NAMECALL                         R3 R3 K14 ["handleRenamedFolder"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        3 DUPTABLE                         R3 K3 [{"Key", "SubKey"}]
        4 LOADK                            R4 K4 ["Toast"]
        5 SETTABLEKS                       R4 R3 K1 ["Key"]
        7 LOADK                            R4 K5 ["RenameFolderFailed"]
        8 SETTABLEKS                       R4 R3 K2 ["SubKey"]
       10 NAMECALL                         R1 R1 K6 ["showToast"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K7 ["_moveSelectionToNewFolder"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K8 ["_explorerController"]
       20 NAMECALL                         R1 R1 K9 ["removeStagedFolder"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R5 R2 K0 ["Path"]
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["Can only call rename for an existing folder"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R2 K0 ["Path"]
       14 NAMECALL                         R4 R0 K4 ["removeStagedItem"]
       16 CALL                             R4 1 0
       17 GETTABLEKS                       R4 R0 K5 ["_explorerController"]
       19 NAMECALL                         R4 R4 K6 ["removeStagedFolder"]
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R4 R0 K7 ["_networking"]
       24 MOVE                             R6 R3
       25 MOVE                             R7 R1
       26 NAMECALL                         R4 R4 K8 ["updateFolderMetadataAsync"]
       28 CALL                             R4 3 1
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 NAMECALL                         R4 R4 K9 ["andThen"]
       37 CALL                             R4 2 1
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R4 R4 K10 ["catch"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R3 R2 K0 ["Path"]
        2 JUMPIFNOTEQKS                    R3 K1 [""] ; [+7]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R4 R0 K2 ["_requestCreateFolder"]
        8 CALL                             R4 3 0
        9 RETURN                           R0 0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R0 K3 ["_requestRenameFolder"]
       14 CALL                             R4 3 0
       15 RETURN                           R0 0

PROTO_45:
        0 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R6 R3 K2 ["Uid"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R4 K3 ["getItem"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R7 R3 K2 ["Uid"]
       15 CALL                             R5 2 1
       16 MOVE                             R8 R1
       17 MOVE                             R9 R5
       18 NAMECALL                         R6 R0 K4 ["uploadStagedFolder"]
       20 CALL                             R6 3 0
       21 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["getCurrentShownScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["_itemsCache"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R5 R1 K2 ["Uid"]
       12 NAMECALL                         R2 R2 K3 ["removeItem"]
       14 CALL                             R2 3 0
       15 GETTABLEKS                       R2 R1 K2 ["Uid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K0 ["getCurrentShownScope"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K2 ["Uid"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+5]
       25 GETUPVAL                         R2 1
       26 NAMECALL                         R2 R2 K4 ["_createRenderItems"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K1 ["_itemsCache"]
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 2
       34 CALL                             R4 1 -1
       35 NAMECALL                         R2 R2 K5 ["removeScope"]
       37 CALL                             R2 -1 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K6 ["_explorerController"]
       41 GETUPVAL                         R4 2
       42 NAMECALL                         R2 R2 K7 ["handleDeletedFolder"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_47:
        0 GETIMPORT                        R2 K2 [string.find]
        2 GETTABLEKS                       R4 R0 K4 ["message"]
        4 ORK                              R3 R4 K3 [""]
        5 LOADK                            R4 K5 ["must be empty"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADN                            R1 1
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R1 R0 K6 ["code"]
       12 LOADK                            R2 K7 ["DeleteFolderFailed"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K8 ["ErrorTypeLookup"]
       17 GETTABLEKS                       R4 R5 K9 ["DeleteFolder"]
       19 GETTABLE                         R3 R4 R1
       20 OR                               R2 R3 R2
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K10 ["_pluginController"]
       24 DUPTABLE                         R5 K13 [{"Key", "SubKey"}]
       25 LOADK                            R6 K14 ["Toast"]
       26 SETTABLEKS                       R6 R5 K11 ["Key"]
       28 SETTABLEKS                       R2 R5 K12 ["SubKey"]
       30 NAMECALL                         R3 R3 K15 ["showToast"]
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["deleteFolderAsync"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R3 K2 ["andThen"]
       13 CALL                             R3 2 1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R3 R3 K3 ["catch"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["getSelection"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R0 K1 ["_pluginController"]
        6 NAMECALL                         R4 R4 K2 ["getCurrentScope"]
        8 CALL                             R4 1 1
        9 NAMECALL                         R5 R0 K3 ["getItemsCache"]
       11 CALL                             R5 1 -1
       12 CALL                             R2 -1 1
       13 DUPTABLE                         R3 K9 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       14 GETTABLEKS                       R4 R2 K10 ["Ids"]
       16 SETTABLEKS                       R4 R3 K4 ["AssetIds"]
       18 GETTABLEKS                       R4 R2 K11 ["Types"]
       20 SETTABLEKS                       R4 R3 K5 ["AssetTypes"]
       22 GETTABLEKS                       R4 R2 K12 ["Names"]
       24 SETTABLEKS                       R4 R3 K6 ["AssetNames"]
       26 GETTABLEKS                       R4 R2 K13 ["IsPackage"]
       28 SETTABLEKS                       R4 R3 K7 ["IsPackages"]
       30 JUMPIFNOT                        R1 ; [+3]
       31 GETTABLEKS                       R4 R1 K8 ["UseAssetPosition"]
       33 JUMPIF                           R4 ; [+1]
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R3 K8 ["UseAssetPosition"]
       37 RETURN                           R3 1

PROTO_50:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R2 1 1
        6 JUMP                             ; [+5]
        7 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        9 NAMECALL                         R2 R2 K2 ["getCurrentScope"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R4 R0 K3 ["_renderItems"]
       14 GETTABLE                         R3 R4 R1
       15 GETTABLEKS                       R4 R0 K4 ["_itemsCache"]
       17 GETTABLEKS                       R6 R2 K5 ["Uid"]
       19 MOVE                             R7 R3
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K6 ["AssetInfoField"]
       23 GETTABLEKS                       R8 R9 K7 ["AssetType"]
       25 NAMECALL                         R4 R4 K8 ["getItemField"]
       27 CALL                             R4 4 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K9 ["count"]
       31 GETTABLEKS                       R6 R0 K10 ["_selection"]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKN                    R5 K11 [1] ; [+30]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R7 R8 K7 ["AssetType"]
       39 GETTABLEKS                       R6 R7 K12 ["Place"]
       41 JUMPIFNOTEQ                      R4 R6 ; [+23]
       43 GETTABLEKS                       R6 R0 K4 ["_itemsCache"]
       45 GETTABLEKS                       R8 R2 K5 ["Uid"]
       47 MOVE                             R9 R3
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R11 R12 K6 ["AssetInfoField"]
       51 GETTABLEKS                       R10 R11 K13 ["AssetId"]
       53 NAMECALL                         R6 R6 K8 ["getItemField"]
       55 CALL                             R6 4 1
       56 NAMECALL                         R7 R0 K14 ["getPlugin"]
       58 CALL                             R7 1 1
       59 LOADK                            R9 K15 ["OnOpenPlace"]
       60 MOVE                             R10 R6
       61 NAMECALL                         R7 R7 K16 ["Invoke"]
       63 CALL                             R7 3 0
       64 RETURN                           R0 0
       65 JUMPIFNOTEQKN                    R5 K11 [1] ; [+13]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R7 R8 K7 ["AssetType"]
       70 GETTABLEKS                       R6 R7 K17 ["Folder"]
       72 JUMPIFNOTEQ                      R4 R6 ; [+6]
       74 MOVE                             R8 R3
       75 NAMECALL                         R6 R0 K18 ["_goToFolder"]
       77 CALL                             R6 2 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R6 R0 K19 ["_analyticsState"]
       81 SETTABLEKS                       R1 R6 K20 ["Position"]
       83 GETTABLEKS                       R6 R0 K19 ["_analyticsState"]
       85 LOADK                            R7 K21 ["double_click"]
       86 SETTABLEKS                       R7 R6 K22 ["Action"]
       88 GETUPVAL                         R6 3
       89 JUMPIFNOT                        R6 ; [+20]
       90 GETUPVAL                         R6 4
       91 CALL                             R6 0 1
       92 JUMPIFNOT                        R6 ; [+17]
       93 NAMECALL                         R6 R0 K23 ["_createInsertJobData"]
       95 CALL                             R6 1 1
       96 GETTABLEKS                       R7 R0 K1 ["_pluginController"]
       98 NAMECALL                         R7 R7 K14 ["getPlugin"]
      100 CALL                             R7 1 1
      101 LOADK                            R9 K24 ["AssetInsertController"]
      102 NAMECALL                         R7 R7 K25 ["GetPluginComponent"]
      104 CALL                             R7 2 1
      105 MOVE                             R10 R6
      106 NAMECALL                         R8 R7 K26 ["DispatchInsertJobAsync"]
      108 CALL                             R8 2 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R6 5
      111 CALL                             R6 0 1
      112 JUMPIFNOT                        R6 ; [+13]
      113 DUPTABLE                         R6 K29 [{"Key", "SubKey"}]
      114 LOADK                            R7 K30 ["Toast"]
      115 SETTABLEKS                       R7 R6 K27 ["Key"]
      117 LOADK                            R7 K31 ["InsertingAssets"]
      118 SETTABLEKS                       R7 R6 K28 ["SubKey"]
      120 GETTABLEKS                       R7 R0 K1 ["_pluginController"]
      122 MOVE                             R9 R6
      123 NAMECALL                         R7 R7 K32 ["showToast"]
      125 CALL                             R7 2 0
      126 GETUPVAL                         R6 6
      127 MOVE                             R7 R0
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R9 R0 K33 ["_networking"]
      131 CALL                             R6 3 0
      132 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_52:
        0 GETTABLEKS                       R6 R0 K0 ["_renderItems"]
        2 GETTABLE                         R5 R6 R3
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R4 ; [+5]
        6 GETTABLEKS                       R6 R0 K1 ["_lastItemPathClicked"]
        8 JUMPIFEQ                         R6 R5 ; [+2]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R2 ; [+11]
       12 NEWTABLE                         R8 0 1
       14 MOVE                             R9 R5
       15 SETLIST                          R8 R9 1 [1]
       17 NAMECALL                         R6 R0 K2 ["modifySelection"]
       19 CALL                             R6 2 0
       20 SETTABLEKS                       R3 R0 K3 ["_selectStartIndex"]
       22 JUMP                             ; [+28]
       23 JUMPIFNOT                        R1 ; [+15]
       24 SETTABLEKS                       R3 R0 K4 ["_selectEndIndex"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R7 R0 K0 ["_renderItems"]
       29 GETTABLEKS                       R8 R0 K3 ["_selectStartIndex"]
       31 GETTABLEKS                       R9 R0 K4 ["_selectEndIndex"]
       33 CALL                             R6 3 1
       34 MOVE                             R9 R6
       35 NAMECALL                         R7 R0 K5 ["setSelection"]
       37 CALL                             R7 2 0
       38 JUMP                             ; [+12]
       39 NEWTABLE                         R8 0 1
       41 MOVE                             R9 R5
       42 SETLIST                          R8 R9 1 [1]
       44 NAMECALL                         R6 R0 K5 ["setSelection"]
       46 CALL                             R6 2 0
       47 MOVE                             R8 R3
       48 NAMECALL                         R6 R0 K6 ["syncSelectionIndices"]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R0 K7 ["_layoutController"]
       53 MOVE                             R8 R3
       54 NAMECALL                         R6 R6 K8 ["scrollToItem"]
       56 CALL                             R6 2 0
       57 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_57:
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

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_60:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R5 R2 K2 ["Uid"]
        7 NAMECALL                         R3 R3 K3 ["getScope"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R0 K1 ["_itemsCache"]
       15 GETTABLEKS                       R6 R2 K2 ["Uid"]
       17 NAMECALL                         R4 R4 K3 ["getScope"]
       19 CALL                             R4 2 1
       20 GETTABLEKS                       R3 R4 K4 ["NextPageToken"]
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R2 K5 ["Type"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K6 ["ScopeType"]
       30 GETTABLEKS                       R5 R6 K7 ["RecentUploads"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R4 R0 K8 ["_searchController"]
       37 NAMECALL                         R4 R4 K9 ["getShowSearchOptions"]
       39 CALL                             R4 1 1
       40 JUMPIFNOT                        R4 ; [+50]
       41 GETTABLEKS                       R4 R0 K8 ["_searchController"]
       43 NAMECALL                         R4 R4 K10 ["getSearchOptions"]
       45 CALL                             R4 1 1
       46 DUPTABLE                         R5 K14 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       47 GETTABLEKS                       R6 R0 K8 ["_searchController"]
       49 NAMECALL                         R6 R6 K15 ["getSearchTerm"]
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R6 R5 K11 ["SearchTerm"]
       54 GETTABLEKS                       R6 R4 K12 ["AssetType"]
       56 SETTABLEKS                       R6 R5 K12 ["AssetType"]
       58 GETTABLEKS                       R6 R4 K13 ["ScopeInfo"]
       60 SETTABLEKS                       R6 R5 K13 ["ScopeInfo"]
       62 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
       64 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       66 GETTABLEKS                       R8 R9 K2 ["Uid"]
       68 NAMECALL                         R6 R6 K3 ["getScope"]
       70 CALL                             R6 2 1
       71 LOADB                            R7 1
       72 SETTABLEKS                       R7 R6 K16 ["Loading"]
       74 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       76 NAMECALL                         R7 R0 K17 ["_getNewItemsHandler"]
       78 CALL                             R7 2 1
       79 GETTABLEKS                       R8 R0 K18 ["_networking"]
       81 MOVE                             R10 R5
       82 GETTABLEKS                       R11 R6 K4 ["NextPageToken"]
       84 MOVE                             R12 R7
       85 GETTABLEKS                       R13 R0 K19 ["_fetchAssetsErrorCallback"]
       87 NAMECALL                         R8 R8 K20 ["searchAssetsAsync"]
       89 CALL                             R8 5 0
       90 RETURN                           R0 0
       91 GETTABLEKS                       R4 R0 K21 ["_pluginController"]
       93 NAMECALL                         R4 R4 K22 ["getCurrentScope"]
       95 CALL                             R4 1 1
       96 MOVE                             R7 R4
       97 NAMECALL                         R5 R0 K17 ["_getNewItemsHandler"]
       99 CALL                             R5 2 1
      100 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      102 GETTABLEKS                       R8 R4 K2 ["Uid"]
      104 NAMECALL                         R6 R6 K3 ["getScope"]
      106 CALL                             R6 2 1
      107 JUMPIF                           R6 ; [+7]
      108 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      110 GETTABLEKS                       R8 R4 K2 ["Uid"]
      112 NAMECALL                         R6 R6 K23 ["addScope"]
      114 CALL                             R6 2 1
      115 LOADB                            R7 1
      116 SETTABLEKS                       R7 R6 K16 ["Loading"]
      118 GETTABLEKS                       R7 R0 K18 ["_networking"]
      120 MOVE                             R9 R4
      121 GETTABLEKS                       R10 R6 K4 ["NextPageToken"]
      123 MOVE                             R11 R5
      124 GETTABLEKS                       R12 R0 K19 ["_fetchAssetsErrorCallback"]
      126 NAMECALL                         R7 R7 K24 ["fetchAssetsAsync"]
      128 CALL                             R7 5 0
      129 RETURN                           R0 0

PROTO_61:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R4 K3 ["ProjectPlaces"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R1 K4 ["Uid"]
       17 NAMECALL                         R4 R0 K5 ["getSelection"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 GETTABLEKS                       R9 R0 K6 ["_itemsCache"]
       23 MOVE                             R11 R3
       24 MOVE                             R12 R7
       25 GETUPVAL                         R15 0
       26 GETTABLEKS                       R14 R15 K7 ["AssetInfoField"]
       28 GETTABLEKS                       R13 R14 K8 ["AssetType"]
       30 NAMECALL                         R9 R9 K9 ["getItemField"]
       32 CALL                             R9 4 1
       33 GETUPVAL                         R10 1
       34 MOVE                             R11 R9
       35 CALL                             R10 1 1
       36 JUMPIFNOT                        R10 ; [+2]
       37 LOADB                            R2 1
       38 RETURN                           R2 1
       39 FORGLOOP                         R4 2 ; [-19]
       41 RETURN                           R2 1

PROTO_62:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        4 GETTABLEKS                       R6 R0 K1 ["_pluginController"]
        6 NAMECALL                         R6 R6 K2 ["getCurrentScope"]
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R5 R6 K3 ["Uid"]
       11 MOVE                             R6 R1
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R8 R9 K4 ["AssetInfoField"]
       15 GETTABLEKS                       R7 R8 K5 ["AssetType"]
       17 NAMECALL                         R3 R3 K6 ["getData"]
       19 CALL                             R3 4 1
       20 MOVE                             R4 R3
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 LOADB                            R9 1
       25 SETTABLE                         R9 R2 R8
       26 FORGLOOP                         R4 2 ; [-3]
       28 RETURN                           R2 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_64:
        0 NAMECALL                         R1 R0 K0 ["_createRenderItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["OnSortFilterChanged"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K2 ["_sorts"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R5 R0 K3 ["_filters"]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R1 R1 K4 ["Fire"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_75:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_78:
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

PROTO_79:
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

PROTO_80:
        0 JUMPIFNOT                        R1 ; [+1]
        1 JUMPIF                           R2 ; [+10]
        2 NEWTABLE                         R6 0 0
        4 NAMECALL                         R4 R0 K0 ["setSelection"]
        6 CALL                             R4 2 0
        7 LOADN                            R6 1
        8 NAMECALL                         R4 R0 K1 ["syncSelectionIndices"]
       10 CALL                             R4 2 0
       11 JUMP                             ; [+16]
       12 GETTABLEKS                       R5 R0 K2 ["_selection"]
       14 GETTABLE                         R4 R5 R1
       15 JUMPIF                           R4 ; [+12]
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R1
       19 SETLIST                          R6 R7 1 [1]
       21 NAMECALL                         R4 R0 K0 ["setSelection"]
       23 CALL                             R4 2 0
       24 MOVE                             R6 R2
       25 NAMECALL                         R4 R0 K1 ["syncSelectionIndices"]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K3 ["_analyticsState"]
       30 SETTABLEKS                       R2 R4 K4 ["Position"]
       32 MOVE                             R4 R3
       33 CALL                             R4 0 0
       34 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_82:
        0 GETTABLEKS                       R2 R0 K0 ["_stagedEditItemPath"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        7 NAMECALL                         R2 R0 K1 ["_createRenderItems"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K2 ["OnStagedEditItemPathChanged"]
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["Fire"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        5 JUMPIFNOTEQKS                    R1 K1 [""] ; [+12]
        7 GETTABLEKS                       R1 R0 K2 ["_itemsCache"]
        9 LOADK                            R3 K1 [""]
       10 NAMECALL                         R5 R0 K3 ["getCurrentShownScope"]
       12 CALL                             R5 1 1
       13 GETTABLEKS                       R4 R5 K4 ["Uid"]
       15 NAMECALL                         R1 R1 K5 ["removeItem"]
       17 CALL                             R1 3 0
       18 LOADNIL                          R3
       19 NAMECALL                         R1 R0 K6 ["setStagedEditItemPath"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_84:
        0 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R3 R4 K1 ["Type"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
        8 GETTABLEKS                       R4 R5 K3 ["ProjectPlaces"]
       10 JUMPIFEQ                         R3 R4 ; [+6]
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K4 ["Current scope is not ProjectPlaces, cannot rename place"]
       14 LOADK                            R5 K5 ["WARN"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K6 ["_itemsCache"]
       19 NAMECALL                         R6 R0 K0 ["getCurrentShownScope"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R5 R6 K7 ["Uid"]
       24 MOVE                             R6 R2
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K8 ["AssetInfoField"]
       28 GETTABLEKS                       R7 R8 K9 ["AssetId"]
       30 NAMECALL                         R3 R3 K10 ["getItemField"]
       32 CALL                             R3 4 1
       33 JUMPIF                           R3 ; [+24]
       34 GETUPVAL                         R4 1
       35 LOADK                            R6 K11 ["Couldn't find asset ID for place path %* in cache, falling back to using path"]
       36 MOVE                             R8 R2
       37 NAMECALL                         R6 R6 K12 ["format"]
       39 CALL                             R6 2 1
       40 MOVE                             R5 R6
       41 CALL                             R4 1 0
       42 GETIMPORT                        R5 K15 [string.match]
       44 MOVE                             R6 R2
       45 LOADK                            R7 K16 ["-(%d+)$"]
       46 CALL                             R5 2 -1
       47 FASTCALL                         TONUMBER ; [+2]
       48 GETIMPORT                        R4 K18 [tonumber]
       50 CALL                             R4 -1 1
       51 MOVE                             R3 R4
       52 JUMPIF                           R3 ; [+5]
       53 GETUPVAL                         R4 1
       54 LOADK                            R5 K19 ["Couldn't extract asset ID for this place, cannot rename place"]
       55 LOADK                            R6 K5 ["WARN"]
       56 CALL                             R4 2 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R4 R0 K20 ["_pluginController"]
       60 NAMECALL                         R4 R4 K21 ["getPlugin"]
       62 CALL                             R4 1 1
       63 LOADK                            R6 K22 ["OnRenamePlace"]
       64 DUPTABLE                         R7 K25 [{"Id", "Name"}]
       65 SETTABLEKS                       R3 R7 K23 ["Id"]
       67 SETTABLEKS                       R1 R7 K24 ["Name"]
       69 NAMECALL                         R4 R4 K26 ["Invoke"]
       71 CALL                             R4 3 0
       72 LOADNIL                          R6
       73 NAMECALL                         R4 R0 K27 ["setStagedEditItemPath"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0

PROTO_85:
        0 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R3 1 1
        3 DUPTABLE                         R4 K11 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Archived", "Source"}]
        4 LOADK                            R5 K12 [""]
        5 SETTABLEKS                       R5 R4 K1 ["Path"]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["AssetId"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       13 GETTABLEKS                       R5 R6 K13 ["Folder"]
       15 SETTABLEKS                       R5 R4 K3 ["AssetType"]
       17 SETTABLEKS                       R1 R4 K4 ["DisplayName"]
       19 GETIMPORT                        R5 K16 [DateTime.now]
       21 CALL                             R5 0 1
       22 NAMECALL                         R5 R5 K17 ["ToIsoDate"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K5 ["Created"]
       27 GETIMPORT                        R5 K16 [DateTime.now]
       29 CALL                             R5 0 1
       30 NAMECALL                         R5 R5 K17 ["ToIsoDate"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K6 ["Modified"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K7 ["ModerationStatus"]
       38 GETTABLEKS                       R5 R6 K18 ["Approved"]
       40 SETTABLEKS                       R5 R4 K7 ["ModerationStatus"]
       42 GETTABLEKS                       R5 R0 K19 ["_explorerController"]
       44 MOVE                             R7 R3
       45 NAMECALL                         R5 R5 K20 ["getScopeRoot"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K8 ["Creator"]
       50 LOADB                            R5 0
       51 SETTABLEKS                       R5 R4 K9 ["Archived"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R6 R7 K21 ["AssetSource"]
       56 GETTABLEKS                       R5 R6 K22 ["Uploaded"]
       58 SETTABLEKS                       R5 R4 K10 ["Source"]
       60 GETTABLEKS                       R5 R0 K23 ["_itemsCache"]
       62 MOVE                             R7 R4
       63 GETTABLEKS                       R8 R3 K24 ["Uid"]
       65 NAMECALL                         R5 R5 K25 ["addItem"]
       67 CALL                             R5 3 0
       68 LOADK                            R7 K12 [""]
       69 NAMECALL                         R5 R0 K26 ["setStagedEditItemPath"]
       71 CALL                             R5 2 0
       72 ORK                              R5 R2 K27 [False]
       73 SETTABLEKS                       R5 R0 K28 ["_moveSelectionToNewFolder"]
       75 GETTABLEKS                       R5 R0 K29 ["_renderItems"]
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 JUMPIFNOTEQKS                    R9 K12 [""] ; [+8]
       82 GETTABLEKS                       R10 R0 K30 ["_layoutController"]
       84 MOVE                             R12 R8
       85 NAMECALL                         R10 R10 K31 ["scrollToItem"]
       87 CALL                             R10 2 0
       88 RETURN                           R0 0
       89 FORGLOOP                         R5 2 ; [-10]
       91 RETURN                           R0 0

PROTO_86:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_87:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K1 ["Uid"]
        9 GETTABLEKS                       R4 R0 K2 ["_selection"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R0 K3 ["_itemsCache"]
       16 MOVE                             R11 R3
       17 MOVE                             R12 R7
       18 NAMECALL                         R9 R9 K4 ["getItem"]
       20 CALL                             R9 3 1
       21 GETTABLEKS                       R12 R9 K5 ["AssetId"]
       23 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       25 MOVE                             R11 R2
       26 GETIMPORT                        R10 K8 [table.insert]
       28 CALL                             R10 2 0
       29 GETTABLEKS                       R12 R9 K9 ["AssetType"]
       31 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       33 MOVE                             R11 R1
       34 GETIMPORT                        R10 K8 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R4 2 ; [-24]
       39 GETTABLEKS                       R6 R0 K10 ["_sorts"]
       41 LENGTH                           R5 R6
       42 LOADN                            R6 0
       43 JUMPIFNOTLT                      R6 R5 ; [+7]
       45 GETTABLEKS                       R6 R0 K10 ["_sorts"]
       47 GETTABLEN                        R5 R6 1
       48 GETTABLEKS                       R4 R5 K11 ["Key"]
       50 JUMP                             ; [+9]
       51 GETTABLEKS                       R6 R0 K12 ["_analyticsState"]
       53 GETTABLEKS                       R5 R6 K13 ["Source"]
       55 JUMPIFNOTEQKS                    R5 K14 ["search"] ; [+3]
       57 LOADK                            R4 K15 ["SearchRank"]
       58 JUMP                             ; [+1]
       59 LOADK                            R4 K16 [""]
       60 DUPTABLE                         R5 K28 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode"}]
       61 SETTABLEKS                       R2 R5 K17 ["assetIds"]
       63 SETTABLEKS                       R1 R5 K18 ["assetTypes"]
       65 GETTABLEKS                       R7 R0 K12 ["_analyticsState"]
       67 GETTABLEKS                       R6 R7 K29 ["Action"]
       69 SETTABLEKS                       R6 R5 K19 ["insertType"]
       71 GETTABLEKS                       R7 R0 K12 ["_analyticsState"]
       73 GETTABLEKS                       R6 R7 K13 ["Source"]
       75 SETTABLEKS                       R6 R5 K20 ["insertSource"]
       77 GETTABLEKS                       R6 R0 K30 ["_searchController"]
       79 NAMECALL                         R6 R6 K31 ["getSearchTerm"]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K21 ["searchKeywords"]
       84 GETTABLEKS                       R6 R0 K30 ["_searchController"]
       86 NAMECALL                         R6 R6 K32 ["getSearchId"]
       88 CALL                             R6 1 1
       89 SETTABLEKS                       R6 R5 K22 ["searchId"]
       91 GETUPVAL                         R7 0
       92 GETTABLEKS                       R6 R7 K33 ["keys"]
       94 GETTABLEKS                       R7 R0 K34 ["_filters"]
       96 CALL                             R6 1 1
       97 SETTABLEKS                       R6 R5 K23 ["filterTypes"]
       99 SETTABLEKS                       R4 R5 K24 ["sortType"]
      101 GETTABLEKS                       R7 R0 K12 ["_analyticsState"]
      103 GETTABLEKS                       R6 R7 K35 ["Position"]
      105 SETTABLEKS                       R6 R5 K25 ["position"]
      107 GETTABLEKS                       R6 R0 K36 ["_layoutController"]
      109 NAMECALL                         R6 R6 K37 ["getIsCompact"]
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K26 ["isCompact"]
      114 GETTABLEKS                       R8 R0 K36 ["_layoutController"]
      116 NAMECALL                         R8 R8 K38 ["getBrowserLayout"]
      118 CALL                             R8 1 1
      119 GETTABLEKS                       R7 R8 K39 ["ViewType"]
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R9 R10 K39 ["ViewType"]
      124 GETTABLEKS                       R8 R9 K40 ["List"]
      126 JUMPIFNOTEQ                      R7 R8 ; [+3]
      128 LOADK                            R6 K41 ["list"]
      129 JUMP                             ; [+1]
      130 LOADK                            R6 K42 ["grid"]
      131 SETTABLEKS                       R6 R5 K27 ["viewMode"]
      133 GETUPVAL                         R7 2
      134 GETTABLEKS                       R6 R7 K43 ["sendInsertEvent"]
      136 MOVE                             R7 R5
      137 CALL                             R6 1 0
      138 RETURN                           R0 0

PROTO_88:
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

PROTO_89:
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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R5 K10 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["ContextItem"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Packages"]
       45 GETTABLEKS                       R8 R9 K15 ["Dash"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["copy"]
       50 GETTABLEKS                       R9 R7 K17 ["join"]
       52 GETTABLEKS                       R10 R7 K18 ["keys"]
       54 GETTABLEKS                       R11 R4 K19 ["Util"]
       56 GETTABLEKS                       R12 R11 K20 ["Signal"]
       58 GETIMPORT                        R13 K5 [require]
       60 GETTABLEKS                       R16 R0 K6 ["Src"]
       62 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       64 GETTABLEKS                       R14 R15 K22 ["ItemsCache"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R17 R0 K6 ["Src"]
       71 GETTABLEKS                       R16 R17 K19 ["Util"]
       73 GETTABLEKS                       R15 R16 K23 ["cleanConnections"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R18 R0 K6 ["Src"]
       80 GETTABLEKS                       R17 R18 K19 ["Util"]
       82 GETTABLEKS                       R16 R17 K24 ["constructItemPath"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R19 R0 K6 ["Src"]
       89 GETTABLEKS                       R18 R19 K19 ["Util"]
       91 GETTABLEKS                       R17 R18 K25 ["convertFolderItemToScope"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R20 R0 K6 ["Src"]
       98 GETTABLEKS                       R19 R20 K19 ["Util"]
      100 GETTABLEKS                       R18 R19 K26 ["convertToEngineAssetTypeEnum"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R21 R0 K6 ["Src"]
      107 GETTABLEKS                       R20 R21 K19 ["Util"]
      109 GETTABLEKS                       R19 R20 K27 ["createFolderUid"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R22 R0 K6 ["Src"]
      116 GETTABLEKS                       R21 R22 K19 ["Util"]
      118 GETTABLEKS                       R20 R21 K28 ["DefaultSort"]
      120 CALL                             R19 1 1
      121 GETIMPORT                        R20 K5 [require]
      123 GETTABLEKS                       R23 R0 K6 ["Src"]
      125 GETTABLEKS                       R22 R23 K19 ["Util"]
      127 GETTABLEKS                       R21 R22 K29 ["getAssetInfosSlice"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R24 R0 K6 ["Src"]
      134 GETTABLEKS                       R23 R24 K19 ["Util"]
      136 GETTABLEKS                       R22 R23 K30 ["getItemMoveBatches"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K5 [require]
      141 GETTABLEKS                       R25 R0 K6 ["Src"]
      143 GETTABLEKS                       R24 R25 K19 ["Util"]
      145 GETTABLEKS                       R23 R24 K31 ["insertItems"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K5 [require]
      150 GETTABLEKS                       R26 R0 K6 ["Src"]
      152 GETTABLEKS                       R25 R26 K19 ["Util"]
      154 GETTABLEKS                       R24 R25 K32 ["isInsertable"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R27 R0 K6 ["Src"]
      161 GETTABLEKS                       R26 R27 K19 ["Util"]
      163 GETTABLEKS                       R25 R26 K33 ["logIfDebug"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K6 ["Src"]
      170 GETTABLEKS                       R27 R28 K34 ["Flags"]
      172 GETTABLEKS                       R26 R27 K35 ["getEFAssetInsertComponentEnabled"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K6 ["Src"]
      179 GETTABLEKS                       R28 R29 K34 ["Flags"]
      181 GETTABLEKS                       R27 R28 K36 ["getFFlagAmrCustomToastNotifications"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R30 R0 K6 ["Src"]
      188 GETTABLEKS                       R29 R30 K34 ["Flags"]
      190 GETTABLEKS                       R28 R29 K37 ["getFFlagEnableAssetInserter"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K5 [require]
      195 GETTABLEKS                       R31 R0 K6 ["Src"]
      197 GETTABLEKS                       R30 R31 K34 ["Flags"]
      199 GETTABLEKS                       R29 R30 K38 ["getFFlagAmrOrganizationFoundation"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R32 R0 K6 ["Src"]
      206 GETTABLEKS                       R31 R32 K34 ["Flags"]
      208 GETTABLEKS                       R30 R31 K39 ["getFFlagAmrOrganizeSelectionPlus"]
      210 CALL                             R29 1 1
      211 LOADK                            R32 K40 ["ItemsController"]
      212 NAMECALL                         R30 R6 K41 ["extend"]
      214 CALL                             R30 2 1
      215 DUPCLOSURE                       R31 K42 [PROTO_0]
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R23
      218 CAPTURE                          VAL R17
      219 DUPCLOSURE                       R32 K43 [PROTO_12]
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R19
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R30
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R2
      231 SETTABLEKS                       R32 R30 K44 ["new"]
      233 DUPCLOSURE                       R32 K45 [PROTO_13]
      234 CAPTURE                          VAL R30
      235 SETTABLEKS                       R32 R30 K46 ["mock"]
      237 DUPCLOSURE                       R32 K47 [PROTO_14]
      238 SETTABLEKS                       R32 R30 K48 ["getIsMock"]
      240 DUPCLOSURE                       R32 K49 [PROTO_15]
      241 CAPTURE                          VAL R14
      242 SETTABLEKS                       R32 R30 K50 ["destroy"]
      244 DUPCLOSURE                       R32 K51 [PROTO_17]
      245 SETTABLEKS                       R32 R30 K52 ["_getNewItemsHandler"]
      247 DUPCLOSURE                       R32 K53 [PROTO_18]
      248 CAPTURE                          VAL R28
      249 SETTABLEKS                       R32 R30 K54 ["_createRenderItems"]
      251 DUPCLOSURE                       R32 K55 [PROTO_19]
      252 CAPTURE                          VAL R2
      253 SETTABLEKS                       R32 R30 K56 ["clearRecent"]
      255 DUPCLOSURE                       R32 K57 [PROTO_21]
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R2
      258 CAPTURE                          VAL R26
      259 SETTABLEKS                       R32 R30 K58 ["_startNewScopeFetch"]
      261 DUPCLOSURE                       R32 K59 [PROTO_22]
      262 SETTABLEKS                       R32 R30 K60 ["_clearItems"]
      264 DUPCLOSURE                       R32 K61 [PROTO_23]
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R2
      267 SETTABLEKS                       R32 R30 K62 ["_clearAndFetchNewItems"]
      269 DUPCLOSURE                       R32 K63 [PROTO_24]
      270 SETTABLEKS                       R32 R30 K64 ["getSearchFolderCount"]
      272 DUPCLOSURE                       R32 K65 [PROTO_25]
      273 SETTABLEKS                       R32 R30 K66 ["setShowAllSearchFolders"]
      275 DUPCLOSURE                       R32 K67 [PROTO_26]
      276 SETTABLEKS                       R32 R30 K68 ["getShowAllSearchFolders"]
      278 DUPCLOSURE                       R32 K69 [PROTO_27]
      279 CAPTURE                          VAL R8
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R28
      282 SETTABLEKS                       R32 R30 K70 ["_clearAndFetchSearchItems"]
      284 DUPCLOSURE                       R32 K71 [PROTO_28]
      285 CAPTURE                          VAL R19
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R29
      288 SETTABLEKS                       R32 R30 K72 ["refreshItems"]
      290 DUPCLOSURE                       R32 K73 [PROTO_29]
      291 CAPTURE                          VAL R7
      292 SETTABLEKS                       R32 R30 K74 ["getDraggedItems"]
      294 DUPCLOSURE                       R32 K75 [PROTO_30]
      295 CAPTURE                          VAL R18
      296 CAPTURE                          VAL R24
      297 CAPTURE                          VAL R16
      298 CAPTURE                          VAL R28
      299 SETTABLEKS                       R32 R30 K76 ["_goToFolder"]
      301 DUPCLOSURE                       R32 K77 [PROTO_31]
      302 SETTABLEKS                       R32 R30 K78 ["getLastUsedFolderName"]
      304 DUPCLOSURE                       R32 K79 [PROTO_32]
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R24
      307 DUPCLOSURE                       R33 K80 [PROTO_33]
      308 SETTABLEKS                       R33 R30 K81 ["_updateLastUsedFolder"]
      310 DUPCLOSURE                       R33 K82 [PROTO_36]
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R3
      313 CAPTURE                          VAL R21
      314 CAPTURE                          VAL R18
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R26
      318 SETTABLEKS                       R33 R30 K83 ["requestMoveSelectionToItem"]
      320 DUPCLOSURE                       R33 K84 [PROTO_40]
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R16
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R7
      325 CAPTURE                          VAL R2
      326 SETTABLEKS                       R33 R30 K85 ["_requestCreateFolder"]
      328 DUPCLOSURE                       R33 K86 [PROTO_43]
      329 CAPTURE                          VAL R3
      330 SETTABLEKS                       R33 R30 K87 ["_requestRenameFolder"]
      332 DUPCLOSURE                       R33 K88 [PROTO_44]
      333 SETTABLEKS                       R33 R30 K89 ["uploadStagedFolder"]
      335 DUPCLOSURE                       R33 K90 [PROTO_45]
      336 CAPTURE                          VAL R16
      337 SETTABLEKS                       R33 R30 K91 ["uploadStagedFolderPath"]
      339 DUPCLOSURE                       R33 K92 [PROTO_48]
      340 CAPTURE                          VAL R18
      341 CAPTURE                          VAL R2
      342 SETTABLEKS                       R33 R30 K93 ["requestDeleteFolder"]
      344 DUPCLOSURE                       R33 K94 [PROTO_49]
      345 CAPTURE                          VAL R31
      346 SETTABLEKS                       R33 R30 K95 ["_createInsertJobData"]
      348 DUPCLOSURE                       R33 K96 [PROTO_50]
      349 CAPTURE                          VAL R28
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R7
      352 CAPTURE                          VAL R25
      353 CAPTURE                          VAL R27
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R22
      356 SETTABLEKS                       R33 R30 K97 ["handleDoubleClick"]
      358 DUPCLOSURE                       R33 K98 [PROTO_51]
      359 SETTABLEKS                       R33 R30 K99 ["setLastItemClicked"]
      361 DUPCLOSURE                       R33 K100 [PROTO_52]
      362 CAPTURE                          VAL R20
      363 SETTABLEKS                       R33 R30 K101 ["changeSelection"]
      365 DUPCLOSURE                       R33 K102 [PROTO_53]
      366 SETTABLEKS                       R33 R30 K103 ["moveSelection"]
      368 DUPCLOSURE                       R33 K104 [PROTO_54]
      369 SETTABLEKS                       R33 R30 K105 ["syncSelectionIndices"]
      371 DUPCLOSURE                       R33 K106 [PROTO_55]
      372 CAPTURE                          VAL R7
      373 SETTABLEKS                       R33 R30 K107 ["getSingleItemSelected"]
      375 DUPCLOSURE                       R33 K108 [PROTO_56]
      376 SETTABLEKS                       R33 R30 K109 ["getItemInfo"]
      378 DUPCLOSURE                       R33 K110 [PROTO_57]
      379 CAPTURE                          VAL R7
      380 CAPTURE                          VAL R3
      381 SETTABLEKS                       R33 R30 K111 ["getSelectionIdsHelper"]
      383 DUPCLOSURE                       R33 K112 [PROTO_58]
      384 SETTABLEKS                       R33 R30 K113 ["getItemsCache"]
      386 DUPCLOSURE                       R33 K114 [PROTO_59]
      387 SETTABLEKS                       R33 R30 K115 ["getRenderItems"]
      389 DUPCLOSURE                       R33 K116 [PROTO_60]
      390 CAPTURE                          VAL R3
      391 SETTABLEKS                       R33 R30 K117 ["requestNextPage"]
      393 DUPCLOSURE                       R33 K118 [PROTO_61]
      394 CAPTURE                          VAL R3
      395 CAPTURE                          VAL R23
      396 SETTABLEKS                       R33 R30 K119 ["selectionHasInsertableAssets"]
      398 DUPCLOSURE                       R33 K120 [PROTO_62]
      399 CAPTURE                          VAL R3
      400 SETTABLEKS                       R33 R30 K121 ["getAssetTypes"]
      402 DUPCLOSURE                       R33 K122 [PROTO_63]
      403 CAPTURE                          VAL R10
      404 SETTABLEKS                       R33 R30 K123 ["getCreators"]
      406 DUPCLOSURE                       R33 K124 [PROTO_64]
      407 CAPTURE                          VAL R8
      408 SETTABLEKS                       R33 R30 K125 ["_updateSortFilter"]
      410 DUPCLOSURE                       R33 K126 [PROTO_65]
      411 SETTABLEKS                       R33 R30 K127 ["getFilters"]
      413 DUPCLOSURE                       R33 K128 [PROTO_66]
      414 CAPTURE                          VAL R9
      415 SETTABLEKS                       R33 R30 K129 ["_addFilter"]
      417 DUPCLOSURE                       R33 K130 [PROTO_67]
      418 SETTABLEKS                       R33 R30 K131 ["_removeFilter"]
      420 DUPCLOSURE                       R33 K132 [PROTO_68]
      421 CAPTURE                          VAL R3
      422 SETTABLEKS                       R33 R30 K133 ["_clearAssetTypeFilter"]
      424 DUPCLOSURE                       R33 K134 [PROTO_69]
      425 SETTABLEKS                       R33 R30 K135 ["hasFilter"]
      427 DUPCLOSURE                       R33 K136 [PROTO_70]
      428 SETTABLEKS                       R33 R30 K137 ["toggleFilter"]
      430 DUPCLOSURE                       R33 K138 [PROTO_71]
      431 CAPTURE                          VAL R3
      432 SETTABLEKS                       R33 R30 K139 ["togglePackagesFilter"]
      434 DUPCLOSURE                       R33 K140 [PROTO_72]
      435 CAPTURE                          VAL R3
      436 SETTABLEKS                       R33 R30 K141 ["toggleArchivedFilter"]
      438 DUPCLOSURE                       R33 K142 [PROTO_73]
      439 CAPTURE                          VAL R3
      440 SETTABLEKS                       R33 R30 K143 ["clearFilters"]
      442 DUPCLOSURE                       R33 K144 [PROTO_74]
      443 SETTABLEKS                       R33 R30 K145 ["getSorts"]
      445 DUPCLOSURE                       R33 K146 [PROTO_75]
      446 SETTABLEKS                       R33 R30 K147 ["setSorts"]
      448 DUPCLOSURE                       R33 K148 [PROTO_76]
      449 SETTABLEKS                       R33 R30 K149 ["addSort"]
      451 DUPCLOSURE                       R33 K150 [PROTO_77]
      452 SETTABLEKS                       R33 R30 K151 ["getSelection"]
      454 DUPCLOSURE                       R33 K152 [PROTO_78]
      455 SETTABLEKS                       R33 R30 K153 ["setSelection"]
      457 DUPCLOSURE                       R33 K154 [PROTO_79]
      458 CAPTURE                          VAL R8
      459 SETTABLEKS                       R33 R30 K155 ["modifySelection"]
      461 DUPCLOSURE                       R33 K156 [PROTO_80]
      462 SETTABLEKS                       R33 R30 K157 ["handleRightClick"]
      464 DUPCLOSURE                       R33 K158 [PROTO_81]
      465 SETTABLEKS                       R33 R30 K159 ["getStagedEditItemPath"]
      467 DUPCLOSURE                       R33 K160 [PROTO_82]
      468 SETTABLEKS                       R33 R30 K161 ["setStagedEditItemPath"]
      470 DUPCLOSURE                       R33 K162 [PROTO_83]
      471 CAPTURE                          VAL R28
      472 SETTABLEKS                       R33 R30 K163 ["removeStagedItem"]
      474 DUPCLOSURE                       R33 K164 [PROTO_84]
      475 CAPTURE                          VAL R3
      476 CAPTURE                          VAL R24
      477 SETTABLEKS                       R33 R30 K165 ["renamePlace"]
      479 DUPCLOSURE                       R33 K166 [PROTO_85]
      480 CAPTURE                          VAL R3
      481 SETTABLEKS                       R33 R30 K167 ["stageNewFolder"]
      483 DUPCLOSURE                       R33 K168 [PROTO_86]
      484 SETTABLEKS                       R33 R30 K169 ["setAnalyticsInsertAction"]
      486 DUPCLOSURE                       R33 K170 [PROTO_87]
      487 CAPTURE                          VAL R7
      488 CAPTURE                          VAL R3
      489 CAPTURE                          VAL R1
      490 SETTABLEKS                       R33 R30 K171 ["sendInsertToAnalytics"]
      492 DUPCLOSURE                       R33 K172 [PROTO_88]
      493 SETTABLEKS                       R33 R30 K173 ["getCurrentShownScope"]
      495 DUPCLOSURE                       R33 K174 [PROTO_89]
      496 SETTABLEKS                       R33 R30 K175 ["getPlugin"]
      498 RETURN                           R30 1
