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
      105 GETUPVAL                         R2 0
      106 GETTABLEKS                       R2 R2 K22 ["_lastUsedFolderRootUid"]
      108 JUMPIFEQKNIL                     R2 ; [+25]
      110 GETUPVAL                         R2 0
      111 GETTABLEKS                       R2 R2 K16 ["_explorerController"]
      113 MOVE                             R4 R1
      114 NAMECALL                         R2 R2 K23 ["getScopeRoot"]
      116 CALL                             R2 2 1
      117 JUMPIFEQKNIL                     R2 ; [+8]
      119 GETTABLEKS                       R3 R2 K3 ["Uid"]
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K22 ["_lastUsedFolderRootUid"]
      124 JUMPIFEQ                         R3 R4 ; [+9]
      126 GETUPVAL                         R3 0
      127 LOADNIL                          R4
      128 SETTABLEKS                       R4 R3 K24 ["_lastUsedFolderName"]
      130 GETUPVAL                         R3 0
      131 LOADNIL                          R4
      132 SETTABLEKS                       R4 R3 K22 ["_lastUsedFolderRootUid"]
      134 GETUPVAL                         R2 0
      135 GETTABLEKS                       R2 R2 K25 ["_analyticsState"]
      137 LOADK                            R3 K26 ["browse"]
      138 SETTABLEKS                       R3 R2 K27 ["Source"]
      140 GETUPVAL                         R2 0
      141 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      143 NAMECALL                         R2 R2 K29 ["getIsCompact"]
      145 CALL                             R2 1 1
      146 JUMPIFNOT                        R2 ; [+13]
      147 GETUPVAL                         R2 0
      148 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      150 NAMECALL                         R2 R2 K30 ["getShowSidebar"]
      152 CALL                             R2 1 1
      153 JUMPIFNOT                        R2 ; [+6]
      154 GETUPVAL                         R2 0
      155 GETTABLEKS                       R2 R2 K28 ["_layoutController"]
      157 NAMECALL                         R2 R2 K31 ["toggleSidebar"]
      159 CALL                             R2 1 0
      160 RETURN                           R0 0

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
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["Uid"]
        3 JUMP                             ; [+4]
        4 GETTABLEKS                       R2 R0 K1 ["Creator"]
        6 GETTABLEKS                       R2 R2 K0 ["Uid"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["_itemsCache"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R3 R3 K3 ["addRecent"]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 NAMECALL                         R3 R3 K4 ["getCurrentShownScope"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K0 ["Uid"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["RecentUploads"]
       24 GETTABLEKS                       R4 R4 K0 ["Uid"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+28]
       28 GETUPVAL                         R3 0
       29 NAMECALL                         R3 R3 K6 ["_createRenderItems"]
       31 CALL                             R3 1 0
       32 LOADN                            R3 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K7 ["_renderItems"]
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 GETTABLEKS                       R9 R0 K8 ["Path"]
       41 JUMPIFNOTEQ                      R8 R9 ; [+3]
       43 MOVE                             R3 R7
       44 JUMP                             ; [+2]
       45 FORGLOOP                         R4 2 ; [-7]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K9 ["_layoutController"]
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R4 K10 ["scrollToItem"]
       53 CALL                             R4 2 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K11 ["_searchController"]
       58 NAMECALL                         R3 R3 K12 ["getShowSearchOptions"]
       60 CALL                             R3 1 1
       61 JUMPIFNOT                        R3 ; [+1]
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K13 ["_pluginController"]
       66 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
       68 CALL                             R4 1 1
       69 GETTABLEKS                       R4 R4 K0 ["Uid"]
       71 JUMPIFEQ                         R2 R4 ; [+2]
       73 LOADB                            R3 0 +1
       74 LOADB                            R3 1
       75 JUMPIF                           R3 ; [+1]
       76 RETURN                           R0 0
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       80 MOVE                             R6 R2
       81 NAMECALL                         R4 R4 K15 ["hasScope"]
       83 CALL                             R4 2 1
       84 JUMPIFNOT                        R4 ; [+22]
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       88 MOVE                             R6 R0
       89 MOVE                             R7 R2
       90 NAMECALL                         R4 R4 K16 ["addItem"]
       92 CALL                             R4 3 0
       93 GETUPVAL                         R4 0
       94 GETTABLEKS                       R4 R4 K13 ["_pluginController"]
       96 NAMECALL                         R4 R4 K14 ["getCurrentScope"]
       98 CALL                             R4 1 1
       99 GETTABLEKS                       R4 R4 K0 ["Uid"]
      101 JUMPIFNOTEQ                      R4 R2 ; [+5]
      103 GETUPVAL                         R4 0
      104 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      106 CALL                             R4 1 0
      107 RETURN                           R0 0

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
       34 LOADN                            R4 10
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K14 ["_itemsCache"]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K15 ["_renderItems"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K16 ["_creators"]
       46 NEWTABLE                         R3 1 0
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K17 ["AssetInfoField"]
       51 GETTABLEKS                       R4 R4 K18 ["Archived"]
       53 LOADB                            R5 0
       54 SETTABLE                         R5 R3 R4
       55 SETTABLEKS                       R3 R2 K19 ["_filters"]
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R3 R3 K20 ["get"]
       60 CALL                             R3 0 1
       61 SETTABLEKS                       R3 R2 K21 ["_sorts"]
       63 NEWTABLE                         R3 0 0
       65 SETTABLEKS                       R3 R2 K22 ["_selection"]
       67 LOADNIL                          R3
       68 SETTABLEKS                       R3 R2 K23 ["_stagedEditItemPath"]
       70 LOADB                            R3 0
       71 SETTABLEKS                       R3 R2 K24 ["_moveSelectionToNewFolder"]
       73 LOADN                            R3 1
       74 SETTABLEKS                       R3 R2 K25 ["_selectStartIndex"]
       76 LOADN                            R3 1
       77 SETTABLEKS                       R3 R2 K26 ["_selectEndIndex"]
       79 DUPTABLE                         R3 K30 [{["modsPressed"], ["targetAssetId"] = -1}]
       80 DUPTABLE                         R4 K34 [{["Shift"] = False, ["Ctrl"] = False}]
       81 SETTABLEKS                       R4 R3 K27 ["modsPressed"]
       83 SETTABLEKS                       R3 R2 K35 ["_clickState"]
       85 LOADB                            R3 0
       86 SETTABLEKS                       R3 R2 K36 ["_isDragging"]
       88 LOADK                            R3 K37 [""]
       89 SETTABLEKS                       R3 R2 K38 ["_lastItemPathClicked"]
       91 LOADNIL                          R3
       92 SETTABLEKS                       R3 R2 K39 ["_lastUsedFolderName"]
       94 LOADNIL                          R3
       95 SETTABLEKS                       R3 R2 K40 ["_lastUsedFolderRootUid"]
       97 LOADB                            R3 0
       98 SETTABLEKS                       R3 R2 K41 ["_showAllSearchFolders"]
      100 LOADN                            R3 0
      101 SETTABLEKS                       R3 R2 K42 ["_searchFolderCount"]
      103 LOADNIL                          R3
      104 SETTABLEKS                       R3 R2 K43 ["_savedSorts"]
      106 LOADNIL                          R3
      107 SETTABLEKS                       R3 R2 K44 ["_savedFilters"]
      109 DUPTABLE                         R3 K51 [{["Action"] = "double_click", ["Source"] = "browse", ["Position"] = 0}]
      110 SETTABLEKS                       R3 R2 K52 ["_analyticsState"]
      112 NEWTABLE                         R3 0 0
      114 SETTABLEKS                       R3 R2 K53 ["_connections"]
      116 GETUPVAL                         R3 3
      117 GETTABLEKS                       R3 R3 K13 ["new"]
      119 CALL                             R3 0 1
      120 SETTABLEKS                       R3 R2 K54 ["OnVisiblePropertiesChanged"]
      122 GETUPVAL                         R3 3
      123 GETTABLEKS                       R3 R3 K13 ["new"]
      125 CALL                             R3 0 1
      126 SETTABLEKS                       R3 R2 K55 ["OnItemsChanged"]
      128 GETUPVAL                         R3 3
      129 GETTABLEKS                       R3 R3 K13 ["new"]
      131 CALL                             R3 0 1
      132 SETTABLEKS                       R3 R2 K56 ["OnItemSelectionChanged"]
      134 GETUPVAL                         R3 3
      135 GETTABLEKS                       R3 R3 K13 ["new"]
      137 CALL                             R3 0 1
      138 SETTABLEKS                       R3 R2 K57 ["OnSortFilterChanged"]
      140 GETUPVAL                         R3 3
      141 GETTABLEKS                       R3 R3 K13 ["new"]
      143 CALL                             R3 0 1
      144 SETTABLEKS                       R3 R2 K58 ["OnCreatorsChanged"]
      146 GETUPVAL                         R3 3
      147 GETTABLEKS                       R3 R3 K13 ["new"]
      149 CALL                             R3 0 1
      150 SETTABLEKS                       R3 R2 K59 ["OnScopeFetchProgressChanged"]
      152 GETUPVAL                         R3 3
      153 GETTABLEKS                       R3 R3 K13 ["new"]
      155 CALL                             R3 0 1
      156 SETTABLEKS                       R3 R2 K60 ["OnSearchFolderCountChanged"]
      158 GETUPVAL                         R3 3
      159 GETTABLEKS                       R3 R3 K13 ["new"]
      161 CALL                             R3 0 1
      162 SETTABLEKS                       R3 R2 K61 ["OnStagedEditItemPathChanged"]
      164 GETUPVAL                         R5 4
      165 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      167 MOVE                             R4 R2
      168 GETIMPORT                        R3 K63 [setmetatable]
      170 CALL                             R3 2 0
      171 DUPCLOSURE                       R3 K64 [PROTO_1]
      172 CAPTURE                          UPVAL U5
      173 CAPTURE                          UPVAL U6
      174 SETTABLEKS                       R3 R2 K65 ["_fetchAssetsErrorCallback"]
      176 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      178 NAMECALL                         R5 R5 K66 ["getCurrentScope"]
      180 CALL                             R5 1 -1
      181 NAMECALL                         R3 R2 K67 ["_startNewScopeFetch"]
      183 CALL                             R3 -1 0
      184 GETTABLEKS                       R3 R2 K3 ["_pluginController"]
      186 NAMECALL                         R3 R3 K68 ["getPlugin"]
      188 CALL                             R3 1 1
      189 GETTABLEKS                       R5 R2 K53 ["_connections"]
      191 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      193 GETTABLEKS                       R6 R6 K69 ["OnCurrentScopeChanged"]
      195 NEWCLOSURE                       R8 P1
      196 CAPTURE                          VAL R2
      197 CAPTURE                          UPVAL U1
      198 NAMECALL                         R6 R6 K70 ["Connect"]
      200 CALL                             R6 2 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R4 K73 [table.insert]
      204 CALL                             R4 -1 0
      205 GETTABLEKS                       R5 R2 K53 ["_connections"]
      207 LOADK                            R8 K74 ["OnAddPlaceSucceeded"]
      208 NEWCLOSURE                       R9 P2
      209 CAPTURE                          VAL R2
      210 NAMECALL                         R6 R3 K75 ["OnInvoke"]
      212 CALL                             R6 3 -1
      213 FASTCALL                         TABLE_INSERT ; [+2]
      214 GETIMPORT                        R4 K73 [table.insert]
      216 CALL                             R4 -1 0
      217 GETTABLEKS                       R5 R2 K53 ["_connections"]
      219 LOADK                            R8 K76 ["OnRemovePlaceFromGameSucceeded"]
      220 NEWCLOSURE                       R9 P3
      221 CAPTURE                          VAL R2
      222 CAPTURE                          UPVAL U7
      223 NAMECALL                         R6 R3 K75 ["OnInvoke"]
      225 CALL                             R6 3 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R4 K73 [table.insert]
      229 CALL                             R4 -1 0
      230 GETTABLEKS                       R5 R2 K53 ["_connections"]
      232 LOADK                            R8 K77 ["OnRenamePlaceSucceeded"]
      233 NEWCLOSURE                       R9 P4
      234 CAPTURE                          VAL R2
      235 CAPTURE                          UPVAL U7
      236 CAPTURE                          UPVAL U1
      237 NAMECALL                         R6 R3 K75 ["OnInvoke"]
      239 CALL                             R6 3 -1
      240 FASTCALL                         TABLE_INSERT ; [+2]
      241 GETIMPORT                        R4 K73 [table.insert]
      243 CALL                             R4 -1 0
      244 GETUPVAL                         R4 8
      245 CALL                             R4 0 1
      246 JUMPIFNOT                        R4 ; [+12]
      247 GETTABLEKS                       R5 R2 K53 ["_connections"]
      249 LOADK                            R8 K78 ["OnAddToExperienceFinished"]
      250 NEWCLOSURE                       R9 P5
      251 CAPTURE                          VAL R2
      252 NAMECALL                         R6 R3 K75 ["OnInvoke"]
      254 CALL                             R6 3 -1
      255 FASTCALL                         TABLE_INSERT ; [+2]
      256 GETIMPORT                        R4 K73 [table.insert]
      258 CALL                             R4 -1 0
      259 GETTABLEKS                       R5 R2 K53 ["_connections"]
      261 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      263 GETTABLEKS                       R6 R6 K79 ["OnNewAssetFetched"]
      265 NEWCLOSURE                       R8 P6
      266 CAPTURE                          VAL R2
      267 CAPTURE                          UPVAL U9
      268 NAMECALL                         R6 R6 K70 ["Connect"]
      270 CALL                             R6 2 -1
      271 FASTCALL                         TABLE_INSERT ; [+2]
      272 GETIMPORT                        R4 K73 [table.insert]
      274 CALL                             R4 -1 0
      275 GETTABLEKS                       R5 R2 K53 ["_connections"]
      277 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      279 GETTABLEKS                       R6 R6 K80 ["OnSearchRequested"]
      281 NEWCLOSURE                       R8 P7
      282 CAPTURE                          VAL R2
      283 NAMECALL                         R6 R6 K70 ["Connect"]
      285 CALL                             R6 2 -1
      286 FASTCALL                         TABLE_INSERT ; [+2]
      287 GETIMPORT                        R4 K73 [table.insert]
      289 CALL                             R4 -1 0
      290 GETTABLEKS                       R5 R2 K53 ["_connections"]
      292 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      294 GETTABLEKS                       R6 R6 K81 ["OnShowSearchOptionsChanged"]
      296 NEWCLOSURE                       R8 P8
      297 CAPTURE                          VAL R2
      298 NAMECALL                         R6 R6 K70 ["Connect"]
      300 CALL                             R6 2 -1
      301 FASTCALL                         TABLE_INSERT ; [+2]
      302 GETIMPORT                        R4 K73 [table.insert]
      304 CALL                             R4 -1 0
      305 GETTABLEKS                       R5 R2 K53 ["_connections"]
      307 GETTABLEKS                       R6 R2 K7 ["_searchController"]
      309 GETTABLEKS                       R6 R6 K82 ["OnIsDefaultSearchStateChanged"]
      311 NEWCLOSURE                       R8 P9
      312 CAPTURE                          VAL R2
      313 NAMECALL                         R6 R6 K70 ["Connect"]
      315 CALL                             R6 2 -1
      316 FASTCALL                         TABLE_INSERT ; [+2]
      317 GETIMPORT                        R4 K73 [table.insert]
      319 CALL                             R4 -1 0
      320 GETTABLEKS                       R5 R2 K53 ["_connections"]
      322 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      324 GETTABLEKS                       R6 R6 K83 ["OnBrowserLayoutChanged"]
      326 NEWCLOSURE                       R8 P10
      327 CAPTURE                          VAL R2
      328 NAMECALL                         R6 R6 K70 ["Connect"]
      330 CALL                             R6 2 -1
      331 FASTCALL                         TABLE_INSERT ; [+2]
      332 GETIMPORT                        R4 K73 [table.insert]
      334 CALL                             R4 -1 0
      335 GETTABLEKS                       R5 R2 K53 ["_connections"]
      337 GETTABLEKS                       R6 R2 K9 ["_layoutController"]
      339 GETTABLEKS                       R6 R6 K84 ["OnGridStateUpdated"]
      341 NEWCLOSURE                       R8 P11
      342 CAPTURE                          VAL R2
      343 NAMECALL                         R6 R6 K70 ["Connect"]
      345 CALL                             R6 2 -1
      346 FASTCALL                         TABLE_INSERT ; [+2]
      347 GETIMPORT                        R4 K73 [table.insert]
      349 CALL                             R4 -1 0
      350 RETURN                           R2 1

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
       88 JUMPIFEQKNIL                     R6 ; [+8]
       90 GETTABLEKS                       R6 R0 K18 ["_pluginController"]
       92 DUPTABLE                         R8 K23 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       93 NAMECALL                         R6 R6 K24 ["showToast"]
       95 CALL                             R6 2 0
       96 RETURN                           R0 0
       97 GETTABLEKS                       R6 R0 K18 ["_pluginController"]
       99 DUPTABLE                         R8 K26 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceSuccess"}]
      100 NAMECALL                         R6 R6 K24 ["showToast"]
      102 CALL                             R6 2 0
      103 RETURN                           R0 0

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
       13 JUMPIFNOT                        R4 ; [+37]
       14 GETTABLEKS                       R5 R0 K4 ["_layoutController"]
       16 NAMECALL                         R5 R5 K5 ["getFolderLimit"]
       18 CALL                             R5 1 1
       19 DUPTABLE                         R6 K8 [{"AssetType", "FolderCount"}]
       20 GETTABLEKS                       R7 R0 K2 ["_searchController"]
       22 NAMECALL                         R7 R7 K9 ["getSearchOptions"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R7 R7 K6 ["AssetType"]
       27 SETTABLEKS                       R7 R6 K6 ["AssetType"]
       29 GETTABLEKS                       R8 R0 K10 ["_showAllSearchFolders"]
       31 JUMPIFNOT                        R8 ; [+2]
       32 LOADNIL                          R7
       33 JUMP                             ; [+1]
       34 MOVE                             R7 R5
       35 SETTABLEKS                       R7 R6 K7 ["FolderCount"]
       37 GETTABLEKS                       R7 R0 K11 ["_itemsCache"]
       39 MOVE                             R9 R3
       40 GETTABLEKS                       R10 R0 K12 ["_filters"]
       42 GETTABLEKS                       R11 R0 K13 ["_sorts"]
       44 MOVE                             R12 R6
       45 NAMECALL                         R7 R7 K14 ["getSortedFilteredPathsForSearch"]
       47 CALL                             R7 5 2
       48 MOVE                             R1 R7
       49 MOVE                             R2 R8
       50 JUMP                             ; [+11]
       51 GETTABLEKS                       R5 R0 K11 ["_itemsCache"]
       53 MOVE                             R7 R3
       54 GETTABLEKS                       R8 R0 K12 ["_filters"]
       56 GETTABLEKS                       R9 R0 K13 ["_sorts"]
       58 NAMECALL                         R5 R5 K15 ["getSortedFilteredPaths"]
       60 CALL                             R5 4 1
       61 MOVE                             R1 R5
       62 SETTABLEKS                       R1 R0 K16 ["_renderItems"]
       64 GETTABLEKS                       R5 R0 K17 ["OnItemsChanged"]
       66 GETTABLEKS                       R7 R0 K16 ["_renderItems"]
       68 NAMECALL                         R5 R5 K18 ["Fire"]
       70 CALL                             R5 2 0
       71 JUMPIFNOT                        R4 ; [+11]
       72 GETTABLEKS                       R5 R0 K19 ["_searchFolderCount"]
       74 JUMPIFEQ                         R2 R5 ; [+8]
       76 SETTABLEKS                       R2 R0 K19 ["_searchFolderCount"]
       78 GETTABLEKS                       R5 R0 K20 ["OnSearchFolderCountChanged"]
       80 NAMECALL                         R5 R5 K18 ["Fire"]
       82 CALL                             R5 1 0
       83 RETURN                           R0 0

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
       16 DUPTABLE                         R4 K8 [{["Key"] = "Toast", ["SubKey"]}]
       17 SETTABLEKS                       R1 R4 K7 ["SubKey"]
       19 NAMECALL                         R2 R2 K9 ["showToast"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

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
        2 JUMPIFNOT                        R2 ; [+74]
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
       72 LOADB                            R4 0
       73 NAMECALL                         R2 R0 K13 ["setShowAllSearchFolders"]
       75 CALL                             R2 2 0
       76 RETURN                           R0 0
       77 JUMPIFNOT                        R1 ; [+9]
       78 NAMECALL                         R2 R0 K4 ["_clearItems"]
       80 CALL                             R2 1 0
       81 GETTABLEKS                       R2 R0 K5 ["_analyticsState"]
       83 LOADK                            R3 K6 ["search"]
       84 SETTABLEKS                       R3 R2 K7 ["Source"]
       86 RETURN                           R0 0
       87 NAMECALL                         R2 R0 K9 ["clearFilters"]
       89 CALL                             R2 1 0
       90 NAMECALL                         R2 R0 K12 ["refreshItems"]
       92 CALL                             R2 1 0
       93 LOADB                            R4 0
       94 NAMECALL                         R2 R0 K13 ["setShowAllSearchFolders"]
       96 CALL                             R2 2 0
       97 RETURN                           R0 0

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
      108 DUPTABLE                         R6 K30 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      109 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      111 NAMECALL                         R7 R7 K14 ["getSearchTerm"]
      113 CALL                             R7 1 1
      114 SETTABLEKS                       R7 R6 K18 ["SearchTerm"]
      116 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      118 MOVE                             R3 R6
      119 GETTABLEKS                       R6 R0 K24 ["_networking"]
      121 MOVE                             R8 R3
      122 GETTABLEKS                       R9 R4 K25 ["NextPageToken"]
      124 MOVE                             R10 R5
      125 GETTABLEKS                       R11 R0 K26 ["_fetchAssetsErrorCallback"]
      127 NAMECALL                         R6 R6 K27 ["searchAssetsAsync"]
      129 CALL                             R6 5 0
      130 GETTABLEKS                       R6 R0 K31 ["OnScopeFetchProgressChanged"]
      132 LOADN                            R8 0
      133 LOADB                            R9 1
      134 GETTABLEKS                       R10 R2 K21 ["Uid"]
      136 NAMECALL                         R6 R6 K5 ["Fire"]
      138 CALL                             R6 4 0
      139 RETURN                           R0 0

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
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETTABLEKS                       R5 R0 K2 ["_searchController"]
       43 NAMECALL                         R5 R5 K10 ["hideSearchOptions"]
       45 CALL                             R5 1 0
       46 GETTABLEKS                       R5 R0 K11 ["_pluginController"]
       48 MOVE                             R7 R3
       49 NAMECALL                         R5 R5 K12 ["setCurrentScope"]
       51 CALL                             R5 2 0
       52 RETURN                           R0 0

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
       24 JUMPIFNOTLT                      R3 R2 ; [+8]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["_pluginController"]
       29 DUPTABLE                         R4 K9 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       30 NAMECALL                         R2 R2 K10 ["showToast"]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R3 1
       34 JUMPIFNOT                        R3 ; [+4]
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R3 1
       37 CALL                             R2 1 1
       38 JUMP                             ; [+9]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K11 ["_explorerController"]
       42 GETUPVAL                         R4 3
       43 NAMECALL                         R2 R2 K12 ["getScopeRoot"]
       45 CALL                             R2 2 1
       46 GETTABLEKS                       R2 R2 K13 ["Uid"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K14 ["_itemsCache"]
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K15 ["hasScope"]
       54 CALL                             R3 2 1
       55 JUMPIF                           R3 ; [+40]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K11 ["_explorerController"]
       59 MOVE                             R5 R2
       60 NAMECALL                         R3 R3 K16 ["getScopeWithUid"]
       62 CALL                             R3 2 1
       63 JUMPIF                           R3 ; [+15]
       64 GETUPVAL                         R3 4
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K14 ["_itemsCache"]
       68 GETUPVAL                         R6 5
       69 GETTABLEKS                       R6 R6 K13 ["Uid"]
       71 GETUPVAL                         R7 1
       72 NAMECALL                         R4 R4 K17 ["getItem"]
       74 CALL                             R4 3 1
       75 GETUPVAL                         R5 5
       76 GETTABLEKS                       R5 R5 K13 ["Uid"]
       78 CALL                             R3 2 1
       79 JUMPIF                           R3 ; [+10]
       80 GETUPVAL                         R4 6
       81 LOADK                            R6 K18 ["Couldn't get folder scope for target %*, cannot move items"]
       82 GETUPVAL                         R8 1
       83 NAMECALL                         R6 R6 K19 ["format"]
       85 CALL                             R6 2 1
       86 MOVE                             R5 R6
       87 LOADK                            R6 K20 ["WARN"]
       88 CALL                             R4 2 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 0
       91 MOVE                             R6 R3
       92 LOADB                            R7 0
       93 NAMECALL                         R4 R4 K21 ["_startNewScopeFetch"]
       95 CALL                             R4 3 0
       96 LOADB                            R3 0
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K22 ["_searchController"]
      100 NAMECALL                         R4 R4 K23 ["getShowSearchOptions"]
      102 CALL                             R4 1 1
      103 JUMPIF                           R4 ; [+20]
      104 GETUPVAL                         R4 7
      105 LOADNIL                          R5
      106 LOADNIL                          R6
      107 FORGPREP                         R4
      108 GETTABLE                         R9 R1 R8
      109 JUMPIF                           R9 ; [+12]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K14 ["_itemsCache"]
      113 GETUPVAL                         R11 3
      114 GETTABLEKS                       R11 R11 K13 ["Uid"]
      116 MOVE                             R12 R2
      117 MOVE                             R13 R8
      118 NAMECALL                         R9 R9 K24 ["moveItem"]
      120 CALL                             R9 4 0
      121 LOADB                            R3 1
      122 FORGLOOP                         R4 2 ; [-15]
      124 JUMPIFNOT                        R3 ; [+4]
      125 GETUPVAL                         R4 0
      126 NAMECALL                         R4 R4 K25 ["_createRenderItems"]
      128 CALL                             R4 1 0
      129 GETUPVAL                         R4 0
      130 GETTABLEKS                       R4 R4 K11 ["_explorerController"]
      132 GETUPVAL                         R6 3
      133 GETTABLEKS                       R6 R6 K13 ["Uid"]
      135 MOVE                             R7 R2
      136 GETUPVAL                         R8 7
      137 MOVE                             R9 R1
      138 NAMECALL                         R4 R4 K26 ["moveScopes"]
      140 CALL                             R4 5 0
      141 JUMPIFNOT                        R3 ; [+8]
      142 GETUPVAL                         R4 0
      143 GETUPVAL                         R6 8
      144 GETUPVAL                         R7 5
      145 MOVE                             R8 R2
      146 GETUPVAL                         R9 1
      147 NAMECALL                         R4 R4 K27 ["_updateLastUsedFolder"]
      149 CALL                             R4 5 0
      150 RETURN                           R0 0

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
        8 DUPTABLE                         R3 K6 [{["Key"] = "Toast", ["SubKey"] = "RenameFolderFailed"}]
        9 NAMECALL                         R1 R1 K7 ["showToast"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K8 ["_moveSelectionToNewFolder"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K9 ["_explorerController"]
       19 NAMECALL                         R1 R1 K10 ["removeStagedFolder"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

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
       29 DUPTABLE                         R5 K15 [{["Key"] = "Toast", ["SubKey"]}]
       30 SETTABLEKS                       R2 R5 K14 ["SubKey"]
       32 NAMECALL                         R3 R3 K16 ["showToast"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

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
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_renderItems"]
        5 GETTABLE                         R3 R4 R1
        6 GETTABLEKS                       R4 R0 K2 ["_itemsCache"]
        8 GETTABLEKS                       R6 R2 K3 ["Uid"]
       10 MOVE                             R7 R3
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K4 ["AssetInfoField"]
       14 GETTABLEKS                       R8 R8 K5 ["AssetType"]
       16 NAMECALL                         R4 R4 K6 ["getItemField"]
       18 CALL                             R4 4 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["count"]
       22 GETTABLEKS                       R6 R0 K8 ["_selection"]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQKN                    R5 K9 [1] ; [+30]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["AssetType"]
       30 GETTABLEKS                       R6 R6 K10 ["Place"]
       32 JUMPIFNOTEQ                      R4 R6 ; [+23]
       34 GETTABLEKS                       R6 R0 K2 ["_itemsCache"]
       36 GETTABLEKS                       R8 R2 K3 ["Uid"]
       38 MOVE                             R9 R3
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K4 ["AssetInfoField"]
       42 GETTABLEKS                       R10 R10 K11 ["AssetId"]
       44 NAMECALL                         R6 R6 K6 ["getItemField"]
       46 CALL                             R6 4 1
       47 NAMECALL                         R7 R0 K12 ["getPlugin"]
       49 CALL                             R7 1 1
       50 LOADK                            R9 K13 ["OnOpenPlace"]
       51 MOVE                             R10 R6
       52 NAMECALL                         R7 R7 K14 ["Invoke"]
       54 CALL                             R7 3 0
       55 RETURN                           R0 0
       56 JUMPIFNOTEQKN                    R5 K9 [1] ; [+13]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K5 ["AssetType"]
       61 GETTABLEKS                       R6 R6 K15 ["Folder"]
       63 JUMPIFNOTEQ                      R4 R6 ; [+6]
       65 MOVE                             R8 R3
       66 NAMECALL                         R6 R0 K16 ["_goToFolder"]
       68 CALL                             R6 2 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R6 R0 K17 ["_analyticsState"]
       72 SETTABLEKS                       R1 R6 K18 ["Position"]
       74 GETTABLEKS                       R6 R0 K17 ["_analyticsState"]
       76 LOADK                            R7 K19 ["double_click"]
       77 SETTABLEKS                       R7 R6 K20 ["Action"]
       79 GETUPVAL                         R6 2
       80 JUMPIFNOT                        R6 ; [+20]
       81 GETUPVAL                         R6 3
       82 CALL                             R6 0 1
       83 JUMPIFNOT                        R6 ; [+17]
       84 NAMECALL                         R6 R0 K21 ["_createInsertJobData"]
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R7 R0 K22 ["_pluginController"]
       89 NAMECALL                         R7 R7 K12 ["getPlugin"]
       91 CALL                             R7 1 1
       92 LOADK                            R9 K23 ["AssetInsertController"]
       93 NAMECALL                         R7 R7 K24 ["GetPluginComponent"]
       95 CALL                             R7 2 1
       96 MOVE                             R10 R6
       97 NAMECALL                         R8 R7 K25 ["DispatchInsertJobAsync"]
       99 CALL                             R8 2 0
      100 RETURN                           R0 0
      101 DUPTABLE                         R6 K30 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      102 GETTABLEKS                       R7 R0 K22 ["_pluginController"]
      104 MOVE                             R9 R6
      105 NAMECALL                         R7 R7 K31 ["showToast"]
      107 CALL                             R7 2 0
      108 GETUPVAL                         R7 4
      109 MOVE                             R8 R0
      110 MOVE                             R9 R2
      111 GETTABLEKS                       R10 R0 K32 ["_networking"]
      113 CALL                             R7 3 0
      114 RETURN                           R0 0

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
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+12]
        4 GETTABLEKS                       R1 R0 K2 ["_itemsCache"]
        6 LOADK                            R3 K1 [""]
        7 NAMECALL                         R4 R0 K3 ["getCurrentShownScope"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R4 R4 K4 ["Uid"]
       12 NAMECALL                         R1 R1 K5 ["removeItem"]
       14 CALL                             R1 3 0
       15 LOADNIL                          R3
       16 NAMECALL                         R1 R0 K6 ["setStagedEditItemPath"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

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
        3 DUPTABLE                         R4 K14 [{["Path"] = "", ["AssetId"] = 0, ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Archived"] = False, ["Source"]}]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K5 ["AssetType"]
        7 GETTABLEKS                       R5 R5 K15 ["Folder"]
        9 SETTABLEKS                       R5 R4 K5 ["AssetType"]
       11 SETTABLEKS                       R1 R4 K6 ["DisplayName"]
       13 GETIMPORT                        R5 K18 [DateTime.now]
       15 CALL                             R5 0 1
       16 NAMECALL                         R5 R5 K19 ["ToIsoDate"]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K7 ["Created"]
       21 GETIMPORT                        R5 K18 [DateTime.now]
       23 CALL                             R5 0 1
       24 NAMECALL                         R5 R5 K19 ["ToIsoDate"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K8 ["Modified"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K9 ["ModerationStatus"]
       32 GETTABLEKS                       R5 R5 K20 ["Approved"]
       34 SETTABLEKS                       R5 R4 K9 ["ModerationStatus"]
       36 GETTABLEKS                       R5 R0 K21 ["_explorerController"]
       38 MOVE                             R7 R3
       39 NAMECALL                         R5 R5 K22 ["getScopeRoot"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K10 ["Creator"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K23 ["AssetSource"]
       47 GETTABLEKS                       R5 R5 K24 ["Uploaded"]
       49 SETTABLEKS                       R5 R4 K13 ["Source"]
       51 GETTABLEKS                       R5 R0 K25 ["_itemsCache"]
       53 MOVE                             R7 R4
       54 GETTABLEKS                       R8 R3 K26 ["Uid"]
       56 NAMECALL                         R5 R5 K27 ["addItem"]
       58 CALL                             R5 3 0
       59 LOADK                            R7 K2 [""]
       60 NAMECALL                         R5 R0 K28 ["setStagedEditItemPath"]
       62 CALL                             R5 2 0
       63 ORK                              R5 R2 K12 [False]
       64 SETTABLEKS                       R5 R0 K29 ["_moveSelectionToNewFolder"]
       66 GETTABLEKS                       R5 R0 K30 ["_renderItems"]
       68 LOADNIL                          R6
       69 LOADNIL                          R7
       70 FORGPREP                         R5
       71 JUMPIFNOTEQKS                    R9 K2 [""] ; [+8]
       73 GETTABLEKS                       R10 R0 K31 ["_layoutController"]
       75 MOVE                             R12 R8
       76 NAMECALL                         R10 R10 K32 ["scrollToItem"]
       78 CALL                             R10 2 0
       79 RETURN                           R0 0
       80 FORGLOOP                         R5 2 ; [-10]
       82 RETURN                           R0 0

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
      199 GETTABLEKS                       R29 R29 K38 ["getFFlagAmrAddToExperience"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K5 [require]
      204 GETTABLEKS                       R30 R0 K6 ["Src"]
      206 GETTABLEKS                       R30 R30 K35 ["Flags"]
      208 GETTABLEKS                       R30 R30 K39 ["getFFlagAmrKeepSortsFiltersAcrossSearch"]
      210 CALL                             R29 1 1
      211 LOADK                            R32 K40 ["ItemsController"]
      212 NAMECALL                         R30 R6 K41 ["extend"]
      214 CALL                             R30 2 1
      215 DUPCLOSURE                       R31 K42 [PROTO_0]
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R17
      219 DUPCLOSURE                       R32 K43 [PROTO_13]
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R2
      230 SETTABLEKS                       R32 R30 K44 ["new"]
      232 DUPCLOSURE                       R32 K45 [PROTO_14]
      233 CAPTURE                          VAL R30
      234 SETTABLEKS                       R32 R30 K46 ["mock"]
      236 DUPCLOSURE                       R32 K47 [PROTO_15]
      237 SETTABLEKS                       R32 R30 K48 ["getIsMock"]
      239 DUPCLOSURE                       R32 K49 [PROTO_16]
      240 CAPTURE                          VAL R14
      241 SETTABLEKS                       R32 R30 K50 ["destroy"]
      243 DUPCLOSURE                       R32 K51 [PROTO_17]
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R9
      246 SETTABLEKS                       R32 R30 K52 ["_handleOnAddToGame"]
      248 DUPCLOSURE                       R32 K53 [PROTO_19]
      249 SETTABLEKS                       R32 R30 K54 ["_getNewItemsHandler"]
      251 DUPCLOSURE                       R32 K55 [PROTO_20]
      252 SETTABLEKS                       R32 R30 K56 ["_createRenderItems"]
      254 DUPCLOSURE                       R32 K57 [PROTO_21]
      255 CAPTURE                          VAL R2
      256 SETTABLEKS                       R32 R30 K58 ["clearRecent"]
      258 DUPCLOSURE                       R32 K59 [PROTO_23]
      259 CAPTURE                          VAL R19
      260 CAPTURE                          VAL R2
      261 SETTABLEKS                       R32 R30 K60 ["_startNewScopeFetch"]
      263 DUPCLOSURE                       R32 K61 [PROTO_24]
      264 SETTABLEKS                       R32 R30 K62 ["_clearItems"]
      266 DUPCLOSURE                       R32 K63 [PROTO_25]
      267 SETTABLEKS                       R32 R30 K64 ["getSearchFolderCount"]
      269 DUPCLOSURE                       R32 K65 [PROTO_26]
      270 SETTABLEKS                       R32 R30 K66 ["setShowAllSearchFolders"]
      272 DUPCLOSURE                       R32 K67 [PROTO_27]
      273 SETTABLEKS                       R32 R30 K68 ["getShowAllSearchFolders"]
      275 DUPCLOSURE                       R32 K69 [PROTO_28]
      276 CAPTURE                          VAL R29
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R19
      279 SETTABLEKS                       R32 R30 K70 ["_handleOnShowSearchOptionsChanged"]
      281 DUPCLOSURE                       R32 K71 [PROTO_29]
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R3
      284 SETTABLEKS                       R32 R30 K72 ["_clearAndFetchSearchItems"]
      286 DUPCLOSURE                       R32 K73 [PROTO_30]
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R3
      289 SETTABLEKS                       R32 R30 K74 ["refreshItems"]
      291 DUPCLOSURE                       R32 K75 [PROTO_31]
      292 SETTABLEKS                       R32 R30 K76 ["refreshAll"]
      294 DUPCLOSURE                       R32 K77 [PROTO_32]
      295 CAPTURE                          VAL R7
      296 SETTABLEKS                       R32 R30 K78 ["getDraggedItems"]
      298 DUPCLOSURE                       R32 K79 [PROTO_33]
      299 CAPTURE                          VAL R18
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R16
      302 SETTABLEKS                       R32 R30 K80 ["_goToFolder"]
      304 DUPCLOSURE                       R32 K81 [PROTO_34]
      305 SETTABLEKS                       R32 R30 K82 ["getLastUsedFolderName"]
      307 DUPCLOSURE                       R32 K83 [PROTO_35]
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R25
      310 DUPCLOSURE                       R33 K84 [PROTO_36]
      311 SETTABLEKS                       R33 R30 K85 ["_updateLastUsedFolder"]
      313 DUPCLOSURE                       R33 K86 [PROTO_39]
      314 CAPTURE                          VAL R32
      315 CAPTURE                          VAL R3
      316 CAPTURE                          VAL R22
      317 CAPTURE                          VAL R18
      318 CAPTURE                          VAL R16
      319 CAPTURE                          VAL R25
      320 CAPTURE                          VAL R21
      321 SETTABLEKS                       R33 R30 K87 ["requestMoveSelectionToItem"]
      323 DUPCLOSURE                       R33 K88 [PROTO_43]
      324 CAPTURE                          VAL R25
      325 CAPTURE                          VAL R16
      326 CAPTURE                          VAL R3
      327 CAPTURE                          VAL R7
      328 CAPTURE                          VAL R21
      329 SETTABLEKS                       R33 R30 K89 ["_requestCreateFolder"]
      331 DUPCLOSURE                       R33 K90 [PROTO_46]
      332 CAPTURE                          VAL R3
      333 SETTABLEKS                       R33 R30 K91 ["_requestRenameFolder"]
      335 DUPCLOSURE                       R33 K92 [PROTO_47]
      336 SETTABLEKS                       R33 R30 K93 ["uploadStagedFolder"]
      338 DUPCLOSURE                       R33 K94 [PROTO_48]
      339 CAPTURE                          VAL R16
      340 SETTABLEKS                       R33 R30 K95 ["uploadStagedFolderPath"]
      342 DUPCLOSURE                       R33 K96 [PROTO_51]
      343 CAPTURE                          VAL R18
      344 CAPTURE                          VAL R2
      345 SETTABLEKS                       R33 R30 K97 ["requestDeleteFolder"]
      347 DUPCLOSURE                       R33 K98 [PROTO_52]
      348 CAPTURE                          VAL R31
      349 SETTABLEKS                       R33 R30 K99 ["_createInsertJobData"]
      351 DUPCLOSURE                       R33 K100 [PROTO_53]
      352 CAPTURE                          VAL R3
      353 CAPTURE                          VAL R7
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R27
      356 CAPTURE                          VAL R23
      357 SETTABLEKS                       R33 R30 K101 ["handleDoubleClick"]
      359 DUPCLOSURE                       R33 K102 [PROTO_54]
      360 SETTABLEKS                       R33 R30 K103 ["setLastItemClicked"]
      362 DUPCLOSURE                       R33 K104 [PROTO_55]
      363 CAPTURE                          VAL R20
      364 SETTABLEKS                       R33 R30 K105 ["changeSelection"]
      366 DUPCLOSURE                       R33 K106 [PROTO_56]
      367 SETTABLEKS                       R33 R30 K107 ["moveSelection"]
      369 DUPCLOSURE                       R33 K108 [PROTO_57]
      370 SETTABLEKS                       R33 R30 K109 ["syncSelectionIndices"]
      372 DUPCLOSURE                       R33 K110 [PROTO_58]
      373 CAPTURE                          VAL R7
      374 SETTABLEKS                       R33 R30 K111 ["getSingleItemSelected"]
      376 DUPCLOSURE                       R33 K112 [PROTO_59]
      377 SETTABLEKS                       R33 R30 K113 ["getItemInfo"]
      379 DUPCLOSURE                       R33 K114 [PROTO_60]
      380 CAPTURE                          VAL R7
      381 CAPTURE                          VAL R3
      382 SETTABLEKS                       R33 R30 K115 ["getSelectionIdsHelper"]
      384 DUPCLOSURE                       R33 K116 [PROTO_61]
      385 SETTABLEKS                       R33 R30 K117 ["getItemsCache"]
      387 DUPCLOSURE                       R33 K118 [PROTO_62]
      388 SETTABLEKS                       R33 R30 K119 ["getRenderItems"]
      390 DUPCLOSURE                       R33 K120 [PROTO_63]
      391 CAPTURE                          VAL R3
      392 SETTABLEKS                       R33 R30 K121 ["requestNextPage"]
      394 DUPCLOSURE                       R33 K122 [PROTO_64]
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R24
      397 SETTABLEKS                       R33 R30 K123 ["selectionHasInsertableAssets"]
      399 DUPCLOSURE                       R33 K124 [PROTO_65]
      400 CAPTURE                          VAL R3
      401 SETTABLEKS                       R33 R30 K125 ["getAssetTypes"]
      403 DUPCLOSURE                       R33 K126 [PROTO_66]
      404 CAPTURE                          VAL R10
      405 SETTABLEKS                       R33 R30 K127 ["getCreators"]
      407 DUPCLOSURE                       R33 K128 [PROTO_67]
      408 CAPTURE                          VAL R8
      409 SETTABLEKS                       R33 R30 K129 ["_updateSortFilter"]
      411 DUPCLOSURE                       R33 K130 [PROTO_68]
      412 SETTABLEKS                       R33 R30 K131 ["getFilters"]
      414 DUPCLOSURE                       R33 K132 [PROTO_69]
      415 CAPTURE                          VAL R9
      416 SETTABLEKS                       R33 R30 K133 ["_addFilter"]
      418 DUPCLOSURE                       R33 K134 [PROTO_70]
      419 SETTABLEKS                       R33 R30 K135 ["_removeFilter"]
      421 DUPCLOSURE                       R33 K136 [PROTO_71]
      422 CAPTURE                          VAL R3
      423 SETTABLEKS                       R33 R30 K137 ["_clearAssetTypeFilter"]
      425 DUPCLOSURE                       R33 K138 [PROTO_72]
      426 SETTABLEKS                       R33 R30 K139 ["hasFilter"]
      428 DUPCLOSURE                       R33 K140 [PROTO_73]
      429 SETTABLEKS                       R33 R30 K141 ["toggleFilter"]
      431 DUPCLOSURE                       R33 K142 [PROTO_74]
      432 CAPTURE                          VAL R3
      433 SETTABLEKS                       R33 R30 K143 ["togglePackagesFilter"]
      435 DUPCLOSURE                       R33 K144 [PROTO_75]
      436 CAPTURE                          VAL R3
      437 SETTABLEKS                       R33 R30 K145 ["toggleArchivedFilter"]
      439 DUPCLOSURE                       R33 K146 [PROTO_76]
      440 CAPTURE                          VAL R3
      441 SETTABLEKS                       R33 R30 K147 ["clearFilters"]
      443 DUPCLOSURE                       R33 K148 [PROTO_77]
      444 SETTABLEKS                       R33 R30 K149 ["getSorts"]
      446 DUPCLOSURE                       R33 K150 [PROTO_78]
      447 SETTABLEKS                       R33 R30 K151 ["setSorts"]
      449 DUPCLOSURE                       R33 K152 [PROTO_79]
      450 SETTABLEKS                       R33 R30 K153 ["addSort"]
      452 DUPCLOSURE                       R33 K154 [PROTO_80]
      453 SETTABLEKS                       R33 R30 K155 ["getSelection"]
      455 DUPCLOSURE                       R33 K156 [PROTO_81]
      456 SETTABLEKS                       R33 R30 K157 ["setSelection"]
      458 DUPCLOSURE                       R33 K158 [PROTO_82]
      459 CAPTURE                          VAL R8
      460 SETTABLEKS                       R33 R30 K159 ["modifySelection"]
      462 DUPCLOSURE                       R33 K160 [PROTO_83]
      463 SETTABLEKS                       R33 R30 K161 ["handleRightClick"]
      465 DUPCLOSURE                       R33 K162 [PROTO_84]
      466 SETTABLEKS                       R33 R30 K163 ["getStagedEditItemPath"]
      468 DUPCLOSURE                       R33 K164 [PROTO_85]
      469 SETTABLEKS                       R33 R30 K165 ["setStagedEditItemPath"]
      471 DUPCLOSURE                       R33 K166 [PROTO_86]
      472 SETTABLEKS                       R33 R30 K167 ["removeStagedItem"]
      474 DUPCLOSURE                       R33 K168 [PROTO_87]
      475 CAPTURE                          VAL R3
      476 CAPTURE                          VAL R25
      477 SETTABLEKS                       R33 R30 K169 ["renamePlace"]
      479 DUPCLOSURE                       R33 K170 [PROTO_88]
      480 CAPTURE                          VAL R3
      481 SETTABLEKS                       R33 R30 K171 ["stageNewFolder"]
      483 DUPCLOSURE                       R33 K172 [PROTO_89]
      484 SETTABLEKS                       R33 R30 K173 ["setAnalyticsInsertAction"]
      486 DUPCLOSURE                       R33 K174 [PROTO_90]
      487 CAPTURE                          VAL R7
      488 CAPTURE                          VAL R3
      489 CAPTURE                          VAL R1
      490 SETTABLEKS                       R33 R30 K175 ["sendInsertToAnalytics"]
      492 DUPCLOSURE                       R33 K176 [PROTO_91]
      493 SETTABLEKS                       R33 R30 K177 ["getCurrentShownScope"]
      495 DUPCLOSURE                       R33 K178 [PROTO_92]
      496 SETTABLEKS                       R33 R30 K179 ["getPlugin"]
      498 RETURN                           R30 1
