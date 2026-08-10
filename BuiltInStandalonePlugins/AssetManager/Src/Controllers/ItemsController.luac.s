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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+45]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["_searchController"]
        6 NAMECALL                         R0 R0 K1 ["getSearchOptions"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["sendSearchEvent"]
       12 DUPTABLE                         R2 K6 [{"searchAssetType", "searchKeywords", "searchId"}]
       13 GETTABLEKS                       R3 R0 K7 ["AssetType"]
       15 SETTABLEKS                       R3 R2 K3 ["searchAssetType"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K0 ["_searchController"]
       20 NAMECALL                         R3 R3 K8 ["getSearchTerm"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K4 ["searchKeywords"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K0 ["_searchController"]
       28 NAMECALL                         R3 R3 K9 ["getSearchId"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K5 ["searchId"]
       33 DUPTABLE                         R3 K13 [{"ExplorerController", "LayoutController", "ItemsController"}]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K14 ["_explorerController"]
       37 SETTABLEKS                       R4 R3 K10 ["ExplorerController"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K15 ["_layoutController"]
       42 SETTABLEKS                       R4 R3 K11 ["LayoutController"]
       44 GETUPVAL                         R4 1
       45 SETTABLEKS                       R4 R3 K12 ["ItemsController"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R0 1
       49 NAMECALL                         R0 R0 K16 ["_clearAndFetchSearchItems"]
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

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
      318 CAPTURE                          UPVAL U11
      319 CAPTURE                          VAL R2
      320 CAPTURE                          UPVAL U12
      321 NAMECALL                         R8 R8 K70 ["Connect"]
      323 CALL                             R8 2 -1
      324 FASTCALL                         TABLE_INSERT ; [+2]
      325 GETIMPORT                        R6 K73 [table.insert]
      327 CALL                             R6 -1 0
      328 GETTABLEKS                       R7 R2 K55 ["_connections"]
      330 GETTABLEKS                       R8 R2 K7 ["_searchController"]
      332 GETTABLEKS                       R8 R8 K86 ["OnShowSearchOptionsChanged"]
      334 NEWCLOSURE                       R10 P10
      335 CAPTURE                          VAL R2
      336 NAMECALL                         R8 R8 K70 ["Connect"]
      338 CALL                             R8 2 -1
      339 FASTCALL                         TABLE_INSERT ; [+2]
      340 GETIMPORT                        R6 K73 [table.insert]
      342 CALL                             R6 -1 0
      343 GETTABLEKS                       R7 R2 K55 ["_connections"]
      345 GETTABLEKS                       R8 R2 K7 ["_searchController"]
      347 GETTABLEKS                       R8 R8 K87 ["OnIsDefaultSearchStateChanged"]
      349 NEWCLOSURE                       R10 P11
      350 CAPTURE                          VAL R2
      351 NAMECALL                         R8 R8 K70 ["Connect"]
      353 CALL                             R8 2 -1
      354 FASTCALL                         TABLE_INSERT ; [+2]
      355 GETIMPORT                        R6 K73 [table.insert]
      357 CALL                             R6 -1 0
      358 GETTABLEKS                       R7 R2 K55 ["_connections"]
      360 GETTABLEKS                       R8 R2 K9 ["_layoutController"]
      362 GETTABLEKS                       R8 R8 K88 ["OnBrowserLayoutChanged"]
      364 NEWCLOSURE                       R10 P12
      365 CAPTURE                          VAL R2
      366 NAMECALL                         R8 R8 K70 ["Connect"]
      368 CALL                             R8 2 -1
      369 FASTCALL                         TABLE_INSERT ; [+2]
      370 GETIMPORT                        R6 K73 [table.insert]
      372 CALL                             R6 -1 0
      373 GETTABLEKS                       R7 R2 K55 ["_connections"]
      375 GETTABLEKS                       R8 R2 K9 ["_layoutController"]
      377 GETTABLEKS                       R8 R8 K89 ["OnGridStateUpdated"]
      379 NEWCLOSURE                       R10 P13
      380 CAPTURE                          VAL R2
      381 NAMECALL                         R8 R8 K70 ["Connect"]
      383 CALL                             R8 2 -1
      384 FASTCALL                         TABLE_INSERT ; [+2]
      385 GETIMPORT                        R6 K73 [table.insert]
      387 CALL                             R6 -1 0
      388 GETUPVAL                         R6 13
      389 CALL                             R6 0 1
      390 JUMPIF                           R6 ; [+3]
      391 GETUPVAL                         R6 14
      392 CALL                             R6 0 1
      393 JUMPIFNOT                        R6 ; [+23]
      394 GETUPVAL                         R6 15
      395 CALL                             R6 0 1
      396 JUMPIFNOT                        R6 ; [+20]
      397 GETIMPORT                        R6 K68 [pcall]
      399 NEWCLOSURE                       R7 P14
      400 CAPTURE                          VAL R2
      401 CALL                             R6 1 2
      402 JUMPIFNOT                        R6 ; [+14]
      403 JUMPIFNOT                        R7 ; [+13]
      404 GETTABLEKS                       R9 R2 K55 ["_connections"]
      406 GETTABLEKS                       R10 R7 K90 ["InventoryRefreshReceived"]
      408 NEWCLOSURE                       R12 P15
      409 CAPTURE                          VAL R2
      410 NAMECALL                         R10 R10 K70 ["Connect"]
      412 CALL                             R10 2 -1
      413 FASTCALL                         TABLE_INSERT ; [+2]
      414 GETIMPORT                        R8 K73 [table.insert]
      416 CALL                             R8 -1 0
      417 RETURN                           R2 1

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
        3 GETTABLEKS                       R1 R0 K1 ["_audioPreviewManager"]
        5 NAMECALL                         R1 R1 K2 ["teardownAudioPlayer"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_refreshDebounceTimers"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETIMPORT                        R6 K6 [task.cancel]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-5]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K7 ["_connections"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R5 R1 K1 ["assetIds"]
        6 LENGTH                           R4 R5
        7 JUMPIFNOTEQKN                    R4 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R4 R0 K3 ["_pluginController"]
       12 NAMECALL                         R4 R4 K4 ["getGameInfo"]
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
       78 GETTABLEKS                       R6 R0 K15 ["_explorerController"]
       80 MOVE                             R8 R5
       81 NAMECALL                         R6 R6 K16 ["notifyNewItemsInScope"]
       83 CALL                             R6 2 0
       84 GETIMPORT                        R6 K18 [next]
       86 MOVE                             R7 R2
       87 CALL                             R6 1 1
       88 JUMPIFEQKNIL                     R6 ; [+8]
       90 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
       92 DUPTABLE                         R8 K23 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       93 NAMECALL                         R6 R6 K24 ["showToast"]
       95 CALL                             R6 2 0
       96 RETURN                           R0 0
       97 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
       99 DUPTABLE                         R8 K26 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceSuccess"}]
      100 NAMECALL                         R6 R6 K24 ["showToast"]
      102 CALL                             R6 2 0
      103 RETURN                           R0 0

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
       28 NEWTABLE                         R6 0 0
       30 MOVE                             R7 R0
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 FORGPREP                         R7
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
       37 MOVE                             R14 R11
       38 GETUPVAL                         R15 1
       39 GETTABLEKS                       R15 R15 K2 ["Uid"]
       41 NAMECALL                         R12 R12 K6 ["addItem"]
       43 CALL                             R12 3 0
       44 GETTABLEKS                       R14 R11 K7 ["Path"]
       46 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       48 MOVE                             R13 R6
       49 GETIMPORT                        R12 K10 [table.insert]
       51 CALL                             R12 2 0
       52 GETUPVAL                         R12 2
       53 CALL                             R12 0 1
       54 JUMPIFNOT                        R12 ; [+7]
       55 GETUPVAL                         R12 3
       56 JUMPIFNOT                        R12 ; [+5]
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R13 R11 K7 ["Path"]
       60 LOADNIL                          R14
       61 SETTABLE                         R14 R12 R13
       62 FORGLOOP                         R7 2 ; [-29]
       64 LOADB                            R7 0
       65 MOVE                             R8 R1
       66 LOADNIL                          R9
       67 LOADNIL                          R10
       68 FORGPREP                         R8
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K11 ["_creators"]
       72 GETTABLE                         R13 R14 R11
       73 JUMPIF                           R13 ; [+8]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K11 ["_creators"]
       77 SETTABLE                         R12 R13 R11
       78 GETUPVAL                         R13 2
       79 CALL                             R13 0 1
       80 JUMPIFNOT                        R13 ; [+1]
       81 LOADB                            R7 1
       82 GETUPVAL                         R13 2
       83 CALL                             R13 0 1
       84 JUMPIF                           R13 ; [+1]
       85 LOADB                            R7 1
       86 FORGLOOP                         R8 2 ; [-18]
       88 JUMPIFNOT                        R7 ; [+10]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K12 ["OnCreatorsChanged"]
       92 GETUPVAL                         R10 0
       93 NAMECALL                         R10 R10 K13 ["getCreators"]
       95 CALL                             R10 1 -1
       96 NAMECALL                         R8 R8 K14 ["Fire"]
       98 CALL                             R8 -1 0
       99 GETUPVAL                         R8 0
      100 NAMECALL                         R8 R8 K15 ["getCurrentShownScope"]
      102 CALL                             R8 1 1
      103 GETTABLEKS                       R9 R8 K2 ["Uid"]
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R10 R10 K2 ["Uid"]
      108 JUMPIFNOTEQ                      R9 R10 ; [+50]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K16 ["_searchController"]
      113 NAMECALL                         R9 R9 K17 ["getShowSearchOptions"]
      115 CALL                             R9 1 1
      116 JUMPIFNOT                        R9 ; [+5]
      117 GETUPVAL                         R10 0
      118 NAMECALL                         R10 R10 K18 ["_createRenderItems"]
      120 CALL                             R10 1 0
      121 JUMP                             ; [+37]
      122 GETUPVAL                         R10 0
      123 GETTABLEKS                       R10 R10 K1 ["_itemsCache"]
      125 MOVE                             R12 R6
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K19 ["_renderItems"]
      129 GETUPVAL                         R14 1
      130 GETTABLEKS                       R14 R14 K2 ["Uid"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K20 ["_filters"]
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R16 R16 K21 ["_sorts"]
      138 NAMECALL                         R10 R10 K22 ["updateSortedFilteredPaths"]
      140 CALL                             R10 6 0
      141 GETUPVAL                         R10 0
      142 GETIMPORT                        R11 K24 [table.clone]
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K19 ["_renderItems"]
      147 CALL                             R11 1 1
      148 SETTABLEKS                       R11 R10 K19 ["_renderItems"]
      150 GETUPVAL                         R10 0
      151 GETTABLEKS                       R10 R10 K25 ["OnItemsChanged"]
      153 GETUPVAL                         R12 0
      154 GETTABLEKS                       R12 R12 K19 ["_renderItems"]
      156 NAMECALL                         R10 R10 K14 ["Fire"]
      158 CALL                             R10 2 0
      159 JUMPIFNOT                        R3 ; [+7]
      160 GETUPVAL                         R9 0
      161 GETTABLEKS                       R9 R9 K26 ["_pluginController"]
      163 MOVE                             R11 R3
      164 NAMECALL                         R9 R9 K27 ["setRootPlace"]
      166 CALL                             R9 2 0
      167 SETTABLEKS                       R4 R5 K28 ["NextPageToken"]
      169 LOADB                            R9 1
      170 JUMPIFEQKNIL                     R4 ; [+5]
      172 JUMPIFEQKS                       R4 K29 [""] ; [+2]
      174 LOADB                            R9 0 +1
      175 LOADB                            R9 1
      176 GETUPVAL                         R10 2
      177 CALL                             R10 0 1
      178 JUMPIFNOT                        R10 ; [+5]
      179 GETUPVAL                         R11 3
      180 JUMPIFNOTEQKNIL                  R11 ; [+2]
      182 LOADB                            R10 0 +1
      183 LOADB                            R10 1
      184 NOT                              R11 R10
      185 JUMPIFNOT                        R11 ; [+16]
      186 GETUPVAL                         R12 0
      187 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      189 NAMECALL                         R12 R12 K30 ["getTotalItemCount"]
      191 CALL                             R12 1 1
      192 GETUPVAL                         R13 0
      193 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      195 NAMECALL                         R13 R13 K31 ["getMaxItems"]
      197 CALL                             R13 1 1
      198 JUMPIFLT                         R13 R12 ; [+2]
      200 LOADB                            R11 0 +1
      201 LOADB                            R11 1
      202 GETUPVAL                         R12 0
      203 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      205 GETUPVAL                         R14 1
      206 GETTABLEKS                       R14 R14 K2 ["Uid"]
      208 NAMECALL                         R12 R12 K32 ["getScopeCacheFetchProgress"]
      210 CALL                             R12 2 1
      211 JUMPIF                           R9 ; [+1]
      212 JUMPIFNOT                        R11 ; [+37]
      213 LOADB                            R13 0
      214 SETTABLEKS                       R13 R5 K33 ["Loading"]
      216 LOADN                            R13 0
      217 SETTABLEKS                       R13 R5 K34 ["FetchProgress"]
      219 GETUPVAL                         R13 2
      220 CALL                             R13 0 1
      221 JUMPIFNOT                        R13 ; [+33]
      222 GETUPVAL                         R13 3
      223 JUMPIFNOT                        R13 ; [+31]
      224 GETIMPORT                        R13 K36 [next]
      226 GETUPVAL                         R14 3
      227 CALL                             R13 1 1
      228 JUMPIFNOT                        R13 ; [+26]
      229 GETUPVAL                         R13 3
      230 LOADNIL                          R14
      231 LOADNIL                          R15
      232 FORGPREP                         R13
      233 GETUPVAL                         R18 0
      234 GETTABLEKS                       R18 R18 K1 ["_itemsCache"]
      236 MOVE                             R20 R16
      237 GETUPVAL                         R21 1
      238 GETTABLEKS                       R21 R21 K2 ["Uid"]
      240 NAMECALL                         R18 R18 K37 ["removeItem"]
      242 CALL                             R18 3 0
      243 FORGLOOP                         R13 2 ; [-11]
      245 GETUPVAL                         R13 0
      246 NAMECALL                         R13 R13 K18 ["_createRenderItems"]
      248 CALL                             R13 1 0
      249 JUMP                             ; [+5]
      250 LOADB                            R13 1
      251 SETTABLEKS                       R13 R5 K33 ["Loading"]
      253 SETTABLEKS                       R12 R5 K34 ["FetchProgress"]
      255 GETUPVAL                         R13 4
      256 CALL                             R13 0 1
      257 JUMPIFNOT                        R13 ; [+1]
      258 JUMPIF                           R10 ; [+12]
      259 GETUPVAL                         R13 0
      260 GETTABLEKS                       R13 R13 K38 ["OnScopeFetchProgressChanged"]
      262 MOVE                             R15 R12
      263 GETTABLEKS                       R16 R5 K33 ["Loading"]
      265 GETUPVAL                         R17 1
      266 GETTABLEKS                       R17 R17 K2 ["Uid"]
      268 NAMECALL                         R13 R13 K14 ["Fire"]
      270 CALL                             R13 4 0
      271 GETTABLEKS                       R13 R5 K33 ["Loading"]
      273 JUMPIF                           R13 ; [+2]
      274 LOADB                            R13 0
      275 RETURN                           R13 1
      276 LOADB                            R13 1
      277 RETURN                           R13 1

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

PROTO_24:
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
       35 NAMECALL                         R6 R0 K9 ["_getFetchErrorCallback"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K10 ["_networking"]
       40 MOVE                             R9 R1
       41 LOADNIL                          R10
       42 MOVE                             R11 R5
       43 MOVE                             R12 R6
       44 GETTABLEKS                       R13 R0 K11 ["_explorerController"]
       46 MOVE                             R15 R1
       47 NAMECALL                         R13 R13 K12 ["getScopeRoot"]
       49 CALL                             R13 2 -1
       50 NAMECALL                         R7 R7 K13 ["fetchAssetsAsync"]
       52 CALL                             R7 -1 0
       53 GETUPVAL                         R7 0
       54 CALL                             R7 0 1
       55 JUMPIF                           R7 ; [+8]
       56 GETTABLEKS                       R7 R0 K14 ["OnScopeFetchProgressChanged"]
       58 LOADN                            R9 0
       59 LOADB                            R10 1
       60 MOVE                             R11 R2
       61 NAMECALL                         R7 R7 K15 ["Fire"]
       63 CALL                             R7 4 0
       64 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        5 GETTABLEKS                       R3 R0 K1 ["_pluginController"]
        7 NAMECALL                         R3 R3 K2 ["getPluginSessionId"]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K3 ["paths"]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R6
       20 CALL                             R8 1 1
       21 JUMPIF                           R8 ; [+4]
       22 GETUPVAL                         R9 2
       23 MOVE                             R10 R6
       24 CALL                             R9 1 1
       25 MOVE                             R8 R9
       26 MOVE                             R7 R8
       27 JUMPIFNOT                        R7 ; [+25]
       28 GETTABLEKS                       R8 R0 K4 ["_itemsCache"]
       30 MOVE                             R10 R7
       31 NAMECALL                         R8 R8 K5 ["hasScope"]
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+18]
       35 NAMECALL                         R8 R0 K6 ["getCurrentShownScope"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R8 R8 K7 ["Uid"]
       40 JUMPIFNOTEQ                      R8 R7 ; [+6]
       42 MOVE                             R10 R7
       43 NAMECALL                         R8 R0 K8 ["_scheduleDebouncedRefresh"]
       45 CALL                             R8 2 0
       46 JUMP                             ; [+6]
       47 GETTABLEKS                       R8 R0 K4 ["_itemsCache"]
       49 MOVE                             R10 R7
       50 NAMECALL                         R8 R8 K9 ["removeScope"]
       52 CALL                             R8 2 0
       53 FORGLOOP                         R2 2 ; [-36]
       55 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

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
       26 NAMECALL                         R5 R0 K8 ["_getFetchErrorCallback"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R0 K9 ["_networking"]
       31 MOVE                             R8 R1
       32 GETTABLEKS                       R9 R3 K10 ["NextPageToken"]
       34 MOVE                             R10 R4
       35 MOVE                             R11 R5
       36 GETTABLEKS                       R12 R0 K11 ["_explorerController"]
       38 MOVE                             R14 R1
       39 NAMECALL                         R12 R12 K12 ["getScopeRoot"]
       41 CALL                             R12 2 -1
       42 NAMECALL                         R6 R6 K13 ["fetchAssetsAsync"]
       44 CALL                             R6 -1 0
       45 GETTABLEKS                       R6 R0 K14 ["OnScopeFetchProgressChanged"]
       47 LOADN                            R8 0
       48 LOADB                            R9 1
       49 GETTABLEKS                       R10 R1 K1 ["Uid"]
       51 NAMECALL                         R6 R6 K15 ["Fire"]
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
       37 JUMPIFNOTEQ                      R3 R4 ; [+98]
       39 GETTABLEKS                       R3 R1 K12 ["AssetType"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K12 ["AssetType"]
       44 GETTABLEKS                       R4 R4 K13 ["Place"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+89]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K14 ["AssetInfoField"]
       51 GETTABLEKS                       R5 R5 K15 ["DisplayName"]
       53 GETTABLEKS                       R6 R0 K6 ["_searchController"]
       55 NAMECALL                         R6 R6 K16 ["getSearchTerm"]
       57 CALL                             R6 1 -1
       58 NAMECALL                         R3 R0 K17 ["_addFilter"]
       60 CALL                             R3 -1 0
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K14 ["AssetInfoField"]
       64 GETTABLEKS                       R5 R5 K12 ["AssetType"]
       66 NEWTABLE                         R6 1 0
       68 GETTABLEKS                       R7 R1 K12 ["AssetType"]
       70 LOADB                            R8 1
       71 SETTABLE                         R8 R6 R7
       72 NAMECALL                         R3 R0 K17 ["_addFilter"]
       74 CALL                             R3 3 0
       75 GETTABLEKS                       R3 R0 K18 ["_itemsCache"]
       77 GETTABLEKS                       R5 R2 K19 ["Uid"]
       79 NAMECALL                         R3 R3 K20 ["addScope"]
       81 CALL                             R3 2 1
       82 MOVE                             R6 R2
       83 NAMECALL                         R4 R0 K21 ["_getNewItemsHandler"]
       85 CALL                             R4 2 1
       86 DUPTABLE                         R5 K24 [{"Type", "Uid", "Name", "Id"}]
       87 GETUPVAL                         R6 1
       88 GETTABLEKS                       R6 R6 K10 ["ScopeType"]
       90 GETTABLEKS                       R6 R6 K25 ["ProjectPlaces"]
       92 SETTABLEKS                       R6 R5 K9 ["Type"]
       94 GETUPVAL                         R6 2
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K10 ["ScopeType"]
       98 GETTABLEKS                       R7 R7 K25 ["ProjectPlaces"]
      100 GETTABLEKS                       R8 R2 K23 ["Id"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K19 ["Uid"]
      105 GETTABLEKS                       R6 R2 K22 ["Name"]
      107 SETTABLEKS                       R6 R5 K22 ["Name"]
      109 GETTABLEKS                       R6 R2 K23 ["Id"]
      111 SETTABLEKS                       R6 R5 K23 ["Id"]
      113 NAMECALL                         R6 R0 K26 ["_getFetchErrorCallback"]
      115 CALL                             R6 1 1
      116 GETTABLEKS                       R7 R0 K27 ["_networking"]
      118 MOVE                             R9 R5
      119 GETTABLEKS                       R10 R3 K28 ["NextPageToken"]
      121 MOVE                             R11 R4
      122 MOVE                             R12 R6
      123 NAMECALL                         R7 R7 K29 ["fetchAssetsAsync"]
      125 CALL                             R7 5 0
      126 GETTABLEKS                       R7 R0 K30 ["OnScopeFetchProgressChanged"]
      128 LOADN                            R9 0
      129 LOADB                            R10 1
      130 GETTABLEKS                       R11 R2 K19 ["Uid"]
      132 NAMECALL                         R7 R7 K5 ["Fire"]
      134 CALL                             R7 4 0
      135 RETURN                           R0 0
      136 DUPTABLE                         R3 K32 [{"SearchTerm", "AssetType", "ScopeInfo"}]
      137 GETTABLEKS                       R4 R0 K6 ["_searchController"]
      139 NAMECALL                         R4 R4 K16 ["getSearchTerm"]
      141 CALL                             R4 1 1
      142 SETTABLEKS                       R4 R3 K31 ["SearchTerm"]
      144 GETTABLEKS                       R4 R1 K12 ["AssetType"]
      146 SETTABLEKS                       R4 R3 K12 ["AssetType"]
      148 SETTABLEKS                       R2 R3 K8 ["ScopeInfo"]
      150 GETTABLEKS                       R4 R0 K18 ["_itemsCache"]
      152 GETTABLEKS                       R6 R2 K19 ["Uid"]
      154 NAMECALL                         R4 R4 K20 ["addScope"]
      156 CALL                             R4 2 1
      157 MOVE                             R7 R2
      158 NAMECALL                         R5 R0 K21 ["_getNewItemsHandler"]
      160 CALL                             R5 2 1
      161 GETTABLEKS                       R6 R0 K27 ["_networking"]
      163 MOVE                             R8 R3
      164 GETTABLEKS                       R9 R4 K28 ["NextPageToken"]
      166 MOVE                             R10 R5
      167 GETTABLEKS                       R11 R0 K33 ["_fetchAssetsErrorCallback"]
      169 NAMECALL                         R6 R6 K34 ["searchAssetsAsync"]
      171 CALL                             R6 5 0
      172 DUPTABLE                         R6 K37 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      173 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      175 NAMECALL                         R7 R7 K16 ["getSearchTerm"]
      177 CALL                             R7 1 1
      178 SETTABLEKS                       R7 R6 K31 ["SearchTerm"]
      180 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      182 MOVE                             R3 R6
      183 GETTABLEKS                       R6 R0 K27 ["_networking"]
      185 MOVE                             R8 R3
      186 GETTABLEKS                       R9 R4 K28 ["NextPageToken"]
      188 MOVE                             R10 R5
      189 GETTABLEKS                       R11 R0 K33 ["_fetchAssetsErrorCallback"]
      191 NAMECALL                         R6 R6 K34 ["searchAssetsAsync"]
      193 CALL                             R6 5 0
      194 GETTABLEKS                       R6 R0 K30 ["OnScopeFetchProgressChanged"]
      196 LOADN                            R8 0
      197 LOADB                            R9 1
      198 GETTABLEKS                       R10 R2 K19 ["Uid"]
      200 NAMECALL                         R6 R6 K5 ["Fire"]
      202 CALL                             R6 4 0
      203 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 LENGTH                           R5 R4
        4 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K1 ["_searchController"]
        9 NAMECALL                         R5 R5 K2 ["getShowSearchOptions"]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 MOVE                             R7 R4
       14 MOVE                             R8 R2
       15 NAMECALL                         R5 R0 K3 ["_requestMoveFromSearch"]
       17 CALL                             R5 3 0
       18 RETURN                           R0 0
       19 NAMECALL                         R5 R0 K4 ["getCurrentShownScope"]
       21 CALL                             R5 1 1
       22 OR                               R6 R3 R5
       23 GETTABLEKS                       R8 R6 K5 ["Type"]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K6 ["ScopeType"]
       28 GETTABLEKS                       R9 R9 K7 ["Folder"]
       30 JUMPIFNOTEQ                      R8 R9 ; [+4]
       32 GETTABLEKS                       R7 R6 K8 ["Id"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 GETTABLEKS                       R9 R6 K5 ["Type"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K6 ["ScopeType"]
       41 GETTABLEKS                       R10 R10 K7 ["Folder"]
       43 JUMPIFNOTEQ                      R9 R10 ; [+8]
       45 GETTABLEKS                       R8 R0 K9 ["_explorerController"]
       47 MOVE                             R10 R6
       48 NAMECALL                         R8 R8 K10 ["getScopeRoot"]
       50 CALL                             R8 2 1
       51 JUMP                             ; [+1]
       52 MOVE                             R8 R6
       53 MOVE                             R11 R4
       54 GETTABLEKS                       R12 R6 K11 ["Uid"]
       56 MOVE                             R13 R7
       57 MOVE                             R14 R8
       58 MOVE                             R15 R6
       59 MOVE                             R16 R2
       60 LOADB                            R17 0
       61 NAMECALL                         R9 R0 K12 ["_requestMoveItems"]
       63 CALL                             R9 8 0
       64 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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
      156 CALL                             R4 0 1
      157 JUMPIFNOT                        R4 ; [+25]
      158 GETUPVAL                         R4 12
      159 GETTABLEKS                       R4 R4 K31 ["sendMoveFolderEvent"]
      161 DUPTABLE                         R5 K34 [{"folderMoveCount", "assetMoveCount"}]
      162 GETUPVAL                         R6 13
      163 SETTABLEKS                       R6 R5 K32 ["folderMoveCount"]
      165 GETUPVAL                         R6 14
      166 SETTABLEKS                       R6 R5 K33 ["assetMoveCount"]
      168 DUPTABLE                         R6 K38 [{"ExplorerController", "LayoutController", "ItemsController"}]
      169 GETUPVAL                         R7 0
      170 GETTABLEKS                       R7 R7 K14 ["_explorerController"]
      172 SETTABLEKS                       R7 R6 K35 ["ExplorerController"]
      174 GETUPVAL                         R7 0
      175 GETTABLEKS                       R7 R7 K39 ["_layoutController"]
      177 SETTABLEKS                       R7 R6 K36 ["LayoutController"]
      179 GETUPVAL                         R7 0
      180 SETTABLEKS                       R7 R6 K37 ["ItemsController"]
      182 CALL                             R4 2 0
      183 GETUPVAL                         R4 15
      184 CALL                             R4 0 1
      185 JUMPIF                           R4 ; [+44]
      186 GETUPVAL                         R4 16
      187 GETUPVAL                         R5 17
      188 GETUPVAL                         R6 0
      189 GETTABLEKS                       R6 R6 K14 ["_explorerController"]
      191 CALL                             R4 2 1
      192 GETUPVAL                         R5 18
      193 GETTABLEKS                       R5 R5 K40 ["sendFolderOperationEvent"]
      195 DUPTABLE                         R6 K45 [{"folderOperation", "folderMoveCount", "assetMoveCount", "currentRootId", "currentRootType", "currentFolderId"}]
      196 GETUPVAL                         R7 18
      197 GETTABLEKS                       R7 R7 K46 ["Enums"]
      199 GETTABLEKS                       R7 R7 K47 ["FolderOperation"]
      201 GETTABLEKS                       R7 R7 K48 ["Move"]
      203 SETTABLEKS                       R7 R6 K41 ["folderOperation"]
      205 GETUPVAL                         R7 13
      206 SETTABLEKS                       R7 R6 K32 ["folderMoveCount"]
      208 GETUPVAL                         R7 14
      209 SETTABLEKS                       R7 R6 K33 ["assetMoveCount"]
      211 MOVE                             R7 R4
      212 JUMPIFNOT                        R7 ; [+2]
      213 GETTABLEKS                       R7 R4 K42 ["currentRootId"]
      215 SETTABLEKS                       R7 R6 K42 ["currentRootId"]
      217 MOVE                             R7 R4
      218 JUMPIFNOT                        R7 ; [+2]
      219 GETTABLEKS                       R7 R4 K43 ["currentRootType"]
      221 SETTABLEKS                       R7 R6 K43 ["currentRootType"]
      223 MOVE                             R7 R4
      224 JUMPIFNOT                        R7 ; [+2]
      225 GETTABLEKS                       R7 R4 K44 ["currentFolderId"]
      227 SETTABLEKS                       R7 R6 K44 ["currentFolderId"]
      229 CALL                             R5 1 0
      230 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
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
       49 LOADN                            R12 0
       50 GETTABLEKS                       R13 R0 K14 ["_pluginController"]
       52 NAMECALL                         R13 R13 K15 ["getPluginSessionId"]
       54 CALL                             R13 1 1
       55 GETUPVAL                         R14 1
       56 MOVE                             R15 R1
       57 GETTABLEKS                       R16 R5 K16 ["Uid"]
       59 GETTABLEKS                       R17 R0 K8 ["_itemsCache"]
       61 CALL                             R14 3 1
       62 MOVE                             R15 R14
       63 LOADNIL                          R16
       64 LOADNIL                          R17
       65 FORGPREP                         R15
       66 DUPTABLE                         R20 K22 [{"Account", "Paths", "Origin", "Destination", "PluginSessionId"}]
       67 SETTABLEKS                       R4 R20 K17 ["Account"]
       69 SETTABLEKS                       R19 R20 K18 ["Paths"]
       71 SETTABLEKS                       R3 R20 K19 ["Origin"]
       73 SETTABLEKS                       R9 R20 K20 ["Destination"]
       75 SETTABLEKS                       R13 R20 K21 ["PluginSessionId"]
       77 GETTABLEKS                       R21 R0 K23 ["_networking"]
       79 MOVE                             R23 R20
       80 NAMECALL                         R21 R21 K24 ["moveItemsAsync"]
       82 CALL                             R21 2 1
       83 NEWCLOSURE                       R23 P0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R6
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R8
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          REF R12
       94 CAPTURE                          VAL R14
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          REF R10
       98 CAPTURE                          REF R11
       99 CAPTURE                          UPVAL U7
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          VAL R5
      102 CAPTURE                          UPVAL U9
      103 NAMECALL                         R21 R21 K25 ["andThen"]
      105 CALL                             R21 2 1
      106 NEWCLOSURE                       R23 P1
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U10
      109 NAMECALL                         R21 R21 K26 ["catch"]
      111 CALL                             R21 2 0
      112 FORGLOOP                         R15 2 ; [-47]
      114 CLOSEUPVALS                      R10
      115 RETURN                           R0 0

PROTO_55:
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
       75 CALL                             R2 0 1
       76 JUMPIFNOT                        R2 ; [+20]
       77 GETUPVAL                         R2 6
       78 GETTABLEKS                       R2 R2 K17 ["sendCreateFolderEvent"]
       80 NEWTABLE                         R3 0 0
       82 DUPTABLE                         R4 K21 [{"ExplorerController", "LayoutController", "ItemsController"}]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K5 ["_explorerController"]
       86 SETTABLEKS                       R5 R4 K18 ["ExplorerController"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K22 ["_layoutController"]
       91 SETTABLEKS                       R5 R4 K19 ["LayoutController"]
       93 GETUPVAL                         R5 0
       94 SETTABLEKS                       R5 R4 K20 ["ItemsController"]
       96 CALL                             R2 2 0
       97 GETUPVAL                         R2 7
       98 CALL                             R2 0 1
       99 JUMPIF                           R2 ; [+38]
      100 GETUPVAL                         R2 8
      101 GETUPVAL                         R3 1
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R4 R4 K5 ["_explorerController"]
      105 CALL                             R2 2 1
      106 GETUPVAL                         R3 9
      107 GETTABLEKS                       R3 R3 K23 ["sendFolderOperationEvent"]
      109 DUPTABLE                         R4 K28 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
      110 GETUPVAL                         R5 9
      111 GETTABLEKS                       R5 R5 K29 ["Enums"]
      113 GETTABLEKS                       R5 R5 K30 ["FolderOperation"]
      115 GETTABLEKS                       R5 R5 K31 ["Create"]
      117 SETTABLEKS                       R5 R4 K24 ["folderOperation"]
      119 MOVE                             R5 R2
      120 JUMPIFNOT                        R5 ; [+2]
      121 GETTABLEKS                       R5 R2 K25 ["currentRootId"]
      123 SETTABLEKS                       R5 R4 K25 ["currentRootId"]
      125 MOVE                             R5 R2
      126 JUMPIFNOT                        R5 ; [+2]
      127 GETTABLEKS                       R5 R2 K26 ["currentRootType"]
      129 SETTABLEKS                       R5 R4 K26 ["currentRootType"]
      131 MOVE                             R5 R2
      132 JUMPIFNOT                        R5 ; [+2]
      133 GETTABLEKS                       R5 R2 K27 ["currentFolderId"]
      135 SETTABLEKS                       R5 R4 K27 ["currentFolderId"]
      137 CALL                             R3 1 0
      138 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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
       47 DUPTABLE                         R7 K15 [{"ParentScope", "RootScope", "FolderName", "PluginSessionId"}]
       48 SETTABLEKS                       R3 R7 K11 ["ParentScope"]
       50 SETTABLEKS                       R4 R7 K12 ["RootScope"]
       52 SETTABLEKS                       R1 R7 K13 ["FolderName"]
       54 GETTABLEKS                       R8 R0 K16 ["_pluginController"]
       56 NAMECALL                         R8 R8 K17 ["getPluginSessionId"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K14 ["PluginSessionId"]
       61 NAMECALL                         R5 R5 K18 ["createFolderAsync"]
       63 CALL                             R5 2 1
       64 NEWCLOSURE                       R7 P0
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          UPVAL U8
       75 NAMECALL                         R5 R5 K19 ["andThen"]
       77 CALL                             R5 2 1
       78 NEWCLOSURE                       R7 P1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U9
       83 NAMECALL                         R5 R5 K20 ["catch"]
       85 CALL                             R5 2 1
       86 NEWCLOSURE                       R7 P2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R3
       89 NAMECALL                         R5 R5 K21 ["finally"]
       91 CALL                             R5 2 0
       92 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Parent"]
        8 GETTABLEKS                       R2 R0 K2 ["folderItem"]
       10 GETTABLEKS                       R2 R2 K3 ["folder"]
       12 GETTABLEKS                       R2 R2 K4 ["updateTime"]
       14 GETIMPORT                        R3 K7 [DateTime.fromIsoDate]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R3 R3 K8 ["UnixTimestampMillis"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K9 ["_itemsCache"]
       23 MOVE                             R6 R1
       24 GETUPVAL                         R7 2
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K10 ["AssetInfoField"]
       28 GETTABLEKS                       R8 R8 K11 ["DisplayName"]
       30 GETUPVAL                         R9 4
       31 NAMECALL                         R4 R4 K12 ["updateItemField"]
       33 CALL                             R4 5 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K9 ["_itemsCache"]
       37 MOVE                             R6 R1
       38 GETUPVAL                         R7 2
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K10 ["AssetInfoField"]
       42 GETTABLEKS                       R8 R8 K13 ["Modified"]
       44 MOVE                             R9 R3
       45 NAMECALL                         R4 R4 K12 ["updateItemField"]
       47 CALL                             R4 5 0
       48 GETUPVAL                         R4 0
       49 NAMECALL                         R4 R4 K14 ["getCurrentShownScope"]
       51 CALL                             R4 1 1
       52 GETTABLEKS                       R4 R4 K15 ["Uid"]
       54 JUMPIFNOTEQ                      R1 R4 ; [+5]
       56 GETUPVAL                         R4 0
       57 NAMECALL                         R4 R4 K16 ["_createRenderItems"]
       59 CALL                             R4 1 0
       60 GETUPVAL                         R4 1
       61 GETUPVAL                         R5 4
       62 SETTABLEKS                       R5 R4 K17 ["Name"]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K18 ["_explorerController"]
       67 GETUPVAL                         R6 1
       68 NAMECALL                         R4 R4 K19 ["handleRenamedFolder"]
       70 CALL                             R4 2 0
       71 GETUPVAL                         R4 5
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+20]
       74 GETUPVAL                         R4 6
       75 GETTABLEKS                       R4 R4 K20 ["sendUpdateFolderEvent"]
       77 NEWTABLE                         R5 0 0
       79 DUPTABLE                         R6 K24 [{"ExplorerController", "LayoutController", "ItemsController"}]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K18 ["_explorerController"]
       83 SETTABLEKS                       R7 R6 K21 ["ExplorerController"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K25 ["_layoutController"]
       88 SETTABLEKS                       R7 R6 K22 ["LayoutController"]
       90 GETUPVAL                         R7 0
       91 SETTABLEKS                       R7 R6 K23 ["ItemsController"]
       93 CALL                             R4 2 0
       94 GETUPVAL                         R4 7
       95 CALL                             R4 0 1
       96 JUMPIF                           R4 ; [+41]
       97 GETUPVAL                         R4 8
       98 GETUPVAL                         R5 0
       99 NAMECALL                         R5 R5 K14 ["getCurrentShownScope"]
      101 CALL                             R5 1 1
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K18 ["_explorerController"]
      105 CALL                             R4 2 1
      106 GETUPVAL                         R5 9
      107 GETTABLEKS                       R5 R5 K26 ["sendFolderOperationEvent"]
      109 DUPTABLE                         R6 K31 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
      110 GETUPVAL                         R7 9
      111 GETTABLEKS                       R7 R7 K32 ["Enums"]
      113 GETTABLEKS                       R7 R7 K33 ["FolderOperation"]
      115 GETTABLEKS                       R7 R7 K34 ["Update"]
      117 SETTABLEKS                       R7 R6 K27 ["folderOperation"]
      119 MOVE                             R7 R4
      120 JUMPIFNOT                        R7 ; [+2]
      121 GETTABLEKS                       R7 R4 K28 ["currentRootId"]
      123 SETTABLEKS                       R7 R6 K28 ["currentRootId"]
      125 MOVE                             R7 R4
      126 JUMPIFNOT                        R7 ; [+2]
      127 GETTABLEKS                       R7 R4 K29 ["currentRootType"]
      129 SETTABLEKS                       R7 R6 K29 ["currentRootType"]
      131 MOVE                             R7 R4
      132 JUMPIFNOT                        R7 ; [+2]
      133 GETTABLEKS                       R7 R4 K30 ["currentFolderId"]
      135 SETTABLEKS                       R7 R6 K30 ["currentFolderId"]
      137 CALL                             R5 1 0
      138 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
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
       26 GETTABLEKS                       R8 R0 K8 ["_pluginController"]
       28 NAMECALL                         R8 R8 K9 ["getPluginSessionId"]
       30 CALL                             R8 1 -1
       31 NAMECALL                         R4 R4 K10 ["updateFolderMetadataAsync"]
       33 CALL                             R4 -1 1
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 NAMECALL                         R4 R4 K11 ["andThen"]
       47 CALL                             R4 2 1
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R4 R4 K12 ["catch"]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+20]
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K9 ["sendDeleteFolderEvent"]
       56 NEWTABLE                         R3 0 0
       58 DUPTABLE                         R4 K13 [{"ExplorerController", "LayoutController", "ItemsController"}]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K7 ["_explorerController"]
       62 SETTABLEKS                       R5 R4 K10 ["ExplorerController"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K14 ["_layoutController"]
       67 SETTABLEKS                       R5 R4 K11 ["LayoutController"]
       69 GETUPVAL                         R5 0
       70 SETTABLEKS                       R5 R4 K12 ["ItemsController"]
       72 CALL                             R2 2 0
       73 GETUPVAL                         R2 6
       74 CALL                             R2 0 1
       75 JUMPIF                           R2 ; [+43]
       76 GETUPVAL                         R2 7
       77 GETUPVAL                         R3 1
       78 JUMPIF                           R3 ; [+4]
       79 GETUPVAL                         R3 0
       80 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
       82 CALL                             R3 1 1
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K7 ["_explorerController"]
       86 CALL                             R2 2 1
       87 GETUPVAL                         R3 8
       88 GETTABLEKS                       R3 R3 K15 ["sendFolderOperationEvent"]
       90 DUPTABLE                         R4 K20 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
       91 GETUPVAL                         R5 8
       92 GETTABLEKS                       R5 R5 K21 ["Enums"]
       94 GETTABLEKS                       R5 R5 K22 ["FolderOperation"]
       96 GETTABLEKS                       R5 R5 K23 ["Delete"]
       98 SETTABLEKS                       R5 R4 K16 ["folderOperation"]
      100 MOVE                             R5 R2
      101 JUMPIFNOT                        R5 ; [+2]
      102 GETTABLEKS                       R5 R2 K17 ["currentRootId"]
      104 SETTABLEKS                       R5 R4 K17 ["currentRootId"]
      106 MOVE                             R5 R2
      107 JUMPIFNOT                        R5 ; [+2]
      108 GETTABLEKS                       R5 R2 K18 ["currentRootType"]
      110 SETTABLEKS                       R5 R4 K18 ["currentRootType"]
      112 MOVE                             R5 R2
      113 JUMPIFNOT                        R5 ; [+2]
      114 GETTABLEKS                       R5 R2 K19 ["currentFolderId"]
      116 SETTABLEKS                       R5 R4 K19 ["currentFolderId"]
      118 CALL                             R3 1 0
      119 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R0 K1 ["_pluginController"]
        5 NAMECALL                         R6 R6 K2 ["getPluginSessionId"]
        7 CALL                             R6 1 -1
        8 NAMECALL                         R3 R3 K3 ["deleteFolderAsync"]
       10 CALL                             R3 -1 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R3 R3 K4 ["andThen"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 NAMECALL                         R3 R3 K5 ["catch"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["getSelection"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R4 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R4 1 1
        7 NAMECALL                         R5 R0 K2 ["getItemsCache"]
        9 CALL                             R5 1 -1
       10 CALL                             R2 -1 1
       11 DUPTABLE                         R3 K8 [{"AssetIds", "AssetTypes", "AssetNames", "IsPackages", "UseAssetPosition"}]
       12 GETTABLEKS                       R4 R2 K9 ["Ids"]
       14 SETTABLEKS                       R4 R3 K3 ["AssetIds"]
       16 GETTABLEKS                       R4 R2 K10 ["Types"]
       18 SETTABLEKS                       R4 R3 K4 ["AssetTypes"]
       20 GETTABLEKS                       R4 R2 K11 ["Names"]
       22 SETTABLEKS                       R4 R3 K5 ["AssetNames"]
       24 GETTABLEKS                       R4 R2 K12 ["IsPackage"]
       26 SETTABLEKS                       R4 R3 K6 ["IsPackages"]
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R4 R1 K7 ["UseAssetPosition"]
       31 JUMPIF                           R4 ; [+1]
       32 LOADB                            R4 0
       33 SETTABLEKS                       R4 R3 K7 ["UseAssetPosition"]
       35 RETURN                           R3 1

PROTO_68:
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

PROTO_69:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_73:
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
       24 JUMPIFNOT                        R5 ; [+7]
       25 JUMPIFEQKNIL                     R1 ; [+5]
       27 GETTABLEKS                       R6 R5 K7 ["AssetType"]
       29 JUMPIFNOTEQ                      R6 R1 ; [+2]
       31 RETURN                           R5 1
       32 LOADNIL                          R6
       33 RETURN                           R6 1

PROTO_74:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_75:
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

PROTO_76:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_84:
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

PROTO_85:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_95:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_96:
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

PROTO_97:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_98:
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

PROTO_99:
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

PROTO_100:
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

PROTO_101:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_102:
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

PROTO_103:
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

PROTO_104:
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

PROTO_105:
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
       16 GETTABLEKS                       R5 R5 K19 ["UnixTimestampMillis"]
       18 SETTABLEKS                       R5 R4 K7 ["Created"]
       20 GETIMPORT                        R5 K18 [DateTime.now]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R5 R5 K19 ["UnixTimestampMillis"]
       25 SETTABLEKS                       R5 R4 K8 ["Modified"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["ModerationStatus"]
       30 GETTABLEKS                       R5 R5 K20 ["Approved"]
       32 SETTABLEKS                       R5 R4 K9 ["ModerationStatus"]
       34 GETTABLEKS                       R5 R0 K21 ["_explorerController"]
       36 MOVE                             R7 R3
       37 NAMECALL                         R5 R5 K22 ["getScopeRoot"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K10 ["Creator"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K23 ["AssetSource"]
       45 GETTABLEKS                       R5 R5 K24 ["Uploaded"]
       47 SETTABLEKS                       R5 R4 K13 ["Source"]
       49 GETTABLEKS                       R5 R0 K25 ["_itemsCache"]
       51 MOVE                             R7 R4
       52 GETTABLEKS                       R8 R3 K26 ["Uid"]
       54 NAMECALL                         R5 R5 K27 ["addItem"]
       56 CALL                             R5 3 0
       57 LOADK                            R7 K2 [""]
       58 NAMECALL                         R5 R0 K28 ["setStagedEditItemPath"]
       60 CALL                             R5 2 0
       61 ORK                              R5 R2 K12 [False]
       62 SETTABLEKS                       R5 R0 K29 ["_moveSelectionToNewFolder"]
       64 GETTABLEKS                       R5 R0 K30 ["_renderItems"]
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 JUMPIFNOTEQKS                    R9 K2 [""] ; [+8]
       71 GETTABLEKS                       R10 R0 K31 ["_layoutController"]
       73 MOVE                             R12 R8
       74 NAMECALL                         R10 R10 K32 ["scrollToItem"]
       76 CALL                             R10 2 0
       77 RETURN                           R0 0
       78 FORGLOOP                         R5 2 ; [-10]
       80 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["_explorerController"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_107:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_108:
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
       71 GETUPVAL                         R5 1
       72 CALL                             R5 0 1
       73 JUMPIFNOT                        R5 ; [+62]
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K20 ["sendInsertEvent"]
       77 DUPTABLE                         R6 K30 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position"}]
       78 SETTABLEKS                       R2 R6 K21 ["assetIds"]
       80 SETTABLEKS                       R1 R6 K22 ["assetTypes"]
       82 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       84 GETTABLEKS                       R7 R7 K31 ["Action"]
       86 SETTABLEKS                       R7 R6 K23 ["insertType"]
       88 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       90 GETTABLEKS                       R7 R7 K16 ["Source"]
       92 SETTABLEKS                       R7 R6 K24 ["insertSource"]
       94 GETTABLEKS                       R7 R0 K32 ["_searchController"]
       96 NAMECALL                         R7 R7 K33 ["getSearchTerm"]
       98 CALL                             R7 1 1
       99 SETTABLEKS                       R7 R6 K25 ["searchKeywords"]
      101 GETTABLEKS                       R7 R0 K32 ["_searchController"]
      103 NAMECALL                         R7 R7 K34 ["getSearchId"]
      105 CALL                             R7 1 1
      106 SETTABLEKS                       R7 R6 K26 ["searchId"]
      108 GETUPVAL                         R7 3
      109 GETTABLEKS                       R7 R7 K35 ["keys"]
      111 GETTABLEKS                       R8 R0 K36 ["_filters"]
      113 CALL                             R7 1 1
      114 SETTABLEKS                       R7 R6 K27 ["filterTypes"]
      116 SETTABLEKS                       R4 R6 K28 ["sortType"]
      118 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
      120 GETTABLEKS                       R7 R7 K37 ["Position"]
      122 SETTABLEKS                       R7 R6 K29 ["position"]
      124 DUPTABLE                         R7 K41 [{"ExplorerController", "LayoutController", "ItemsController"}]
      125 GETTABLEKS                       R8 R0 K42 ["_explorerController"]
      127 SETTABLEKS                       R8 R7 K38 ["ExplorerController"]
      129 GETTABLEKS                       R8 R0 K43 ["_layoutController"]
      131 SETTABLEKS                       R8 R7 K39 ["LayoutController"]
      133 SETTABLEKS                       R0 R7 K40 ["ItemsController"]
      135 CALL                             R5 2 0
      136 GETUPVAL                         R5 4
      137 CALL                             R5 0 1
      138 JUMPIF                           R5 ; [+91]
      139 NAMECALL                         R5 R0 K44 ["getScopeAnalyticsContext"]
      141 CALL                             R5 1 1
      142 GETUPVAL                         R6 5
      143 GETTABLEKS                       R7 R0 K43 ["_layoutController"]
      145 NAMECALL                         R7 R7 K45 ["getBrowserLayout"]
      147 CALL                             R7 1 1
      148 GETTABLEKS                       R7 R7 K46 ["ViewType"]
      150 CALL                             R6 1 1
      151 DUPTABLE                         R7 K52 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
      152 SETTABLEKS                       R2 R7 K21 ["assetIds"]
      154 SETTABLEKS                       R1 R7 K22 ["assetTypes"]
      156 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      158 GETTABLEKS                       R8 R8 K31 ["Action"]
      160 SETTABLEKS                       R8 R7 K23 ["insertType"]
      162 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      164 GETTABLEKS                       R8 R8 K16 ["Source"]
      166 SETTABLEKS                       R8 R7 K24 ["insertSource"]
      168 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      170 NAMECALL                         R8 R8 K33 ["getSearchTerm"]
      172 CALL                             R8 1 1
      173 SETTABLEKS                       R8 R7 K25 ["searchKeywords"]
      175 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      177 NAMECALL                         R8 R8 K34 ["getSearchId"]
      179 CALL                             R8 1 1
      180 SETTABLEKS                       R8 R7 K26 ["searchId"]
      182 GETUPVAL                         R8 3
      183 GETTABLEKS                       R8 R8 K35 ["keys"]
      185 GETTABLEKS                       R9 R0 K36 ["_filters"]
      187 CALL                             R8 1 1
      188 SETTABLEKS                       R8 R7 K27 ["filterTypes"]
      190 SETTABLEKS                       R4 R7 K28 ["sortType"]
      192 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      194 GETTABLEKS                       R8 R8 K37 ["Position"]
      196 SETTABLEKS                       R8 R7 K29 ["position"]
      198 GETTABLEKS                       R8 R0 K43 ["_layoutController"]
      200 NAMECALL                         R8 R8 K53 ["getIsCompact"]
      202 CALL                             R8 1 1
      203 SETTABLEKS                       R8 R7 K47 ["isCompact"]
      205 SETTABLEKS                       R6 R7 K48 ["viewMode"]
      207 MOVE                             R8 R5
      208 JUMPIFNOT                        R8 ; [+2]
      209 GETTABLEKS                       R8 R5 K49 ["currentRootId"]
      211 SETTABLEKS                       R8 R7 K49 ["currentRootId"]
      213 MOVE                             R8 R5
      214 JUMPIFNOT                        R8 ; [+2]
      215 GETTABLEKS                       R8 R5 K50 ["currentRootType"]
      217 SETTABLEKS                       R8 R7 K50 ["currentRootType"]
      219 MOVE                             R8 R5
      220 JUMPIFNOT                        R8 ; [+2]
      221 GETTABLEKS                       R8 R5 K51 ["currentFolderId"]
      223 SETTABLEKS                       R8 R7 K51 ["currentFolderId"]
      225 GETUPVAL                         R8 6
      226 GETTABLEKS                       R8 R8 K20 ["sendInsertEvent"]
      228 MOVE                             R9 R7
      229 CALL                             R8 1 0
      230 RETURN                           R0 0

PROTO_109:
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

PROTO_110:
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
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K8 ["Analytics"]
       43 GETTABLEKS                       R6 R6 K11 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Packages"]
       50 GETTABLEKS                       R7 R7 K13 ["Promise"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Packages"]
       57 GETTABLEKS                       R8 R8 K14 ["Framework"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       62 GETTABLEKS                       R9 R8 K16 ["ContextItem"]
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Packages"]
       68 GETTABLEKS                       R11 R11 K17 ["Dash"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R10 K18 ["copy"]
       73 GETTABLEKS                       R12 R10 K19 ["join"]
       75 GETTABLEKS                       R13 R10 K20 ["keys"]
       77 GETTABLEKS                       R14 R7 K21 ["Util"]
       79 GETTABLEKS                       R15 R14 K22 ["Signal"]
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R17 R0 K6 ["Src"]
       85 GETTABLEKS                       R17 R17 K23 ["Controllers"]
       87 GETTABLEKS                       R17 R17 K24 ["AudioPreviewManager"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R0 K6 ["Src"]
       94 GETTABLEKS                       R18 R18 K23 ["Controllers"]
       96 GETTABLEKS                       R18 R18 K25 ["ItemsCache"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K6 ["Src"]
      103 GETTABLEKS                       R19 R19 K21 ["Util"]
      105 GETTABLEKS                       R19 R19 K26 ["cleanConnections"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K6 ["Src"]
      112 GETTABLEKS                       R20 R20 K21 ["Util"]
      114 GETTABLEKS                       R20 R20 K27 ["constructItemPath"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R21 R0 K6 ["Src"]
      121 GETTABLEKS                       R21 R21 K21 ["Util"]
      123 GETTABLEKS                       R21 R21 K28 ["convertFolderItemToScope"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R0 K6 ["Src"]
      130 GETTABLEKS                       R22 R22 K21 ["Util"]
      132 GETTABLEKS                       R22 R22 K29 ["convertToEngineAssetTypeEnum"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K5 [require]
      137 GETTABLEKS                       R23 R0 K6 ["Src"]
      139 GETTABLEKS                       R23 R23 K21 ["Util"]
      141 GETTABLEKS                       R23 R23 K30 ["createAccountUidFromPath"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K5 [require]
      146 GETTABLEKS                       R24 R0 K6 ["Src"]
      148 GETTABLEKS                       R24 R24 K21 ["Util"]
      150 GETTABLEKS                       R24 R24 K31 ["createFolderUid"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K5 [require]
      155 GETTABLEKS                       R25 R0 K6 ["Src"]
      157 GETTABLEKS                       R25 R25 K21 ["Util"]
      159 GETTABLEKS                       R25 R25 K32 ["createScopeUid"]
      161 CALL                             R24 1 1
      162 GETIMPORT                        R25 K5 [require]
      164 GETTABLEKS                       R26 R0 K6 ["Src"]
      166 GETTABLEKS                       R26 R26 K21 ["Util"]
      168 GETTABLEKS                       R26 R26 K33 ["DefaultSort"]
      170 CALL                             R25 1 1
      171 GETIMPORT                        R26 K5 [require]
      173 GETTABLEKS                       R27 R0 K6 ["Src"]
      175 GETTABLEKS                       R27 R27 K21 ["Util"]
      177 GETTABLEKS                       R27 R27 K34 ["getAssetInfosSlice"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K5 [require]
      182 GETTABLEKS                       R28 R0 K6 ["Src"]
      184 GETTABLEKS                       R28 R28 K21 ["Util"]
      186 GETTABLEKS                       R28 R28 K35 ["getFolderErrorLocalizationKeys"]
      188 CALL                             R27 1 1
      189 GETIMPORT                        R28 K5 [require]
      191 GETTABLEKS                       R29 R0 K6 ["Src"]
      193 GETTABLEKS                       R29 R29 K21 ["Util"]
      195 GETTABLEKS                       R29 R29 K36 ["getItemMoveBatches"]
      197 CALL                             R28 1 1
      198 GETIMPORT                        R29 K5 [require]
      200 GETTABLEKS                       R30 R0 K6 ["Src"]
      202 GETTABLEKS                       R30 R30 K21 ["Util"]
      204 GETTABLEKS                       R30 R30 K37 ["getScopeAnalyticsContext"]
      206 CALL                             R29 1 1
      207 GETIMPORT                        R30 K5 [require]
      209 GETTABLEKS                       R31 R0 K6 ["Src"]
      211 GETTABLEKS                       R31 R31 K21 ["Util"]
      213 GETTABLEKS                       R31 R31 K38 ["getViewTypeTelemetryString"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K5 [require]
      218 GETTABLEKS                       R32 R0 K6 ["Src"]
      220 GETTABLEKS                       R32 R32 K21 ["Util"]
      222 GETTABLEKS                       R32 R32 K39 ["insertItems"]
      224 CALL                             R31 1 1
      225 GETIMPORT                        R32 K5 [require]
      227 GETTABLEKS                       R33 R0 K6 ["Src"]
      229 GETTABLEKS                       R33 R33 K21 ["Util"]
      231 GETTABLEKS                       R33 R33 K40 ["isInsertable"]
      233 CALL                             R32 1 1
      234 GETIMPORT                        R33 K5 [require]
      236 GETTABLEKS                       R34 R0 K6 ["Src"]
      238 GETTABLEKS                       R34 R34 K21 ["Util"]
      240 GETTABLEKS                       R34 R34 K41 ["logIfDebug"]
      242 CALL                             R33 1 1
      243 GETIMPORT                        R34 K5 [require]
      245 GETTABLEKS                       R35 R0 K6 ["Src"]
      247 GETTABLEKS                       R35 R35 K42 ["Flags"]
      249 GETTABLEKS                       R35 R35 K43 ["getEFAssetInsertComponentEnabled"]
      251 CALL                             R34 1 1
      252 GETIMPORT                        R35 K5 [require]
      254 GETTABLEKS                       R36 R0 K6 ["Src"]
      256 GETTABLEKS                       R36 R36 K42 ["Flags"]
      258 GETTABLEKS                       R36 R36 K44 ["getEFAssetManagerInventoryRefreshFeature"]
      260 CALL                             R35 1 1
      261 GETIMPORT                        R36 K5 [require]
      263 GETTABLEKS                       R37 R0 K6 ["Src"]
      265 GETTABLEKS                       R37 R37 K42 ["Flags"]
      267 GETTABLEKS                       R37 R37 K45 ["getFFlagEnableAssetInserter"]
      269 CALL                             R36 1 1
      270 GETIMPORT                        R37 K5 [require]
      272 GETTABLEKS                       R38 R0 K6 ["Src"]
      274 GETTABLEKS                       R38 R38 K42 ["Flags"]
      276 GETTABLEKS                       R38 R38 K46 ["getFFlagAmrAddToExperience"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K6 ["Src"]
      283 GETTABLEKS                       R39 R39 K42 ["Flags"]
      285 GETTABLEKS                       R39 R39 K47 ["getFFlagAmrAutomaticScopeRefresh"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K5 [require]
      290 GETTABLEKS                       R40 R0 K6 ["Src"]
      292 GETTABLEKS                       R40 R40 K42 ["Flags"]
      294 GETTABLEKS                       R40 R40 K48 ["getFFlagAmrEnableUnifiedEvent"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K5 [require]
      299 GETTABLEKS                       R41 R0 K6 ["Src"]
      301 GETTABLEKS                       R41 R41 K42 ["Flags"]
      303 GETTABLEKS                       R41 R41 K49 ["getFFlagAmrDisableShardedEvent"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K5 [require]
      308 GETTABLEKS                       R42 R0 K6 ["Src"]
      310 GETTABLEKS                       R42 R42 K42 ["Flags"]
      312 GETTABLEKS                       R42 R42 K50 ["getFFlagDebugAmrAssetManagementControllerTest"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K5 [require]
      317 GETTABLEKS                       R43 R0 K6 ["Src"]
      319 GETTABLEKS                       R43 R43 K42 ["Flags"]
      321 GETTABLEKS                       R43 R43 K51 ["getFFlagAmrPluginSessionIdRoundtrip"]
      323 CALL                             R42 1 1
      324 LOADK                            R45 K52 ["ItemsController"]
      325 NAMECALL                         R43 R9 K53 ["extend"]
      327 CALL                             R43 2 1
      328 DUPCLOSURE                       R44 K54 [PROTO_0]
      329 CAPTURE                          VAL R33
      330 CAPTURE                          VAL R32
      331 CAPTURE                          VAL R21
      332 DUPCLOSURE                       R45 K55 [PROTO_17]
      333 CAPTURE                          VAL R16
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R4
      336 CAPTURE                          VAL R25
      337 CAPTURE                          VAL R15
      338 CAPTURE                          VAL R43
      339 CAPTURE                          VAL R33
      340 CAPTURE                          VAL R10
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R37
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R39
      345 CAPTURE                          VAL R2
      346 CAPTURE                          VAL R35
      347 CAPTURE                          VAL R41
      348 CAPTURE                          VAL R38
      349 SETTABLEKS                       R45 R43 K56 ["new"]
      351 DUPCLOSURE                       R45 K57 [PROTO_18]
      352 CAPTURE                          VAL R43
      353 SETTABLEKS                       R45 R43 K58 ["mock"]
      355 DUPCLOSURE                       R45 K59 [PROTO_19]
      356 SETTABLEKS                       R45 R43 K60 ["getIsMock"]
      358 DUPCLOSURE                       R45 K61 [PROTO_20]
      359 CAPTURE                          VAL R18
      360 SETTABLEKS                       R45 R43 K62 ["destroy"]
      362 DUPCLOSURE                       R45 K63 [PROTO_21]
      363 CAPTURE                          VAL R19
      364 CAPTURE                          VAL R12
      365 SETTABLEKS                       R45 R43 K64 ["_handleOnAddToGame"]
      367 DUPCLOSURE                       R45 K65 [PROTO_23]
      368 CAPTURE                          VAL R38
      369 CAPTURE                          VAL R42
      370 SETTABLEKS                       R45 R43 K66 ["_getNewItemsHandler"]
      372 DUPCLOSURE                       R45 K67 [PROTO_24]
      373 CAPTURE                          VAL R42
      374 SETTABLEKS                       R45 R43 K68 ["_refreshScopeInPlace"]
      376 DUPCLOSURE                       R45 K69 [PROTO_26]
      377 SETTABLEKS                       R45 R43 K70 ["_scheduleDebouncedRefresh"]
      379 DUPCLOSURE                       R45 K71 [PROTO_27]
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R22
      382 DUPCLOSURE                       R46 K72 [PROTO_28]
      383 CAPTURE                          VAL R42
      384 CAPTURE                          VAL R23
      385 CAPTURE                          VAL R22
      386 SETTABLEKS                       R46 R43 K73 ["_handleCreatorInventoryRefresh"]
      388 DUPCLOSURE                       R46 K74 [PROTO_29]
      389 SETTABLEKS                       R46 R43 K75 ["_createRenderItems"]
      391 DUPCLOSURE                       R46 K76 [PROTO_30]
      392 CAPTURE                          VAL R3
      393 SETTABLEKS                       R46 R43 K77 ["clearRecent"]
      395 DUPCLOSURE                       R46 K78 [PROTO_32]
      396 CAPTURE                          VAL R3
      397 SETTABLEKS                       R46 R43 K79 ["_getFetchErrorCallback"]
      399 DUPCLOSURE                       R46 K80 [PROTO_33]
      400 CAPTURE                          VAL R25
      401 SETTABLEKS                       R46 R43 K81 ["_startNewScopeFetch"]
      403 DUPCLOSURE                       R46 K82 [PROTO_34]
      404 SETTABLEKS                       R46 R43 K83 ["_clearItems"]
      406 DUPCLOSURE                       R46 K84 [PROTO_35]
      407 SETTABLEKS                       R46 R43 K85 ["getSearchFolderCount"]
      409 DUPCLOSURE                       R46 K86 [PROTO_36]
      410 SETTABLEKS                       R46 R43 K87 ["setShowAllSearchFolders"]
      412 DUPCLOSURE                       R46 K88 [PROTO_37]
      413 SETTABLEKS                       R46 R43 K89 ["getShowAllSearchFolders"]
      415 DUPCLOSURE                       R46 K90 [PROTO_38]
      416 CAPTURE                          VAL R11
      417 CAPTURE                          VAL R25
      418 SETTABLEKS                       R46 R43 K91 ["_handleOnShowSearchOptionsChanged"]
      420 DUPCLOSURE                       R46 K92 [PROTO_39]
      421 CAPTURE                          VAL R11
      422 CAPTURE                          VAL R4
      423 CAPTURE                          VAL R24
      424 SETTABLEKS                       R46 R43 K93 ["_clearAndFetchSearchItems"]
      426 DUPCLOSURE                       R46 K94 [PROTO_40]
      427 CAPTURE                          VAL R25
      428 CAPTURE                          VAL R4
      429 SETTABLEKS                       R46 R43 K95 ["refreshItems"]
      431 DUPCLOSURE                       R46 K96 [PROTO_41]
      432 SETTABLEKS                       R46 R43 K97 ["refreshAll"]
      434 DUPCLOSURE                       R46 K98 [PROTO_42]
      435 CAPTURE                          VAL R10
      436 SETTABLEKS                       R46 R43 K99 ["getDraggedItems"]
      438 DUPCLOSURE                       R46 K100 [PROTO_43]
      439 CAPTURE                          VAL R23
      440 CAPTURE                          VAL R33
      441 CAPTURE                          VAL R20
      442 SETTABLEKS                       R46 R43 K101 ["_goToFolder"]
      444 DUPCLOSURE                       R46 K102 [PROTO_44]
      445 SETTABLEKS                       R46 R43 K103 ["getLastUsedFolderName"]
      447 DUPCLOSURE                       R46 K104 [PROTO_45]
      448 CAPTURE                          VAL R4
      449 CAPTURE                          VAL R33
      450 DUPCLOSURE                       R47 K105 [PROTO_46]
      451 SETTABLEKS                       R47 R43 K106 ["_updateLastUsedFolder"]
      453 DUPCLOSURE                       R47 K107 [PROTO_47]
      454 CAPTURE                          VAL R46
      455 CAPTURE                          VAL R4
      456 SETTABLEKS                       R47 R43 K108 ["requestMoveSelectionToItem"]
      458 DUPCLOSURE                       R47 K109 [PROTO_51]
      459 CAPTURE                          VAL R3
      460 CAPTURE                          VAL R23
      461 CAPTURE                          VAL R6
      462 SETTABLEKS                       R47 R43 K110 ["_requestMoveFromSearch"]
      464 DUPCLOSURE                       R47 K111 [PROTO_54]
      465 CAPTURE                          VAL R4
      466 CAPTURE                          VAL R28
      467 CAPTURE                          VAL R23
      468 CAPTURE                          VAL R20
      469 CAPTURE                          VAL R33
      470 CAPTURE                          VAL R39
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R40
      473 CAPTURE                          VAL R29
      474 CAPTURE                          VAL R1
      475 CAPTURE                          VAL R27
      476 SETTABLEKS                       R47 R43 K112 ["_requestMoveItems"]
      478 DUPCLOSURE                       R47 K113 [PROTO_58]
      479 CAPTURE                          VAL R33
      480 CAPTURE                          VAL R20
      481 CAPTURE                          VAL R4
      482 CAPTURE                          VAL R10
      483 CAPTURE                          VAL R39
      484 CAPTURE                          VAL R2
      485 CAPTURE                          VAL R40
      486 CAPTURE                          VAL R29
      487 CAPTURE                          VAL R1
      488 CAPTURE                          VAL R27
      489 SETTABLEKS                       R47 R43 K114 ["_requestCreateFolder"]
      491 DUPCLOSURE                       R47 K115 [PROTO_61]
      492 CAPTURE                          VAL R4
      493 CAPTURE                          VAL R39
      494 CAPTURE                          VAL R2
      495 CAPTURE                          VAL R40
      496 CAPTURE                          VAL R29
      497 CAPTURE                          VAL R1
      498 SETTABLEKS                       R47 R43 K116 ["_requestRenameFolder"]
      500 DUPCLOSURE                       R47 K117 [PROTO_62]
      501 SETTABLEKS                       R47 R43 K118 ["uploadStagedFolder"]
      503 DUPCLOSURE                       R47 K119 [PROTO_63]
      504 CAPTURE                          VAL R20
      505 SETTABLEKS                       R47 R43 K120 ["uploadStagedFolderPath"]
      507 DUPCLOSURE                       R47 K121 [PROTO_66]
      508 CAPTURE                          VAL R23
      509 CAPTURE                          VAL R39
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R40
      512 CAPTURE                          VAL R29
      513 CAPTURE                          VAL R1
      514 CAPTURE                          VAL R3
      515 SETTABLEKS                       R47 R43 K122 ["requestDeleteFolder"]
      517 DUPCLOSURE                       R47 K123 [PROTO_67]
      518 CAPTURE                          VAL R44
      519 SETTABLEKS                       R47 R43 K124 ["_createInsertJobData"]
      521 DUPCLOSURE                       R47 K125 [PROTO_68]
      522 CAPTURE                          VAL R4
      523 CAPTURE                          VAL R10
      524 CAPTURE                          VAL R34
      525 CAPTURE                          VAL R36
      526 CAPTURE                          VAL R31
      527 SETTABLEKS                       R47 R43 K126 ["handleDoubleClick"]
      529 DUPCLOSURE                       R47 K127 [PROTO_69]
      530 SETTABLEKS                       R47 R43 K128 ["setLastItemClicked"]
      532 DUPCLOSURE                       R47 K129 [PROTO_70]
      533 CAPTURE                          VAL R26
      534 SETTABLEKS                       R47 R43 K130 ["changeSelection"]
      536 DUPCLOSURE                       R47 K131 [PROTO_71]
      537 SETTABLEKS                       R47 R43 K132 ["moveSelection"]
      539 DUPCLOSURE                       R47 K133 [PROTO_72]
      540 SETTABLEKS                       R47 R43 K134 ["syncSelectionIndices"]
      542 DUPCLOSURE                       R47 K135 [PROTO_73]
      543 CAPTURE                          VAL R10
      544 SETTABLEKS                       R47 R43 K136 ["getSingleItemSelected"]
      546 DUPCLOSURE                       R47 K137 [PROTO_74]
      547 SETTABLEKS                       R47 R43 K138 ["getItemInfo"]
      549 DUPCLOSURE                       R47 K139 [PROTO_75]
      550 CAPTURE                          VAL R10
      551 CAPTURE                          VAL R4
      552 SETTABLEKS                       R47 R43 K140 ["getSelectionIdsHelper"]
      554 DUPCLOSURE                       R47 K141 [PROTO_76]
      555 SETTABLEKS                       R47 R43 K142 ["getAudioPreviewManager"]
      557 DUPCLOSURE                       R47 K143 [PROTO_77]
      558 SETTABLEKS                       R47 R43 K144 ["getItemsCache"]
      560 DUPCLOSURE                       R47 K145 [PROTO_78]
      561 SETTABLEKS                       R47 R43 K146 ["getRenderItems"]
      563 DUPCLOSURE                       R47 K147 [PROTO_79]
      564 CAPTURE                          VAL R4
      565 SETTABLEKS                       R47 R43 K148 ["requestNextPage"]
      567 DUPCLOSURE                       R47 K149 [PROTO_80]
      568 CAPTURE                          VAL R4
      569 CAPTURE                          VAL R32
      570 SETTABLEKS                       R47 R43 K150 ["selectionHasInsertableAssets"]
      572 DUPCLOSURE                       R47 K151 [PROTO_81]
      573 CAPTURE                          VAL R44
      574 SETTABLEKS                       R47 R43 K152 ["getInsertDataForDrag"]
      576 DUPCLOSURE                       R47 K153 [PROTO_82]
      577 CAPTURE                          VAL R4
      578 SETTABLEKS                       R47 R43 K154 ["getAssetTypes"]
      580 DUPCLOSURE                       R47 K155 [PROTO_83]
      581 CAPTURE                          VAL R13
      582 SETTABLEKS                       R47 R43 K156 ["getCreators"]
      584 DUPCLOSURE                       R47 K157 [PROTO_84]
      585 CAPTURE                          VAL R11
      586 SETTABLEKS                       R47 R43 K158 ["_updateSortFilter"]
      588 DUPCLOSURE                       R47 K159 [PROTO_85]
      589 SETTABLEKS                       R47 R43 K160 ["getFilters"]
      591 DUPCLOSURE                       R47 K161 [PROTO_86]
      592 CAPTURE                          VAL R12
      593 SETTABLEKS                       R47 R43 K162 ["_addFilter"]
      595 DUPCLOSURE                       R47 K163 [PROTO_87]
      596 SETTABLEKS                       R47 R43 K164 ["_removeFilter"]
      598 DUPCLOSURE                       R47 K165 [PROTO_88]
      599 CAPTURE                          VAL R4
      600 SETTABLEKS                       R47 R43 K166 ["_clearAssetTypeFilter"]
      602 DUPCLOSURE                       R47 K167 [PROTO_89]
      603 SETTABLEKS                       R47 R43 K168 ["hasFilter"]
      605 DUPCLOSURE                       R47 K169 [PROTO_90]
      606 SETTABLEKS                       R47 R43 K170 ["toggleFilter"]
      608 DUPCLOSURE                       R47 K171 [PROTO_91]
      609 CAPTURE                          VAL R4
      610 SETTABLEKS                       R47 R43 K172 ["togglePackagesFilter"]
      612 DUPCLOSURE                       R47 K173 [PROTO_92]
      613 CAPTURE                          VAL R4
      614 SETTABLEKS                       R47 R43 K174 ["toggleArchivedFilter"]
      616 DUPCLOSURE                       R47 K175 [PROTO_93]
      617 CAPTURE                          VAL R4
      618 SETTABLEKS                       R47 R43 K176 ["clearFilters"]
      620 DUPCLOSURE                       R47 K177 [PROTO_94]
      621 SETTABLEKS                       R47 R43 K178 ["getSorts"]
      623 DUPCLOSURE                       R47 K179 [PROTO_95]
      624 SETTABLEKS                       R47 R43 K180 ["setSorts"]
      626 DUPCLOSURE                       R47 K181 [PROTO_96]
      627 SETTABLEKS                       R47 R43 K182 ["addSort"]
      629 DUPCLOSURE                       R47 K183 [PROTO_97]
      630 SETTABLEKS                       R47 R43 K184 ["getSelection"]
      632 DUPCLOSURE                       R47 K185 [PROTO_98]
      633 SETTABLEKS                       R47 R43 K186 ["setSelection"]
      635 DUPCLOSURE                       R47 K187 [PROTO_99]
      636 CAPTURE                          VAL R11
      637 SETTABLEKS                       R47 R43 K188 ["modifySelection"]
      639 DUPCLOSURE                       R47 K189 [PROTO_100]
      640 SETTABLEKS                       R47 R43 K190 ["handleRightClick"]
      642 DUPCLOSURE                       R47 K191 [PROTO_101]
      643 SETTABLEKS                       R47 R43 K192 ["getStagedEditItemPath"]
      645 DUPCLOSURE                       R47 K193 [PROTO_102]
      646 SETTABLEKS                       R47 R43 K194 ["setStagedEditItemPath"]
      648 DUPCLOSURE                       R47 K195 [PROTO_103]
      649 SETTABLEKS                       R47 R43 K196 ["removeStagedItem"]
      651 DUPCLOSURE                       R47 K197 [PROTO_104]
      652 CAPTURE                          VAL R4
      653 CAPTURE                          VAL R33
      654 SETTABLEKS                       R47 R43 K198 ["renamePlace"]
      656 DUPCLOSURE                       R47 K199 [PROTO_105]
      657 CAPTURE                          VAL R4
      658 SETTABLEKS                       R47 R43 K200 ["stageNewFolder"]
      660 DUPCLOSURE                       R47 K201 [PROTO_106]
      661 CAPTURE                          VAL R29
      662 SETTABLEKS                       R47 R43 K37 ["getScopeAnalyticsContext"]
      664 DUPCLOSURE                       R47 K202 [PROTO_107]
      665 SETTABLEKS                       R47 R43 K203 ["setAnalyticsInsertAction"]
      667 DUPCLOSURE                       R47 K204 [PROTO_108]
      668 CAPTURE                          VAL R33
      669 CAPTURE                          VAL R39
      670 CAPTURE                          VAL R2
      671 CAPTURE                          VAL R10
      672 CAPTURE                          VAL R40
      673 CAPTURE                          VAL R30
      674 CAPTURE                          VAL R1
      675 SETTABLEKS                       R47 R43 K205 ["sendInsertToAnalytics"]
      677 DUPCLOSURE                       R47 K206 [PROTO_109]
      678 SETTABLEKS                       R47 R43 K207 ["getCurrentShownScope"]
      680 DUPCLOSURE                       R47 K208 [PROTO_110]
      681 SETTABLEKS                       R47 R43 K209 ["getPlugin"]
      683 RETURN                           R43 1
