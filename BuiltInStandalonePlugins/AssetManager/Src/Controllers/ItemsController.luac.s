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
       48 JUMP                             ; [+6]
       49 GETUPVAL                         R1 0
       50 MOVE                             R3 R0
       51 LOADB                            R4 1
       52 NAMECALL                         R1 R1 K11 ["_startNewScopeFetch"]
       54 CALL                             R1 3 0
       55 GETUPVAL                         R1 0
       56 NAMECALL                         R1 R1 K12 ["_createRenderItems"]
       58 CALL                             R1 1 0
       59 GETTABLEKS                       R1 R0 K13 ["Type"]
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K14 ["ScopeType"]
       64 GETTABLEKS                       R2 R3 K15 ["ProjectPlaces"]
       66 JUMPIFNOTEQ                      R1 R2 ; [+5]
       68 GETUPVAL                         R1 0
       69 NAMECALL                         R1 R1 K16 ["_clearAssetTypeFilter"]
       71 CALL                             R1 1 0
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K17 ["_analyticsState"]
       75 LOADK                            R2 K18 ["browse"]
       76 SETTABLEKS                       R2 R1 K19 ["Source"]
       78 RETURN                           R0 0

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
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+47]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["_itemsCache"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R3 R3 K3 ["addRecent"]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R4 2
       22 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R3 R4 K0 ["Uid"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K5 ["RecentUploads"]
       30 GETTABLEKS                       R4 R5 K0 ["Uid"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+28]
       34 GETUPVAL                         R3 2
       35 NAMECALL                         R3 R3 K6 ["_createRenderItems"]
       37 CALL                             R3 1 0
       38 LOADN                            R3 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R4 R7 K7 ["_renderItems"]
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 FORGPREP                         R4
       45 GETTABLEKS                       R9 R0 K8 ["Path"]
       47 JUMPIFNOTEQ                      R8 R9 ; [+3]
       49 MOVE                             R3 R7
       50 JUMP                             ; [+2]
       51 FORGLOOP                         R4 2 ; [-7]
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R4 R5 K9 ["_layoutController"]
       56 MOVE                             R6 R3
       57 NAMECALL                         R4 R4 K10 ["scrollToItem"]
       59 CALL                             R4 2 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K11 ["_searchController"]
       64 NAMECALL                         R3 R3 K12 ["getShowSearchOptions"]
       66 CALL                             R3 1 1
       67 JUMPIFNOT                        R3 ; [+1]
       68 RETURN                           R0 0
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R5 R6 K13 ["_pluginController"]
       72 NAMECALL                         R5 R5 K14 ["getCurrentScope"]
       74 CALL                             R5 1 1
       75 GETTABLEKS                       R4 R5 K0 ["Uid"]
       77 JUMPIFEQ                         R2 R4 ; [+2]
       79 LOADB                            R3 0 +1
       80 LOADB                            R3 1
       81 JUMPIF                           R3 ; [+1]
       82 RETURN                           R0 0
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R4 R5 K2 ["_itemsCache"]
       86 MOVE                             R6 R2
       87 NAMECALL                         R4 R4 K15 ["hasScope"]
       89 CALL                             R4 2 1
       90 JUMPIFNOT                        R4 ; [+22]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R4 R5 K2 ["_itemsCache"]
       94 MOVE                             R6 R0
       95 MOVE                             R7 R2
       96 NAMECALL                         R4 R4 K16 ["addItem"]
       98 CALL                             R4 3 0
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R5 R6 K13 ["_pluginController"]
      102 NAMECALL                         R5 R5 K14 ["getCurrentScope"]
      104 CALL                             R5 1 1
      105 GETTABLEKS                       R4 R5 K0 ["Uid"]
      107 JUMPIFNOTEQ                      R4 R2 ; [+5]
      109 GETUPVAL                         R4 2
      110 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      112 CALL                             R4 1 0
      113 RETURN                           R0 0

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
      227 CAPTURE                          UPVAL U1
      228 NAMECALL                         R8 R8 K69 ["Connect"]
      230 CALL                             R8 2 -1
      231 FASTCALL                         TABLE_INSERT ; [+2]
      232 GETIMPORT                        R6 K72 [table.insert]
      234 CALL                             R6 -1 0
      235 GETTABLEKS                       R7 R2 K23 ["_connections"]
      237 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      239 NAMECALL                         R8 R8 K73 ["getPlugin"]
      241 CALL                             R8 1 1
      242 LOADK                            R10 K74 ["OnAddPlaceSucceeded"]
      243 NEWCLOSURE                       R11 P2
      244 CAPTURE                          VAL R2
      245 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      247 CALL                             R8 3 -1
      248 FASTCALL                         TABLE_INSERT ; [+2]
      249 GETIMPORT                        R6 K72 [table.insert]
      251 CALL                             R6 -1 0
      252 GETTABLEKS                       R7 R2 K23 ["_connections"]
      254 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      256 NAMECALL                         R8 R8 K73 ["getPlugin"]
      258 CALL                             R8 1 1
      259 LOADK                            R10 K76 ["OnRemovePlaceFromGameSucceeded"]
      260 NEWCLOSURE                       R11 P3
      261 CAPTURE                          VAL R2
      262 CAPTURE                          UPVAL U7
      263 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      265 CALL                             R8 3 -1
      266 FASTCALL                         TABLE_INSERT ; [+2]
      267 GETIMPORT                        R6 K72 [table.insert]
      269 CALL                             R6 -1 0
      270 GETTABLEKS                       R7 R2 K23 ["_connections"]
      272 GETTABLEKS                       R8 R2 K2 ["_pluginController"]
      274 NAMECALL                         R8 R8 K73 ["getPlugin"]
      276 CALL                             R8 1 1
      277 LOADK                            R10 K77 ["OnRenamePlaceSucceeded"]
      278 NEWCLOSURE                       R11 P4
      279 CAPTURE                          VAL R2
      280 CAPTURE                          UPVAL U7
      281 CAPTURE                          UPVAL U1
      282 NAMECALL                         R8 R8 K75 ["OnInvoke"]
      284 CALL                             R8 3 -1
      285 FASTCALL                         TABLE_INSERT ; [+2]
      286 GETIMPORT                        R6 K72 [table.insert]
      288 CALL                             R6 -1 0
      289 GETTABLEKS                       R7 R2 K23 ["_connections"]
      291 GETTABLEKS                       R9 R2 K2 ["_pluginController"]
      293 GETTABLEKS                       R8 R9 K78 ["OnNewAssetFetched"]
      295 NEWCLOSURE                       R10 P5
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          UPVAL U9
      298 CAPTURE                          VAL R2
      299 CAPTURE                          UPVAL U10
      300 NAMECALL                         R8 R8 K69 ["Connect"]
      302 CALL                             R8 2 -1
      303 FASTCALL                         TABLE_INSERT ; [+2]
      304 GETIMPORT                        R6 K72 [table.insert]
      306 CALL                             R6 -1 0
      307 GETTABLEKS                       R7 R2 K23 ["_connections"]
      309 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      311 GETTABLEKS                       R8 R9 K79 ["OnSearchRequested"]
      313 NEWCLOSURE                       R10 P6
      314 CAPTURE                          VAL R2
      315 NAMECALL                         R8 R8 K69 ["Connect"]
      317 CALL                             R8 2 -1
      318 FASTCALL                         TABLE_INSERT ; [+2]
      319 GETIMPORT                        R6 K72 [table.insert]
      321 CALL                             R6 -1 0
      322 GETTABLEKS                       R7 R2 K23 ["_connections"]
      324 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      326 GETTABLEKS                       R8 R9 K80 ["OnShowSearchOptionsChanged"]
      328 NEWCLOSURE                       R10 P7
      329 CAPTURE                          VAL R2
      330 CAPTURE                          UPVAL U8
      331 NAMECALL                         R8 R8 K69 ["Connect"]
      333 CALL                             R8 2 -1
      334 FASTCALL                         TABLE_INSERT ; [+2]
      335 GETIMPORT                        R6 K72 [table.insert]
      337 CALL                             R6 -1 0
      338 GETTABLEKS                       R7 R2 K23 ["_connections"]
      340 GETTABLEKS                       R9 R2 K4 ["_searchController"]
      342 GETTABLEKS                       R8 R9 K81 ["OnIsDefaultSearchStateChanged"]
      344 NEWCLOSURE                       R10 P8
      345 CAPTURE                          VAL R2
      346 NAMECALL                         R8 R8 K69 ["Connect"]
      348 CALL                             R8 2 -1
      349 FASTCALL                         TABLE_INSERT ; [+2]
      350 GETIMPORT                        R6 K72 [table.insert]
      352 CALL                             R6 -1 0
      353 GETUPVAL                         R6 8
      354 CALL                             R6 0 1
      355 JUMPIFNOT                        R6 ; [+30]
      356 GETTABLEKS                       R7 R2 K23 ["_connections"]
      358 GETTABLEKS                       R9 R2 K5 ["_layoutController"]
      360 GETTABLEKS                       R8 R9 K82 ["OnBrowserLayoutChanged"]
      362 NEWCLOSURE                       R10 P9
      363 CAPTURE                          VAL R2
      364 NAMECALL                         R8 R8 K69 ["Connect"]
      366 CALL                             R8 2 -1
      367 FASTCALL                         TABLE_INSERT ; [+2]
      368 GETIMPORT                        R6 K72 [table.insert]
      370 CALL                             R6 -1 0
      371 GETTABLEKS                       R7 R2 K23 ["_connections"]
      373 GETTABLEKS                       R9 R2 K5 ["_layoutController"]
      375 GETTABLEKS                       R8 R9 K83 ["OnGridStateUpdated"]
      377 NEWCLOSURE                       R10 P10
      378 CAPTURE                          VAL R2
      379 NAMECALL                         R8 R8 K69 ["Connect"]
      381 CALL                             R8 2 -1
      382 FASTCALL                         TABLE_INSERT ; [+2]
      383 GETIMPORT                        R6 K72 [table.insert]
      385 CALL                             R6 -1 0
      386 RETURN                           R2 1

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

PROTO_21:
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

PROTO_22:
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
       35 MOVE                             R4 R1
       36 LOADB                            R5 1
       37 NAMECALL                         R2 R0 K9 ["_startNewScopeFetch"]
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
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
       50 GETTABLEKS                       R2 R0 K9 ["_itemsCache"]
       52 GETTABLEKS                       R4 R1 K10 ["Uid"]
       54 NAMECALL                         R2 R2 K17 ["addScope"]
       56 CALL                             R2 2 1
       57 LOADB                            R3 1
       58 SETTABLEKS                       R3 R2 K14 ["Loading"]
       60 GETTABLEKS                       R3 R0 K12 ["OnScopeFetchProgressChanged"]
       62 GETTABLEKS                       R5 R2 K13 ["FetchProgress"]
       64 GETTABLEKS                       R6 R2 K14 ["Loading"]
       66 GETTABLEKS                       R7 R1 K10 ["Uid"]
       68 NAMECALL                         R3 R3 K15 ["Fire"]
       70 CALL                             R3 4 0
       71 MOVE                             R5 R1
       72 NAMECALL                         R3 R0 K18 ["_getNewItemsHandler"]
       74 CALL                             R3 2 1
       75 GETTABLEKS                       R4 R0 K19 ["_networking"]
       77 MOVE                             R6 R1
       78 GETTABLEKS                       R7 R2 K20 ["NextPageToken"]
       80 MOVE                             R8 R3
       81 GETTABLEKS                       R9 R0 K21 ["_fetchAssetsErrorCallback"]
       83 NAMECALL                         R4 R4 K22 ["fetchAssetsAsync"]
       85 CALL                             R4 5 0
       86 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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
       14 JUMPIF                           R3 ; [+40]
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
       28 GETTABLEKS                       R6 R0 K0 ["_explorerController"]
       30 NEWTABLE                         R8 0 1
       32 GETTABLEKS                       R9 R0 K8 ["_itemsCache"]
       34 MOVE                             R11 R5
       35 MOVE                             R12 R1
       36 NAMECALL                         R9 R9 K9 ["getItem"]
       38 CALL                             R9 3 -1
       39 SETLIST                          R8 R9 -1 [1]
       41 JUMPIF                           R4 ; [+2]
       42 MOVE                             R9 R5
       43 JUMP                             ; [+1]
       44 LOADNIL                          R9
       45 NAMECALL                         R6 R6 K10 ["convertFoldersToScopes"]
       47 CALL                             R6 3 0
       48 GETTABLEKS                       R6 R0 K0 ["_explorerController"]
       50 MOVE                             R8 R2
       51 NAMECALL                         R6 R6 K1 ["getScopeWithUid"]
       53 CALL                             R6 2 1
       54 MOVE                             R3 R6
       55 JUMPIFNOT                        R4 ; [+5]
       56 GETTABLEKS                       R5 R0 K2 ["_searchController"]
       58 NAMECALL                         R5 R5 K11 ["hideSearchOptions"]
       60 CALL                             R5 1 0
       61 GETTABLEKS                       R5 R0 K12 ["_pluginController"]
       63 MOVE                             R7 R3
       64 NAMECALL                         R5 R5 K13 ["setCurrentScope"]
       66 CALL                             R5 2 0
       67 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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
       79 GETUPVAL                         R4 7
       80 LOADNIL                          R5
       81 LOADNIL                          R6
       82 FORGPREP                         R4
       83 GETTABLE                         R9 R1 R8
       84 JUMPIF                           R9 ; [+12]
       85 GETUPVAL                         R10 2
       86 GETTABLEKS                       R9 R10 K6 ["_itemsCache"]
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R11 R12 K5 ["Uid"]
       91 MOVE                             R12 R2
       92 MOVE                             R13 R8
       93 NAMECALL                         R9 R9 K14 ["moveItem"]
       95 CALL                             R9 4 0
       96 LOADB                            R3 1
       97 FORGLOOP                         R4 2 ; [-15]
       99 JUMPIFNOT                        R3 ; [+4]
      100 GETUPVAL                         R4 2
      101 NAMECALL                         R4 R4 K15 ["_createRenderItems"]
      103 CALL                             R4 1 0
      104 GETUPVAL                         R5 2
      105 GETTABLEKS                       R4 R5 K3 ["_explorerController"]
      107 GETUPVAL                         R7 3
      108 GETTABLEKS                       R6 R7 K5 ["Uid"]
      110 MOVE                             R7 R2
      111 GETUPVAL                         R8 7
      112 MOVE                             R9 R1
      113 NAMECALL                         R4 R4 K16 ["moveScopes"]
      115 CALL                             R4 5 0
      116 RETURN                           R0 0

PROTO_32:
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
       54 GETTABLEKS                       R10 R0 K15 ["_networking"]
       56 MOVE                             R12 R9
       57 MOVE                             R13 R4
       58 MOVE                             R14 R7
       59 MOVE                             R15 R8
       60 NAMECALL                         R10 R10 K16 ["moveItemsAsync"]
       62 CALL                             R10 5 1
       63 NEWCLOSURE                       R12 P0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R4
       72 NAMECALL                         R10 R10 K17 ["andThen"]
       74 CALL                             R10 2 0
       75 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_43:
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
       13 DUPCLOSURE                       R5 K3 [PROTO_42]
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R3 K4 ["catch"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K8 ["count"]
       24 GETTABLEKS                       R6 R0 K9 ["_selection"]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKN                    R5 K10 [1] ; [+30]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K6 ["AssetType"]
       32 GETTABLEKS                       R6 R7 K11 ["Place"]
       34 JUMPIFNOTEQ                      R4 R6 ; [+23]
       36 GETTABLEKS                       R6 R0 K3 ["_itemsCache"]
       38 GETTABLEKS                       R8 R2 K4 ["Uid"]
       40 MOVE                             R9 R3
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K5 ["AssetInfoField"]
       44 GETTABLEKS                       R10 R11 K12 ["AssetId"]
       46 NAMECALL                         R6 R6 K7 ["getItemField"]
       48 CALL                             R6 4 1
       49 NAMECALL                         R7 R0 K13 ["getPlugin"]
       51 CALL                             R7 1 1
       52 LOADK                            R9 K14 ["OnOpenPlace"]
       53 MOVE                             R10 R6
       54 NAMECALL                         R7 R7 K15 ["Invoke"]
       56 CALL                             R7 3 0
       57 RETURN                           R0 0
       58 JUMPIFNOTEQKN                    R5 K10 [1] ; [+13]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K6 ["AssetType"]
       63 GETTABLEKS                       R6 R7 K16 ["Folder"]
       65 JUMPIFNOTEQ                      R4 R6 ; [+6]
       67 MOVE                             R8 R3
       68 NAMECALL                         R6 R0 K17 ["_goToFolder"]
       70 CALL                             R6 2 0
       71 RETURN                           R0 0
       72 GETTABLEKS                       R6 R0 K18 ["_analyticsState"]
       74 SETTABLEKS                       R1 R6 K19 ["Position"]
       76 GETTABLEKS                       R6 R0 K18 ["_analyticsState"]
       78 LOADK                            R7 K20 ["double_click"]
       79 SETTABLEKS                       R7 R6 K21 ["Action"]
       81 GETUPVAL                         R6 2
       82 JUMPIFNOT                        R6 ; [+20]
       83 GETUPVAL                         R6 3
       84 CALL                             R6 0 1
       85 JUMPIFNOT                        R6 ; [+17]
       86 NAMECALL                         R6 R0 K22 ["_createInsertJobData"]
       88 CALL                             R6 1 1
       89 GETTABLEKS                       R7 R0 K0 ["_pluginController"]
       91 NAMECALL                         R7 R7 K13 ["getPlugin"]
       93 CALL                             R7 1 1
       94 LOADK                            R9 K23 ["AssetInsertController"]
       95 NAMECALL                         R7 R7 K24 ["GetPluginComponent"]
       97 CALL                             R7 2 1
       98 MOVE                             R10 R6
       99 NAMECALL                         R8 R7 K25 ["DispatchInsertJobAsync"]
      101 CALL                             R8 2 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R6 4
      104 MOVE                             R7 R0
      105 MOVE                             R8 R2
      106 GETTABLEKS                       R9 R0 K26 ["_networking"]
      108 CALL                             R6 3 0
      109 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_52:
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

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_59:
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

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_70:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_77:
        0 GETTABLEKS                       R2 R0 K0 ["_stagedEditItemPath"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        7 GETTABLEKS                       R2 R0 K1 ["OnStagedEditItemPathChanged"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
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

PROTO_80:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K10 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Archived"}]
        4 LOADK                            R4 K11 [""]
        5 SETTABLEKS                       R4 R3 K1 ["Path"]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["AssetId"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["AssetType"]
       13 GETTABLEKS                       R4 R5 K12 ["Folder"]
       15 SETTABLEKS                       R4 R3 K3 ["AssetType"]
       17 SETTABLEKS                       R1 R3 K4 ["DisplayName"]
       19 GETIMPORT                        R4 K15 [DateTime.now]
       21 CALL                             R4 0 1
       22 NAMECALL                         R4 R4 K16 ["ToIsoDate"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K5 ["Created"]
       27 GETIMPORT                        R4 K15 [DateTime.now]
       29 CALL                             R4 0 1
       30 NAMECALL                         R4 R4 K16 ["ToIsoDate"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K6 ["Modified"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K7 ["ModerationStatus"]
       38 GETTABLEKS                       R4 R5 K17 ["Approved"]
       40 SETTABLEKS                       R4 R3 K7 ["ModerationStatus"]
       42 GETTABLEKS                       R4 R0 K18 ["_explorerController"]
       44 MOVE                             R6 R2
       45 NAMECALL                         R4 R4 K19 ["getScopeRoot"]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K8 ["Creator"]
       50 LOADB                            R4 0
       51 SETTABLEKS                       R4 R3 K9 ["Archived"]
       53 GETTABLEKS                       R4 R0 K20 ["_itemsCache"]
       55 MOVE                             R6 R3
       56 GETTABLEKS                       R7 R2 K21 ["Uid"]
       58 NAMECALL                         R4 R4 K22 ["addItem"]
       60 CALL                             R4 3 0
       61 LOADK                            R6 K11 [""]
       62 NAMECALL                         R4 R0 K23 ["setStagedEditItemPath"]
       64 CALL                             R4 2 0
       65 NAMECALL                         R4 R0 K24 ["_createRenderItems"]
       67 CALL                             R4 1 0
       68 GETTABLEKS                       R4 R0 K25 ["_renderItems"]
       70 LOADNIL                          R5
       71 LOADNIL                          R6
       72 FORGPREP                         R4
       73 JUMPIFNOTEQKS                    R8 K11 [""] ; [+8]
       75 GETTABLEKS                       R9 R0 K26 ["_layoutController"]
       77 MOVE                             R11 R7
       78 NAMECALL                         R9 R9 K27 ["scrollToItem"]
       80 CALL                             R9 2 0
       81 RETURN                           R0 0
       82 FORGLOOP                         R4 2 ; [-10]
       84 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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
      136 GETTABLEKS                       R22 R23 K30 ["insertItems"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K5 [require]
      141 GETTABLEKS                       R25 R0 K6 ["Src"]
      143 GETTABLEKS                       R24 R25 K19 ["Util"]
      145 GETTABLEKS                       R23 R24 K31 ["isInsertable"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K5 [require]
      150 GETTABLEKS                       R26 R0 K6 ["Src"]
      152 GETTABLEKS                       R25 R26 K19 ["Util"]
      154 GETTABLEKS                       R24 R25 K32 ["logIfDebug"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R27 R0 K6 ["Src"]
      161 GETTABLEKS                       R26 R27 K19 ["Util"]
      163 GETTABLEKS                       R25 R26 K33 ["renderContextMenu"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R28 R0 K6 ["Src"]
      170 GETTABLEKS                       R27 R28 K34 ["Flags"]
      172 GETTABLEKS                       R26 R27 K35 ["getEFAssetInsertComponentEnabled"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R29 R0 K6 ["Src"]
      179 GETTABLEKS                       R28 R29 K34 ["Flags"]
      181 GETTABLEKS                       R27 R28 K36 ["getFFlagEnableAssetInserter"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R30 R0 K6 ["Src"]
      188 GETTABLEKS                       R29 R30 K34 ["Flags"]
      190 GETTABLEKS                       R28 R29 K37 ["getFFlagAmrContextMenuRefactor"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K5 [require]
      195 GETTABLEKS                       R31 R0 K6 ["Src"]
      197 GETTABLEKS                       R30 R31 K34 ["Flags"]
      199 GETTABLEKS                       R29 R30 K38 ["getFFlagAmrRecents"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R32 R0 K6 ["Src"]
      206 GETTABLEKS                       R31 R32 K34 ["Flags"]
      208 GETTABLEKS                       R30 R31 K39 ["getFFlagAmrOrganizationFoundation"]
      210 CALL                             R29 1 1
      211 LOADK                            R32 K40 ["ItemsController"]
      212 NAMECALL                         R30 R6 K41 ["extend"]
      214 CALL                             R30 2 1
      215 DUPCLOSURE                       R31 K42 [PROTO_0]
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R17
      219 DUPCLOSURE                       R32 K43 [PROTO_12]
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R28
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
      248 CAPTURE                          VAL R29
      249 SETTABLEKS                       R32 R30 K54 ["_createRenderItems"]
      251 DUPCLOSURE                       R32 K55 [PROTO_19]
      252 CAPTURE                          VAL R2
      253 SETTABLEKS                       R32 R30 K56 ["clearRecent"]
      255 DUPCLOSURE                       R32 K57 [PROTO_20]
      256 CAPTURE                          VAL R19
      257 SETTABLEKS                       R32 R30 K58 ["_startNewScopeFetch"]
      259 DUPCLOSURE                       R32 K59 [PROTO_21]
      260 SETTABLEKS                       R32 R30 K60 ["_clearItems"]
      262 DUPCLOSURE                       R32 K61 [PROTO_22]
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R28
      265 CAPTURE                          VAL R2
      266 SETTABLEKS                       R32 R30 K62 ["_clearAndFetchNewItems"]
      268 DUPCLOSURE                       R32 K63 [PROTO_23]
      269 SETTABLEKS                       R32 R30 K64 ["getSearchFolderCount"]
      271 DUPCLOSURE                       R32 K65 [PROTO_24]
      272 SETTABLEKS                       R32 R30 K66 ["setShowAllSearchFolders"]
      274 DUPCLOSURE                       R32 K67 [PROTO_25]
      275 SETTABLEKS                       R32 R30 K68 ["getShowAllSearchFolders"]
      277 DUPCLOSURE                       R32 K69 [PROTO_26]
      278 CAPTURE                          VAL R8
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R29
      281 SETTABLEKS                       R32 R30 K70 ["_clearAndFetchSearchItems"]
      283 DUPCLOSURE                       R32 K71 [PROTO_27]
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R3
      286 SETTABLEKS                       R32 R30 K72 ["refreshItems"]
      288 DUPCLOSURE                       R32 K73 [PROTO_28]
      289 CAPTURE                          VAL R7
      290 SETTABLEKS                       R32 R30 K74 ["getDraggedItems"]
      292 DUPCLOSURE                       R32 K75 [PROTO_29]
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R23
      295 SETTABLEKS                       R32 R30 K76 ["_goToFolder"]
      297 DUPCLOSURE                       R32 K77 [PROTO_30]
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R23
      300 DUPCLOSURE                       R33 K78 [PROTO_32]
      301 CAPTURE                          VAL R32
      302 CAPTURE                          VAL R3
      303 CAPTURE                          VAL R18
      304 CAPTURE                          VAL R16
      305 CAPTURE                          VAL R23
      306 SETTABLEKS                       R33 R30 K79 ["requestMoveSelectionToItem"]
      308 DUPCLOSURE                       R33 K80 [PROTO_35]
      309 CAPTURE                          VAL R23
      310 CAPTURE                          VAL R16
      311 SETTABLEKS                       R33 R30 K81 ["_requestCreateFolder"]
      313 DUPCLOSURE                       R33 K82 [PROTO_38]
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R23
      316 SETTABLEKS                       R33 R30 K83 ["_requestRenameFolder"]
      318 DUPCLOSURE                       R33 K84 [PROTO_39]
      319 SETTABLEKS                       R33 R30 K85 ["uploadStagedFolder"]
      321 DUPCLOSURE                       R33 K86 [PROTO_40]
      322 CAPTURE                          VAL R16
      323 SETTABLEKS                       R33 R30 K87 ["uploadStagedFolderPath"]
      325 DUPCLOSURE                       R33 K88 [PROTO_43]
      326 CAPTURE                          VAL R23
      327 SETTABLEKS                       R33 R30 K89 ["requestDeleteFolder"]
      329 DUPCLOSURE                       R33 K90 [PROTO_44]
      330 CAPTURE                          VAL R31
      331 SETTABLEKS                       R33 R30 K91 ["_createInsertJobData"]
      333 DUPCLOSURE                       R33 K92 [PROTO_45]
      334 CAPTURE                          VAL R3
      335 CAPTURE                          VAL R7
      336 CAPTURE                          VAL R25
      337 CAPTURE                          VAL R26
      338 CAPTURE                          VAL R21
      339 SETTABLEKS                       R33 R30 K93 ["handleDoubleClick"]
      341 DUPCLOSURE                       R33 K94 [PROTO_46]
      342 SETTABLEKS                       R33 R30 K95 ["setLastItemClicked"]
      344 DUPCLOSURE                       R33 K96 [PROTO_47]
      345 CAPTURE                          VAL R20
      346 SETTABLEKS                       R33 R30 K97 ["changeSelection"]
      348 DUPCLOSURE                       R33 K98 [PROTO_48]
      349 SETTABLEKS                       R33 R30 K99 ["moveSelection"]
      351 DUPCLOSURE                       R33 K100 [PROTO_49]
      352 SETTABLEKS                       R33 R30 K101 ["syncSelectionIndices"]
      354 DUPCLOSURE                       R33 K102 [PROTO_50]
      355 CAPTURE                          VAL R7
      356 SETTABLEKS                       R33 R30 K103 ["getSingleItemSelected"]
      358 DUPCLOSURE                       R33 K104 [PROTO_51]
      359 SETTABLEKS                       R33 R30 K105 ["getItemInfo"]
      361 DUPCLOSURE                       R33 K106 [PROTO_52]
      362 CAPTURE                          VAL R7
      363 CAPTURE                          VAL R3
      364 SETTABLEKS                       R33 R30 K107 ["getSelectionIdsHelper"]
      366 DUPCLOSURE                       R33 K108 [PROTO_53]
      367 SETTABLEKS                       R33 R30 K109 ["getItemsCache"]
      369 DUPCLOSURE                       R33 K110 [PROTO_54]
      370 SETTABLEKS                       R33 R30 K111 ["getRenderItems"]
      372 DUPCLOSURE                       R33 K112 [PROTO_55]
      373 CAPTURE                          VAL R28
      374 CAPTURE                          VAL R3
      375 SETTABLEKS                       R33 R30 K113 ["requestNextPage"]
      377 DUPCLOSURE                       R33 K114 [PROTO_56]
      378 CAPTURE                          VAL R3
      379 CAPTURE                          VAL R22
      380 SETTABLEKS                       R33 R30 K115 ["selectionHasInsertableAssets"]
      382 DUPCLOSURE                       R33 K116 [PROTO_57]
      383 CAPTURE                          VAL R3
      384 SETTABLEKS                       R33 R30 K117 ["getAssetTypes"]
      386 DUPCLOSURE                       R33 K118 [PROTO_58]
      387 CAPTURE                          VAL R10
      388 SETTABLEKS                       R33 R30 K119 ["getCreators"]
      390 DUPCLOSURE                       R33 K120 [PROTO_59]
      391 CAPTURE                          VAL R8
      392 SETTABLEKS                       R33 R30 K121 ["_updateSortFilter"]
      394 DUPCLOSURE                       R33 K122 [PROTO_60]
      395 SETTABLEKS                       R33 R30 K123 ["getFilters"]
      397 DUPCLOSURE                       R33 K124 [PROTO_61]
      398 CAPTURE                          VAL R9
      399 SETTABLEKS                       R33 R30 K125 ["_addFilter"]
      401 DUPCLOSURE                       R33 K126 [PROTO_62]
      402 SETTABLEKS                       R33 R30 K127 ["_removeFilter"]
      404 DUPCLOSURE                       R33 K128 [PROTO_63]
      405 CAPTURE                          VAL R3
      406 SETTABLEKS                       R33 R30 K129 ["_clearAssetTypeFilter"]
      408 DUPCLOSURE                       R33 K130 [PROTO_64]
      409 SETTABLEKS                       R33 R30 K131 ["hasFilter"]
      411 DUPCLOSURE                       R33 K132 [PROTO_65]
      412 SETTABLEKS                       R33 R30 K133 ["toggleFilter"]
      414 DUPCLOSURE                       R33 K134 [PROTO_66]
      415 CAPTURE                          VAL R3
      416 SETTABLEKS                       R33 R30 K135 ["togglePackagesFilter"]
      418 DUPCLOSURE                       R33 K136 [PROTO_67]
      419 CAPTURE                          VAL R3
      420 SETTABLEKS                       R33 R30 K137 ["toggleArchivedFilter"]
      422 DUPCLOSURE                       R33 K138 [PROTO_68]
      423 CAPTURE                          VAL R3
      424 SETTABLEKS                       R33 R30 K139 ["clearFilters"]
      426 DUPCLOSURE                       R33 K140 [PROTO_69]
      427 SETTABLEKS                       R33 R30 K141 ["getSorts"]
      429 DUPCLOSURE                       R33 K142 [PROTO_70]
      430 SETTABLEKS                       R33 R30 K143 ["setSorts"]
      432 DUPCLOSURE                       R33 K144 [PROTO_71]
      433 SETTABLEKS                       R33 R30 K145 ["addSort"]
      435 DUPCLOSURE                       R33 K146 [PROTO_72]
      436 SETTABLEKS                       R33 R30 K147 ["getSelection"]
      438 DUPCLOSURE                       R33 K148 [PROTO_73]
      439 SETTABLEKS                       R33 R30 K149 ["setSelection"]
      441 DUPCLOSURE                       R33 K150 [PROTO_74]
      442 CAPTURE                          VAL R8
      443 SETTABLEKS                       R33 R30 K151 ["modifySelection"]
      445 DUPCLOSURE                       R33 K152 [PROTO_75]
      446 CAPTURE                          VAL R27
      447 CAPTURE                          VAL R24
      448 CAPTURE                          VAL R3
      449 SETTABLEKS                       R33 R30 K153 ["handleRightClick"]
      451 DUPCLOSURE                       R33 K154 [PROTO_76]
      452 SETTABLEKS                       R33 R30 K155 ["getStagedEditItemPath"]
      454 DUPCLOSURE                       R33 K156 [PROTO_77]
      455 SETTABLEKS                       R33 R30 K157 ["setStagedEditItemPath"]
      457 DUPCLOSURE                       R33 K158 [PROTO_78]
      458 SETTABLEKS                       R33 R30 K159 ["removeStagedItem"]
      460 DUPCLOSURE                       R33 K160 [PROTO_79]
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R23
      463 SETTABLEKS                       R33 R30 K161 ["renamePlace"]
      465 DUPCLOSURE                       R33 K162 [PROTO_80]
      466 CAPTURE                          VAL R3
      467 SETTABLEKS                       R33 R30 K163 ["stageNewFolder"]
      469 DUPCLOSURE                       R33 K164 [PROTO_81]
      470 SETTABLEKS                       R33 R30 K165 ["setAnalyticsInsertAction"]
      472 DUPCLOSURE                       R33 K166 [PROTO_82]
      473 CAPTURE                          VAL R7
      474 CAPTURE                          VAL R3
      475 CAPTURE                          VAL R1
      476 SETTABLEKS                       R33 R30 K167 ["sendInsertToAnalytics"]
      478 DUPCLOSURE                       R33 K168 [PROTO_83]
      479 SETTABLEKS                       R33 R30 K169 ["getCurrentShownScope"]
      481 DUPCLOSURE                       R33 K170 [PROTO_84]
      482 SETTABLEKS                       R33 R30 K171 ["getPlugin"]
      484 RETURN                           R30 1
