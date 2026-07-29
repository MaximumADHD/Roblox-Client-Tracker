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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["PlaceManager"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_audioPreviewManager"]
        3 NAMECALL                         R0 R0 K1 ["stop"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
      135 GETTABLEKS                       R2 R2 K25 ["_audioPreviewManager"]
      137 NAMECALL                         R2 R2 K26 ["stop"]
      139 CALL                             R2 1 0
      140 GETUPVAL                         R2 0
      141 GETTABLEKS                       R2 R2 K27 ["_analyticsState"]
      143 LOADK                            R3 K28 ["browse"]
      144 SETTABLEKS                       R3 R2 K29 ["Source"]
      146 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["_handleOnAddToGame"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearAndFetchSearchItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnShowSearchOptionsChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_clearItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["AssetManagementController"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["HttpService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K4 ["JSONDecode"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K5 ["_handleCreatorInventoryRefresh"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_17:
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
       34 GETTABLEKS                       R4 R0 K2 ["PluginController"]
       36 NAMECALL                         R4 R4 K14 ["getPlugin"]
       38 CALL                             R4 1 1
       39 MOVE                             R5 R1
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K15 ["_audioPreviewManager"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K13 ["new"]
       46 LOADN                            R4 10
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K16 ["_itemsCache"]
       50 NEWTABLE                         R3 0 0
       52 SETTABLEKS                       R3 R2 K17 ["_renderItems"]
       54 NEWTABLE                         R3 0 0
       56 SETTABLEKS                       R3 R2 K18 ["_creators"]
       58 NEWTABLE                         R3 1 0
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K19 ["AssetInfoField"]
       63 GETTABLEKS                       R4 R4 K20 ["Archived"]
       65 LOADB                            R5 0
       66 SETTABLE                         R5 R3 R4
       67 SETTABLEKS                       R3 R2 K21 ["_filters"]
       69 GETUPVAL                         R3 3
       70 GETTABLEKS                       R3 R3 K22 ["get"]
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K23 ["_sorts"]
       75 NEWTABLE                         R3 0 0
       77 SETTABLEKS                       R3 R2 K24 ["_selection"]
       79 LOADNIL                          R3
       80 SETTABLEKS                       R3 R2 K25 ["_stagedEditItemPath"]
       82 LOADB                            R3 0
       83 SETTABLEKS                       R3 R2 K26 ["_moveSelectionToNewFolder"]
       85 LOADN                            R3 1
       86 SETTABLEKS                       R3 R2 K27 ["_selectStartIndex"]
       88 LOADN                            R3 1
       89 SETTABLEKS                       R3 R2 K28 ["_selectEndIndex"]
       91 DUPTABLE                         R3 K32 [{["modsPressed"], ["targetAssetId"] = -1}]
       92 DUPTABLE                         R4 K36 [{["Shift"] = False, ["Ctrl"] = False}]
       93 SETTABLEKS                       R4 R3 K29 ["modsPressed"]
       95 SETTABLEKS                       R3 R2 K37 ["_clickState"]
       97 LOADB                            R3 0
       98 SETTABLEKS                       R3 R2 K38 ["_isDragging"]
      100 LOADK                            R3 K39 [""]
      101 SETTABLEKS                       R3 R2 K40 ["_lastItemPathClicked"]
      103 LOADNIL                          R3
      104 SETTABLEKS                       R3 R2 K41 ["_lastUsedFolderName"]
      106 LOADNIL                          R3
      107 SETTABLEKS                       R3 R2 K42 ["_lastUsedFolderRootUid"]
      109 LOADB                            R3 0
      110 SETTABLEKS                       R3 R2 K43 ["_showAllSearchFolders"]
      112 LOADN                            R3 0
      113 SETTABLEKS                       R3 R2 K44 ["_searchFolderCount"]
      115 LOADNIL                          R3
      116 SETTABLEKS                       R3 R2 K45 ["_savedSorts"]
      118 LOADNIL                          R3
      119 SETTABLEKS                       R3 R2 K46 ["_savedFilters"]
      121 DUPTABLE                         R3 K53 [{["Action"] = "double_click", ["Source"] = "browse", ["Position"] = 0}]
      122 SETTABLEKS                       R3 R2 K54 ["_analyticsState"]
      124 NEWTABLE                         R3 0 0
      126 SETTABLEKS                       R3 R2 K55 ["_connections"]
      128 NEWTABLE                         R3 0 0
      130 SETTABLEKS                       R3 R2 K56 ["_refreshDebounceTimers"]
      132 GETUPVAL                         R3 4
      133 GETTABLEKS                       R3 R3 K13 ["new"]
      135 CALL                             R3 0 1
      136 SETTABLEKS                       R3 R2 K57 ["OnVisiblePropertiesChanged"]
      138 GETUPVAL                         R3 4
      139 GETTABLEKS                       R3 R3 K13 ["new"]
      141 CALL                             R3 0 1
      142 SETTABLEKS                       R3 R2 K58 ["OnItemsChanged"]
      144 GETUPVAL                         R3 4
      145 GETTABLEKS                       R3 R3 K13 ["new"]
      147 CALL                             R3 0 1
      148 SETTABLEKS                       R3 R2 K59 ["OnItemSelectionChanged"]
      150 GETUPVAL                         R3 4
      151 GETTABLEKS                       R3 R3 K13 ["new"]
      153 CALL                             R3 0 1
      154 SETTABLEKS                       R3 R2 K60 ["OnSortFilterChanged"]
      156 GETUPVAL                         R3 4
      157 GETTABLEKS                       R3 R3 K13 ["new"]
      159 CALL                             R3 0 1
      160 SETTABLEKS                       R3 R2 K61 ["OnCreatorsChanged"]
      162 GETUPVAL                         R3 4
      163 GETTABLEKS                       R3 R3 K13 ["new"]
      165 CALL                             R3 0 1
      166 SETTABLEKS                       R3 R2 K62 ["OnScopeFetchProgressChanged"]
      168 GETUPVAL                         R3 4
      169 GETTABLEKS                       R3 R3 K13 ["new"]
      171 CALL                             R3 0 1
      172 SETTABLEKS                       R3 R2 K63 ["OnSearchFolderCountChanged"]
      174 GETUPVAL                         R3 4
      175 GETTABLEKS                       R3 R3 K13 ["new"]
      177 CALL                             R3 0 1
      178 SETTABLEKS                       R3 R2 K64 ["OnStagedEditItemPathChanged"]
      180 GETUPVAL                         R5 5
      181 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      183 MOVE                             R4 R2
      184 GETIMPORT                        R3 K66 [setmetatable]
      186 CALL                             R3 2 0
      187 GETIMPORT                        R3 K68 [pcall]
      189 NEWCLOSURE                       R4 P0
      190 CAPTURE                          VAL R2
      191 CALL                             R3 1 2
      192 JUMPIFNOT                        R3 ; [+14]
      193 JUMPIFNOT                        R4 ; [+13]
      194 GETTABLEKS                       R6 R2 K55 ["_connections"]
      196 GETTABLEKS                       R7 R4 K69 ["PlaceDocPanelClosed"]
      198 NEWCLOSURE                       R9 P1
      199 CAPTURE                          VAL R2
      200 NAMECALL                         R7 R7 K70 ["Connect"]
      202 CALL                             R7 2 -1
      203 FASTCALL                         TABLE_INSERT ; [+2]
      204 GETIMPORT                        R5 K73 [table.insert]
      206 CALL                             R5 -1 0
      207 DUPCLOSURE                       R5 K74 [PROTO_3]
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          UPVAL U7
      210 SETTABLEKS                       R5 R2 K75 ["_fetchAssetsErrorCallback"]
      212 GETTABLEKS                       R7 R2 K3 ["_pluginController"]
      214 NAMECALL                         R7 R7 K76 ["getCurrentScope"]
      216 CALL                             R7 1 -1
      217 NAMECALL                         R5 R2 K77 ["_startNewScopeFetch"]
      219 CALL                             R5 -1 0
      220 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      222 NAMECALL                         R5 R5 K14 ["getPlugin"]
      224 CALL                             R5 1 1
      225 GETTABLEKS                       R7 R2 K55 ["_connections"]
      227 GETTABLEKS                       R8 R2 K3 ["_pluginController"]
      229 GETTABLEKS                       R8 R8 K78 ["OnCurrentScopeChanged"]
      231 NEWCLOSURE                       R10 P3
      232 CAPTURE                          VAL R2
      233 CAPTURE                          UPVAL U2
      234 NAMECALL                         R8 R8 K70 ["Connect"]
      236 CALL                             R8 2 -1
      237 FASTCALL                         TABLE_INSERT ; [+2]
      238 GETIMPORT                        R6 K73 [table.insert]
      240 CALL                             R6 -1 0
      241 GETTABLEKS                       R7 R2 K55 ["_connections"]
      243 LOADK                            R10 K79 ["OnAddPlaceSucceeded"]
      244 NEWCLOSURE                       R11 P4
      245 CAPTURE                          VAL R2
      246 NAMECALL                         R8 R5 K80 ["OnInvoke"]
      248 CALL                             R8 3 -1
      249 FASTCALL                         TABLE_INSERT ; [+2]
      250 GETIMPORT                        R6 K73 [table.insert]
      252 CALL                             R6 -1 0
      253 GETTABLEKS                       R7 R2 K55 ["_connections"]
      255 LOADK                            R10 K81 ["OnRemovePlaceFromGameSucceeded"]
      256 NEWCLOSURE                       R11 P5
      257 CAPTURE                          VAL R2
      258 CAPTURE                          UPVAL U8
      259 NAMECALL                         R8 R5 K80 ["OnInvoke"]
      261 CALL                             R8 3 -1
      262 FASTCALL                         TABLE_INSERT ; [+2]
      263 GETIMPORT                        R6 K73 [table.insert]
      265 CALL                             R6 -1 0
      266 GETTABLEKS                       R7 R2 K55 ["_connections"]
      268 LOADK                            R10 K82 ["OnRenamePlaceSucceeded"]
      269 NEWCLOSURE                       R11 P6
      270 CAPTURE                          VAL R2
      271 CAPTURE                          UPVAL U8
      272 CAPTURE                          UPVAL U2
      273 NAMECALL                         R8 R5 K80 ["OnInvoke"]
      275 CALL                             R8 3 -1
      276 FASTCALL                         TABLE_INSERT ; [+2]
      277 GETIMPORT                        R6 K73 [table.insert]
      279 CALL                             R6 -1 0
      280 GETUPVAL                         R6 9
      281 CALL                             R6 0 1
      282 JUMPIFNOT                        R6 ; [+12]
      283 GETTABLEKS                       R7 R2 K55 ["_connections"]
      285 LOADK                            R10 K83 ["OnAddToExperienceFinished"]
      286 NEWCLOSURE                       R11 P7
      287 CAPTURE                          VAL R2
      288 NAMECALL                         R8 R5 K80 ["OnInvoke"]
      290 CALL                             R8 3 -1
      291 FASTCALL                         TABLE_INSERT ; [+2]
      292 GETIMPORT                        R6 K73 [table.insert]
      294 CALL                             R6 -1 0
      295 GETTABLEKS                       R7 R2 K55 ["_connections"]
      297 GETTABLEKS                       R8 R2 K3 ["_pluginController"]
      299 GETTABLEKS                       R8 R8 K84 ["OnNewAssetFetched"]
      301 NEWCLOSURE                       R10 P8
      302 CAPTURE                          VAL R2
      303 CAPTURE                          UPVAL U10
      304 NAMECALL                         R8 R8 K70 ["Connect"]
      306 CALL                             R8 2 -1
      307 FASTCALL                         TABLE_INSERT ; [+2]
      308 GETIMPORT                        R6 K73 [table.insert]
      310 CALL                             R6 -1 0
      311 GETTABLEKS                       R7 R2 K55 ["_connections"]
      313 GETTABLEKS                       R8 R2 K7 ["_searchController"]
      315 GETTABLEKS                       R8 R8 K85 ["OnSearchRequested"]
      317 NEWCLOSURE                       R10 P9
      318 CAPTURE                          VAL R2
      319 NAMECALL                         R8 R8 K70 ["Connect"]
      321 CALL                             R8 2 -1
      322 FASTCALL                         TABLE_INSERT ; [+2]
      323 GETIMPORT                        R6 K73 [table.insert]
      325 CALL                             R6 -1 0
      326 GETTABLEKS                       R7 R2 K55 ["_connections"]
      328 GETTABLEKS                       R8 R2 K7 ["_searchController"]
      330 GETTABLEKS                       R8 R8 K86 ["OnShowSearchOptionsChanged"]
      332 NEWCLOSURE                       R10 P10
      333 CAPTURE                          VAL R2
      334 NAMECALL                         R8 R8 K70 ["Connect"]
      336 CALL                             R8 2 -1
      337 FASTCALL                         TABLE_INSERT ; [+2]
      338 GETIMPORT                        R6 K73 [table.insert]
      340 CALL                             R6 -1 0
      341 GETTABLEKS                       R7 R2 K55 ["_connections"]
      343 GETTABLEKS                       R8 R2 K7 ["_searchController"]
      345 GETTABLEKS                       R8 R8 K87 ["OnIsDefaultSearchStateChanged"]
      347 NEWCLOSURE                       R10 P11
      348 CAPTURE                          VAL R2
      349 NAMECALL                         R8 R8 K70 ["Connect"]
      351 CALL                             R8 2 -1
      352 FASTCALL                         TABLE_INSERT ; [+2]
      353 GETIMPORT                        R6 K73 [table.insert]
      355 CALL                             R6 -1 0
      356 GETTABLEKS                       R7 R2 K55 ["_connections"]
      358 GETTABLEKS                       R8 R2 K9 ["_layoutController"]
      360 GETTABLEKS                       R8 R8 K88 ["OnBrowserLayoutChanged"]
      362 NEWCLOSURE                       R10 P12
      363 CAPTURE                          VAL R2
      364 NAMECALL                         R8 R8 K70 ["Connect"]
      366 CALL                             R8 2 -1
      367 FASTCALL                         TABLE_INSERT ; [+2]
      368 GETIMPORT                        R6 K73 [table.insert]
      370 CALL                             R6 -1 0
      371 GETTABLEKS                       R7 R2 K55 ["_connections"]
      373 GETTABLEKS                       R8 R2 K9 ["_layoutController"]
      375 GETTABLEKS                       R8 R8 K89 ["OnGridStateUpdated"]
      377 NEWCLOSURE                       R10 P13
      378 CAPTURE                          VAL R2
      379 NAMECALL                         R8 R8 K70 ["Connect"]
      381 CALL                             R8 2 -1
      382 FASTCALL                         TABLE_INSERT ; [+2]
      383 GETIMPORT                        R6 K73 [table.insert]
      385 CALL                             R6 -1 0
      386 GETUPVAL                         R6 11
      387 CALL                             R6 0 1
      388 JUMPIF                           R6 ; [+3]
      389 GETUPVAL                         R6 12
      390 CALL                             R6 0 1
      391 JUMPIFNOT                        R6 ; [+23]
      392 GETUPVAL                         R6 13
      393 CALL                             R6 0 1
      394 JUMPIFNOT                        R6 ; [+20]
      395 GETIMPORT                        R6 K68 [pcall]
      397 NEWCLOSURE                       R7 P14
      398 CAPTURE                          VAL R2
      399 CALL                             R6 1 2
      400 JUMPIFNOT                        R6 ; [+14]
      401 JUMPIFNOT                        R7 ; [+13]
      402 GETTABLEKS                       R9 R2 K55 ["_connections"]
      404 GETTABLEKS                       R10 R7 K90 ["InventoryRefreshReceived"]
      406 NEWCLOSURE                       R12 P15
      407 CAPTURE                          VAL R2
      408 NAMECALL                         R10 R10 K70 ["Connect"]
      410 CALL                             R10 2 -1
      411 FASTCALL                         TABLE_INSERT ; [+2]
      412 GETIMPORT                        R8 K73 [table.insert]
      414 CALL                             R8 -1 0
      415 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
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
        9 GETTABLEKS                       R1 R0 K3 ["_audioPreviewManager"]
       11 NAMECALL                         R1 R1 K4 ["destroy"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["_audioPreviewManager"]
       17 GETTABLEKS                       R1 R0 K5 ["_itemsCache"]
       19 NAMECALL                         R1 R1 K4 ["destroy"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K5 ["_itemsCache"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K6 ["_creators"]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K7 ["_filters"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K8 ["_sorts"]
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K9 ["_savedSorts"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K10 ["_savedFilters"]
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K11 ["_selection"]
       43 GETTABLEKS                       R1 R0 K12 ["_refreshDebounceTimers"]
       45 LOADNIL                          R2
       46 LOADNIL                          R3
       47 FORGPREP                         R1
       48 GETIMPORT                        R6 K15 [task.cancel]
       50 MOVE                             R7 R5
       51 CALL                             R6 1 0
       52 FORGLOOP                         R1 2 ; [-5]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K12 ["_refreshDebounceTimers"]
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R2 R0 K16 ["_connections"]
       60 CALL                             R1 1 0
       61 LOADNIL                          R1
       62 SETTABLEKS                       R1 R0 K16 ["_connections"]
       64 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R5 R1 K1 ["assetIds"]
        6 LENGTH                           R4 R5
        7 JUMPIFNOTEQKN                    R4 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETTABLEKS                       R4 R0 K3 ["_pluginController"]
       15 NAMECALL                         R4 R4 K4 ["getGameInfo"]
       17 CALL                             R4 1 1
       18 JUMP                             ; [+5]
       19 GETTABLEKS                       R4 R0 K5 ["_explorerController"]
       21 NAMECALL                         R4 R4 K6 ["getProjectSharedScope"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K7 ["Uid"]
       26 GETTABLEKS                       R6 R0 K8 ["_itemsCache"]
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K9 ["hasScope"]
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+5]
       33 MOVE                             R8 R4
       34 LOADB                            R9 0
       35 NAMECALL                         R6 R0 K10 ["_startNewScopeFetch"]
       37 CALL                             R6 3 0
       38 GETTABLEKS                       R6 R1 K1 ["assetIds"]
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLE                         R11 R2 R10
       44 JUMPIF                           R11 ; [+29]
       45 GETUPVAL                         R11 1
       46 MOVE                             R12 R3
       47 MOVE                             R13 R10
       48 CALL                             R11 2 1
       49 GETTABLEKS                       R12 R0 K8 ["_itemsCache"]
       51 GETTABLEKS                       R14 R3 K7 ["Uid"]
       53 MOVE                             R15 R11
       54 NAMECALL                         R12 R12 K11 ["getItem"]
       56 CALL                             R12 3 1
       57 JUMPIFNOT                        R12 ; [+16]
       58 GETUPVAL                         R13 1
       59 MOVE                             R14 R4
       60 MOVE                             R15 R10
       61 CALL                             R13 2 1
       62 GETTABLEKS                       R14 R0 K8 ["_itemsCache"]
       64 GETUPVAL                         R16 2
       65 MOVE                             R17 R12
       66 DUPTABLE                         R18 K13 [{"Path"}]
       67 SETTABLEKS                       R13 R18 K12 ["Path"]
       69 CALL                             R16 2 1
       70 MOVE                             R17 R5
       71 NAMECALL                         R14 R14 K14 ["addItem"]
       73 CALL                             R14 3 0
       74 FORGLOOP                         R6 2 ; [-32]
       76 NAMECALL                         R6 R0 K15 ["getCurrentShownScope"]
       78 CALL                             R6 1 1
       79 GETTABLEKS                       R6 R6 K7 ["Uid"]
       81 JUMPIFNOTEQ                      R6 R5 ; [+5]
       83 NAMECALL                         R6 R0 K16 ["_createRenderItems"]
       85 CALL                             R6 1 0
       86 JUMP                             ; [+6]
       87 GETTABLEKS                       R6 R0 K5 ["_explorerController"]
       89 MOVE                             R8 R5
       90 NAMECALL                         R6 R6 K17 ["notifyNewItemsInScope"]
       92 CALL                             R6 2 0
       93 GETIMPORT                        R6 K19 [next]
       95 MOVE                             R7 R2
       96 CALL                             R6 1 1
       97 JUMPIFEQKNIL                     R6 ; [+8]
       99 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
      101 DUPTABLE                         R8 K24 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
      102 NAMECALL                         R6 R6 K25 ["showToast"]
      104 CALL                             R6 2 0
      105 RETURN                           R0 0
      106 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
      108 DUPTABLE                         R8 K27 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceSuccess"}]
      109 NAMECALL                         R6 R6 K25 ["showToast"]
      111 CALL                             R6 2 0
      112 RETURN                           R0 0

PROTO_22:
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
       42 GETUPVAL                         R11 2
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+7]
       45 GETUPVAL                         R11 3
       46 JUMPIFNOT                        R11 ; [+5]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R12 R10 K7 ["Path"]
       50 LOADNIL                          R13
       51 SETTABLE                         R13 R11 R12
       52 FORGLOOP                         R6 2 ; [-21]
       54 LOADB                            R6 0
       55 MOVE                             R7 R1
       56 LOADNIL                          R8
       57 LOADNIL                          R9
       58 FORGPREP                         R7
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K8 ["_creators"]
       62 GETTABLE                         R12 R13 R10
       63 JUMPIF                           R12 ; [+8]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K8 ["_creators"]
       67 SETTABLE                         R11 R12 R10
       68 GETUPVAL                         R12 2
       69 CALL                             R12 0 1
       70 JUMPIFNOT                        R12 ; [+1]
       71 LOADB                            R6 1
       72 GETUPVAL                         R12 2
       73 CALL                             R12 0 1
       74 JUMPIF                           R12 ; [+1]
       75 LOADB                            R6 1
       76 FORGLOOP                         R7 2 ; [-18]
       78 JUMPIFNOT                        R6 ; [+10]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K9 ["OnCreatorsChanged"]
       82 GETUPVAL                         R9 0
       83 NAMECALL                         R9 R9 K10 ["getCreators"]
       85 CALL                             R9 1 -1
       86 NAMECALL                         R7 R7 K11 ["Fire"]
       88 CALL                             R7 -1 0
       89 GETUPVAL                         R7 0
       90 NAMECALL                         R7 R7 K12 ["getCurrentShownScope"]
       92 CALL                             R7 1 1
       93 GETTABLEKS                       R8 R7 K2 ["Uid"]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R9 R9 K2 ["Uid"]
       98 JUMPIFNOTEQ                      R8 R9 ; [+5]
      100 GETUPVAL                         R8 0
      101 NAMECALL                         R8 R8 K13 ["_createRenderItems"]
      103 CALL                             R8 1 0
      104 JUMPIFNOT                        R3 ; [+7]
      105 GETUPVAL                         R8 0
      106 GETTABLEKS                       R8 R8 K14 ["_pluginController"]
      108 MOVE                             R10 R3
      109 NAMECALL                         R8 R8 K15 ["setRootPlace"]
      111 CALL                             R8 2 0
      112 SETTABLEKS                       R4 R5 K16 ["NextPageToken"]
      114 LOADB                            R8 1
      115 JUMPIFEQKNIL                     R4 ; [+5]
      117 JUMPIFEQKS                       R4 K17 [""] ; [+2]
      119 LOADB                            R8 0 +1
      120 LOADB                            R8 1
      121 GETUPVAL                         R9 2
      122 CALL                             R9 0 1
      123 JUMPIFNOT                        R9 ; [+5]
      124 GETUPVAL                         R10 3
      125 JUMPIFNOTEQKNIL                  R10 ; [+2]
      127 LOADB                            R9 0 +1
      128 LOADB                            R9 1
      129 NOT                              R10 R9
      130 JUMPIFNOT                        R10 ; [+16]
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K1 ["_itemsCache"]
      134 NAMECALL                         R11 R11 K18 ["getTotalItemCount"]
      136 CALL                             R11 1 1
      137 GETUPVAL                         R12 0
      138 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      140 NAMECALL                         R12 R12 K19 ["getMaxItems"]
      142 CALL                             R12 1 1
      143 JUMPIFLT                         R12 R11 ; [+2]
      145 LOADB                            R10 0 +1
      146 LOADB                            R10 1
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K1 ["_itemsCache"]
      150 GETUPVAL                         R13 1
      151 GETTABLEKS                       R13 R13 K2 ["Uid"]
      153 NAMECALL                         R11 R11 K20 ["getScopeCacheFetchProgress"]
      155 CALL                             R11 2 1
      156 JUMPIF                           R8 ; [+1]
      157 JUMPIFNOT                        R10 ; [+37]
      158 LOADB                            R12 0
      159 SETTABLEKS                       R12 R5 K21 ["Loading"]
      161 LOADN                            R12 0
      162 SETTABLEKS                       R12 R5 K22 ["FetchProgress"]
      164 GETUPVAL                         R12 2
      165 CALL                             R12 0 1
      166 JUMPIFNOT                        R12 ; [+33]
      167 GETUPVAL                         R12 3
      168 JUMPIFNOT                        R12 ; [+31]
      169 GETIMPORT                        R12 K24 [next]
      171 GETUPVAL                         R13 3
      172 CALL                             R12 1 1
      173 JUMPIFNOT                        R12 ; [+26]
      174 GETUPVAL                         R12 3
      175 LOADNIL                          R13
      176 LOADNIL                          R14
      177 FORGPREP                         R12
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K1 ["_itemsCache"]
      181 MOVE                             R19 R15
      182 GETUPVAL                         R20 1
      183 GETTABLEKS                       R20 R20 K2 ["Uid"]
      185 NAMECALL                         R17 R17 K25 ["removeItem"]
      187 CALL                             R17 3 0
      188 FORGLOOP                         R12 2 ; [-11]
      190 GETUPVAL                         R12 0
      191 NAMECALL                         R12 R12 K13 ["_createRenderItems"]
      193 CALL                             R12 1 0
      194 JUMP                             ; [+5]
      195 LOADB                            R12 1
      196 SETTABLEKS                       R12 R5 K21 ["Loading"]
      198 SETTABLEKS                       R11 R5 K22 ["FetchProgress"]
      200 GETUPVAL                         R12 0
      201 GETTABLEKS                       R12 R12 K26 ["OnScopeFetchProgressChanged"]
      203 MOVE                             R14 R11
      204 GETTABLEKS                       R15 R5 K21 ["Loading"]
      206 GETUPVAL                         R16 1
      207 GETTABLEKS                       R16 R16 K2 ["Uid"]
      209 NAMECALL                         R12 R12 K11 ["Fire"]
      211 CALL                             R12 4 0
      212 GETTABLEKS                       R12 R5 K21 ["Loading"]
      214 JUMPIF                           R12 ; [+2]
      215 LOADB                            R12 0
      216 RETURN                           R12 1
      217 LOADB                            R12 1
      218 RETURN                           R12 1

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["Uid"]
        2 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R3 K2 ["getScope"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 NEWTABLE                         R4 0 0
       12 GETTABLEKS                       R5 R3 K3 ["PathIndexMap"]
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 LOADB                            R10 1
       18 SETTABLE                         R10 R4 R8
       19 FORGLOOP                         R5 2 ; [-3]
       21 LOADK                            R5 K4 [""]
       22 SETTABLEKS                       R5 R3 K5 ["NextPageToken"]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R3 K6 ["Loading"]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R3 K7 ["FetchProgress"]
       30 MOVE                             R7 R1
       31 MOVE                             R8 R4
       32 NAMECALL                         R5 R0 K8 ["_getNewItemsHandler"]
       34 CALL                             R5 3 1
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R0
       38 GETTABLEKS                       R7 R0 K9 ["_networking"]
       40 MOVE                             R9 R1
       41 LOADNIL                          R10
       42 MOVE                             R11 R5
       43 MOVE                             R12 R6
       44 GETTABLEKS                       R13 R0 K10 ["_explorerController"]
       46 MOVE                             R15 R1
       47 NAMECALL                         R13 R13 K11 ["getScopeRoot"]
       49 CALL                             R13 2 -1
       50 NAMECALL                         R7 R7 K12 ["fetchAssetsAsync"]
       52 CALL                             R7 -1 0
       53 GETTABLEKS                       R7 R0 K13 ["OnScopeFetchProgressChanged"]
       55 LOADN                            R9 0
       56 LOADB                            R10 1
       57 MOVE                             R11 R2
       58 NAMECALL                         R7 R7 K14 ["Fire"]
       60 CALL                             R7 4 0
       61 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_refreshDebounceTimers"]
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R0 R1
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K2 ["getCurrentShownScope"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K3 ["Uid"]
       17 GETUPVAL                         R2 1
       18 JUMPIFNOTEQ                      R1 R2 ; [+7]
       20 GETUPVAL                         R1 0
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K4 ["_refreshScopeInPlace"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K5 ["_itemsCache"]
       29 GETUPVAL                         R3 1
       30 NAMECALL                         R1 R1 K6 ["removeScope"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["_refreshDebounceTimers"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R2 K3 [task.cancel]
        6 GETTABLEKS                       R4 R0 K0 ["_refreshDebounceTimers"]
        8 GETTABLE                         R3 R4 R1
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K0 ["_refreshDebounceTimers"]
       12 GETIMPORT                        R3 K5 [task.delay]
       14 LOADK                            R4 K6 [0.5]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R3 2 1
       19 SETTABLE                         R3 R2 R1
       20 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["paths"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R6
        7 CALL                             R8 1 1
        8 JUMPIF                           R8 ; [+4]
        9 GETUPVAL                         R9 1
       10 MOVE                             R10 R6
       11 CALL                             R9 1 1
       12 MOVE                             R8 R9
       13 MOVE                             R7 R8
       14 JUMPIFNOT                        R7 ; [+25]
       15 GETTABLEKS                       R8 R0 K1 ["_itemsCache"]
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R8 K2 ["hasScope"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+18]
       22 NAMECALL                         R8 R0 K3 ["getCurrentShownScope"]
       24 CALL                             R8 1 1
       25 GETTABLEKS                       R8 R8 K4 ["Uid"]
       27 JUMPIFNOTEQ                      R8 R7 ; [+6]
       29 MOVE                             R10 R7
       30 NAMECALL                         R8 R0 K5 ["_scheduleDebouncedRefresh"]
       32 CALL                             R8 2 0
       33 JUMP                             ; [+6]
       34 GETTABLEKS                       R8 R0 K1 ["_itemsCache"]
       36 MOVE                             R10 R7
       37 NAMECALL                         R8 R8 K6 ["removeScope"]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R2 2 ; [-36]
       42 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_36:
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

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_38:
        0 JUMPIFNOT                        R1 ; [+21]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["_sorts"]
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R0 K1 ["_savedSorts"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K2 ["_filters"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       13 NAMECALL                         R2 R0 K4 ["_clearItems"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K5 ["_analyticsState"]
       18 LOADK                            R3 K6 ["search"]
       19 SETTABLEKS                       R3 R2 K7 ["Source"]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R0 K1 ["_savedSorts"]
       24 JUMPIFEQKNIL                     R3 ; [+4]
       26 GETTABLEKS                       R2 R0 K1 ["_savedSorts"]
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K8 ["get"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R0 K0 ["_sorts"]
       35 GETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       37 JUMPIFEQKNIL                     R2 ; [+6]
       39 GETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       41 SETTABLEKS                       R2 R0 K2 ["_filters"]
       43 JUMP                             ; [+3]
       44 NAMECALL                         R2 R0 K9 ["clearFilters"]
       46 CALL                             R2 1 0
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R0 K1 ["_savedSorts"]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R0 K3 ["_savedFilters"]
       53 GETTABLEKS                       R2 R0 K10 ["OnSortFilterChanged"]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R5 R0 K0 ["_sorts"]
       58 CALL                             R4 1 1
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R6 R0 K2 ["_filters"]
       62 CALL                             R5 1 -1
       63 NAMECALL                         R2 R2 K11 ["Fire"]
       65 CALL                             R2 -1 0
       66 NAMECALL                         R2 R0 K12 ["refreshItems"]
       68 CALL                             R2 1 0
       69 LOADB                            R4 0
       70 NAMECALL                         R2 R0 K13 ["setShowAllSearchFolders"]
       72 CALL                             R2 2 0
       73 RETURN                           R0 0

PROTO_39:
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
       37 JUMPIFNOTEQ                      R3 R4 ; [+46]
       39 GETUPVAL                         R3 2
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+9]
       42 GETTABLEKS                       R3 R1 K12 ["AssetType"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K12 ["AssetType"]
       47 GETTABLEKS                       R4 R4 K13 ["Place"]
       49 JUMPIFNOTEQ                      R3 R4 ; [+34]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K14 ["AssetInfoField"]
       54 GETTABLEKS                       R5 R5 K15 ["DisplayName"]
       56 GETTABLEKS                       R6 R0 K6 ["_searchController"]
       58 NAMECALL                         R6 R6 K16 ["getSearchTerm"]
       60 CALL                             R6 1 -1
       61 NAMECALL                         R3 R0 K17 ["_addFilter"]
       63 CALL                             R3 -1 0
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K14 ["AssetInfoField"]
       67 GETTABLEKS                       R5 R5 K12 ["AssetType"]
       69 NEWTABLE                         R6 1 0
       71 GETTABLEKS                       R7 R1 K12 ["AssetType"]
       73 LOADB                            R8 1
       74 SETTABLE                         R8 R6 R7
       75 NAMECALL                         R3 R0 K17 ["_addFilter"]
       77 CALL                             R3 3 0
       78 MOVE                             R5 R2
       79 LOADB                            R6 0
       80 NAMECALL                         R3 R0 K18 ["_startNewScopeFetch"]
       82 CALL                             R3 3 0
       83 RETURN                           R0 0
       84 DUPTABLE                         R3 K20 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       85 GETTABLEKS                       R4 R0 K6 ["_searchController"]
       87 NAMECALL                         R4 R4 K16 ["getSearchTerm"]
       89 CALL                             R4 1 1
       90 SETTABLEKS                       R4 R3 K19 ["SearchTerm"]
       92 GETTABLEKS                       R4 R1 K12 ["AssetType"]
       94 SETTABLEKS                       R4 R3 K12 ["AssetType"]
       96 SETTABLEKS                       R2 R3 K8 ["ScopeInfo"]
       98 GETTABLEKS                       R4 R0 K21 ["_itemsCache"]
      100 GETTABLEKS                       R6 R2 K22 ["Uid"]
      102 NAMECALL                         R4 R4 K23 ["addScope"]
      104 CALL                             R4 2 1
      105 MOVE                             R7 R2
      106 NAMECALL                         R5 R0 K24 ["_getNewItemsHandler"]
      108 CALL                             R5 2 1
      109 GETTABLEKS                       R6 R0 K25 ["_networking"]
      111 MOVE                             R8 R3
      112 GETTABLEKS                       R9 R4 K26 ["NextPageToken"]
      114 MOVE                             R10 R5
      115 GETTABLEKS                       R11 R0 K27 ["_fetchAssetsErrorCallback"]
      117 NAMECALL                         R6 R6 K28 ["searchAssetsAsync"]
      119 CALL                             R6 5 0
      120 DUPTABLE                         R6 K31 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      121 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      123 NAMECALL                         R7 R7 K16 ["getSearchTerm"]
      125 CALL                             R7 1 1
      126 SETTABLEKS                       R7 R6 K19 ["SearchTerm"]
      128 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      130 MOVE                             R3 R6
      131 GETTABLEKS                       R6 R0 K25 ["_networking"]
      133 MOVE                             R8 R3
      134 GETTABLEKS                       R9 R4 K26 ["NextPageToken"]
      136 MOVE                             R10 R5
      137 GETTABLEKS                       R11 R0 K27 ["_fetchAssetsErrorCallback"]
      139 NAMECALL                         R6 R6 K28 ["searchAssetsAsync"]
      141 CALL                             R6 5 0
      142 GETTABLEKS                       R6 R0 K32 ["OnScopeFetchProgressChanged"]
      144 LOADN                            R8 0
      145 LOADB                            R9 1
      146 GETTABLEKS                       R10 R2 K22 ["Uid"]
      148 NAMECALL                         R6 R6 K5 ["Fire"]
      150 CALL                             R6 4 0
      151 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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
      150 GETUPVAL                         R4 9
      151 GETTABLEKS                       R4 R4 K28 ["sendFolderOperationEvent"]
      153 DUPTABLE                         R5 K35 [{"folderOperation", "folderMoveCount", "assetMoveCount", "currentRootId", "currentRootType", "currentFolderId"}]
      154 GETUPVAL                         R6 9
      155 GETTABLEKS                       R6 R6 K36 ["Enums"]
      157 GETTABLEKS                       R6 R6 K37 ["FolderOperation"]
      159 GETTABLEKS                       R6 R6 K38 ["Move"]
      161 SETTABLEKS                       R6 R5 K29 ["folderOperation"]
      163 GETUPVAL                         R6 10
      164 SETTABLEKS                       R6 R5 K30 ["folderMoveCount"]
      166 GETUPVAL                         R6 11
      167 SETTABLEKS                       R6 R5 K31 ["assetMoveCount"]
      169 GETUPVAL                         R6 12
      170 JUMPIFNOT                        R6 ; [+3]
      171 GETUPVAL                         R6 12
      172 GETTABLEKS                       R6 R6 K32 ["currentRootId"]
      174 SETTABLEKS                       R6 R5 K32 ["currentRootId"]
      176 GETUPVAL                         R6 12
      177 JUMPIFNOT                        R6 ; [+3]
      178 GETUPVAL                         R6 12
      179 GETTABLEKS                       R6 R6 K33 ["currentRootType"]
      181 SETTABLEKS                       R6 R5 K33 ["currentRootType"]
      183 GETUPVAL                         R6 12
      184 JUMPIFNOT                        R6 ; [+3]
      185 GETUPVAL                         R6 12
      186 GETTABLEKS                       R6 R6 K34 ["currentFolderId"]
      188 SETTABLEKS                       R6 R5 K34 ["currentFolderId"]
      190 CALL                             R4 1 0
      191 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+65]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 LENGTH                           R5 R4
        7 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R0 K1 ["_searchController"]
       12 NAMECALL                         R5 R5 K2 ["getShowSearchOptions"]
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+6]
       16 MOVE                             R7 R4
       17 MOVE                             R8 R2
       18 NAMECALL                         R5 R0 K3 ["_requestMoveFromSearch"]
       20 CALL                             R5 3 0
       21 RETURN                           R0 0
       22 NAMECALL                         R5 R0 K4 ["getCurrentShownScope"]
       24 CALL                             R5 1 1
       25 OR                               R6 R3 R5
       26 GETTABLEKS                       R8 R6 K5 ["Type"]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K6 ["ScopeType"]
       31 GETTABLEKS                       R9 R9 K7 ["Folder"]
       33 JUMPIFNOTEQ                      R8 R9 ; [+4]
       35 GETTABLEKS                       R7 R6 K8 ["Id"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 GETTABLEKS                       R9 R6 K5 ["Type"]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K6 ["ScopeType"]
       44 GETTABLEKS                       R10 R10 K7 ["Folder"]
       46 JUMPIFNOTEQ                      R9 R10 ; [+8]
       48 GETTABLEKS                       R8 R0 K9 ["_explorerController"]
       50 MOVE                             R10 R6
       51 NAMECALL                         R8 R8 K10 ["getScopeRoot"]
       53 CALL                             R8 2 1
       54 JUMP                             ; [+1]
       55 MOVE                             R8 R6
       56 MOVE                             R11 R4
       57 GETTABLEKS                       R12 R6 K11 ["Uid"]
       59 MOVE                             R13 R7
       60 MOVE                             R14 R8
       61 MOVE                             R15 R6
       62 MOVE                             R16 R2
       63 LOADB                            R17 0
       64 NAMECALL                         R9 R0 K12 ["_requestMoveItems"]
       66 CALL                             R9 8 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R4 1
       69 MOVE                             R5 R1
       70 CALL                             R4 1 1
       71 LENGTH                           R5 R4
       72 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
       74 RETURN                           R0 0
       75 NAMECALL                         R5 R0 K4 ["getCurrentShownScope"]
       77 CALL                             R5 1 1
       78 OR                               R6 R3 R5
       79 GETTABLEKS                       R8 R6 K5 ["Type"]
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K6 ["ScopeType"]
       84 GETTABLEKS                       R9 R9 K7 ["Folder"]
       86 JUMPIFNOTEQ                      R8 R9 ; [+4]
       88 GETTABLEKS                       R7 R6 K8 ["Id"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R7
       92 JUMPIFNOT                        R2 ; [+11]
       93 GETIMPORT                        R10 K16 [string.match]
       95 MOVE                             R11 R2
       96 LOADK                            R12 K17 ["(%d+)$"]
       97 CALL                             R10 2 1
       98 ORK                              R9 R10 K13 [""]
       99 FASTCALL1                        TONUMBER R9 ; [+2]
      100 GETIMPORT                        R8 K19 [tonumber]
      102 CALL                             R8 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R8
      105 GETTABLEKS                       R10 R6 K5 ["Type"]
      107 GETUPVAL                         R11 2
      108 GETTABLEKS                       R11 R11 K6 ["ScopeType"]
      110 GETTABLEKS                       R11 R11 K7 ["Folder"]
      112 JUMPIFNOTEQ                      R10 R11 ; [+8]
      114 GETTABLEKS                       R9 R0 K9 ["_explorerController"]
      116 MOVE                             R11 R6
      117 NAMECALL                         R9 R9 K10 ["getScopeRoot"]
      119 CALL                             R9 2 1
      120 JUMP                             ; [+1]
      121 MOVE                             R9 R6
      122 LOADN                            R10 0
      123 LOADN                            R11 0
      124 MOVE                             R12 R4
      125 LOADNIL                          R13
      126 LOADNIL                          R14
      127 FORGPREP                         R12
      128 GETTABLEKS                       R17 R0 K20 ["_itemsCache"]
      130 GETTABLEKS                       R19 R6 K11 ["Uid"]
      132 MOVE                             R20 R16
      133 GETUPVAL                         R21 2
      134 GETTABLEKS                       R21 R21 K21 ["AssetInfoField"]
      136 GETTABLEKS                       R21 R21 K22 ["AssetType"]
      138 NAMECALL                         R17 R17 K23 ["getItemField"]
      140 CALL                             R17 4 1
      141 GETUPVAL                         R18 2
      142 GETTABLEKS                       R18 R18 K22 ["AssetType"]
      144 GETTABLEKS                       R18 R18 K7 ["Folder"]
      146 JUMPIFNOTEQ                      R17 R18 ; [+3]
      148 ADDK                             R10 R10 K24 [1]
      149 JUMP                             ; [+1]
      150 ADDK                             R11 R11 K24 [1]
      151 FORGLOOP                         R12 2 ; [-24]
      153 GETUPVAL                         R12 3
      154 MOVE                             R13 R6
      155 GETTABLEKS                       R14 R0 K9 ["_explorerController"]
      157 CALL                             R12 2 1
      158 GETUPVAL                         R13 4
      159 MOVE                             R14 R4
      160 GETTABLEKS                       R15 R6 K11 ["Uid"]
      162 GETTABLEKS                       R16 R0 K20 ["_itemsCache"]
      164 CALL                             R13 3 1
      165 MOVE                             R14 R13
      166 LOADNIL                          R15
      167 LOADNIL                          R16
      168 FORGPREP                         R14
      169 GETTABLEKS                       R19 R0 K25 ["_networking"]
      171 MOVE                             R21 R9
      172 MOVE                             R22 R18
      173 MOVE                             R23 R7
      174 MOVE                             R24 R8
      175 NAMECALL                         R19 R19 K26 ["moveItemsAsync"]
      177 CALL                             R19 5 1
      178 NEWCLOSURE                       R21 P0
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R2
      181 CAPTURE                          UPVAL U5
      182 CAPTURE                          VAL R6
      183 CAPTURE                          UPVAL U6
      184 CAPTURE                          VAL R5
      185 CAPTURE                          UPVAL U7
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R9
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          REF R10
      190 CAPTURE                          REF R11
      191 CAPTURE                          VAL R12
      192 NAMECALL                         R19 R19 K27 ["andThen"]
      194 CALL                             R19 2 1
      195 NEWCLOSURE                       R21 P1
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U9
      198 NAMECALL                         R19 R19 K28 ["catch"]
      200 CALL                             R19 2 0
      201 FORGLOOP                         R14 2 ; [-33]
      203 CLOSEUPVALS                      R10
      204 RETURN                           R0 0
      205 CLOSEUPVALS                      R10

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADN                            R4 1
        6 GETTABLEKS                       R5 R1 K1 ["results"]
        8 LENGTH                           R2 R5
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 GETTABLEKS                       R6 R1 K1 ["results"]
       13 GETTABLE                         R5 R6 R4
       14 GETTABLEKS                       R6 R5 K2 ["error"]
       16 JUMPIFEQKNIL                     R6 ; [+4]
       18 LOADB                            R6 1
       19 SETUPVAL                         R6 1
       20 JUMP                             ; [+53]
       21 GETTABLEKS                       R6 R5 K3 ["item"]
       23 GETTABLE                         R7 R0 R4
       24 GETTABLEKS                       R7 R7 K4 ["path"]
       26 JUMPIFNOT                        R6 ; [+7]
       27 GETTABLEKS                       R8 R6 K5 ["folderItem"]
       29 GETTABLEKS                       R8 R8 K6 ["folder"]
       31 GETTABLEKS                       R8 R8 K7 ["folderId"]
       33 JUMPIF                           R8 ; [+1]
       34 LOADN                            R8 0
       35 JUMPIFNOTEQKN                    R8 K8 [0] ; [+5]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K9 ["Uid"]
       40 JUMP                             ; [+11]
       41 GETUPVAL                         R9 3
       42 JUMPIFNOT                        R6 ; [+3]
       43 GETTABLEKS                       R10 R6 K4 ["path"]
       45 JUMPIF                           R10 ; [+1]
       46 LOADK                            R10 K10 [""]
       47 CALL                             R9 1 1
       48 JUMPIF                           R9 ; [+3]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K9 ["Uid"]
       52 GETUPVAL                         R10 4
       53 GETUPVAL                         R12 4
       54 GETTABLE                         R11 R12 R8
       55 JUMPIF                           R11 ; [+7]
       56 DUPTABLE                         R11 K13 [{"PathsToMove", "ParentUid"}]
       57 NEWTABLE                         R12 0 0
       59 SETTABLEKS                       R12 R11 K11 ["PathsToMove"]
       61 SETTABLEKS                       R9 R11 K12 ["ParentUid"]
       63 SETTABLE                         R11 R10 R8
       64 GETUPVAL                         R12 4
       65 GETTABLE                         R11 R12 R8
       66 GETTABLEKS                       R11 R11 K11 ["PathsToMove"]
       68 FASTCALL2                        TABLE_INSERT R11 R7 ; [+4]
       70 MOVE                             R12 R7
       71 GETIMPORT                        R10 K16 [table.insert]
       73 CALL                             R10 2 0
       74 FORNLOOP                         R2
       75 RETURN                           R0 0

PROTO_51:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R7 R4 K1 ["PathsToMove"]
       12 GETTABLEKS                       R8 R4 K2 ["ParentUid"]
       14 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       16 LOADNIL                          R9
       17 JUMP                             ; [+1]
       18 MOVE                             R9 R3
       19 GETUPVAL                         R10 2
       20 GETUPVAL                         R11 3
       21 GETUPVAL                         R12 4
       22 LOADB                            R13 1
       23 NAMECALL                         R5 R5 K4 ["_requestMoveItems"]
       25 CALL                             R5 8 0
       26 FORGLOOP                         R0 2 ; [-18]
       28 GETUPVAL                         R0 5
       29 JUMPIFNOT                        R0 ; [+7]
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K5 ["_pluginController"]
       33 DUPTABLE                         R2 K10 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       34 NAMECALL                         R0 R0 K11 ["showToast"]
       36 CALL                             R0 2 0
       37 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R3 R0 K0 ["_searchController"]
        2 NAMECALL                         R3 R3 K1 ["getSearchOptions"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["ScopeInfo"]
        7 GETTABLEKS                       R4 R0 K3 ["_explorerController"]
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R4 K4 ["getScopeRoot"]
       12 CALL                             R4 2 1
       13 LOADB                            R5 0
       14 NEWTABLE                         R6 0 0
       16 NEWTABLE                         R7 0 0
       18 NEWTABLE                         R8 0 0
       20 LOADN                            R11 1
       21 LENGTH                           R9 R1
       22 LOADN                            R10 1
       23 FORNPREP                         R9
       24 GETTABLE                         R14 R1 R11
       25 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
       27 MOVE                             R13 R8
       28 GETIMPORT                        R12 K7 [table.insert]
       30 CALL                             R12 2 0
       31 LENGTH                           R12 R8
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K8 ["GetAssetParentsBatchMax"]
       35 JUMPIFNOTLT                      R12 R13 ; [+4]
       37 LENGTH                           R12 R1
       38 JUMPIFNOTEQ                      R11 R12 ; [+31]
       40 GETTABLEKS                       R12 R0 K9 ["_networking"]
       42 MOVE                             R14 R3
       43 MOVE                             R15 R8
       44 NAMECALL                         R12 R12 K10 ["getItemParentsAsync"]
       46 CALL                             R12 3 1
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          REF R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R6
       53 NAMECALL                         R12 R12 K11 ["andThen"]
       55 CALL                             R12 2 1
       56 NEWCLOSURE                       R14 P1
       57 CAPTURE                          REF R5
       58 NAMECALL                         R12 R12 K12 ["catch"]
       60 CALL                             R12 2 1
       61 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       63 MOVE                             R14 R7
       64 MOVE                             R15 R12
       65 GETIMPORT                        R13 K7 [table.insert]
       67 CALL                             R13 2 0
       68 NEWTABLE                         R8 0 0
       70 FORNLOOP                         R9
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K13 ["all"]
       74 MOVE                             R10 R7
       75 CALL                             R9 1 1
       76 NEWCLOSURE                       R11 P2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          REF R5
       83 NAMECALL                         R9 R9 K11 ["andThen"]
       85 CALL                             R9 2 0
       86 CLOSEUPVALS                      R5
       87 RETURN                           R0 0

PROTO_54:
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
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K11 ["Uid"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K12 ["_itemsCache"]
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R3 K13 ["hasScope"]
       48 CALL                             R3 2 1
       49 JUMPIF                           R3 ; [+40]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K14 ["_explorerController"]
       53 MOVE                             R5 R2
       54 NAMECALL                         R3 R3 K15 ["getScopeWithUid"]
       56 CALL                             R3 2 1
       57 JUMPIF                           R3 ; [+15]
       58 GETUPVAL                         R3 4
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K12 ["_itemsCache"]
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K11 ["Uid"]
       65 GETUPVAL                         R7 1
       66 NAMECALL                         R4 R4 K16 ["getItem"]
       68 CALL                             R4 3 1
       69 GETUPVAL                         R5 5
       70 GETTABLEKS                       R5 R5 K11 ["Uid"]
       72 CALL                             R3 2 1
       73 JUMPIF                           R3 ; [+10]
       74 GETUPVAL                         R4 6
       75 LOADK                            R6 K17 ["Couldn't get folder scope for target %*, cannot move items"]
       76 GETUPVAL                         R8 1
       77 NAMECALL                         R6 R6 K18 ["format"]
       79 CALL                             R6 2 1
       80 MOVE                             R5 R6
       81 LOADK                            R6 K19 ["WARN"]
       82 CALL                             R4 2 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R4 0
       85 MOVE                             R6 R3
       86 LOADB                            R7 0
       87 NAMECALL                         R4 R4 K20 ["_startNewScopeFetch"]
       89 CALL                             R4 3 0
       90 LOADB                            R3 0
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K21 ["_searchController"]
       94 NAMECALL                         R4 R4 K22 ["getShowSearchOptions"]
       96 CALL                             R4 1 1
       97 JUMPIF                           R4 ; [+18]
       98 GETUPVAL                         R4 7
       99 LOADNIL                          R5
      100 LOADNIL                          R6
      101 FORGPREP                         R4
      102 GETTABLE                         R9 R1 R8
      103 JUMPIF                           R9 ; [+10]
      104 GETUPVAL                         R9 0
      105 GETTABLEKS                       R9 R9 K12 ["_itemsCache"]
      107 GETUPVAL                         R11 8
      108 MOVE                             R12 R2
      109 MOVE                             R13 R8
      110 NAMECALL                         R9 R9 K23 ["moveItem"]
      112 CALL                             R9 4 0
      113 LOADB                            R3 1
      114 FORGLOOP                         R4 2 ; [-13]
      116 JUMPIFNOT                        R3 ; [+4]
      117 GETUPVAL                         R4 0
      118 NAMECALL                         R4 R4 K24 ["_createRenderItems"]
      120 CALL                             R4 1 0
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K14 ["_explorerController"]
      124 GETUPVAL                         R6 8
      125 MOVE                             R7 R2
      126 GETUPVAL                         R8 7
      127 MOVE                             R9 R1
      128 NAMECALL                         R4 R4 K25 ["moveScopes"]
      130 CALL                             R4 5 0
      131 JUMPIFNOT                        R3 ; [+8]
      132 GETUPVAL                         R4 0
      133 GETUPVAL                         R6 3
      134 GETUPVAL                         R7 5
      135 MOVE                             R8 R2
      136 GETUPVAL                         R9 1
      137 NAMECALL                         R4 R4 K26 ["_updateLastUsedFolder"]
      139 CALL                             R4 5 0
      140 GETUPVAL                         R4 9
      141 ADDK                             R4 R4 K27 [1]
      142 SETUPVAL                         R4 9
      143 GETUPVAL                         R4 9
      144 GETUPVAL                         R6 10
      145 LENGTH                           R5 R6
      146 JUMPIFNOTEQ                      R4 R5 ; [+8]
      148 GETUPVAL                         R4 0
      149 GETTABLEKS                       R4 R4 K4 ["_pluginController"]
      151 DUPTABLE                         R6 K30 [{["Key"] = "FolderMove", ["SubKey"] = "Success"}]
      152 NAMECALL                         R4 R4 K10 ["showToast"]
      154 CALL                             R4 2 0
      155 GETUPVAL                         R4 11
      156 GETTABLEKS                       R4 R4 K31 ["sendFolderOperationEvent"]
      158 DUPTABLE                         R5 K38 [{"folderOperation", "folderMoveCount", "assetMoveCount", "currentRootId", "currentRootType", "currentFolderId"}]
      159 GETUPVAL                         R6 11
      160 GETTABLEKS                       R6 R6 K39 ["Enums"]
      162 GETTABLEKS                       R6 R6 K40 ["FolderOperation"]
      164 GETTABLEKS                       R6 R6 K41 ["Move"]
      166 SETTABLEKS                       R6 R5 K32 ["folderOperation"]
      168 GETUPVAL                         R6 12
      169 SETTABLEKS                       R6 R5 K33 ["folderMoveCount"]
      171 GETUPVAL                         R6 13
      172 SETTABLEKS                       R6 R5 K34 ["assetMoveCount"]
      174 GETUPVAL                         R6 14
      175 JUMPIFNOT                        R6 ; [+3]
      176 GETUPVAL                         R6 14
      177 GETTABLEKS                       R6 R6 K35 ["currentRootId"]
      179 SETTABLEKS                       R6 R5 K35 ["currentRootId"]
      181 GETUPVAL                         R6 14
      182 JUMPIFNOT                        R6 ; [+3]
      183 GETUPVAL                         R6 14
      184 GETTABLEKS                       R6 R6 K36 ["currentRootType"]
      186 SETTABLEKS                       R6 R5 K36 ["currentRootType"]
      188 GETUPVAL                         R6 14
      189 JUMPIFNOT                        R6 ; [+3]
      190 GETUPVAL                         R6 14
      191 GETTABLEKS                       R6 R6 K37 ["currentFolderId"]
      193 SETTABLEKS                       R6 R5 K37 ["currentFolderId"]
      195 CALL                             R4 1 0
      196 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
        0 NAMECALL                         R8 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R8 1 1
        3 JUMPIFNOT                        R6 ; [+11]
        4 GETIMPORT                        R11 K4 [string.match]
        6 MOVE                             R12 R6
        7 LOADK                            R13 K5 ["(%d+)$"]
        8 CALL                             R11 2 1
        9 ORK                              R10 R11 K1 [""]
       10 FASTCALL1                        TONUMBER R10 ; [+2]
       11 GETIMPORT                        R9 K7 [tonumber]
       13 CALL                             R9 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R9
       16 LOADN                            R10 0
       17 LOADN                            R11 0
       18 JUMPIF                           R7 ; [+29]
       19 MOVE                             R12 R1
       20 LOADNIL                          R13
       21 LOADNIL                          R14
       22 FORGPREP                         R12
       23 GETTABLEKS                       R17 R0 K8 ["_itemsCache"]
       25 MOVE                             R19 R2
       26 MOVE                             R20 R16
       27 GETUPVAL                         R21 0
       28 GETTABLEKS                       R21 R21 K9 ["AssetInfoField"]
       30 GETTABLEKS                       R21 R21 K10 ["AssetType"]
       32 NAMECALL                         R17 R17 K11 ["getItemField"]
       34 CALL                             R17 4 1
       35 GETUPVAL                         R18 0
       36 GETTABLEKS                       R18 R18 K10 ["AssetType"]
       38 GETTABLEKS                       R18 R18 K12 ["Folder"]
       40 JUMPIFNOTEQ                      R17 R18 ; [+3]
       42 ADDK                             R10 R10 K13 [1]
       43 JUMP                             ; [+1]
       44 ADDK                             R11 R11 K13 [1]
       45 FORGLOOP                         R12 2 ; [-23]
       47 JUMP                             ; [+1]
       48 LENGTH                           R11 R1
       49 GETUPVAL                         R12 1
       50 MOVE                             R13 R5
       51 GETTABLEKS                       R14 R0 K14 ["_explorerController"]
       53 CALL                             R12 2 1
       54 LOADN                            R13 0
       55 GETUPVAL                         R14 2
       56 MOVE                             R15 R1
       57 GETTABLEKS                       R16 R5 K15 ["Uid"]
       59 GETTABLEKS                       R17 R0 K8 ["_itemsCache"]
       61 CALL                             R14 3 1
       62 MOVE                             R15 R14
       63 LOADNIL                          R16
       64 LOADNIL                          R17
       65 FORGPREP                         R15
       66 GETTABLEKS                       R20 R0 K16 ["_networking"]
       68 MOVE                             R22 R4
       69 MOVE                             R23 R19
       70 MOVE                             R24 R3
       71 MOVE                             R25 R9
       72 NAMECALL                         R20 R20 K17 ["moveItemsAsync"]
       74 CALL                             R20 5 1
       75 NEWCLOSURE                       R22 P0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R6
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R8
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          REF R13
       86 CAPTURE                          VAL R14
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          REF R10
       89 CAPTURE                          REF R11
       90 CAPTURE                          VAL R12
       91 NAMECALL                         R20 R20 K18 ["andThen"]
       93 CALL                             R20 2 1
       94 NEWCLOSURE                       R22 P1
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U7
       97 NAMECALL                         R20 R20 K19 ["catch"]
       99 CALL                             R20 2 0
      100 FORGLOOP                         R15 2 ; [-35]
      102 CLOSEUPVALS                      R10
      103 RETURN                           R0 0

PROTO_57:
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
       74 GETUPVAL                         R2 5
       75 GETTABLEKS                       R2 R2 K17 ["sendFolderOperationEvent"]
       77 DUPTABLE                         R3 K22 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
       78 GETUPVAL                         R4 5
       79 GETTABLEKS                       R4 R4 K23 ["Enums"]
       81 GETTABLEKS                       R4 R4 K24 ["FolderOperation"]
       83 GETTABLEKS                       R4 R4 K25 ["Create"]
       85 SETTABLEKS                       R4 R3 K18 ["folderOperation"]
       87 GETUPVAL                         R4 6
       88 JUMPIFNOT                        R4 ; [+3]
       89 GETUPVAL                         R4 6
       90 GETTABLEKS                       R4 R4 K19 ["currentRootId"]
       92 SETTABLEKS                       R4 R3 K19 ["currentRootId"]
       94 GETUPVAL                         R4 6
       95 JUMPIFNOT                        R4 ; [+3]
       96 GETUPVAL                         R4 6
       97 GETTABLEKS                       R4 R4 K20 ["currentRootType"]
       99 SETTABLEKS                       R4 R3 K20 ["currentRootType"]
      101 GETUPVAL                         R4 6
      102 JUMPIFNOT                        R4 ; [+3]
      103 GETUPVAL                         R4 6
      104 GETTABLEKS                       R4 R4 K21 ["currentFolderId"]
      106 SETTABLEKS                       R4 R3 K21 ["currentFolderId"]
      108 CALL                             R2 1 0
      109 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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
       36 GETUPVAL                         R5 1
       37 MOVE                             R6 R3
       38 GETTABLEKS                       R7 R0 K3 ["_explorerController"]
       40 CALL                             R5 2 1
       41 LOADNIL                          R8
       42 NAMECALL                         R6 R0 K8 ["setStagedEditItemPath"]
       44 CALL                             R6 2 0
       45 GETTABLEKS                       R6 R0 K3 ["_explorerController"]
       47 NAMECALL                         R6 R6 K9 ["removeStagedFolder"]
       49 CALL                             R6 1 0
       50 GETTABLEKS                       R6 R0 K10 ["_networking"]
       52 DUPTABLE                         R8 K14 [{"ParentScope", "RootScope", "FolderName"}]
       53 SETTABLEKS                       R3 R8 K11 ["ParentScope"]
       55 SETTABLEKS                       R4 R8 K12 ["RootScope"]
       57 SETTABLEKS                       R1 R8 K13 ["FolderName"]
       59 NAMECALL                         R6 R6 K15 ["createFolderAsync"]
       61 CALL                             R6 2 1
       62 NEWCLOSURE                       R8 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R5
       70 NAMECALL                         R6 R6 K16 ["andThen"]
       72 CALL                             R6 2 1
       73 NEWCLOSURE                       R8 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U6
       78 NAMECALL                         R6 R6 K17 ["catch"]
       80 CALL                             R6 2 1
       81 NEWCLOSURE                       R8 P2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R3
       84 NAMECALL                         R6 R6 K18 ["finally"]
       86 CALL                             R6 2 0
       87 RETURN                           R0 0

PROTO_61:
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
       65 GETUPVAL                         R3 5
       66 GETTABLEKS                       R3 R3 K16 ["sendFolderOperationEvent"]
       68 DUPTABLE                         R4 K21 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
       69 GETUPVAL                         R5 5
       70 GETTABLEKS                       R5 R5 K22 ["Enums"]
       72 GETTABLEKS                       R5 R5 K23 ["FolderOperation"]
       74 GETTABLEKS                       R5 R5 K24 ["Update"]
       76 SETTABLEKS                       R5 R4 K17 ["folderOperation"]
       78 GETUPVAL                         R5 6
       79 JUMPIFNOT                        R5 ; [+3]
       80 GETUPVAL                         R5 6
       81 GETTABLEKS                       R5 R5 K18 ["currentRootId"]
       83 SETTABLEKS                       R5 R4 K18 ["currentRootId"]
       85 GETUPVAL                         R5 6
       86 JUMPIFNOT                        R5 ; [+3]
       87 GETUPVAL                         R5 6
       88 GETTABLEKS                       R5 R5 K19 ["currentRootType"]
       90 SETTABLEKS                       R5 R4 K19 ["currentRootType"]
       92 GETUPVAL                         R5 6
       93 JUMPIFNOT                        R5 ; [+3]
       94 GETUPVAL                         R5 6
       95 GETTABLEKS                       R5 R5 K20 ["currentFolderId"]
       97 SETTABLEKS                       R5 R4 K20 ["currentFolderId"]
       99 CALL                             R3 1 0
      100 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
        0 GETTABLEKS                       R5 R2 K0 ["Path"]
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["Can only call rename for an existing folder"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R2 K0 ["Path"]
       14 GETUPVAL                         R4 0
       15 NAMECALL                         R5 R0 K4 ["getCurrentShownScope"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R0 K5 ["_explorerController"]
       20 CALL                             R4 2 1
       21 NAMECALL                         R5 R0 K6 ["removeStagedItem"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R0 K5 ["_explorerController"]
       26 NAMECALL                         R5 R5 K7 ["removeStagedFolder"]
       28 CALL                             R5 1 0
       29 GETTABLEKS                       R5 R0 K8 ["_networking"]
       31 MOVE                             R7 R3
       32 MOVE                             R8 R1
       33 NAMECALL                         R5 R5 K9 ["updateFolderMetadataAsync"]
       35 CALL                             R5 3 1
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R4
       44 NAMECALL                         R5 R5 K10 ["andThen"]
       46 CALL                             R5 2 1
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R5 R5 K11 ["catch"]
       51 CALL                             R5 2 0
       52 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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
       50 GETUPVAL                         R2 4
       51 GETTABLEKS                       R2 R2 K9 ["sendFolderOperationEvent"]
       53 DUPTABLE                         R3 K14 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
       54 GETUPVAL                         R4 4
       55 GETTABLEKS                       R4 R4 K15 ["Enums"]
       57 GETTABLEKS                       R4 R4 K16 ["FolderOperation"]
       59 GETTABLEKS                       R4 R4 K17 ["Delete"]
       61 SETTABLEKS                       R4 R3 K10 ["folderOperation"]
       63 GETUPVAL                         R4 5
       64 JUMPIFNOT                        R4 ; [+3]
       65 GETUPVAL                         R4 5
       66 GETTABLEKS                       R4 R4 K11 ["currentRootId"]
       68 SETTABLEKS                       R4 R3 K11 ["currentRootId"]
       70 GETUPVAL                         R4 5
       71 JUMPIFNOT                        R4 ; [+3]
       72 GETUPVAL                         R4 5
       73 GETTABLEKS                       R4 R4 K12 ["currentRootType"]
       75 SETTABLEKS                       R4 R3 K12 ["currentRootType"]
       77 GETUPVAL                         R4 5
       78 JUMPIFNOT                        R4 ; [+3]
       79 GETUPVAL                         R4 5
       80 GETTABLEKS                       R4 R4 K13 ["currentFolderId"]
       82 SETTABLEKS                       R4 R3 K13 ["currentFolderId"]
       84 CALL                             R2 1 0
       85 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 JUMPIF                           R4 ; [+3]
        3 NAMECALL                         R4 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R5 R0 K1 ["_explorerController"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R0 K2 ["_networking"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K3 ["deleteFolderAsync"]
       14 CALL                             R4 2 1
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 NAMECALL                         R4 R4 K4 ["andThen"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R4 R4 K5 ["catch"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["getSelection"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+4]
        7 NAMECALL                         R4 R0 K1 ["getCurrentShownScope"]
        9 CALL                             R4 1 1
       10 JUMP                             ; [+5]
       11 GETTABLEKS                       R4 R0 K2 ["_pluginController"]
       13 NAMECALL                         R4 R4 K3 ["getCurrentScope"]
       15 CALL                             R4 1 1
       16 NAMECALL                         R5 R0 K4 ["getItemsCache"]
       18 CALL                             R5 1 -1
       19 CALL                             R2 -1 1
       20 DUPTABLE                         R3 K10 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       21 GETTABLEKS                       R4 R2 K11 ["Ids"]
       23 SETTABLEKS                       R4 R3 K5 ["AssetIds"]
       25 GETTABLEKS                       R4 R2 K12 ["Types"]
       27 SETTABLEKS                       R4 R3 K6 ["AssetTypes"]
       29 GETTABLEKS                       R4 R2 K13 ["Names"]
       31 SETTABLEKS                       R4 R3 K7 ["AssetNames"]
       33 GETTABLEKS                       R4 R2 K14 ["IsPackage"]
       35 SETTABLEKS                       R4 R3 K8 ["IsPackages"]
       37 JUMPIFNOT                        R1 ; [+3]
       38 GETTABLEKS                       R4 R1 K9 ["UseAssetPosition"]
       40 JUMPIF                           R4 ; [+1]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K9 ["UseAssetPosition"]
       44 RETURN                           R3 1

PROTO_70:
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

PROTO_71:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_75:
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

PROTO_76:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_77:
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

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_80:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_81:
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

PROTO_82:
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

PROTO_83:
        0 NAMECALL                         R1 R0 K0 ["getDraggedItems"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADB                            R8 1
       10 SETTABLE                         R8 R2 R7
       11 FORGLOOP                         R3 2 ; [-3]
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 NAMECALL                         R5 R0 K1 ["getCurrentShownScope"]
       17 CALL                             R5 1 1
       18 NAMECALL                         R6 R0 K2 ["getItemsCache"]
       20 CALL                             R6 1 -1
       21 CALL                             R3 -1 1
       22 DUPTABLE                         R4 K6 [{"Ids", "Types", "Names"}]
       23 GETTABLEKS                       R5 R3 K3 ["Ids"]
       25 SETTABLEKS                       R5 R4 K3 ["Ids"]
       27 GETTABLEKS                       R5 R3 K4 ["Types"]
       29 SETTABLEKS                       R5 R4 K4 ["Types"]
       31 GETTABLEKS                       R5 R3 K5 ["Names"]
       33 SETTABLEKS                       R5 R4 K5 ["Names"]
       35 RETURN                           R4 1

PROTO_84:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        4 NAMECALL                         R5 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R5 1 1
        7 GETTABLEKS                       R5 R5 K2 ["Uid"]
        9 MOVE                             R6 R1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["AssetInfoField"]
       13 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       15 NAMECALL                         R3 R3 K5 ["getData"]
       17 CALL                             R3 4 1
       18 MOVE                             R4 R3
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADB                            R9 1
       23 SETTABLE                         R9 R2 R8
       24 FORGLOOP                         R4 2 ; [-3]
       26 RETURN                           R2 1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_86:
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

PROTO_87:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_97:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_98:
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

PROTO_99:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_100:
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

PROTO_101:
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

PROTO_102:
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

PROTO_103:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_104:
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

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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

PROTO_108:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["_explorerController"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_109:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_110:
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
       21 JUMPIF                           R9 ; [+10]
       22 GETUPVAL                         R10 0
       23 LOADK                            R12 K5 ["Could not find asset info for %*, skipping analytics for this item"]
       24 MOVE                             R14 R7
       25 NAMECALL                         R12 R12 K6 ["format"]
       27 CALL                             R12 2 1
       28 MOVE                             R11 R12
       29 LOADK                            R12 K7 ["WARN"]
       30 CALL                             R10 2 0
       31 JUMP                             ; [+16]
       32 GETTABLEKS                       R12 R9 K8 ["AssetId"]
       34 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       36 MOVE                             R11 R2
       37 GETIMPORT                        R10 K11 [table.insert]
       39 CALL                             R10 2 0
       40 GETTABLEKS                       R12 R9 K12 ["AssetType"]
       42 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       44 MOVE                             R11 R1
       45 GETIMPORT                        R10 K11 [table.insert]
       47 CALL                             R10 2 0
       48 FORGLOOP                         R4 2 ; [-35]
       50 GETTABLEKS                       R6 R0 K13 ["_sorts"]
       52 LENGTH                           R5 R6
       53 LOADN                            R6 0
       54 JUMPIFNOTLT                      R6 R5 ; [+7]
       56 GETTABLEKS                       R5 R0 K13 ["_sorts"]
       58 GETTABLEN                        R4 R5 1
       59 GETTABLEKS                       R4 R4 K14 ["Key"]
       61 JUMP                             ; [+9]
       62 GETTABLEKS                       R5 R0 K15 ["_analyticsState"]
       64 GETTABLEKS                       R5 R5 K16 ["Source"]
       66 JUMPIFNOTEQKS                    R5 K17 ["search"] ; [+3]
       68 LOADK                            R4 K18 ["SearchRank"]
       69 JUMP                             ; [+1]
       70 LOADK                            R4 K19 [""]
       71 NAMECALL                         R5 R0 K20 ["getScopeAnalyticsContext"]
       73 CALL                             R5 1 1
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R7 R0 K21 ["_layoutController"]
       77 NAMECALL                         R7 R7 K22 ["getBrowserLayout"]
       79 CALL                             R7 1 1
       80 GETTABLEKS                       R7 R7 K23 ["ViewType"]
       82 CALL                             R6 1 1
       83 DUPTABLE                         R7 K38 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
       84 SETTABLEKS                       R2 R7 K24 ["assetIds"]
       86 SETTABLEKS                       R1 R7 K25 ["assetTypes"]
       88 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
       90 GETTABLEKS                       R8 R8 K39 ["Action"]
       92 SETTABLEKS                       R8 R7 K26 ["insertType"]
       94 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
       96 GETTABLEKS                       R8 R8 K16 ["Source"]
       98 SETTABLEKS                       R8 R7 K27 ["insertSource"]
      100 GETTABLEKS                       R8 R0 K40 ["_searchController"]
      102 NAMECALL                         R8 R8 K41 ["getSearchTerm"]
      104 CALL                             R8 1 1
      105 SETTABLEKS                       R8 R7 K28 ["searchKeywords"]
      107 GETTABLEKS                       R8 R0 K40 ["_searchController"]
      109 NAMECALL                         R8 R8 K42 ["getSearchId"]
      111 CALL                             R8 1 1
      112 SETTABLEKS                       R8 R7 K29 ["searchId"]
      114 GETUPVAL                         R8 2
      115 GETTABLEKS                       R8 R8 K43 ["keys"]
      117 GETTABLEKS                       R9 R0 K44 ["_filters"]
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K30 ["filterTypes"]
      122 SETTABLEKS                       R4 R7 K31 ["sortType"]
      124 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      126 GETTABLEKS                       R8 R8 K45 ["Position"]
      128 SETTABLEKS                       R8 R7 K32 ["position"]
      130 GETTABLEKS                       R8 R0 K21 ["_layoutController"]
      132 NAMECALL                         R8 R8 K46 ["getIsCompact"]
      134 CALL                             R8 1 1
      135 SETTABLEKS                       R8 R7 K33 ["isCompact"]
      137 SETTABLEKS                       R6 R7 K34 ["viewMode"]
      139 MOVE                             R8 R5
      140 JUMPIFNOT                        R8 ; [+2]
      141 GETTABLEKS                       R8 R5 K35 ["currentRootId"]
      143 SETTABLEKS                       R8 R7 K35 ["currentRootId"]
      145 MOVE                             R8 R5
      146 JUMPIFNOT                        R8 ; [+2]
      147 GETTABLEKS                       R8 R5 K36 ["currentRootType"]
      149 SETTABLEKS                       R8 R7 K36 ["currentRootType"]
      151 MOVE                             R8 R5
      152 JUMPIFNOT                        R8 ; [+2]
      153 GETTABLEKS                       R8 R5 K37 ["currentFolderId"]
      155 SETTABLEKS                       R8 R7 K37 ["currentFolderId"]
      157 GETUPVAL                         R8 3
      158 CALL                             R8 0 1
      159 JUMPIFNOT                        R8 ; [+62]
      160 GETUPVAL                         R8 4
      161 GETTABLEKS                       R8 R8 K47 ["sendInsertEvent"]
      163 DUPTABLE                         R9 K48 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position"}]
      164 SETTABLEKS                       R2 R9 K24 ["assetIds"]
      166 SETTABLEKS                       R1 R9 K25 ["assetTypes"]
      168 GETTABLEKS                       R10 R0 K15 ["_analyticsState"]
      170 GETTABLEKS                       R10 R10 K39 ["Action"]
      172 SETTABLEKS                       R10 R9 K26 ["insertType"]
      174 GETTABLEKS                       R10 R0 K15 ["_analyticsState"]
      176 GETTABLEKS                       R10 R10 K16 ["Source"]
      178 SETTABLEKS                       R10 R9 K27 ["insertSource"]
      180 GETTABLEKS                       R10 R0 K40 ["_searchController"]
      182 NAMECALL                         R10 R10 K41 ["getSearchTerm"]
      184 CALL                             R10 1 1
      185 SETTABLEKS                       R10 R9 K28 ["searchKeywords"]
      187 GETTABLEKS                       R10 R0 K40 ["_searchController"]
      189 NAMECALL                         R10 R10 K42 ["getSearchId"]
      191 CALL                             R10 1 1
      192 SETTABLEKS                       R10 R9 K29 ["searchId"]
      194 GETUPVAL                         R10 2
      195 GETTABLEKS                       R10 R10 K43 ["keys"]
      197 GETTABLEKS                       R11 R0 K44 ["_filters"]
      199 CALL                             R10 1 1
      200 SETTABLEKS                       R10 R9 K30 ["filterTypes"]
      202 SETTABLEKS                       R4 R9 K31 ["sortType"]
      204 GETTABLEKS                       R10 R0 K15 ["_analyticsState"]
      206 GETTABLEKS                       R10 R10 K45 ["Position"]
      208 SETTABLEKS                       R10 R9 K32 ["position"]
      210 DUPTABLE                         R10 K52 [{"ExplorerController", "LayoutController", "ItemsController"}]
      211 GETTABLEKS                       R11 R0 K53 ["_explorerController"]
      213 SETTABLEKS                       R11 R10 K49 ["ExplorerController"]
      215 GETTABLEKS                       R11 R0 K21 ["_layoutController"]
      217 SETTABLEKS                       R11 R10 K50 ["LayoutController"]
      219 SETTABLEKS                       R0 R10 K51 ["ItemsController"]
      221 CALL                             R8 2 0
      222 GETUPVAL                         R8 5
      223 CALL                             R8 0 1
      224 JUMPIF                           R8 ; [+5]
      225 GETUPVAL                         R8 6
      226 GETTABLEKS                       R8 R8 K47 ["sendInsertEvent"]
      228 MOVE                             R9 R7
      229 CALL                             R8 1 0
      230 RETURN                           R0 0

PROTO_111:
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

PROTO_112:
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
       11 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Resources"]
       27 GETTABLEKS                       R4 R4 K10 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Promise"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Framework"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       53 GETTABLEKS                       R8 R7 K16 ["ContextItem"]
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Packages"]
       59 GETTABLEKS                       R10 R10 K17 ["Dash"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K18 ["copy"]
       64 GETTABLEKS                       R11 R9 K19 ["join"]
       66 GETTABLEKS                       R12 R9 K20 ["keys"]
       68 GETTABLEKS                       R13 R6 K21 ["Util"]
       70 GETTABLEKS                       R14 R13 K22 ["Signal"]
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R16 R0 K6 ["Src"]
       76 GETTABLEKS                       R16 R16 K23 ["Controllers"]
       78 GETTABLEKS                       R16 R16 K24 ["AudioPreviewManager"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R17 R0 K6 ["Src"]
       85 GETTABLEKS                       R17 R17 K23 ["Controllers"]
       87 GETTABLEKS                       R17 R17 K25 ["ItemsCache"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R0 K6 ["Src"]
       94 GETTABLEKS                       R18 R18 K21 ["Util"]
       96 GETTABLEKS                       R18 R18 K26 ["cleanConnections"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K6 ["Src"]
      103 GETTABLEKS                       R19 R19 K21 ["Util"]
      105 GETTABLEKS                       R19 R19 K27 ["constructItemPath"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K6 ["Src"]
      112 GETTABLEKS                       R20 R20 K21 ["Util"]
      114 GETTABLEKS                       R20 R20 K28 ["convertFolderItemToScope"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R21 R0 K6 ["Src"]
      121 GETTABLEKS                       R21 R21 K21 ["Util"]
      123 GETTABLEKS                       R21 R21 K29 ["convertToEngineAssetTypeEnum"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R0 K6 ["Src"]
      130 GETTABLEKS                       R22 R22 K21 ["Util"]
      132 GETTABLEKS                       R22 R22 K30 ["createAccountUidFromPath"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K5 [require]
      137 GETTABLEKS                       R23 R0 K6 ["Src"]
      139 GETTABLEKS                       R23 R23 K21 ["Util"]
      141 GETTABLEKS                       R23 R23 K31 ["createFolderUid"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K5 [require]
      146 GETTABLEKS                       R24 R0 K6 ["Src"]
      148 GETTABLEKS                       R24 R24 K21 ["Util"]
      150 GETTABLEKS                       R24 R24 K32 ["DefaultSort"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K5 [require]
      155 GETTABLEKS                       R25 R0 K6 ["Src"]
      157 GETTABLEKS                       R25 R25 K21 ["Util"]
      159 GETTABLEKS                       R25 R25 K33 ["getAssetInfosSlice"]
      161 CALL                             R24 1 1
      162 GETIMPORT                        R25 K5 [require]
      164 GETTABLEKS                       R26 R0 K6 ["Src"]
      166 GETTABLEKS                       R26 R26 K21 ["Util"]
      168 GETTABLEKS                       R26 R26 K34 ["getFolderErrorLocalizationKeys"]
      170 CALL                             R25 1 1
      171 GETIMPORT                        R26 K5 [require]
      173 GETTABLEKS                       R27 R0 K6 ["Src"]
      175 GETTABLEKS                       R27 R27 K21 ["Util"]
      177 GETTABLEKS                       R27 R27 K35 ["getItemMoveBatches"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K5 [require]
      182 GETTABLEKS                       R28 R0 K6 ["Src"]
      184 GETTABLEKS                       R28 R28 K21 ["Util"]
      186 GETTABLEKS                       R28 R28 K36 ["getScopeAnalyticsContext"]
      188 CALL                             R27 1 1
      189 GETIMPORT                        R28 K5 [require]
      191 GETTABLEKS                       R29 R0 K6 ["Src"]
      193 GETTABLEKS                       R29 R29 K21 ["Util"]
      195 GETTABLEKS                       R29 R29 K37 ["getViewTypeTelemetryString"]
      197 CALL                             R28 1 1
      198 GETIMPORT                        R29 K5 [require]
      200 GETTABLEKS                       R30 R0 K6 ["Src"]
      202 GETTABLEKS                       R30 R30 K21 ["Util"]
      204 GETTABLEKS                       R30 R30 K38 ["insertItems"]
      206 CALL                             R29 1 1
      207 GETIMPORT                        R30 K5 [require]
      209 GETTABLEKS                       R31 R0 K6 ["Src"]
      211 GETTABLEKS                       R31 R31 K21 ["Util"]
      213 GETTABLEKS                       R31 R31 K39 ["isInsertable"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K5 [require]
      218 GETTABLEKS                       R32 R0 K6 ["Src"]
      220 GETTABLEKS                       R32 R32 K21 ["Util"]
      222 GETTABLEKS                       R32 R32 K40 ["logIfDebug"]
      224 CALL                             R31 1 1
      225 GETIMPORT                        R32 K5 [require]
      227 GETTABLEKS                       R33 R0 K6 ["Src"]
      229 GETTABLEKS                       R33 R33 K41 ["Flags"]
      231 GETTABLEKS                       R33 R33 K42 ["getEFAssetInsertComponentEnabled"]
      233 CALL                             R32 1 1
      234 GETIMPORT                        R33 K5 [require]
      236 GETTABLEKS                       R34 R0 K6 ["Src"]
      238 GETTABLEKS                       R34 R34 K41 ["Flags"]
      240 GETTABLEKS                       R34 R34 K43 ["getEFAssetManagerInventoryRefreshFeature"]
      242 CALL                             R33 1 1
      243 GETIMPORT                        R34 K5 [require]
      245 GETTABLEKS                       R35 R0 K6 ["Src"]
      247 GETTABLEKS                       R35 R35 K41 ["Flags"]
      249 GETTABLEKS                       R35 R35 K44 ["getFFlagEnableAssetInserter"]
      251 CALL                             R34 1 1
      252 GETIMPORT                        R35 K5 [require]
      254 GETTABLEKS                       R36 R0 K6 ["Src"]
      256 GETTABLEKS                       R36 R36 K41 ["Flags"]
      258 GETTABLEKS                       R36 R36 K45 ["getFFlagAmrAddToExperience"]
      260 CALL                             R35 1 1
      261 GETIMPORT                        R36 K5 [require]
      263 GETTABLEKS                       R37 R0 K6 ["Src"]
      265 GETTABLEKS                       R37 R37 K41 ["Flags"]
      267 GETTABLEKS                       R37 R37 K46 ["getFFlagAmrAutomaticScopeRefresh"]
      269 CALL                             R36 1 1
      270 GETIMPORT                        R37 K5 [require]
      272 GETTABLEKS                       R38 R0 K6 ["Src"]
      274 GETTABLEKS                       R38 R38 K41 ["Flags"]
      276 GETTABLEKS                       R38 R38 K47 ["getFFlagAmrDragToInsert"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K6 ["Src"]
      283 GETTABLEKS                       R39 R39 K41 ["Flags"]
      285 GETTABLEKS                       R39 R39 K48 ["getFFlagAmrEnableUnifiedEvent"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K5 [require]
      290 GETTABLEKS                       R40 R0 K6 ["Src"]
      292 GETTABLEKS                       R40 R40 K41 ["Flags"]
      294 GETTABLEKS                       R40 R40 K49 ["getFFlagAmrDisableShardedEvent"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K5 [require]
      299 GETTABLEKS                       R41 R0 K6 ["Src"]
      301 GETTABLEKS                       R41 R41 K41 ["Flags"]
      303 GETTABLEKS                       R41 R41 K50 ["getFFlagDebugAmrAssetManagementControllerTest"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K5 [require]
      308 GETTABLEKS                       R42 R0 K6 ["Src"]
      310 GETTABLEKS                       R42 R42 K41 ["Flags"]
      312 GETTABLEKS                       R42 R42 K51 ["getFFlagAmrMoveFromSearch"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K5 [require]
      317 GETTABLEKS                       R43 R0 K6 ["Src"]
      319 GETTABLEKS                       R43 R43 K41 ["Flags"]
      321 GETTABLEKS                       R43 R43 K52 ["getFFlagAmrUnifyGameScopeType"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K5 [require]
      326 GETTABLEKS                       R44 R0 K6 ["Src"]
      328 GETTABLEKS                       R44 R44 K41 ["Flags"]
      330 GETTABLEKS                       R44 R44 K53 ["getFFlagAmrGameScopeSearchChangeEndpoint"]
      332 CALL                             R43 1 1
      333 LOADK                            R46 K54 ["ItemsController"]
      334 NAMECALL                         R44 R8 K55 ["extend"]
      336 CALL                             R44 2 1
      337 DUPCLOSURE                       R45 K56 [PROTO_0]
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R30
      340 CAPTURE                          VAL R20
      341 DUPCLOSURE                       R46 K57 [PROTO_17]
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R16
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R23
      346 CAPTURE                          VAL R14
      347 CAPTURE                          VAL R44
      348 CAPTURE                          VAL R31
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R18
      351 CAPTURE                          VAL R35
      352 CAPTURE                          VAL R3
      353 CAPTURE                          VAL R33
      354 CAPTURE                          VAL R40
      355 CAPTURE                          VAL R36
      356 SETTABLEKS                       R46 R44 K58 ["new"]
      358 DUPCLOSURE                       R46 K59 [PROTO_18]
      359 CAPTURE                          VAL R44
      360 SETTABLEKS                       R46 R44 K60 ["mock"]
      362 DUPCLOSURE                       R46 K61 [PROTO_19]
      363 SETTABLEKS                       R46 R44 K62 ["getIsMock"]
      365 DUPCLOSURE                       R46 K63 [PROTO_20]
      366 CAPTURE                          VAL R17
      367 SETTABLEKS                       R46 R44 K64 ["destroy"]
      369 DUPCLOSURE                       R46 K65 [PROTO_21]
      370 CAPTURE                          VAL R42
      371 CAPTURE                          VAL R18
      372 CAPTURE                          VAL R11
      373 SETTABLEKS                       R46 R44 K66 ["_handleOnAddToGame"]
      375 DUPCLOSURE                       R46 K67 [PROTO_23]
      376 CAPTURE                          VAL R36
      377 SETTABLEKS                       R46 R44 K68 ["_getNewItemsHandler"]
      379 DUPCLOSURE                       R46 K69 [PROTO_25]
      380 CAPTURE                          VAL R3
      381 SETTABLEKS                       R46 R44 K70 ["_refreshScopeInPlace"]
      383 DUPCLOSURE                       R46 K71 [PROTO_27]
      384 SETTABLEKS                       R46 R44 K72 ["_scheduleDebouncedRefresh"]
      386 DUPCLOSURE                       R46 K73 [PROTO_28]
      387 CAPTURE                          VAL R22
      388 CAPTURE                          VAL R21
      389 DUPCLOSURE                       R47 K74 [PROTO_29]
      390 CAPTURE                          VAL R22
      391 CAPTURE                          VAL R21
      392 SETTABLEKS                       R47 R44 K75 ["_handleCreatorInventoryRefresh"]
      394 DUPCLOSURE                       R47 K76 [PROTO_30]
      395 SETTABLEKS                       R47 R44 K77 ["_createRenderItems"]
      397 DUPCLOSURE                       R47 K78 [PROTO_31]
      398 CAPTURE                          VAL R3
      399 SETTABLEKS                       R47 R44 K79 ["clearRecent"]
      401 DUPCLOSURE                       R47 K80 [PROTO_33]
      402 CAPTURE                          VAL R23
      403 CAPTURE                          VAL R3
      404 SETTABLEKS                       R47 R44 K81 ["_startNewScopeFetch"]
      406 DUPCLOSURE                       R47 K82 [PROTO_34]
      407 SETTABLEKS                       R47 R44 K83 ["_clearItems"]
      409 DUPCLOSURE                       R47 K84 [PROTO_35]
      410 SETTABLEKS                       R47 R44 K85 ["getSearchFolderCount"]
      412 DUPCLOSURE                       R47 K86 [PROTO_36]
      413 SETTABLEKS                       R47 R44 K87 ["setShowAllSearchFolders"]
      415 DUPCLOSURE                       R47 K88 [PROTO_37]
      416 SETTABLEKS                       R47 R44 K89 ["getShowAllSearchFolders"]
      418 DUPCLOSURE                       R47 K90 [PROTO_38]
      419 CAPTURE                          VAL R10
      420 CAPTURE                          VAL R23
      421 SETTABLEKS                       R47 R44 K91 ["_handleOnShowSearchOptionsChanged"]
      423 DUPCLOSURE                       R47 K92 [PROTO_39]
      424 CAPTURE                          VAL R10
      425 CAPTURE                          VAL R4
      426 CAPTURE                          VAL R43
      427 SETTABLEKS                       R47 R44 K93 ["_clearAndFetchSearchItems"]
      429 DUPCLOSURE                       R47 K94 [PROTO_40]
      430 CAPTURE                          VAL R23
      431 CAPTURE                          VAL R4
      432 SETTABLEKS                       R47 R44 K95 ["refreshItems"]
      434 DUPCLOSURE                       R47 K96 [PROTO_41]
      435 SETTABLEKS                       R47 R44 K97 ["refreshAll"]
      437 DUPCLOSURE                       R47 K98 [PROTO_42]
      438 CAPTURE                          VAL R9
      439 SETTABLEKS                       R47 R44 K99 ["getDraggedItems"]
      441 DUPCLOSURE                       R47 K100 [PROTO_43]
      442 CAPTURE                          VAL R22
      443 CAPTURE                          VAL R31
      444 CAPTURE                          VAL R19
      445 SETTABLEKS                       R47 R44 K101 ["_goToFolder"]
      447 DUPCLOSURE                       R47 K102 [PROTO_44]
      448 SETTABLEKS                       R47 R44 K103 ["getLastUsedFolderName"]
      450 DUPCLOSURE                       R47 K104 [PROTO_45]
      451 CAPTURE                          VAL R4
      452 CAPTURE                          VAL R31
      453 DUPCLOSURE                       R48 K105 [PROTO_46]
      454 SETTABLEKS                       R48 R44 K106 ["_updateLastUsedFolder"]
      456 DUPCLOSURE                       R48 K107 [PROTO_49]
      457 CAPTURE                          VAL R41
      458 CAPTURE                          VAL R47
      459 CAPTURE                          VAL R4
      460 CAPTURE                          VAL R27
      461 CAPTURE                          VAL R26
      462 CAPTURE                          VAL R22
      463 CAPTURE                          VAL R19
      464 CAPTURE                          VAL R31
      465 CAPTURE                          VAL R1
      466 CAPTURE                          VAL R25
      467 SETTABLEKS                       R48 R44 K108 ["requestMoveSelectionToItem"]
      469 DUPCLOSURE                       R48 K109 [PROTO_53]
      470 CAPTURE                          VAL R3
      471 CAPTURE                          VAL R22
      472 CAPTURE                          VAL R5
      473 SETTABLEKS                       R48 R44 K110 ["_requestMoveFromSearch"]
      475 DUPCLOSURE                       R48 K111 [PROTO_56]
      476 CAPTURE                          VAL R4
      477 CAPTURE                          VAL R27
      478 CAPTURE                          VAL R26
      479 CAPTURE                          VAL R22
      480 CAPTURE                          VAL R19
      481 CAPTURE                          VAL R31
      482 CAPTURE                          VAL R1
      483 CAPTURE                          VAL R25
      484 SETTABLEKS                       R48 R44 K112 ["_requestMoveItems"]
      486 DUPCLOSURE                       R48 K113 [PROTO_60]
      487 CAPTURE                          VAL R31
      488 CAPTURE                          VAL R27
      489 CAPTURE                          VAL R19
      490 CAPTURE                          VAL R4
      491 CAPTURE                          VAL R9
      492 CAPTURE                          VAL R1
      493 CAPTURE                          VAL R25
      494 SETTABLEKS                       R48 R44 K114 ["_requestCreateFolder"]
      496 DUPCLOSURE                       R48 K115 [PROTO_63]
      497 CAPTURE                          VAL R27
      498 CAPTURE                          VAL R4
      499 CAPTURE                          VAL R1
      500 SETTABLEKS                       R48 R44 K116 ["_requestRenameFolder"]
      502 DUPCLOSURE                       R48 K117 [PROTO_64]
      503 SETTABLEKS                       R48 R44 K118 ["uploadStagedFolder"]
      505 DUPCLOSURE                       R48 K119 [PROTO_65]
      506 CAPTURE                          VAL R19
      507 SETTABLEKS                       R48 R44 K120 ["uploadStagedFolderPath"]
      509 DUPCLOSURE                       R48 K121 [PROTO_68]
      510 CAPTURE                          VAL R27
      511 CAPTURE                          VAL R22
      512 CAPTURE                          VAL R1
      513 CAPTURE                          VAL R3
      514 SETTABLEKS                       R48 R44 K122 ["requestDeleteFolder"]
      516 DUPCLOSURE                       R48 K123 [PROTO_69]
      517 CAPTURE                          VAL R45
      518 CAPTURE                          VAL R37
      519 SETTABLEKS                       R48 R44 K124 ["_createInsertJobData"]
      521 DUPCLOSURE                       R48 K125 [PROTO_70]
      522 CAPTURE                          VAL R4
      523 CAPTURE                          VAL R9
      524 CAPTURE                          VAL R32
      525 CAPTURE                          VAL R34
      526 CAPTURE                          VAL R29
      527 SETTABLEKS                       R48 R44 K126 ["handleDoubleClick"]
      529 DUPCLOSURE                       R48 K127 [PROTO_71]
      530 SETTABLEKS                       R48 R44 K128 ["setLastItemClicked"]
      532 DUPCLOSURE                       R48 K129 [PROTO_72]
      533 CAPTURE                          VAL R24
      534 SETTABLEKS                       R48 R44 K130 ["changeSelection"]
      536 DUPCLOSURE                       R48 K131 [PROTO_73]
      537 SETTABLEKS                       R48 R44 K132 ["moveSelection"]
      539 DUPCLOSURE                       R48 K133 [PROTO_74]
      540 SETTABLEKS                       R48 R44 K134 ["syncSelectionIndices"]
      542 DUPCLOSURE                       R48 K135 [PROTO_75]
      543 CAPTURE                          VAL R9
      544 SETTABLEKS                       R48 R44 K136 ["getSingleItemSelected"]
      546 DUPCLOSURE                       R48 K137 [PROTO_76]
      547 SETTABLEKS                       R48 R44 K138 ["getItemInfo"]
      549 DUPCLOSURE                       R48 K139 [PROTO_77]
      550 CAPTURE                          VAL R9
      551 CAPTURE                          VAL R4
      552 SETTABLEKS                       R48 R44 K140 ["getSelectionIdsHelper"]
      554 DUPCLOSURE                       R48 K141 [PROTO_78]
      555 SETTABLEKS                       R48 R44 K142 ["getAudioPreviewManager"]
      557 DUPCLOSURE                       R48 K143 [PROTO_79]
      558 SETTABLEKS                       R48 R44 K144 ["getItemsCache"]
      560 DUPCLOSURE                       R48 K145 [PROTO_80]
      561 SETTABLEKS                       R48 R44 K146 ["getRenderItems"]
      563 DUPCLOSURE                       R48 K147 [PROTO_81]
      564 CAPTURE                          VAL R4
      565 SETTABLEKS                       R48 R44 K148 ["requestNextPage"]
      567 DUPCLOSURE                       R48 K149 [PROTO_82]
      568 CAPTURE                          VAL R4
      569 CAPTURE                          VAL R30
      570 SETTABLEKS                       R48 R44 K150 ["selectionHasInsertableAssets"]
      572 DUPCLOSURE                       R48 K151 [PROTO_83]
      573 CAPTURE                          VAL R45
      574 SETTABLEKS                       R48 R44 K152 ["getInsertDataForDrag"]
      576 DUPCLOSURE                       R48 K153 [PROTO_84]
      577 CAPTURE                          VAL R4
      578 SETTABLEKS                       R48 R44 K154 ["getAssetTypes"]
      580 DUPCLOSURE                       R48 K155 [PROTO_85]
      581 CAPTURE                          VAL R12
      582 SETTABLEKS                       R48 R44 K156 ["getCreators"]
      584 DUPCLOSURE                       R48 K157 [PROTO_86]
      585 CAPTURE                          VAL R10
      586 SETTABLEKS                       R48 R44 K158 ["_updateSortFilter"]
      588 DUPCLOSURE                       R48 K159 [PROTO_87]
      589 SETTABLEKS                       R48 R44 K160 ["getFilters"]
      591 DUPCLOSURE                       R48 K161 [PROTO_88]
      592 CAPTURE                          VAL R11
      593 SETTABLEKS                       R48 R44 K162 ["_addFilter"]
      595 DUPCLOSURE                       R48 K163 [PROTO_89]
      596 SETTABLEKS                       R48 R44 K164 ["_removeFilter"]
      598 DUPCLOSURE                       R48 K165 [PROTO_90]
      599 CAPTURE                          VAL R4
      600 SETTABLEKS                       R48 R44 K166 ["_clearAssetTypeFilter"]
      602 DUPCLOSURE                       R48 K167 [PROTO_91]
      603 SETTABLEKS                       R48 R44 K168 ["hasFilter"]
      605 DUPCLOSURE                       R48 K169 [PROTO_92]
      606 SETTABLEKS                       R48 R44 K170 ["toggleFilter"]
      608 DUPCLOSURE                       R48 K171 [PROTO_93]
      609 CAPTURE                          VAL R4
      610 SETTABLEKS                       R48 R44 K172 ["togglePackagesFilter"]
      612 DUPCLOSURE                       R48 K173 [PROTO_94]
      613 CAPTURE                          VAL R4
      614 SETTABLEKS                       R48 R44 K174 ["toggleArchivedFilter"]
      616 DUPCLOSURE                       R48 K175 [PROTO_95]
      617 CAPTURE                          VAL R4
      618 SETTABLEKS                       R48 R44 K176 ["clearFilters"]
      620 DUPCLOSURE                       R48 K177 [PROTO_96]
      621 SETTABLEKS                       R48 R44 K178 ["getSorts"]
      623 DUPCLOSURE                       R48 K179 [PROTO_97]
      624 SETTABLEKS                       R48 R44 K180 ["setSorts"]
      626 DUPCLOSURE                       R48 K181 [PROTO_98]
      627 SETTABLEKS                       R48 R44 K182 ["addSort"]
      629 DUPCLOSURE                       R48 K183 [PROTO_99]
      630 SETTABLEKS                       R48 R44 K184 ["getSelection"]
      632 DUPCLOSURE                       R48 K185 [PROTO_100]
      633 SETTABLEKS                       R48 R44 K186 ["setSelection"]
      635 DUPCLOSURE                       R48 K187 [PROTO_101]
      636 CAPTURE                          VAL R10
      637 SETTABLEKS                       R48 R44 K188 ["modifySelection"]
      639 DUPCLOSURE                       R48 K189 [PROTO_102]
      640 SETTABLEKS                       R48 R44 K190 ["handleRightClick"]
      642 DUPCLOSURE                       R48 K191 [PROTO_103]
      643 SETTABLEKS                       R48 R44 K192 ["getStagedEditItemPath"]
      645 DUPCLOSURE                       R48 K193 [PROTO_104]
      646 SETTABLEKS                       R48 R44 K194 ["setStagedEditItemPath"]
      648 DUPCLOSURE                       R48 K195 [PROTO_105]
      649 SETTABLEKS                       R48 R44 K196 ["removeStagedItem"]
      651 DUPCLOSURE                       R48 K197 [PROTO_106]
      652 CAPTURE                          VAL R4
      653 CAPTURE                          VAL R31
      654 SETTABLEKS                       R48 R44 K198 ["renamePlace"]
      656 DUPCLOSURE                       R48 K199 [PROTO_107]
      657 CAPTURE                          VAL R4
      658 SETTABLEKS                       R48 R44 K200 ["stageNewFolder"]
      660 DUPCLOSURE                       R48 K201 [PROTO_108]
      661 CAPTURE                          VAL R27
      662 SETTABLEKS                       R48 R44 K36 ["getScopeAnalyticsContext"]
      664 DUPCLOSURE                       R48 K202 [PROTO_109]
      665 SETTABLEKS                       R48 R44 K203 ["setAnalyticsInsertAction"]
      667 DUPCLOSURE                       R48 K204 [PROTO_110]
      668 CAPTURE                          VAL R31
      669 CAPTURE                          VAL R28
      670 CAPTURE                          VAL R9
      671 CAPTURE                          VAL R38
      672 CAPTURE                          VAL R2
      673 CAPTURE                          VAL R39
      674 CAPTURE                          VAL R1
      675 SETTABLEKS                       R48 R44 K205 ["sendInsertToAnalytics"]
      677 DUPCLOSURE                       R48 K206 [PROTO_111]
      678 SETTABLEKS                       R48 R44 K207 ["getCurrentShownScope"]
      680 DUPCLOSURE                       R48 K208 [PROTO_112]
      681 SETTABLEKS                       R48 R44 K209 ["getPlugin"]
      683 RETURN                           R44 1
