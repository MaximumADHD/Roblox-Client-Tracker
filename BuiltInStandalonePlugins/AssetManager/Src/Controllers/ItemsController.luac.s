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
       54 JUMP                             ; [+21]
       55 GETUPVAL                         R2 1
       56 CALL                             R2 0 1
       57 JUMPIFNOT                        R2 ; [+12]
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K13 ["eventStart"]
       61 GETUPVAL                         R3 3
       62 GETTABLEKS                       R3 R3 K14 ["BenchmarkingEvent"]
       64 GETTABLEKS                       R3 R3 K15 ["LoadNewScope"]
       66 DUPTABLE                         R4 K18 [{["isBackgroundFetch"] = False}]
       67 GETTABLEKS                       R5 R1 K3 ["Uid"]
       69 CALL                             R2 3 0
       70 GETUPVAL                         R2 0
       71 MOVE                             R4 R1
       72 LOADB                            R5 1
       73 NAMECALL                         R2 R2 K19 ["_startNewScopeFetch"]
       75 CALL                             R2 3 0
       76 GETUPVAL                         R2 0
       77 NAMECALL                         R2 R2 K20 ["_createRenderItems"]
       79 CALL                             R2 1 0
       80 GETTABLEKS                       R2 R1 K21 ["Parent"]
       82 JUMPIFNOT                        R2 ; [+24]
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       86 GETTABLEKS                       R4 R1 K21 ["Parent"]
       88 NAMECALL                         R2 R2 K4 ["hasScope"]
       90 CALL                             R2 2 1
       91 JUMPIF                           R2 ; [+15]
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R2 R2 K22 ["_explorerController"]
       95 GETTABLEKS                       R4 R1 K21 ["Parent"]
       97 NAMECALL                         R2 R2 K23 ["getScopeWithUid"]
       99 CALL                             R2 2 1
      100 JUMPIFNOT                        R2 ; [+6]
      101 GETUPVAL                         R3 0
      102 MOVE                             R5 R2
      103 LOADB                            R6 0
      104 NAMECALL                         R3 R3 K19 ["_startNewScopeFetch"]
      106 CALL                             R3 3 0
      107 GETTABLEKS                       R2 R1 K24 ["Type"]
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R3 R3 K25 ["ScopeType"]
      112 GETTABLEKS                       R3 R3 K26 ["ProjectPlaces"]
      114 JUMPIFNOTEQ                      R2 R3 ; [+5]
      116 GETUPVAL                         R2 0
      117 NAMECALL                         R2 R2 K27 ["_clearAssetTypeFilter"]
      119 CALL                             R2 1 0
      120 GETUPVAL                         R2 0
      121 GETTABLEKS                       R2 R2 K28 ["_lastUsedFolderRootUid"]
      123 JUMPIFEQKNIL                     R2 ; [+25]
      125 GETUPVAL                         R2 0
      126 GETTABLEKS                       R2 R2 K22 ["_explorerController"]
      128 MOVE                             R4 R1
      129 NAMECALL                         R2 R2 K29 ["getScopeRoot"]
      131 CALL                             R2 2 1
      132 JUMPIFEQKNIL                     R2 ; [+8]
      134 GETTABLEKS                       R3 R2 K3 ["Uid"]
      136 GETUPVAL                         R4 0
      137 GETTABLEKS                       R4 R4 K28 ["_lastUsedFolderRootUid"]
      139 JUMPIFEQ                         R3 R4 ; [+9]
      141 GETUPVAL                         R3 0
      142 LOADNIL                          R4
      143 SETTABLEKS                       R4 R3 K30 ["_lastUsedFolderName"]
      145 GETUPVAL                         R3 0
      146 LOADNIL                          R4
      147 SETTABLEKS                       R4 R3 K28 ["_lastUsedFolderRootUid"]
      149 GETUPVAL                         R2 0
      150 GETTABLEKS                       R2 R2 K31 ["_audioPreviewManager"]
      152 NAMECALL                         R2 R2 K32 ["stop"]
      154 CALL                             R2 1 0
      155 GETUPVAL                         R2 0
      156 GETTABLEKS                       R2 R2 K33 ["_analyticsState"]
      158 LOADK                            R3 K34 ["browse"]
      159 SETTABLEKS                       R3 R2 K35 ["Source"]
      161 RETURN                           R0 0

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
       19 GETUPVAL                         R3 2
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+36]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K5 ["getCurrentShownScope"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K3 ["Uid"]
       28 GETTABLEKS                       R4 R1 K3 ["Uid"]
       30 JUMPIFNOTEQ                      R3 R4 ; [+31]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K6 ["_searchController"]
       35 NAMECALL                         R3 R3 K7 ["getShowSearchOptions"]
       37 CALL                             R3 1 1
       38 JUMPIFNOT                        R3 ; [+5]
       39 GETUPVAL                         R4 0
       40 NAMECALL                         R4 R4 K8 ["_createRenderItems"]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R4 0
       45 NEWTABLE                         R6 0 0
       47 NEWTABLE                         R7 0 1
       49 MOVE                             R8 R2
       50 SETLIST                          R7 R8 1 [1]
       52 GETTABLEKS                       R8 R1 K3 ["Uid"]
       54 NAMECALL                         R4 R4 K9 ["_updateRenderItems"]
       56 CALL                             R4 4 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 0
       59 NAMECALL                         R3 R3 K8 ["_createRenderItems"]
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

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
       84 JUMPIFNOT                        R4 ; [+39]
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
      101 JUMPIFNOTEQ                      R4 R2 ; [+22]
      103 GETUPVAL                         R4 2
      104 CALL                             R4 0 1
      105 JUMPIFNOT                        R4 ; [+14]
      106 GETUPVAL                         R4 0
      107 NEWTABLE                         R6 0 1
      109 GETTABLEKS                       R7 R0 K8 ["Path"]
      111 SETLIST                          R6 R7 1 [1]
      113 NEWTABLE                         R7 0 0
      115 MOVE                             R8 R2
      116 NAMECALL                         R4 R4 K17 ["_updateRenderItems"]
      118 CALL                             R4 4 0
      119 RETURN                           R0 0
      120 GETUPVAL                         R4 0
      121 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      123 CALL                             R4 1 0
      124 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_searchController"]
        3 NAMECALL                         R0 R0 K1 ["getSearchOptions"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["sendSearchEvent"]
        9 DUPTABLE                         R2 K6 [{"searchAssetType", "searchKeywords", "searchId"}]
       10 GETTABLEKS                       R3 R0 K7 ["AssetType"]
       12 SETTABLEKS                       R3 R2 K3 ["searchAssetType"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["_searchController"]
       17 NAMECALL                         R3 R3 K8 ["getSearchTerm"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K4 ["searchKeywords"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["_searchController"]
       25 NAMECALL                         R3 R3 K9 ["getSearchId"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K5 ["searchId"]
       30 DUPTABLE                         R3 K14 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K15 ["_explorerController"]
       34 SETTABLEKS                       R4 R3 K10 ["ExplorerController"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K16 ["_layoutController"]
       39 SETTABLEKS                       R4 R3 K11 ["LayoutController"]
       41 GETUPVAL                         R4 0
       42 SETTABLEKS                       R4 R3 K12 ["ItemsController"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K0 ["_searchController"]
       47 SETTABLEKS                       R4 R3 K13 ["SearchController"]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 0
       51 NAMECALL                         R1 R1 K17 ["_clearAndFetchSearchItems"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

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
      212 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      214 NAMECALL                         R5 R5 K76 ["getCurrentScope"]
      216 CALL                             R5 1 1
      217 GETUPVAL                         R6 8
      218 CALL                             R6 0 1
      219 JUMPIFNOT                        R6 ; [+12]
      220 GETUPVAL                         R6 9
      221 GETTABLEKS                       R6 R6 K77 ["eventStart"]
      223 GETUPVAL                         R7 10
      224 GETTABLEKS                       R7 R7 K78 ["BenchmarkingEvent"]
      226 GETTABLEKS                       R7 R7 K79 ["LoadNewScope"]
      228 DUPTABLE                         R8 K81 [{["isBackgroundFetch"] = False}]
      229 GETTABLEKS                       R9 R5 K82 ["Uid"]
      231 CALL                             R6 3 0
      232 MOVE                             R8 R5
      233 NAMECALL                         R6 R2 K83 ["_startNewScopeFetch"]
      235 CALL                             R6 2 0
      236 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      238 NAMECALL                         R6 R6 K14 ["getPlugin"]
      240 CALL                             R6 1 1
      241 GETTABLEKS                       R8 R2 K55 ["_connections"]
      243 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      245 GETTABLEKS                       R9 R9 K84 ["OnCurrentScopeChanged"]
      247 NEWCLOSURE                       R11 P3
      248 CAPTURE                          VAL R2
      249 CAPTURE                          UPVAL U8
      250 CAPTURE                          UPVAL U9
      251 CAPTURE                          UPVAL U10
      252 CAPTURE                          UPVAL U2
      253 NAMECALL                         R9 R9 K70 ["Connect"]
      255 CALL                             R9 2 -1
      256 FASTCALL                         TABLE_INSERT ; [+2]
      257 GETIMPORT                        R7 K73 [table.insert]
      259 CALL                             R7 -1 0
      260 GETTABLEKS                       R8 R2 K55 ["_connections"]
      262 LOADK                            R11 K85 ["OnAddPlaceSucceeded"]
      263 NEWCLOSURE                       R12 P4
      264 CAPTURE                          VAL R2
      265 NAMECALL                         R9 R6 K86 ["OnInvoke"]
      267 CALL                             R9 3 -1
      268 FASTCALL                         TABLE_INSERT ; [+2]
      269 GETIMPORT                        R7 K73 [table.insert]
      271 CALL                             R7 -1 0
      272 GETTABLEKS                       R8 R2 K55 ["_connections"]
      274 LOADK                            R11 K87 ["OnRemovePlaceFromGameSucceeded"]
      275 NEWCLOSURE                       R12 P5
      276 CAPTURE                          VAL R2
      277 CAPTURE                          UPVAL U11
      278 CAPTURE                          UPVAL U12
      279 NAMECALL                         R9 R6 K86 ["OnInvoke"]
      281 CALL                             R9 3 -1
      282 FASTCALL                         TABLE_INSERT ; [+2]
      283 GETIMPORT                        R7 K73 [table.insert]
      285 CALL                             R7 -1 0
      286 GETTABLEKS                       R8 R2 K55 ["_connections"]
      288 LOADK                            R11 K88 ["OnRenamePlaceSucceeded"]
      289 NEWCLOSURE                       R12 P6
      290 CAPTURE                          VAL R2
      291 CAPTURE                          UPVAL U11
      292 CAPTURE                          UPVAL U2
      293 NAMECALL                         R9 R6 K86 ["OnInvoke"]
      295 CALL                             R9 3 -1
      296 FASTCALL                         TABLE_INSERT ; [+2]
      297 GETIMPORT                        R7 K73 [table.insert]
      299 CALL                             R7 -1 0
      300 GETUPVAL                         R7 13
      301 CALL                             R7 0 1
      302 JUMPIFNOT                        R7 ; [+12]
      303 GETTABLEKS                       R8 R2 K55 ["_connections"]
      305 LOADK                            R11 K89 ["OnAddToExperienceFinished"]
      306 NEWCLOSURE                       R12 P7
      307 CAPTURE                          VAL R2
      308 NAMECALL                         R9 R6 K86 ["OnInvoke"]
      310 CALL                             R9 3 -1
      311 FASTCALL                         TABLE_INSERT ; [+2]
      312 GETIMPORT                        R7 K73 [table.insert]
      314 CALL                             R7 -1 0
      315 GETTABLEKS                       R8 R2 K55 ["_connections"]
      317 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      319 GETTABLEKS                       R9 R9 K90 ["OnNewAssetFetched"]
      321 NEWCLOSURE                       R11 P8
      322 CAPTURE                          VAL R2
      323 CAPTURE                          UPVAL U14
      324 CAPTURE                          UPVAL U12
      325 NAMECALL                         R9 R9 K70 ["Connect"]
      327 CALL                             R9 2 -1
      328 FASTCALL                         TABLE_INSERT ; [+2]
      329 GETIMPORT                        R7 K73 [table.insert]
      331 CALL                             R7 -1 0
      332 GETTABLEKS                       R8 R2 K55 ["_connections"]
      334 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      336 GETTABLEKS                       R9 R9 K91 ["OnSearchRequested"]
      338 NEWCLOSURE                       R11 P9
      339 CAPTURE                          VAL R2
      340 CAPTURE                          UPVAL U15
      341 NAMECALL                         R9 R9 K70 ["Connect"]
      343 CALL                             R9 2 -1
      344 FASTCALL                         TABLE_INSERT ; [+2]
      345 GETIMPORT                        R7 K73 [table.insert]
      347 CALL                             R7 -1 0
      348 GETTABLEKS                       R8 R2 K55 ["_connections"]
      350 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      352 GETTABLEKS                       R9 R9 K92 ["OnShowSearchOptionsChanged"]
      354 NEWCLOSURE                       R11 P10
      355 CAPTURE                          VAL R2
      356 NAMECALL                         R9 R9 K70 ["Connect"]
      358 CALL                             R9 2 -1
      359 FASTCALL                         TABLE_INSERT ; [+2]
      360 GETIMPORT                        R7 K73 [table.insert]
      362 CALL                             R7 -1 0
      363 GETTABLEKS                       R8 R2 K55 ["_connections"]
      365 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      367 GETTABLEKS                       R9 R9 K93 ["OnIsDefaultSearchStateChanged"]
      369 NEWCLOSURE                       R11 P11
      370 CAPTURE                          VAL R2
      371 NAMECALL                         R9 R9 K70 ["Connect"]
      373 CALL                             R9 2 -1
      374 FASTCALL                         TABLE_INSERT ; [+2]
      375 GETIMPORT                        R7 K73 [table.insert]
      377 CALL                             R7 -1 0
      378 GETTABLEKS                       R8 R2 K55 ["_connections"]
      380 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      382 GETTABLEKS                       R9 R9 K94 ["OnBrowserLayoutChanged"]
      384 NEWCLOSURE                       R11 P12
      385 CAPTURE                          VAL R2
      386 NAMECALL                         R9 R9 K70 ["Connect"]
      388 CALL                             R9 2 -1
      389 FASTCALL                         TABLE_INSERT ; [+2]
      390 GETIMPORT                        R7 K73 [table.insert]
      392 CALL                             R7 -1 0
      393 GETTABLEKS                       R8 R2 K55 ["_connections"]
      395 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      397 GETTABLEKS                       R9 R9 K95 ["OnGridStateUpdated"]
      399 NEWCLOSURE                       R11 P13
      400 CAPTURE                          VAL R2
      401 NAMECALL                         R9 R9 K70 ["Connect"]
      403 CALL                             R9 2 -1
      404 FASTCALL                         TABLE_INSERT ; [+2]
      405 GETIMPORT                        R7 K73 [table.insert]
      407 CALL                             R7 -1 0
      408 GETUPVAL                         R7 16
      409 CALL                             R7 0 1
      410 JUMPIF                           R7 ; [+3]
      411 GETUPVAL                         R7 17
      412 CALL                             R7 0 1
      413 JUMPIFNOT                        R7 ; [+20]
      414 GETIMPORT                        R7 K68 [pcall]
      416 NEWCLOSURE                       R8 P14
      417 CAPTURE                          VAL R2
      418 CALL                             R7 1 2
      419 JUMPIFNOT                        R7 ; [+14]
      420 JUMPIFNOT                        R8 ; [+13]
      421 GETTABLEKS                       R10 R2 K55 ["_connections"]
      423 GETTABLEKS                       R11 R8 K96 ["InventoryRefreshReceived"]
      425 NEWCLOSURE                       R13 P15
      426 CAPTURE                          VAL R2
      427 NAMECALL                         R11 R11 K70 ["Connect"]
      429 CALL                             R11 2 -1
      430 FASTCALL                         TABLE_INSERT ; [+2]
      431 GETIMPORT                        R9 K73 [table.insert]
      433 CALL                             R9 -1 0
      434 RETURN                           R2 1

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
       88 JUMPIFEQKNIL                     R6 ; [+27]
       90 GETUPVAL                         R6 2
       91 CALL                             R6 0 1
       92 JUMPIFNOT                        R6 ; [+16]
       93 GETUPVAL                         R6 3
       94 GETTABLEKS                       R6 R6 K19 ["showSnackbar"]
       96 DUPTABLE                         R7 K22 [{"LocalizableMessage", "Type"}]
       97 DUPTABLE                         R8 K27 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       98 SETTABLEKS                       R8 R7 K20 ["LocalizableMessage"]
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R8 R8 K28 ["SnackbarType"]
      103 GETTABLEKS                       R8 R8 K29 ["Error"]
      105 SETTABLEKS                       R8 R7 K21 ["Type"]
      107 CALL                             R6 1 0
      108 RETURN                           R0 0
      109 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
      111 DUPTABLE                         R8 K27 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
      112 NAMECALL                         R6 R6 K30 ["showToast"]
      114 CALL                             R6 2 0
      115 RETURN                           R0 0
      116 GETUPVAL                         R6 2
      117 CALL                             R6 0 1
      118 JUMPIFNOT                        R6 ; [+16]
      119 GETUPVAL                         R6 3
      120 GETTABLEKS                       R6 R6 K19 ["showSnackbar"]
      122 DUPTABLE                         R7 K22 [{"LocalizableMessage", "Type"}]
      123 DUPTABLE                         R8 K32 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceSuccess"}]
      124 SETTABLEKS                       R8 R7 K20 ["LocalizableMessage"]
      126 GETUPVAL                         R8 3
      127 GETTABLEKS                       R8 R8 K28 ["SnackbarType"]
      129 GETTABLEKS                       R8 R8 K33 ["Info"]
      131 SETTABLEKS                       R8 R7 K21 ["Type"]
      133 CALL                             R6 1 0
      134 RETURN                           R0 0
      135 GETTABLEKS                       R6 R0 K3 ["_pluginController"]
      137 DUPTABLE                         R8 K32 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceSuccess"}]
      138 NAMECALL                         R6 R6 K30 ["showToast"]
      140 CALL                             R6 2 0
      141 RETURN                           R0 0

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
       53 JUMPIFNOT                        R12 ; [+5]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R13 R11 K7 ["Path"]
       57 LOADNIL                          R14
       58 SETTABLE                         R14 R12 R13
       59 FORGLOOP                         R7 2 ; [-26]
       61 LOADB                            R7 0
       62 MOVE                             R8 R1
       63 LOADNIL                          R9
       64 LOADNIL                          R10
       65 FORGPREP                         R8
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K11 ["_creators"]
       69 GETTABLE                         R13 R14 R11
       70 JUMPIF                           R13 ; [+5]
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K11 ["_creators"]
       74 SETTABLE                         R12 R13 R11
       75 LOADB                            R7 1
       76 FORGLOOP                         R8 2 ; [-11]
       78 JUMPIFNOT                        R7 ; [+10]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K12 ["OnCreatorsChanged"]
       82 GETUPVAL                         R10 0
       83 NAMECALL                         R10 R10 K13 ["getCreators"]
       85 CALL                             R10 1 -1
       86 NAMECALL                         R8 R8 K14 ["Fire"]
       88 CALL                             R8 -1 0
       89 GETUPVAL                         R8 0
       90 NAMECALL                         R8 R8 K15 ["getCurrentShownScope"]
       92 CALL                             R8 1 1
       93 GETTABLEKS                       R9 R8 K2 ["Uid"]
       95 GETUPVAL                         R10 1
       96 GETTABLEKS                       R10 R10 K2 ["Uid"]
       98 JUMPIFNOTEQ                      R9 R10 ; [+35]
      100 GETUPVAL                         R9 0
      101 GETTABLEKS                       R9 R9 K16 ["_searchController"]
      103 NAMECALL                         R9 R9 K17 ["getShowSearchOptions"]
      105 CALL                             R9 1 1
      106 JUMPIFNOT                        R9 ; [+5]
      107 GETUPVAL                         R10 0
      108 NAMECALL                         R10 R10 K18 ["_createRenderItems"]
      110 CALL                             R10 1 0
      111 JUMP                             ; [+22]
      112 GETUPVAL                         R10 0
      113 MOVE                             R12 R6
      114 NEWTABLE                         R13 0 0
      116 GETUPVAL                         R14 1
      117 GETTABLEKS                       R14 R14 K2 ["Uid"]
      119 NAMECALL                         R10 R10 K19 ["_updateRenderItems"]
      121 CALL                             R10 4 0
      122 GETUPVAL                         R10 3
      123 CALL                             R10 0 1
      124 JUMPIFNOT                        R10 ; [+9]
      125 GETUPVAL                         R10 4
      126 GETTABLEKS                       R10 R10 K20 ["eventEnd"]
      128 GETUPVAL                         R11 5
      129 GETTABLEKS                       R11 R11 K21 ["BenchmarkingEvent"]
      131 GETTABLEKS                       R11 R11 K22 ["FirstLoad"]
      133 CALL                             R10 1 0
      134 JUMPIFNOT                        R3 ; [+7]
      135 GETUPVAL                         R9 0
      136 GETTABLEKS                       R9 R9 K23 ["_pluginController"]
      138 MOVE                             R11 R3
      139 NAMECALL                         R9 R9 K24 ["setRootPlace"]
      141 CALL                             R9 2 0
      142 SETTABLEKS                       R4 R5 K25 ["NextPageToken"]
      144 LOADB                            R9 1
      145 JUMPIFEQKNIL                     R4 ; [+5]
      147 JUMPIFEQKS                       R4 K26 [""] ; [+2]
      149 LOADB                            R9 0 +1
      150 LOADB                            R9 1
      151 GETUPVAL                         R11 2
      152 JUMPIFNOTEQKNIL                  R11 ; [+2]
      154 LOADB                            R10 0 +1
      155 LOADB                            R10 1
      156 NOT                              R11 R10
      157 JUMPIFNOT                        R11 ; [+16]
      158 GETUPVAL                         R12 0
      159 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      161 NAMECALL                         R12 R12 K27 ["getTotalItemCount"]
      163 CALL                             R12 1 1
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      167 NAMECALL                         R13 R13 K28 ["getMaxItems"]
      169 CALL                             R13 1 1
      170 JUMPIFLT                         R13 R12 ; [+2]
      172 LOADB                            R11 0 +1
      173 LOADB                            R11 1
      174 NOT                              R12 R10
      175 JUMPIFNOT                        R12 ; [+16]
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R15 R15 K2 ["Uid"]
      182 NAMECALL                         R13 R13 K29 ["getScopeItemCount"]
      184 CALL                             R13 2 1
      185 GETUPVAL                         R14 6
      186 GETTABLEKS                       R14 R14 K30 ["InitialScopeFetchLimit"]
      188 JUMPIFLE                         R14 R13 ; [+2]
      190 LOADB                            R12 0 +1
      191 LOADB                            R12 1
      192 GETUPVAL                         R13 0
      193 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      195 GETUPVAL                         R15 1
      196 GETTABLEKS                       R15 R15 K2 ["Uid"]
      198 NAMECALL                         R13 R13 K31 ["getScopeCacheFetchProgress"]
      200 CALL                             R13 2 1
      201 MOVE                             R14 R9
      202 JUMPIF                           R14 ; [+3]
      203 MOVE                             R14 R11
      204 JUMPIF                           R14 ; [+1]
      205 MOVE                             R14 R12
      206 JUMPIFNOT                        R14 ; [+73]
      207 LOADN                            R15 0
      208 SETTABLEKS                       R15 R5 K32 ["FetchProgress"]
      210 GETUPVAL                         R15 7
      211 CALL                             R15 0 1
      212 JUMPIFNOT                        R15 ; [+21]
      213 LOADN                            R16 0
      214 GETTABLEKS                       R18 R5 K34 ["PendingRequestChains"]
      216 SUBK                             R17 R18 K33 [1]
      217 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      219 GETIMPORT                        R15 K37 [math.max]
      221 CALL                             R15 2 1
      222 SETTABLEKS                       R15 R5 K34 ["PendingRequestChains"]
      224 GETTABLEKS                       R16 R5 K34 ["PendingRequestChains"]
      226 LOADN                            R17 0
      227 JUMPIFLT                         R17 R16 ; [+2]
      229 LOADB                            R15 0 +1
      230 LOADB                            R15 1
      231 SETTABLEKS                       R15 R5 K38 ["Loading"]
      233 JUMP                             ; [+3]
      234 LOADB                            R15 0
      235 SETTABLEKS                       R15 R5 K38 ["Loading"]
      237 GETUPVAL                         R15 2
      238 JUMPIFNOT                        R15 ; [+25]
      239 GETIMPORT                        R15 K40 [next]
      241 GETUPVAL                         R16 2
      242 CALL                             R15 1 1
      243 JUMPIFNOT                        R15 ; [+20]
      244 GETUPVAL                         R15 2
      245 LOADNIL                          R16
      246 LOADNIL                          R17
      247 FORGPREP                         R15
      248 GETUPVAL                         R20 0
      249 GETTABLEKS                       R20 R20 K1 ["_itemsCache"]
      251 MOVE                             R22 R18
      252 GETUPVAL                         R23 1
      253 GETTABLEKS                       R23 R23 K2 ["Uid"]
      255 NAMECALL                         R20 R20 K41 ["removeItem"]
      257 CALL                             R20 3 0
      258 FORGLOOP                         R15 2 ; [-11]
      260 GETUPVAL                         R15 0
      261 NAMECALL                         R15 R15 K18 ["_createRenderItems"]
      263 CALL                             R15 1 0
      264 GETUPVAL                         R15 3
      265 CALL                             R15 0 1
      266 JUMPIFNOT                        R15 ; [+18]
      267 GETUPVAL                         R15 4
      268 GETTABLEKS                       R15 R15 K20 ["eventEnd"]
      270 GETUPVAL                         R16 5
      271 GETTABLEKS                       R16 R16 K21 ["BenchmarkingEvent"]
      273 GETTABLEKS                       R16 R16 K42 ["LoadNewScope"]
      275 GETUPVAL                         R17 1
      276 GETTABLEKS                       R17 R17 K2 ["Uid"]
      278 CALL                             R15 2 0
      279 JUMP                             ; [+5]
      280 LOADB                            R15 1
      281 SETTABLEKS                       R15 R5 K38 ["Loading"]
      283 SETTABLEKS                       R13 R5 K32 ["FetchProgress"]
      285 JUMPIF                           R10 ; [+12]
      286 GETUPVAL                         R15 0
      287 GETTABLEKS                       R15 R15 K43 ["OnScopeFetchProgressChanged"]
      289 MOVE                             R17 R13
      290 GETTABLEKS                       R18 R5 K38 ["Loading"]
      292 GETUPVAL                         R19 1
      293 GETTABLEKS                       R19 R19 K2 ["Uid"]
      295 NAMECALL                         R15 R15 K14 ["Fire"]
      297 CALL                             R15 4 0
      298 GETUPVAL                         R15 7
      299 CALL                             R15 0 1
      300 JUMPIFNOT                        R15 ; [+2]
      301 NOT                              R15 R14
      302 RETURN                           R15 1
      303 GETTABLEKS                       R15 R5 K38 ["Loading"]
      305 JUMPIF                           R15 ; [+2]
      306 LOADB                            R15 0
      307 RETURN                           R15 1
      308 LOADB                            R15 1
      309 RETURN                           R15 1

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

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
       30 GETUPVAL                         R5 0
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+3]
       33 LOADN                            R5 1
       34 SETTABLEKS                       R5 R3 K8 ["PendingRequestChains"]
       36 MOVE                             R7 R1
       37 MOVE                             R8 R4
       38 NAMECALL                         R5 R0 K9 ["_getNewItemsHandler"]
       40 CALL                             R5 3 1
       41 NAMECALL                         R6 R0 K10 ["_getFetchErrorCallback"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R0 K11 ["_networking"]
       46 MOVE                             R9 R1
       47 LOADNIL                          R10
       48 MOVE                             R11 R5
       49 MOVE                             R12 R6
       50 GETTABLEKS                       R13 R0 K12 ["_explorerController"]
       52 MOVE                             R15 R1
       53 NAMECALL                         R13 R13 K13 ["getScopeRoot"]
       55 CALL                             R13 2 -1
       56 NAMECALL                         R7 R7 K14 ["fetchAssetsAsync"]
       58 CALL                             R7 -1 0
       59 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        2 GETTABLEKS                       R3 R0 K1 ["_pluginController"]
        4 NAMECALL                         R3 R3 K2 ["getPluginSessionId"]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R1 K3 ["paths"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETUPVAL                         R8 0
       16 MOVE                             R9 R6
       17 CALL                             R8 1 1
       18 JUMPIF                           R8 ; [+4]
       19 GETUPVAL                         R9 1
       20 MOVE                             R10 R6
       21 CALL                             R9 1 1
       22 MOVE                             R8 R9
       23 MOVE                             R7 R8
       24 JUMPIFNOT                        R7 ; [+25]
       25 GETTABLEKS                       R8 R0 K4 ["_itemsCache"]
       27 MOVE                             R10 R7
       28 NAMECALL                         R8 R8 K5 ["hasScope"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+18]
       32 NAMECALL                         R8 R0 K6 ["getCurrentShownScope"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R8 R8 K7 ["Uid"]
       37 JUMPIFNOTEQ                      R8 R7 ; [+6]
       39 MOVE                             R10 R7
       40 NAMECALL                         R8 R0 K8 ["_scheduleDebouncedRefresh"]
       42 CALL                             R8 2 0
       43 JUMP                             ; [+6]
       44 GETTABLEKS                       R8 R0 K4 ["_itemsCache"]
       46 MOVE                             R10 R7
       47 NAMECALL                         R8 R8 K9 ["removeScope"]
       49 CALL                             R8 2 0
       50 FORGLOOP                         R2 2 ; [-36]
       52 RETURN                           R0 0

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
        0 GETTABLEKS                       R4 R0 K0 ["_itemsCache"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETTABLEKS                       R8 R0 K1 ["_renderItems"]
        6 MOVE                             R9 R3
        7 GETTABLEKS                       R10 R0 K2 ["_filters"]
        9 GETTABLEKS                       R11 R0 K3 ["_sorts"]
       11 NAMECALL                         R4 R4 K4 ["updateSortedFilteredPaths"]
       13 CALL                             R4 7 0
       14 GETIMPORT                        R4 K7 [table.clone]
       16 GETTABLEKS                       R5 R0 K1 ["_renderItems"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R0 K1 ["_renderItems"]
       21 GETTABLEKS                       R4 R0 K8 ["OnItemsChanged"]
       23 GETTABLEKS                       R6 R0 K1 ["_renderItems"]
       25 NAMECALL                         R4 R4 K9 ["Fire"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

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
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+18]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["showSnackbar"]
       19 DUPTABLE                         R3 K7 [{"LocalizableMessage", "Type"}]
       20 DUPTABLE                         R4 K11 [{["Key"] = "Toast", ["SubKey"]}]
       21 SETTABLEKS                       R1 R4 K10 ["SubKey"]
       23 SETTABLEKS                       R4 R3 K5 ["LocalizableMessage"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K12 ["SnackbarType"]
       28 GETTABLEKS                       R4 R4 K13 ["Error"]
       30 SETTABLEKS                       R4 R3 K6 ["Type"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K14 ["_pluginController"]
       37 DUPTABLE                         R4 K11 [{["Key"] = "Toast", ["SubKey"]}]
       38 SETTABLEKS                       R1 R4 K10 ["SubKey"]
       40 NAMECALL                         R2 R2 K15 ["showToast"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_33:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        2 GETTABLEKS                       R5 R1 K1 ["Uid"]
        4 NAMECALL                         R3 R3 K2 ["addScope"]
        6 CALL                             R3 2 1
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K3 ["Loading"]
       10 GETUPVAL                         R4 0
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 LOADN                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["PendingRequestChains"]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETTABLEKS                       R5 R0 K5 ["_sorts"]
       19 LENGTH                           R4 R5
       20 JUMPIFNOTEQKN                    R4 K6 [0] ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K7 ["get"]
       25 CALL                             R4 0 1
       26 SETTABLEKS                       R4 R0 K5 ["_sorts"]
       28 MOVE                             R6 R1
       29 NAMECALL                         R4 R0 K8 ["_getNewItemsHandler"]
       31 CALL                             R4 2 1
       32 NAMECALL                         R5 R0 K9 ["_getFetchErrorCallback"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R0 K10 ["_networking"]
       37 MOVE                             R8 R1
       38 GETTABLEKS                       R9 R3 K11 ["NextPageToken"]
       40 MOVE                             R10 R4
       41 MOVE                             R11 R5
       42 GETTABLEKS                       R12 R0 K12 ["_explorerController"]
       44 MOVE                             R14 R1
       45 NAMECALL                         R12 R12 K13 ["getScopeRoot"]
       47 CALL                             R12 2 -1
       48 NAMECALL                         R6 R6 K14 ["fetchAssetsAsync"]
       50 CALL                             R6 -1 0
       51 GETTABLEKS                       R6 R0 K15 ["OnScopeFetchProgressChanged"]
       53 LOADN                            R8 0
       54 LOADB                            R9 1
       55 GETTABLEKS                       R10 R1 K1 ["Uid"]
       57 NAMECALL                         R6 R6 K16 ["Fire"]
       59 CALL                             R6 4 0
       60 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 NAMECALL                         R1 R1 K1 ["stop"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_networking"]
        7 NAMECALL                         R1 R1 K3 ["makeFetchRequestsStale"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K4 ["OnScopeFetchProgressChanged"]
       12 LOADN                            R3 0
       13 LOADB                            R4 0
       14 NAMECALL                         R5 R0 K5 ["getCurrentShownScope"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R5 R5 K6 ["Uid"]
       19 NAMECALL                         R1 R1 K7 ["Fire"]
       21 CALL                             R1 4 0
       22 GETTABLEKS                       R1 R0 K8 ["_itemsCache"]
       24 NAMECALL                         R1 R1 K9 ["reset"]
       26 CALL                             R1 1 0
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K10 ["_renderItems"]
       31 GETTABLEKS                       R1 R0 K11 ["OnItemsChanged"]
       33 GETTABLEKS                       R3 R0 K10 ["_renderItems"]
       35 NAMECALL                         R1 R1 K7 ["Fire"]
       37 CALL                             R1 2 0
       38 NEWTABLE                         R1 0 0
       40 SETTABLEKS                       R1 R0 K12 ["_selection"]
       42 LOADN                            R3 1
       43 NAMECALL                         R1 R0 K13 ["syncSelectionIndices"]
       45 CALL                             R1 2 0
       46 GETTABLEKS                       R1 R0 K14 ["OnItemSelectionChanged"]
       48 GETTABLEKS                       R3 R0 K12 ["_selection"]
       50 NAMECALL                         R1 R1 K7 ["Fire"]
       52 CALL                             R1 2 0
       53 NEWTABLE                         R1 0 0
       55 SETTABLEKS                       R1 R0 K15 ["_creators"]
       57 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_37:
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

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_39:
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

PROTO_40:
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
       37 JUMPIFNOTEQ                      R3 R4 ; [+107]
       39 GETTABLEKS                       R3 R1 K12 ["AssetType"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K12 ["AssetType"]
       44 GETTABLEKS                       R4 R4 K13 ["Place"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+98]
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
       82 GETUPVAL                         R4 2
       83 CALL                             R4 0 1
       84 JUMPIFNOT                        R4 ; [+6]
       85 LOADB                            R4 1
       86 SETTABLEKS                       R4 R3 K21 ["Loading"]
       88 LOADN                            R4 1
       89 SETTABLEKS                       R4 R3 K22 ["PendingRequestChains"]
       91 MOVE                             R6 R2
       92 NAMECALL                         R4 R0 K23 ["_getNewItemsHandler"]
       94 CALL                             R4 2 1
       95 DUPTABLE                         R5 K26 [{"Type", "Uid", "Name", "Id"}]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K10 ["ScopeType"]
       99 GETTABLEKS                       R6 R6 K27 ["ProjectPlaces"]
      101 SETTABLEKS                       R6 R5 K9 ["Type"]
      103 GETUPVAL                         R6 3
      104 GETUPVAL                         R7 1
      105 GETTABLEKS                       R7 R7 K10 ["ScopeType"]
      107 GETTABLEKS                       R7 R7 K27 ["ProjectPlaces"]
      109 GETTABLEKS                       R8 R2 K25 ["Id"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K19 ["Uid"]
      114 GETTABLEKS                       R6 R2 K24 ["Name"]
      116 SETTABLEKS                       R6 R5 K24 ["Name"]
      118 GETTABLEKS                       R6 R2 K25 ["Id"]
      120 SETTABLEKS                       R6 R5 K25 ["Id"]
      122 NAMECALL                         R6 R0 K28 ["_getFetchErrorCallback"]
      124 CALL                             R6 1 1
      125 GETTABLEKS                       R7 R0 K29 ["_networking"]
      127 MOVE                             R9 R5
      128 GETTABLEKS                       R10 R3 K30 ["NextPageToken"]
      130 MOVE                             R11 R4
      131 MOVE                             R12 R6
      132 NAMECALL                         R7 R7 K31 ["fetchAssetsAsync"]
      134 CALL                             R7 5 0
      135 GETTABLEKS                       R7 R0 K32 ["OnScopeFetchProgressChanged"]
      137 LOADN                            R9 0
      138 LOADB                            R10 1
      139 GETTABLEKS                       R11 R2 K19 ["Uid"]
      141 NAMECALL                         R7 R7 K5 ["Fire"]
      143 CALL                             R7 4 0
      144 RETURN                           R0 0
      145 DUPTABLE                         R3 K34 [{"SearchTerm", "AssetType", "ScopeInfo"}]
      146 GETTABLEKS                       R4 R0 K6 ["_searchController"]
      148 NAMECALL                         R4 R4 K16 ["getSearchTerm"]
      150 CALL                             R4 1 1
      151 SETTABLEKS                       R4 R3 K33 ["SearchTerm"]
      153 GETTABLEKS                       R4 R1 K12 ["AssetType"]
      155 SETTABLEKS                       R4 R3 K12 ["AssetType"]
      157 SETTABLEKS                       R2 R3 K8 ["ScopeInfo"]
      159 GETTABLEKS                       R4 R0 K18 ["_itemsCache"]
      161 GETTABLEKS                       R6 R2 K19 ["Uid"]
      163 NAMECALL                         R4 R4 K20 ["addScope"]
      165 CALL                             R4 2 1
      166 GETUPVAL                         R5 2
      167 CALL                             R5 0 1
      168 JUMPIFNOT                        R5 ; [+6]
      169 LOADB                            R5 1
      170 SETTABLEKS                       R5 R4 K21 ["Loading"]
      172 LOADN                            R5 2
      173 SETTABLEKS                       R5 R4 K22 ["PendingRequestChains"]
      175 MOVE                             R7 R2
      176 NAMECALL                         R5 R0 K23 ["_getNewItemsHandler"]
      178 CALL                             R5 2 1
      179 GETTABLEKS                       R6 R0 K29 ["_networking"]
      181 MOVE                             R8 R3
      182 GETTABLEKS                       R9 R4 K30 ["NextPageToken"]
      184 MOVE                             R10 R5
      185 GETTABLEKS                       R11 R0 K35 ["_fetchAssetsErrorCallback"]
      187 NAMECALL                         R6 R6 K36 ["searchAssetsAsync"]
      189 CALL                             R6 5 0
      190 DUPTABLE                         R6 K39 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      191 GETTABLEKS                       R7 R0 K6 ["_searchController"]
      193 NAMECALL                         R7 R7 K16 ["getSearchTerm"]
      195 CALL                             R7 1 1
      196 SETTABLEKS                       R7 R6 K33 ["SearchTerm"]
      198 SETTABLEKS                       R2 R6 K8 ["ScopeInfo"]
      200 MOVE                             R3 R6
      201 GETTABLEKS                       R6 R0 K29 ["_networking"]
      203 MOVE                             R8 R3
      204 GETTABLEKS                       R9 R4 K30 ["NextPageToken"]
      206 MOVE                             R10 R5
      207 GETTABLEKS                       R11 R0 K35 ["_fetchAssetsErrorCallback"]
      209 NAMECALL                         R6 R6 K36 ["searchAssetsAsync"]
      211 CALL                             R6 5 0
      212 GETTABLEKS                       R6 R0 K32 ["OnScopeFetchProgressChanged"]
      214 LOADN                            R8 0
      215 LOADB                            R9 1
      216 GETTABLEKS                       R10 R2 K19 ["Uid"]
      218 NAMECALL                         R6 R6 K5 ["Fire"]
      220 CALL                             R6 4 0
      221 RETURN                           R0 0

PROTO_41:
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
       50 GETUPVAL                         R2 2
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+12]
       53 GETUPVAL                         R2 3
       54 GETTABLEKS                       R2 R2 K17 ["eventStart"]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K18 ["BenchmarkingEvent"]
       59 GETTABLEKS                       R3 R3 K19 ["LoadNewScope"]
       61 DUPTABLE                         R4 K22 [{["isBackgroundFetch"] = False}]
       62 GETTABLEKS                       R5 R1 K10 ["Uid"]
       64 CALL                             R2 3 0
       65 MOVE                             R4 R1
       66 LOADB                            R5 0
       67 NAMECALL                         R2 R0 K23 ["_startNewScopeFetch"]
       69 CALL                             R2 3 0
       70 RETURN                           R0 0

PROTO_42:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_51:
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
       29 JUMPIFNOT                        R0 ; [+26]
       30 GETUPVAL                         R0 6
       31 CALL                             R0 0 1
       32 JUMPIFNOT                        R0 ; [+16]
       33 GETUPVAL                         R0 7
       34 GETTABLEKS                       R0 R0 K5 ["showSnackbar"]
       36 DUPTABLE                         R1 K8 [{"LocalizableMessage", "Type"}]
       37 DUPTABLE                         R2 K13 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       38 SETTABLEKS                       R2 R1 K6 ["LocalizableMessage"]
       40 GETUPVAL                         R2 7
       41 GETTABLEKS                       R2 R2 K14 ["SnackbarType"]
       43 GETTABLEKS                       R2 R2 K15 ["Error"]
       45 SETTABLEKS                       R2 R1 K7 ["Type"]
       47 CALL                             R0 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R0 0
       50 GETTABLEKS                       R0 R0 K16 ["_pluginController"]
       52 DUPTABLE                         R2 K13 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       53 NAMECALL                         R0 R0 K17 ["showToast"]
       55 CALL                             R0 2 0
       56 RETURN                           R0 0

PROTO_52:
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
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U4
       85 NAMECALL                         R9 R9 K11 ["andThen"]
       87 CALL                             R9 2 0
       88 CLOSEUPVALS                      R5
       89 RETURN                           R0 0

PROTO_53:
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
       24 JUMPIFNOTLT                      R3 R2 ; [+27]
       26 GETUPVAL                         R2 1
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+16]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K4 ["showSnackbar"]
       32 DUPTABLE                         R3 K7 [{"LocalizableMessage", "Type"}]
       33 DUPTABLE                         R4 K12 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       34 SETTABLEKS                       R4 R3 K5 ["LocalizableMessage"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K13 ["SnackbarType"]
       39 GETTABLEKS                       R4 R4 K14 ["Error"]
       41 SETTABLEKS                       R4 R3 K6 ["Type"]
       43 CALL                             R2 1 0
       44 JUMP                             ; [+7]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K15 ["_pluginController"]
       48 DUPTABLE                         R4 K12 [{["Key"] = "Toast", ["SubKey"] = "PartialMoveFailure"}]
       49 NAMECALL                         R2 R2 K16 ["showToast"]
       51 CALL                             R2 2 0
       52 GETUPVAL                         R3 3
       53 JUMPIFNOT                        R3 ; [+4]
       54 GETUPVAL                         R2 4
       55 GETUPVAL                         R3 3
       56 CALL                             R2 1 1
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R2 5
       59 GETTABLEKS                       R2 R2 K17 ["Uid"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K18 ["_itemsCache"]
       64 MOVE                             R5 R2
       65 NAMECALL                         R3 R3 K19 ["hasScope"]
       67 CALL                             R3 2 1
       68 JUMPIF                           R3 ; [+40]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K20 ["_explorerController"]
       72 MOVE                             R5 R2
       73 NAMECALL                         R3 R3 K21 ["getScopeWithUid"]
       75 CALL                             R3 2 1
       76 JUMPIF                           R3 ; [+15]
       77 GETUPVAL                         R3 6
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K18 ["_itemsCache"]
       81 GETUPVAL                         R6 7
       82 GETTABLEKS                       R6 R6 K17 ["Uid"]
       84 GETUPVAL                         R7 3
       85 NAMECALL                         R4 R4 K22 ["getItem"]
       87 CALL                             R4 3 1
       88 GETUPVAL                         R5 7
       89 GETTABLEKS                       R5 R5 K17 ["Uid"]
       91 CALL                             R3 2 1
       92 JUMPIF                           R3 ; [+10]
       93 GETUPVAL                         R4 8
       94 LOADK                            R6 K23 ["Couldn't get folder scope for target %*, cannot move items"]
       95 GETUPVAL                         R8 3
       96 NAMECALL                         R6 R6 K24 ["format"]
       98 CALL                             R6 2 1
       99 MOVE                             R5 R6
      100 LOADK                            R6 K25 ["WARN"]
      101 CALL                             R4 2 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R4 0
      104 MOVE                             R6 R3
      105 LOADB                            R7 0
      106 NAMECALL                         R4 R4 K26 ["_startNewScopeFetch"]
      108 CALL                             R4 3 0
      109 LOADB                            R3 0
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K27 ["_searchController"]
      113 NAMECALL                         R4 R4 K28 ["getShowSearchOptions"]
      115 CALL                             R4 1 1
      116 JUMPIF                           R4 ; [+18]
      117 GETUPVAL                         R4 9
      118 LOADNIL                          R5
      119 LOADNIL                          R6
      120 FORGPREP                         R4
      121 GETTABLE                         R9 R1 R8
      122 JUMPIF                           R9 ; [+10]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R9 R9 K18 ["_itemsCache"]
      126 GETUPVAL                         R11 10
      127 MOVE                             R12 R2
      128 MOVE                             R13 R8
      129 NAMECALL                         R9 R9 K29 ["moveItem"]
      131 CALL                             R9 4 0
      132 LOADB                            R3 1
      133 FORGLOOP                         R4 2 ; [-13]
      135 JUMPIFNOT                        R3 ; [+4]
      136 GETUPVAL                         R4 0
      137 NAMECALL                         R4 R4 K30 ["_createRenderItems"]
      139 CALL                             R4 1 0
      140 GETUPVAL                         R4 0
      141 GETTABLEKS                       R4 R4 K20 ["_explorerController"]
      143 GETUPVAL                         R6 10
      144 MOVE                             R7 R2
      145 GETUPVAL                         R8 9
      146 MOVE                             R9 R1
      147 NAMECALL                         R4 R4 K31 ["moveScopes"]
      149 CALL                             R4 5 0
      150 JUMPIFNOT                        R3 ; [+8]
      151 GETUPVAL                         R4 0
      152 GETUPVAL                         R6 5
      153 GETUPVAL                         R7 7
      154 MOVE                             R8 R2
      155 GETUPVAL                         R9 3
      156 NAMECALL                         R4 R4 K32 ["_updateLastUsedFolder"]
      158 CALL                             R4 5 0
      159 GETUPVAL                         R4 11
      160 ADDK                             R4 R4 K33 [1]
      161 SETUPVAL                         R4 11
      162 GETUPVAL                         R4 11
      163 GETUPVAL                         R6 12
      164 LENGTH                           R5 R6
      165 JUMPIFNOTEQ                      R4 R5 ; [+27]
      167 GETUPVAL                         R4 1
      168 CALL                             R4 0 1
      169 JUMPIFNOT                        R4 ; [+16]
      170 GETUPVAL                         R4 2
      171 GETTABLEKS                       R4 R4 K4 ["showSnackbar"]
      173 DUPTABLE                         R5 K7 [{"LocalizableMessage", "Type"}]
      174 DUPTABLE                         R6 K36 [{["Key"] = "FolderMove", ["SubKey"] = "Success"}]
      175 SETTABLEKS                       R6 R5 K5 ["LocalizableMessage"]
      177 GETUPVAL                         R6 2
      178 GETTABLEKS                       R6 R6 K13 ["SnackbarType"]
      180 GETTABLEKS                       R6 R6 K37 ["Info"]
      182 SETTABLEKS                       R6 R5 K6 ["Type"]
      184 CALL                             R4 1 0
      185 JUMP                             ; [+7]
      186 GETUPVAL                         R4 0
      187 GETTABLEKS                       R4 R4 K15 ["_pluginController"]
      189 DUPTABLE                         R6 K36 [{["Key"] = "FolderMove", ["SubKey"] = "Success"}]
      190 NAMECALL                         R4 R4 K16 ["showToast"]
      192 CALL                             R4 2 0
      193 GETUPVAL                         R4 13
      194 GETTABLEKS                       R4 R4 K38 ["sendMoveFolderEvent"]
      196 DUPTABLE                         R5 K41 [{"folderMoveCount", "assetMoveCount"}]
      197 GETUPVAL                         R6 14
      198 SETTABLEKS                       R6 R5 K39 ["folderMoveCount"]
      200 GETUPVAL                         R6 15
      201 SETTABLEKS                       R6 R5 K40 ["assetMoveCount"]
      203 DUPTABLE                         R6 K46 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
      204 GETUPVAL                         R7 0
      205 GETTABLEKS                       R7 R7 K20 ["_explorerController"]
      207 SETTABLEKS                       R7 R6 K42 ["ExplorerController"]
      209 GETUPVAL                         R7 0
      210 GETTABLEKS                       R7 R7 K47 ["_layoutController"]
      212 SETTABLEKS                       R7 R6 K43 ["LayoutController"]
      214 GETUPVAL                         R7 0
      215 SETTABLEKS                       R7 R6 K44 ["ItemsController"]
      217 GETUPVAL                         R7 0
      218 GETTABLEKS                       R7 R7 K27 ["_searchController"]
      220 SETTABLEKS                       R7 R6 K45 ["SearchController"]
      222 CALL                             R4 2 0
      223 GETUPVAL                         R4 16
      224 CALL                             R4 0 1
      225 JUMPIF                           R4 ; [+44]
      226 GETUPVAL                         R4 17
      227 GETUPVAL                         R5 18
      228 GETUPVAL                         R6 0
      229 GETTABLEKS                       R6 R6 K20 ["_explorerController"]
      231 CALL                             R4 2 1
      232 GETUPVAL                         R5 19
      233 GETTABLEKS                       R5 R5 K48 ["sendFolderOperationEvent"]
      235 DUPTABLE                         R6 K53 [{"folderOperation", "folderMoveCount", "assetMoveCount", "currentRootId", "currentRootType", "currentFolderId"}]
      236 GETUPVAL                         R7 19
      237 GETTABLEKS                       R7 R7 K54 ["Enums"]
      239 GETTABLEKS                       R7 R7 K55 ["FolderOperation"]
      241 GETTABLEKS                       R7 R7 K56 ["Move"]
      243 SETTABLEKS                       R7 R6 K49 ["folderOperation"]
      245 GETUPVAL                         R7 14
      246 SETTABLEKS                       R7 R6 K39 ["folderMoveCount"]
      248 GETUPVAL                         R7 15
      249 SETTABLEKS                       R7 R6 K40 ["assetMoveCount"]
      251 MOVE                             R7 R4
      252 JUMPIFNOT                        R7 ; [+2]
      253 GETTABLEKS                       R7 R4 K50 ["currentRootId"]
      255 SETTABLEKS                       R7 R6 K50 ["currentRootId"]
      257 MOVE                             R7 R4
      258 JUMPIFNOT                        R7 ; [+2]
      259 GETTABLEKS                       R7 R4 K51 ["currentRootType"]
      261 SETTABLEKS                       R7 R6 K51 ["currentRootType"]
      263 MOVE                             R7 R4
      264 JUMPIFNOT                        R7 ; [+2]
      265 GETTABLEKS                       R7 R4 K52 ["currentFolderId"]
      267 SETTABLEKS                       R7 R6 K52 ["currentFolderId"]
      269 CALL                             R5 1 0
      270 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R3 R0 K2 ["message"]
        8 ORK                              R2 R3 K1 [""]
        9 LOADK                            R3 K3 ["Move"]
       10 CALL                             R1 2 3
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+22]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K4 ["showSnackbar"]
       17 DUPTABLE                         R5 K7 [{"LocalizableMessage", "Type"}]
       18 DUPTABLE                         R6 K11 [{"Key", "SubKey", "Args"}]
       19 SETTABLEKS                       R1 R6 K8 ["Key"]
       21 SETTABLEKS                       R2 R6 K9 ["SubKey"]
       23 SETTABLEKS                       R3 R6 K10 ["Args"]
       25 SETTABLEKS                       R6 R5 K5 ["LocalizableMessage"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K12 ["SnackbarType"]
       30 GETTABLEKS                       R6 R6 K13 ["Error"]
       32 SETTABLEKS                       R6 R5 K6 ["Type"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K14 ["_pluginController"]
       39 DUPTABLE                         R6 K11 [{"Key", "SubKey", "Args"}]
       40 SETTABLEKS                       R1 R6 K8 ["Key"]
       42 SETTABLEKS                       R2 R6 K9 ["SubKey"]
       44 SETTABLEKS                       R3 R6 K10 ["Args"]
       46 NAMECALL                         R4 R4 K15 ["showToast"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

PROTO_55:
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
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          REF R12
       96 CAPTURE                          VAL R14
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          REF R10
       99 CAPTURE                          REF R11
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U10
      104 NAMECALL                         R21 R21 K25 ["andThen"]
      106 CALL                             R21 2 1
      107 NEWCLOSURE                       R23 P1
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U3
      112 NAMECALL                         R21 R21 K26 ["catch"]
      114 CALL                             R21 2 0
      115 FORGLOOP                         R15 2 ; [-50]
      117 CLOSEUPVALS                      R10
      118 RETURN                           R0 0

PROTO_56:
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
       75 GETTABLEKS                       R2 R2 K17 ["sendCreateFolderEvent"]
       77 NEWTABLE                         R3 0 0
       79 DUPTABLE                         R4 K22 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       80 GETUPVAL                         R5 0
       81 GETTABLEKS                       R5 R5 K5 ["_explorerController"]
       83 SETTABLEKS                       R5 R4 K18 ["ExplorerController"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K23 ["_layoutController"]
       88 SETTABLEKS                       R5 R4 K19 ["LayoutController"]
       90 GETUPVAL                         R5 0
       91 SETTABLEKS                       R5 R4 K20 ["ItemsController"]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K24 ["_searchController"]
       96 SETTABLEKS                       R5 R4 K21 ["SearchController"]
       98 CALL                             R2 2 0
       99 GETUPVAL                         R2 6
      100 CALL                             R2 0 1
      101 JUMPIF                           R2 ; [+38]
      102 GETUPVAL                         R2 7
      103 GETUPVAL                         R3 1
      104 GETUPVAL                         R4 0
      105 GETTABLEKS                       R4 R4 K5 ["_explorerController"]
      107 CALL                             R2 2 1
      108 GETUPVAL                         R3 8
      109 GETTABLEKS                       R3 R3 K25 ["sendFolderOperationEvent"]
      111 DUPTABLE                         R4 K30 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
      112 GETUPVAL                         R5 8
      113 GETTABLEKS                       R5 R5 K31 ["Enums"]
      115 GETTABLEKS                       R5 R5 K32 ["FolderOperation"]
      117 GETTABLEKS                       R5 R5 K33 ["Create"]
      119 SETTABLEKS                       R5 R4 K26 ["folderOperation"]
      121 MOVE                             R5 R2
      122 JUMPIFNOT                        R5 ; [+2]
      123 GETTABLEKS                       R5 R2 K27 ["currentRootId"]
      125 SETTABLEKS                       R5 R4 K27 ["currentRootId"]
      127 MOVE                             R5 R2
      128 JUMPIFNOT                        R5 ; [+2]
      129 GETTABLEKS                       R5 R2 K28 ["currentRootType"]
      131 SETTABLEKS                       R5 R4 K28 ["currentRootType"]
      133 MOVE                             R5 R2
      134 JUMPIFNOT                        R5 ; [+2]
      135 GETTABLEKS                       R5 R2 K29 ["currentFolderId"]
      137 SETTABLEKS                       R5 R4 K29 ["currentFolderId"]
      139 CALL                             R3 1 0
      140 RETURN                           R0 0

PROTO_57:
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
       24 GETUPVAL                         R4 4
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+22]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K8 ["showSnackbar"]
       30 DUPTABLE                         R5 K11 [{"LocalizableMessage", "Type"}]
       31 DUPTABLE                         R6 K15 [{"Key", "SubKey", "Args"}]
       32 SETTABLEKS                       R1 R6 K12 ["Key"]
       34 SETTABLEKS                       R2 R6 K13 ["SubKey"]
       36 SETTABLEKS                       R3 R6 K14 ["Args"]
       38 SETTABLEKS                       R6 R5 K9 ["LocalizableMessage"]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K16 ["SnackbarType"]
       43 GETTABLEKS                       R6 R6 K17 ["Error"]
       45 SETTABLEKS                       R6 R5 K10 ["Type"]
       47 CALL                             R4 1 0
       48 JUMP                             ; [+13]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K18 ["_pluginController"]
       52 DUPTABLE                         R6 K15 [{"Key", "SubKey", "Args"}]
       53 SETTABLEKS                       R1 R6 K12 ["Key"]
       55 SETTABLEKS                       R2 R6 K13 ["SubKey"]
       57 SETTABLEKS                       R3 R6 K14 ["Args"]
       59 NAMECALL                         R4 R4 K19 ["showToast"]
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 0
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K20 ["_moveSelectionToNewFolder"]
       66 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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
       74 NAMECALL                         R5 R5 K19 ["andThen"]
       76 CALL                             R5 2 1
       77 NEWCLOSURE                       R7 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          UPVAL U10
       84 NAMECALL                         R5 R5 K20 ["catch"]
       86 CALL                             R5 2 1
       87 NEWCLOSURE                       R7 P2
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R3
       90 NAMECALL                         R5 R5 K21 ["finally"]
       92 CALL                             R5 2 0
       93 RETURN                           R0 0

PROTO_60:
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
       72 GETTABLEKS                       R4 R4 K20 ["sendUpdateFolderEvent"]
       74 NEWTABLE                         R5 0 0
       76 DUPTABLE                         R6 K25 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K18 ["_explorerController"]
       80 SETTABLEKS                       R7 R6 K21 ["ExplorerController"]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K26 ["_layoutController"]
       85 SETTABLEKS                       R7 R6 K22 ["LayoutController"]
       87 GETUPVAL                         R7 0
       88 SETTABLEKS                       R7 R6 K23 ["ItemsController"]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K27 ["_searchController"]
       93 SETTABLEKS                       R7 R6 K24 ["SearchController"]
       95 CALL                             R4 2 0
       96 GETUPVAL                         R4 6
       97 CALL                             R4 0 1
       98 JUMPIF                           R4 ; [+41]
       99 GETUPVAL                         R4 7
      100 GETUPVAL                         R5 0
      101 NAMECALL                         R5 R5 K14 ["getCurrentShownScope"]
      103 CALL                             R5 1 1
      104 GETUPVAL                         R6 0
      105 GETTABLEKS                       R6 R6 K18 ["_explorerController"]
      107 CALL                             R4 2 1
      108 GETUPVAL                         R5 8
      109 GETTABLEKS                       R5 R5 K28 ["sendFolderOperationEvent"]
      111 DUPTABLE                         R6 K33 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
      112 GETUPVAL                         R7 8
      113 GETTABLEKS                       R7 R7 K34 ["Enums"]
      115 GETTABLEKS                       R7 R7 K35 ["FolderOperation"]
      117 GETTABLEKS                       R7 R7 K36 ["Update"]
      119 SETTABLEKS                       R7 R6 K29 ["folderOperation"]
      121 MOVE                             R7 R4
      122 JUMPIFNOT                        R7 ; [+2]
      123 GETTABLEKS                       R7 R4 K30 ["currentRootId"]
      125 SETTABLEKS                       R7 R6 K30 ["currentRootId"]
      127 MOVE                             R7 R4
      128 JUMPIFNOT                        R7 ; [+2]
      129 GETTABLEKS                       R7 R4 K31 ["currentRootType"]
      131 SETTABLEKS                       R7 R6 K31 ["currentRootType"]
      133 MOVE                             R7 R4
      134 JUMPIFNOT                        R7 ; [+2]
      135 GETTABLEKS                       R7 R4 K32 ["currentFolderId"]
      137 SETTABLEKS                       R7 R6 K32 ["currentFolderId"]
      139 CALL                             R5 1 0
      140 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["showSnackbar"]
       11 DUPTABLE                         R2 K4 [{"LocalizableMessage", "Type"}]
       12 DUPTABLE                         R3 K9 [{["Key"] = "Toast", ["SubKey"] = "RenameFolderFailed"}]
       13 SETTABLEKS                       R3 R2 K2 ["LocalizableMessage"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K10 ["SnackbarType"]
       18 GETTABLEKS                       R3 R3 K11 ["Error"]
       20 SETTABLEKS                       R3 R2 K3 ["Type"]
       22 CALL                             R1 1 0
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K12 ["_pluginController"]
       27 DUPTABLE                         R3 K9 [{["Key"] = "Toast", ["SubKey"] = "RenameFolderFailed"}]
       28 NAMECALL                         R1 R1 K13 ["showToast"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 0
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K14 ["_moveSelectionToNewFolder"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K15 ["_explorerController"]
       38 NAMECALL                         R1 R1 K16 ["removeStagedFolder"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_62:
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
       44 NAMECALL                         R4 R4 K11 ["andThen"]
       46 CALL                             R4 2 1
       47 NEWCLOSURE                       R6 P1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 NAMECALL                         R4 R4 K12 ["catch"]
       53 CALL                             R4 2 0
       54 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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
       28 JUMPIFNOTEQ                      R2 R3 ; [+34]
       30 GETUPVAL                         R2 3
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+26]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K5 ["_searchController"]
       36 NAMECALL                         R2 R2 K6 ["getShowSearchOptions"]
       38 CALL                             R2 1 1
       39 JUMPIFNOT                        R2 ; [+5]
       40 GETUPVAL                         R3 0
       41 NAMECALL                         R3 R3 K7 ["_createRenderItems"]
       43 CALL                             R3 1 0
       44 JUMP                             ; [+18]
       45 GETUPVAL                         R3 0
       46 NEWTABLE                         R5 0 0
       48 NEWTABLE                         R6 0 1
       50 GETUPVAL                         R7 2
       51 SETLIST                          R6 R7 1 [1]
       53 GETTABLEKS                       R7 R1 K3 ["Uid"]
       55 NAMECALL                         R3 R3 K8 ["_updateRenderItems"]
       57 CALL                             R3 4 0
       58 JUMP                             ; [+4]
       59 GETUPVAL                         R2 0
       60 NAMECALL                         R2 R2 K7 ["_createRenderItems"]
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K2 ["_itemsCache"]
       66 GETUPVAL                         R4 4
       67 GETUPVAL                         R5 2
       68 CALL                             R4 1 -1
       69 NAMECALL                         R2 R2 K9 ["removeScope"]
       71 CALL                             R2 -1 0
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K10 ["_explorerController"]
       75 GETUPVAL                         R4 2
       76 NAMECALL                         R2 R2 K11 ["handleDeletedFolder"]
       78 CALL                             R2 2 0
       79 GETUPVAL                         R2 5
       80 GETTABLEKS                       R2 R2 K12 ["sendDeleteFolderEvent"]
       82 NEWTABLE                         R3 0 0
       84 DUPTABLE                         R4 K17 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K10 ["_explorerController"]
       88 SETTABLEKS                       R5 R4 K13 ["ExplorerController"]
       90 GETUPVAL                         R5 0
       91 GETTABLEKS                       R5 R5 K18 ["_layoutController"]
       93 SETTABLEKS                       R5 R4 K14 ["LayoutController"]
       95 GETUPVAL                         R5 0
       96 SETTABLEKS                       R5 R4 K15 ["ItemsController"]
       98 GETUPVAL                         R5 0
       99 GETTABLEKS                       R5 R5 K5 ["_searchController"]
      101 SETTABLEKS                       R5 R4 K16 ["SearchController"]
      103 CALL                             R2 2 0
      104 GETUPVAL                         R2 6
      105 CALL                             R2 0 1
      106 JUMPIF                           R2 ; [+43]
      107 GETUPVAL                         R2 7
      108 GETUPVAL                         R3 1
      109 JUMPIF                           R3 ; [+4]
      110 GETUPVAL                         R3 0
      111 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
      113 CALL                             R3 1 1
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R4 R4 K10 ["_explorerController"]
      117 CALL                             R2 2 1
      118 GETUPVAL                         R3 8
      119 GETTABLEKS                       R3 R3 K19 ["sendFolderOperationEvent"]
      121 DUPTABLE                         R4 K24 [{"folderOperation", "currentRootId", "currentRootType", "currentFolderId"}]
      122 GETUPVAL                         R5 8
      123 GETTABLEKS                       R5 R5 K25 ["Enums"]
      125 GETTABLEKS                       R5 R5 K26 ["FolderOperation"]
      127 GETTABLEKS                       R5 R5 K27 ["Delete"]
      129 SETTABLEKS                       R5 R4 K20 ["folderOperation"]
      131 MOVE                             R5 R2
      132 JUMPIFNOT                        R5 ; [+2]
      133 GETTABLEKS                       R5 R2 K21 ["currentRootId"]
      135 SETTABLEKS                       R5 R4 K21 ["currentRootId"]
      137 MOVE                             R5 R2
      138 JUMPIFNOT                        R5 ; [+2]
      139 GETTABLEKS                       R5 R2 K22 ["currentRootType"]
      141 SETTABLEKS                       R5 R4 K22 ["currentRootType"]
      143 MOVE                             R5 R2
      144 JUMPIFNOT                        R5 ; [+2]
      145 GETTABLEKS                       R5 R2 K23 ["currentFolderId"]
      147 SETTABLEKS                       R5 R4 K23 ["currentFolderId"]
      149 CALL                             R3 1 0
      150 RETURN                           R0 0

PROTO_66:
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
       26 GETUPVAL                         R3 2
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+18]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K11 ["showSnackbar"]
       32 DUPTABLE                         R4 K14 [{"LocalizableMessage", "Type"}]
       33 DUPTABLE                         R5 K18 [{["Key"] = "Toast", ["SubKey"]}]
       34 SETTABLEKS                       R2 R5 K17 ["SubKey"]
       36 SETTABLEKS                       R5 R4 K12 ["LocalizableMessage"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K19 ["SnackbarType"]
       41 GETTABLEKS                       R5 R5 K20 ["Error"]
       43 SETTABLEKS                       R5 R4 K13 ["Type"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K21 ["_pluginController"]
       50 DUPTABLE                         R5 K18 [{["Key"] = "Toast", ["SubKey"]}]
       51 SETTABLEKS                       R2 R5 K17 ["SubKey"]
       53 NAMECALL                         R3 R3 K22 ["showToast"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_67:
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
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 NAMECALL                         R3 R3 K5 ["catch"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
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
      101 GETUPVAL                         R6 4
      102 CALL                             R6 0 1
      103 JUMPIFNOT                        R6 ; [+16]
      104 GETUPVAL                         R6 5
      105 GETTABLEKS                       R6 R6 K26 ["showSnackbar"]
      107 DUPTABLE                         R7 K29 [{"LocalizableMessage", "Type"}]
      108 DUPTABLE                         R8 K34 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      109 SETTABLEKS                       R8 R7 K27 ["LocalizableMessage"]
      111 GETUPVAL                         R8 5
      112 GETTABLEKS                       R8 R8 K35 ["SnackbarType"]
      114 GETTABLEKS                       R8 R8 K36 ["Info"]
      116 SETTABLEKS                       R8 R7 K28 ["Type"]
      118 CALL                             R6 1 0
      119 JUMP                             ; [+7]
      120 DUPTABLE                         R6 K34 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      121 GETTABLEKS                       R7 R0 K22 ["_pluginController"]
      123 MOVE                             R9 R6
      124 NAMECALL                         R7 R7 K37 ["showToast"]
      126 CALL                             R7 2 0
      127 GETUPVAL                         R6 6
      128 MOVE                             R7 R0
      129 MOVE                             R8 R2
      130 GETTABLEKS                       R9 R0 K38 ["_networking"]
      132 CALL                             R6 3 0
      133 RETURN                           R0 0

PROTO_70:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_itemsCache"]
        7 GETTABLEKS                       R5 R2 K3 ["Uid"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_76:
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

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_80:
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
       40 JUMPIFNOT                        R4 ; [+58]
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
       74 GETUPVAL                         R7 1
       75 CALL                             R7 0 1
       76 JUMPIFNOT                        R7 ; [+5]
       77 GETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
       79 ADDK                             R7 R7 K18 [1]
       80 SETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
       82 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       84 NAMECALL                         R7 R0 K19 ["_getNewItemsHandler"]
       86 CALL                             R7 2 1
       87 GETTABLEKS                       R8 R0 K20 ["_networking"]
       89 MOVE                             R10 R5
       90 GETTABLEKS                       R11 R6 K4 ["NextPageToken"]
       92 MOVE                             R12 R7
       93 GETTABLEKS                       R13 R0 K21 ["_fetchAssetsErrorCallback"]
       95 NAMECALL                         R8 R8 K22 ["searchAssetsAsync"]
       97 CALL                             R8 5 0
       98 RETURN                           R0 0
       99 GETTABLEKS                       R4 R0 K23 ["_pluginController"]
      101 NAMECALL                         R4 R4 K24 ["getCurrentScope"]
      103 CALL                             R4 1 1
      104 MOVE                             R7 R4
      105 NAMECALL                         R5 R0 K19 ["_getNewItemsHandler"]
      107 CALL                             R5 2 1
      108 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      110 GETTABLEKS                       R8 R4 K2 ["Uid"]
      112 NAMECALL                         R6 R6 K3 ["getScope"]
      114 CALL                             R6 2 1
      115 JUMPIF                           R6 ; [+7]
      116 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      118 GETTABLEKS                       R8 R4 K2 ["Uid"]
      120 NAMECALL                         R6 R6 K25 ["addScope"]
      122 CALL                             R6 2 1
      123 LOADB                            R7 1
      124 SETTABLEKS                       R7 R6 K16 ["Loading"]
      126 GETUPVAL                         R7 1
      127 CALL                             R7 0 1
      128 JUMPIFNOT                        R7 ; [+5]
      129 GETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
      131 ADDK                             R7 R7 K18 [1]
      132 SETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
      134 GETTABLEKS                       R7 R0 K20 ["_networking"]
      136 MOVE                             R9 R4
      137 GETTABLEKS                       R10 R6 K4 ["NextPageToken"]
      139 MOVE                             R11 R5
      140 GETTABLEKS                       R12 R0 K21 ["_fetchAssetsErrorCallback"]
      142 NAMECALL                         R7 R7 K26 ["fetchAssetsAsync"]
      144 CALL                             R7 5 0
      145 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
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
       22 DUPTABLE                         R4 K7 [{"Ids", "Types", "Names", "IsPackage"}]
       23 GETTABLEKS                       R5 R3 K3 ["Ids"]
       25 SETTABLEKS                       R5 R4 K3 ["Ids"]
       27 GETTABLEKS                       R5 R3 K4 ["Types"]
       29 SETTABLEKS                       R5 R4 K4 ["Types"]
       31 GETTABLEKS                       R5 R3 K5 ["Names"]
       33 SETTABLEKS                       R5 R4 K5 ["Names"]
       35 GETTABLEKS                       R5 R3 K6 ["IsPackage"]
       37 SETTABLEKS                       R5 R4 K6 ["IsPackage"]
       39 RETURN                           R4 1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getSelection"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R0 K2 ["getItemsCache"]
        9 CALL                             R4 1 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+9]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["eventStart"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R4 R4 K2 ["Filter"]
       11 CALL                             R3 1 0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R0 K3 ["hasFilter"]
       16 CALL                             R3 3 1
       17 JUMPIFNOT                        R3 ; [+10]
       18 MOVE                             R5 R1
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R2
       22 SETLIST                          R6 R7 1 [1]
       24 NAMECALL                         R3 R0 K4 ["_removeFilter"]
       26 CALL                             R3 3 0
       27 JUMP                             ; [+8]
       28 MOVE                             R5 R1
       29 NEWTABLE                         R6 1 0
       31 LOADB                            R7 1
       32 SETTABLE                         R7 R6 R2
       33 NAMECALL                         R3 R0 K5 ["_addFilter"]
       35 CALL                             R3 3 0
       36 NAMECALL                         R3 R0 K6 ["_updateSortFilter"]
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+9]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K7 ["eventEnd"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K1 ["BenchmarkingEvent"]
       48 GETTABLEKS                       R4 R4 K2 ["Filter"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["eventStart"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R2 R2 K2 ["Filter"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R2 R0 K3 ["_filters"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["AssetInfoField"]
       17 GETTABLEKS                       R3 R3 K5 ["IsPackage"]
       19 GETTABLE                         R1 R2 R3
       20 JUMPIFNOT                        R1 ; [+10]
       21 GETTABLEKS                       R1 R0 K3 ["_filters"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       26 GETTABLEKS                       R2 R2 K5 ["IsPackage"]
       28 LOADNIL                          R3
       29 SETTABLE                         R3 R1 R2
       30 JUMP                             ; [+9]
       31 GETTABLEKS                       R1 R0 K3 ["_filters"]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       36 GETTABLEKS                       R2 R2 K5 ["IsPackage"]
       38 LOADB                            R3 1
       39 SETTABLE                         R3 R1 R2
       40 NAMECALL                         R1 R0 K6 ["_updateSortFilter"]
       42 CALL                             R1 1 0
       43 GETUPVAL                         R1 0
       44 CALL                             R1 0 1
       45 JUMPIFNOT                        R1 ; [+9]
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K7 ["eventEnd"]
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
       52 GETTABLEKS                       R2 R2 K2 ["Filter"]
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["eventStart"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R2 R2 K2 ["Filter"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K3 ["_filters"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       17 GETTABLEKS                       R2 R2 K5 ["Archived"]
       19 GETTABLEKS                       R5 R0 K3 ["_filters"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["AssetInfoField"]
       24 GETTABLEKS                       R6 R6 K5 ["Archived"]
       26 GETTABLE                         R4 R5 R6
       27 NOT                              R3 R4
       28 SETTABLE                         R3 R1 R2
       29 NAMECALL                         R1 R0 K6 ["_updateSortFilter"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 0
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+9]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K7 ["eventEnd"]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
       41 GETTABLEKS                       R2 R2 K2 ["Filter"]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["eventStart"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R3 R3 K2 ["Sort"]
       11 CALL                             R2 1 0
       12 LOADB                            R2 0
       13 GETTABLEKS                       R3 R0 K3 ["_sorts"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETTABLEKS                       R8 R7 K4 ["Key"]
       20 JUMPIFNOTEQ                      R8 R1 ; [+11]
       22 GETTABLEKS                       R8 R7 K5 ["IsAscending"]
       24 NOT                              R2 R8
       25 GETIMPORT                        R8 K8 [table.remove]
       27 GETTABLEKS                       R9 R0 K3 ["_sorts"]
       29 MOVE                             R10 R6
       30 CALL                             R8 2 0
       31 JUMP                             ; [+2]
       32 FORGLOOP                         R3 2 ; [-15]
       34 DUPTABLE                         R3 K9 [{"Key", "IsAscending"}]
       35 SETTABLEKS                       R1 R3 K4 ["Key"]
       37 SETTABLEKS                       R2 R3 K5 ["IsAscending"]
       39 GETTABLEKS                       R5 R0 K3 ["_sorts"]
       41 LOADN                            R6 1
       42 FASTCALL3                        TABLE_INSERT R5 R6 R3
       44 MOVE                             R7 R3
       45 GETIMPORT                        R4 K11 [table.insert]
       47 CALL                             R4 3 0
       48 NAMECALL                         R4 R0 K12 ["_updateSortFilter"]
       50 CALL                             R4 1 0
       51 GETUPVAL                         R4 0
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+9]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K13 ["eventEnd"]
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R5 R5 K1 ["BenchmarkingEvent"]
       60 GETTABLEKS                       R5 R5 K2 ["Sort"]
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

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
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K20 ["sendInsertEvent"]
       74 DUPTABLE                         R6 K30 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position"}]
       75 SETTABLEKS                       R2 R6 K21 ["assetIds"]
       77 SETTABLEKS                       R1 R6 K22 ["assetTypes"]
       79 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       81 GETTABLEKS                       R7 R7 K31 ["Action"]
       83 SETTABLEKS                       R7 R6 K23 ["insertType"]
       85 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       87 GETTABLEKS                       R7 R7 K16 ["Source"]
       89 SETTABLEKS                       R7 R6 K24 ["insertSource"]
       91 GETTABLEKS                       R7 R0 K32 ["_searchController"]
       93 NAMECALL                         R7 R7 K33 ["getSearchTerm"]
       95 CALL                             R7 1 1
       96 SETTABLEKS                       R7 R6 K25 ["searchKeywords"]
       98 GETTABLEKS                       R7 R0 K32 ["_searchController"]
      100 NAMECALL                         R7 R7 K34 ["getSearchId"]
      102 CALL                             R7 1 1
      103 SETTABLEKS                       R7 R6 K26 ["searchId"]
      105 GETUPVAL                         R7 2
      106 GETTABLEKS                       R7 R7 K35 ["keys"]
      108 GETTABLEKS                       R8 R0 K36 ["_filters"]
      110 CALL                             R7 1 1
      111 SETTABLEKS                       R7 R6 K27 ["filterTypes"]
      113 SETTABLEKS                       R4 R6 K28 ["sortType"]
      115 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
      117 GETTABLEKS                       R7 R7 K37 ["Position"]
      119 SETTABLEKS                       R7 R6 K29 ["position"]
      121 DUPTABLE                         R7 K42 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
      122 GETTABLEKS                       R8 R0 K43 ["_explorerController"]
      124 SETTABLEKS                       R8 R7 K38 ["ExplorerController"]
      126 GETTABLEKS                       R8 R0 K44 ["_layoutController"]
      128 SETTABLEKS                       R8 R7 K39 ["LayoutController"]
      130 SETTABLEKS                       R0 R7 K40 ["ItemsController"]
      132 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      134 SETTABLEKS                       R8 R7 K41 ["SearchController"]
      136 CALL                             R5 2 0
      137 GETUPVAL                         R5 3
      138 CALL                             R5 0 1
      139 JUMPIF                           R5 ; [+91]
      140 NAMECALL                         R5 R0 K45 ["getScopeAnalyticsContext"]
      142 CALL                             R5 1 1
      143 GETUPVAL                         R6 4
      144 GETTABLEKS                       R7 R0 K44 ["_layoutController"]
      146 NAMECALL                         R7 R7 K46 ["getBrowserLayout"]
      148 CALL                             R7 1 1
      149 GETTABLEKS                       R7 R7 K47 ["ViewType"]
      151 CALL                             R6 1 1
      152 DUPTABLE                         R7 K53 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
      153 SETTABLEKS                       R2 R7 K21 ["assetIds"]
      155 SETTABLEKS                       R1 R7 K22 ["assetTypes"]
      157 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      159 GETTABLEKS                       R8 R8 K31 ["Action"]
      161 SETTABLEKS                       R8 R7 K23 ["insertType"]
      163 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      165 GETTABLEKS                       R8 R8 K16 ["Source"]
      167 SETTABLEKS                       R8 R7 K24 ["insertSource"]
      169 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      171 NAMECALL                         R8 R8 K33 ["getSearchTerm"]
      173 CALL                             R8 1 1
      174 SETTABLEKS                       R8 R7 K25 ["searchKeywords"]
      176 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      178 NAMECALL                         R8 R8 K34 ["getSearchId"]
      180 CALL                             R8 1 1
      181 SETTABLEKS                       R8 R7 K26 ["searchId"]
      183 GETUPVAL                         R8 2
      184 GETTABLEKS                       R8 R8 K35 ["keys"]
      186 GETTABLEKS                       R9 R0 K36 ["_filters"]
      188 CALL                             R8 1 1
      189 SETTABLEKS                       R8 R7 K27 ["filterTypes"]
      191 SETTABLEKS                       R4 R7 K28 ["sortType"]
      193 GETTABLEKS                       R8 R0 K15 ["_analyticsState"]
      195 GETTABLEKS                       R8 R8 K37 ["Position"]
      197 SETTABLEKS                       R8 R7 K29 ["position"]
      199 GETTABLEKS                       R8 R0 K44 ["_layoutController"]
      201 NAMECALL                         R8 R8 K54 ["getIsCompact"]
      203 CALL                             R8 1 1
      204 SETTABLEKS                       R8 R7 K48 ["isCompact"]
      206 SETTABLEKS                       R6 R7 K49 ["viewMode"]
      208 MOVE                             R8 R5
      209 JUMPIFNOT                        R8 ; [+2]
      210 GETTABLEKS                       R8 R5 K50 ["currentRootId"]
      212 SETTABLEKS                       R8 R7 K50 ["currentRootId"]
      214 MOVE                             R8 R5
      215 JUMPIFNOT                        R8 ; [+2]
      216 GETTABLEKS                       R8 R5 K51 ["currentRootType"]
      218 SETTABLEKS                       R8 R7 K51 ["currentRootType"]
      220 MOVE                             R8 R5
      221 JUMPIFNOT                        R8 ; [+2]
      222 GETTABLEKS                       R8 R5 K52 ["currentFolderId"]
      224 SETTABLEKS                       R8 R7 K52 ["currentFolderId"]
      226 GETUPVAL                         R8 5
      227 GETTABLEKS                       R8 R8 K20 ["sendInsertEvent"]
      229 MOVE                             R9 R7
      230 CALL                             R8 1 0
      231 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K8 ["Analytics"]
       43 GETTABLEKS                       R6 R6 K11 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K8 ["Analytics"]
       52 GETTABLEKS                       R7 R7 K12 ["Benchmarking"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K13 ["Util"]
       61 GETTABLEKS                       R8 R8 K14 ["Notifications"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K15 ["Packages"]
       68 GETTABLEKS                       R9 R9 K16 ["Promise"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K15 ["Packages"]
       75 GETTABLEKS                       R10 R10 K17 ["Framework"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R9 K18 ["ContextServices"]
       80 GETTABLEKS                       R11 R10 K19 ["ContextItem"]
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K15 ["Packages"]
       86 GETTABLEKS                       R13 R13 K20 ["Dash"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R12 K21 ["copy"]
       91 GETTABLEKS                       R14 R12 K22 ["join"]
       93 GETTABLEKS                       R15 R12 K23 ["keys"]
       95 GETTABLEKS                       R16 R9 K13 ["Util"]
       97 GETTABLEKS                       R17 R16 K24 ["Signal"]
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K6 ["Src"]
      103 GETTABLEKS                       R19 R19 K25 ["Controllers"]
      105 GETTABLEKS                       R19 R19 K26 ["AudioPreviewManager"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K6 ["Src"]
      112 GETTABLEKS                       R20 R20 K25 ["Controllers"]
      114 GETTABLEKS                       R20 R20 K27 ["ItemsCache"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R21 R0 K6 ["Src"]
      121 GETTABLEKS                       R21 R21 K13 ["Util"]
      123 GETTABLEKS                       R21 R21 K28 ["cleanConnections"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R0 K6 ["Src"]
      130 GETTABLEKS                       R22 R22 K13 ["Util"]
      132 GETTABLEKS                       R22 R22 K29 ["constructItemPath"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K5 [require]
      137 GETTABLEKS                       R23 R0 K6 ["Src"]
      139 GETTABLEKS                       R23 R23 K13 ["Util"]
      141 GETTABLEKS                       R23 R23 K30 ["convertFolderItemToScope"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K5 [require]
      146 GETTABLEKS                       R24 R0 K6 ["Src"]
      148 GETTABLEKS                       R24 R24 K13 ["Util"]
      150 GETTABLEKS                       R24 R24 K31 ["convertToEngineAssetTypeEnum"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K5 [require]
      155 GETTABLEKS                       R25 R0 K6 ["Src"]
      157 GETTABLEKS                       R25 R25 K13 ["Util"]
      159 GETTABLEKS                       R25 R25 K32 ["createAccountUidFromPath"]
      161 CALL                             R24 1 1
      162 GETIMPORT                        R25 K5 [require]
      164 GETTABLEKS                       R26 R0 K6 ["Src"]
      166 GETTABLEKS                       R26 R26 K13 ["Util"]
      168 GETTABLEKS                       R26 R26 K33 ["createFolderUid"]
      170 CALL                             R25 1 1
      171 GETIMPORT                        R26 K5 [require]
      173 GETTABLEKS                       R27 R0 K6 ["Src"]
      175 GETTABLEKS                       R27 R27 K13 ["Util"]
      177 GETTABLEKS                       R27 R27 K34 ["createScopeUid"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K5 [require]
      182 GETTABLEKS                       R28 R0 K6 ["Src"]
      184 GETTABLEKS                       R28 R28 K13 ["Util"]
      186 GETTABLEKS                       R28 R28 K35 ["DefaultSort"]
      188 CALL                             R27 1 1
      189 GETIMPORT                        R28 K5 [require]
      191 GETTABLEKS                       R29 R0 K6 ["Src"]
      193 GETTABLEKS                       R29 R29 K13 ["Util"]
      195 GETTABLEKS                       R29 R29 K36 ["getAssetInfosSlice"]
      197 CALL                             R28 1 1
      198 GETIMPORT                        R29 K5 [require]
      200 GETTABLEKS                       R30 R0 K6 ["Src"]
      202 GETTABLEKS                       R30 R30 K13 ["Util"]
      204 GETTABLEKS                       R30 R30 K37 ["getFolderErrorLocalizationKeys"]
      206 CALL                             R29 1 1
      207 GETIMPORT                        R30 K5 [require]
      209 GETTABLEKS                       R31 R0 K6 ["Src"]
      211 GETTABLEKS                       R31 R31 K13 ["Util"]
      213 GETTABLEKS                       R31 R31 K38 ["getItemMoveBatches"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K5 [require]
      218 GETTABLEKS                       R32 R0 K6 ["Src"]
      220 GETTABLEKS                       R32 R32 K13 ["Util"]
      222 GETTABLEKS                       R32 R32 K39 ["getScopeAnalyticsContext"]
      224 CALL                             R31 1 1
      225 GETIMPORT                        R32 K5 [require]
      227 GETTABLEKS                       R33 R0 K6 ["Src"]
      229 GETTABLEKS                       R33 R33 K13 ["Util"]
      231 GETTABLEKS                       R33 R33 K40 ["getViewTypeTelemetryString"]
      233 CALL                             R32 1 1
      234 GETIMPORT                        R33 K5 [require]
      236 GETTABLEKS                       R34 R0 K6 ["Src"]
      238 GETTABLEKS                       R34 R34 K13 ["Util"]
      240 GETTABLEKS                       R34 R34 K41 ["insertItems"]
      242 CALL                             R33 1 1
      243 GETIMPORT                        R34 K5 [require]
      245 GETTABLEKS                       R35 R0 K6 ["Src"]
      247 GETTABLEKS                       R35 R35 K13 ["Util"]
      249 GETTABLEKS                       R35 R35 K42 ["isInsertable"]
      251 CALL                             R34 1 1
      252 GETIMPORT                        R35 K5 [require]
      254 GETTABLEKS                       R36 R0 K6 ["Src"]
      256 GETTABLEKS                       R36 R36 K13 ["Util"]
      258 GETTABLEKS                       R36 R36 K43 ["logIfDebug"]
      260 CALL                             R35 1 1
      261 GETIMPORT                        R36 K5 [require]
      263 GETTABLEKS                       R37 R0 K6 ["Src"]
      265 GETTABLEKS                       R37 R37 K44 ["Flags"]
      267 GETTABLEKS                       R37 R37 K45 ["getEFAssetInsertComponentEnabled"]
      269 CALL                             R36 1 1
      270 GETIMPORT                        R37 K5 [require]
      272 GETTABLEKS                       R38 R0 K6 ["Src"]
      274 GETTABLEKS                       R38 R38 K44 ["Flags"]
      276 GETTABLEKS                       R38 R38 K46 ["getEFAssetManagerInventoryRefreshFeature"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K6 ["Src"]
      283 GETTABLEKS                       R39 R39 K44 ["Flags"]
      285 GETTABLEKS                       R39 R39 K47 ["getFFlagEnableAssetInserter"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K5 [require]
      290 GETTABLEKS                       R40 R0 K6 ["Src"]
      292 GETTABLEKS                       R40 R40 K44 ["Flags"]
      294 GETTABLEKS                       R40 R40 K48 ["getFFlagAmrAddToExperience"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K5 [require]
      299 GETTABLEKS                       R41 R0 K6 ["Src"]
      301 GETTABLEKS                       R41 R41 K44 ["Flags"]
      303 GETTABLEKS                       R41 R41 K49 ["getFFlagAmrDisableShardedEvent"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K5 [require]
      308 GETTABLEKS                       R42 R0 K6 ["Src"]
      310 GETTABLEKS                       R42 R42 K44 ["Flags"]
      312 GETTABLEKS                       R42 R42 K50 ["getFFlagDebugAmrAssetManagementControllerTest"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K5 [require]
      317 GETTABLEKS                       R43 R0 K6 ["Src"]
      319 GETTABLEKS                       R43 R43 K44 ["Flags"]
      321 GETTABLEKS                       R43 R43 K51 ["getFFlagAmrEnableBenchmarking"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K5 [require]
      326 GETTABLEKS                       R44 R0 K6 ["Src"]
      328 GETTABLEKS                       R44 R44 K44 ["Flags"]
      330 GETTABLEKS                       R44 R44 K52 ["getFFlagAmrFixSearchNoResultsFlash"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K5 [require]
      335 GETTABLEKS                       R45 R0 K6 ["Src"]
      337 GETTABLEKS                       R45 R45 K44 ["Flags"]
      339 GETTABLEKS                       R45 R45 K53 ["getFFlagAmrStudioToastsIntegration"]
      341 CALL                             R44 1 1
      342 GETIMPORT                        R45 K5 [require]
      344 GETTABLEKS                       R46 R0 K6 ["Src"]
      346 GETTABLEKS                       R46 R46 K44 ["Flags"]
      348 GETTABLEKS                       R46 R46 K54 ["getFFlagAmrOptimizeRenderListUpdates"]
      350 CALL                             R45 1 1
      351 LOADK                            R48 K55 ["ItemsController"]
      352 NAMECALL                         R46 R11 K56 ["extend"]
      354 CALL                             R46 2 1
      355 DUPCLOSURE                       R47 K57 [PROTO_0]
      356 CAPTURE                          VAL R35
      357 CAPTURE                          VAL R34
      358 CAPTURE                          VAL R23
      359 DUPCLOSURE                       R48 K58 [PROTO_17]
      360 CAPTURE                          VAL R18
      361 CAPTURE                          VAL R19
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R27
      364 CAPTURE                          VAL R17
      365 CAPTURE                          VAL R46
      366 CAPTURE                          VAL R35
      367 CAPTURE                          VAL R12
      368 CAPTURE                          VAL R42
      369 CAPTURE                          VAL R6
      370 CAPTURE                          VAL R5
      371 CAPTURE                          VAL R21
      372 CAPTURE                          VAL R45
      373 CAPTURE                          VAL R39
      374 CAPTURE                          VAL R3
      375 CAPTURE                          VAL R2
      376 CAPTURE                          VAL R37
      377 CAPTURE                          VAL R41
      378 SETTABLEKS                       R48 R46 K59 ["new"]
      380 DUPCLOSURE                       R48 K60 [PROTO_18]
      381 CAPTURE                          VAL R46
      382 SETTABLEKS                       R48 R46 K61 ["mock"]
      384 DUPCLOSURE                       R48 K62 [PROTO_19]
      385 SETTABLEKS                       R48 R46 K63 ["getIsMock"]
      387 DUPCLOSURE                       R48 K64 [PROTO_20]
      388 CAPTURE                          VAL R20
      389 SETTABLEKS                       R48 R46 K65 ["destroy"]
      391 DUPCLOSURE                       R48 K66 [PROTO_21]
      392 CAPTURE                          VAL R21
      393 CAPTURE                          VAL R14
      394 CAPTURE                          VAL R44
      395 CAPTURE                          VAL R7
      396 SETTABLEKS                       R48 R46 K67 ["_handleOnAddToGame"]
      398 DUPCLOSURE                       R48 K68 [PROTO_23]
      399 CAPTURE                          VAL R42
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R5
      402 CAPTURE                          VAL R3
      403 CAPTURE                          VAL R43
      404 SETTABLEKS                       R48 R46 K69 ["_getNewItemsHandler"]
      406 DUPCLOSURE                       R48 K70 [PROTO_24]
      407 CAPTURE                          VAL R43
      408 SETTABLEKS                       R48 R46 K71 ["_refreshScopeInPlace"]
      410 DUPCLOSURE                       R48 K72 [PROTO_26]
      411 SETTABLEKS                       R48 R46 K73 ["_scheduleDebouncedRefresh"]
      413 DUPCLOSURE                       R48 K74 [PROTO_27]
      414 CAPTURE                          VAL R25
      415 CAPTURE                          VAL R24
      416 DUPCLOSURE                       R49 K75 [PROTO_28]
      417 CAPTURE                          VAL R25
      418 CAPTURE                          VAL R24
      419 SETTABLEKS                       R49 R46 K76 ["_handleCreatorInventoryRefresh"]
      421 DUPCLOSURE                       R49 K77 [PROTO_29]
      422 SETTABLEKS                       R49 R46 K78 ["_createRenderItems"]
      424 DUPCLOSURE                       R49 K79 [PROTO_30]
      425 SETTABLEKS                       R49 R46 K80 ["_updateRenderItems"]
      427 DUPCLOSURE                       R49 K81 [PROTO_31]
      428 CAPTURE                          VAL R3
      429 SETTABLEKS                       R49 R46 K82 ["clearRecent"]
      431 DUPCLOSURE                       R49 K83 [PROTO_33]
      432 CAPTURE                          VAL R3
      433 CAPTURE                          VAL R44
      434 CAPTURE                          VAL R7
      435 SETTABLEKS                       R49 R46 K84 ["_getFetchErrorCallback"]
      437 DUPCLOSURE                       R49 K85 [PROTO_34]
      438 CAPTURE                          VAL R43
      439 CAPTURE                          VAL R27
      440 SETTABLEKS                       R49 R46 K86 ["_startNewScopeFetch"]
      442 DUPCLOSURE                       R49 K87 [PROTO_35]
      443 SETTABLEKS                       R49 R46 K88 ["_clearItems"]
      445 DUPCLOSURE                       R49 K89 [PROTO_36]
      446 SETTABLEKS                       R49 R46 K90 ["getSearchFolderCount"]
      448 DUPCLOSURE                       R49 K91 [PROTO_37]
      449 SETTABLEKS                       R49 R46 K92 ["setShowAllSearchFolders"]
      451 DUPCLOSURE                       R49 K93 [PROTO_38]
      452 SETTABLEKS                       R49 R46 K94 ["getShowAllSearchFolders"]
      454 DUPCLOSURE                       R49 K95 [PROTO_39]
      455 CAPTURE                          VAL R13
      456 CAPTURE                          VAL R27
      457 SETTABLEKS                       R49 R46 K96 ["_handleOnShowSearchOptionsChanged"]
      459 DUPCLOSURE                       R49 K97 [PROTO_40]
      460 CAPTURE                          VAL R13
      461 CAPTURE                          VAL R4
      462 CAPTURE                          VAL R43
      463 CAPTURE                          VAL R26
      464 SETTABLEKS                       R49 R46 K98 ["_clearAndFetchSearchItems"]
      466 DUPCLOSURE                       R49 K99 [PROTO_41]
      467 CAPTURE                          VAL R27
      468 CAPTURE                          VAL R4
      469 CAPTURE                          VAL R42
      470 CAPTURE                          VAL R6
      471 CAPTURE                          VAL R5
      472 SETTABLEKS                       R49 R46 K100 ["refreshItems"]
      474 DUPCLOSURE                       R49 K101 [PROTO_42]
      475 SETTABLEKS                       R49 R46 K102 ["refreshAll"]
      477 DUPCLOSURE                       R49 K103 [PROTO_43]
      478 CAPTURE                          VAL R12
      479 SETTABLEKS                       R49 R46 K104 ["getDraggedItems"]
      481 DUPCLOSURE                       R49 K105 [PROTO_44]
      482 CAPTURE                          VAL R25
      483 CAPTURE                          VAL R35
      484 CAPTURE                          VAL R22
      485 SETTABLEKS                       R49 R46 K106 ["_goToFolder"]
      487 DUPCLOSURE                       R49 K107 [PROTO_45]
      488 SETTABLEKS                       R49 R46 K108 ["getLastUsedFolderName"]
      490 DUPCLOSURE                       R49 K109 [PROTO_46]
      491 CAPTURE                          VAL R4
      492 CAPTURE                          VAL R35
      493 DUPCLOSURE                       R50 K110 [PROTO_47]
      494 SETTABLEKS                       R50 R46 K111 ["_updateLastUsedFolder"]
      496 DUPCLOSURE                       R50 K112 [PROTO_48]
      497 CAPTURE                          VAL R49
      498 CAPTURE                          VAL R4
      499 SETTABLEKS                       R50 R46 K113 ["requestMoveSelectionToItem"]
      501 DUPCLOSURE                       R50 K114 [PROTO_52]
      502 CAPTURE                          VAL R3
      503 CAPTURE                          VAL R25
      504 CAPTURE                          VAL R8
      505 CAPTURE                          VAL R44
      506 CAPTURE                          VAL R7
      507 SETTABLEKS                       R50 R46 K115 ["_requestMoveFromSearch"]
      509 DUPCLOSURE                       R50 K116 [PROTO_55]
      510 CAPTURE                          VAL R4
      511 CAPTURE                          VAL R30
      512 CAPTURE                          VAL R44
      513 CAPTURE                          VAL R7
      514 CAPTURE                          VAL R25
      515 CAPTURE                          VAL R22
      516 CAPTURE                          VAL R35
      517 CAPTURE                          VAL R2
      518 CAPTURE                          VAL R40
      519 CAPTURE                          VAL R31
      520 CAPTURE                          VAL R1
      521 CAPTURE                          VAL R29
      522 SETTABLEKS                       R50 R46 K117 ["_requestMoveItems"]
      524 DUPCLOSURE                       R50 K118 [PROTO_59]
      525 CAPTURE                          VAL R35
      526 CAPTURE                          VAL R22
      527 CAPTURE                          VAL R4
      528 CAPTURE                          VAL R12
      529 CAPTURE                          VAL R2
      530 CAPTURE                          VAL R40
      531 CAPTURE                          VAL R31
      532 CAPTURE                          VAL R1
      533 CAPTURE                          VAL R29
      534 CAPTURE                          VAL R44
      535 CAPTURE                          VAL R7
      536 SETTABLEKS                       R50 R46 K119 ["_requestCreateFolder"]
      538 DUPCLOSURE                       R50 K120 [PROTO_62]
      539 CAPTURE                          VAL R4
      540 CAPTURE                          VAL R2
      541 CAPTURE                          VAL R40
      542 CAPTURE                          VAL R31
      543 CAPTURE                          VAL R1
      544 CAPTURE                          VAL R44
      545 CAPTURE                          VAL R7
      546 SETTABLEKS                       R50 R46 K121 ["_requestRenameFolder"]
      548 DUPCLOSURE                       R50 K122 [PROTO_63]
      549 SETTABLEKS                       R50 R46 K123 ["uploadStagedFolder"]
      551 DUPCLOSURE                       R50 K124 [PROTO_64]
      552 CAPTURE                          VAL R22
      553 SETTABLEKS                       R50 R46 K125 ["uploadStagedFolderPath"]
      555 DUPCLOSURE                       R50 K126 [PROTO_67]
      556 CAPTURE                          VAL R45
      557 CAPTURE                          VAL R25
      558 CAPTURE                          VAL R2
      559 CAPTURE                          VAL R40
      560 CAPTURE                          VAL R31
      561 CAPTURE                          VAL R1
      562 CAPTURE                          VAL R3
      563 CAPTURE                          VAL R44
      564 CAPTURE                          VAL R7
      565 SETTABLEKS                       R50 R46 K127 ["requestDeleteFolder"]
      567 DUPCLOSURE                       R50 K128 [PROTO_68]
      568 CAPTURE                          VAL R47
      569 SETTABLEKS                       R50 R46 K129 ["_createInsertJobData"]
      571 DUPCLOSURE                       R50 K130 [PROTO_69]
      572 CAPTURE                          VAL R4
      573 CAPTURE                          VAL R12
      574 CAPTURE                          VAL R36
      575 CAPTURE                          VAL R38
      576 CAPTURE                          VAL R44
      577 CAPTURE                          VAL R7
      578 CAPTURE                          VAL R33
      579 SETTABLEKS                       R50 R46 K131 ["handleDoubleClick"]
      581 DUPCLOSURE                       R50 K132 [PROTO_70]
      582 SETTABLEKS                       R50 R46 K133 ["setLastItemClicked"]
      584 DUPCLOSURE                       R50 K134 [PROTO_71]
      585 CAPTURE                          VAL R28
      586 SETTABLEKS                       R50 R46 K135 ["changeSelection"]
      588 DUPCLOSURE                       R50 K136 [PROTO_72]
      589 SETTABLEKS                       R50 R46 K137 ["moveSelection"]
      591 DUPCLOSURE                       R50 K138 [PROTO_73]
      592 SETTABLEKS                       R50 R46 K139 ["syncSelectionIndices"]
      594 DUPCLOSURE                       R50 K140 [PROTO_74]
      595 CAPTURE                          VAL R12
      596 SETTABLEKS                       R50 R46 K141 ["getSingleItemSelected"]
      598 DUPCLOSURE                       R50 K142 [PROTO_75]
      599 SETTABLEKS                       R50 R46 K143 ["getItemInfo"]
      601 DUPCLOSURE                       R50 K144 [PROTO_76]
      602 CAPTURE                          VAL R12
      603 CAPTURE                          VAL R4
      604 SETTABLEKS                       R50 R46 K145 ["getSelectionIdsHelper"]
      606 DUPCLOSURE                       R50 K146 [PROTO_77]
      607 SETTABLEKS                       R50 R46 K147 ["getAudioPreviewManager"]
      609 DUPCLOSURE                       R50 K148 [PROTO_78]
      610 SETTABLEKS                       R50 R46 K149 ["getItemsCache"]
      612 DUPCLOSURE                       R50 K150 [PROTO_79]
      613 SETTABLEKS                       R50 R46 K151 ["getRenderItems"]
      615 DUPCLOSURE                       R50 K152 [PROTO_80]
      616 CAPTURE                          VAL R4
      617 CAPTURE                          VAL R43
      618 SETTABLEKS                       R50 R46 K153 ["requestNextPage"]
      620 DUPCLOSURE                       R50 K154 [PROTO_81]
      621 CAPTURE                          VAL R4
      622 CAPTURE                          VAL R34
      623 SETTABLEKS                       R50 R46 K155 ["selectionHasInsertableAssets"]
      625 DUPCLOSURE                       R50 K156 [PROTO_82]
      626 CAPTURE                          VAL R47
      627 SETTABLEKS                       R50 R46 K157 ["getInsertDataForDrag"]
      629 DUPCLOSURE                       R50 K158 [PROTO_83]
      630 CAPTURE                          VAL R47
      631 SETTABLEKS                       R50 R46 K159 ["getInsertData"]
      633 DUPCLOSURE                       R50 K160 [PROTO_84]
      634 CAPTURE                          VAL R4
      635 SETTABLEKS                       R50 R46 K161 ["getAssetTypes"]
      637 DUPCLOSURE                       R50 K162 [PROTO_85]
      638 CAPTURE                          VAL R15
      639 SETTABLEKS                       R50 R46 K163 ["getCreators"]
      641 DUPCLOSURE                       R50 K164 [PROTO_86]
      642 CAPTURE                          VAL R13
      643 SETTABLEKS                       R50 R46 K165 ["_updateSortFilter"]
      645 DUPCLOSURE                       R50 K166 [PROTO_87]
      646 SETTABLEKS                       R50 R46 K167 ["getFilters"]
      648 DUPCLOSURE                       R50 K168 [PROTO_88]
      649 CAPTURE                          VAL R14
      650 SETTABLEKS                       R50 R46 K169 ["_addFilter"]
      652 DUPCLOSURE                       R50 K170 [PROTO_89]
      653 SETTABLEKS                       R50 R46 K171 ["_removeFilter"]
      655 DUPCLOSURE                       R50 K172 [PROTO_90]
      656 CAPTURE                          VAL R4
      657 SETTABLEKS                       R50 R46 K173 ["_clearAssetTypeFilter"]
      659 DUPCLOSURE                       R50 K174 [PROTO_91]
      660 SETTABLEKS                       R50 R46 K175 ["hasFilter"]
      662 DUPCLOSURE                       R50 K176 [PROTO_92]
      663 CAPTURE                          VAL R42
      664 CAPTURE                          VAL R6
      665 CAPTURE                          VAL R5
      666 SETTABLEKS                       R50 R46 K177 ["toggleFilter"]
      668 DUPCLOSURE                       R50 K178 [PROTO_93]
      669 CAPTURE                          VAL R42
      670 CAPTURE                          VAL R6
      671 CAPTURE                          VAL R5
      672 CAPTURE                          VAL R4
      673 SETTABLEKS                       R50 R46 K179 ["togglePackagesFilter"]
      675 DUPCLOSURE                       R50 K180 [PROTO_94]
      676 CAPTURE                          VAL R42
      677 CAPTURE                          VAL R6
      678 CAPTURE                          VAL R5
      679 CAPTURE                          VAL R4
      680 SETTABLEKS                       R50 R46 K181 ["toggleArchivedFilter"]
      682 DUPCLOSURE                       R50 K182 [PROTO_95]
      683 CAPTURE                          VAL R4
      684 SETTABLEKS                       R50 R46 K183 ["clearFilters"]
      686 DUPCLOSURE                       R50 K184 [PROTO_96]
      687 SETTABLEKS                       R50 R46 K185 ["getSorts"]
      689 DUPCLOSURE                       R50 K186 [PROTO_97]
      690 SETTABLEKS                       R50 R46 K187 ["setSorts"]
      692 DUPCLOSURE                       R50 K188 [PROTO_98]
      693 CAPTURE                          VAL R42
      694 CAPTURE                          VAL R6
      695 CAPTURE                          VAL R5
      696 SETTABLEKS                       R50 R46 K189 ["addSort"]
      698 DUPCLOSURE                       R50 K190 [PROTO_99]
      699 SETTABLEKS                       R50 R46 K191 ["getSelection"]
      701 DUPCLOSURE                       R50 K192 [PROTO_100]
      702 SETTABLEKS                       R50 R46 K193 ["setSelection"]
      704 DUPCLOSURE                       R50 K194 [PROTO_101]
      705 CAPTURE                          VAL R13
      706 SETTABLEKS                       R50 R46 K195 ["modifySelection"]
      708 DUPCLOSURE                       R50 K196 [PROTO_102]
      709 SETTABLEKS                       R50 R46 K197 ["handleRightClick"]
      711 DUPCLOSURE                       R50 K198 [PROTO_103]
      712 SETTABLEKS                       R50 R46 K199 ["getStagedEditItemPath"]
      714 DUPCLOSURE                       R50 K200 [PROTO_104]
      715 SETTABLEKS                       R50 R46 K201 ["setStagedEditItemPath"]
      717 DUPCLOSURE                       R50 K202 [PROTO_105]
      718 SETTABLEKS                       R50 R46 K203 ["removeStagedItem"]
      720 DUPCLOSURE                       R50 K204 [PROTO_106]
      721 CAPTURE                          VAL R4
      722 CAPTURE                          VAL R35
      723 SETTABLEKS                       R50 R46 K205 ["renamePlace"]
      725 DUPCLOSURE                       R50 K206 [PROTO_107]
      726 CAPTURE                          VAL R4
      727 SETTABLEKS                       R50 R46 K207 ["stageNewFolder"]
      729 DUPCLOSURE                       R50 K208 [PROTO_108]
      730 CAPTURE                          VAL R31
      731 SETTABLEKS                       R50 R46 K39 ["getScopeAnalyticsContext"]
      733 DUPCLOSURE                       R50 K209 [PROTO_109]
      734 SETTABLEKS                       R50 R46 K210 ["setAnalyticsInsertAction"]
      736 DUPCLOSURE                       R50 K211 [PROTO_110]
      737 CAPTURE                          VAL R35
      738 CAPTURE                          VAL R2
      739 CAPTURE                          VAL R12
      740 CAPTURE                          VAL R40
      741 CAPTURE                          VAL R32
      742 CAPTURE                          VAL R1
      743 SETTABLEKS                       R50 R46 K212 ["sendInsertToAnalytics"]
      745 DUPCLOSURE                       R50 K213 [PROTO_111]
      746 SETTABLEKS                       R50 R46 K214 ["getCurrentShownScope"]
      748 DUPCLOSURE                       R50 K215 [PROTO_112]
      749 SETTABLEKS                       R50 R46 K216 ["getPlugin"]
      751 RETURN                           R46 1
