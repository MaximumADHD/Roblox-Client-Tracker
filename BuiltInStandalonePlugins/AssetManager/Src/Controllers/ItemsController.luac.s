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
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R6 R6 K1 ["pretty"]
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 MOVE                             R7 R1
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 3 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
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
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K7 ["OnItemSelectionChanged"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K5 ["_selection"]
       31 NAMECALL                         R2 R2 K8 ["Fire"]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       37 GETTABLEKS                       R4 R1 K3 ["Uid"]
       39 NAMECALL                         R2 R2 K9 ["getScope"]
       41 CALL                             R2 2 1
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K10 ["OnScopeFetchProgressChanged"]
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
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       71 GETTABLEKS                       R4 R1 K15 ["Parent"]
       73 NAMECALL                         R2 R2 K4 ["hasScope"]
       75 CALL                             R2 2 1
       76 JUMPIF                           R2 ; [+15]
       77 GETUPVAL                         R2 0
       78 GETTABLEKS                       R2 R2 K16 ["_explorerController"]
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
       94 GETUPVAL                         R3 1
       95 GETTABLEKS                       R3 R3 K19 ["ScopeType"]
       97 GETTABLEKS                       R3 R3 K20 ["ProjectPlaces"]
       99 JUMPIFNOTEQ                      R2 R3 ; [+5]
      101 GETUPVAL                         R2 0
      102 NAMECALL                         R2 R2 K21 ["_clearAssetTypeFilter"]
      104 CALL                             R2 1 0
      105 GETUPVAL                         R2 2
      106 CALL                             R2 0 1
      107 JUMPIFNOT                        R2 ; [+29]
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K22 ["_lastUsedFolderRootUid"]
      111 JUMPIFEQKNIL                     R2 ; [+25]
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R2 R2 K16 ["_explorerController"]
      116 MOVE                             R4 R1
      117 NAMECALL                         R2 R2 K23 ["getScopeRoot"]
      119 CALL                             R2 2 1
      120 JUMPIFEQKNIL                     R2 ; [+8]
      122 GETTABLEKS                       R3 R2 K3 ["Uid"]
      124 GETUPVAL                         R4 0
      125 GETTABLEKS                       R4 R4 K22 ["_lastUsedFolderRootUid"]
      127 JUMPIFEQ                         R3 R4 ; [+9]
      129 GETUPVAL                         R3 0
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K24 ["_lastUsedFolderName"]
      133 GETUPVAL                         R3 0
      134 LOADNIL                          R4
      135 SETTABLEKS                       R4 R3 K22 ["_lastUsedFolderRootUid"]
      137 GETUPVAL                         R2 0
      138 GETTABLEKS                       R2 R2 K25 ["_analyticsState"]
      140 LOADK                            R3 K26 ["browse"]
      141 SETTABLEKS                       R3 R2 K27 ["Source"]
      143 GETUPVAL                         R2 0
      144 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      146 NAMECALL                         R2 R2 K29 ["getIsCompact"]
      148 CALL                             R2 1 1
      149 JUMPIFNOT                        R2 ; [+13]
      150 GETUPVAL                         R2 0
      151 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      153 NAMECALL                         R2 R2 K30 ["getShowSidebar"]
      155 CALL                             R2 1 1
      156 JUMPIFNOT                        R2 ; [+6]
      157 GETUPVAL                         R2 0
      158 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      160 NAMECALL                         R2 R2 K31 ["toggleSidebar"]
      162 CALL                             R2 1 0
      163 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_explorerController"]
        3 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["_itemsCache"]
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R1 K3 ["Uid"]
       16 NAMECALL                         R3 R3 K4 ["removeItem"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R3 0
       20 NAMECALL                         R3 R3 K5 ["_createRenderItems"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_explorerController"]
        3 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["_itemsCache"]
       14 GETTABLEKS                       R5 R1 K4 ["Uid"]
       16 MOVE                             R6 R2
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K5 ["AssetInfoField"]
       20 GETTABLEKS                       R7 R7 K6 ["DisplayName"]
       22 GETTABLEKS                       R8 R0 K7 ["Name"]
       24 NAMECALL                         R3 R3 K8 ["updateItemField"]
       26 CALL                             R3 5 0
       27 GETUPVAL                         R3 0
       28 NAMECALL                         R3 R3 K9 ["_createRenderItems"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["_handleOnAddToGame"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["Uid"]
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R2 R0 K1 ["Creator"]
        9 GETTABLEKS                       R2 R2 K0 ["Uid"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["_itemsCache"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K3 ["addRecent"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K4 ["getCurrentShownScope"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K0 ["Uid"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["RecentUploads"]
       27 GETTABLEKS                       R4 R4 K0 ["Uid"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+28]
       31 GETUPVAL                         R3 1
       32 NAMECALL                         R3 R3 K6 ["_createRenderItems"]
       34 CALL                             R3 1 0
       35 LOADN                            R3 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K7 ["_renderItems"]
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETTABLEKS                       R9 R0 K8 ["Path"]
       44 JUMPIFNOTEQ                      R8 R9 ; [+3]
       46 MOVE                             R3 R7
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R4 2 ; [-7]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K9 ["_layoutController"]
       53 MOVE                             R6 R3
       54 NAMECALL                         R4 R4 K10 ["scrollToItem"]
       56 CALL                             R4 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K11 ["_searchController"]
       61 NAMECALL                         R3 R3 K12 ["getShowSearchOptions"]
       63 CALL                             R3 1 1
       64 JUMPIFNOT                        R3 ; [+1]
       65 RETURN                           R0 0
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K13 ["_pluginController"]
       69 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
       71 CALL                             R4 1 1
       72 GETTABLEKS                       R4 R4 K0 ["Uid"]
       74 JUMPIFEQ                         R2 R4 ; [+2]
       76 LOADB                            R3 0 +1
       77 LOADB                            R3 1
       78 JUMPIF                           R3 ; [+1]
       79 RETURN                           R0 0
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       83 MOVE                             R6 R2
       84 NAMECALL                         R4 R4 K15 ["hasScope"]
       86 CALL                             R4 2 1
       87 JUMPIFNOT                        R4 ; [+22]
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       91 MOVE                             R6 R0
       92 MOVE                             R7 R2
       93 NAMECALL                         R4 R4 K16 ["addItem"]
       95 CALL                             R4 3 0
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R4 R4 K13 ["_pluginController"]
       99 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
      101 CALL                             R4 1 1
      102 GETTABLEKS                       R4 R4 K0 ["Uid"]
      104 JUMPIFNOTEQ                      R4 R2 ; [+5]
      106 GETUPVAL                         R4 1
      107 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      109 CALL                             R4 1 0
      110 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_layoutController"]
        3 NAMECALL                         R0 R0 K1 ["getIsCompact"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["_layoutController"]
       10 NAMECALL                         R0 R0 K2 ["toggleSidebar"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 0
       14 NAMECALL                         R0 R0 K3 ["_clearAndFetchSearchItems"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnShowSearchOptionsChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_searchController"]
        3 NAMECALL                         R0 R0 K1 ["getShowSearchOptions"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["_renderItems"]
       10 LENGTH                           R0 R1
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["_createRenderItems"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_searchController"]
        3 NAMECALL                         R0 R0 K1 ["getShowSearchOptions"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["_renderItems"]
       10 LENGTH                           R0 R1
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["_createRenderItems"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_13:
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
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K13 ["new"]
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
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K17 ["AssetInfoField"]
       56 GETTABLEKS                       R4 R4 K18 ["Archived"]
       58 LOADB                            R5 0
       59 SETTABLE                         R5 R3 R4
       60 SETTABLEKS                       R3 R2 K19 ["_filters"]
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K20 ["get"]
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
      117 LOADNIL                          R3
      118 SETTABLEKS                       R3 R2 K41 ["_savedSorts"]
      120 LOADNIL                          R3
      121 SETTABLEKS                       R3 R2 K42 ["_savedFilters"]
      123 DUPTABLE                         R3 K46 [{"Action", "Source", "Position"}]
      124 LOADK                            R4 K47 ["double_click"]
      125 SETTABLEKS                       R4 R3 K43 ["Action"]
      127 LOADK                            R4 K48 ["browse"]
      128 SETTABLEKS                       R4 R3 K44 ["Source"]
      130 LOADN                            R4 0
      131 SETTABLEKS                       R4 R3 K45 ["Position"]
      133 SETTABLEKS                       R3 R2 K49 ["_analyticsState"]
      135 NEWTABLE                         R3 0 0
      137 SETTABLEKS                       R3 R2 K50 ["_connections"]
      139 GETUPVAL                         R3 4
      140 GETTABLEKS                       R3 R3 K13 ["new"]
      142 CALL                             R3 0 1
      143 SETTABLEKS                       R3 R2 K51 ["OnVisiblePropertiesChanged"]
      145 GETUPVAL                         R3 4
      146 GETTABLEKS                       R3 R3 K13 ["new"]
      148 CALL                             R3 0 1
      149 SETTABLEKS                       R3 R2 K52 ["OnItemsChanged"]
      151 GETUPVAL                         R3 4
      152 GETTABLEKS                       R3 R3 K13 ["new"]
      154 CALL                             R3 0 1
      155 SETTABLEKS                       R3 R2 K53 ["OnItemSelectionChanged"]
      157 GETUPVAL                         R3 4
      158 GETTABLEKS                       R3 R3 K13 ["new"]
      160 CALL                             R3 0 1
      161 SETTABLEKS                       R3 R2 K54 ["OnSortFilterChanged"]
      163 GETUPVAL                         R3 4
      164 GETTABLEKS                       R3 R3 K13 ["new"]
      166 CALL                             R3 0 1
      167 SETTABLEKS                       R3 R2 K55 ["OnCreatorsChanged"]
      169 GETUPVAL                         R3 4
      170 GETTABLEKS                       R3 R3 K13 ["new"]
      172 CALL                             R3 0 1
      173 SETTABLEKS                       R3 R2 K56 ["OnScopeFetchProgressChanged"]
      175 GETUPVAL                         R3 4
      176 GETTABLEKS                       R3 R3 K13 ["new"]
      178 CALL                             R3 0 1
      179 SETTABLEKS                       R3 R2 K57 ["OnSearchFolderCountChanged"]
      181 GETUPVAL                         R3 4
      182 GETTABLEKS                       R3 R3 K13 ["new"]
      184 CALL                             R3 0 1
      185 SETTABLEKS                       R3 R2 K58 ["OnStagedEditItemPathChanged"]
      187 GETUPVAL                         R5 5
      188 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      190 MOVE                             R4 R2
      191 GETIMPORT                        R3 K60 [setmetatable]
      193 CALL                             R3 2 0
      194 DUPCLOSURE                       R3 K61 [PROTO_1]
      195 CAPTURE                          UPVAL U6
      196 CAPTURE                          UPVAL U7
      197 SETTABLEKS                       R3 R2 K62 ["_fetchAssetsErrorCallback"]
      199 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      201 NAMECALL                         R5 R5 K63 ["getCurrentScope"]
      203 CALL                             R5 1 -1
      204 NAMECALL                         R3 R2 K64 ["_startNewScopeFetch"]
      206 CALL                             R3 -1 0
      207 GETTABLEKS                       R3 R2 K3 ["_pluginController"]
      209 NAMECALL                         R3 R3 K65 ["getPlugin"]
      211 CALL                             R3 1 1
      212 GETTABLEKS                       R5 R2 K50 ["_connections"]
      214 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      216 GETTABLEKS                       R6 R6 K66 ["OnCurrentScopeChanged"]
      218 NEWCLOSURE                       R8 P1
      219 CAPTURE                          VAL R2
      220 CAPTURE                          UPVAL U2
      221 CAPTURE                          UPVAL U1
      222 NAMECALL                         R6 R6 K67 ["Connect"]
      224 CALL                             R6 2 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R4 K70 [table.insert]
      228 CALL                             R4 -1 0
      229 GETTABLEKS                       R5 R2 K50 ["_connections"]
      231 LOADK                            R8 K71 ["OnAddPlaceSucceeded"]
      232 NEWCLOSURE                       R9 P2
      233 CAPTURE                          VAL R2
      234 NAMECALL                         R6 R3 K72 ["OnInvoke"]
      236 CALL                             R6 3 -1
      237 FASTCALL                         TABLE_INSERT ; [+2]
      238 GETIMPORT                        R4 K70 [table.insert]
      240 CALL                             R4 -1 0
      241 GETTABLEKS                       R5 R2 K50 ["_connections"]
      243 LOADK                            R8 K73 ["OnRemovePlaceFromGameSucceeded"]
      244 NEWCLOSURE                       R9 P3
      245 CAPTURE                          VAL R2
      246 CAPTURE                          UPVAL U8
      247 NAMECALL                         R6 R3 K72 ["OnInvoke"]
      249 CALL                             R6 3 -1
      250 FASTCALL                         TABLE_INSERT ; [+2]
      251 GETIMPORT                        R4 K70 [table.insert]
      253 CALL                             R4 -1 0
      254 GETTABLEKS                       R5 R2 K50 ["_connections"]
      256 LOADK                            R8 K74 ["OnRenamePlaceSucceeded"]
      257 NEWCLOSURE                       R9 P4
      258 CAPTURE                          VAL R2
      259 CAPTURE                          UPVAL U8
      260 CAPTURE                          UPVAL U2
      261 NAMECALL                         R6 R3 K72 ["OnInvoke"]
      263 CALL                             R6 3 -1
      264 FASTCALL                         TABLE_INSERT ; [+2]
      265 GETIMPORT                        R4 K70 [table.insert]
      267 CALL                             R4 -1 0
      268 GETUPVAL                         R4 9
      269 CALL                             R4 0 1
      270 JUMPIFNOT                        R4 ; [+12]
      271 GETTABLEKS                       R5 R2 K50 ["_connections"]
      273 LOADK                            R8 K75 ["OnAddToExperienceFinished"]
      274 NEWCLOSURE                       R9 P5
      275 CAPTURE                          VAL R2
      276 NAMECALL                         R6 R3 K72 ["OnInvoke"]
      278 CALL                             R6 3 -1
      279 FASTCALL                         TABLE_INSERT ; [+2]
      280 GETIMPORT                        R4 K70 [table.insert]
      282 CALL                             R4 -1 0
      283 GETTABLEKS                       R5 R2 K50 ["_connections"]
      285 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      287 GETTABLEKS                       R6 R6 K76 ["OnNewAssetFetched"]
      289 NEWCLOSURE                       R8 P6
      290 CAPTURE                          UPVAL U1
      291 CAPTURE                          VAL R2
      292 CAPTURE                          UPVAL U10
      293 NAMECALL                         R6 R6 K67 ["Connect"]
      295 CALL                             R6 2 -1
      296 FASTCALL                         TABLE_INSERT ; [+2]
      297 GETIMPORT                        R4 K70 [table.insert]
      299 CALL                             R4 -1 0
      300 GETTABLEKS                       R5 R2 K50 ["_connections"]
      302 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      304 GETTABLEKS                       R6 R6 K77 ["OnSearchRequested"]
      306 NEWCLOSURE                       R8 P7
      307 CAPTURE                          VAL R2
      308 NAMECALL                         R6 R6 K67 ["Connect"]
      310 CALL                             R6 2 -1
      311 FASTCALL                         TABLE_INSERT ; [+2]
      312 GETIMPORT                        R4 K70 [table.insert]
      314 CALL                             R4 -1 0
      315 GETTABLEKS                       R5 R2 K50 ["_connections"]
      317 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      319 GETTABLEKS                       R6 R6 K78 ["OnShowSearchOptionsChanged"]
      321 NEWCLOSURE                       R8 P8
      322 CAPTURE                          VAL R2
      323 NAMECALL                         R6 R6 K67 ["Connect"]
      325 CALL                             R6 2 -1
      326 FASTCALL                         TABLE_INSERT ; [+2]
      327 GETIMPORT                        R4 K70 [table.insert]
      329 CALL                             R4 -1 0
      330 GETTABLEKS                       R5 R2 K50 ["_connections"]
      332 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      334 GETTABLEKS                       R6 R6 K79 ["OnIsDefaultSearchStateChanged"]
      336 NEWCLOSURE                       R8 P9
      337 CAPTURE                          VAL R2
      338 NAMECALL                         R6 R6 K67 ["Connect"]
      340 CALL                             R6 2 -1
      341 FASTCALL                         TABLE_INSERT ; [+2]
      342 GETIMPORT                        R4 K70 [table.insert]
      344 CALL                             R4 -1 0
      345 GETUPVAL                         R4 1
      346 CALL                             R4 0 1
      347 JUMPIFNOT                        R4 ; [+30]
      348 GETTABLEKS                       R5 R2 K50 ["_connections"]
      350 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      352 GETTABLEKS                       R6 R6 K80 ["OnBrowserLayoutChanged"]
      354 NEWCLOSURE                       R8 P10
      355 CAPTURE                          VAL R2
      356 NAMECALL                         R6 R6 K67 ["Connect"]
      358 CALL                             R6 2 -1
      359 FASTCALL                         TABLE_INSERT ; [+2]
      360 GETIMPORT                        R4 K70 [table.insert]
      362 CALL                             R4 -1 0
      363 GETTABLEKS                       R5 R2 K50 ["_connections"]
      365 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      367 GETTABLEKS                       R6 R6 K81 ["OnGridStateUpdated"]
      369 NEWCLOSURE                       R8 P11
      370 CAPTURE                          VAL R2
      371 NAMECALL                         R6 R6 K67 ["Connect"]
      373 CALL                             R6 2 -1
      374 FASTCALL                         TABLE_INSERT ; [+2]
      375 GETIMPORT                        R4 K70 [table.insert]
      377 CALL                             R4 -1 0
      378 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
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
       27 SETTABLEKS                       R1 R0 K8 ["_savedSorts"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K9 ["_savedFilters"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K10 ["_selection"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R2 R0 K11 ["_connections"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K11 ["_connections"]
       42 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R5 R1 K1 ["assetIds"]
        6 LENGTH                           R4 R5
        7 JUMPIFNOTEQKN                    R4 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R4 R0 K3 ["_explorerController"]
       12 NAMECALL                         R4 R4 K4 ["getProjectSharedScope"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R4 K5 ["Uid"]
       17 GETTABLEKS                       R6 R0 K6 ["_itemsCache"]
       19 MOVE                             R8 R5
       20 NAMECALL                         R6 R6 K7 ["hasScope"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+5]
       24 MOVE                             R8 R4
       25 LOADB                            R9 0
       26 NAMECALL                         R6 R0 K8 ["_startNewScopeFetch"]
       28 CALL                             R6 3 0
       29 GETTABLEKS                       R6 R1 K1 ["assetIds"]
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETTABLE                         R11 R2 R10
       35 JUMPIF                           R11 ; [+29]
       36 GETUPVAL                         R11 0
       37 MOVE                             R12 R3
       38 MOVE                             R13 R10
       39 CALL                             R11 2 1
       40 GETTABLEKS                       R12 R0 K6 ["_itemsCache"]
       42 GETTABLEKS                       R14 R3 K5 ["Uid"]
       44 MOVE                             R15 R11
       45 NAMECALL                         R12 R12 K9 ["getItem"]
       47 CALL                             R12 3 1
       48 JUMPIFNOT                        R12 ; [+16]
       49 GETUPVAL                         R13 0
       50 MOVE                             R14 R4
       51 MOVE                             R15 R10
       52 CALL                             R13 2 1
       53 GETTABLEKS                       R14 R0 K6 ["_itemsCache"]
       55 GETUPVAL                         R16 1
       56 MOVE                             R17 R12
       57 DUPTABLE                         R18 K11 [{"Path"}]
       58 SETTABLEKS                       R13 R18 K10 ["Path"]
       60 CALL                             R16 2 1
       61 MOVE                             R17 R5
       62 NAMECALL                         R14 R14 K12 ["addItem"]
       64 CALL                             R14 3 0
       65 FORGLOOP                         R6 2 ; [-32]
       67 NAMECALL                         R6 R0 K13 ["getCurrentShownScope"]
       69 CALL                             R6 1 1
       70 GETTABLEKS                       R6 R6 K5 ["Uid"]
       72 JUMPIFNOTEQ                      R6 R5 ; [+5]
       74 NAMECALL                         R6 R0 K14 ["_createRenderItems"]
       76 CALL                             R6 1 0
       77 JUMP                             ; [+6]
       78 GETTABLEKS                       R6 R0 K3 ["_explorerController"]
       80 MOVE                             R8 R5
       81 NAMECALL                         R6 R6 K15 ["notifyNewItemsInScope"]
       83 CALL                             R6 2 0
       84 GETIMPORT                        R6 K17 [next]
       86 MOVE                             R7 R2
       87 CALL                             R6 1 1
       88 JUMPIFEQKNIL                     R6 ; [+14]
       90 GETTABLEKS                       R6 R0 K18 ["_pluginController"]
       92 DUPTABLE                         R8 K21 [{"Key", "SubKey"}]
       93 LOADK                            R9 K22 ["Toast"]
       94 SETTABLEKS                       R9 R8 K19 ["Key"]
       96 LOADK                            R9 K23 ["AddToExperienceFailed"]
       97 SETTABLEKS                       R9 R8 K20 ["SubKey"]
       99 NAMECALL                         R6 R6 K24 ["showToast"]
      101 CALL                             R6 2 0
      102 RETURN                           R0 0
      103 GETTABLEKS                       R6 R0 K18 ["_pluginController"]
      105 DUPTABLE                         R8 K21 [{"Key", "SubKey"}]
      106 LOADK                            R9 K22 ["Toast"]
      107 SETTABLEKS                       R9 R8 K19 ["Key"]
      109 LOADK                            R9 K25 ["AddToExperienceSuccess"]
      110 SETTABLEKS                       R9 R8 K20 ["SubKey"]
      112 NAMECALL                         R6 R6 K24 ["showToast"]
      114 CALL                             R6 2 0
      115 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_destroyed"]
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADB                            R5 0
        5 RETURN                           R5 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["_itemsCache"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K2 ["Uid"]
       12 NAMECALL                         R5 R5 K3 ["getScope"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K4 ["_networking"]
       21 NAMECALL                         R6 R6 K5 ["getFetchEpochId"]
       23 CALL                             R6 1 1
       24 JUMPIFEQ                         R2 R6 ; [+3]
       26 LOADB                            R6 0
       27 RETURN                           R6 1
       28 MOVE                             R6 R0
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K1 ["_itemsCache"]
       35 MOVE                             R13 R10
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R14 R14 K2 ["Uid"]
       39 NAMECALL                         R11 R11 K6 ["addItem"]
       41 CALL                             R11 3 0
       42 FORGLOOP                         R6 2 ; [-11]
       44 LOADB                            R6 0
       45 MOVE                             R7 R1
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K7 ["_creators"]
       52 GETTABLE                         R12 R13 R10
       53 JUMPIF                           R12 ; [+4]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K7 ["_creators"]
       57 SETTABLE                         R11 R12 R10
       58 LOADB                            R6 1
       59 FORGLOOP                         R7 2 ; [-11]
       61 JUMPIFNOT                        R6 ; [+10]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K8 ["OnCreatorsChanged"]
       65 GETUPVAL                         R9 0
       66 NAMECALL                         R9 R9 K9 ["getCreators"]
       68 CALL                             R9 1 -1
       69 NAMECALL                         R7 R7 K10 ["Fire"]
       71 CALL                             R7 -1 0
       72 GETUPVAL                         R7 0
       73 NAMECALL                         R7 R7 K11 ["getCurrentShownScope"]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R7 K2 ["Uid"]
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R9 R9 K2 ["Uid"]
       81 JUMPIFNOTEQ                      R8 R9 ; [+5]
       83 GETUPVAL                         R8 0
       84 NAMECALL                         R8 R8 K12 ["_createRenderItems"]
       86 CALL                             R8 1 0
       87 JUMPIFNOT                        R3 ; [+7]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K13 ["_pluginController"]
       91 MOVE                             R10 R3
       92 NAMECALL                         R8 R8 K14 ["setRootPlace"]
       94 CALL                             R8 2 0
       95 SETTABLEKS                       R4 R5 K15 ["NextPageToken"]
       97 JUMPIFEQKNIL                     R4 ; [+17]
       99 JUMPIFEQKS                       R4 K16 [""] ; [+15]
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K1 ["_itemsCache"]
      104 NAMECALL                         R8 R8 K17 ["getTotalItemCount"]
      106 CALL                             R8 1 1
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K1 ["_itemsCache"]
      110 NAMECALL                         R9 R9 K18 ["getMaxItems"]
      112 CALL                             R9 1 1
      113 JUMPIFNOTLT                      R9 R8 ; [+8]
      115 LOADB                            R8 0
      116 SETTABLEKS                       R8 R5 K19 ["Loading"]
      118 LOADN                            R8 0
      119 SETTABLEKS                       R8 R5 K20 ["FetchProgress"]
      121 JUMP                             ; [+14]
      122 LOADB                            R8 1
      123 SETTABLEKS                       R8 R5 K19 ["Loading"]
      125 GETUPVAL                         R8 0
      126 GETTABLEKS                       R8 R8 K1 ["_itemsCache"]
      128 GETUPVAL                         R10 1
      129 GETTABLEKS                       R10 R10 K2 ["Uid"]
      131 NAMECALL                         R8 R8 K21 ["getScopeCacheFetchProgress"]
      133 CALL                             R8 2 1
      134 SETTABLEKS                       R8 R5 K20 ["FetchProgress"]
      136 GETUPVAL                         R8 0
      137 GETTABLEKS                       R8 R8 K22 ["OnScopeFetchProgressChanged"]
      139 GETUPVAL                         R10 0
      140 GETTABLEKS                       R10 R10 K1 ["_itemsCache"]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K2 ["Uid"]
      145 NAMECALL                         R10 R10 K21 ["getScopeCacheFetchProgress"]
      147 CALL                             R10 2 1
      148 GETTABLEKS                       R11 R5 K19 ["Loading"]
      150 GETUPVAL                         R12 1
      151 GETTABLEKS                       R12 R12 K2 ["Uid"]
      153 NAMECALL                         R8 R8 K10 ["Fire"]
      155 CALL                             R8 4 0
      156 GETTABLEKS                       R8 R5 K19 ["Loading"]
      158 JUMPIF                           R8 ; [+2]
      159 LOADB                            R8 0
      160 RETURN                           R8 1
      161 LOADB                            R8 1
      162 RETURN                           R8 1

PROTO_19:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R3 R3 K1 ["Uid"]
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
       23 GETTABLEKS                       R7 R0 K2 ["_searchController"]
       25 NAMECALL                         R7 R7 K9 ["getSearchOptions"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R7 R7 K6 ["AssetType"]
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

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 NAMECALL                         R1 R1 K1 ["clearRecent"]
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K2 ["getCurrentShownScope"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K3 ["Uid"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["RecentUploads"]
       13 GETTABLEKS                       R2 R2 K3 ["Uid"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+4]
       17 NAMECALL                         R1 R0 K5 ["_createRenderItems"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_22:
        0 LOADK                            R1 K0 ["GetItemsFailed"]
        1 GETTABLEKS                       R2 R0 K1 ["code"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["ErrorTypeLookup"]
        7 GETTABLEKS                       R3 R3 K3 ["GetItems"]
        9 GETTABLEKS                       R4 R0 K1 ["code"]
       11 GETTABLE                         R2 R3 R4
       12 OR                               R1 R2 R1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["_pluginController"]
       16 DUPTABLE                         R4 K7 [{"Key", "SubKey"}]
       17 LOADK                            R5 K8 ["Toast"]
       18 SETTABLEKS                       R5 R4 K5 ["Key"]
       20 SETTABLEKS                       R1 R4 K6 ["SubKey"]
       22 NAMECALL                         R2 R2 K9 ["showToast"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_23:
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
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["get"]
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
       35 MOVE                             R11 R5
       36 GETTABLEKS                       R12 R0 K10 ["_explorerController"]
       38 MOVE                             R14 R1
       39 NAMECALL                         R12 R12 K11 ["getScopeRoot"]
       41 CALL                             R12 2 -1
       42 NAMECALL                         R6 R6 K12 ["fetchAssetsAsync"]
       44 CALL                             R6 -1 0
       45 GETTABLEKS                       R6 R0 K13 ["OnScopeFetchProgressChanged"]
       47 LOADN                            R8 0
       48 LOADB                            R9 1
       49 GETTABLEKS                       R10 R1 K1 ["Uid"]
       51 NAMECALL                         R6 R6 K14 ["Fire"]
       53 CALL                             R6 4 0
       54 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_networking"]
        2 NAMECALL                         R1 R1 K1 ["makeFetchRequestsStale"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["OnScopeFetchProgressChanged"]
        7 LOADN                            R3 0
        8 LOADB                            R4 0
        9 NAMECALL                         R5 R0 K3 ["getCurrentShownScope"]
       11 CALL                             R5 1 1
       12 GETTABLEKS                       R5 R5 K4 ["Uid"]
       14 NAMECALL                         R1 R1 K5 ["Fire"]
       16 CALL                             R1 4 0
       17 GETTABLEKS                       R1 R0 K6 ["_itemsCache"]
       19 NAMECALL                         R1 R1 K7 ["reset"]
       21 CALL                             R1 1 0
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K8 ["_renderItems"]
       26 GETTABLEKS                       R1 R0 K9 ["OnItemsChanged"]
       28 GETTABLEKS                       R3 R0 K8 ["_renderItems"]
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

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+77]
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K0 ["_sorts"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R0 K1 ["_savedSorts"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R3 R0 K2 ["_filters"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       16 NAMECALL                         R2 R0 K4 ["_clearItems"]
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R0 K5 ["_analyticsState"]
       21 LOADK                            R3 K6 ["search"]
       22 SETTABLEKS                       R3 R2 K7 ["Source"]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R0 K1 ["_savedSorts"]
       27 JUMPIFEQKNIL                     R3 ; [+4]
       29 GETTABLEKS                       R2 R0 K1 ["_savedSorts"]
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K8 ["get"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R0 K0 ["_sorts"]
       38 GETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       40 JUMPIFEQKNIL                     R2 ; [+6]
       42 GETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       44 SETTABLEKS                       R2 R0 K2 ["_filters"]
       46 JUMP                             ; [+3]
       47 NAMECALL                         R2 R0 K9 ["clearFilters"]
       49 CALL                             R2 1 0
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R0 K1 ["_savedSorts"]
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       56 GETTABLEKS                       R2 R0 K10 ["OnSortFilterChanged"]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R5 R0 K0 ["_sorts"]
       61 CALL                             R4 1 1
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R6 R0 K2 ["_filters"]
       65 CALL                             R5 1 -1
       66 NAMECALL                         R2 R2 K11 ["Fire"]
       68 CALL                             R2 -1 0
       69 NAMECALL                         R2 R0 K12 ["refreshItems"]
       71 CALL                             R2 1 0
       72 GETUPVAL                         R2 3
       73 CALL                             R2 0 1
       74 JUMPIFNOT                        R2 ; [+28]
       75 LOADB                            R4 0
       76 NAMECALL                         R2 R0 K13 ["setShowAllSearchFolders"]
       78 CALL                             R2 2 0
       79 RETURN                           R0 0
       80 JUMPIFNOT                        R1 ; [+9]
       81 NAMECALL                         R2 R0 K4 ["_clearItems"]
       83 CALL                             R2 1 0
       84 GETTABLEKS                       R2 R0 K5 ["_analyticsState"]
       86 LOADK                            R3 K6 ["search"]
       87 SETTABLEKS                       R3 R2 K7 ["Source"]
       89 RETURN                           R0 0
       90 NAMECALL                         R2 R0 K9 ["clearFilters"]
       92 CALL                             R2 1 0
       93 NAMECALL                         R2 R0 K12 ["refreshItems"]
       95 CALL                             R2 1 0
       96 GETUPVAL                         R2 3
       97 CALL                             R2 0 1
       98 JUMPIFNOT                        R2 ; [+4]
       99 LOADB                            R4 0
      100 NAMECALL                         R2 R0 K13 ["setShowAllSearchFolders"]
      102 CALL                             R2 2 0
      103 RETURN                           R0 0

PROTO_29:
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
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K10 ["ScopeType"]
       35 GETTABLEKS                       R4 R4 K11 ["Universe"]
       37 JUMPIFNOTEQ                      R3 R4 ; [+34]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K12 ["AssetInfoField"]
       42 GETTABLEKS                       R5 R5 K13 ["DisplayName"]
       44 GETTABLEKS                       R6 R0 K6 ["_searchController"]
       46 NAMECALL                         R6 R6 K14 ["getSearchTerm"]
       48 CALL                             R6 1 -1
       49 NAMECALL                         R3 R0 K15 ["_addFilter"]
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K12 ["AssetInfoField"]
       55 GETTABLEKS                       R5 R5 K16 ["AssetType"]
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

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_sorts"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["get"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K0 ["_sorts"]
       11 NAMECALL                         R1 R0 K3 ["_clearItems"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       16 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["Type"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["ScopeType"]
       24 GETTABLEKS                       R3 R3 K8 ["RecentUploads"]
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
       50 MOVE                             R4 R1
       51 LOADB                            R5 0
       52 NAMECALL                         R2 R0 K17 ["_startNewScopeFetch"]
       54 CALL                             R2 3 0
       55 RETURN                           R0 0

PROTO_31:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       13 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_selection"]
        2 GETTABLEKS                       R3 R0 K1 ["_lastItemPathClicked"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+7]
        6 NEWTABLE                         R1 0 1
        8 GETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
       10 SETLIST                          R1 R2 1 [1]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["keys"]
       16 GETTABLEKS                       R2 R0 K0 ["_selection"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_33:
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
       23 NAMECALL                         R5 R0 K6 ["getCurrentShownScope"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R5 R5 K7 ["Uid"]
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

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["SourceZone"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["UiZone"]
        5 GETTABLEKS                       R2 R2 K2 ["Sidebar"]
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

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K1 ["errors"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K2 ["item"]
       14 GETTABLEKS                       R7 R7 K3 ["path"]
       16 LOADB                            R8 1
       17 SETTABLE                         R8 R1 R7
       18 FORGLOOP                         R2 2 ; [-7]
       20 GETTABLEKS                       R3 R0 K1 ["errors"]
       22 LENGTH                           R2 R3
       23 LOADN                            R3 0
       24 JUMPIFNOTLT                      R3 R2 ; [+14]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["_pluginController"]
       29 DUPTABLE                         R4 K7 [{"Key", "SubKey"}]
       30 LOADK                            R5 K8 ["Toast"]
       31 SETTABLEKS                       R5 R4 K5 ["Key"]
       33 LOADK                            R5 K9 ["PartialMoveFailure"]
       34 SETTABLEKS                       R5 R4 K6 ["SubKey"]
       36 NAMECALL                         R2 R2 K10 ["showToast"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R3 1
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETUPVAL                         R2 2
       42 GETUPVAL                         R3 1
       43 CALL                             R2 1 1
       44 JUMP                             ; [+9]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K11 ["_explorerController"]
       48 GETUPVAL                         R4 3
       49 NAMECALL                         R2 R2 K12 ["getScopeRoot"]
       51 CALL                             R2 2 1
       52 GETTABLEKS                       R2 R2 K13 ["Uid"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K14 ["_itemsCache"]
       57 MOVE                             R5 R2
       58 NAMECALL                         R3 R3 K15 ["hasScope"]
       60 CALL                             R3 2 1
       61 JUMPIF                           R3 ; [+40]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K11 ["_explorerController"]
       65 MOVE                             R5 R2
       66 NAMECALL                         R3 R3 K16 ["getScopeWithUid"]
       68 CALL                             R3 2 1
       69 JUMPIF                           R3 ; [+15]
       70 GETUPVAL                         R3 4
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K14 ["_itemsCache"]
       74 GETUPVAL                         R6 5
       75 GETTABLEKS                       R6 R6 K13 ["Uid"]
       77 GETUPVAL                         R7 1
       78 NAMECALL                         R4 R4 K17 ["getItem"]
       80 CALL                             R4 3 1
       81 GETUPVAL                         R5 5
       82 GETTABLEKS                       R5 R5 K13 ["Uid"]
       84 CALL                             R3 2 1
       85 JUMPIF                           R3 ; [+10]
       86 GETUPVAL                         R4 6
       87 LOADK                            R6 K18 ["Couldn't get folder scope for target %*, cannot move items"]
       88 GETUPVAL                         R8 1
       89 NAMECALL                         R6 R6 K19 ["format"]
       91 CALL                             R6 2 1
       92 MOVE                             R5 R6
       93 LOADK                            R6 K20 ["WARN"]
       94 CALL                             R4 2 0
       95 RETURN                           R0 0
       96 GETUPVAL                         R4 0
       97 MOVE                             R6 R3
       98 LOADB                            R7 0
       99 NAMECALL                         R4 R4 K21 ["_startNewScopeFetch"]
      101 CALL                             R4 3 0
      102 LOADB                            R3 0
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R4 R4 K22 ["_searchController"]
      106 NAMECALL                         R4 R4 K23 ["getShowSearchOptions"]
      108 CALL                             R4 1 1
      109 JUMPIF                           R4 ; [+20]
      110 GETUPVAL                         R4 7
      111 LOADNIL                          R5
      112 LOADNIL                          R6
      113 FORGPREP                         R4
      114 GETTABLE                         R9 R1 R8
      115 JUMPIF                           R9 ; [+12]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K14 ["_itemsCache"]
      119 GETUPVAL                         R11 3
      120 GETTABLEKS                       R11 R11 K13 ["Uid"]
      122 MOVE                             R12 R2
      123 MOVE                             R13 R8
      124 NAMECALL                         R9 R9 K24 ["moveItem"]
      126 CALL                             R9 4 0
      127 LOADB                            R3 1
      128 FORGLOOP                         R4 2 ; [-15]
      130 JUMPIFNOT                        R3 ; [+4]
      131 GETUPVAL                         R4 0
      132 NAMECALL                         R4 R4 K25 ["_createRenderItems"]
      134 CALL                             R4 1 0
      135 GETUPVAL                         R4 0
      136 GETTABLEKS                       R4 R4 K11 ["_explorerController"]
      138 GETUPVAL                         R6 3
      139 GETTABLEKS                       R6 R6 K13 ["Uid"]
      141 MOVE                             R7 R2
      142 GETUPVAL                         R8 7
      143 MOVE                             R9 R1
      144 NAMECALL                         R4 R4 K26 ["moveScopes"]
      146 CALL                             R4 5 0
      147 JUMPIFNOT                        R3 ; [+8]
      148 GETUPVAL                         R4 0
      149 GETUPVAL                         R6 8
      150 GETUPVAL                         R7 5
      151 MOVE                             R8 R2
      152 GETUPVAL                         R9 1
      153 NAMECALL                         R4 R4 K27 ["_updateLastUsedFolder"]
      155 CALL                             R4 5 0
      156 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R3 R0 K2 ["message"]
        8 ORK                              R2 R3 K1 [""]
        9 LOADK                            R3 K3 ["Move"]
       10 CALL                             R1 2 3
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["_pluginController"]
       14 DUPTABLE                         R6 K8 [{"Key", "SubKey", "Args"}]
       15 SETTABLEKS                       R1 R6 K5 ["Key"]
       17 SETTABLEKS                       R2 R6 K6 ["SubKey"]
       19 SETTABLEKS                       R3 R6 K7 ["Args"]
       21 NAMECALL                         R4 R4 K9 ["showToast"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_39:
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
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K3 ["ScopeType"]
       16 GETTABLEKS                       R9 R9 K4 ["Folder"]
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
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K3 ["ScopeType"]
       42 GETTABLEKS                       R11 R11 K4 ["Folder"]
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
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 NAMECALL                         R16 R16 K19 ["andThen"]
       86 CALL                             R16 2 1
       87 NEWCLOSURE                       R18 P1
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U6
       90 NAMECALL                         R16 R16 K20 ["catch"]
       92 CALL                             R16 2 0
       93 FORGLOOP                         R11 2 ; [-29]
       95 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Uid"]
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K2 ["getCurrentShownScope"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K1 ["Uid"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+11]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["_itemsCache"]
       19 MOVE                             R3 R0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K1 ["Uid"]
       23 NAMECALL                         R1 R1 K4 ["addItem"]
       25 CALL                             R1 3 0
       26 GETUPVAL                         R1 2
       27 MOVE                             R2 R0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["Uid"]
       31 CALL                             R1 2 1
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K5 ["_explorerController"]
       35 MOVE                             R4 R1
       36 NAMECALL                         R2 R2 K6 ["handleCreatedFolder"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K7 ["_moveSelectionToNewFolder"]
       42 JUMPIFNOT                        R2 ; [+31]
       43 GETUPVAL                         R2 0
       44 LOADB                            R3 0
       45 SETTABLEKS                       R3 R2 K7 ["_moveSelectionToNewFolder"]
       47 GETUPVAL                         R2 0
       48 DUPTABLE                         R4 K10 [{"SourceZone", "DraggedItems"}]
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K11 ["UiZone"]
       52 GETTABLEKS                       R5 R5 K12 ["Browser"]
       54 SETTABLEKS                       R5 R4 K8 ["SourceZone"]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K13 ["keys"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K14 ["_selection"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K9 ["DraggedItems"]
       65 GETTABLEKS                       R5 R0 K15 ["Path"]
       67 GETUPVAL                         R6 0
       68 NAMECALL                         R6 R6 K2 ["getCurrentShownScope"]
       70 CALL                             R6 1 -1
       71 NAMECALL                         R2 R2 K16 ["requestMoveSelectionToItem"]
       73 CALL                             R2 -1 0
       74 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K1 ["Error creating folder: %*"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K2 ["pretty"]
       10 MOVE                             R6 R0
       11 CALL                             R5 1 1
       12 NAMECALL                         R3 R3 K3 ["format"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 LOADK                            R3 K4 ["WARN"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R3 R0 K6 ["message"]
       21 ORK                              R2 R3 K5 [""]
       22 LOADK                            R3 K7 ["Create"]
       23 CALL                             R1 2 3
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K8 ["_pluginController"]
       27 DUPTABLE                         R6 K12 [{"Key", "SubKey", "Args"}]
       28 SETTABLEKS                       R1 R6 K9 ["Key"]
       30 SETTABLEKS                       R2 R6 K10 ["SubKey"]
       32 SETTABLEKS                       R3 R6 K11 ["Args"]
       34 NAMECALL                         R4 R4 K13 ["showToast"]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 0
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R4 K14 ["_moveSelectionToNewFolder"]
       41 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["Uid"]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K2 ["getCurrentShownScope"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K1 ["Uid"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+15]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K3 ["_itemsCache"]
       19 LOADK                            R2 K4 [""]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["Uid"]
       23 NAMECALL                         R0 R0 K5 ["removeItem"]
       25 CALL                             R0 3 0
       26 GETUPVAL                         R0 0
       27 NAMECALL                         R0 R0 K6 ["_createRenderItems"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_43:
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
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R3
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 NAMECALL                         R5 R5 K16 ["andThen"]
       65 CALL                             R5 2 1
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U4
       71 NAMECALL                         R5 R5 K17 ["catch"]
       73 CALL                             R5 2 1
       74 NEWCLOSURE                       R7 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 NAMECALL                         R5 R5 K18 ["finally"]
       79 CALL                             R5 2 0
       80 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Parent"]
        8 GETTABLEKS                       R2 R0 K2 ["folderItem"]
       10 GETTABLEKS                       R2 R2 K3 ["folder"]
       12 GETTABLEKS                       R2 R2 K4 ["updateTime"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["_itemsCache"]
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 2
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K6 ["AssetInfoField"]
       22 GETTABLEKS                       R7 R7 K7 ["DisplayName"]
       24 GETUPVAL                         R8 4
       25 NAMECALL                         R3 R3 K8 ["updateItemField"]
       27 CALL                             R3 5 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["_itemsCache"]
       31 MOVE                             R5 R1
       32 GETUPVAL                         R6 2
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K6 ["AssetInfoField"]
       36 GETTABLEKS                       R7 R7 K9 ["Modified"]
       38 MOVE                             R8 R2
       39 NAMECALL                         R3 R3 K8 ["updateItemField"]
       41 CALL                             R3 5 0
       42 GETUPVAL                         R3 0
       43 NAMECALL                         R3 R3 K10 ["getCurrentShownScope"]
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R3 R3 K11 ["Uid"]
       48 JUMPIFNOTEQ                      R1 R3 ; [+5]
       50 GETUPVAL                         R3 0
       51 NAMECALL                         R3 R3 K12 ["_createRenderItems"]
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 1
       55 GETUPVAL                         R4 4
       56 SETTABLEKS                       R4 R3 K13 ["Name"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K14 ["_explorerController"]
       61 GETUPVAL                         R5 1
       62 NAMECALL                         R3 R3 K15 ["handleRenamedFolder"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_pluginController"]
        8 DUPTABLE                         R3 K4 [{"Key", "SubKey"}]
        9 LOADK                            R4 K5 ["Toast"]
       10 SETTABLEKS                       R4 R3 K2 ["Key"]
       12 LOADK                            R4 K6 ["RenameFolderFailed"]
       13 SETTABLEKS                       R4 R3 K3 ["SubKey"]
       15 NAMECALL                         R1 R1 K7 ["showToast"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K8 ["_moveSelectionToNewFolder"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K9 ["_explorerController"]
       25 NAMECALL                         R1 R1 K10 ["removeStagedFolder"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_46:
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
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+4]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K1 ["getCurrentShownScope"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R5 R1 K3 ["Uid"]
       17 NAMECALL                         R2 R2 K4 ["removeItem"]
       19 CALL                             R2 3 0
       20 GETTABLEKS                       R2 R1 K3 ["Uid"]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K3 ["Uid"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+5]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R2 R2 K5 ["_createRenderItems"]
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       37 GETUPVAL                         R4 3
       38 GETUPVAL                         R5 2
       39 CALL                             R4 1 -1
       40 NAMECALL                         R2 R2 K6 ["removeScope"]
       42 CALL                             R2 -1 0
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K7 ["_explorerController"]
       46 GETUPVAL                         R4 2
       47 NAMECALL                         R2 R2 K8 ["handleDeletedFolder"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [string.find]
        7 GETTABLEKS                       R4 R0 K5 ["message"]
        9 ORK                              R3 R4 K4 [""]
       10 LOADK                            R4 K6 ["must be empty"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADN                            R1 1
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R1 R0 K7 ["code"]
       17 LOADK                            R2 K8 ["DeleteFolderFailed"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K9 ["ErrorTypeLookup"]
       22 GETTABLEKS                       R4 R4 K10 ["DeleteFolder"]
       24 GETTABLE                         R3 R4 R1
       25 OR                               R2 R3 R2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K11 ["_pluginController"]
       29 DUPTABLE                         R5 K14 [{"Key", "SubKey"}]
       30 LOADK                            R6 K15 ["Toast"]
       31 SETTABLEKS                       R6 R5 K12 ["Key"]
       33 SETTABLEKS                       R2 R5 K13 ["SubKey"]
       35 NAMECALL                         R3 R3 K16 ["showToast"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["deleteFolderAsync"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R3 K2 ["andThen"]
       13 CALL                             R3 2 1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R3 R3 K3 ["catch"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K6 ["AssetInfoField"]
       23 GETTABLEKS                       R8 R8 K7 ["AssetType"]
       25 NAMECALL                         R4 R4 K8 ["getItemField"]
       27 CALL                             R4 4 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K9 ["count"]
       31 GETTABLEKS                       R6 R0 K10 ["_selection"]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKN                    R5 K11 [1] ; [+30]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K7 ["AssetType"]
       39 GETTABLEKS                       R6 R6 K12 ["Place"]
       41 JUMPIFNOTEQ                      R4 R6 ; [+23]
       43 GETTABLEKS                       R6 R0 K4 ["_itemsCache"]
       45 GETTABLEKS                       R8 R2 K5 ["Uid"]
       47 MOVE                             R9 R3
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K6 ["AssetInfoField"]
       51 GETTABLEKS                       R10 R10 K13 ["AssetId"]
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
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K7 ["AssetType"]
       70 GETTABLEKS                       R6 R6 K17 ["Folder"]
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
      110 DUPTABLE                         R6 K29 [{"Key", "SubKey"}]
      111 LOADK                            R7 K30 ["Toast"]
      112 SETTABLEKS                       R7 R6 K27 ["Key"]
      114 LOADK                            R7 K31 ["InsertingAssets"]
      115 SETTABLEKS                       R7 R6 K28 ["SubKey"]
      117 GETTABLEKS                       R7 R0 K1 ["_pluginController"]
      119 MOVE                             R9 R6
      120 NAMECALL                         R7 R7 K32 ["showToast"]
      122 CALL                             R7 2 0
      123 GETUPVAL                         R7 5
      124 MOVE                             R8 R0
      125 MOVE                             R9 R2
      126 GETTABLEKS                       R10 R0 K33 ["_networking"]
      128 CALL                             R7 3 0
      129 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_58:
        0 NAMECALL                         R2 R0 K0 ["getItemsCache"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["keys"]
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

PROTO_59:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_60:
        0 NAMECALL                         R1 R0 K0 ["getItemsCache"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getCurrentShownScope"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["keys"]
        9 NAMECALL                         R4 R0 K3 ["getSelection"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 1
       13 GETTABLEKS                       R6 R2 K4 ["Uid"]
       15 MOVE                             R7 R3
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K5 ["AssetInfoField"]
       19 GETTABLEKS                       R8 R8 K6 ["AssetId"]
       21 NAMECALL                         R4 R1 K7 ["getData"]
       23 CALL                             R4 4 1
       24 RETURN                           R4 1

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_63:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R5 R2 K2 ["Uid"]
        7 NAMECALL                         R3 R3 K3 ["getScope"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
       15 GETTABLEKS                       R5 R2 K2 ["Uid"]
       17 NAMECALL                         R3 R3 K3 ["getScope"]
       19 CALL                             R3 2 1
       20 GETTABLEKS                       R3 R3 K4 ["NextPageToken"]
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R2 K5 ["Type"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K6 ["ScopeType"]
       30 GETTABLEKS                       R5 R5 K7 ["RecentUploads"]
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
       64 GETTABLEKS                       R8 R5 K13 ["ScopeInfo"]
       66 GETTABLEKS                       R8 R8 K2 ["Uid"]
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

PROTO_64:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
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
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K7 ["AssetInfoField"]
       28 GETTABLEKS                       R13 R13 K8 ["AssetType"]
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

PROTO_65:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        4 GETTABLEKS                       R5 R0 K1 ["_pluginController"]
        6 NAMECALL                         R5 R5 K2 ["getCurrentScope"]
        8 CALL                             R5 1 1
        9 GETTABLEKS                       R5 R5 K3 ["Uid"]
       11 MOVE                             R6 R1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K4 ["AssetInfoField"]
       15 GETTABLEKS                       R7 R7 K5 ["AssetType"]
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

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_67:
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

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_69:
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

PROTO_70:
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

PROTO_71:
        0 GETTABLEKS                       R2 R0 K0 ["_filters"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R3 R3 K2 ["AssetType"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETTABLEKS                       R1 R0 K0 ["_filters"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
       14 GETTABLEKS                       R2 R2 K2 ["AssetType"]
       16 LOADNIL                          R3
       17 SETTABLE                         R3 R1 R2
       18 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_73:
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

PROTO_74:
        0 GETTABLEKS                       R2 R0 K0 ["_filters"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R3 R3 K2 ["IsPackage"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETTABLEKS                       R1 R0 K0 ["_filters"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
       14 GETTABLEKS                       R2 R2 K2 ["IsPackage"]
       16 LOADNIL                          R3
       17 SETTABLE                         R3 R1 R2
       18 JUMP                             ; [+9]
       19 GETTABLEKS                       R1 R0 K0 ["_filters"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R2 R2 K2 ["IsPackage"]
       26 LOADB                            R3 1
       27 SETTABLE                         R3 R1 R2
       28 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_75:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R2 R2 K2 ["Archived"]
        7 GETTABLEKS                       R5 R0 K0 ["_filters"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["AssetInfoField"]
       12 GETTABLEKS                       R6 R6 K2 ["Archived"]
       14 GETTABLE                         R4 R5 R6
       15 NOT                              R3 R4
       16 SETTABLE                         R3 R1 R2
       17 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_76:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["AssetInfoField"]
        5 GETTABLEKS                       R2 R2 K1 ["Archived"]
        7 LOADB                            R3 0
        8 SETTABLE                         R3 R1 R2
        9 SETTABLEKS                       R1 R0 K2 ["_filters"]
       11 NAMECALL                         R1 R0 K3 ["_updateSortFilter"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_78:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_85:
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

PROTO_86:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        5 JUMPIFNOTEQKS                    R1 K1 [""] ; [+12]
        7 GETTABLEKS                       R1 R0 K2 ["_itemsCache"]
        9 LOADK                            R3 K1 [""]
       10 NAMECALL                         R4 R0 K3 ["getCurrentShownScope"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R4 R4 K4 ["Uid"]
       15 NAMECALL                         R1 R1 K5 ["removeItem"]
       17 CALL                             R1 3 0
       18 LOADNIL                          R3
       19 NAMECALL                         R1 R0 K6 ["setStagedEditItemPath"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_87:
        0 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R3 R3 K1 ["Type"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        8 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       10 JUMPIFEQ                         R3 R4 ; [+6]
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K4 ["Current scope is not ProjectPlaces, cannot rename place"]
       14 LOADK                            R5 K5 ["WARN"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K6 ["_itemsCache"]
       19 NAMECALL                         R5 R0 K0 ["getCurrentShownScope"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R5 R5 K7 ["Uid"]
       24 MOVE                             R6 R2
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K8 ["AssetInfoField"]
       28 GETTABLEKS                       R7 R7 K9 ["AssetId"]
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

PROTO_88:
        0 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R3 1 1
        3 DUPTABLE                         R4 K11 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Archived", "Source"}]
        4 LOADK                            R5 K12 [""]
        5 SETTABLEKS                       R5 R4 K1 ["Path"]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["AssetId"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       13 GETTABLEKS                       R5 R5 K13 ["Folder"]
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
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K7 ["ModerationStatus"]
       38 GETTABLEKS                       R5 R5 K18 ["Approved"]
       40 SETTABLEKS                       R5 R4 K7 ["ModerationStatus"]
       42 GETTABLEKS                       R5 R0 K19 ["_explorerController"]
       44 MOVE                             R7 R3
       45 NAMECALL                         R5 R5 K20 ["getScopeRoot"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K8 ["Creator"]
       50 LOADB                            R5 0
       51 SETTABLEKS                       R5 R4 K9 ["Archived"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K21 ["AssetSource"]
       56 GETTABLEKS                       R5 R5 K22 ["Uploaded"]
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

PROTO_89:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_90:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K1 ["Uid"]
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
       45 GETTABLEKS                       R5 R0 K10 ["_sorts"]
       47 GETTABLEN                        R4 R5 1
       48 GETTABLEKS                       R4 R4 K11 ["Key"]
       50 JUMP                             ; [+9]
       51 GETTABLEKS                       R5 R0 K12 ["_analyticsState"]
       53 GETTABLEKS                       R5 R5 K13 ["Source"]
       55 JUMPIFNOTEQKS                    R5 K14 ["search"] ; [+3]
       57 LOADK                            R4 K15 ["SearchRank"]
       58 JUMP                             ; [+1]
       59 LOADK                            R4 K16 [""]
       60 DUPTABLE                         R5 K28 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode"}]
       61 SETTABLEKS                       R2 R5 K17 ["assetIds"]
       63 SETTABLEKS                       R1 R5 K18 ["assetTypes"]
       65 GETTABLEKS                       R6 R0 K12 ["_analyticsState"]
       67 GETTABLEKS                       R6 R6 K29 ["Action"]
       69 SETTABLEKS                       R6 R5 K19 ["insertType"]
       71 GETTABLEKS                       R6 R0 K12 ["_analyticsState"]
       73 GETTABLEKS                       R6 R6 K13 ["Source"]
       75 SETTABLEKS                       R6 R5 K20 ["insertSource"]
       77 GETTABLEKS                       R6 R0 K30 ["_searchController"]
       79 NAMECALL                         R6 R6 K31 ["getSearchTerm"]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K21 ["searchKeywords"]
       84 GETTABLEKS                       R6 R0 K30 ["_searchController"]
       86 NAMECALL                         R6 R6 K32 ["getSearchId"]
       88 CALL                             R6 1 1
       89 SETTABLEKS                       R6 R5 K22 ["searchId"]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K33 ["keys"]
       94 GETTABLEKS                       R7 R0 K34 ["_filters"]
       96 CALL                             R6 1 1
       97 SETTABLEKS                       R6 R5 K23 ["filterTypes"]
       99 SETTABLEKS                       R4 R5 K24 ["sortType"]
      101 GETTABLEKS                       R6 R0 K12 ["_analyticsState"]
      103 GETTABLEKS                       R6 R6 K35 ["Position"]
      105 SETTABLEKS                       R6 R5 K25 ["position"]
      107 GETTABLEKS                       R6 R0 K36 ["_layoutController"]
      109 NAMECALL                         R6 R6 K37 ["getIsCompact"]
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K26 ["isCompact"]
      114 GETTABLEKS                       R7 R0 K36 ["_layoutController"]
      116 NAMECALL                         R7 R7 K38 ["getBrowserLayout"]
      118 CALL                             R7 1 1
      119 GETTABLEKS                       R7 R7 K39 ["ViewType"]
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R8 R8 K39 ["ViewType"]
      124 GETTABLEKS                       R8 R8 K40 ["List"]
      126 JUMPIFNOTEQ                      R7 R8 ; [+3]
      128 LOADK                            R6 K41 ["list"]
      129 JUMP                             ; [+1]
      130 LOADK                            R6 K42 ["grid"]
      131 SETTABLEKS                       R6 R5 K27 ["viewMode"]
      133 GETUPVAL                         R6 2
      134 GETTABLEKS                       R6 R6 K43 ["sendInsertEvent"]
      136 MOVE                             R7 R5
      137 CALL                             R6 1 0
      138 RETURN                           R0 0

PROTO_91:
        0 GETTABLEKS                       R2 R0 K0 ["_searchController"]
        2 NAMECALL                         R2 R2 K1 ["getShowSearchOptions"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R1 R0 K0 ["_searchController"]
        8 NAMECALL                         R1 R1 K2 ["getSearchOptions"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R1 R1 K3 ["ScopeInfo"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       16 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_92:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["ContextItem"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K11 ["Packages"]
       45 GETTABLEKS                       R8 R8 K15 ["Dash"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["copy"]
       50 GETTABLEKS                       R9 R7 K17 ["join"]
       52 GETTABLEKS                       R10 R7 K18 ["keys"]
       54 GETTABLEKS                       R11 R4 K19 ["Util"]
       56 GETTABLEKS                       R12 R11 K20 ["Signal"]
       58 GETIMPORT                        R13 K5 [require]
       60 GETTABLEKS                       R14 R0 K6 ["Src"]
       62 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       64 GETTABLEKS                       R14 R14 K22 ["ItemsCache"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R15 R0 K6 ["Src"]
       71 GETTABLEKS                       R15 R15 K19 ["Util"]
       73 GETTABLEKS                       R15 R15 K23 ["cleanConnections"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R16 R0 K6 ["Src"]
       80 GETTABLEKS                       R16 R16 K19 ["Util"]
       82 GETTABLEKS                       R16 R16 K24 ["constructItemPath"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R17 R0 K6 ["Src"]
       89 GETTABLEKS                       R17 R17 K19 ["Util"]
       91 GETTABLEKS                       R17 R17 K25 ["convertFolderItemToScope"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R0 K6 ["Src"]
       98 GETTABLEKS                       R18 R18 K19 ["Util"]
      100 GETTABLEKS                       R18 R18 K26 ["convertToEngineAssetTypeEnum"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R19 R0 K6 ["Src"]
      107 GETTABLEKS                       R19 R19 K19 ["Util"]
      109 GETTABLEKS                       R19 R19 K27 ["createFolderUid"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R20 R0 K6 ["Src"]
      116 GETTABLEKS                       R20 R20 K19 ["Util"]
      118 GETTABLEKS                       R20 R20 K28 ["DefaultSort"]
      120 CALL                             R19 1 1
      121 GETIMPORT                        R20 K5 [require]
      123 GETTABLEKS                       R21 R0 K6 ["Src"]
      125 GETTABLEKS                       R21 R21 K19 ["Util"]
      127 GETTABLEKS                       R21 R21 K29 ["getAssetInfosSlice"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R22 R0 K6 ["Src"]
      134 GETTABLEKS                       R22 R22 K19 ["Util"]
      136 GETTABLEKS                       R22 R22 K30 ["getFolderErrorLocalizationKeys"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K5 [require]
      141 GETTABLEKS                       R23 R0 K6 ["Src"]
      143 GETTABLEKS                       R23 R23 K19 ["Util"]
      145 GETTABLEKS                       R23 R23 K31 ["getItemMoveBatches"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K5 [require]
      150 GETTABLEKS                       R24 R0 K6 ["Src"]
      152 GETTABLEKS                       R24 R24 K19 ["Util"]
      154 GETTABLEKS                       R24 R24 K32 ["insertItems"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETTABLEKS                       R25 R0 K6 ["Src"]
      161 GETTABLEKS                       R25 R25 K19 ["Util"]
      163 GETTABLEKS                       R25 R25 K33 ["isInsertable"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K5 [require]
      168 GETTABLEKS                       R26 R0 K6 ["Src"]
      170 GETTABLEKS                       R26 R26 K19 ["Util"]
      172 GETTABLEKS                       R26 R26 K34 ["logIfDebug"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R27 R0 K6 ["Src"]
      179 GETTABLEKS                       R27 R27 K35 ["Flags"]
      181 GETTABLEKS                       R27 R27 K36 ["getEFAssetInsertComponentEnabled"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K5 [require]
      186 GETTABLEKS                       R28 R0 K6 ["Src"]
      188 GETTABLEKS                       R28 R28 K35 ["Flags"]
      190 GETTABLEKS                       R28 R28 K37 ["getFFlagEnableAssetInserter"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K5 [require]
      195 GETTABLEKS                       R29 R0 K6 ["Src"]
      197 GETTABLEKS                       R29 R29 K35 ["Flags"]
      199 GETTABLEKS                       R29 R29 K38 ["getFFlagAmrOrganizationFoundation"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R30 R0 K6 ["Src"]
      206 GETTABLEKS                       R30 R30 K35 ["Flags"]
      208 GETTABLEKS                       R30 R30 K39 ["getFFlagAmrAddToExperience"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K5 [require]
      213 GETTABLEKS                       R31 R0 K6 ["Src"]
      215 GETTABLEKS                       R31 R31 K35 ["Flags"]
      217 GETTABLEKS                       R31 R31 K40 ["getFFlagAmrKeepSortsFiltersAcrossSearch"]
      219 CALL                             R30 1 1
      220 LOADK                            R33 K41 ["ItemsController"]
      221 NAMECALL                         R31 R6 K42 ["extend"]
      223 CALL                             R31 2 1
      224 DUPCLOSURE                       R32 K43 [PROTO_0]
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R17
      228 DUPCLOSURE                       R33 K44 [PROTO_13]
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R31
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R2
      240 SETTABLEKS                       R33 R31 K45 ["new"]
      242 DUPCLOSURE                       R33 K46 [PROTO_14]
      243 CAPTURE                          VAL R31
      244 SETTABLEKS                       R33 R31 K47 ["mock"]
      246 DUPCLOSURE                       R33 K48 [PROTO_15]
      247 SETTABLEKS                       R33 R31 K49 ["getIsMock"]
      249 DUPCLOSURE                       R33 K50 [PROTO_16]
      250 CAPTURE                          VAL R14
      251 SETTABLEKS                       R33 R31 K51 ["destroy"]
      253 DUPCLOSURE                       R33 K52 [PROTO_17]
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R9
      256 SETTABLEKS                       R33 R31 K53 ["_handleOnAddToGame"]
      258 DUPCLOSURE                       R33 K54 [PROTO_19]
      259 SETTABLEKS                       R33 R31 K55 ["_getNewItemsHandler"]
      261 DUPCLOSURE                       R33 K56 [PROTO_20]
      262 CAPTURE                          VAL R28
      263 SETTABLEKS                       R33 R31 K57 ["_createRenderItems"]
      265 DUPCLOSURE                       R33 K58 [PROTO_21]
      266 CAPTURE                          VAL R2
      267 SETTABLEKS                       R33 R31 K59 ["clearRecent"]
      269 DUPCLOSURE                       R33 K60 [PROTO_23]
      270 CAPTURE                          VAL R19
      271 CAPTURE                          VAL R2
      272 SETTABLEKS                       R33 R31 K61 ["_startNewScopeFetch"]
      274 DUPCLOSURE                       R33 K62 [PROTO_24]
      275 SETTABLEKS                       R33 R31 K63 ["_clearItems"]
      277 DUPCLOSURE                       R33 K64 [PROTO_25]
      278 SETTABLEKS                       R33 R31 K65 ["getSearchFolderCount"]
      280 DUPCLOSURE                       R33 K66 [PROTO_26]
      281 SETTABLEKS                       R33 R31 K67 ["setShowAllSearchFolders"]
      283 DUPCLOSURE                       R33 K68 [PROTO_27]
      284 SETTABLEKS                       R33 R31 K69 ["getShowAllSearchFolders"]
      286 DUPCLOSURE                       R33 K70 [PROTO_28]
      287 CAPTURE                          VAL R30
      288 CAPTURE                          VAL R8
      289 CAPTURE                          VAL R19
      290 CAPTURE                          VAL R28
      291 SETTABLEKS                       R33 R31 K71 ["_handleOnShowSearchOptionsChanged"]
      293 DUPCLOSURE                       R33 K72 [PROTO_29]
      294 CAPTURE                          VAL R8
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R28
      297 SETTABLEKS                       R33 R31 K73 ["_clearAndFetchSearchItems"]
      299 DUPCLOSURE                       R33 K74 [PROTO_30]
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R33 R31 K75 ["refreshItems"]
      304 DUPCLOSURE                       R33 K76 [PROTO_31]
      305 CAPTURE                          VAL R28
      306 SETTABLEKS                       R33 R31 K77 ["refreshAll"]
      308 DUPCLOSURE                       R33 K78 [PROTO_32]
      309 CAPTURE                          VAL R7
      310 SETTABLEKS                       R33 R31 K79 ["getDraggedItems"]
      312 DUPCLOSURE                       R33 K80 [PROTO_33]
      313 CAPTURE                          VAL R18
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R28
      317 SETTABLEKS                       R33 R31 K81 ["_goToFolder"]
      319 DUPCLOSURE                       R33 K82 [PROTO_34]
      320 SETTABLEKS                       R33 R31 K83 ["getLastUsedFolderName"]
      322 DUPCLOSURE                       R33 K84 [PROTO_35]
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R25
      325 DUPCLOSURE                       R34 K85 [PROTO_36]
      326 SETTABLEKS                       R34 R31 K86 ["_updateLastUsedFolder"]
      328 DUPCLOSURE                       R34 K87 [PROTO_39]
      329 CAPTURE                          VAL R33
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R18
      333 CAPTURE                          VAL R16
      334 CAPTURE                          VAL R25
      335 CAPTURE                          VAL R21
      336 SETTABLEKS                       R34 R31 K88 ["requestMoveSelectionToItem"]
      338 DUPCLOSURE                       R34 K89 [PROTO_43]
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R16
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R7
      343 CAPTURE                          VAL R21
      344 SETTABLEKS                       R34 R31 K90 ["_requestCreateFolder"]
      346 DUPCLOSURE                       R34 K91 [PROTO_46]
      347 CAPTURE                          VAL R3
      348 SETTABLEKS                       R34 R31 K92 ["_requestRenameFolder"]
      350 DUPCLOSURE                       R34 K93 [PROTO_47]
      351 SETTABLEKS                       R34 R31 K94 ["uploadStagedFolder"]
      353 DUPCLOSURE                       R34 K95 [PROTO_48]
      354 CAPTURE                          VAL R16
      355 SETTABLEKS                       R34 R31 K96 ["uploadStagedFolderPath"]
      357 DUPCLOSURE                       R34 K97 [PROTO_51]
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R2
      360 SETTABLEKS                       R34 R31 K98 ["requestDeleteFolder"]
      362 DUPCLOSURE                       R34 K99 [PROTO_52]
      363 CAPTURE                          VAL R32
      364 SETTABLEKS                       R34 R31 K100 ["_createInsertJobData"]
      366 DUPCLOSURE                       R34 K101 [PROTO_53]
      367 CAPTURE                          VAL R28
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R7
      370 CAPTURE                          VAL R26
      371 CAPTURE                          VAL R27
      372 CAPTURE                          VAL R23
      373 SETTABLEKS                       R34 R31 K102 ["handleDoubleClick"]
      375 DUPCLOSURE                       R34 K103 [PROTO_54]
      376 SETTABLEKS                       R34 R31 K104 ["setLastItemClicked"]
      378 DUPCLOSURE                       R34 K105 [PROTO_55]
      379 CAPTURE                          VAL R20
      380 SETTABLEKS                       R34 R31 K106 ["changeSelection"]
      382 DUPCLOSURE                       R34 K107 [PROTO_56]
      383 SETTABLEKS                       R34 R31 K108 ["moveSelection"]
      385 DUPCLOSURE                       R34 K109 [PROTO_57]
      386 SETTABLEKS                       R34 R31 K110 ["syncSelectionIndices"]
      388 DUPCLOSURE                       R34 K111 [PROTO_58]
      389 CAPTURE                          VAL R7
      390 SETTABLEKS                       R34 R31 K112 ["getSingleItemSelected"]
      392 DUPCLOSURE                       R34 K113 [PROTO_59]
      393 SETTABLEKS                       R34 R31 K114 ["getItemInfo"]
      395 DUPCLOSURE                       R34 K115 [PROTO_60]
      396 CAPTURE                          VAL R7
      397 CAPTURE                          VAL R3
      398 SETTABLEKS                       R34 R31 K116 ["getSelectionIdsHelper"]
      400 DUPCLOSURE                       R34 K117 [PROTO_61]
      401 SETTABLEKS                       R34 R31 K118 ["getItemsCache"]
      403 DUPCLOSURE                       R34 K119 [PROTO_62]
      404 SETTABLEKS                       R34 R31 K120 ["getRenderItems"]
      406 DUPCLOSURE                       R34 K121 [PROTO_63]
      407 CAPTURE                          VAL R3
      408 SETTABLEKS                       R34 R31 K122 ["requestNextPage"]
      410 DUPCLOSURE                       R34 K123 [PROTO_64]
      411 CAPTURE                          VAL R3
      412 CAPTURE                          VAL R24
      413 SETTABLEKS                       R34 R31 K124 ["selectionHasInsertableAssets"]
      415 DUPCLOSURE                       R34 K125 [PROTO_65]
      416 CAPTURE                          VAL R3
      417 SETTABLEKS                       R34 R31 K126 ["getAssetTypes"]
      419 DUPCLOSURE                       R34 K127 [PROTO_66]
      420 CAPTURE                          VAL R10
      421 SETTABLEKS                       R34 R31 K128 ["getCreators"]
      423 DUPCLOSURE                       R34 K129 [PROTO_67]
      424 CAPTURE                          VAL R8
      425 SETTABLEKS                       R34 R31 K130 ["_updateSortFilter"]
      427 DUPCLOSURE                       R34 K131 [PROTO_68]
      428 SETTABLEKS                       R34 R31 K132 ["getFilters"]
      430 DUPCLOSURE                       R34 K133 [PROTO_69]
      431 CAPTURE                          VAL R9
      432 SETTABLEKS                       R34 R31 K134 ["_addFilter"]
      434 DUPCLOSURE                       R34 K135 [PROTO_70]
      435 SETTABLEKS                       R34 R31 K136 ["_removeFilter"]
      437 DUPCLOSURE                       R34 K137 [PROTO_71]
      438 CAPTURE                          VAL R3
      439 SETTABLEKS                       R34 R31 K138 ["_clearAssetTypeFilter"]
      441 DUPCLOSURE                       R34 K139 [PROTO_72]
      442 SETTABLEKS                       R34 R31 K140 ["hasFilter"]
      444 DUPCLOSURE                       R34 K141 [PROTO_73]
      445 SETTABLEKS                       R34 R31 K142 ["toggleFilter"]
      447 DUPCLOSURE                       R34 K143 [PROTO_74]
      448 CAPTURE                          VAL R3
      449 SETTABLEKS                       R34 R31 K144 ["togglePackagesFilter"]
      451 DUPCLOSURE                       R34 K145 [PROTO_75]
      452 CAPTURE                          VAL R3
      453 SETTABLEKS                       R34 R31 K146 ["toggleArchivedFilter"]
      455 DUPCLOSURE                       R34 K147 [PROTO_76]
      456 CAPTURE                          VAL R3
      457 SETTABLEKS                       R34 R31 K148 ["clearFilters"]
      459 DUPCLOSURE                       R34 K149 [PROTO_77]
      460 SETTABLEKS                       R34 R31 K150 ["getSorts"]
      462 DUPCLOSURE                       R34 K151 [PROTO_78]
      463 SETTABLEKS                       R34 R31 K152 ["setSorts"]
      465 DUPCLOSURE                       R34 K153 [PROTO_79]
      466 SETTABLEKS                       R34 R31 K154 ["addSort"]
      468 DUPCLOSURE                       R34 K155 [PROTO_80]
      469 SETTABLEKS                       R34 R31 K156 ["getSelection"]
      471 DUPCLOSURE                       R34 K157 [PROTO_81]
      472 SETTABLEKS                       R34 R31 K158 ["setSelection"]
      474 DUPCLOSURE                       R34 K159 [PROTO_82]
      475 CAPTURE                          VAL R8
      476 SETTABLEKS                       R34 R31 K160 ["modifySelection"]
      478 DUPCLOSURE                       R34 K161 [PROTO_83]
      479 SETTABLEKS                       R34 R31 K162 ["handleRightClick"]
      481 DUPCLOSURE                       R34 K163 [PROTO_84]
      482 SETTABLEKS                       R34 R31 K164 ["getStagedEditItemPath"]
      484 DUPCLOSURE                       R34 K165 [PROTO_85]
      485 SETTABLEKS                       R34 R31 K166 ["setStagedEditItemPath"]
      487 DUPCLOSURE                       R34 K167 [PROTO_86]
      488 CAPTURE                          VAL R28
      489 SETTABLEKS                       R34 R31 K168 ["removeStagedItem"]
      491 DUPCLOSURE                       R34 K169 [PROTO_87]
      492 CAPTURE                          VAL R3
      493 CAPTURE                          VAL R25
      494 SETTABLEKS                       R34 R31 K170 ["renamePlace"]
      496 DUPCLOSURE                       R34 K171 [PROTO_88]
      497 CAPTURE                          VAL R3
      498 SETTABLEKS                       R34 R31 K172 ["stageNewFolder"]
      500 DUPCLOSURE                       R34 K173 [PROTO_89]
      501 SETTABLEKS                       R34 R31 K174 ["setAnalyticsInsertAction"]
      503 DUPCLOSURE                       R34 K175 [PROTO_90]
      504 CAPTURE                          VAL R7
      505 CAPTURE                          VAL R3
      506 CAPTURE                          VAL R1
      507 SETTABLEKS                       R34 R31 K176 ["sendInsertToAnalytics"]
      509 DUPCLOSURE                       R34 K177 [PROTO_91]
      510 SETTABLEKS                       R34 R31 K178 ["getCurrentShownScope"]
      512 DUPCLOSURE                       R34 K179 [PROTO_92]
      513 SETTABLEKS                       R34 R31 K180 ["getPlugin"]
      515 RETURN                           R31 1
