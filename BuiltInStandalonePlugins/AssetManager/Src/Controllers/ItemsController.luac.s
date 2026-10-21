PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["fetchToolboxTechnicalDetailsAsync"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 MOVE                             R8 R0
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 GETTABLEKS                       R15 R1 K0 ["Uid"]
       16 MOVE                             R16 R11
       17 NAMECALL                         R13 R2 K1 ["getItem"]
       19 CALL                             R13 3 1
       20 JUMPIF                           R13 ; [+8]
       21 GETUPVAL                         R14 0
       22 LOADK                            R15 K2 ["AssetInfo not found in cache for path: %*"]
       23 MOVE                             R17 R11
       24 NAMECALL                         R15 R15 K3 ["format"]
       26 CALL                             R15 2 1
       27 CALL                             R14 1 0
       28 JUMP                             ; [+50]
       29 GETUPVAL                         R14 1
       30 GETTABLEKS                       R15 R13 K4 ["AssetType"]
       32 CALL                             R14 1 1
       33 JUMPIFNOT                        R14 ; [+45]
       34 GETTABLEKS                       R16 R13 K5 ["AssetId"]
       36 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       38 MOVE                             R15 R3
       39 GETIMPORT                        R14 K8 [table.insert]
       41 CALL                             R14 2 0
       42 MOVE                             R15 R4
       43 GETUPVAL                         R16 2
       44 GETTABLEKS                       R17 R13 K4 ["AssetType"]
       46 CALL                             R16 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R14 K8 [table.insert]
       50 CALL                             R14 -1 0
       51 GETTABLEKS                       R16 R13 K9 ["DisplayName"]
       53 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
       55 MOVE                             R15 R5
       56 GETIMPORT                        R14 K8 [table.insert]
       58 CALL                             R14 2 0
       59 GETTABLEKS                       R17 R13 K11 ["IsPackage"]
       61 ORK                              R16 R17 K10 [False]
       62 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       64 MOVE                             R15 R6
       65 GETIMPORT                        R14 K8 [table.insert]
       67 CALL                             R14 2 0
       68 GETUPVAL                         R14 3
       69 CALL                             R14 0 1
       70 JUMPIFNOT                        R14 ; [+8]
       71 GETTABLEKS                       R16 R13 K12 ["Creator"]
       73 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       75 MOVE                             R15 R7
       76 GETIMPORT                        R14 K8 [table.insert]
       78 CALL                             R14 2 0
       79 FORGLOOP                         R8 2 ; [-66]
       81 DUPTABLE                         R8 K17 [{"Ids", "Types", "Names", "IsPackage", "Creators"}]
       82 SETTABLEKS                       R3 R8 K13 ["Ids"]
       84 SETTABLEKS                       R4 R8 K14 ["Types"]
       86 SETTABLEKS                       R5 R8 K15 ["Names"]
       88 SETTABLEKS                       R6 R8 K11 ["IsPackage"]
       90 GETUPVAL                         R10 3
       91 CALL                             R10 0 1
       92 JUMPIFNOT                        R10 ; [+2]
       93 MOVE                             R9 R7
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K16 ["Creators"]
       98 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["PlaceManager"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_audioPreviewManager"]
        3 NAMECALL                         R0 R0 K1 ["stop"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_invalidateAssetSharing"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Error fetching assets: %*. Status code: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 3 1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+19]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["_pendingRevealPath"]
       12 JUMPIFNOT                        R2 ; [+15]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["_pendingRevealScopeUid"]
       16 GETTABLEKS                       R3 R1 K4 ["Uid"]
       18 JUMPIFEQ                         R2 R3 ; [+9]
       20 GETUPVAL                         R2 0
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K2 ["_pendingRevealPath"]
       24 GETUPVAL                         R2 0
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K3 ["_pendingRevealScopeUid"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K5 ["_itemsCache"]
       31 GETTABLEKS                       R4 R1 K4 ["Uid"]
       33 NAMECALL                         R2 R2 K6 ["hasScope"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+40]
       37 GETUPVAL                         R2 0
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K7 ["_selection"]
       42 GETUPVAL                         R2 0
       43 LOADN                            R4 1
       44 NAMECALL                         R2 R2 K8 ["syncSelectionIndices"]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K9 ["OnItemSelectionChanged"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K7 ["_selection"]
       53 NAMECALL                         R2 R2 K10 ["Fire"]
       55 CALL                             R2 2 0
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K5 ["_itemsCache"]
       59 GETTABLEKS                       R4 R1 K4 ["Uid"]
       61 NAMECALL                         R2 R2 K11 ["getScope"]
       63 CALL                             R2 2 1
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K12 ["OnScopeFetchProgressChanged"]
       67 GETTABLEKS                       R5 R2 K13 ["FetchProgress"]
       69 GETTABLEKS                       R6 R2 K14 ["Loading"]
       71 GETTABLEKS                       R7 R1 K4 ["Uid"]
       73 NAMECALL                         R3 R3 K10 ["Fire"]
       75 CALL                             R3 4 0
       76 JUMP                             ; [+18]
       77 GETUPVAL                         R2 2
       78 GETTABLEKS                       R2 R2 K15 ["eventStart"]
       80 GETUPVAL                         R3 3
       81 GETTABLEKS                       R3 R3 K16 ["BenchmarkingEvent"]
       83 GETTABLEKS                       R3 R3 K17 ["LoadNewScope"]
       85 DUPTABLE                         R4 K20 [{["isBackgroundFetch"] = False}]
       86 GETTABLEKS                       R5 R1 K4 ["Uid"]
       88 CALL                             R2 3 0
       89 GETUPVAL                         R2 0
       90 MOVE                             R4 R1
       91 LOADB                            R5 1
       92 NAMECALL                         R2 R2 K21 ["_startNewScopeFetch"]
       94 CALL                             R2 3 0
       95 GETUPVAL                         R2 0
       96 NAMECALL                         R2 R2 K22 ["_createRenderItems"]
       98 CALL                             R2 1 0
       99 GETTABLEKS                       R2 R1 K23 ["Parent"]
      101 JUMPIFNOT                        R2 ; [+24]
      102 GETUPVAL                         R2 0
      103 GETTABLEKS                       R2 R2 K5 ["_itemsCache"]
      105 GETTABLEKS                       R4 R1 K23 ["Parent"]
      107 NAMECALL                         R2 R2 K6 ["hasScope"]
      109 CALL                             R2 2 1
      110 JUMPIF                           R2 ; [+15]
      111 GETUPVAL                         R2 0
      112 GETTABLEKS                       R2 R2 K24 ["_explorerController"]
      114 GETTABLEKS                       R4 R1 K23 ["Parent"]
      116 NAMECALL                         R2 R2 K25 ["getScopeWithUid"]
      118 CALL                             R2 2 1
      119 JUMPIFNOT                        R2 ; [+6]
      120 GETUPVAL                         R3 0
      121 MOVE                             R5 R2
      122 LOADB                            R6 0
      123 NAMECALL                         R3 R3 K21 ["_startNewScopeFetch"]
      125 CALL                             R3 3 0
      126 GETTABLEKS                       R2 R1 K26 ["Type"]
      128 GETUPVAL                         R3 4
      129 GETTABLEKS                       R3 R3 K27 ["ScopeType"]
      131 GETTABLEKS                       R3 R3 K28 ["ProjectPlaces"]
      133 JUMPIFNOTEQ                      R2 R3 ; [+5]
      135 GETUPVAL                         R2 0
      136 NAMECALL                         R2 R2 K29 ["_clearAssetTypeFilter"]
      138 CALL                             R2 1 0
      139 GETUPVAL                         R2 0
      140 GETTABLEKS                       R2 R2 K30 ["_lastUsedFolderRootUid"]
      142 JUMPIFEQKNIL                     R2 ; [+25]
      144 GETUPVAL                         R2 0
      145 GETTABLEKS                       R2 R2 K24 ["_explorerController"]
      147 MOVE                             R4 R1
      148 NAMECALL                         R2 R2 K31 ["getScopeRoot"]
      150 CALL                             R2 2 1
      151 JUMPIFEQKNIL                     R2 ; [+8]
      153 GETTABLEKS                       R3 R2 K4 ["Uid"]
      155 GETUPVAL                         R4 0
      156 GETTABLEKS                       R4 R4 K30 ["_lastUsedFolderRootUid"]
      158 JUMPIFEQ                         R3 R4 ; [+9]
      160 GETUPVAL                         R3 0
      161 LOADNIL                          R4
      162 SETTABLEKS                       R4 R3 K32 ["_lastUsedFolderName"]
      164 GETUPVAL                         R3 0
      165 LOADNIL                          R4
      166 SETTABLEKS                       R4 R3 K30 ["_lastUsedFolderRootUid"]
      168 GETUPVAL                         R2 0
      169 GETTABLEKS                       R2 R2 K33 ["_audioPreviewManager"]
      171 NAMECALL                         R2 R2 K34 ["stop"]
      173 CALL                             R2 1 0
      174 GETUPVAL                         R2 0
      175 GETTABLEKS                       R2 R2 K35 ["_analyticsState"]
      177 LOADK                            R3 K36 ["browse"]
      178 SETTABLEKS                       R3 R2 K37 ["Source"]
      180 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
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
       21 JUMPIFNOT                        R3 ; [+34]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K5 ["getCurrentShownScope"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K3 ["Uid"]
       28 GETTABLEKS                       R4 R1 K3 ["Uid"]
       30 JUMPIFNOTEQ                      R3 R4 ; [+29]
       32 GETUPVAL                         R3 0
       33 NAMECALL                         R3 R3 K6 ["_getIsSearchActive"]
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+5]
       37 GETUPVAL                         R4 0
       38 NAMECALL                         R4 R4 K7 ["_createRenderItems"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R4 0
       43 NEWTABLE                         R6 0 0
       45 NEWTABLE                         R7 0 1
       47 MOVE                             R8 R2
       48 SETLIST                          R7 R8 1 [1]
       50 GETTABLEKS                       R8 R1 K3 ["Uid"]
       52 NAMECALL                         R4 R4 K8 ["_updateRenderItems"]
       54 CALL                             R4 4 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R3 0
       57 NAMECALL                         R3 R3 K7 ["_createRenderItems"]
       59 CALL                             R3 1 0
       60 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_explorerController"]
        3 NAMECALL                         R1 R1 K1 ["getProjectPlacesScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R5 R1 K3 ["Uid"]
       14 MOVE                             R6 R2
       15 GETTABLEKS                       R7 R0 K4 ["Name"]
       17 NAMECALL                         R3 R3 K5 ["renameItemAndUpdateRender"]
       19 CALL                             R3 4 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["_handleOnAddToGame"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_11:
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
       56 NAMECALL                         R3 R3 K11 ["_getIsSearchActive"]
       58 CALL                             R3 1 1
       59 JUMPIFNOT                        R3 ; [+1]
       60 RETURN                           R0 0
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K12 ["_pluginController"]
       64 NAMECALL                         R4 R4 K13 ["getCurrentScope"]
       66 CALL                             R4 1 1
       67 GETTABLEKS                       R4 R4 K0 ["Uid"]
       69 JUMPIFEQ                         R2 R4 ; [+2]
       71 LOADB                            R3 0 +1
       72 LOADB                            R3 1
       73 JUMPIF                           R3 ; [+1]
       74 RETURN                           R0 0
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       78 MOVE                             R6 R2
       79 NAMECALL                         R4 R4 K14 ["hasScope"]
       81 CALL                             R4 2 1
       82 JUMPIFNOT                        R4 ; [+39]
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K2 ["_itemsCache"]
       86 MOVE                             R6 R0
       87 MOVE                             R7 R2
       88 NAMECALL                         R4 R4 K15 ["addItem"]
       90 CALL                             R4 3 0
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K12 ["_pluginController"]
       94 NAMECALL                         R4 R4 K13 ["getCurrentScope"]
       96 CALL                             R4 1 1
       97 GETTABLEKS                       R4 R4 K0 ["Uid"]
       99 JUMPIFNOTEQ                      R4 R2 ; [+22]
      101 GETUPVAL                         R4 2
      102 CALL                             R4 0 1
      103 JUMPIFNOT                        R4 ; [+14]
      104 GETUPVAL                         R4 0
      105 NEWTABLE                         R6 0 1
      107 GETTABLEKS                       R7 R0 K8 ["Path"]
      109 SETLIST                          R6 R7 1 [1]
      111 NEWTABLE                         R7 0 0
      113 MOVE                             R8 R2
      114 NAMECALL                         R4 R4 K16 ["_updateRenderItems"]
      116 CALL                             R4 4 0
      117 RETURN                           R0 0
      118 GETUPVAL                         R4 0
      119 NAMECALL                         R4 R4 K6 ["_createRenderItems"]
      121 CALL                             R4 1 0
      122 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_analyticsState"]
        3 LOADK                            R1 K1 ["search"]
        4 SETTABLEKS                       R1 R0 K2 ["Source"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K3 ["_searchController"]
        9 NAMECALL                         R0 R0 K4 ["getSearchOptions"]
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["sendSearchEvent"]
       15 DUPTABLE                         R2 K9 [{"searchAssetType", "searchKeywords", "searchId"}]
       16 GETTABLEKS                       R3 R0 K10 ["AssetType"]
       18 SETTABLEKS                       R3 R2 K6 ["searchAssetType"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K3 ["_searchController"]
       23 NAMECALL                         R3 R3 K11 ["getActiveSearchTerm"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K7 ["searchKeywords"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K3 ["_searchController"]
       31 NAMECALL                         R3 R3 K12 ["getSearchId"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K8 ["searchId"]
       36 DUPTABLE                         R3 K17 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K18 ["_explorerController"]
       40 SETTABLEKS                       R4 R3 K13 ["ExplorerController"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K19 ["_layoutController"]
       45 SETTABLEKS                       R4 R3 K14 ["LayoutController"]
       47 GETUPVAL                         R4 0
       48 SETTABLEKS                       R4 R3 K15 ["ItemsController"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K3 ["_searchController"]
       53 SETTABLEKS                       R4 R3 K16 ["SearchController"]
       55 CALL                             R1 2 0
       56 GETUPVAL                         R1 0
       57 NAMECALL                         R1 R1 K20 ["_clearAndFetchSearchItems"]
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnIsSearchInitiatedChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnIsSearchRequestedChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_isOmnisearchEnabled"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["_clearItems"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_getIsSearchActive"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_renderItems"]
        8 LENGTH                           R0 R1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K2 ["_createRenderItems"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_getIsSearchActive"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_renderItems"]
        8 LENGTH                           R0 R1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K2 ["_createRenderItems"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["AssetManagementController"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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
       27 GETTABLEKS                       R3 R0 K12 ["IxpController"]
       29 SETTABLEKS                       R3 R2 K13 ["_ixpController"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K14 ["_columnWidths"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K15 ["new"]
       38 GETTABLEKS                       R4 R0 K2 ["PluginController"]
       40 NAMECALL                         R4 R4 K16 ["getPlugin"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R1
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K17 ["_audioPreviewManager"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K15 ["new"]
       50 LOADN                            R4 10
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K18 ["_itemsCache"]
       54 NEWTABLE                         R3 0 0
       56 SETTABLEKS                       R3 R2 K19 ["_renderItems"]
       58 NEWTABLE                         R3 0 0
       60 SETTABLEKS                       R3 R2 K20 ["_creators"]
       62 NEWTABLE                         R3 1 0
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K21 ["AssetInfoField"]
       67 GETTABLEKS                       R4 R4 K22 ["Archived"]
       69 LOADB                            R5 0
       70 SETTABLE                         R5 R3 R4
       71 SETTABLEKS                       R3 R2 K23 ["_filters"]
       73 GETUPVAL                         R3 3
       74 GETTABLEKS                       R3 R3 K24 ["get"]
       76 CALL                             R3 0 1
       77 SETTABLEKS                       R3 R2 K25 ["_sorts"]
       79 NEWTABLE                         R3 0 0
       81 SETTABLEKS                       R3 R2 K26 ["_selection"]
       83 LOADNIL                          R3
       84 SETTABLEKS                       R3 R2 K27 ["_stagedEditItemPath"]
       86 LOADB                            R3 0
       87 SETTABLEKS                       R3 R2 K28 ["_moveSelectionToNewFolder"]
       89 LOADN                            R3 1
       90 SETTABLEKS                       R3 R2 K29 ["_selectStartIndex"]
       92 LOADN                            R3 1
       93 SETTABLEKS                       R3 R2 K30 ["_selectEndIndex"]
       95 DUPTABLE                         R3 K34 [{["modsPressed"], ["targetAssetId"] = -1}]
       96 DUPTABLE                         R4 K38 [{["Shift"] = False, ["Ctrl"] = False}]
       97 SETTABLEKS                       R4 R3 K31 ["modsPressed"]
       99 SETTABLEKS                       R3 R2 K39 ["_clickState"]
      101 LOADB                            R3 0
      102 SETTABLEKS                       R3 R2 K40 ["_isDragging"]
      104 LOADK                            R3 K41 [""]
      105 SETTABLEKS                       R3 R2 K42 ["_lastItemPathClicked"]
      107 LOADNIL                          R3
      108 SETTABLEKS                       R3 R2 K43 ["_lastUsedFolderName"]
      110 LOADNIL                          R3
      111 SETTABLEKS                       R3 R2 K44 ["_lastUsedFolderRootUid"]
      113 LOADNIL                          R3
      114 SETTABLEKS                       R3 R2 K45 ["_pendingRevealPath"]
      116 LOADNIL                          R3
      117 SETTABLEKS                       R3 R2 K46 ["_pendingRevealScopeUid"]
      119 LOADB                            R3 0
      120 SETTABLEKS                       R3 R2 K47 ["_showAllSearchFolders"]
      122 LOADN                            R3 0
      123 SETTABLEKS                       R3 R2 K48 ["_searchFolderCount"]
      125 LOADNIL                          R3
      126 SETTABLEKS                       R3 R2 K49 ["_savedSorts"]
      128 LOADNIL                          R3
      129 SETTABLEKS                       R3 R2 K50 ["_savedFilters"]
      131 DUPTABLE                         R3 K57 [{["Action"] = "double_click", ["Source"] = "browse", ["Position"] = 0}]
      132 SETTABLEKS                       R3 R2 K58 ["_analyticsState"]
      134 NEWTABLE                         R3 0 0
      136 SETTABLEKS                       R3 R2 K59 ["_connections"]
      138 NEWTABLE                         R3 0 0
      140 SETTABLEKS                       R3 R2 K60 ["_refreshDebounceTimers"]
      142 NEWTABLE                         R3 0 0
      144 SETTABLEKS                       R3 R2 K61 ["_assetTechnicalDetails"]
      146 NEWTABLE                         R3 0 0
      148 SETTABLEKS                       R3 R2 K62 ["_assetSharing"]
      150 LOADN                            R3 0
      151 SETTABLEKS                       R3 R2 K63 ["_assetSharingEpoch"]
      153 GETUPVAL                         R3 4
      154 GETTABLEKS                       R3 R3 K15 ["new"]
      156 CALL                             R3 0 1
      157 SETTABLEKS                       R3 R2 K64 ["OnVisiblePropertiesChanged"]
      159 GETUPVAL                         R3 4
      160 GETTABLEKS                       R3 R3 K15 ["new"]
      162 CALL                             R3 0 1
      163 SETTABLEKS                       R3 R2 K65 ["OnItemsChanged"]
      165 GETUPVAL                         R3 4
      166 GETTABLEKS                       R3 R3 K15 ["new"]
      168 CALL                             R3 0 1
      169 SETTABLEKS                       R3 R2 K66 ["OnItemSelectionChanged"]
      171 GETUPVAL                         R3 4
      172 GETTABLEKS                       R3 R3 K15 ["new"]
      174 CALL                             R3 0 1
      175 SETTABLEKS                       R3 R2 K67 ["OnSortFilterChanged"]
      177 GETUPVAL                         R3 4
      178 GETTABLEKS                       R3 R3 K15 ["new"]
      180 CALL                             R3 0 1
      181 SETTABLEKS                       R3 R2 K68 ["OnCreatorsChanged"]
      183 GETUPVAL                         R3 4
      184 GETTABLEKS                       R3 R3 K15 ["new"]
      186 CALL                             R3 0 1
      187 SETTABLEKS                       R3 R2 K69 ["OnScopeFetchProgressChanged"]
      189 GETUPVAL                         R3 4
      190 GETTABLEKS                       R3 R3 K15 ["new"]
      192 CALL                             R3 0 1
      193 SETTABLEKS                       R3 R2 K70 ["OnSearchFolderCountChanged"]
      195 GETUPVAL                         R3 4
      196 GETTABLEKS                       R3 R3 K15 ["new"]
      198 CALL                             R3 0 1
      199 SETTABLEKS                       R3 R2 K71 ["OnStagedEditItemPathChanged"]
      201 GETUPVAL                         R3 4
      202 GETTABLEKS                       R3 R3 K15 ["new"]
      204 CALL                             R3 0 1
      205 SETTABLEKS                       R3 R2 K72 ["OnAssetSharingChanged"]
      207 GETUPVAL                         R5 5
      208 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      210 MOVE                             R4 R2
      211 GETIMPORT                        R3 K74 [setmetatable]
      213 CALL                             R3 2 0
      214 GETIMPORT                        R3 K76 [pcall]
      216 NEWCLOSURE                       R4 P0
      217 CAPTURE                          VAL R2
      218 CALL                             R3 1 2
      219 JUMPIFNOT                        R3 ; [+14]
      220 JUMPIFNOT                        R4 ; [+13]
      221 GETTABLEKS                       R6 R2 K59 ["_connections"]
      223 GETTABLEKS                       R7 R4 K77 ["PlaceDocPanelClosed"]
      225 NEWCLOSURE                       R9 P1
      226 CAPTURE                          VAL R2
      227 NAMECALL                         R7 R7 K78 ["Connect"]
      229 CALL                             R7 2 -1
      230 FASTCALL                         TABLE_INSERT ; [+2]
      231 GETIMPORT                        R5 K81 [table.insert]
      233 CALL                             R5 -1 0
      234 GETUPVAL                         R5 6
      235 CALL                             R5 0 1
      236 JUMPIFNOT                        R5 ; [+15]
      237 GETTABLEKS                       R6 R2 K59 ["_connections"]
      239 GETTABLEKS                       R7 R2 K11 ["_networking"]
      241 GETTABLEKS                       R7 R7 K82 ["OnAssetPermissionsChanged"]
      243 NEWCLOSURE                       R9 P2
      244 CAPTURE                          VAL R2
      245 NAMECALL                         R7 R7 K78 ["Connect"]
      247 CALL                             R7 2 -1
      248 FASTCALL                         TABLE_INSERT ; [+2]
      249 GETIMPORT                        R5 K81 [table.insert]
      251 CALL                             R5 -1 0
      252 DUPCLOSURE                       R5 K83 [PROTO_5]
      253 CAPTURE                          UPVAL U7
      254 CAPTURE                          UPVAL U8
      255 SETTABLEKS                       R5 R2 K84 ["_fetchAssetsErrorCallback"]
      257 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      259 NAMECALL                         R5 R5 K85 ["getCurrentScope"]
      261 CALL                             R5 1 1
      262 GETUPVAL                         R6 9
      263 GETTABLEKS                       R6 R6 K86 ["eventStart"]
      265 GETUPVAL                         R7 10
      266 GETTABLEKS                       R7 R7 K87 ["BenchmarkingEvent"]
      268 GETTABLEKS                       R7 R7 K88 ["LoadNewScope"]
      270 DUPTABLE                         R8 K90 [{["isBackgroundFetch"] = False}]
      271 GETTABLEKS                       R9 R5 K91 ["Uid"]
      273 CALL                             R6 3 0
      274 MOVE                             R8 R5
      275 NAMECALL                         R6 R2 K92 ["_startNewScopeFetch"]
      277 CALL                             R6 2 0
      278 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      280 NAMECALL                         R6 R6 K16 ["getPlugin"]
      282 CALL                             R6 1 1
      283 GETTABLEKS                       R8 R2 K59 ["_connections"]
      285 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      287 GETTABLEKS                       R9 R9 K93 ["OnCurrentScopeChanged"]
      289 NEWCLOSURE                       R11 P4
      290 CAPTURE                          VAL R2
      291 CAPTURE                          UPVAL U11
      292 CAPTURE                          UPVAL U9
      293 CAPTURE                          UPVAL U10
      294 CAPTURE                          UPVAL U2
      295 NAMECALL                         R9 R9 K78 ["Connect"]
      297 CALL                             R9 2 -1
      298 FASTCALL                         TABLE_INSERT ; [+2]
      299 GETIMPORT                        R7 K81 [table.insert]
      301 CALL                             R7 -1 0
      302 GETUPVAL                         R7 12
      303 CALL                             R7 0 1
      304 JUMPIF                           R7 ; [+39]
      305 GETTABLEKS                       R8 R2 K59 ["_connections"]
      307 LOADK                            R11 K94 ["OnAddPlaceSucceeded"]
      308 NEWCLOSURE                       R12 P5
      309 CAPTURE                          VAL R2
      310 NAMECALL                         R9 R6 K95 ["OnInvoke"]
      312 CALL                             R9 3 -1
      313 FASTCALL                         TABLE_INSERT ; [+2]
      314 GETIMPORT                        R7 K81 [table.insert]
      316 CALL                             R7 -1 0
      317 GETTABLEKS                       R8 R2 K59 ["_connections"]
      319 LOADK                            R11 K96 ["OnRemovePlaceFromGameSucceeded"]
      320 NEWCLOSURE                       R12 P6
      321 CAPTURE                          VAL R2
      322 CAPTURE                          UPVAL U13
      323 CAPTURE                          UPVAL U14
      324 NAMECALL                         R9 R6 K95 ["OnInvoke"]
      326 CALL                             R9 3 -1
      327 FASTCALL                         TABLE_INSERT ; [+2]
      328 GETIMPORT                        R7 K81 [table.insert]
      330 CALL                             R7 -1 0
      331 GETTABLEKS                       R8 R2 K59 ["_connections"]
      333 LOADK                            R11 K97 ["OnRenamePlaceSucceeded"]
      334 NEWCLOSURE                       R12 P7
      335 CAPTURE                          VAL R2
      336 CAPTURE                          UPVAL U13
      337 NAMECALL                         R9 R6 K95 ["OnInvoke"]
      339 CALL                             R9 3 -1
      340 FASTCALL                         TABLE_INSERT ; [+2]
      341 GETIMPORT                        R7 K81 [table.insert]
      343 CALL                             R7 -1 0
      344 GETUPVAL                         R7 15
      345 CALL                             R7 0 1
      346 JUMPIFNOT                        R7 ; [+12]
      347 GETTABLEKS                       R8 R2 K59 ["_connections"]
      349 LOADK                            R11 K98 ["OnAddToExperienceFinished"]
      350 NEWCLOSURE                       R12 P8
      351 CAPTURE                          VAL R2
      352 NAMECALL                         R9 R6 K95 ["OnInvoke"]
      354 CALL                             R9 3 -1
      355 FASTCALL                         TABLE_INSERT ; [+2]
      356 GETIMPORT                        R7 K81 [table.insert]
      358 CALL                             R7 -1 0
      359 GETTABLEKS                       R8 R2 K59 ["_connections"]
      361 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      363 GETTABLEKS                       R9 R9 K99 ["OnNewAssetFetched"]
      365 NEWCLOSURE                       R11 P9
      366 CAPTURE                          VAL R2
      367 CAPTURE                          UPVAL U16
      368 CAPTURE                          UPVAL U14
      369 NAMECALL                         R9 R9 K78 ["Connect"]
      371 CALL                             R9 2 -1
      372 FASTCALL                         TABLE_INSERT ; [+2]
      373 GETIMPORT                        R7 K81 [table.insert]
      375 CALL                             R7 -1 0
      376 GETTABLEKS                       R8 R2 K59 ["_connections"]
      378 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      380 GETTABLEKS                       R9 R9 K100 ["OnSearchRequested"]
      382 NEWCLOSURE                       R11 P10
      383 CAPTURE                          VAL R2
      384 CAPTURE                          UPVAL U17
      385 NAMECALL                         R9 R9 K78 ["Connect"]
      387 CALL                             R9 2 -1
      388 FASTCALL                         TABLE_INSERT ; [+2]
      389 GETIMPORT                        R7 K81 [table.insert]
      391 CALL                             R7 -1 0
      392 GETTABLEKS                       R8 R2 K59 ["_connections"]
      394 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      396 GETTABLEKS                       R9 R9 K101 ["OnIsSearchInitiatedChanged"]
      398 NEWCLOSURE                       R11 P11
      399 CAPTURE                          VAL R2
      400 NAMECALL                         R9 R9 K78 ["Connect"]
      402 CALL                             R9 2 -1
      403 FASTCALL                         TABLE_INSERT ; [+2]
      404 GETIMPORT                        R7 K81 [table.insert]
      406 CALL                             R7 -1 0
      407 GETTABLEKS                       R8 R2 K59 ["_connections"]
      409 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      411 GETTABLEKS                       R9 R9 K102 ["OnIsSearchRequestedChanged"]
      413 NEWCLOSURE                       R11 P12
      414 CAPTURE                          VAL R2
      415 NAMECALL                         R9 R9 K78 ["Connect"]
      417 CALL                             R9 2 -1
      418 FASTCALL                         TABLE_INSERT ; [+2]
      419 GETIMPORT                        R7 K81 [table.insert]
      421 CALL                             R7 -1 0
      422 GETTABLEKS                       R8 R2 K59 ["_connections"]
      424 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      426 GETTABLEKS                       R9 R9 K103 ["OnIsDefaultSearchStateChanged"]
      428 NEWCLOSURE                       R11 P13
      429 CAPTURE                          VAL R2
      430 NAMECALL                         R9 R9 K78 ["Connect"]
      432 CALL                             R9 2 -1
      433 FASTCALL                         TABLE_INSERT ; [+2]
      434 GETIMPORT                        R7 K81 [table.insert]
      436 CALL                             R7 -1 0
      437 GETTABLEKS                       R8 R2 K59 ["_connections"]
      439 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      441 GETTABLEKS                       R9 R9 K104 ["OnBrowserLayoutChanged"]
      443 NEWCLOSURE                       R11 P14
      444 CAPTURE                          VAL R2
      445 NAMECALL                         R9 R9 K78 ["Connect"]
      447 CALL                             R9 2 -1
      448 FASTCALL                         TABLE_INSERT ; [+2]
      449 GETIMPORT                        R7 K81 [table.insert]
      451 CALL                             R7 -1 0
      452 GETTABLEKS                       R8 R2 K59 ["_connections"]
      454 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      456 GETTABLEKS                       R9 R9 K105 ["OnGridStateUpdated"]
      458 NEWCLOSURE                       R11 P15
      459 CAPTURE                          VAL R2
      460 NAMECALL                         R9 R9 K78 ["Connect"]
      462 CALL                             R9 2 -1
      463 FASTCALL                         TABLE_INSERT ; [+2]
      464 GETIMPORT                        R7 K81 [table.insert]
      466 CALL                             R7 -1 0
      467 GETUPVAL                         R7 18
      468 CALL                             R7 0 1
      469 JUMPIF                           R7 ; [+3]
      470 GETUPVAL                         R7 19
      471 CALL                             R7 0 1
      472 JUMPIFNOT                        R7 ; [+20]
      473 GETIMPORT                        R7 K76 [pcall]
      475 NEWCLOSURE                       R8 P16
      476 CAPTURE                          VAL R2
      477 CALL                             R7 1 2
      478 JUMPIFNOT                        R7 ; [+14]
      479 JUMPIFNOT                        R8 ; [+13]
      480 GETTABLEKS                       R10 R2 K59 ["_connections"]
      482 GETTABLEKS                       R11 R8 K106 ["InventoryRefreshReceived"]
      484 NEWCLOSURE                       R13 P17
      485 CAPTURE                          VAL R2
      486 NAMECALL                         R11 R11 K78 ["Connect"]
      488 CALL                             R11 2 -1
      489 FASTCALL                         TABLE_INSERT ; [+2]
      490 GETIMPORT                        R9 K81 [table.insert]
      492 CALL                             R9 -1 0
      493 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_ixpController"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["IxpVariable"]
        5 GETTABLEKS                       R4 R4 K2 ["Omnisearch"]
        7 NAMECALL                         R2 R2 K3 ["getValue"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["IxpValue"]
       13 GETTABLEKS                       R3 R3 K5 ["Experiment"]
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K1 ["_searchController"]
        6 NAMECALL                         R1 R1 K2 ["getIsSearchRequested"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETTABLEKS                       R1 R0 K1 ["_searchController"]
       12 NAMECALL                         R1 R1 K3 ["getIsSearchInitiated"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_26:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETTABLEKS                       R3 R1 K1 ["Type"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        9 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K4 ["_searchController"]
       18 NAMECALL                         R2 R2 K5 ["getSearchOptions"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K6 ["AssetType"]
       23 LOADB                            R3 0
       24 GETTABLEKS                       R4 R1 K1 ["Type"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       29 GETTABLEKS                       R5 R5 K7 ["Universe"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+10]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K6 ["AssetType"]
       36 GETTABLEKS                       R4 R4 K8 ["Place"]
       38 JUMPIFEQ                         R2 R4 ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 RETURN                           R3 1

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R1 1
        5 DUPTABLE                         R2 K5 [{"Type", "Uid", "Name", "Id"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K6 ["ScopeType"]
        9 GETTABLEKS                       R3 R3 K7 ["ProjectPlaces"]
       11 SETTABLEKS                       R3 R2 K1 ["Type"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K6 ["ScopeType"]
       17 GETTABLEKS                       R4 R4 K7 ["ProjectPlaces"]
       19 GETTABLEKS                       R5 R1 K4 ["Id"]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K2 ["Uid"]
       24 GETTABLEKS                       R3 R1 K3 ["Name"]
       26 SETTABLEKS                       R3 R2 K3 ["Name"]
       28 GETTABLEKS                       R3 R1 K4 ["Id"]
       30 SETTABLEKS                       R3 R2 K4 ["Id"]
       32 RETURN                           R2 1

PROTO_28:
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

PROTO_29:
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
       98 JUMPIFNOTEQ                      R9 R10 ; [+30]
      100 GETUPVAL                         R9 0
      101 NAMECALL                         R9 R9 K16 ["_getIsSearchActive"]
      103 CALL                             R9 1 1
      104 JUMPIFNOT                        R9 ; [+5]
      105 GETUPVAL                         R10 0
      106 NAMECALL                         R10 R10 K17 ["_createRenderItems"]
      108 CALL                             R10 1 0
      109 JUMP                             ; [+19]
      110 GETUPVAL                         R10 0
      111 MOVE                             R12 R6
      112 NEWTABLE                         R13 0 0
      114 GETUPVAL                         R14 1
      115 GETTABLEKS                       R14 R14 K2 ["Uid"]
      117 NAMECALL                         R10 R10 K18 ["_updateRenderItems"]
      119 CALL                             R10 4 0
      120 GETUPVAL                         R10 3
      121 GETTABLEKS                       R10 R10 K19 ["eventEnd"]
      123 GETUPVAL                         R11 4
      124 GETTABLEKS                       R11 R11 K20 ["BenchmarkingEvent"]
      126 GETTABLEKS                       R11 R11 K21 ["FirstLoad"]
      128 CALL                             R10 1 0
      129 JUMPIFNOT                        R3 ; [+7]
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R9 R9 K22 ["_pluginController"]
      133 MOVE                             R11 R3
      134 NAMECALL                         R9 R9 K23 ["setRootPlace"]
      136 CALL                             R9 2 0
      137 SETTABLEKS                       R4 R5 K24 ["NextPageToken"]
      139 LOADB                            R9 1
      140 JUMPIFEQKNIL                     R4 ; [+5]
      142 JUMPIFEQKS                       R4 K25 [""] ; [+2]
      144 LOADB                            R9 0 +1
      145 LOADB                            R9 1
      146 GETUPVAL                         R11 2
      147 JUMPIFNOTEQKNIL                  R11 ; [+2]
      149 LOADB                            R10 0 +1
      150 LOADB                            R10 1
      151 NOT                              R11 R10
      152 JUMPIFNOT                        R11 ; [+16]
      153 GETUPVAL                         R12 0
      154 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      156 NAMECALL                         R12 R12 K26 ["getTotalItemCount"]
      158 CALL                             R12 1 1
      159 GETUPVAL                         R13 0
      160 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      162 NAMECALL                         R13 R13 K27 ["getMaxItems"]
      164 CALL                             R13 1 1
      165 JUMPIFLT                         R13 R12 ; [+2]
      167 LOADB                            R11 0 +1
      168 LOADB                            R11 1
      169 NOT                              R12 R10
      170 JUMPIFNOT                        R12 ; [+16]
      171 GETUPVAL                         R13 0
      172 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K2 ["Uid"]
      177 NAMECALL                         R13 R13 K28 ["getScopeItemCount"]
      179 CALL                             R13 2 1
      180 GETUPVAL                         R14 5
      181 GETTABLEKS                       R14 R14 K29 ["InitialScopeFetchLimit"]
      183 JUMPIFLE                         R14 R13 ; [+2]
      185 LOADB                            R12 0 +1
      186 LOADB                            R12 1
      187 GETUPVAL                         R13 0
      188 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      190 GETUPVAL                         R15 1
      191 GETTABLEKS                       R15 R15 K2 ["Uid"]
      193 NAMECALL                         R13 R13 K30 ["getScopeCacheFetchProgress"]
      195 CALL                             R13 2 1
      196 MOVE                             R14 R9
      197 JUMPIF                           R14 ; [+3]
      198 MOVE                             R14 R11
      199 JUMPIF                           R14 ; [+1]
      200 MOVE                             R14 R12
      201 JUMPIFNOT                        R14 ; [+67]
      202 LOADN                            R15 0
      203 SETTABLEKS                       R15 R5 K31 ["FetchProgress"]
      205 LOADN                            R16 0
      206 GETTABLEKS                       R18 R5 K33 ["PendingRequestChains"]
      208 SUBK                             R17 R18 K32 [1]
      209 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      211 GETIMPORT                        R15 K36 [math.max]
      213 CALL                             R15 2 1
      214 SETTABLEKS                       R15 R5 K33 ["PendingRequestChains"]
      216 GETTABLEKS                       R16 R5 K33 ["PendingRequestChains"]
      218 LOADN                            R17 0
      219 JUMPIFLT                         R17 R16 ; [+2]
      221 LOADB                            R15 0 +1
      222 LOADB                            R15 1
      223 SETTABLEKS                       R15 R5 K37 ["Loading"]
      225 GETUPVAL                         R15 2
      226 JUMPIFNOT                        R15 ; [+25]
      227 GETIMPORT                        R15 K39 [next]
      229 GETUPVAL                         R16 2
      230 CALL                             R15 1 1
      231 JUMPIFNOT                        R15 ; [+20]
      232 GETUPVAL                         R15 2
      233 LOADNIL                          R16
      234 LOADNIL                          R17
      235 FORGPREP                         R15
      236 GETUPVAL                         R20 0
      237 GETTABLEKS                       R20 R20 K1 ["_itemsCache"]
      239 MOVE                             R22 R18
      240 GETUPVAL                         R23 1
      241 GETTABLEKS                       R23 R23 K2 ["Uid"]
      243 NAMECALL                         R20 R20 K40 ["removeItem"]
      245 CALL                             R20 3 0
      246 FORGLOOP                         R15 2 ; [-11]
      248 GETUPVAL                         R15 0
      249 NAMECALL                         R15 R15 K17 ["_createRenderItems"]
      251 CALL                             R15 1 0
      252 GETUPVAL                         R15 0
      253 NAMECALL                         R15 R15 K41 ["_tryRevealPendingItem"]
      255 CALL                             R15 1 0
      256 GETUPVAL                         R15 3
      257 GETTABLEKS                       R15 R15 K19 ["eventEnd"]
      259 GETUPVAL                         R16 4
      260 GETTABLEKS                       R16 R16 K20 ["BenchmarkingEvent"]
      262 GETTABLEKS                       R16 R16 K42 ["LoadNewScope"]
      264 GETUPVAL                         R17 1
      265 GETTABLEKS                       R17 R17 K2 ["Uid"]
      267 CALL                             R15 2 0
      268 JUMP                             ; [+5]
      269 LOADB                            R15 1
      270 SETTABLEKS                       R15 R5 K37 ["Loading"]
      272 SETTABLEKS                       R13 R5 K31 ["FetchProgress"]
      274 JUMPIF                           R10 ; [+12]
      275 GETUPVAL                         R15 0
      276 GETTABLEKS                       R15 R15 K43 ["OnScopeFetchProgressChanged"]
      278 MOVE                             R17 R13
      279 GETTABLEKS                       R18 R5 K37 ["Loading"]
      281 GETUPVAL                         R19 1
      282 GETTABLEKS                       R19 R19 K2 ["Uid"]
      284 NAMECALL                         R15 R15 K14 ["Fire"]
      286 CALL                             R15 4 0
      287 NOT                              R15 R14
      288 RETURN                           R15 1

PROTO_30:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

PROTO_31:
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
       30 LOADN                            R5 1
       31 SETTABLEKS                       R5 R3 K8 ["PendingRequestChains"]
       33 MOVE                             R7 R1
       34 MOVE                             R8 R4
       35 NAMECALL                         R5 R0 K9 ["_getNewItemsHandler"]
       37 CALL                             R5 3 1
       38 NAMECALL                         R6 R0 K10 ["_getFetchErrorCallback"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R0 K11 ["_networking"]
       43 MOVE                             R9 R1
       44 LOADNIL                          R10
       45 MOVE                             R11 R5
       46 MOVE                             R12 R6
       47 GETTABLEKS                       R13 R0 K12 ["_explorerController"]
       49 MOVE                             R15 R1
       50 NAMECALL                         R13 R13 K13 ["getScopeRoot"]
       52 CALL                             R13 2 -1
       53 NAMECALL                         R7 R7 K14 ["fetchAssetsAsync"]
       55 CALL                             R7 -1 0
       56 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_35:
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

PROTO_36:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+12]
        4 NEWTABLE                         R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["_searchController"]
        8 NAMECALL                         R3 R3 K2 ["getSearchOptions"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       13 SETLIST                          R2 R3 1 [1]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R1 K4 ["Type"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["ScopeType"]
       21 GETTABLEKS                       R3 R3 K6 ["ProjectPlaces"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+11]
       25 NEWTABLE                         R2 0 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       30 GETTABLEKS                       R3 R3 K7 ["Place"]
       32 SETLIST                          R2 R3 1 [1]
       34 RETURN                           R2 1
       35 GETTABLEKS                       R3 R0 K8 ["_filters"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K9 ["AssetInfoField"]
       40 GETTABLEKS                       R4 R4 K3 ["AssetType"]
       42 GETTABLE                         R2 R3 R4
       43 JUMPIFEQKNIL                     R2 ; [+7]
       45 GETIMPORT                        R3 K11 [next]
       47 MOVE                             R4 R2
       48 CALL                             R3 1 1
       49 JUMPIFNOTEQKNIL                  R3 ; [+4]
       51 NEWTABLE                         R3 0 0
       53 RETURN                           R3 1
       54 NEWTABLE                         R3 0 0
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K12 ["asSortedList"]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       62 CALL                             R4 1 3
       63 FORGPREP                         R4
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K3 ["AssetType"]
       67 GETTABLEKS                       R9 R9 K13 ["Folder"]
       69 JUMPIFEQ                         R8 R9 ; [+17]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K3 ["AssetType"]
       74 GETTABLEKS                       R9 R9 K7 ["Place"]
       76 JUMPIFEQ                         R8 R9 ; [+10]
       78 GETTABLE                         R9 R2 R8
       79 JUMPIFNOT                        R9 ; [+7]
       80 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       82 MOVE                             R10 R3
       83 MOVE                             R11 R8
       84 GETIMPORT                        R9 K16 [table.insert]
       86 CALL                             R9 2 0
       87 FORGLOOP                         R4 2 ; [-24]
       89 RETURN                           R3 1

PROTO_37:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Uid"]
        8 NAMECALL                         R5 R0 K2 ["_getIsSearchActive"]
       10 CALL                             R5 1 1
       11 JUMPIFNOT                        R5 ; [+41]
       12 GETTABLEKS                       R6 R0 K3 ["_layoutController"]
       14 NAMECALL                         R6 R6 K4 ["getFolderLimit"]
       16 CALL                             R6 1 1
       17 DUPTABLE                         R7 K8 [{"AssetTypes", "SearchTerm", "FolderCount"}]
       18 MOVE                             R10 R3
       19 NAMECALL                         R8 R0 K9 ["_getSearchAssetTypes"]
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K5 ["AssetTypes"]
       24 GETTABLEKS                       R8 R0 K10 ["_searchController"]
       26 NAMECALL                         R8 R8 K11 ["getActiveSearchTerm"]
       28 CALL                             R8 1 1
       29 SETTABLEKS                       R8 R7 K6 ["SearchTerm"]
       31 GETTABLEKS                       R9 R0 K12 ["_showAllSearchFolders"]
       33 JUMPIFNOT                        R9 ; [+2]
       34 LOADNIL                          R8
       35 JUMP                             ; [+1]
       36 MOVE                             R8 R6
       37 SETTABLEKS                       R8 R7 K7 ["FolderCount"]
       39 GETTABLEKS                       R8 R0 K13 ["_itemsCache"]
       41 MOVE                             R10 R4
       42 GETTABLEKS                       R11 R0 K14 ["_filters"]
       44 GETTABLEKS                       R12 R0 K15 ["_sorts"]
       46 MOVE                             R13 R7
       47 NAMECALL                         R8 R8 K16 ["getSortedFilteredPathsForSearch"]
       49 CALL                             R8 5 2
       50 MOVE                             R1 R8
       51 MOVE                             R2 R9
       52 JUMP                             ; [+11]
       53 GETTABLEKS                       R6 R0 K13 ["_itemsCache"]
       55 MOVE                             R8 R4
       56 GETTABLEKS                       R9 R0 K14 ["_filters"]
       58 GETTABLEKS                       R10 R0 K15 ["_sorts"]
       60 NAMECALL                         R6 R6 K17 ["getSortedFilteredPaths"]
       62 CALL                             R6 4 1
       63 MOVE                             R1 R6
       64 SETTABLEKS                       R1 R0 K18 ["_renderItems"]
       66 GETTABLEKS                       R6 R0 K19 ["OnItemsChanged"]
       68 GETTABLEKS                       R8 R0 K18 ["_renderItems"]
       70 NAMECALL                         R6 R6 K20 ["Fire"]
       72 CALL                             R6 2 0
       73 JUMPIFNOT                        R5 ; [+11]
       74 GETTABLEKS                       R6 R0 K21 ["_searchFolderCount"]
       76 JUMPIFEQ                         R2 R6 ; [+8]
       78 SETTABLEKS                       R2 R0 K21 ["_searchFolderCount"]
       80 GETTABLEKS                       R6 R0 K22 ["OnSearchFolderCountChanged"]
       82 NAMECALL                         R6 R6 K20 ["Fire"]
       84 CALL                             R6 1 0
       85 NAMECALL                         R6 R0 K23 ["_tryRevealPendingItem"]
       87 CALL                             R6 1 0
       88 RETURN                           R0 0

PROTO_38:
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
       28 NAMECALL                         R4 R0 K10 ["_tryRevealPendingItem"]
       30 CALL                             R4 1 0
       31 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingRevealPath"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["Uid"]
        9 GETTABLEKS                       R2 R0 K3 ["_pendingRevealScopeUid"]
       11 JUMPIFEQ                         R1 R2 ; [+2]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K4 ["_itemsCache"]
       16 GETTABLEKS                       R3 R0 K3 ["_pendingRevealScopeUid"]
       18 NAMECALL                         R1 R1 K5 ["getScope"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETTABLEKS                       R2 R1 K6 ["Loading"]
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 LOADNIL                          R2
       27 GETTABLEKS                       R3 R0 K7 ["_renderItems"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETTABLEKS                       R8 R0 K0 ["_pendingRevealPath"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 MOVE                             R2 R6
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R3 2 ; [-7]
       40 JUMPIFNOT                        R2 ; [+20]
       41 NEWTABLE                         R5 0 1
       43 GETTABLEKS                       R6 R0 K0 ["_pendingRevealPath"]
       45 SETLIST                          R5 R6 1 [1]
       47 NAMECALL                         R3 R0 K8 ["setSelection"]
       49 CALL                             R3 2 0
       50 MOVE                             R5 R2
       51 NAMECALL                         R3 R0 K9 ["syncSelectionIndices"]
       53 CALL                             R3 2 0
       54 GETTABLEKS                       R3 R0 K10 ["_layoutController"]
       56 MOVE                             R5 R2
       57 NAMECALL                         R3 R3 K11 ["scrollToItemWhenReady"]
       59 CALL                             R3 2 0
       60 JUMP                             ; [+14]
       61 JUMPIFNOT                        R1 ; [+13]
       62 GETTABLEKS                       R3 R1 K12 ["NextPageToken"]
       64 JUMPIFEQKNIL                     R3 ; [+10]
       66 GETTABLEKS                       R3 R1 K12 ["NextPageToken"]
       68 JUMPIFEQKS                       R3 K13 [""] ; [+6]
       70 LOADN                            R5 0
       71 NAMECALL                         R3 R0 K14 ["requestNextPage"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0
       75 LOADNIL                          R3
       76 SETTABLEKS                       R3 R0 K0 ["_pendingRevealPath"]
       78 LOADNIL                          R3
       79 SETTABLEKS                       R3 R0 K3 ["_pendingRevealScopeUid"]
       81 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        2 GETTABLEKS                       R5 R1 K1 ["Uid"]
        4 NAMECALL                         R3 R3 K2 ["addScope"]
        6 CALL                             R3 2 1
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K3 ["Loading"]
       10 LOADN                            R4 1
       11 SETTABLEKS                       R4 R3 K4 ["PendingRequestChains"]
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETTABLEKS                       R5 R0 K5 ["_sorts"]
       16 LENGTH                           R4 R5
       17 JUMPIFNOTEQKN                    R4 K6 [0] ; [+7]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["get"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R0 K5 ["_sorts"]
       25 MOVE                             R6 R1
       26 NAMECALL                         R4 R0 K8 ["_getNewItemsHandler"]
       28 CALL                             R4 2 1
       29 NAMECALL                         R5 R0 K9 ["_getFetchErrorCallback"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R0 K10 ["_networking"]
       34 MOVE                             R8 R1
       35 GETTABLEKS                       R9 R3 K11 ["NextPageToken"]
       37 MOVE                             R10 R4
       38 MOVE                             R11 R5
       39 GETTABLEKS                       R12 R0 K12 ["_explorerController"]
       41 MOVE                             R14 R1
       42 NAMECALL                         R12 R12 K13 ["getScopeRoot"]
       44 CALL                             R12 2 -1
       45 NAMECALL                         R6 R6 K14 ["fetchAssetsAsync"]
       47 CALL                             R6 -1 0
       48 GETTABLEKS                       R6 R0 K15 ["OnScopeFetchProgressChanged"]
       50 LOADN                            R8 0
       51 LOADB                            R9 1
       52 GETTABLEKS                       R10 R1 K1 ["Uid"]
       54 NAMECALL                         R6 R6 K16 ["Fire"]
       56 CALL                             R6 4 0
       57 RETURN                           R0 0

PROTO_44:
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
       57 NEWTABLE                         R1 0 0
       59 SETTABLEKS                       R1 R0 K16 ["_assetTechnicalDetails"]
       61 NEWTABLE                         R1 0 0
       63 SETTABLEKS                       R1 R0 K17 ["_assetSharing"]
       65 GETTABLEKS                       R1 R0 K18 ["_assetSharingEpoch"]
       67 ADDK                             R1 R1 K19 [1]
       68 SETTABLEKS                       R1 R0 K18 ["_assetSharingEpoch"]
       70 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R2 R0 K0 ["_showAllSearchFolders"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        7 NAMECALL                         R2 R0 K1 ["_getIsSearchActive"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 NAMECALL                         R2 R0 K2 ["_createRenderItems"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_48:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["_sorts"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R0 K3 ["_filters"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K4 ["_savedFilters"]
       18 NAMECALL                         R2 R0 K5 ["_clearItems"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K6 ["_analyticsState"]
       23 LOADK                            R3 K7 ["search"]
       24 SETTABLEKS                       R3 R2 K8 ["Source"]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R0 K2 ["_savedSorts"]
       29 JUMPIFEQKNIL                     R3 ; [+4]
       31 GETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       33 JUMP                             ; [+4]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K9 ["get"]
       37 CALL                             R2 0 1
       38 SETTABLEKS                       R2 R0 K1 ["_sorts"]
       40 GETTABLEKS                       R2 R0 K4 ["_savedFilters"]
       42 JUMPIFEQKNIL                     R2 ; [+6]
       44 GETTABLEKS                       R2 R0 K4 ["_savedFilters"]
       46 SETTABLEKS                       R2 R0 K3 ["_filters"]
       48 JUMP                             ; [+3]
       49 NAMECALL                         R2 R0 K10 ["clearFilters"]
       51 CALL                             R2 1 0
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R0 K4 ["_savedFilters"]
       58 GETTABLEKS                       R2 R0 K11 ["OnSortFilterChanged"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R5 R0 K1 ["_sorts"]
       63 CALL                             R4 1 1
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R6 R0 K3 ["_filters"]
       67 CALL                             R5 1 -1
       68 NAMECALL                         R2 R2 K12 ["Fire"]
       70 CALL                             R2 -1 0
       71 NAMECALL                         R2 R0 K13 ["refreshItems"]
       73 CALL                             R2 1 0
       74 LOADB                            R4 0
       75 NAMECALL                         R2 R0 K14 ["setShowAllSearchFolders"]
       77 CALL                             R2 2 0
       78 RETURN                           R0 0

PROTO_49:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["_sorts"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       12 NAMECALL                         R2 R0 K3 ["_clearItems"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R0 K2 ["_savedSorts"]
       18 JUMPIFEQKNIL                     R3 ; [+4]
       20 GETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K4 ["get"]
       26 CALL                             R2 0 1
       27 SETTABLEKS                       R2 R0 K1 ["_sorts"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K2 ["_savedSorts"]
       32 GETTABLEKS                       R2 R0 K5 ["_analyticsState"]
       34 LOADK                            R3 K6 ["browse"]
       35 SETTABLEKS                       R3 R2 K7 ["Source"]
       37 GETTABLEKS                       R2 R0 K8 ["OnSortFilterChanged"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R5 R0 K1 ["_sorts"]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R6 R0 K9 ["_filters"]
       46 CALL                             R5 1 -1
       47 NAMECALL                         R2 R2 K10 ["Fire"]
       49 CALL                             R2 -1 0
       50 NAMECALL                         R2 R0 K11 ["refreshItems"]
       52 CALL                             R2 1 0
       53 LOADB                            R4 0
       54 NAMECALL                         R2 R0 K12 ["setShowAllSearchFolders"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

PROTO_50:
        0 NAMECALL                         R1 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_searchController"]
        5 NAMECALL                         R2 R2 K2 ["getActiveSearchTerm"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R0 K3 ["_clearItems"]
       10 CALL                             R3 1 0
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R0 K4 ["_sorts"]
       15 JUMPIF                           R1 ; [+3]
       16 NAMECALL                         R3 R0 K5 ["clearFilters"]
       18 CALL                             R3 1 0
       19 GETTABLEKS                       R3 R0 K6 ["OnSortFilterChanged"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R6 R0 K4 ["_sorts"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R7 R0 K7 ["_filters"]
       28 CALL                             R6 1 -1
       29 NAMECALL                         R3 R3 K8 ["Fire"]
       31 CALL                             R3 -1 0
       32 GETTABLEKS                       R3 R0 K1 ["_searchController"]
       34 NAMECALL                         R3 R3 K9 ["getSearchOptions"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R3 K10 ["ScopeInfo"]
       39 MOVE                             R7 R4
       40 NAMECALL                         R5 R0 K11 ["_isPlacesSearch"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+58]
       44 JUMPIF                           R1 ; [+14]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K12 ["AssetInfoField"]
       48 GETTABLEKS                       R7 R7 K13 ["AssetType"]
       50 NEWTABLE                         R8 1 0
       52 GETTABLEKS                       R9 R3 K13 ["AssetType"]
       54 LOADB                            R10 1
       55 SETTABLE                         R10 R8 R9
       56 NAMECALL                         R5 R0 K14 ["_addFilter"]
       58 CALL                             R5 3 0
       59 GETTABLEKS                       R5 R0 K15 ["_itemsCache"]
       61 GETTABLEKS                       R7 R4 K16 ["Uid"]
       63 NAMECALL                         R5 R5 K17 ["addScope"]
       65 CALL                             R5 2 1
       66 LOADB                            R6 1
       67 SETTABLEKS                       R6 R5 K18 ["Loading"]
       69 LOADN                            R6 1
       70 SETTABLEKS                       R6 R5 K19 ["PendingRequestChains"]
       72 MOVE                             R8 R4
       73 NAMECALL                         R6 R0 K20 ["_getNewItemsHandler"]
       75 CALL                             R6 2 1
       76 NAMECALL                         R7 R0 K21 ["_getFetchErrorCallback"]
       78 CALL                             R7 1 1
       79 GETTABLEKS                       R8 R0 K22 ["_networking"]
       81 MOVE                             R12 R4
       82 NAMECALL                         R10 R0 K23 ["_getPlacesRequestScope"]
       84 CALL                             R10 2 1
       85 GETTABLEKS                       R11 R5 K24 ["NextPageToken"]
       87 MOVE                             R12 R6
       88 MOVE                             R13 R7
       89 NAMECALL                         R8 R8 K25 ["fetchAssetsAsync"]
       91 CALL                             R8 5 0
       92 GETTABLEKS                       R8 R0 K26 ["OnScopeFetchProgressChanged"]
       94 LOADN                            R10 0
       95 LOADB                            R11 1
       96 GETTABLEKS                       R12 R4 K16 ["Uid"]
       98 NAMECALL                         R8 R8 K8 ["Fire"]
      100 CALL                             R8 4 0
      101 RETURN                           R0 0
      102 DUPTABLE                         R5 K29 [{"SearchTerm", "AssetTypes", "ScopeInfo"}]
      103 SETTABLEKS                       R2 R5 K27 ["SearchTerm"]
      105 MOVE                             R8 R4
      106 NAMECALL                         R6 R0 K30 ["_getSearchAssetTypes"]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K28 ["AssetTypes"]
      111 SETTABLEKS                       R4 R5 K10 ["ScopeInfo"]
      113 GETTABLEKS                       R6 R0 K15 ["_itemsCache"]
      115 GETTABLEKS                       R8 R4 K16 ["Uid"]
      117 NAMECALL                         R6 R6 K17 ["addScope"]
      119 CALL                             R6 2 1
      120 LOADB                            R7 1
      121 SETTABLEKS                       R7 R6 K18 ["Loading"]
      123 LOADN                            R7 2
      124 SETTABLEKS                       R7 R6 K19 ["PendingRequestChains"]
      126 MOVE                             R9 R4
      127 NAMECALL                         R7 R0 K20 ["_getNewItemsHandler"]
      129 CALL                             R7 2 1
      130 GETTABLEKS                       R8 R0 K22 ["_networking"]
      132 MOVE                             R10 R5
      133 GETTABLEKS                       R11 R6 K24 ["NextPageToken"]
      135 MOVE                             R12 R7
      136 GETTABLEKS                       R13 R0 K31 ["_fetchAssetsErrorCallback"]
      138 NAMECALL                         R8 R8 K32 ["searchAssetsAsync"]
      140 CALL                             R8 5 0
      141 DUPTABLE                         R8 K35 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      142 SETTABLEKS                       R2 R8 K27 ["SearchTerm"]
      144 SETTABLEKS                       R4 R8 K10 ["ScopeInfo"]
      146 MOVE                             R5 R8
      147 GETTABLEKS                       R8 R0 K22 ["_networking"]
      149 MOVE                             R10 R5
      150 GETTABLEKS                       R11 R6 K24 ["NextPageToken"]
      152 MOVE                             R12 R7
      153 GETTABLEKS                       R13 R0 K31 ["_fetchAssetsErrorCallback"]
      155 NAMECALL                         R8 R8 K32 ["searchAssetsAsync"]
      157 CALL                             R8 5 0
      158 GETTABLEKS                       R8 R0 K26 ["OnScopeFetchProgressChanged"]
      160 LOADN                            R10 0
      161 LOADB                            R11 1
      162 GETTABLEKS                       R12 R4 K16 ["Uid"]
      164 NAMECALL                         R8 R8 K8 ["Fire"]
      166 CALL                             R8 4 0
      167 RETURN                           R0 0

PROTO_51:
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
       51 GETTABLEKS                       R2 R2 K17 ["eventStart"]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R3 R3 K18 ["BenchmarkingEvent"]
       56 GETTABLEKS                       R3 R3 K19 ["LoadNewScope"]
       58 DUPTABLE                         R4 K22 [{["isBackgroundFetch"] = False}]
       59 GETTABLEKS                       R5 R1 K10 ["Uid"]
       61 CALL                             R2 3 0
       62 MOVE                             R4 R1
       63 LOADB                            R5 0
       64 NAMECALL                         R2 R0 K23 ["_startNewScopeFetch"]
       66 CALL                             R2 3 0
       67 RETURN                           R0 0

PROTO_52:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["removeItem"]
        6 CALL                             R3 3 0
        7 NAMECALL                         R3 R0 K2 ["getCurrentShownScope"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R3 R3 K3 ["Uid"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+34]
       14 GETUPVAL                         R3 0
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+27]
       17 NAMECALL                         R3 R0 K2 ["getCurrentShownScope"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R3 R3 K3 ["Uid"]
       22 JUMPIFNOTEQ                      R3 R2 ; [+24]
       24 NAMECALL                         R3 R0 K4 ["_getIsSearchActive"]
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+4]
       28 NAMECALL                         R4 R0 K5 ["_createRenderItems"]
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 NEWTABLE                         R6 0 0
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R1
       37 SETLIST                          R7 R8 1 [1]
       39 MOVE                             R8 R2
       40 NAMECALL                         R4 R0 K6 ["_updateRenderItems"]
       42 CALL                             R4 4 0
       43 RETURN                           R0 0
       44 NAMECALL                         R3 R0 K5 ["_createRenderItems"]
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R4 R0 K0 ["_itemsCache"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
        9 MOVE                             R9 R3
       10 NAMECALL                         R4 R4 K3 ["updateItemField"]
       12 CALL                             R4 5 0
       13 NAMECALL                         R4 R0 K4 ["getCurrentShownScope"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R4 R4 K5 ["Uid"]
       18 JUMPIFNOTEQ                      R1 R4 ; [+4]
       20 NAMECALL                         R4 R0 K6 ["_createRenderItems"]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["getScopeWithUid"]
        8 CALL                             R3 2 1
        9 NAMECALL                         R4 R0 K2 ["_getIsSearchActive"]
       11 CALL                             R4 1 1
       12 JUMPIF                           R3 ; [+24]
       13 GETUPVAL                         R5 1
       14 LOADK                            R6 K3 ["Could not find folder scope for asset %* from browser, adding."]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K4 ["format"]
       18 CALL                             R6 2 1
       19 CALL                             R5 1 0
       20 NAMECALL                         R5 R0 K5 ["getCurrentShownScope"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R5 R5 K6 ["Uid"]
       25 GETTABLEKS                       R6 R0 K7 ["_itemsCache"]
       27 MOVE                             R8 R5
       28 MOVE                             R9 R1
       29 NAMECALL                         R6 R6 K8 ["getItem"]
       31 CALL                             R6 3 1
       32 GETUPVAL                         R7 2
       33 MOVE                             R8 R6
       34 MOVE                             R9 R5
       35 CALL                             R7 2 1
       36 MOVE                             R3 R7
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETTABLEKS                       R5 R0 K9 ["_searchController"]
       40 NAMECALL                         R5 R5 K10 ["endSearchSession"]
       42 CALL                             R5 1 0
       43 GETTABLEKS                       R5 R0 K11 ["_pluginController"]
       45 MOVE                             R7 R3
       46 NAMECALL                         R5 R5 K12 ["setCurrentScope"]
       48 CALL                             R5 2 0
       49 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showSnackbar"]
        6 DUPTABLE                         R1 K3 [{"LocalizableMessage", "Type"}]
        7 DUPTABLE                         R2 K8 [{["Key"] = "Toast", ["SubKey"] = "ShowInFolderFailed"}]
        8 SETTABLEKS                       R2 R1 K1 ["LocalizableMessage"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K9 ["SnackbarType"]
       13 GETTABLEKS                       R2 R2 K10 ["Error"]
       15 SETTABLEKS                       R2 R1 K2 ["Type"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K11 ["_pluginController"]
       22 DUPTABLE                         R2 K8 [{["Key"] = "Toast", ["SubKey"] = "ShowInFolderFailed"}]
       23 NAMECALL                         R0 R0 K12 ["showToast"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["folderItem"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R0 K2 ["path"]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 3
       14 MOVE                             R5 R1
       15 GETUPVAL                         R6 4
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 5
       18 NAMECALL                         R2 R2 K3 ["_revealItemInScope"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Failed to fetch folder metadata for %*: %*"]
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K2 ["pretty"]
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 NAMECALL                         R2 R2 K3 ["format"]
       15 CALL                             R2 3 1
       16 LOADK                            R3 K4 ["WARN"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 4
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["results"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R1 K1 ["results"]
       10 GETTABLEN                        R2 R3 1
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETTABLEKS                       R3 R2 K2 ["error"]
       14 JUMPIFEQKNIL                     R3 ; [+12]
       16 GETUPVAL                         R3 1
       17 LOADK                            R4 K3 ["Could not resolve parent folder for item %*"]
       18 GETUPVAL                         R6 2
       19 NAMECALL                         R4 R4 K4 ["format"]
       21 CALL                             R4 2 1
       22 LOADK                            R5 K5 ["WARN"]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R2 K6 ["item"]
       29 JUMPIFNOT                        R3 ; [+10]
       30 GETTABLEKS                       R5 R3 K7 ["folderItem"]
       32 JUMPIFNOT                        R5 ; [+7]
       33 GETTABLEKS                       R4 R3 K7 ["folderItem"]
       35 GETTABLEKS                       R4 R4 K8 ["folder"]
       37 GETTABLEKS                       R4 R4 K9 ["folderId"]
       39 JUMP                             ; [+1]
       40 LOADN                            R4 0
       41 JUMPIFNOT                        R3 ; [+2]
       42 JUMPIFNOTEQKN                    R4 K10 [0] ; [+8]
       44 GETUPVAL                         R5 0
       45 GETUPVAL                         R7 4
       46 GETUPVAL                         R8 2
       47 NAMECALL                         R5 R5 K11 ["_revealItemInScope"]
       49 CALL                             R5 3 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R5 5
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K12 ["ScopeType"]
       55 GETTABLEKS                       R6 R6 K13 ["Folder"]
       57 MOVE                             R7 R4
       58 CALL                             R5 2 1
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K14 ["_explorerController"]
       62 MOVE                             R8 R5
       63 NAMECALL                         R6 R6 K15 ["getScopeWithUid"]
       65 CALL                             R6 2 1
       66 JUMPIFNOT                        R6 ; [+7]
       67 GETUPVAL                         R7 0
       68 MOVE                             R9 R6
       69 GETUPVAL                         R10 2
       70 NAMECALL                         R7 R7 K11 ["_revealItemInScope"]
       72 CALL                             R7 3 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R7 R3 K16 ["path"]
       76 GETUPVAL                         R8 7
       77 MOVE                             R9 R7
       78 CALL                             R8 1 1
       79 JUMPIF                           R8 ; [+3]
       80 GETUPVAL                         R8 4
       81 GETTABLEKS                       R8 R8 K17 ["Uid"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K18 ["_networking"]
       86 MOVE                             R11 R7
       87 NAMECALL                         R9 R9 K19 ["getFolderMetadataAsync"]
       89 CALL                             R9 2 1
       90 NEWCLOSURE                       R11 P0
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R8
       96 CAPTURE                          UPVAL U2
       97 NAMECALL                         R9 R9 K20 ["andThen"]
       99 CALL                             R9 2 1
      100 NEWCLOSURE                       R11 P1
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          UPVAL U3
      106 NAMECALL                         R9 R9 K21 ["catch"]
      108 CALL                             R9 2 0
      109 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Failed to get parent folder for item %*: %*"]
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K2 ["pretty"]
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 NAMECALL                         R2 R2 K3 ["format"]
       15 CALL                             R2 3 1
       16 LOADK                            R3 K4 ["WARN"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 4
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_62:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 MOVE                             R4 R3
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETTABLEKS                       R4 R0 K0 ["_explorerController"]
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R4 K1 ["getScopeWithUid"]
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+11]
       16 GETUPVAL                         R5 3
       17 LOADK                            R6 K2 ["Cannot show item %* in folder, could not resolve its account"]
       18 MOVE                             R8 R1
       19 NAMECALL                         R6 R6 K3 ["format"]
       21 CALL                             R6 2 1
       22 LOADK                            R7 K4 ["WARN"]
       23 CALL                             R5 2 0
       24 MOVE                             R5 R2
       25 CALL                             R5 0 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R0 K5 ["_networking"]
       29 MOVE                             R7 R4
       30 NEWTABLE                         R8 0 1
       32 MOVE                             R9 R1
       33 SETLIST                          R8 R9 1 [1]
       35 NAMECALL                         R5 R5 K6 ["getItemParentsAsync"]
       37 CALL                             R5 3 1
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 NAMECALL                         R5 R5 K7 ["andThen"]
       52 CALL                             R5 2 1
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R2
       59 NAMECALL                         R5 R5 K8 ["catch"]
       61 CALL                             R5 2 0
       62 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R3 R0 K0 ["_searchController"]
        2 NAMECALL                         R3 R3 K1 ["getIsSearchInitiated"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R4 R0 K0 ["_searchController"]
        8 NAMECALL                         R4 R4 K2 ["endSearchSession"]
       10 CALL                             R4 1 0
       11 NAMECALL                         R4 R0 K3 ["_isOmnisearchEnabled"]
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+1]
       15 JUMPIF                           R3 ; [+3]
       16 NAMECALL                         R4 R0 K4 ["clearFilters"]
       18 CALL                             R4 1 0
       19 SETTABLEKS                       R2 R0 K5 ["_pendingRevealPath"]
       21 GETTABLEKS                       R4 R1 K6 ["Uid"]
       23 SETTABLEKS                       R4 R0 K7 ["_pendingRevealScopeUid"]
       25 GETTABLEKS                       R4 R0 K8 ["_explorerController"]
       27 GETTABLEKS                       R6 R1 K6 ["Uid"]
       29 NAMECALL                         R4 R4 K9 ["revealScope"]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R4 R0 K10 ["_pluginController"]
       34 MOVE                             R6 R1
       35 NAMECALL                         R4 R4 K11 ["setCurrentScope"]
       37 CALL                             R4 2 0
       38 NAMECALL                         R4 R0 K12 ["_tryRevealPendingItem"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_65:
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

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 LENGTH                           R5 R4
        4 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 NAMECALL                         R5 R0 K1 ["_getIsSearchActive"]
        9 CALL                             R5 1 1
       10 JUMPIFNOT                        R5 ; [+6]
       11 MOVE                             R7 R4
       12 MOVE                             R8 R2
       13 NAMECALL                         R5 R0 K2 ["_requestMoveFromSearch"]
       15 CALL                             R5 3 0
       16 RETURN                           R0 0
       17 NAMECALL                         R5 R0 K3 ["getCurrentShownScope"]
       19 CALL                             R5 1 1
       20 OR                               R6 R3 R5
       21 GETTABLEKS                       R8 R6 K4 ["Type"]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K5 ["ScopeType"]
       26 GETTABLEKS                       R9 R9 K6 ["Folder"]
       28 JUMPIFNOTEQ                      R8 R9 ; [+4]
       30 GETTABLEKS                       R7 R6 K7 ["Id"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 GETTABLEKS                       R9 R6 K4 ["Type"]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K5 ["ScopeType"]
       39 GETTABLEKS                       R10 R10 K6 ["Folder"]
       41 JUMPIFNOTEQ                      R9 R10 ; [+8]
       43 GETTABLEKS                       R8 R0 K8 ["_explorerController"]
       45 MOVE                             R10 R6
       46 NAMECALL                         R8 R8 K9 ["getScopeRoot"]
       48 CALL                             R8 2 1
       49 JUMP                             ; [+1]
       50 MOVE                             R8 R6
       51 MOVE                             R11 R4
       52 GETTABLEKS                       R12 R6 K10 ["Uid"]
       54 MOVE                             R13 R7
       55 MOVE                             R14 R8
       56 MOVE                             R15 R6
       57 MOVE                             R16 R2
       58 LOADB                            R17 0
       59 NAMECALL                         R9 R0 K11 ["_requestMoveItems"]
       61 CALL                             R9 8 0
       62 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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
       68 JUMPIF                           R3 ; [+39]
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
       92 JUMPIF                           R3 ; [+9]
       93 GETUPVAL                         R4 8
       94 LOADK                            R5 K23 ["Couldn't get folder scope for target %*, cannot move items"]
       95 GETUPVAL                         R7 3
       96 NAMECALL                         R5 R5 K24 ["format"]
       98 CALL                             R5 2 1
       99 LOADK                            R6 K25 ["WARN"]
      100 CALL                             R4 2 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R4 0
      103 MOVE                             R6 R3
      104 LOADB                            R7 0
      105 NAMECALL                         R4 R4 K26 ["_startNewScopeFetch"]
      107 CALL                             R4 3 0
      108 LOADB                            R3 0
      109 GETUPVAL                         R4 0
      110 NAMECALL                         R4 R4 K27 ["_getIsSearchActive"]
      112 CALL                             R4 1 1
      113 JUMPIF                           R4 ; [+18]
      114 GETUPVAL                         R4 9
      115 LOADNIL                          R5
      116 LOADNIL                          R6
      117 FORGPREP                         R4
      118 GETTABLE                         R9 R1 R8
      119 JUMPIF                           R9 ; [+10]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K18 ["_itemsCache"]
      123 GETUPVAL                         R11 10
      124 MOVE                             R12 R2
      125 MOVE                             R13 R8
      126 NAMECALL                         R9 R9 K28 ["moveItem"]
      128 CALL                             R9 4 0
      129 LOADB                            R3 1
      130 FORGLOOP                         R4 2 ; [-13]
      132 JUMPIFNOT                        R3 ; [+4]
      133 GETUPVAL                         R4 0
      134 NAMECALL                         R4 R4 K29 ["_createRenderItems"]
      136 CALL                             R4 1 0
      137 GETUPVAL                         R4 0
      138 GETTABLEKS                       R4 R4 K20 ["_explorerController"]
      140 GETUPVAL                         R6 10
      141 MOVE                             R7 R2
      142 GETUPVAL                         R8 9
      143 MOVE                             R9 R1
      144 NAMECALL                         R4 R4 K30 ["moveScopes"]
      146 CALL                             R4 5 0
      147 JUMPIFNOT                        R3 ; [+8]
      148 GETUPVAL                         R4 0
      149 GETUPVAL                         R6 5
      150 GETUPVAL                         R7 7
      151 MOVE                             R8 R2
      152 GETUPVAL                         R9 3
      153 NAMECALL                         R4 R4 K31 ["_updateLastUsedFolder"]
      155 CALL                             R4 5 0
      156 GETUPVAL                         R4 11
      157 ADDK                             R4 R4 K32 [1]
      158 SETUPVAL                         R4 11
      159 GETUPVAL                         R4 11
      160 GETUPVAL                         R6 12
      161 LENGTH                           R5 R6
      162 JUMPIFNOTEQ                      R4 R5 ; [+27]
      164 GETUPVAL                         R4 1
      165 CALL                             R4 0 1
      166 JUMPIFNOT                        R4 ; [+16]
      167 GETUPVAL                         R4 2
      168 GETTABLEKS                       R4 R4 K4 ["showSnackbar"]
      170 DUPTABLE                         R5 K7 [{"LocalizableMessage", "Type"}]
      171 DUPTABLE                         R6 K35 [{["Key"] = "FolderMove", ["SubKey"] = "Success"}]
      172 SETTABLEKS                       R6 R5 K5 ["LocalizableMessage"]
      174 GETUPVAL                         R6 2
      175 GETTABLEKS                       R6 R6 K13 ["SnackbarType"]
      177 GETTABLEKS                       R6 R6 K36 ["Info"]
      179 SETTABLEKS                       R6 R5 K6 ["Type"]
      181 CALL                             R4 1 0
      182 JUMP                             ; [+7]
      183 GETUPVAL                         R4 0
      184 GETTABLEKS                       R4 R4 K15 ["_pluginController"]
      186 DUPTABLE                         R6 K35 [{["Key"] = "FolderMove", ["SubKey"] = "Success"}]
      187 NAMECALL                         R4 R4 K16 ["showToast"]
      189 CALL                             R4 2 0
      190 GETUPVAL                         R4 13
      191 GETTABLEKS                       R4 R4 K37 ["sendMoveFolderEvent"]
      193 DUPTABLE                         R5 K40 [{"folderMoveCount", "assetMoveCount"}]
      194 GETUPVAL                         R6 14
      195 SETTABLEKS                       R6 R5 K38 ["folderMoveCount"]
      197 GETUPVAL                         R6 15
      198 SETTABLEKS                       R6 R5 K39 ["assetMoveCount"]
      200 DUPTABLE                         R6 K45 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
      201 GETUPVAL                         R7 0
      202 GETTABLEKS                       R7 R7 K20 ["_explorerController"]
      204 SETTABLEKS                       R7 R6 K41 ["ExplorerController"]
      206 GETUPVAL                         R7 0
      207 GETTABLEKS                       R7 R7 K46 ["_layoutController"]
      209 SETTABLEKS                       R7 R6 K42 ["LayoutController"]
      211 GETUPVAL                         R7 0
      212 SETTABLEKS                       R7 R6 K43 ["ItemsController"]
      214 GETUPVAL                         R7 0
      215 GETTABLEKS                       R7 R7 K47 ["_searchController"]
      217 SETTABLEKS                       R7 R6 K44 ["SearchController"]
      219 CALL                             R4 2 0
      220 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
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
      100 NAMECALL                         R21 R21 K25 ["andThen"]
      102 CALL                             R21 2 1
      103 NEWCLOSURE                       R23 P1
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U3
      108 NAMECALL                         R21 R21 K26 ["catch"]
      110 CALL                             R21 2 0
      111 FORGLOOP                         R15 2 ; [-46]
      113 CLOSEUPVALS                      R10
      114 RETURN                           R0 0

PROTO_75:
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
       99 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Error creating folder: %*"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["pretty"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 LOADK                            R3 K4 ["WARN"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R3 R0 K6 ["message"]
       20 ORK                              R2 R3 K5 [""]
       21 LOADK                            R3 K7 ["Create"]
       22 CALL                             R1 2 3
       23 GETUPVAL                         R4 4
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+22]
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R4 R4 K8 ["showSnackbar"]
       29 DUPTABLE                         R5 K11 [{"LocalizableMessage", "Type"}]
       30 DUPTABLE                         R6 K15 [{"Key", "SubKey", "Args"}]
       31 SETTABLEKS                       R1 R6 K12 ["Key"]
       33 SETTABLEKS                       R2 R6 K13 ["SubKey"]
       35 SETTABLEKS                       R3 R6 K14 ["Args"]
       37 SETTABLEKS                       R6 R5 K9 ["LocalizableMessage"]
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K16 ["SnackbarType"]
       42 GETTABLEKS                       R6 R6 K17 ["Error"]
       44 SETTABLEKS                       R6 R5 K10 ["Type"]
       46 CALL                             R4 1 0
       47 JUMP                             ; [+13]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K18 ["_pluginController"]
       51 DUPTABLE                         R6 K15 [{"Key", "SubKey", "Args"}]
       52 SETTABLEKS                       R1 R6 K12 ["Key"]
       54 SETTABLEKS                       R2 R6 K13 ["SubKey"]
       56 SETTABLEKS                       R3 R6 K14 ["Args"]
       58 NAMECALL                         R4 R4 K19 ["showToast"]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R4 0
       62 LOADB                            R5 0
       63 SETTABLEKS                       R5 R4 K20 ["_moveSelectionToNewFolder"]
       65 RETURN                           R0 0

PROTO_77:
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

PROTO_78:
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
       71 NAMECALL                         R5 R5 K19 ["andThen"]
       73 CALL                             R5 2 1
       74 NEWCLOSURE                       R7 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          UPVAL U7
       81 NAMECALL                         R5 R5 K20 ["catch"]
       83 CALL                             R5 2 1
       84 NEWCLOSURE                       R7 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R3
       87 NAMECALL                         R5 R5 K21 ["finally"]
       89 CALL                             R5 2 0
       90 RETURN                           R0 0

PROTO_79:
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
       96 RETURN                           R0 0

PROTO_80:
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

PROTO_81:
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
       41 NAMECALL                         R4 R4 K11 ["andThen"]
       43 CALL                             R4 2 1
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 NAMECALL                         R4 R4 K12 ["catch"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R1 K2 ["Uid"]
       15 NAMECALL                         R2 R2 K3 ["removeItemAndUpdateRender"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["_itemsCache"]
       21 GETUPVAL                         R4 3
       22 GETUPVAL                         R5 2
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K5 ["removeScope"]
       26 CALL                             R2 -1 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K6 ["_explorerController"]
       30 GETUPVAL                         R4 2
       31 NAMECALL                         R2 R2 K7 ["handleDeletedFolder"]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K8 ["sendDeleteFolderEvent"]
       37 NEWTABLE                         R3 0 0
       39 DUPTABLE                         R4 K13 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K6 ["_explorerController"]
       43 SETTABLEKS                       R5 R4 K9 ["ExplorerController"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K14 ["_layoutController"]
       48 SETTABLEKS                       R5 R4 K10 ["LayoutController"]
       50 GETUPVAL                         R5 0
       51 SETTABLEKS                       R5 R4 K11 ["ItemsController"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K15 ["_searchController"]
       56 SETTABLEKS                       R5 R4 K12 ["SearchController"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

PROTO_85:
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

PROTO_86:
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
       17 NAMECALL                         R3 R3 K4 ["andThen"]
       19 CALL                             R3 2 1
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R3 R3 K5 ["catch"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_87:
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
       70 GETUPVAL                         R6 2
       71 CALL                             R6 0 1
       72 JUMPIFNOT                        R6 ; [+9]
       73 GETUPVAL                         R6 3
       74 MOVE                             R7 R4
       75 CALL                             R6 1 1
       76 JUMPIF                           R6 ; [+5]
       77 NAMECALL                         R6 R0 K17 ["selectionHasInsertableAssets"]
       79 CALL                             R6 1 1
       80 JUMPIF                           R6 ; [+1]
       81 RETURN                           R0 0
       82 GETTABLEKS                       R6 R0 K18 ["_analyticsState"]
       84 SETTABLEKS                       R1 R6 K19 ["Position"]
       86 GETTABLEKS                       R6 R0 K18 ["_analyticsState"]
       88 LOADK                            R7 K20 ["double_click"]
       89 SETTABLEKS                       R7 R6 K21 ["Action"]
       91 GETUPVAL                         R6 4
       92 CALL                             R6 0 1
       93 JUMPIFNOT                        R6 ; [+16]
       94 GETUPVAL                         R6 5
       95 GETTABLEKS                       R6 R6 K22 ["showSnackbar"]
       97 DUPTABLE                         R7 K25 [{"LocalizableMessage", "Type"}]
       98 DUPTABLE                         R8 K30 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
       99 SETTABLEKS                       R8 R7 K23 ["LocalizableMessage"]
      101 GETUPVAL                         R8 5
      102 GETTABLEKS                       R8 R8 K31 ["SnackbarType"]
      104 GETTABLEKS                       R8 R8 K32 ["Info"]
      106 SETTABLEKS                       R8 R7 K24 ["Type"]
      108 CALL                             R6 1 0
      109 JUMP                             ; [+7]
      110 DUPTABLE                         R6 K30 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      111 GETTABLEKS                       R7 R0 K33 ["_pluginController"]
      113 MOVE                             R9 R6
      114 NAMECALL                         R7 R7 K34 ["showToast"]
      116 CALL                             R7 2 0
      117 GETUPVAL                         R6 6
      118 MOVE                             R7 R0
      119 MOVE                             R8 R2
      120 GETTABLEKS                       R9 R0 K35 ["_networking"]
      122 CALL                             R6 3 0
      123 RETURN                           R0 0

PROTO_88:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_89:
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

PROTO_90:
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

PROTO_91:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_92:
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

PROTO_93:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R5 R2 K2 ["Uid"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K3 ["getItem"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_94:
        0 GETTABLEKS                       R3 R0 K0 ["_assetTechnicalDetails"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_95:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getItemInfo"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R2 K1 ["AssetType"]
        8 GETTABLE                         R3 R4 R5
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R3 R2 K2 ["AssetId"]
       12 JUMPIFEQKN                       R3 K3 [0] ; [+2]
       14 RETURN                           R2 1
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_96:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_97:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_98:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_assetTechnicalDetails"]
        9 GETUPVAL                         R2 1
       10 SETTABLE                         R0 R1 R2
       11 RETURN                           R0 1

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Error fetching asset technical details: %*"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["pretty"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 LOADK                            R3 K4 ["WARN"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_101:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_97]
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1
       11 GETTABLEKS                       R4 R0 K3 ["_assetTechnicalDetails"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["new"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R3
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R6 R2 K4 ["AssetType"]
       25 GETTABLE                         R4 R5 R6
       26 GETTABLEKS                       R5 R0 K5 ["_networking"]
       28 GETTABLEKS                       R6 R2 K6 ["AssetId"]
       30 CALL                             R4 2 1
       31 NEWCLOSURE                       R6 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 NAMECALL                         R4 R4 K7 ["andThen"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R4 R4 K8 ["catch"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

PROTO_102:
        0 GETTABLEKS                       R3 R0 K0 ["_assetSharing"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_103:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getItemInfo"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+31]
        5 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R3 R3 K2 ["Type"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["ScopeType"]
       13 GETTABLEKS                       R4 R4 K4 ["ProjectPlaces"]
       15 JUMPIFEQ                         R3 R4 ; [+20]
       17 GETTABLEKS                       R3 R2 K5 ["Source"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["AssetSource"]
       22 GETTABLEKS                       R4 R4 K7 ["Uploaded"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+11]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R4 R2 K8 ["AssetType"]
       29 CALL                             R3 1 1
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETTABLEKS                       R3 R2 K9 ["AssetId"]
       33 JUMPIFEQKN                       R3 K10 [0] ; [+2]
       35 RETURN                           R2 1
       36 LOADNIL                          R3
       37 RETURN                           R3 1

PROTO_104:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getSharingItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_105:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_106:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["_assetSharingEpoch"]
       10 JUMPIFEQ                         R1 R2 ; [+7]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R1 R1 K2 ["fetchAssetSharingAsync"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["_assetSharing"]
       21 GETUPVAL                         R2 2
       22 SETTABLE                         R0 R1 R2
       23 RETURN                           R0 1

PROTO_108:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Error fetching asset sharing: %*"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["pretty"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 LOADK                            R3 K4 ["WARN"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_109:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getSharingItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_105]
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1
       11 GETTABLEKS                       R4 R0 K3 ["_assetSharing"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["new"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R3
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1
       22 GETTABLEKS                       R4 R0 K4 ["_assetSharingEpoch"]
       24 GETTABLEKS                       R5 R0 K5 ["_networking"]
       26 GETTABLEKS                       R7 R2 K6 ["AssetId"]
       28 GETTABLEKS                       R8 R2 K7 ["Creator"]
       30 NAMECALL                         R5 R5 K8 ["fetchAssetPermissionsAsync"]
       32 CALL                             R5 3 1
       33 NEWCLOSURE                       R7 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R5 R5 K9 ["andThen"]
       39 CALL                             R5 2 1
       40 NEWCLOSURE                       R7 P3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R5 R5 K10 ["catch"]
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1

PROTO_110:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_assetSharing"]
        4 GETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        6 ADDK                             R1 R1 K2 [1]
        7 SETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        9 GETTABLEKS                       R1 R0 K3 ["OnAssetSharingChanged"]
       11 NAMECALL                         R1 R1 K4 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_111:
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

PROTO_112:
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
       24 GETTABLEKS                       R7 R2 K4 ["Uid"]
       26 MOVE                             R8 R3
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K5 ["AssetInfoField"]
       30 GETTABLEKS                       R9 R9 K8 ["VersionNumber"]
       32 NAMECALL                         R5 R1 K7 ["getData"]
       34 CALL                             R5 4 1
       35 NEWTABLE                         R6 0 0
       37 MOVE                             R7 R5
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R12 R12 K9 ["None"]
       44 JUMPIFEQ                         R11 R12 ; [+2]
       46 SETTABLE                         R11 R6 R10
       47 FORGLOOP                         R7 2 ; [-7]
       49 MOVE                             R7 R4
       50 MOVE                             R8 R6
       51 RETURN                           R7 2

PROTO_113:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_114:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_115:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_116:
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
       35 NAMECALL                         R4 R0 K8 ["_getIsSearchActive"]
       37 CALL                             R4 1 1
       38 JUMPIFNOT                        R4 ; [+75]
       39 GETTABLEKS                       R4 R0 K9 ["_searchController"]
       41 NAMECALL                         R4 R4 K10 ["getSearchOptions"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K11 ["ScopeInfo"]
       46 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
       48 GETTABLEKS                       R8 R5 K2 ["Uid"]
       50 NAMECALL                         R6 R6 K3 ["getScope"]
       52 CALL                             R6 2 1
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K12 ["Loading"]
       56 GETTABLEKS                       R7 R6 K13 ["PendingRequestChains"]
       58 ADDK                             R7 R7 K14 [1]
       59 SETTABLEKS                       R7 R6 K13 ["PendingRequestChains"]
       61 MOVE                             R9 R5
       62 NAMECALL                         R7 R0 K15 ["_getNewItemsHandler"]
       64 CALL                             R7 2 1
       65 MOVE                             R10 R5
       66 NAMECALL                         R8 R0 K16 ["_isPlacesSearch"]
       68 CALL                             R8 2 1
       69 JUMPIFNOT                        R8 ; [+16]
       70 GETTABLEKS                       R8 R0 K17 ["_networking"]
       72 MOVE                             R12 R5
       73 NAMECALL                         R10 R0 K18 ["_getPlacesRequestScope"]
       75 CALL                             R10 2 1
       76 GETTABLEKS                       R11 R6 K4 ["NextPageToken"]
       78 MOVE                             R12 R7
       79 NAMECALL                         R13 R0 K19 ["_getFetchErrorCallback"]
       81 CALL                             R13 1 -1
       82 NAMECALL                         R8 R8 K20 ["fetchAssetsAsync"]
       84 CALL                             R8 -1 0
       85 RETURN                           R0 0
       86 DUPTABLE                         R8 K23 [{"SearchTerm", "AssetTypes", "ScopeInfo"}]
       87 GETTABLEKS                       R9 R0 K9 ["_searchController"]
       89 NAMECALL                         R9 R9 K24 ["getActiveSearchTerm"]
       91 CALL                             R9 1 1
       92 SETTABLEKS                       R9 R8 K21 ["SearchTerm"]
       94 MOVE                             R11 R5
       95 NAMECALL                         R9 R0 K25 ["_getSearchAssetTypes"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K22 ["AssetTypes"]
      100 SETTABLEKS                       R5 R8 K11 ["ScopeInfo"]
      102 GETTABLEKS                       R9 R0 K17 ["_networking"]
      104 MOVE                             R11 R8
      105 GETTABLEKS                       R12 R6 K4 ["NextPageToken"]
      107 MOVE                             R13 R7
      108 GETTABLEKS                       R14 R0 K26 ["_fetchAssetsErrorCallback"]
      110 NAMECALL                         R9 R9 K27 ["searchAssetsAsync"]
      112 CALL                             R9 5 0
      113 RETURN                           R0 0
      114 GETTABLEKS                       R4 R0 K28 ["_pluginController"]
      116 NAMECALL                         R4 R4 K29 ["getCurrentScope"]
      118 CALL                             R4 1 1
      119 MOVE                             R7 R4
      120 NAMECALL                         R5 R0 K15 ["_getNewItemsHandler"]
      122 CALL                             R5 2 1
      123 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      125 GETTABLEKS                       R8 R4 K2 ["Uid"]
      127 NAMECALL                         R6 R6 K3 ["getScope"]
      129 CALL                             R6 2 1
      130 JUMPIF                           R6 ; [+7]
      131 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      133 GETTABLEKS                       R8 R4 K2 ["Uid"]
      135 NAMECALL                         R6 R6 K30 ["addScope"]
      137 CALL                             R6 2 1
      138 LOADB                            R7 1
      139 SETTABLEKS                       R7 R6 K12 ["Loading"]
      141 GETTABLEKS                       R7 R6 K13 ["PendingRequestChains"]
      143 ADDK                             R7 R7 K14 [1]
      144 SETTABLEKS                       R7 R6 K13 ["PendingRequestChains"]
      146 GETTABLEKS                       R7 R0 K17 ["_networking"]
      148 MOVE                             R9 R4
      149 GETTABLEKS                       R10 R6 K4 ["NextPageToken"]
      151 MOVE                             R11 R5
      152 GETTABLEKS                       R12 R0 K26 ["_fetchAssetsErrorCallback"]
      154 NAMECALL                         R7 R7 K20 ["fetchAssetsAsync"]
      156 CALL                             R7 5 0
      157 RETURN                           R0 0

PROTO_117:
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

PROTO_118:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K4 ["Uid"]
       16 NAMECALL                         R3 R0 K5 ["getSelection"]
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R0 K6 ["_itemsCache"]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R6
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K7 ["AssetInfoField"]
       27 GETTABLEKS                       R12 R12 K8 ["AssetType"]
       29 NAMECALL                         R8 R8 K9 ["getItemField"]
       31 CALL                             R8 4 1
       32 GETUPVAL                         R9 1
       33 MOVE                             R10 R8
       34 CALL                             R9 1 1
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADB                            R9 1
       37 RETURN                           R9 1
       38 FORGLOOP                         R3 2 ; [-19]
       40 LOADB                            R3 0
       41 RETURN                           R3 1

PROTO_119:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K4 ["Uid"]
       16 NAMECALL                         R3 R0 K5 ["getSelection"]
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R0 K6 ["_itemsCache"]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R6
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K7 ["AssetInfoField"]
       27 GETTABLEKS                       R12 R12 K8 ["DraftStatus"]
       29 NAMECALL                         R8 R8 K9 ["getItemField"]
       31 CALL                             R8 4 1
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K8 ["DraftStatus"]
       35 GETTABLEKS                       R9 R9 K10 ["Draft"]
       37 JUMPIFNOTEQ                      R8 R9 ; [+3]
       39 LOADB                            R9 1
       40 RETURN                           R9 1
       41 FORGLOOP                         R3 2 ; [-22]
       43 LOADB                            R3 0
       44 RETURN                           R3 1

PROTO_120:
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
       22 DUPTABLE                         R4 K8 [{"Ids", "Types", "Names", "IsPackage", "Creators"}]
       23 GETTABLEKS                       R5 R3 K3 ["Ids"]
       25 SETTABLEKS                       R5 R4 K3 ["Ids"]
       27 GETTABLEKS                       R5 R3 K4 ["Types"]
       29 SETTABLEKS                       R5 R4 K4 ["Types"]
       31 GETTABLEKS                       R5 R3 K5 ["Names"]
       33 SETTABLEKS                       R5 R4 K5 ["Names"]
       35 GETTABLEKS                       R5 R3 K6 ["IsPackage"]
       37 SETTABLEKS                       R5 R4 K6 ["IsPackage"]
       39 GETTABLEKS                       R5 R3 K7 ["Creators"]
       41 SETTABLEKS                       R5 R4 K7 ["Creators"]
       43 RETURN                           R4 1

PROTO_121:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getSelection"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R0 K2 ["getItemsCache"]
        9 CALL                             R4 1 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_122:
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

PROTO_123:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_124:
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

PROTO_125:
        0 NAMECALL                         R2 R0 K0 ["_isOmnisearchEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+19]
        4 NAMECALL                         R2 R0 K1 ["_getIsSearchActive"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+15]
        8 GETIMPORT                        R2 K4 [table.find]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["AssetInfoField"]
       14 GETTABLEKS                       R4 R4 K6 ["AssetType"]
       16 CALL                             R2 2 1
       17 JUMPIFEQKNIL                     R2 ; [+5]
       19 NAMECALL                         R2 R0 K7 ["_clearAndFetchSearchItems"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 NAMECALL                         R2 R0 K8 ["_createRenderItems"]
       25 CALL                             R2 1 0
       26 GETTABLEKS                       R2 R0 K9 ["OnSortFilterChanged"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R5 R0 K10 ["_sorts"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R6 R0 K11 ["_filters"]
       35 CALL                             R5 1 -1
       36 NAMECALL                         R2 R2 K12 ["Fire"]
       38 CALL                             R2 -1 0
       39 RETURN                           R0 0

PROTO_126:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_127:
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

PROTO_128:
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

PROTO_129:
        0 GETTABLEKS                       R2 R0 K0 ["_filters"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        5 GETTABLEKS                       R3 R3 K2 ["AssetType"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K0 ["_filters"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
       15 GETTABLEKS                       R2 R2 K2 ["AssetType"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R1 R2
       19 NEWTABLE                         R3 0 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R4 R4 K2 ["AssetType"]
       26 SETLIST                          R3 R4 1 [1]
       28 NAMECALL                         R1 R0 K3 ["_updateAfterFilterChanges"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_130:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_131:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["eventStart"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["BenchmarkingEvent"]
        6 GETTABLEKS                       R4 R4 K2 ["Filter"]
        8 CALL                             R3 1 0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K3 ["hasFilter"]
       13 CALL                             R3 3 1
       14 JUMPIFNOT                        R3 ; [+10]
       15 MOVE                             R5 R1
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R2
       19 SETLIST                          R6 R7 1 [1]
       21 NAMECALL                         R3 R0 K4 ["_removeFilter"]
       23 CALL                             R3 3 0
       24 JUMP                             ; [+8]
       25 MOVE                             R5 R1
       26 NEWTABLE                         R6 1 0
       28 LOADB                            R7 1
       29 SETTABLE                         R7 R6 R2
       30 NAMECALL                         R3 R0 K5 ["_addFilter"]
       32 CALL                             R3 3 0
       33 NEWTABLE                         R5 0 1
       35 MOVE                             R6 R1
       36 SETLIST                          R5 R6 1 [1]
       38 NAMECALL                         R3 R0 K6 ["_updateAfterFilterChanges"]
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K7 ["eventEnd"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K1 ["BenchmarkingEvent"]
       47 GETTABLEKS                       R4 R4 K2 ["Filter"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["eventStart"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
        6 GETTABLEKS                       R2 R2 K2 ["Filter"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R2 R0 K3 ["_filters"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["AssetInfoField"]
       14 GETTABLEKS                       R3 R3 K5 ["IsPackage"]
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETTABLEKS                       R1 R0 K3 ["_filters"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       23 GETTABLEKS                       R2 R2 K5 ["IsPackage"]
       25 LOADNIL                          R3
       26 SETTABLE                         R3 R1 R2
       27 JUMP                             ; [+9]
       28 GETTABLEKS                       R1 R0 K3 ["_filters"]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       33 GETTABLEKS                       R2 R2 K5 ["IsPackage"]
       35 LOADB                            R3 1
       36 SETTABLE                         R3 R1 R2
       37 NEWTABLE                         R3 0 1
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K4 ["AssetInfoField"]
       42 GETTABLEKS                       R4 R4 K5 ["IsPackage"]
       44 SETLIST                          R3 R4 1 [1]
       46 NAMECALL                         R1 R0 K6 ["_updateAfterFilterChanges"]
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K7 ["eventEnd"]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
       55 GETTABLEKS                       R2 R2 K2 ["Filter"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["eventStart"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
        6 GETTABLEKS                       R2 R2 K2 ["Filter"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["_filters"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
       14 GETTABLEKS                       R2 R2 K5 ["Archived"]
       16 GETTABLEKS                       R5 R0 K3 ["_filters"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["AssetInfoField"]
       21 GETTABLEKS                       R6 R6 K5 ["Archived"]
       23 GETTABLE                         R4 R5 R6
       24 NOT                              R3 R4
       25 SETTABLE                         R3 R1 R2
       26 NEWTABLE                         R3 0 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K4 ["AssetInfoField"]
       31 GETTABLEKS                       R4 R4 K5 ["Archived"]
       33 SETLIST                          R3 R4 1 [1]
       35 NAMECALL                         R1 R0 K6 ["_updateAfterFilterChanges"]
       37 CALL                             R1 2 0
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K7 ["eventEnd"]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K1 ["BenchmarkingEvent"]
       44 GETTABLEKS                       R2 R2 K2 ["Filter"]
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_134:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_filters"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K1 ["AssetInfoField"]
       10 GETTABLEKS                       R7 R7 K2 ["Archived"]
       12 JUMPIFNOTEQ                      R5 R7 ; [+3]
       14 JUMPIFEQKB                       R6 FALSE ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R5
       20 GETIMPORT                        R7 K5 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-17]
       25 NEWTABLE                         R2 1 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       30 GETTABLEKS                       R3 R3 K2 ["Archived"]
       32 LOADB                            R4 0
       33 SETTABLE                         R4 R2 R3
       34 SETTABLEKS                       R2 R0 K0 ["_filters"]
       36 MOVE                             R4 R1
       37 NAMECALL                         R2 R0 K6 ["_updateAfterFilterChanges"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_135:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_136:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateAfterSortChange"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["eventStart"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["BenchmarkingEvent"]
        6 GETTABLEKS                       R3 R3 K2 ["Sort"]
        8 CALL                             R2 1 0
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R0 K3 ["_sorts"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K4 ["Key"]
       17 JUMPIFNOTEQ                      R8 R1 ; [+11]
       19 GETTABLEKS                       R8 R7 K5 ["IsAscending"]
       21 NOT                              R2 R8
       22 GETIMPORT                        R8 K8 [table.remove]
       24 GETTABLEKS                       R9 R0 K3 ["_sorts"]
       26 MOVE                             R10 R6
       27 CALL                             R8 2 0
       28 JUMP                             ; [+2]
       29 FORGLOOP                         R3 2 ; [-15]
       31 DUPTABLE                         R3 K9 [{"Key", "IsAscending"}]
       32 SETTABLEKS                       R1 R3 K4 ["Key"]
       34 SETTABLEKS                       R2 R3 K5 ["IsAscending"]
       36 GETTABLEKS                       R5 R0 K3 ["_sorts"]
       38 LOADN                            R6 1
       39 FASTCALL3                        TABLE_INSERT R5 R6 R3
       41 MOVE                             R7 R3
       42 GETIMPORT                        R4 K11 [table.insert]
       44 CALL                             R4 3 0
       45 NAMECALL                         R4 R0 K12 ["_updateAfterSortChange"]
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K13 ["eventEnd"]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K1 ["BenchmarkingEvent"]
       54 GETTABLEKS                       R5 R5 K2 ["Sort"]
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

PROTO_138:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_139:
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

PROTO_140:
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

PROTO_141:
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

PROTO_142:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_143:
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

PROTO_144:
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

PROTO_145:
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
       33 JUMPIF                           R3 ; [+23]
       34 GETUPVAL                         R4 1
       35 LOADK                            R5 K11 ["Couldn't find asset ID for place path %* in cache, falling back to using path"]
       36 MOVE                             R7 R2
       37 NAMECALL                         R5 R5 K12 ["format"]
       39 CALL                             R5 2 1
       40 CALL                             R4 1 0
       41 GETIMPORT                        R5 K15 [string.match]
       43 MOVE                             R6 R2
       44 LOADK                            R7 K16 ["-(%d+)$"]
       45 CALL                             R5 2 -1
       46 FASTCALL                         TONUMBER ; [+2]
       47 GETIMPORT                        R4 K18 [tonumber]
       49 CALL                             R4 -1 1
       50 MOVE                             R3 R4
       51 JUMPIF                           R3 ; [+5]
       52 GETUPVAL                         R4 1
       53 LOADK                            R5 K19 ["Couldn't extract asset ID for this place, cannot rename place"]
       54 LOADK                            R6 K5 ["WARN"]
       55 CALL                             R4 2 0
       56 RETURN                           R0 0
       57 GETTABLEKS                       R4 R0 K20 ["_pluginController"]
       59 NAMECALL                         R4 R4 K21 ["getPlugin"]
       61 CALL                             R4 1 1
       62 LOADK                            R6 K22 ["OnRenamePlace"]
       63 DUPTABLE                         R7 K25 [{"Id", "Name"}]
       64 SETTABLEKS                       R3 R7 K23 ["Id"]
       66 SETTABLEKS                       R1 R7 K24 ["Name"]
       68 NAMECALL                         R4 R4 K26 ["Invoke"]
       70 CALL                             R4 3 0
       71 LOADNIL                          R6
       72 NAMECALL                         R4 R0 K27 ["setStagedEditItemPath"]
       74 CALL                             R4 2 0
       75 RETURN                           R0 0

PROTO_146:
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

PROTO_147:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_148:
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
       21 JUMPIF                           R9 ; [+9]
       22 GETUPVAL                         R10 0
       23 LOADK                            R11 K5 ["Could not find asset info for %*, skipping analytics for this item"]
       24 MOVE                             R13 R7
       25 NAMECALL                         R11 R11 K6 ["format"]
       27 CALL                             R11 2 1
       28 LOADK                            R12 K7 ["WARN"]
       29 CALL                             R10 2 0
       30 JUMP                             ; [+16]
       31 GETTABLEKS                       R12 R9 K8 ["AssetId"]
       33 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       35 MOVE                             R11 R2
       36 GETIMPORT                        R10 K11 [table.insert]
       38 CALL                             R10 2 0
       39 GETTABLEKS                       R12 R9 K12 ["AssetType"]
       41 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       43 MOVE                             R11 R1
       44 GETIMPORT                        R10 K11 [table.insert]
       46 CALL                             R10 2 0
       47 FORGLOOP                         R4 2 ; [-34]
       49 GETTABLEKS                       R6 R0 K13 ["_sorts"]
       51 LENGTH                           R5 R6
       52 LOADN                            R6 0
       53 JUMPIFNOTLT                      R6 R5 ; [+7]
       55 GETTABLEKS                       R5 R0 K13 ["_sorts"]
       57 GETTABLEN                        R4 R5 1
       58 GETTABLEKS                       R4 R4 K14 ["Key"]
       60 JUMP                             ; [+9]
       61 GETTABLEKS                       R5 R0 K15 ["_analyticsState"]
       63 GETTABLEKS                       R5 R5 K16 ["Source"]
       65 JUMPIFNOTEQKS                    R5 K17 ["search"] ; [+3]
       67 LOADK                            R4 K18 ["SearchRank"]
       68 JUMP                             ; [+1]
       69 LOADK                            R4 K19 [""]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K20 ["sendInsertEvent"]
       73 DUPTABLE                         R6 K30 [{"assetIds", "assetTypes", "insertType", "insertSource", "searchKeywords", "searchId", "filterTypes", "sortType", "position"}]
       74 SETTABLEKS                       R2 R6 K21 ["assetIds"]
       76 SETTABLEKS                       R1 R6 K22 ["assetTypes"]
       78 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       80 GETTABLEKS                       R7 R7 K31 ["Action"]
       82 SETTABLEKS                       R7 R6 K23 ["insertType"]
       84 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
       86 GETTABLEKS                       R7 R7 K16 ["Source"]
       88 SETTABLEKS                       R7 R6 K24 ["insertSource"]
       90 GETTABLEKS                       R7 R0 K32 ["_searchController"]
       92 NAMECALL                         R7 R7 K33 ["getActiveSearchTerm"]
       94 CALL                             R7 1 1
       95 SETTABLEKS                       R7 R6 K25 ["searchKeywords"]
       97 GETTABLEKS                       R7 R0 K32 ["_searchController"]
       99 NAMECALL                         R7 R7 K34 ["getSearchId"]
      101 CALL                             R7 1 1
      102 SETTABLEKS                       R7 R6 K26 ["searchId"]
      104 GETUPVAL                         R7 2
      105 GETTABLEKS                       R7 R7 K35 ["keys"]
      107 GETTABLEKS                       R8 R0 K36 ["_filters"]
      109 CALL                             R7 1 1
      110 SETTABLEKS                       R7 R6 K27 ["filterTypes"]
      112 SETTABLEKS                       R4 R6 K28 ["sortType"]
      114 GETTABLEKS                       R7 R0 K15 ["_analyticsState"]
      116 GETTABLEKS                       R7 R7 K37 ["Position"]
      118 SETTABLEKS                       R7 R6 K29 ["position"]
      120 DUPTABLE                         R7 K42 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
      121 GETTABLEKS                       R8 R0 K43 ["_explorerController"]
      123 SETTABLEKS                       R8 R7 K38 ["ExplorerController"]
      125 GETTABLEKS                       R8 R0 K44 ["_layoutController"]
      127 SETTABLEKS                       R8 R7 K39 ["LayoutController"]
      129 SETTABLEKS                       R0 R7 K40 ["ItemsController"]
      131 GETTABLEKS                       R8 R0 K32 ["_searchController"]
      133 SETTABLEKS                       R8 R7 K41 ["SearchController"]
      135 CALL                             R5 2 0
      136 RETURN                           R0 0

PROTO_149:
        0 NAMECALL                         R2 R0 K0 ["_getIsSearchActive"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R1 R0 K1 ["_searchController"]
        6 NAMECALL                         R1 R1 K2 ["getSearchOptions"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K3 ["ScopeInfo"]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K4 ["_pluginController"]
       14 NAMECALL                         R1 R1 K5 ["getCurrentScope"]
       16 CALL                             R1 1 1
       17 RETURN                           R1 1

PROTO_150:
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
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K7 ["Analytics"]
       36 GETTABLEKS                       R5 R5 K10 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K7 ["Analytics"]
       45 GETTABLEKS                       R6 R6 K11 ["Benchmarking"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Util"]
       54 GETTABLEKS                       R7 R7 K13 ["Notifications"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K14 ["Packages"]
       61 GETTABLEKS                       R8 R8 K15 ["Promise"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K14 ["Packages"]
       68 GETTABLEKS                       R9 R9 K16 ["Framework"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R8 K17 ["ContextServices"]
       73 GETTABLEKS                       R10 R9 K18 ["ContextItem"]
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K14 ["Packages"]
       79 GETTABLEKS                       R12 R12 K19 ["Dash"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R11 K20 ["copy"]
       84 GETTABLEKS                       R13 R11 K21 ["join"]
       86 GETTABLEKS                       R14 R11 K22 ["keys"]
       88 GETTABLEKS                       R15 R8 K12 ["Util"]
       90 GETTABLEKS                       R16 R15 K23 ["Signal"]
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R18 R0 K6 ["Src"]
       96 GETTABLEKS                       R18 R18 K24 ["Controllers"]
       98 GETTABLEKS                       R18 R18 K25 ["AudioPreviewManager"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R19 R0 K6 ["Src"]
      105 GETTABLEKS                       R19 R19 K24 ["Controllers"]
      107 GETTABLEKS                       R19 R19 K26 ["ItemsCache"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R20 R0 K6 ["Src"]
      114 GETTABLEKS                       R20 R20 K12 ["Util"]
      116 GETTABLEKS                       R20 R20 K27 ["cleanConnections"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K5 [require]
      121 GETTABLEKS                       R21 R0 K6 ["Src"]
      123 GETTABLEKS                       R21 R21 K12 ["Util"]
      125 GETTABLEKS                       R21 R21 K28 ["constructItemPath"]
      127 CALL                             R20 1 1
      128 GETIMPORT                        R21 K5 [require]
      130 GETTABLEKS                       R22 R0 K6 ["Src"]
      132 GETTABLEKS                       R22 R22 K12 ["Util"]
      134 GETTABLEKS                       R22 R22 K29 ["convertFolderItemToScope"]
      136 CALL                             R21 1 1
      137 GETIMPORT                        R22 K5 [require]
      139 GETTABLEKS                       R23 R0 K6 ["Src"]
      141 GETTABLEKS                       R23 R23 K12 ["Util"]
      143 GETTABLEKS                       R23 R23 K30 ["convertFolderResponseToItem"]
      145 CALL                             R22 1 1
      146 GETIMPORT                        R23 K5 [require]
      148 GETTABLEKS                       R24 R0 K6 ["Src"]
      150 GETTABLEKS                       R24 R24 K12 ["Util"]
      152 GETTABLEKS                       R24 R24 K31 ["convertToEngineAssetTypeEnum"]
      154 CALL                             R23 1 1
      155 GETIMPORT                        R24 K5 [require]
      157 GETTABLEKS                       R25 R0 K6 ["Src"]
      159 GETTABLEKS                       R25 R25 K12 ["Util"]
      161 GETTABLEKS                       R25 R25 K32 ["createAccountUidFromPath"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K5 [require]
      166 GETTABLEKS                       R26 R0 K6 ["Src"]
      168 GETTABLEKS                       R26 R26 K12 ["Util"]
      170 GETTABLEKS                       R26 R26 K33 ["createFolderUid"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K5 [require]
      175 GETTABLEKS                       R27 R0 K6 ["Src"]
      177 GETTABLEKS                       R27 R27 K12 ["Util"]
      179 GETTABLEKS                       R27 R27 K34 ["createScopeUid"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K5 [require]
      184 GETTABLEKS                       R28 R0 K6 ["Src"]
      186 GETTABLEKS                       R28 R28 K12 ["Util"]
      188 GETTABLEKS                       R28 R28 K35 ["DefaultSort"]
      190 CALL                             R27 1 1
      191 GETIMPORT                        R28 K5 [require]
      193 GETTABLEKS                       R29 R0 K6 ["Src"]
      195 GETTABLEKS                       R29 R29 K12 ["Util"]
      197 GETTABLEKS                       R29 R29 K36 ["getAssetInfosSlice"]
      199 CALL                             R28 1 1
      200 GETIMPORT                        R29 K5 [require]
      202 GETTABLEKS                       R30 R0 K6 ["Src"]
      204 GETTABLEKS                       R30 R30 K12 ["Util"]
      206 GETTABLEKS                       R30 R30 K37 ["getFolderErrorLocalizationKeys"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K5 [require]
      211 GETTABLEKS                       R31 R0 K6 ["Src"]
      213 GETTABLEKS                       R31 R31 K12 ["Util"]
      215 GETTABLEKS                       R31 R31 K38 ["getItemMoveBatches"]
      217 CALL                             R30 1 1
      218 GETIMPORT                        R31 K5 [require]
      220 GETTABLEKS                       R32 R0 K6 ["Src"]
      222 GETTABLEKS                       R32 R32 K12 ["Util"]
      224 GETTABLEKS                       R32 R32 K39 ["insertItems"]
      226 CALL                             R31 1 1
      227 GETIMPORT                        R32 K5 [require]
      229 GETTABLEKS                       R33 R0 K6 ["Src"]
      231 GETTABLEKS                       R33 R33 K12 ["Util"]
      233 GETTABLEKS                       R33 R33 K40 ["isInsertable"]
      235 CALL                             R32 1 1
      236 GETIMPORT                        R33 K5 [require]
      238 GETTABLEKS                       R34 R0 K6 ["Src"]
      240 GETTABLEKS                       R34 R34 K12 ["Util"]
      242 GETTABLEKS                       R34 R34 K41 ["isShareableAsset"]
      244 CALL                             R33 1 1
      245 GETIMPORT                        R34 K5 [require]
      247 GETTABLEKS                       R35 R0 K6 ["Src"]
      249 GETTABLEKS                       R35 R35 K12 ["Util"]
      251 GETTABLEKS                       R35 R35 K42 ["logIfDebug"]
      253 CALL                             R34 1 1
      254 GETIMPORT                        R35 K5 [require]
      256 GETTABLEKS                       R36 R0 K6 ["Src"]
      258 GETTABLEKS                       R36 R36 K43 ["Flags"]
      260 GETTABLEKS                       R36 R36 K44 ["getEFAssetManagerInventoryRefreshFeature"]
      262 CALL                             R35 1 1
      263 GETIMPORT                        R36 K5 [require]
      265 GETTABLEKS                       R37 R0 K6 ["Src"]
      267 GETTABLEKS                       R37 R37 K43 ["Flags"]
      269 GETTABLEKS                       R37 R37 K45 ["getFFlagAmrAddToExperience"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K5 [require]
      274 GETTABLEKS                       R38 R0 K6 ["Src"]
      276 GETTABLEKS                       R38 R38 K43 ["Flags"]
      278 GETTABLEKS                       R38 R38 K46 ["getFFlagDebugAmrAssetManagementControllerTest"]
      280 CALL                             R37 1 1
      281 GETIMPORT                        R38 K5 [require]
      283 GETTABLEKS                       R39 R0 K6 ["Src"]
      285 GETTABLEKS                       R39 R39 K43 ["Flags"]
      287 GETTABLEKS                       R39 R39 K47 ["getFFlagAmrEnableTextDocuments"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K5 [require]
      292 GETTABLEKS                       R40 R0 K6 ["Src"]
      294 GETTABLEKS                       R40 R40 K43 ["Flags"]
      296 GETTABLEKS                       R40 R40 K48 ["getFFlagAmrStudioToastsIntegration"]
      298 CALL                             R39 1 1
      299 GETIMPORT                        R40 K5 [require]
      301 GETTABLEKS                       R41 R0 K6 ["Src"]
      303 GETTABLEKS                       R41 R41 K43 ["Flags"]
      305 GETTABLEKS                       R41 R41 K49 ["getFFlagAmrOptimizeRenderListUpdates"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K5 [require]
      310 GETTABLEKS                       R42 R0 K6 ["Src"]
      312 GETTABLEKS                       R42 R42 K43 ["Flags"]
      314 GETTABLEKS                       R42 R42 K50 ["getFFlagAmrRemoveAssetManagerServiceDependency"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K5 [require]
      319 GETTABLEKS                       R43 R0 K6 ["Src"]
      321 GETTABLEKS                       R43 R43 K43 ["Flags"]
      323 GETTABLEKS                       R43 R43 K51 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      325 CALL                             R42 1 1
      326 GETIMPORT                        R43 K5 [require]
      328 GETTABLEKS                       R44 R0 K6 ["Src"]
      330 GETTABLEKS                       R44 R44 K43 ["Flags"]
      332 GETTABLEKS                       R44 R44 K52 ["getFFlagAmrShowInFolder"]
      334 CALL                             R43 1 1
      335 GETIMPORT                        R44 K5 [require]
      337 GETTABLEKS                       R45 R0 K6 ["Src"]
      339 GETTABLEKS                       R45 R45 K43 ["Flags"]
      341 GETTABLEKS                       R45 R45 K53 ["getFFlagAmrAssetDetailView"]
      343 CALL                             R44 1 1
      344 LOADK                            R47 K54 ["ItemsController"]
      345 NAMECALL                         R45 R10 K55 ["extend"]
      347 CALL                             R45 2 1
      348 DUPCLOSURE                       R46 K56 [PROTO_0]
      349 NEWTABLE                         R47 8 0
      351 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      353 GETTABLEKS                       R48 R48 K58 ["Animation"]
      355 SETTABLE                         R46 R47 R48
      356 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      358 GETTABLEKS                       R48 R48 K59 ["Audio"]
      360 SETTABLE                         R46 R47 R48
      361 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      363 GETTABLEKS                       R48 R48 K60 ["Decal"]
      365 SETTABLE                         R46 R47 R48
      366 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      368 GETTABLEKS                       R48 R48 K61 ["FontFamily"]
      370 SETTABLE                         R46 R47 R48
      371 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      373 GETTABLEKS                       R48 R48 K62 ["MeshPart"]
      375 SETTABLE                         R46 R47 R48
      376 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      378 GETTABLEKS                       R48 R48 K63 ["Model"]
      380 SETTABLE                         R46 R47 R48
      381 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      383 GETTABLEKS                       R48 R48 K64 ["Plugin"]
      385 SETTABLE                         R46 R47 R48
      386 GETTABLEKS                       R48 R3 K57 ["AssetType"]
      388 GETTABLEKS                       R48 R48 K65 ["Video"]
      390 SETTABLE                         R46 R47 R48
      391 DUPCLOSURE                       R48 K66 [PROTO_1]
      392 CAPTURE                          VAL R34
      393 CAPTURE                          VAL R32
      394 CAPTURE                          VAL R23
      395 CAPTURE                          VAL R42
      396 DUPCLOSURE                       R49 K67 [PROTO_20]
      397 CAPTURE                          VAL R17
      398 CAPTURE                          VAL R18
      399 CAPTURE                          VAL R3
      400 CAPTURE                          VAL R27
      401 CAPTURE                          VAL R16
      402 CAPTURE                          VAL R45
      403 CAPTURE                          VAL R44
      404 CAPTURE                          VAL R34
      405 CAPTURE                          VAL R11
      406 CAPTURE                          VAL R5
      407 CAPTURE                          VAL R4
      408 CAPTURE                          VAL R43
      409 CAPTURE                          VAL R41
      410 CAPTURE                          VAL R20
      411 CAPTURE                          VAL R40
      412 CAPTURE                          VAL R36
      413 CAPTURE                          VAL R2
      414 CAPTURE                          VAL R1
      415 CAPTURE                          VAL R35
      416 CAPTURE                          VAL R37
      417 SETTABLEKS                       R49 R45 K68 ["new"]
      419 DUPCLOSURE                       R49 K69 [PROTO_21]
      420 CAPTURE                          VAL R45
      421 SETTABLEKS                       R49 R45 K70 ["mock"]
      423 DUPCLOSURE                       R49 K71 [PROTO_22]
      424 SETTABLEKS                       R49 R45 K72 ["getIsMock"]
      426 DUPCLOSURE                       R49 K73 [PROTO_23]
      427 CAPTURE                          VAL R19
      428 SETTABLEKS                       R49 R45 K74 ["destroy"]
      430 DUPCLOSURE                       R49 K75 [PROTO_24]
      431 CAPTURE                          VAL R3
      432 SETTABLEKS                       R49 R45 K76 ["_isOmnisearchEnabled"]
      434 DUPCLOSURE                       R49 K77 [PROTO_25]
      435 SETTABLEKS                       R49 R45 K78 ["_getIsSearchActive"]
      437 DUPCLOSURE                       R49 K79 [PROTO_26]
      438 CAPTURE                          VAL R3
      439 SETTABLEKS                       R49 R45 K80 ["_isPlacesSearch"]
      441 DUPCLOSURE                       R49 K81 [PROTO_27]
      442 CAPTURE                          VAL R3
      443 CAPTURE                          VAL R26
      444 SETTABLEKS                       R49 R45 K82 ["_getPlacesRequestScope"]
      446 DUPCLOSURE                       R49 K83 [PROTO_28]
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R13
      449 CAPTURE                          VAL R39
      450 CAPTURE                          VAL R6
      451 SETTABLEKS                       R49 R45 K84 ["_handleOnAddToGame"]
      453 DUPCLOSURE                       R49 K85 [PROTO_30]
      454 CAPTURE                          VAL R5
      455 CAPTURE                          VAL R4
      456 CAPTURE                          VAL R2
      457 SETTABLEKS                       R49 R45 K86 ["_getNewItemsHandler"]
      459 DUPCLOSURE                       R49 K87 [PROTO_31]
      460 SETTABLEKS                       R49 R45 K88 ["_refreshScopeInPlace"]
      462 DUPCLOSURE                       R49 K89 [PROTO_33]
      463 SETTABLEKS                       R49 R45 K90 ["_scheduleDebouncedRefresh"]
      465 DUPCLOSURE                       R49 K91 [PROTO_34]
      466 CAPTURE                          VAL R25
      467 CAPTURE                          VAL R24
      468 DUPCLOSURE                       R50 K92 [PROTO_35]
      469 CAPTURE                          VAL R25
      470 CAPTURE                          VAL R24
      471 SETTABLEKS                       R50 R45 K93 ["_handleCreatorInventoryRefresh"]
      473 DUPCLOSURE                       R50 K94 [PROTO_36]
      474 CAPTURE                          VAL R3
      475 SETTABLEKS                       R50 R45 K95 ["_getSearchAssetTypes"]
      477 DUPCLOSURE                       R50 K96 [PROTO_37]
      478 SETTABLEKS                       R50 R45 K97 ["_createRenderItems"]
      480 DUPCLOSURE                       R50 K98 [PROTO_38]
      481 SETTABLEKS                       R50 R45 K99 ["_updateRenderItems"]
      483 DUPCLOSURE                       R50 K100 [PROTO_39]
      484 SETTABLEKS                       R50 R45 K101 ["_tryRevealPendingItem"]
      486 DUPCLOSURE                       R50 K102 [PROTO_40]
      487 CAPTURE                          VAL R2
      488 SETTABLEKS                       R50 R45 K103 ["clearRecent"]
      490 DUPCLOSURE                       R50 K104 [PROTO_42]
      491 CAPTURE                          VAL R2
      492 CAPTURE                          VAL R39
      493 CAPTURE                          VAL R6
      494 SETTABLEKS                       R50 R45 K105 ["_getFetchErrorCallback"]
      496 DUPCLOSURE                       R50 K106 [PROTO_43]
      497 CAPTURE                          VAL R27
      498 SETTABLEKS                       R50 R45 K107 ["_startNewScopeFetch"]
      500 DUPCLOSURE                       R50 K108 [PROTO_44]
      501 SETTABLEKS                       R50 R45 K109 ["_clearItems"]
      503 DUPCLOSURE                       R50 K110 [PROTO_45]
      504 SETTABLEKS                       R50 R45 K111 ["getSearchFolderCount"]
      506 DUPCLOSURE                       R50 K112 [PROTO_46]
      507 SETTABLEKS                       R50 R45 K113 ["setShowAllSearchFolders"]
      509 DUPCLOSURE                       R50 K114 [PROTO_47]
      510 SETTABLEKS                       R50 R45 K115 ["getShowAllSearchFolders"]
      512 DUPCLOSURE                       R50 K116 [PROTO_48]
      513 CAPTURE                          VAL R12
      514 CAPTURE                          VAL R27
      515 SETTABLEKS                       R50 R45 K117 ["_handleOnIsSearchInitiatedChanged"]
      517 DUPCLOSURE                       R50 K118 [PROTO_49]
      518 CAPTURE                          VAL R12
      519 CAPTURE                          VAL R27
      520 SETTABLEKS                       R50 R45 K119 ["_handleOnIsSearchRequestedChanged"]
      522 DUPCLOSURE                       R50 K120 [PROTO_50]
      523 CAPTURE                          VAL R12
      524 CAPTURE                          VAL R3
      525 SETTABLEKS                       R50 R45 K121 ["_clearAndFetchSearchItems"]
      527 DUPCLOSURE                       R50 K122 [PROTO_51]
      528 CAPTURE                          VAL R27
      529 CAPTURE                          VAL R3
      530 CAPTURE                          VAL R5
      531 CAPTURE                          VAL R4
      532 SETTABLEKS                       R50 R45 K123 ["refreshItems"]
      534 DUPCLOSURE                       R50 K124 [PROTO_52]
      535 SETTABLEKS                       R50 R45 K125 ["refreshAll"]
      537 DUPCLOSURE                       R50 K126 [PROTO_53]
      538 CAPTURE                          VAL R40
      539 SETTABLEKS                       R50 R45 K127 ["removeItemAndUpdateRender"]
      541 DUPCLOSURE                       R50 K128 [PROTO_54]
      542 CAPTURE                          VAL R3
      543 SETTABLEKS                       R50 R45 K129 ["renameItemAndUpdateRender"]
      545 DUPCLOSURE                       R50 K130 [PROTO_55]
      546 CAPTURE                          VAL R11
      547 SETTABLEKS                       R50 R45 K131 ["getDraggedItems"]
      549 DUPCLOSURE                       R50 K132 [PROTO_56]
      550 CAPTURE                          VAL R25
      551 CAPTURE                          VAL R34
      552 CAPTURE                          VAL R21
      553 SETTABLEKS                       R50 R45 K133 ["_goToFolder"]
      555 DUPCLOSURE                       R50 K134 [PROTO_62]
      556 CAPTURE                          VAL R39
      557 CAPTURE                          VAL R6
      558 CAPTURE                          VAL R24
      559 CAPTURE                          VAL R34
      560 CAPTURE                          VAL R26
      561 CAPTURE                          VAL R3
      562 CAPTURE                          VAL R22
      563 CAPTURE                          VAL R21
      564 CAPTURE                          VAL R11
      565 SETTABLEKS                       R50 R45 K135 ["showItemInFolder"]
      567 DUPCLOSURE                       R50 K136 [PROTO_63]
      568 SETTABLEKS                       R50 R45 K137 ["_revealItemInScope"]
      570 DUPCLOSURE                       R50 K138 [PROTO_64]
      571 SETTABLEKS                       R50 R45 K139 ["getLastUsedFolderName"]
      573 DUPCLOSURE                       R50 K140 [PROTO_65]
      574 CAPTURE                          VAL R3
      575 CAPTURE                          VAL R34
      576 DUPCLOSURE                       R51 K141 [PROTO_66]
      577 SETTABLEKS                       R51 R45 K142 ["_updateLastUsedFolder"]
      579 DUPCLOSURE                       R51 K143 [PROTO_67]
      580 CAPTURE                          VAL R50
      581 CAPTURE                          VAL R3
      582 SETTABLEKS                       R51 R45 K144 ["requestMoveSelectionToItem"]
      584 DUPCLOSURE                       R51 K145 [PROTO_71]
      585 CAPTURE                          VAL R2
      586 CAPTURE                          VAL R25
      587 CAPTURE                          VAL R7
      588 CAPTURE                          VAL R39
      589 CAPTURE                          VAL R6
      590 SETTABLEKS                       R51 R45 K146 ["_requestMoveFromSearch"]
      592 DUPCLOSURE                       R51 K147 [PROTO_74]
      593 CAPTURE                          VAL R3
      594 CAPTURE                          VAL R30
      595 CAPTURE                          VAL R39
      596 CAPTURE                          VAL R6
      597 CAPTURE                          VAL R25
      598 CAPTURE                          VAL R21
      599 CAPTURE                          VAL R34
      600 CAPTURE                          VAL R1
      601 CAPTURE                          VAL R29
      602 SETTABLEKS                       R51 R45 K148 ["_requestMoveItems"]
      604 DUPCLOSURE                       R51 K149 [PROTO_78]
      605 CAPTURE                          VAL R34
      606 CAPTURE                          VAL R21
      607 CAPTURE                          VAL R3
      608 CAPTURE                          VAL R11
      609 CAPTURE                          VAL R1
      610 CAPTURE                          VAL R29
      611 CAPTURE                          VAL R39
      612 CAPTURE                          VAL R6
      613 SETTABLEKS                       R51 R45 K150 ["_requestCreateFolder"]
      615 DUPCLOSURE                       R51 K151 [PROTO_81]
      616 CAPTURE                          VAL R3
      617 CAPTURE                          VAL R1
      618 CAPTURE                          VAL R39
      619 CAPTURE                          VAL R6
      620 SETTABLEKS                       R51 R45 K152 ["_requestRenameFolder"]
      622 DUPCLOSURE                       R51 K153 [PROTO_82]
      623 SETTABLEKS                       R51 R45 K154 ["uploadStagedFolder"]
      625 DUPCLOSURE                       R51 K155 [PROTO_83]
      626 CAPTURE                          VAL R21
      627 SETTABLEKS                       R51 R45 K156 ["uploadStagedFolderPath"]
      629 DUPCLOSURE                       R51 K157 [PROTO_86]
      630 CAPTURE                          VAL R25
      631 CAPTURE                          VAL R1
      632 CAPTURE                          VAL R2
      633 CAPTURE                          VAL R39
      634 CAPTURE                          VAL R6
      635 SETTABLEKS                       R51 R45 K158 ["requestDeleteFolder"]
      637 DUPCLOSURE                       R51 K159 [PROTO_87]
      638 CAPTURE                          VAL R3
      639 CAPTURE                          VAL R11
      640 CAPTURE                          VAL R38
      641 CAPTURE                          VAL R32
      642 CAPTURE                          VAL R39
      643 CAPTURE                          VAL R6
      644 CAPTURE                          VAL R31
      645 SETTABLEKS                       R51 R45 K160 ["handleDoubleClick"]
      647 DUPCLOSURE                       R51 K161 [PROTO_88]
      648 SETTABLEKS                       R51 R45 K162 ["setLastItemClicked"]
      650 DUPCLOSURE                       R51 K163 [PROTO_89]
      651 CAPTURE                          VAL R28
      652 SETTABLEKS                       R51 R45 K164 ["changeSelection"]
      654 DUPCLOSURE                       R51 K165 [PROTO_90]
      655 SETTABLEKS                       R51 R45 K166 ["moveSelection"]
      657 DUPCLOSURE                       R51 K167 [PROTO_91]
      658 SETTABLEKS                       R51 R45 K168 ["syncSelectionIndices"]
      660 DUPCLOSURE                       R51 K169 [PROTO_92]
      661 CAPTURE                          VAL R11
      662 SETTABLEKS                       R51 R45 K170 ["getSingleItemSelected"]
      664 DUPCLOSURE                       R51 K171 [PROTO_93]
      665 SETTABLEKS                       R51 R45 K172 ["getItemInfo"]
      667 DUPCLOSURE                       R51 K173 [PROTO_94]
      668 SETTABLEKS                       R51 R45 K174 ["getAssetTechnicalDetails"]
      670 DUPCLOSURE                       R51 K175 [PROTO_95]
      671 CAPTURE                          VAL R47
      672 SETTABLEKS                       R51 R45 K176 ["_getTechnicalDetailsItem"]
      674 DUPCLOSURE                       R51 K177 [PROTO_96]
      675 SETTABLEKS                       R51 R45 K178 ["canFetchAssetTechnicalDetails"]
      677 DUPCLOSURE                       R51 K179 [PROTO_101]
      678 CAPTURE                          VAL R7
      679 CAPTURE                          VAL R47
      680 CAPTURE                          VAL R34
      681 CAPTURE                          VAL R11
      682 SETTABLEKS                       R51 R45 K180 ["fetchAssetTechnicalDetailsAsync"]
      684 DUPCLOSURE                       R51 K181 [PROTO_102]
      685 SETTABLEKS                       R51 R45 K182 ["getAssetSharing"]
      687 DUPCLOSURE                       R51 K183 [PROTO_103]
      688 CAPTURE                          VAL R3
      689 CAPTURE                          VAL R33
      690 SETTABLEKS                       R51 R45 K184 ["_getSharingItem"]
      692 DUPCLOSURE                       R51 K185 [PROTO_104]
      693 SETTABLEKS                       R51 R45 K186 ["canFetchAssetSharing"]
      695 DUPCLOSURE                       R51 K187 [PROTO_109]
      696 CAPTURE                          VAL R7
      697 CAPTURE                          VAL R34
      698 CAPTURE                          VAL R11
      699 SETTABLEKS                       R51 R45 K188 ["fetchAssetSharingAsync"]
      701 DUPCLOSURE                       R51 K189 [PROTO_110]
      702 SETTABLEKS                       R51 R45 K190 ["_invalidateAssetSharing"]
      704 DUPCLOSURE                       R51 K191 [PROTO_111]
      705 CAPTURE                          VAL R11
      706 CAPTURE                          VAL R3
      707 SETTABLEKS                       R51 R45 K192 ["DEPRECATED_getSelectionIdsHelper"]
      709 DUPCLOSURE                       R51 K193 [PROTO_112]
      710 CAPTURE                          VAL R11
      711 CAPTURE                          VAL R3
      712 SETTABLEKS                       R51 R45 K194 ["getSelectionIdsAndVersions"]
      714 DUPCLOSURE                       R51 K195 [PROTO_113]
      715 SETTABLEKS                       R51 R45 K196 ["getAudioPreviewManager"]
      717 DUPCLOSURE                       R51 K197 [PROTO_114]
      718 SETTABLEKS                       R51 R45 K198 ["getItemsCache"]
      720 DUPCLOSURE                       R51 K199 [PROTO_115]
      721 SETTABLEKS                       R51 R45 K200 ["getRenderItems"]
      723 DUPCLOSURE                       R51 K201 [PROTO_116]
      724 CAPTURE                          VAL R3
      725 SETTABLEKS                       R51 R45 K202 ["requestNextPage"]
      727 DUPCLOSURE                       R51 K203 [PROTO_117]
      728 CAPTURE                          VAL R3
      729 CAPTURE                          VAL R32
      730 SETTABLEKS                       R51 R45 K204 ["selectionHasInsertableAssets"]
      732 DUPCLOSURE                       R51 K205 [PROTO_118]
      733 CAPTURE                          VAL R3
      734 CAPTURE                          VAL R33
      735 SETTABLEKS                       R51 R45 K206 ["selectionHasShareableAssets"]
      737 DUPCLOSURE                       R51 K207 [PROTO_119]
      738 CAPTURE                          VAL R3
      739 SETTABLEKS                       R51 R45 K208 ["selectionHasDraftAssets"]
      741 DUPCLOSURE                       R51 K209 [PROTO_120]
      742 CAPTURE                          VAL R48
      743 SETTABLEKS                       R51 R45 K210 ["getInsertDataForDrag"]
      745 DUPCLOSURE                       R51 K211 [PROTO_121]
      746 CAPTURE                          VAL R48
      747 SETTABLEKS                       R51 R45 K212 ["getInsertData"]
      749 DUPCLOSURE                       R51 K213 [PROTO_122]
      750 CAPTURE                          VAL R3
      751 SETTABLEKS                       R51 R45 K214 ["getAssetTypes"]
      753 DUPCLOSURE                       R51 K215 [PROTO_123]
      754 CAPTURE                          VAL R14
      755 SETTABLEKS                       R51 R45 K216 ["getCreators"]
      757 DUPCLOSURE                       R51 K217 [PROTO_124]
      758 CAPTURE                          VAL R12
      759 SETTABLEKS                       R51 R45 K218 ["_updateAfterSortChange"]
      761 DUPCLOSURE                       R51 K219 [PROTO_125]
      762 CAPTURE                          VAL R3
      763 CAPTURE                          VAL R12
      764 SETTABLEKS                       R51 R45 K220 ["_updateAfterFilterChanges"]
      766 DUPCLOSURE                       R51 K221 [PROTO_126]
      767 SETTABLEKS                       R51 R45 K222 ["getFilters"]
      769 DUPCLOSURE                       R51 K223 [PROTO_127]
      770 CAPTURE                          VAL R13
      771 SETTABLEKS                       R51 R45 K224 ["_addFilter"]
      773 DUPCLOSURE                       R51 K225 [PROTO_128]
      774 SETTABLEKS                       R51 R45 K226 ["_removeFilter"]
      776 DUPCLOSURE                       R51 K227 [PROTO_129]
      777 CAPTURE                          VAL R3
      778 SETTABLEKS                       R51 R45 K228 ["_clearAssetTypeFilter"]
      780 DUPCLOSURE                       R51 K229 [PROTO_130]
      781 SETTABLEKS                       R51 R45 K230 ["hasFilter"]
      783 DUPCLOSURE                       R51 K231 [PROTO_131]
      784 CAPTURE                          VAL R5
      785 CAPTURE                          VAL R4
      786 SETTABLEKS                       R51 R45 K232 ["toggleFilter"]
      788 DUPCLOSURE                       R51 K233 [PROTO_132]
      789 CAPTURE                          VAL R5
      790 CAPTURE                          VAL R4
      791 CAPTURE                          VAL R3
      792 SETTABLEKS                       R51 R45 K234 ["togglePackagesFilter"]
      794 DUPCLOSURE                       R51 K235 [PROTO_133]
      795 CAPTURE                          VAL R5
      796 CAPTURE                          VAL R4
      797 CAPTURE                          VAL R3
      798 SETTABLEKS                       R51 R45 K236 ["toggleArchivedFilter"]
      800 DUPCLOSURE                       R51 K237 [PROTO_134]
      801 CAPTURE                          VAL R3
      802 SETTABLEKS                       R51 R45 K238 ["clearFilters"]
      804 DUPCLOSURE                       R51 K239 [PROTO_135]
      805 SETTABLEKS                       R51 R45 K240 ["getSorts"]
      807 DUPCLOSURE                       R51 K241 [PROTO_136]
      808 SETTABLEKS                       R51 R45 K242 ["setSorts"]
      810 DUPCLOSURE                       R51 K243 [PROTO_137]
      811 CAPTURE                          VAL R5
      812 CAPTURE                          VAL R4
      813 SETTABLEKS                       R51 R45 K244 ["addSort"]
      815 DUPCLOSURE                       R51 K245 [PROTO_138]
      816 SETTABLEKS                       R51 R45 K246 ["getSelection"]
      818 DUPCLOSURE                       R51 K247 [PROTO_139]
      819 SETTABLEKS                       R51 R45 K248 ["setSelection"]
      821 DUPCLOSURE                       R51 K249 [PROTO_140]
      822 CAPTURE                          VAL R12
      823 SETTABLEKS                       R51 R45 K250 ["modifySelection"]
      825 DUPCLOSURE                       R51 K251 [PROTO_141]
      826 SETTABLEKS                       R51 R45 K252 ["handleRightClick"]
      828 DUPCLOSURE                       R51 K253 [PROTO_142]
      829 SETTABLEKS                       R51 R45 K254 ["getStagedEditItemPath"]
      831 DUPCLOSURE                       R51 K255 [PROTO_143]
      832 SETTABLEKS                       R51 R45 K256 ["setStagedEditItemPath"]
      834 DUPCLOSURE                       R51 K257 [PROTO_144]
      835 SETTABLEKS                       R51 R45 K258 ["removeStagedItem"]
      837 DUPCLOSURE                       R51 K259 [PROTO_145]
      838 CAPTURE                          VAL R3
      839 CAPTURE                          VAL R34
      840 SETTABLEKS                       R51 R45 K260 ["renamePlace"]
      842 DUPCLOSURE                       R51 K261 [PROTO_146]
      843 CAPTURE                          VAL R3
      844 SETTABLEKS                       R51 R45 K262 ["stageNewFolder"]
      846 DUPCLOSURE                       R51 K263 [PROTO_147]
      847 SETTABLEKS                       R51 R45 K264 ["setAnalyticsInsertAction"]
      849 DUPCLOSURE                       R51 K265 [PROTO_148]
      850 CAPTURE                          VAL R34
      851 CAPTURE                          VAL R1
      852 CAPTURE                          VAL R11
      853 SETTABLEKS                       R51 R45 K266 ["sendInsertToAnalytics"]
      855 DUPCLOSURE                       R51 K267 [PROTO_149]
      856 SETTABLEKS                       R51 R45 K268 ["getCurrentShownScope"]
      858 DUPCLOSURE                       R51 K269 [PROTO_150]
      859 SETTABLEKS                       R51 R45 K270 ["getPlugin"]
      861 RETURN                           R45 1
