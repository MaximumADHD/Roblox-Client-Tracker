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
        1 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
        3 GETTABLEKS                       R3 R0 K1 ["Uid"]
        5 NAMECALL                         R1 R1 K2 ["hasScope"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+40]
        9 GETUPVAL                         R1 0
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_selection"]
       14 GETUPVAL                         R1 0
       15 LOADN                            R3 1
       16 NAMECALL                         R1 R1 K4 ["syncSelectionIndices"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K5 ["OnItemSelectionChanged"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K3 ["_selection"]
       25 NAMECALL                         R1 R1 K6 ["Fire"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       31 GETTABLEKS                       R3 R0 K1 ["Uid"]
       33 NAMECALL                         R1 R1 K7 ["getScope"]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K8 ["OnScopeFetchProgressChanged"]
       39 GETTABLEKS                       R4 R1 K9 ["FetchProgress"]
       41 GETTABLEKS                       R5 R1 K10 ["Loading"]
       43 GETTABLEKS                       R6 R0 K1 ["Uid"]
       45 NAMECALL                         R2 R2 K6 ["Fire"]
       47 CALL                             R2 4 0
       48 JUMP                             ; [+88]
       49 GETUPVAL                         R1 1
       50 CALL                             R1 0 1
       51 JUMPIFNOT                        R1 ; [+7]
       52 GETUPVAL                         R1 0
       53 MOVE                             R3 R0
       54 LOADB                            R4 1
       55 NAMECALL                         R1 R1 K11 ["_startNewScopeFetch"]
       57 CALL                             R1 3 0
       58 JUMP                             ; [+78]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       62 GETTABLEKS                       R3 R0 K1 ["Uid"]
       64 NAMECALL                         R1 R1 K12 ["addScope"]
       66 CALL                             R1 2 0
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
       70 GETTABLEKS                       R3 R0 K1 ["Uid"]
       72 NAMECALL                         R1 R1 K7 ["getScope"]
       74 CALL                             R1 2 1
       75 LOADB                            R2 1
       76 SETTABLEKS                       R2 R1 K10 ["Loading"]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R2 R3 K13 ["_networking"]
       81 LOADK                            R3 K14 [""]
       82 SETTABLEKS                       R3 R2 K15 ["nextPageToken"]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R2 R3 K13 ["_networking"]
       87 LOADK                            R3 K14 [""]
       88 SETTABLEKS                       R3 R2 K16 ["nextPlacesPageToken"]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R3 R4 K17 ["_sorts"]
       93 LENGTH                           R2 R3
       94 JUMPIFNOTEQKN                    R2 K18 [0] ; [+8]
       96 GETUPVAL                         R2 0
       97 GETUPVAL                         R4 2
       98 GETTABLEKS                       R3 R4 K19 ["get"]
      100 CALL                             R3 0 1
      101 SETTABLEKS                       R3 R2 K17 ["_sorts"]
      103 GETUPVAL                         R3 0
      104 GETTABLEKS                       R2 R3 K20 ["_pluginController"]
      106 NAMECALL                         R2 R2 K21 ["getCurrentScope"]
      108 CALL                             R2 1 1
      109 GETUPVAL                         R3 0
      110 MOVE                             R5 R2
      111 NAMECALL                         R3 R3 K22 ["_getNewItemsHandler"]
      113 CALL                             R3 2 1
      114 GETUPVAL                         R5 0
      115 GETTABLEKS                       R4 R5 K13 ["_networking"]
      117 MOVE                             R6 R2
      118 GETTABLEKS                       R7 R1 K23 ["NextPageToken"]
      120 MOVE                             R8 R3
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R9 R10 K24 ["_fetchAssetsErrorCallback"]
      124 NAMECALL                         R4 R4 K25 ["fetchAssetsAsync"]
      126 CALL                             R4 5 0
      127 GETUPVAL                         R5 0
      128 GETTABLEKS                       R4 R5 K8 ["OnScopeFetchProgressChanged"]
      130 LOADN                            R6 0
      131 LOADB                            R7 1
      132 GETTABLEKS                       R8 R0 K1 ["Uid"]
      134 NAMECALL                         R4 R4 K6 ["Fire"]
      136 CALL                             R4 4 0
      137 GETUPVAL                         R1 0
      138 NAMECALL                         R1 R1 K26 ["_createRenderItems"]
      140 CALL                             R1 1 0
      141 GETTABLEKS                       R1 R0 K27 ["Type"]
      143 GETUPVAL                         R4 3
      144 GETTABLEKS                       R3 R4 K28 ["ScopeType"]
      146 GETTABLEKS                       R2 R3 K29 ["ProjectPlaces"]
      148 JUMPIFNOTEQ                      R1 R2 ; [+5]
      150 GETUPVAL                         R1 0
      151 NAMECALL                         R1 R1 K30 ["_clearAssetTypeFilter"]
      153 CALL                             R1 1 0
      154 GETUPVAL                         R2 0
      155 GETTABLEKS                       R1 R2 K31 ["_analyticsState"]
      157 LOADK                            R2 K32 ["browse"]
      158 SETTABLEKS                       R2 R1 K33 ["Source"]
      160 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+47]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["_itemsCache"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["addRecent"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K2 ["getCurrentShownScope"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K3 ["Uid"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K4 ["RecentUploads"]
       19 GETTABLEKS                       R2 R3 K3 ["Uid"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+28]
       23 GETUPVAL                         R1 1
       24 NAMECALL                         R1 R1 K5 ["_createRenderItems"]
       26 CALL                             R1 1 0
       27 LOADN                            R1 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R2 R5 K6 ["_renderItems"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLEKS                       R7 R0 K7 ["Path"]
       36 JUMPIFNOTEQ                      R6 R7 ; [+3]
       38 MOVE                             R1 R5
       39 JUMP                             ; [+2]
       40 FORGLOOP                         R2 2 ; [-7]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K8 ["_layoutController"]
       45 MOVE                             R4 R1
       46 NAMECALL                         R2 R2 K9 ["scrollToItem"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R1 R2 K10 ["_searchController"]
       53 NAMECALL                         R1 R1 K11 ["getShowSearchOptions"]
       55 CALL                             R1 1 1
       56 JUMPIFNOT                        R1 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R3 R0 K12 ["Creator"]
       60 GETTABLEKS                       R2 R3 K3 ["Uid"]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R4 R5 K13 ["_pluginController"]
       65 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
       67 CALL                             R4 1 1
       68 GETTABLEKS                       R3 R4 K3 ["Uid"]
       70 JUMPIFEQ                         R2 R3 ; [+2]
       72 LOADB                            R1 0 +1
       73 LOADB                            R1 1
       74 JUMPIF                           R1 ; [+1]
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 1
       77 GETTABLEKS                       R2 R3 K0 ["_itemsCache"]
       79 GETTABLEKS                       R5 R0 K12 ["Creator"]
       81 GETTABLEKS                       R4 R5 K3 ["Uid"]
       83 NAMECALL                         R2 R2 K15 ["hasScope"]
       85 CALL                             R2 2 1
       86 JUMPIFNOT                        R2 ; [+29]
       87 GETUPVAL                         R3 1
       88 GETTABLEKS                       R2 R3 K0 ["_itemsCache"]
       90 MOVE                             R4 R0
       91 GETTABLEKS                       R6 R0 K12 ["Creator"]
       93 GETTABLEKS                       R5 R6 K3 ["Uid"]
       95 NAMECALL                         R2 R2 K16 ["addItem"]
       97 CALL                             R2 3 0
       98 GETUPVAL                         R4 1
       99 GETTABLEKS                       R3 R4 K13 ["_pluginController"]
      101 NAMECALL                         R3 R3 K14 ["getCurrentScope"]
      103 CALL                             R3 1 1
      104 GETTABLEKS                       R2 R3 K3 ["Uid"]
      106 GETTABLEKS                       R4 R0 K12 ["Creator"]
      108 GETTABLEKS                       R3 R4 K3 ["Uid"]
      110 JUMPIFNOTEQ                      R2 R3 ; [+5]
      112 GETUPVAL                         R2 1
      113 NAMECALL                         R2 R2 K5 ["_createRenderItems"]
      115 CALL                             R2 1 0
      116 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearAndFetchSearchItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearAndFetchNewItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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

PROTO_13:
        0 DUPTABLE                         R2 K32 [{"_isMock", "_destroyed", "_pluginController", "_explorerController", "_searchController", "_layoutController", "_networking", "_columnWidths", "_itemsCache", "_renderItems", "_creators", "_filters", "_sorts", "_selection", "_stagedEditItemPath", "_selectStartIndex", "_selectEndIndex", "_clickState", "_isDragging", "_lastItemPathClicked", "_showAllSearchFolders", "_searchFolderCount", "_analyticsState", "_connections", "OnVisiblePropertiesChanged", "OnItemsChanged", "OnItemSelectionChanged", "OnSortFilterChanged", "OnCreatorsChanged", "OnScopeFetchProgressChanged", "OnSearchFolderCountChanged", "OnStagedEditItemPathChanged"}]
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
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K38 ["new"]
       33 LOADN                            R4 5
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K8 ["_itemsCache"]
       37 NEWTABLE                         R3 0 0
       39 SETTABLEKS                       R3 R2 K9 ["_renderItems"]
       41 NEWTABLE                         R3 0 0
       43 SETTABLEKS                       R3 R2 K10 ["_creators"]
       45 NEWTABLE                         R3 1 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K39 ["AssetInfoField"]
       50 GETTABLEKS                       R4 R5 K40 ["Archived"]
       52 LOADB                            R5 0
       53 SETTABLE                         R5 R3 R4
       54 SETTABLEKS                       R3 R2 K11 ["_filters"]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R3 R4 K41 ["get"]
       59 CALL                             R3 0 1
       60 SETTABLEKS                       R3 R2 K12 ["_sorts"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K13 ["_selection"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R2 K14 ["_stagedEditItemPath"]
       69 LOADN                            R3 1
       70 SETTABLEKS                       R3 R2 K15 ["_selectStartIndex"]
       72 LOADN                            R3 1
       73 SETTABLEKS                       R3 R2 K16 ["_selectEndIndex"]
       75 DUPTABLE                         R3 K44 [{"modsPressed", "targetAssetId"}]
       76 DUPTABLE                         R4 K47 [{"Shift", "Ctrl"}]
       77 LOADB                            R5 0
       78 SETTABLEKS                       R5 R4 K45 ["Shift"]
       80 LOADB                            R5 0
       81 SETTABLEKS                       R5 R4 K46 ["Ctrl"]
       83 SETTABLEKS                       R4 R3 K42 ["modsPressed"]
       85 LOADN                            R4 255
       86 SETTABLEKS                       R4 R3 K43 ["targetAssetId"]
       88 SETTABLEKS                       R3 R2 K17 ["_clickState"]
       90 LOADB                            R3 0
       91 SETTABLEKS                       R3 R2 K18 ["_isDragging"]
       93 LOADK                            R3 K48 [""]
       94 SETTABLEKS                       R3 R2 K19 ["_lastItemPathClicked"]
       96 LOADB                            R3 0
       97 SETTABLEKS                       R3 R2 K20 ["_showAllSearchFolders"]
       99 LOADN                            R3 0
      100 SETTABLEKS                       R3 R2 K21 ["_searchFolderCount"]
      102 DUPTABLE                         R3 K52 [{"Action", "Source", "Position"}]
      103 LOADK                            R4 K53 ["double_click"]
      104 SETTABLEKS                       R4 R3 K49 ["Action"]
      106 LOADK                            R4 K54 ["browse"]
      107 SETTABLEKS                       R4 R3 K50 ["Source"]
      109 LOADN                            R4 0
      110 SETTABLEKS                       R4 R3 K51 ["Position"]
      112 SETTABLEKS                       R3 R2 K22 ["_analyticsState"]
      114 NEWTABLE                         R3 0 0
      116 SETTABLEKS                       R3 R2 K23 ["_connections"]
      118 GETUPVAL                         R4 3
      119 GETTABLEKS                       R3 R4 K38 ["new"]
      121 CALL                             R3 0 1
      122 SETTABLEKS                       R3 R2 K24 ["OnVisiblePropertiesChanged"]
      124 GETUPVAL                         R4 3
      125 GETTABLEKS                       R3 R4 K38 ["new"]
      127 CALL                             R3 0 1
      128 SETTABLEKS                       R3 R2 K25 ["OnItemsChanged"]
      130 GETUPVAL                         R4 3
      131 GETTABLEKS                       R3 R4 K38 ["new"]
      133 CALL                             R3 0 1
      134 SETTABLEKS                       R3 R2 K26 ["OnItemSelectionChanged"]
      136 GETUPVAL                         R4 3
      137 GETTABLEKS                       R3 R4 K38 ["new"]
      139 CALL                             R3 0 1
      140 SETTABLEKS                       R3 R2 K27 ["OnSortFilterChanged"]
      142 GETUPVAL                         R4 3
      143 GETTABLEKS                       R3 R4 K38 ["new"]
      145 CALL                             R3 0 1
      146 SETTABLEKS                       R3 R2 K28 ["OnCreatorsChanged"]
      148 GETUPVAL                         R4 3
      149 GETTABLEKS                       R3 R4 K38 ["new"]
      151 CALL                             R3 0 1
      152 SETTABLEKS                       R3 R2 K29 ["OnScopeFetchProgressChanged"]
      154 GETUPVAL                         R4 3
      155 GETTABLEKS                       R3 R4 K38 ["new"]
      157 CALL                             R3 0 1
      158 SETTABLEKS                       R3 R2 K30 ["OnSearchFolderCountChanged"]
      160 GETUPVAL                         R4 3
      161 GETTABLEKS                       R3 R4 K38 ["new"]
      163 CALL                             R3 0 1
      164 SETTABLEKS                       R3 R2 K31 ["OnStagedEditItemPathChanged"]
      166 GETUPVAL                         R5 4
      167 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      169 MOVE                             R4 R2
      170 GETIMPORT                        R3 K56 [setmetatable]
      172 CALL                             R3 2 0
      173 DUPCLOSURE                       R3 K57 [PROTO_1]
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U6
      176 SETTABLEKS                       R3 R2 K58 ["_fetchAssetsErrorCallback"]
      178 GETTABLEKS                       R3 R2 K2 ["_pluginController"]
      180 NAMECALL                         R3 R3 K59 ["getCurrentScope"]
      182 CALL                             R3 1 1
      183 GETTABLEKS                       R4 R2 K8 ["_itemsCache"]
      185 GETTABLEKS                       R6 R3 K60 ["Uid"]
      187 NAMECALL                         R4 R4 K61 ["addScope"]
      189 CALL                             R4 2 1
      190 LOADB                            R5 1
      191 SETTABLEKS                       R5 R4 K62 ["Loading"]
      193 GETTABLEKS                       R5 R2 K29 ["OnScopeFetchProgressChanged"]
      195 GETTABLEKS                       R7 R4 K63 ["FetchProgress"]
      197 GETTABLEKS                       R8 R4 K62 ["Loading"]
      199 GETTABLEKS                       R9 R3 K60 ["Uid"]
      201 NAMECALL                         R5 R5 K64 ["Fire"]
      203 CALL                             R5 4 0
      204 MOVE                             R7 R3
      205 NAMECALL                         R5 R2 K65 ["_getNewItemsHandler"]
      207 CALL                             R5 2 1
      208 GETTABLEKS                       R6 R2 K6 ["_networking"]
      210 MOVE                             R8 R3
      211 GETTABLEKS                       R9 R4 K66 ["NextPageToken"]
      213 MOVE                             R10 R5
      214 GETTABLEKS                       R11 R2 K58 ["_fetchAssetsErrorCallback"]
      216 NAMECALL                         R6 R6 K67 ["fetchAssetsAsync"]
      218 CALL                             R6 5 0
      219 GETTABLEKS                       R7 R2 K23 ["_connections"]
      221 GETTABLEKS                       R9 R2 K2 ["_pluginController"]
      223 GETTABLEKS                       R8 R9 K68 ["OnCurrentScopeChanged"]
      225 NEWCLOSURE                       R10 P1
      226 CAPTURE                          VAL R2
      227 CAPTURE                          UPVAL U7
      228 CAPTURE                          UPVAL U2
      229 CAPTURE                          UPVAL U1
      230 NAMECALL                         R8 R8 K69 ["Connect"]
      232 CALL                             R8 2 -1
      233 FASTCALL                         TABLE_INSERT ; [+2]
      234 GETIMPORT                        R6 K72 [table.insert]
      236 CALL                             R6 -1 0
      237 GETTABLEKS                       R7 R2 K23 ["_connections"]
      239 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      241 NAMECALL                         R8 R8 K73 ["getPlugin"]
      243 CALL                             R8 1 1
      244 LOADK                            R10 K74 ["OnAddPlaceSucceeded"]
      245 NEWCLOSURE                       R11 P2
      246 CAPTURE                          VAL R2
      247 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      249 CALL                             R8 3 -1
      250 FASTCALL                         TABLE_INSERT ; [+2]
      251 GETIMPORT                        R6 K72 [table.insert]
      253 CALL                             R6 -1 0
      254 GETTABLEKS                       R7 R2 K23 ["_connections"]
      256 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      258 NAMECALL                         R8 R8 K73 ["getPlugin"]
      260 CALL                             R8 1 1
      261 LOADK                            R10 K76 ["OnRemovePlaceFromGameSucceeded"]
      262 NEWCLOSURE                       R11 P3
      263 CAPTURE                          VAL R2
      264 CAPTURE                          UPVAL U8
      265 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      267 CALL                             R8 3 -1
      268 FASTCALL                         TABLE_INSERT ; [+2]
      269 GETIMPORT                        R6 K72 [table.insert]
      271 CALL                             R6 -1 0
      272 GETTABLEKS                       R7 R2 K23 ["_connections"]
      274 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      276 NAMECALL                         R8 R8 K73 ["getPlugin"]
      278 CALL                             R8 1 1
      279 LOADK                            R10 K77 ["OnRenamePlaceSucceeded"]
      280 NEWCLOSURE                       R11 P4
      281 CAPTURE                          VAL R2
      282 CAPTURE                          UPVAL U8
      283 CAPTURE                          UPVAL U1
      284 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      286 CALL                             R8 3 -1
      287 FASTCALL                         TABLE_INSERT ; [+2]
      288 GETIMPORT                        R6 K72 [table.insert]
      290 CALL                             R6 -1 0
      291 GETTABLEKS                       R7 R2 K23 ["_connections"]
      293 GETTABLEKS                       R9 R2 K2 ["_pluginController"]
      295 GETTABLEKS                       R8 R9 K78 ["OnNewAssetFetched"]
      297 NEWCLOSURE                       R10 P5
      298 CAPTURE                          UPVAL U9
      299 CAPTURE                          VAL R2
      300 CAPTURE                          UPVAL U10
      301 NAMECALL                         R8 R8 K69 ["Connect"]
      303 CALL                             R8 2 -1
      304 FASTCALL                         TABLE_INSERT ; [+2]
      305 GETIMPORT                        R6 K72 [table.insert]
      307 CALL                             R6 -1 0
      308 GETTABLEKS                       R7 R2 K23 ["_connections"]
      310 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      312 GETTABLEKS                       R8 R9 K79 ["OnSearchRequested"]
      314 NEWCLOSURE                       R10 P6
      315 CAPTURE                          VAL R2
      316 NAMECALL                         R8 R8 K69 ["Connect"]
      318 CALL                             R8 2 -1
      319 FASTCALL                         TABLE_INSERT ; [+2]
      320 GETIMPORT                        R6 K72 [table.insert]
      322 CALL                             R6 -1 0
      323 GETTABLEKS                       R7 R2 K23 ["_connections"]
      325 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      327 GETTABLEKS                       R8 R9 K80 ["OnShowSearchOptionsChanged"]
      329 NEWCLOSURE                       R10 P7
      330 CAPTURE                          VAL R2
      331 CAPTURE                          UPVAL U11
      332 NAMECALL                         R8 R8 K69 ["Connect"]
      334 CALL                             R8 2 -1
      335 FASTCALL                         TABLE_INSERT ; [+2]
      336 GETIMPORT                        R6 K72 [table.insert]
      338 CALL                             R6 -1 0
      339 GETUPVAL                         R6 7
      340 CALL                             R6 0 1
      341 JUMPIF                           R6 ; [+3]
      342 GETUPVAL                         R6 12
      343 CALL                             R6 0 1
      344 JUMPIFNOT                        R6 ; [+15]
      345 GETTABLEKS                       R7 R2 K23 ["_connections"]
      347 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      349 GETTABLEKS                       R8 R9 K81 ["OnIsDefaultSearchStateChanged"]
      351 NEWCLOSURE                       R10 P8
      352 CAPTURE                          VAL R2
      353 NAMECALL                         R8 R8 K69 ["Connect"]
      355 CALL                             R8 2 -1
      356 FASTCALL                         TABLE_INSERT ; [+2]
      357 GETIMPORT                        R6 K72 [table.insert]
      359 CALL                             R6 -1 0
      360 GETUPVAL                         R6 7
      361 CALL                             R6 0 1
      362 JUMPIF                           R6 ; [+15]
      363 GETTABLEKS                       R7 R2 K23 ["_connections"]
      365 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      367 GETTABLEKS                       R8 R9 K82 ["OnSearchClosed"]
      369 NEWCLOSURE                       R10 P9
      370 CAPTURE                          VAL R2
      371 NAMECALL                         R8 R8 K69 ["Connect"]
      373 CALL                             R8 2 -1
      374 FASTCALL                         TABLE_INSERT ; [+2]
      375 GETIMPORT                        R6 K72 [table.insert]
      377 CALL                             R6 -1 0
      378 GETUPVAL                         R6 11
      379 CALL                             R6 0 1
      380 JUMPIFNOT                        R6 ; [+30]
      381 GETTABLEKS                       R7 R2 K23 ["_connections"]
      383 GETTABLEKS                       R9 R2 K5 ["_layoutController"]
      385 GETTABLEKS                       R8 R9 K83 ["OnBrowserLayoutChanged"]
      387 NEWCLOSURE                       R10 P10
      388 CAPTURE                          VAL R2
      389 NAMECALL                         R8 R8 K69 ["Connect"]
      391 CALL                             R8 2 -1
      392 FASTCALL                         TABLE_INSERT ; [+2]
      393 GETIMPORT                        R6 K72 [table.insert]
      395 CALL                             R6 -1 0
      396 GETTABLEKS                       R7 R2 K23 ["_connections"]
      398 GETTABLEKS                       R9 R2 K5 ["_layoutController"]
      400 GETTABLEKS                       R8 R9 K84 ["OnGridStateUpdated"]
      402 NEWCLOSURE                       R10 P11
      403 CAPTURE                          VAL R2
      404 NAMECALL                         R8 R8 K69 ["Connect"]
      406 CALL                             R8 2 -1
      407 FASTCALL                         TABLE_INSERT ; [+2]
      408 GETIMPORT                        R6 K72 [table.insert]
      410 CALL                             R6 -1 0
      411 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
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
       18 GETUPVAL                         R6 2
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+29]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K4 ["_networking"]
       24 NAMECALL                         R6 R6 K5 ["getFetchEpochId"]
       26 CALL                             R6 1 1
       27 JUMPIFEQ                         R2 R6 ; [+22]
       29 LOADB                            R6 0
       30 SETTABLEKS                       R6 R5 K6 ["Loading"]
       32 LOADN                            R6 0
       33 SETTABLEKS                       R6 R5 K7 ["FetchProgress"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K8 ["OnScopeFetchProgressChanged"]
       38 GETTABLEKS                       R8 R5 K7 ["FetchProgress"]
       40 GETTABLEKS                       R9 R5 K6 ["Loading"]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R10 R11 K2 ["Uid"]
       45 NAMECALL                         R6 R6 K9 ["Fire"]
       47 CALL                             R6 4 0
       48 LOADB                            R6 0
       49 RETURN                           R6 1
       50 MOVE                             R6 R0
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K1 ["_itemsCache"]
       57 MOVE                             R13 R10
       58 GETUPVAL                         R15 1
       59 GETTABLEKS                       R14 R15 K2 ["Uid"]
       61 NAMECALL                         R11 R11 K10 ["addItem"]
       63 CALL                             R11 3 0
       64 FORGLOOP                         R6 2 ; [-11]
       66 LOADB                            R6 0
       67 MOVE                             R7 R1
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 FORGPREP                         R7
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K11 ["_creators"]
       74 GETTABLE                         R12 R13 R10
       75 JUMPIF                           R12 ; [+4]
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R12 R13 K11 ["_creators"]
       79 SETTABLE                         R11 R12 R10
       80 LOADB                            R6 1
       81 FORGLOOP                         R7 2 ; [-11]
       83 JUMPIFNOT                        R6 ; [+10]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R7 R8 K12 ["OnCreatorsChanged"]
       87 GETUPVAL                         R9 0
       88 NAMECALL                         R9 R9 K13 ["getCreators"]
       90 CALL                             R9 1 -1
       91 NAMECALL                         R7 R7 K9 ["Fire"]
       93 CALL                             R7 -1 0
       94 GETUPVAL                         R7 0
       95 NAMECALL                         R7 R7 K14 ["getCurrentShownScope"]
       97 CALL                             R7 1 1
       98 GETTABLEKS                       R8 R7 K2 ["Uid"]
      100 GETUPVAL                         R10 1
      101 GETTABLEKS                       R9 R10 K2 ["Uid"]
      103 JUMPIFNOTEQ                      R8 R9 ; [+5]
      105 GETUPVAL                         R8 0
      106 NAMECALL                         R8 R8 K15 ["_createRenderItems"]
      108 CALL                             R8 1 0
      109 JUMPIFNOT                        R3 ; [+7]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R8 R9 K16 ["_pluginController"]
      113 MOVE                             R10 R3
      114 NAMECALL                         R8 R8 K17 ["setRootPlace"]
      116 CALL                             R8 2 0
      117 SETTABLEKS                       R4 R5 K18 ["NextPageToken"]
      119 JUMPIFEQKNIL                     R4 ; [+17]
      121 JUMPIFEQKS                       R4 K19 [""] ; [+15]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      126 NAMECALL                         R8 R8 K20 ["getTotalItemCount"]
      128 CALL                             R8 1 1
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R9 R10 K1 ["_itemsCache"]
      132 NAMECALL                         R9 R9 K21 ["getMaxItems"]
      134 CALL                             R9 1 1
      135 JUMPIFNOTLT                      R9 R8 ; [+8]
      137 LOADB                            R8 0
      138 SETTABLEKS                       R8 R5 K6 ["Loading"]
      140 LOADN                            R8 0
      141 SETTABLEKS                       R8 R5 K7 ["FetchProgress"]
      143 JUMP                             ; [+14]
      144 LOADB                            R8 1
      145 SETTABLEKS                       R8 R5 K6 ["Loading"]
      147 GETUPVAL                         R9 0
      148 GETTABLEKS                       R8 R9 K1 ["_itemsCache"]
      150 GETUPVAL                         R11 1
      151 GETTABLEKS                       R10 R11 K2 ["Uid"]
      153 NAMECALL                         R8 R8 K22 ["getScopeCacheFetchProgress"]
      155 CALL                             R8 2 1
      156 SETTABLEKS                       R8 R5 K7 ["FetchProgress"]
      158 GETUPVAL                         R9 0
      159 GETTABLEKS                       R8 R9 K8 ["OnScopeFetchProgressChanged"]
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R10 R11 K1 ["_itemsCache"]
      164 GETUPVAL                         R13 1
      165 GETTABLEKS                       R12 R13 K2 ["Uid"]
      167 NAMECALL                         R10 R10 K22 ["getScopeCacheFetchProgress"]
      169 CALL                             R10 2 1
      170 GETTABLEKS                       R11 R5 K6 ["Loading"]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R12 R13 K2 ["Uid"]
      175 NAMECALL                         R8 R8 K9 ["Fire"]
      177 CALL                             R8 4 0
      178 GETTABLEKS                       R8 R5 K6 ["Loading"]
      180 JUMPIF                           R8 ; [+2]
      181 LOADB                            R8 0
      182 RETURN                           R8 1
      183 LOADB                            R8 1
      184 RETURN                           R8 1

PROTO_18:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
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
       26 GETTABLEKS                       R5 R0 K8 ["_networking"]
       28 MOVE                             R7 R1
       29 GETTABLEKS                       R8 R3 K9 ["NextPageToken"]
       31 MOVE                             R9 R4
       32 GETTABLEKS                       R10 R0 K10 ["_fetchAssetsErrorCallback"]
       34 NAMECALL                         R5 R5 K11 ["fetchAssetsAsync"]
       36 CALL                             R5 5 0
       37 GETTABLEKS                       R5 R0 K12 ["OnScopeFetchProgressChanged"]
       39 LOADN                            R7 0
       40 LOADB                            R8 1
       41 GETTABLEKS                       R9 R1 K1 ["Uid"]
       43 NAMECALL                         R5 R5 K13 ["Fire"]
       45 CALL                             R5 4 0
       46 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETTABLEKS                       R1 R0 K0 ["_networking"]
        5 NAMECALL                         R1 R1 K1 ["makeFetchRequestsStale"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["OnScopeFetchProgressChanged"]
       10 LOADN                            R3 0
       11 LOADB                            R4 0
       12 NAMECALL                         R6 R0 K3 ["getCurrentShownScope"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R5 R6 K4 ["Uid"]
       17 NAMECALL                         R1 R1 K5 ["Fire"]
       19 CALL                             R1 4 0
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K6 ["_renderItems"]
       24 GETTABLEKS                       R1 R0 K7 ["_itemsCache"]
       26 NAMECALL                         R1 R1 K8 ["reset"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K9 ["OnItemsChanged"]
       31 GETTABLEKS                       R3 R0 K6 ["_renderItems"]
       33 NAMECALL                         R1 R1 K5 ["Fire"]
       35 CALL                             R1 2 0
       36 NEWTABLE                         R1 0 0
       38 SETTABLEKS                       R1 R0 K10 ["_selection"]
       40 LOADN                            R3 1
       41 NAMECALL                         R1 R0 K11 ["syncSelectionIndices"]
       43 CALL                             R1 2 0
       44 GETTABLEKS                       R1 R0 K12 ["OnItemSelectionChanged"]
       46 GETTABLEKS                       R3 R0 K10 ["_selection"]
       48 NAMECALL                         R1 R1 K5 ["Fire"]
       50 CALL                             R1 2 0
       51 NEWTABLE                         R1 0 0
       53 SETTABLEKS                       R1 R0 K13 ["_creators"]
       55 RETURN                           R0 0

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
       19 GETUPVAL                         R2 1
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+13]
       22 GETTABLEKS                       R2 R1 K6 ["Uid"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K7 ["RecentUploads"]
       27 GETTABLEKS                       R3 R4 K6 ["Uid"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+5]
       31 NAMECALL                         R2 R0 K8 ["_createRenderItems"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 3
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+6]
       38 MOVE                             R4 R1
       39 LOADB                            R5 1
       40 NAMECALL                         R2 R0 K9 ["_startNewScopeFetch"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0
       44 MOVE                             R4 R1
       45 NAMECALL                         R2 R0 K10 ["_getNewItemsHandler"]
       47 CALL                             R2 2 1
       48 GETTABLEKS                       R3 R0 K11 ["_itemsCache"]
       50 GETTABLEKS                       R5 R1 K6 ["Uid"]
       52 NAMECALL                         R3 R3 K12 ["addScope"]
       54 CALL                             R3 2 1
       55 GETTABLEKS                       R4 R0 K13 ["_networking"]
       57 MOVE                             R6 R1
       58 GETTABLEKS                       R7 R3 K14 ["NextPageToken"]
       60 MOVE                             R8 R2
       61 GETTABLEKS                       R9 R0 K15 ["_fetchAssetsErrorCallback"]
       63 NAMECALL                         R4 R4 K16 ["fetchAssetsAsync"]
       65 CALL                             R4 5 0
       66 RETURN                           R0 0

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
       37 JUMPIFNOTEQ                      R3 R4 ; [+63]
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
       66 GETUPVAL                         R3 2
       67 CALL                             R3 0 1
       68 JUMPIFNOT                        R3 ; [+6]
       69 MOVE                             R5 R2
       70 LOADB                            R6 0
       71 NAMECALL                         R3 R0 K17 ["_startNewScopeFetch"]
       73 CALL                             R3 3 0
       74 RETURN                           R0 0
       75 NAMECALL                         R3 R0 K18 ["_updateSortFilter"]
       77 CALL                             R3 1 0
       78 GETTABLEKS                       R3 R0 K19 ["_itemsCache"]
       80 GETTABLEKS                       R5 R2 K20 ["Uid"]
       82 NAMECALL                         R3 R3 K21 ["addScope"]
       84 CALL                             R3 2 1
       85 MOVE                             R6 R2
       86 NAMECALL                         R4 R0 K22 ["_getNewItemsHandler"]
       88 CALL                             R4 2 1
       89 GETTABLEKS                       R5 R0 K23 ["_networking"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R8 R3 K24 ["NextPageToken"]
       94 MOVE                             R9 R4
       95 GETTABLEKS                       R10 R0 K25 ["_fetchAssetsErrorCallback"]
       97 NAMECALL                         R5 R5 K26 ["fetchAssetsAsync"]
       99 CALL                             R5 5 0
      100 RETURN                           R0 0
      101 DUPTABLE                         R3 K28 [{"SearchTerm", "AssetType", "ScopeInfo"}]
      102 GETTABLEKS                       R4 R0 K6 ["_searchController"]
      104 NAMECALL                         R4 R4 K14 ["getSearchTerm"]
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R4 R3 K27 ["SearchTerm"]
      109 GETTABLEKS                       R4 R1 K16 ["AssetType"]
      111 SETTABLEKS                       R4 R3 K16 ["AssetType"]
      113 SETTABLEKS                       R2 R3 K8 ["ScopeInfo"]
      115 GETTABLEKS                       R4 R0 K19 ["_itemsCache"]
      117 GETTABLEKS                       R6 R2 K20 ["Uid"]
      119 NAMECALL                         R4 R4 K21 ["addScope"]
      121 CALL                             R4 2 1
      122 MOVE                             R7 R2
      123 NAMECALL                         R5 R0 K22 ["_getNewItemsHandler"]
      125 CALL                             R5 2 1
      126 GETTABLEKS                       R6 R0 K23 ["_networking"]
      128 MOVE                             R8 R3
      129 GETTABLEKS                       R9 R4 K24 ["NextPageToken"]
      131 MOVE                             R10 R5
      132 GETTABLEKS                       R11 R0 K25 ["_fetchAssetsErrorCallback"]
      134 NAMECALL                         R6 R6 K29 ["searchAssetsAsync"]
      136 CALL                             R6 5 0
      137 GETUPVAL                         R6 3
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+25]
      140 DUPTABLE                         R6 K31 [{"SearchTerm", "IncludeFolders", "ScopeInfo"}]
      141 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      143 NAMECALL                         R7 R7 K14 ["getSearchTerm"]
      145 CALL                             R7 1 1
      146 SETTABLEKS                       R7 R6 K27 ["SearchTerm"]
      148 LOADB                            R7 1
      149 SETTABLEKS                       R7 R6 K30 ["IncludeFolders"]
      151 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      153 MOVE                             R3 R6
      154 GETTABLEKS                       R6 R0 K23 ["_networking"]
      156 MOVE                             R8 R3
      157 GETTABLEKS                       R9 R4 K24 ["NextPageToken"]
      159 MOVE                             R10 R5
      160 GETTABLEKS                       R11 R0 K25 ["_fetchAssetsErrorCallback"]
      162 NAMECALL                         R6 R6 K29 ["searchAssetsAsync"]
      164 CALL                             R6 5 0
      165 GETUPVAL                         R6 2
      166 CALL                             R6 0 1
      167 JUMPIFNOT                        R6 ; [+9]
      168 GETTABLEKS                       R6 R0 K32 ["OnScopeFetchProgressChanged"]
      170 LOADN                            R8 0
      171 LOADB                            R9 1
      172 GETTABLEKS                       R10 R2 K20 ["Uid"]
      174 NAMECALL                         R6 R6 K5 ["Fire"]
      176 CALL                             R6 4 0
      177 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_sorts"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["get"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K0 ["_sorts"]
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+5]
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

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_stagedEditItemPath"]
        3 JUMPIFEQKNIL                     R1 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["_itemsCache"]
        8 LOADK                            R3 K2 [""]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["Uid"]
       12 NAMECALL                         R1 R1 K4 ["removeItem"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 0
       16 NAMECALL                         R1 R1 K5 ["removeStagedItem"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K3 ["Uid"]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K6 ["getCurrentShownScope"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R2 R3 K3 ["Uid"]
       28 JUMPIFNOTEQ                      R1 R2 ; [+15]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R1 R2 K1 ["_itemsCache"]
       33 MOVE                             R3 R0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K3 ["Uid"]
       37 NAMECALL                         R1 R1 K7 ["addItem"]
       39 CALL                             R1 3 0
       40 GETUPVAL                         R1 0
       41 NAMECALL                         R1 R1 K8 ["_createRenderItems"]
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 2
       45 MOVE                             R2 R0
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K3 ["Uid"]
       49 CALL                             R1 2 1
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K9 ["_explorerController"]
       53 MOVE                             R4 R1
       54 NAMECALL                         R2 R2 K10 ["handleCreatedFolder"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to create folder $%* in explorerController: $%*"]
        2 GETUPVAL                         R5 1
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R7 R0
        5 GETIMPORT                        R6 K2 [tostring]
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 LOADK                            R3 K4 ["WARN"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 2
       15 NAMECALL                         R1 R1 K5 ["removeStagedItem"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_31:
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
       36 GETTABLEKS                       R5 R0 K8 ["_networking"]
       38 DUPTABLE                         R7 K12 [{"ParentScope", "RootScope", "FolderName"}]
       39 SETTABLEKS                       R3 R7 K9 ["ParentScope"]
       41 SETTABLEKS                       R4 R7 K10 ["RootScope"]
       43 SETTABLEKS                       R1 R7 K11 ["FolderName"]
       45 NAMECALL                         R5 R5 K13 ["createFolderAsync"]
       47 CALL                             R5 2 1
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U1
       52 NAMECALL                         R5 R5 K14 ["andThen"]
       54 CALL                             R5 2 1
       55 NEWCLOSURE                       R7 P1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R5 R5 K15 ["catch"]
       61 CALL                             R5 2 0
       62 RETURN                           R0 0

PROTO_32:
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
       37 GETUPVAL                         R3 1
       38 NAMECALL                         R3 R3 K9 ["removeStagedItem"]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R4 1
       42 NAMECALL                         R4 R4 K10 ["getCurrentShownScope"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R3 R4 K11 ["Uid"]
       47 JUMPIFNOTEQ                      R1 R3 ; [+5]
       49 GETUPVAL                         R3 1
       50 NAMECALL                         R3 R3 K12 ["_createRenderItems"]
       52 CALL                             R3 1 0
       53 GETUPVAL                         R3 0
       54 GETUPVAL                         R4 4
       55 SETTABLEKS                       R4 R3 K13 ["Name"]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R3 R4 K14 ["_explorerController"]
       60 GETUPVAL                         R5 0
       61 NAMECALL                         R3 R3 K15 ["handleRenamedFolder"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error renaming folder: $%*"]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tostring]
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K4 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K5 ["removeStagedItem"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K6 ["_explorerController"]
       20 GETUPVAL                         R3 2
       21 NAMECALL                         R1 R1 K7 ["handleRenamedFolder"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 1
       25 NAMECALL                         R1 R1 K8 ["_createRenderItems"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R5 R2 K0 ["Path"]
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["Can only call rename for an existing folder"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R2 K0 ["Path"]
       14 GETTABLEKS                       R4 R0 K4 ["_networking"]
       16 MOVE                             R6 R3
       17 MOVE                             R7 R1
       18 NAMECALL                         R4 R4 K5 ["updateFolderMetadataAsync"]
       20 CALL                             R4 3 1
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R4 R4 K6 ["andThen"]
       29 CALL                             R4 2 1
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 NAMECALL                         R4 R4 K7 ["catch"]
       36 CALL                             R4 2 0
       37 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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
       30 GETTABLEKS                       R2 R3 K5 ["_explorerController"]
       32 GETUPVAL                         R4 2
       33 NAMECALL                         R2 R2 K6 ["handleDeletedFolder"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["deleteFolderAsync"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R3 K2 ["andThen"]
       12 CALL                             R3 2 1
       13 DUPCLOSURE                       R5 K3 [PROTO_38]
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R3 K4 ["catch"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R0 K2 ["_renderItems"]
        7 GETTABLE                         R3 R4 R1
        8 GETTABLEKS                       R4 R0 K3 ["_itemsCache"]
       10 GETTABLEKS                       R6 R2 K4 ["Uid"]
       12 MOVE                             R7 R3
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R9 R10 K5 ["AssetInfoField"]
       16 GETTABLEKS                       R8 R9 K6 ["AssetType"]
       18 NAMECALL                         R4 R4 K7 ["getItemField"]
       20 CALL                             R4 4 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K8 ["keys"]
       24 GETTABLEKS                       R7 R0 K9 ["_selection"]
       26 CALL                             R6 1 1
       27 LENGTH                           R5 R6
       28 JUMPIFNOTEQKN                    R5 K10 [1] ; [+30]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K6 ["AssetType"]
       33 GETTABLEKS                       R5 R6 K11 ["Place"]
       35 JUMPIFNOTEQ                      R4 R5 ; [+23]
       37 GETTABLEKS                       R5 R0 K3 ["_itemsCache"]
       39 GETTABLEKS                       R7 R2 K4 ["Uid"]
       41 MOVE                             R8 R3
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R10 R11 K5 ["AssetInfoField"]
       45 GETTABLEKS                       R9 R10 K12 ["AssetId"]
       47 NAMECALL                         R5 R5 K7 ["getItemField"]
       49 CALL                             R5 4 1
       50 NAMECALL                         R6 R0 K13 ["getPlugin"]
       52 CALL                             R6 1 1
       53 LOADK                            R8 K14 ["OnOpenPlace"]
       54 MOVE                             R9 R5
       55 NAMECALL                         R6 R6 K15 ["Invoke"]
       57 CALL                             R6 3 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R5 R0 K16 ["_analyticsState"]
       61 SETTABLEKS                       R1 R5 K17 ["Position"]
       63 GETTABLEKS                       R5 R0 K16 ["_analyticsState"]
       65 LOADK                            R6 K18 ["double_click"]
       66 SETTABLEKS                       R6 R5 K19 ["Action"]
       68 GETUPVAL                         R5 2
       69 JUMPIFNOT                        R5 ; [+20]
       70 GETUPVAL                         R5 3
       71 CALL                             R5 0 1
       72 JUMPIFNOT                        R5 ; [+17]
       73 NAMECALL                         R5 R0 K20 ["_createInsertJobData"]
       75 CALL                             R5 1 1
       76 GETTABLEKS                       R6 R0 K0 ["_pluginController"]
       78 NAMECALL                         R6 R6 K13 ["getPlugin"]
       80 CALL                             R6 1 1
       81 LOADK                            R8 K21 ["AssetInsertController"]
       82 NAMECALL                         R6 R6 K22 ["GetPluginComponent"]
       84 CALL                             R6 2 1
       85 MOVE                             R9 R5
       86 NAMECALL                         R7 R6 K23 ["DispatchInsertJobAsync"]
       88 CALL                             R7 2 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R5 4
       91 MOVE                             R6 R0
       92 MOVE                             R7 R2
       93 GETTABLEKS                       R8 R0 K24 ["_networking"]
       95 CALL                             R5 3 0
       96 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_51:
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
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETTABLEKS                       R4 R2 K5 ["Type"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K6 ["ScopeType"]
       33 GETTABLEKS                       R5 R6 K7 ["RecentUploads"]
       35 JUMPIFNOTEQ                      R4 R5 ; [+2]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R0 K8 ["_searchController"]
       40 NAMECALL                         R4 R4 K9 ["getShowSearchOptions"]
       42 CALL                             R4 1 1
       43 JUMPIFNOT                        R4 ; [+50]
       44 GETTABLEKS                       R4 R0 K8 ["_searchController"]
       46 NAMECALL                         R4 R4 K10 ["getSearchOptions"]
       48 CALL                             R4 1 1
       49 DUPTABLE                         R5 K14 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       50 GETTABLEKS                       R6 R0 K8 ["_searchController"]
       52 NAMECALL                         R6 R6 K15 ["getSearchTerm"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K11 ["SearchTerm"]
       57 GETTABLEKS                       R6 R4 K12 ["AssetType"]
       59 SETTABLEKS                       R6 R5 K12 ["AssetType"]
       61 GETTABLEKS                       R6 R4 K13 ["ScopeInfo"]
       63 SETTABLEKS                       R6 R5 K13 ["ScopeInfo"]
       65 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
       67 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       69 GETTABLEKS                       R8 R9 K2 ["Uid"]
       71 NAMECALL                         R6 R6 K3 ["getScope"]
       73 CALL                             R6 2 1
       74 LOADB                            R7 1
       75 SETTABLEKS                       R7 R6 K16 ["Loading"]
       77 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       79 NAMECALL                         R7 R0 K17 ["_getNewItemsHandler"]
       81 CALL                             R7 2 1
       82 GETTABLEKS                       R8 R0 K18 ["_networking"]
       84 MOVE                             R10 R5
       85 GETTABLEKS                       R11 R6 K4 ["NextPageToken"]
       87 MOVE                             R12 R7
       88 GETTABLEKS                       R13 R0 K19 ["_fetchAssetsErrorCallback"]
       90 NAMECALL                         R8 R8 K20 ["searchAssetsAsync"]
       92 CALL                             R8 5 0
       93 RETURN                           R0 0
       94 GETTABLEKS                       R4 R0 K21 ["_pluginController"]
       96 NAMECALL                         R4 R4 K22 ["getCurrentScope"]
       98 CALL                             R4 1 1
       99 MOVE                             R7 R4
      100 NAMECALL                         R5 R0 K17 ["_getNewItemsHandler"]
      102 CALL                             R5 2 1
      103 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      105 GETTABLEKS                       R8 R4 K2 ["Uid"]
      107 NAMECALL                         R6 R6 K3 ["getScope"]
      109 CALL                             R6 2 1
      110 JUMPIF                           R6 ; [+7]
      111 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      113 GETTABLEKS                       R8 R4 K2 ["Uid"]
      115 NAMECALL                         R6 R6 K23 ["addScope"]
      117 CALL                             R6 2 1
      118 LOADB                            R7 1
      119 SETTABLEKS                       R7 R6 K16 ["Loading"]
      121 GETTABLEKS                       R7 R0 K18 ["_networking"]
      123 MOVE                             R9 R4
      124 GETTABLEKS                       R10 R6 K4 ["NextPageToken"]
      126 MOVE                             R11 R5
      127 GETTABLEKS                       R12 R0 K19 ["_fetchAssetsErrorCallback"]
      129 NAMECALL                         R7 R7 K24 ["fetchAssetsAsync"]
      131 CALL                             R7 5 0
      132 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_55:
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

PROTO_56:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_66:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_69:
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

PROTO_76:
        0 RETURN                           R0 0

PROTO_77:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_78:
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
      109 GETTABLEKS                       R19 R20 K27 ["DefaultSort"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R22 R0 K6 ["Src"]
      116 GETTABLEKS                       R21 R22 K19 ["Util"]
      118 GETTABLEKS                       R20 R21 K28 ["getAssetInfosSlice"]
      120 CALL                             R19 1 1
      121 GETIMPORT                        R20 K5 [require]
      123 GETTABLEKS                       R23 R0 K6 ["Src"]
      125 GETTABLEKS                       R22 R23 K19 ["Util"]
      127 GETTABLEKS                       R21 R22 K29 ["insertItems"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R24 R0 K6 ["Src"]
      134 GETTABLEKS                       R23 R24 K19 ["Util"]
      136 GETTABLEKS                       R22 R23 K30 ["isInsertable"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K5 [require]
      141 GETTABLEKS                       R25 R0 K6 ["Src"]
      143 GETTABLEKS                       R24 R25 K19 ["Util"]
      145 GETTABLEKS                       R23 R24 K31 ["logIfDebug"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K5 [require]
      150 GETTABLEKS                       R26 R0 K6 ["Src"]
      152 GETTABLEKS                       R25 R26 K19 ["Util"]
      154 GETTABLEKS                       R24 R25 K32 ["renderContextMenu"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R27 R0 K6 ["Src"]
      161 GETTABLEKS                       R26 R27 K33 ["Flags"]
      163 GETTABLEKS                       R25 R26 K34 ["getEFAssetInsertComponentEnabled"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K6 ["Src"]
      170 GETTABLEKS                       R27 R28 K33 ["Flags"]
      172 GETTABLEKS                       R26 R27 K35 ["getFFlagEnableAssetInserter"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K6 ["Src"]
      179 GETTABLEKS                       R28 R29 K33 ["Flags"]
      181 GETTABLEKS                       R27 R28 K36 ["getFFlagAmrContextMenuRefactor"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R30 R0 K6 ["Src"]
      188 GETTABLEKS                       R29 R30 K33 ["Flags"]
      190 GETTABLEKS                       R28 R29 K37 ["getFFlagAmrRecents"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K5 [require]
      195 GETTABLEKS                       R31 R0 K6 ["Src"]
      197 GETTABLEKS                       R30 R31 K33 ["Flags"]
      199 GETTABLEKS                       R29 R30 K38 ["getFFlagAmrSearchAndHistory"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R32 R0 K6 ["Src"]
      206 GETTABLEKS                       R31 R32 K33 ["Flags"]
      208 GETTABLEKS                       R30 R31 K39 ["getFFlagAmrFixNetworkingEpochs"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K5 [require]
      213 GETTABLEKS                       R33 R0 K6 ["Src"]
      215 GETTABLEKS                       R32 R33 K33 ["Flags"]
      217 GETTABLEKS                       R31 R32 K40 ["getFFlagAmrOrganizationFoundation"]
      219 CALL                             R30 1 1
      220 LOADK                            R33 K41 ["ItemsController"]
      221 NAMECALL                         R31 R6 K42 ["extend"]
      223 CALL                             R31 2 1
      224 DUPCLOSURE                       R32 K43 [PROTO_0]
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R17
      228 DUPCLOSURE                       R33 K44 [PROTO_13]
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R31
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R28
      242 SETTABLEKS                       R33 R31 K45 ["new"]
      244 DUPCLOSURE                       R33 K46 [PROTO_14]
      245 CAPTURE                          VAL R31
      246 SETTABLEKS                       R33 R31 K47 ["mock"]
      248 DUPCLOSURE                       R33 K48 [PROTO_15]
      249 SETTABLEKS                       R33 R31 K49 ["getIsMock"]
      251 DUPCLOSURE                       R33 K50 [PROTO_16]
      252 CAPTURE                          VAL R14
      253 SETTABLEKS                       R33 R31 K51 ["destroy"]
      255 DUPCLOSURE                       R33 K52 [PROTO_18]
      256 CAPTURE                          VAL R29
      257 SETTABLEKS                       R33 R31 K53 ["_getNewItemsHandler"]
      259 DUPCLOSURE                       R33 K54 [PROTO_19]
      260 CAPTURE                          VAL R30
      261 SETTABLEKS                       R33 R31 K55 ["_createRenderItems"]
      263 DUPCLOSURE                       R33 K56 [PROTO_20]
      264 CAPTURE                          VAL R2
      265 SETTABLEKS                       R33 R31 K57 ["clearRecent"]
      267 DUPCLOSURE                       R33 K58 [PROTO_21]
      268 CAPTURE                          VAL R18
      269 SETTABLEKS                       R33 R31 K59 ["_startNewScopeFetch"]
      271 DUPCLOSURE                       R33 K60 [PROTO_22]
      272 CAPTURE                          VAL R29
      273 SETTABLEKS                       R33 R31 K61 ["_clearItems"]
      275 DUPCLOSURE                       R33 K62 [PROTO_23]
      276 CAPTURE                          VAL R18
      277 CAPTURE                          VAL R27
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R29
      280 SETTABLEKS                       R33 R31 K63 ["_clearAndFetchNewItems"]
      282 DUPCLOSURE                       R33 K64 [PROTO_24]
      283 SETTABLEKS                       R33 R31 K65 ["getSearchFolderCount"]
      285 DUPCLOSURE                       R33 K66 [PROTO_25]
      286 SETTABLEKS                       R33 R31 K67 ["setShowAllSearchFolders"]
      288 DUPCLOSURE                       R33 K68 [PROTO_26]
      289 SETTABLEKS                       R33 R31 K69 ["getShowAllSearchFolders"]
      291 DUPCLOSURE                       R33 K70 [PROTO_27]
      292 CAPTURE                          VAL R8
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R29
      295 CAPTURE                          VAL R30
      296 SETTABLEKS                       R33 R31 K71 ["_clearAndFetchSearchItems"]
      298 DUPCLOSURE                       R33 K72 [PROTO_28]
      299 CAPTURE                          VAL R18
      300 CAPTURE                          VAL R29
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R33 R31 K73 ["refreshItems"]
      304 DUPCLOSURE                       R33 K74 [PROTO_31]
      305 CAPTURE                          VAL R22
      306 CAPTURE                          VAL R16
      307 SETTABLEKS                       R33 R31 K75 ["_requestCreateFolder"]
      309 DUPCLOSURE                       R33 K76 [PROTO_34]
      310 CAPTURE                          VAL R3
      311 CAPTURE                          VAL R22
      312 SETTABLEKS                       R33 R31 K77 ["_requestRenameFolder"]
      314 DUPCLOSURE                       R33 K78 [PROTO_35]
      315 SETTABLEKS                       R33 R31 K79 ["uploadStagedFolder"]
      317 DUPCLOSURE                       R33 K80 [PROTO_36]
      318 CAPTURE                          VAL R16
      319 SETTABLEKS                       R33 R31 K81 ["uploadStagedFolderPath"]
      321 DUPCLOSURE                       R33 K82 [PROTO_39]
      322 CAPTURE                          VAL R22
      323 SETTABLEKS                       R33 R31 K83 ["requestDeleteFolder"]
      325 DUPCLOSURE                       R33 K84 [PROTO_40]
      326 CAPTURE                          VAL R32
      327 SETTABLEKS                       R33 R31 K85 ["_createInsertJobData"]
      329 DUPCLOSURE                       R33 K86 [PROTO_41]
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R7
      332 CAPTURE                          VAL R24
      333 CAPTURE                          VAL R25
      334 CAPTURE                          VAL R20
      335 SETTABLEKS                       R33 R31 K87 ["handleDoubleClick"]
      337 DUPCLOSURE                       R33 K88 [PROTO_42]
      338 SETTABLEKS                       R33 R31 K89 ["setLastItemClicked"]
      340 DUPCLOSURE                       R33 K90 [PROTO_43]
      341 CAPTURE                          VAL R19
      342 SETTABLEKS                       R33 R31 K91 ["changeSelection"]
      344 DUPCLOSURE                       R33 K92 [PROTO_44]
      345 SETTABLEKS                       R33 R31 K93 ["moveSelection"]
      347 DUPCLOSURE                       R33 K94 [PROTO_45]
      348 SETTABLEKS                       R33 R31 K95 ["syncSelectionIndices"]
      350 DUPCLOSURE                       R33 K96 [PROTO_46]
      351 CAPTURE                          VAL R7
      352 SETTABLEKS                       R33 R31 K97 ["getSingleItemSelected"]
      354 DUPCLOSURE                       R33 K98 [PROTO_47]
      355 SETTABLEKS                       R33 R31 K99 ["getItemInfo"]
      357 DUPCLOSURE                       R33 K100 [PROTO_48]
      358 CAPTURE                          VAL R7
      359 CAPTURE                          VAL R3
      360 SETTABLEKS                       R33 R31 K101 ["getSelectionIdsHelper"]
      362 DUPCLOSURE                       R33 K102 [PROTO_49]
      363 SETTABLEKS                       R33 R31 K103 ["getItemsCache"]
      365 DUPCLOSURE                       R33 K104 [PROTO_50]
      366 SETTABLEKS                       R33 R31 K105 ["getRenderItems"]
      368 DUPCLOSURE                       R33 K106 [PROTO_51]
      369 CAPTURE                          VAL R27
      370 CAPTURE                          VAL R3
      371 SETTABLEKS                       R33 R31 K107 ["requestNextPage"]
      373 DUPCLOSURE                       R33 K108 [PROTO_52]
      374 CAPTURE                          VAL R3
      375 CAPTURE                          VAL R21
      376 SETTABLEKS                       R33 R31 K109 ["selectionHasInsertableAssets"]
      378 DUPCLOSURE                       R33 K110 [PROTO_53]
      379 CAPTURE                          VAL R3
      380 SETTABLEKS                       R33 R31 K111 ["getAssetTypes"]
      382 DUPCLOSURE                       R33 K112 [PROTO_54]
      383 CAPTURE                          VAL R10
      384 SETTABLEKS                       R33 R31 K113 ["getCreators"]
      386 DUPCLOSURE                       R33 K114 [PROTO_55]
      387 CAPTURE                          VAL R8
      388 SETTABLEKS                       R33 R31 K115 ["_updateSortFilter"]
      390 DUPCLOSURE                       R33 K116 [PROTO_56]
      391 SETTABLEKS                       R33 R31 K117 ["getFilters"]
      393 DUPCLOSURE                       R33 K118 [PROTO_57]
      394 CAPTURE                          VAL R9
      395 SETTABLEKS                       R33 R31 K119 ["_addFilter"]
      397 DUPCLOSURE                       R33 K120 [PROTO_58]
      398 SETTABLEKS                       R33 R31 K121 ["_removeFilter"]
      400 DUPCLOSURE                       R33 K122 [PROTO_59]
      401 CAPTURE                          VAL R3
      402 SETTABLEKS                       R33 R31 K123 ["_clearAssetTypeFilter"]
      404 DUPCLOSURE                       R33 K124 [PROTO_60]
      405 SETTABLEKS                       R33 R31 K125 ["hasFilter"]
      407 DUPCLOSURE                       R33 K126 [PROTO_61]
      408 SETTABLEKS                       R33 R31 K127 ["toggleFilter"]
      410 DUPCLOSURE                       R33 K128 [PROTO_62]
      411 CAPTURE                          VAL R3
      412 SETTABLEKS                       R33 R31 K129 ["togglePackagesFilter"]
      414 DUPCLOSURE                       R33 K130 [PROTO_63]
      415 CAPTURE                          VAL R3
      416 SETTABLEKS                       R33 R31 K131 ["toggleArchivedFilter"]
      418 DUPCLOSURE                       R33 K132 [PROTO_64]
      419 CAPTURE                          VAL R3
      420 SETTABLEKS                       R33 R31 K133 ["clearFilters"]
      422 DUPCLOSURE                       R33 K134 [PROTO_65]
      423 SETTABLEKS                       R33 R31 K135 ["getSorts"]
      425 DUPCLOSURE                       R33 K136 [PROTO_66]
      426 SETTABLEKS                       R33 R31 K137 ["setSorts"]
      428 DUPCLOSURE                       R33 K138 [PROTO_67]
      429 SETTABLEKS                       R33 R31 K139 ["addSort"]
      431 DUPCLOSURE                       R33 K140 [PROTO_68]
      432 SETTABLEKS                       R33 R31 K141 ["getSelection"]
      434 DUPCLOSURE                       R33 K142 [PROTO_69]
      435 SETTABLEKS                       R33 R31 K143 ["setSelection"]
      437 DUPCLOSURE                       R33 K144 [PROTO_70]
      438 CAPTURE                          VAL R8
      439 SETTABLEKS                       R33 R31 K145 ["modifySelection"]
      441 DUPCLOSURE                       R33 K146 [PROTO_71]
      442 CAPTURE                          VAL R26
      443 CAPTURE                          VAL R23
      444 CAPTURE                          VAL R3
      445 SETTABLEKS                       R33 R31 K147 ["handleRightClick"]
      447 DUPCLOSURE                       R33 K148 [PROTO_72]
      448 SETTABLEKS                       R33 R31 K149 ["getStagedEditItemPath"]
      450 DUPCLOSURE                       R33 K150 [PROTO_73]
      451 SETTABLEKS                       R33 R31 K151 ["setStagedEditItemPath"]
      453 DUPCLOSURE                       R33 K152 [PROTO_74]
      454 SETTABLEKS                       R33 R31 K153 ["removeStagedItem"]
      456 DUPCLOSURE                       R33 K154 [PROTO_75]
      457 CAPTURE                          VAL R3
      458 CAPTURE                          VAL R22
      459 SETTABLEKS                       R33 R31 K155 ["renamePlace"]
      461 DUPCLOSURE                       R33 K156 [PROTO_76]
      462 SETTABLEKS                       R33 R31 K157 ["stageNewFolder"]
      464 DUPCLOSURE                       R33 K158 [PROTO_77]
      465 SETTABLEKS                       R33 R31 K159 ["setAnalyticsInsertAction"]
      467 DUPCLOSURE                       R33 K160 [PROTO_78]
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R3
      470 CAPTURE                          VAL R1
      471 SETTABLEKS                       R33 R31 K161 ["sendInsertToAnalytics"]
      473 DUPCLOSURE                       R33 K162 [PROTO_79]
      474 SETTABLEKS                       R33 R31 K163 ["getCurrentShownScope"]
      476 DUPCLOSURE                       R33 K164 [PROTO_80]
      477 SETTABLEKS                       R33 R31 K165 ["getPlugin"]
      479 RETURN                           R31 1
