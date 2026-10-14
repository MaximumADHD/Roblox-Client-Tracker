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
      113 LOADB                            R3 0
      114 SETTABLEKS                       R3 R2 K45 ["_showAllSearchFolders"]
      116 LOADN                            R3 0
      117 SETTABLEKS                       R3 R2 K46 ["_searchFolderCount"]
      119 LOADNIL                          R3
      120 SETTABLEKS                       R3 R2 K47 ["_savedSorts"]
      122 LOADNIL                          R3
      123 SETTABLEKS                       R3 R2 K48 ["_savedFilters"]
      125 DUPTABLE                         R3 K55 [{["Action"] = "double_click", ["Source"] = "browse", ["Position"] = 0}]
      126 SETTABLEKS                       R3 R2 K56 ["_analyticsState"]
      128 NEWTABLE                         R3 0 0
      130 SETTABLEKS                       R3 R2 K57 ["_connections"]
      132 NEWTABLE                         R3 0 0
      134 SETTABLEKS                       R3 R2 K58 ["_refreshDebounceTimers"]
      136 NEWTABLE                         R3 0 0
      138 SETTABLEKS                       R3 R2 K59 ["_assetTechnicalDetails"]
      140 NEWTABLE                         R3 0 0
      142 SETTABLEKS                       R3 R2 K60 ["_assetSharing"]
      144 LOADN                            R3 0
      145 SETTABLEKS                       R3 R2 K61 ["_assetSharingEpoch"]
      147 GETUPVAL                         R3 4
      148 GETTABLEKS                       R3 R3 K15 ["new"]
      150 CALL                             R3 0 1
      151 SETTABLEKS                       R3 R2 K62 ["OnVisiblePropertiesChanged"]
      153 GETUPVAL                         R3 4
      154 GETTABLEKS                       R3 R3 K15 ["new"]
      156 CALL                             R3 0 1
      157 SETTABLEKS                       R3 R2 K63 ["OnItemsChanged"]
      159 GETUPVAL                         R3 4
      160 GETTABLEKS                       R3 R3 K15 ["new"]
      162 CALL                             R3 0 1
      163 SETTABLEKS                       R3 R2 K64 ["OnItemSelectionChanged"]
      165 GETUPVAL                         R3 4
      166 GETTABLEKS                       R3 R3 K15 ["new"]
      168 CALL                             R3 0 1
      169 SETTABLEKS                       R3 R2 K65 ["OnSortFilterChanged"]
      171 GETUPVAL                         R3 4
      172 GETTABLEKS                       R3 R3 K15 ["new"]
      174 CALL                             R3 0 1
      175 SETTABLEKS                       R3 R2 K66 ["OnCreatorsChanged"]
      177 GETUPVAL                         R3 4
      178 GETTABLEKS                       R3 R3 K15 ["new"]
      180 CALL                             R3 0 1
      181 SETTABLEKS                       R3 R2 K67 ["OnScopeFetchProgressChanged"]
      183 GETUPVAL                         R3 4
      184 GETTABLEKS                       R3 R3 K15 ["new"]
      186 CALL                             R3 0 1
      187 SETTABLEKS                       R3 R2 K68 ["OnSearchFolderCountChanged"]
      189 GETUPVAL                         R3 4
      190 GETTABLEKS                       R3 R3 K15 ["new"]
      192 CALL                             R3 0 1
      193 SETTABLEKS                       R3 R2 K69 ["OnStagedEditItemPathChanged"]
      195 GETUPVAL                         R3 4
      196 GETTABLEKS                       R3 R3 K15 ["new"]
      198 CALL                             R3 0 1
      199 SETTABLEKS                       R3 R2 K70 ["OnAssetSharingChanged"]
      201 GETUPVAL                         R5 5
      202 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      204 MOVE                             R4 R2
      205 GETIMPORT                        R3 K72 [setmetatable]
      207 CALL                             R3 2 0
      208 GETIMPORT                        R3 K74 [pcall]
      210 NEWCLOSURE                       R4 P0
      211 CAPTURE                          VAL R2
      212 CALL                             R3 1 2
      213 JUMPIFNOT                        R3 ; [+14]
      214 JUMPIFNOT                        R4 ; [+13]
      215 GETTABLEKS                       R6 R2 K57 ["_connections"]
      217 GETTABLEKS                       R7 R4 K75 ["PlaceDocPanelClosed"]
      219 NEWCLOSURE                       R9 P1
      220 CAPTURE                          VAL R2
      221 NAMECALL                         R7 R7 K76 ["Connect"]
      223 CALL                             R7 2 -1
      224 FASTCALL                         TABLE_INSERT ; [+2]
      225 GETIMPORT                        R5 K79 [table.insert]
      227 CALL                             R5 -1 0
      228 GETUPVAL                         R5 6
      229 CALL                             R5 0 1
      230 JUMPIFNOT                        R5 ; [+15]
      231 GETTABLEKS                       R6 R2 K57 ["_connections"]
      233 GETTABLEKS                       R7 R2 K11 ["_networking"]
      235 GETTABLEKS                       R7 R7 K80 ["OnAssetPermissionsChanged"]
      237 NEWCLOSURE                       R9 P2
      238 CAPTURE                          VAL R2
      239 NAMECALL                         R7 R7 K76 ["Connect"]
      241 CALL                             R7 2 -1
      242 FASTCALL                         TABLE_INSERT ; [+2]
      243 GETIMPORT                        R5 K79 [table.insert]
      245 CALL                             R5 -1 0
      246 DUPCLOSURE                       R5 K81 [PROTO_5]
      247 CAPTURE                          UPVAL U7
      248 CAPTURE                          UPVAL U8
      249 SETTABLEKS                       R5 R2 K82 ["_fetchAssetsErrorCallback"]
      251 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      253 NAMECALL                         R5 R5 K83 ["getCurrentScope"]
      255 CALL                             R5 1 1
      256 GETUPVAL                         R6 9
      257 CALL                             R6 0 1
      258 JUMPIFNOT                        R6 ; [+12]
      259 GETUPVAL                         R6 10
      260 GETTABLEKS                       R6 R6 K84 ["eventStart"]
      262 GETUPVAL                         R7 11
      263 GETTABLEKS                       R7 R7 K85 ["BenchmarkingEvent"]
      265 GETTABLEKS                       R7 R7 K86 ["LoadNewScope"]
      267 DUPTABLE                         R8 K88 [{["isBackgroundFetch"] = False}]
      268 GETTABLEKS                       R9 R5 K89 ["Uid"]
      270 CALL                             R6 3 0
      271 MOVE                             R8 R5
      272 NAMECALL                         R6 R2 K90 ["_startNewScopeFetch"]
      274 CALL                             R6 2 0
      275 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      277 NAMECALL                         R6 R6 K16 ["getPlugin"]
      279 CALL                             R6 1 1
      280 GETTABLEKS                       R8 R2 K57 ["_connections"]
      282 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      284 GETTABLEKS                       R9 R9 K91 ["OnCurrentScopeChanged"]
      286 NEWCLOSURE                       R11 P4
      287 CAPTURE                          VAL R2
      288 CAPTURE                          UPVAL U9
      289 CAPTURE                          UPVAL U10
      290 CAPTURE                          UPVAL U11
      291 CAPTURE                          UPVAL U2
      292 NAMECALL                         R9 R9 K76 ["Connect"]
      294 CALL                             R9 2 -1
      295 FASTCALL                         TABLE_INSERT ; [+2]
      296 GETIMPORT                        R7 K79 [table.insert]
      298 CALL                             R7 -1 0
      299 GETUPVAL                         R7 12
      300 CALL                             R7 0 1
      301 JUMPIF                           R7 ; [+39]
      302 GETTABLEKS                       R8 R2 K57 ["_connections"]
      304 LOADK                            R11 K92 ["OnAddPlaceSucceeded"]
      305 NEWCLOSURE                       R12 P5
      306 CAPTURE                          VAL R2
      307 NAMECALL                         R9 R6 K93 ["OnInvoke"]
      309 CALL                             R9 3 -1
      310 FASTCALL                         TABLE_INSERT ; [+2]
      311 GETIMPORT                        R7 K79 [table.insert]
      313 CALL                             R7 -1 0
      314 GETTABLEKS                       R8 R2 K57 ["_connections"]
      316 LOADK                            R11 K94 ["OnRemovePlaceFromGameSucceeded"]
      317 NEWCLOSURE                       R12 P6
      318 CAPTURE                          VAL R2
      319 CAPTURE                          UPVAL U13
      320 CAPTURE                          UPVAL U14
      321 NAMECALL                         R9 R6 K93 ["OnInvoke"]
      323 CALL                             R9 3 -1
      324 FASTCALL                         TABLE_INSERT ; [+2]
      325 GETIMPORT                        R7 K79 [table.insert]
      327 CALL                             R7 -1 0
      328 GETTABLEKS                       R8 R2 K57 ["_connections"]
      330 LOADK                            R11 K95 ["OnRenamePlaceSucceeded"]
      331 NEWCLOSURE                       R12 P7
      332 CAPTURE                          VAL R2
      333 CAPTURE                          UPVAL U13
      334 NAMECALL                         R9 R6 K93 ["OnInvoke"]
      336 CALL                             R9 3 -1
      337 FASTCALL                         TABLE_INSERT ; [+2]
      338 GETIMPORT                        R7 K79 [table.insert]
      340 CALL                             R7 -1 0
      341 GETUPVAL                         R7 15
      342 CALL                             R7 0 1
      343 JUMPIFNOT                        R7 ; [+12]
      344 GETTABLEKS                       R8 R2 K57 ["_connections"]
      346 LOADK                            R11 K96 ["OnAddToExperienceFinished"]
      347 NEWCLOSURE                       R12 P8
      348 CAPTURE                          VAL R2
      349 NAMECALL                         R9 R6 K93 ["OnInvoke"]
      351 CALL                             R9 3 -1
      352 FASTCALL                         TABLE_INSERT ; [+2]
      353 GETIMPORT                        R7 K79 [table.insert]
      355 CALL                             R7 -1 0
      356 GETTABLEKS                       R8 R2 K57 ["_connections"]
      358 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      360 GETTABLEKS                       R9 R9 K97 ["OnNewAssetFetched"]
      362 NEWCLOSURE                       R11 P9
      363 CAPTURE                          VAL R2
      364 CAPTURE                          UPVAL U16
      365 CAPTURE                          UPVAL U14
      366 NAMECALL                         R9 R9 K76 ["Connect"]
      368 CALL                             R9 2 -1
      369 FASTCALL                         TABLE_INSERT ; [+2]
      370 GETIMPORT                        R7 K79 [table.insert]
      372 CALL                             R7 -1 0
      373 GETTABLEKS                       R8 R2 K57 ["_connections"]
      375 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      377 GETTABLEKS                       R9 R9 K98 ["OnSearchRequested"]
      379 NEWCLOSURE                       R11 P10
      380 CAPTURE                          VAL R2
      381 CAPTURE                          UPVAL U17
      382 NAMECALL                         R9 R9 K76 ["Connect"]
      384 CALL                             R9 2 -1
      385 FASTCALL                         TABLE_INSERT ; [+2]
      386 GETIMPORT                        R7 K79 [table.insert]
      388 CALL                             R7 -1 0
      389 GETTABLEKS                       R8 R2 K57 ["_connections"]
      391 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      393 GETTABLEKS                       R9 R9 K99 ["OnIsSearchInitiatedChanged"]
      395 NEWCLOSURE                       R11 P11
      396 CAPTURE                          VAL R2
      397 NAMECALL                         R9 R9 K76 ["Connect"]
      399 CALL                             R9 2 -1
      400 FASTCALL                         TABLE_INSERT ; [+2]
      401 GETIMPORT                        R7 K79 [table.insert]
      403 CALL                             R7 -1 0
      404 GETTABLEKS                       R8 R2 K57 ["_connections"]
      406 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      408 GETTABLEKS                       R9 R9 K100 ["OnIsSearchRequestedChanged"]
      410 NEWCLOSURE                       R11 P12
      411 CAPTURE                          VAL R2
      412 NAMECALL                         R9 R9 K76 ["Connect"]
      414 CALL                             R9 2 -1
      415 FASTCALL                         TABLE_INSERT ; [+2]
      416 GETIMPORT                        R7 K79 [table.insert]
      418 CALL                             R7 -1 0
      419 GETTABLEKS                       R8 R2 K57 ["_connections"]
      421 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      423 GETTABLEKS                       R9 R9 K101 ["OnIsDefaultSearchStateChanged"]
      425 NEWCLOSURE                       R11 P13
      426 CAPTURE                          VAL R2
      427 NAMECALL                         R9 R9 K76 ["Connect"]
      429 CALL                             R9 2 -1
      430 FASTCALL                         TABLE_INSERT ; [+2]
      431 GETIMPORT                        R7 K79 [table.insert]
      433 CALL                             R7 -1 0
      434 GETTABLEKS                       R8 R2 K57 ["_connections"]
      436 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      438 GETTABLEKS                       R9 R9 K102 ["OnBrowserLayoutChanged"]
      440 NEWCLOSURE                       R11 P14
      441 CAPTURE                          VAL R2
      442 NAMECALL                         R9 R9 K76 ["Connect"]
      444 CALL                             R9 2 -1
      445 FASTCALL                         TABLE_INSERT ; [+2]
      446 GETIMPORT                        R7 K79 [table.insert]
      448 CALL                             R7 -1 0
      449 GETTABLEKS                       R8 R2 K57 ["_connections"]
      451 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      453 GETTABLEKS                       R9 R9 K103 ["OnGridStateUpdated"]
      455 NEWCLOSURE                       R11 P15
      456 CAPTURE                          VAL R2
      457 NAMECALL                         R9 R9 K76 ["Connect"]
      459 CALL                             R9 2 -1
      460 FASTCALL                         TABLE_INSERT ; [+2]
      461 GETIMPORT                        R7 K79 [table.insert]
      463 CALL                             R7 -1 0
      464 GETUPVAL                         R7 18
      465 CALL                             R7 0 1
      466 JUMPIF                           R7 ; [+3]
      467 GETUPVAL                         R7 19
      468 CALL                             R7 0 1
      469 JUMPIFNOT                        R7 ; [+20]
      470 GETIMPORT                        R7 K74 [pcall]
      472 NEWCLOSURE                       R8 P16
      473 CAPTURE                          VAL R2
      474 CALL                             R7 1 2
      475 JUMPIFNOT                        R7 ; [+14]
      476 JUMPIFNOT                        R8 ; [+13]
      477 GETTABLEKS                       R10 R2 K57 ["_connections"]
      479 GETTABLEKS                       R11 R8 K104 ["InventoryRefreshReceived"]
      481 NEWCLOSURE                       R13 P17
      482 CAPTURE                          VAL R2
      483 NAMECALL                         R11 R11 K76 ["Connect"]
      485 CALL                             R11 2 -1
      486 FASTCALL                         TABLE_INSERT ; [+2]
      487 GETIMPORT                        R9 K79 [table.insert]
      489 CALL                             R9 -1 0
      490 RETURN                           R2 1

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

PROTO_27:
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
       98 JUMPIFNOTEQ                      R9 R10 ; [+33]
      100 GETUPVAL                         R9 0
      101 NAMECALL                         R9 R9 K16 ["_getIsSearchActive"]
      103 CALL                             R9 1 1
      104 JUMPIFNOT                        R9 ; [+5]
      105 GETUPVAL                         R10 0
      106 NAMECALL                         R10 R10 K17 ["_createRenderItems"]
      108 CALL                             R10 1 0
      109 JUMP                             ; [+22]
      110 GETUPVAL                         R10 0
      111 MOVE                             R12 R6
      112 NEWTABLE                         R13 0 0
      114 GETUPVAL                         R14 1
      115 GETTABLEKS                       R14 R14 K2 ["Uid"]
      117 NAMECALL                         R10 R10 K18 ["_updateRenderItems"]
      119 CALL                             R10 4 0
      120 GETUPVAL                         R10 3
      121 CALL                             R10 0 1
      122 JUMPIFNOT                        R10 ; [+9]
      123 GETUPVAL                         R10 4
      124 GETTABLEKS                       R10 R10 K19 ["eventEnd"]
      126 GETUPVAL                         R11 5
      127 GETTABLEKS                       R11 R11 K20 ["BenchmarkingEvent"]
      129 GETTABLEKS                       R11 R11 K21 ["FirstLoad"]
      131 CALL                             R10 1 0
      132 JUMPIFNOT                        R3 ; [+7]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K22 ["_pluginController"]
      136 MOVE                             R11 R3
      137 NAMECALL                         R9 R9 K23 ["setRootPlace"]
      139 CALL                             R9 2 0
      140 SETTABLEKS                       R4 R5 K24 ["NextPageToken"]
      142 LOADB                            R9 1
      143 JUMPIFEQKNIL                     R4 ; [+5]
      145 JUMPIFEQKS                       R4 K25 [""] ; [+2]
      147 LOADB                            R9 0 +1
      148 LOADB                            R9 1
      149 GETUPVAL                         R11 2
      150 JUMPIFNOTEQKNIL                  R11 ; [+2]
      152 LOADB                            R10 0 +1
      153 LOADB                            R10 1
      154 NOT                              R11 R10
      155 JUMPIFNOT                        R11 ; [+16]
      156 GETUPVAL                         R12 0
      157 GETTABLEKS                       R12 R12 K1 ["_itemsCache"]
      159 NAMECALL                         R12 R12 K26 ["getTotalItemCount"]
      161 CALL                             R12 1 1
      162 GETUPVAL                         R13 0
      163 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      165 NAMECALL                         R13 R13 K27 ["getMaxItems"]
      167 CALL                             R13 1 1
      168 JUMPIFLT                         R13 R12 ; [+2]
      170 LOADB                            R11 0 +1
      171 LOADB                            R11 1
      172 NOT                              R12 R10
      173 JUMPIFNOT                        R12 ; [+16]
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      177 GETUPVAL                         R15 1
      178 GETTABLEKS                       R15 R15 K2 ["Uid"]
      180 NAMECALL                         R13 R13 K28 ["getScopeItemCount"]
      182 CALL                             R13 2 1
      183 GETUPVAL                         R14 6
      184 GETTABLEKS                       R14 R14 K29 ["InitialScopeFetchLimit"]
      186 JUMPIFLE                         R14 R13 ; [+2]
      188 LOADB                            R12 0 +1
      189 LOADB                            R12 1
      190 GETUPVAL                         R13 0
      191 GETTABLEKS                       R13 R13 K1 ["_itemsCache"]
      193 GETUPVAL                         R15 1
      194 GETTABLEKS                       R15 R15 K2 ["Uid"]
      196 NAMECALL                         R13 R13 K30 ["getScopeCacheFetchProgress"]
      198 CALL                             R13 2 1
      199 MOVE                             R14 R9
      200 JUMPIF                           R14 ; [+3]
      201 MOVE                             R14 R11
      202 JUMPIF                           R14 ; [+1]
      203 MOVE                             R14 R12
      204 JUMPIFNOT                        R14 ; [+66]
      205 LOADN                            R15 0
      206 SETTABLEKS                       R15 R5 K31 ["FetchProgress"]
      208 LOADN                            R16 0
      209 GETTABLEKS                       R18 R5 K33 ["PendingRequestChains"]
      211 SUBK                             R17 R18 K32 [1]
      212 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      214 GETIMPORT                        R15 K36 [math.max]
      216 CALL                             R15 2 1
      217 SETTABLEKS                       R15 R5 K33 ["PendingRequestChains"]
      219 GETTABLEKS                       R16 R5 K33 ["PendingRequestChains"]
      221 LOADN                            R17 0
      222 JUMPIFLT                         R17 R16 ; [+2]
      224 LOADB                            R15 0 +1
      225 LOADB                            R15 1
      226 SETTABLEKS                       R15 R5 K37 ["Loading"]
      228 GETUPVAL                         R15 2
      229 JUMPIFNOT                        R15 ; [+25]
      230 GETIMPORT                        R15 K39 [next]
      232 GETUPVAL                         R16 2
      233 CALL                             R15 1 1
      234 JUMPIFNOT                        R15 ; [+20]
      235 GETUPVAL                         R15 2
      236 LOADNIL                          R16
      237 LOADNIL                          R17
      238 FORGPREP                         R15
      239 GETUPVAL                         R20 0
      240 GETTABLEKS                       R20 R20 K1 ["_itemsCache"]
      242 MOVE                             R22 R18
      243 GETUPVAL                         R23 1
      244 GETTABLEKS                       R23 R23 K2 ["Uid"]
      246 NAMECALL                         R20 R20 K40 ["removeItem"]
      248 CALL                             R20 3 0
      249 FORGLOOP                         R15 2 ; [-11]
      251 GETUPVAL                         R15 0
      252 NAMECALL                         R15 R15 K17 ["_createRenderItems"]
      254 CALL                             R15 1 0
      255 GETUPVAL                         R15 3
      256 CALL                             R15 0 1
      257 JUMPIFNOT                        R15 ; [+18]
      258 GETUPVAL                         R15 4
      259 GETTABLEKS                       R15 R15 K19 ["eventEnd"]
      261 GETUPVAL                         R16 5
      262 GETTABLEKS                       R16 R16 K20 ["BenchmarkingEvent"]
      264 GETTABLEKS                       R16 R16 K41 ["LoadNewScope"]
      266 GETUPVAL                         R17 1
      267 GETTABLEKS                       R17 R17 K2 ["Uid"]
      269 CALL                             R15 2 0
      270 JUMP                             ; [+5]
      271 LOADB                            R15 1
      272 SETTABLEKS                       R15 R5 K37 ["Loading"]
      274 SETTABLEKS                       R13 R5 K31 ["FetchProgress"]
      276 JUMPIF                           R10 ; [+12]
      277 GETUPVAL                         R15 0
      278 GETTABLEKS                       R15 R15 K42 ["OnScopeFetchProgressChanged"]
      280 MOVE                             R17 R13
      281 GETTABLEKS                       R18 R5 K37 ["Loading"]
      283 GETUPVAL                         R19 1
      284 GETTABLEKS                       R19 R19 K2 ["Uid"]
      286 NAMECALL                         R15 R15 K14 ["Fire"]
      288 CALL                             R15 4 0
      289 NOT                              R15 R14
      290 RETURN                           R15 1

PROTO_28:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_33:
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

PROTO_34:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R3 R3 K1 ["Uid"]
        8 NAMECALL                         R4 R0 K2 ["_getIsSearchActive"]
       10 CALL                             R4 1 1
       11 JUMPIFNOT                        R4 ; [+48]
       12 GETTABLEKS                       R5 R0 K3 ["_layoutController"]
       14 NAMECALL                         R5 R5 K4 ["getFolderLimit"]
       16 CALL                             R5 1 1
       17 DUPTABLE                         R6 K8 [{"AssetTypes", "SearchTerm", "FolderCount"}]
       18 NEWTABLE                         R7 0 1
       20 GETTABLEKS                       R8 R0 K9 ["_searchController"]
       22 NAMECALL                         R8 R8 K10 ["getSearchOptions"]
       24 CALL                             R8 1 1
       25 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       27 SETLIST                          R7 R8 1 [1]
       29 SETTABLEKS                       R7 R6 K5 ["AssetTypes"]
       31 GETTABLEKS                       R7 R0 K9 ["_searchController"]
       33 NAMECALL                         R7 R7 K12 ["getActiveSearchTerm"]
       35 CALL                             R7 1 1
       36 SETTABLEKS                       R7 R6 K6 ["SearchTerm"]
       38 GETTABLEKS                       R8 R0 K13 ["_showAllSearchFolders"]
       40 JUMPIFNOT                        R8 ; [+2]
       41 LOADNIL                          R7
       42 JUMP                             ; [+1]
       43 MOVE                             R7 R5
       44 SETTABLEKS                       R7 R6 K7 ["FolderCount"]
       46 GETTABLEKS                       R7 R0 K14 ["_itemsCache"]
       48 MOVE                             R9 R3
       49 GETTABLEKS                       R10 R0 K15 ["_filters"]
       51 GETTABLEKS                       R11 R0 K16 ["_sorts"]
       53 MOVE                             R12 R6
       54 NAMECALL                         R7 R7 K17 ["getSortedFilteredPathsForSearch"]
       56 CALL                             R7 5 2
       57 MOVE                             R1 R7
       58 MOVE                             R2 R8
       59 JUMP                             ; [+11]
       60 GETTABLEKS                       R5 R0 K14 ["_itemsCache"]
       62 MOVE                             R7 R3
       63 GETTABLEKS                       R8 R0 K15 ["_filters"]
       65 GETTABLEKS                       R9 R0 K16 ["_sorts"]
       67 NAMECALL                         R5 R5 K18 ["getSortedFilteredPaths"]
       69 CALL                             R5 4 1
       70 MOVE                             R1 R5
       71 SETTABLEKS                       R1 R0 K19 ["_renderItems"]
       73 GETTABLEKS                       R5 R0 K20 ["OnItemsChanged"]
       75 GETTABLEKS                       R7 R0 K19 ["_renderItems"]
       77 NAMECALL                         R5 R5 K21 ["Fire"]
       79 CALL                             R5 2 0
       80 JUMPIFNOT                        R4 ; [+11]
       81 GETTABLEKS                       R5 R0 K22 ["_searchFolderCount"]
       83 JUMPIFEQ                         R2 R5 ; [+8]
       85 SETTABLEKS                       R2 R0 K22 ["_searchFolderCount"]
       87 GETTABLEKS                       R5 R0 K23 ["OnSearchFolderCountChanged"]
       89 NAMECALL                         R5 R5 K21 ["Fire"]
       91 CALL                             R5 1 0
       92 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_42:
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

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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
       39 GETTABLEKS                       R5 R4 K11 ["Type"]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K12 ["ScopeType"]
       44 GETTABLEKS                       R6 R6 K13 ["Universe"]
       46 JUMPIFNOTEQ                      R5 R6 ; [+92]
       48 GETTABLEKS                       R5 R3 K14 ["AssetType"]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K14 ["AssetType"]
       53 GETTABLEKS                       R6 R6 K15 ["Place"]
       55 JUMPIFNOTEQ                      R5 R6 ; [+83]
       57 JUMPIF                           R1 ; [+14]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K16 ["AssetInfoField"]
       61 GETTABLEKS                       R7 R7 K14 ["AssetType"]
       63 NEWTABLE                         R8 1 0
       65 GETTABLEKS                       R9 R3 K14 ["AssetType"]
       67 LOADB                            R10 1
       68 SETTABLE                         R10 R8 R9
       69 NAMECALL                         R5 R0 K17 ["_addFilter"]
       71 CALL                             R5 3 0
       72 GETTABLEKS                       R5 R0 K18 ["_itemsCache"]
       74 GETTABLEKS                       R7 R4 K19 ["Uid"]
       76 NAMECALL                         R5 R5 K20 ["addScope"]
       78 CALL                             R5 2 1
       79 LOADB                            R6 1
       80 SETTABLEKS                       R6 R5 K21 ["Loading"]
       82 LOADN                            R6 1
       83 SETTABLEKS                       R6 R5 K22 ["PendingRequestChains"]
       85 MOVE                             R8 R4
       86 NAMECALL                         R6 R0 K23 ["_getNewItemsHandler"]
       88 CALL                             R6 2 1
       89 DUPTABLE                         R7 K26 [{"Type", "Uid", "Name", "Id"}]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K12 ["ScopeType"]
       93 GETTABLEKS                       R8 R8 K27 ["ProjectPlaces"]
       95 SETTABLEKS                       R8 R7 K11 ["Type"]
       97 GETUPVAL                         R8 2
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R9 R9 K12 ["ScopeType"]
      101 GETTABLEKS                       R9 R9 K27 ["ProjectPlaces"]
      103 GETTABLEKS                       R10 R4 K25 ["Id"]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K19 ["Uid"]
      108 GETTABLEKS                       R8 R4 K24 ["Name"]
      110 SETTABLEKS                       R8 R7 K24 ["Name"]
      112 GETTABLEKS                       R8 R4 K25 ["Id"]
      114 SETTABLEKS                       R8 R7 K25 ["Id"]
      116 NAMECALL                         R8 R0 K28 ["_getFetchErrorCallback"]
      118 CALL                             R8 1 1
      119 GETTABLEKS                       R9 R0 K29 ["_networking"]
      121 MOVE                             R11 R7
      122 GETTABLEKS                       R12 R5 K30 ["NextPageToken"]
      124 MOVE                             R13 R6
      125 MOVE                             R14 R8
      126 NAMECALL                         R9 R9 K31 ["fetchAssetsAsync"]
      128 CALL                             R9 5 0
      129 GETTABLEKS                       R9 R0 K32 ["OnScopeFetchProgressChanged"]
      131 LOADN                            R11 0
      132 LOADB                            R12 1
      133 GETTABLEKS                       R13 R4 K19 ["Uid"]
      135 NAMECALL                         R9 R9 K8 ["Fire"]
      137 CALL                             R9 4 0
      138 RETURN                           R0 0
      139 DUPTABLE                         R5 K34 [{"SearchTerm", "AssetType", "ScopeInfo"}]
      140 SETTABLEKS                       R2 R5 K33 ["SearchTerm"]
      142 GETTABLEKS                       R6 R3 K14 ["AssetType"]
      144 SETTABLEKS                       R6 R5 K14 ["AssetType"]
      146 SETTABLEKS                       R4 R5 K10 ["ScopeInfo"]
      148 GETTABLEKS                       R6 R0 K18 ["_itemsCache"]
      150 GETTABLEKS                       R8 R4 K19 ["Uid"]
      152 NAMECALL                         R6 R6 K20 ["addScope"]
      154 CALL                             R6 2 1
      155 LOADB                            R7 1
      156 SETTABLEKS                       R7 R6 K21 ["Loading"]
      158 LOADN                            R7 2
      159 SETTABLEKS                       R7 R6 K22 ["PendingRequestChains"]
      161 MOVE                             R9 R4
      162 NAMECALL                         R7 R0 K23 ["_getNewItemsHandler"]
      164 CALL                             R7 2 1
      165 GETTABLEKS                       R8 R0 K29 ["_networking"]
      167 MOVE                             R10 R5
      168 GETTABLEKS                       R11 R6 K30 ["NextPageToken"]
      170 MOVE                             R12 R7
      171 GETTABLEKS                       R13 R0 K35 ["_fetchAssetsErrorCallback"]
      173 NAMECALL                         R8 R8 K36 ["searchAssetsAsync"]
      175 CALL                             R8 5 0
      176 DUPTABLE                         R8 K39 [{["SearchTerm"], ["IncludeFolders"] = True, ["ScopeInfo"]}]
      177 SETTABLEKS                       R2 R8 K33 ["SearchTerm"]
      179 SETTABLEKS                       R4 R8 K10 ["ScopeInfo"]
      181 MOVE                             R5 R8
      182 GETTABLEKS                       R8 R0 K29 ["_networking"]
      184 MOVE                             R10 R5
      185 GETTABLEKS                       R11 R6 K30 ["NextPageToken"]
      187 MOVE                             R12 R7
      188 GETTABLEKS                       R13 R0 K35 ["_fetchAssetsErrorCallback"]
      190 NAMECALL                         R8 R8 K36 ["searchAssetsAsync"]
      192 CALL                             R8 5 0
      193 GETTABLEKS                       R8 R0 K32 ["OnScopeFetchProgressChanged"]
      195 LOADN                            R10 0
      196 LOADB                            R11 1
      197 GETTABLEKS                       R12 R4 K19 ["Uid"]
      199 NAMECALL                         R8 R8 K8 ["Fire"]
      201 CALL                             R8 4 0
      202 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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
       92 JUMPIFNOT                        R6 ; [+20]
       93 GETUPVAL                         R6 5
       94 CALL                             R6 0 1
       95 JUMPIFNOT                        R6 ; [+17]
       96 NAMECALL                         R6 R0 K22 ["_createInsertJobData"]
       98 CALL                             R6 1 1
       99 GETTABLEKS                       R7 R0 K23 ["_pluginController"]
      101 NAMECALL                         R7 R7 K12 ["getPlugin"]
      103 CALL                             R7 1 1
      104 LOADK                            R9 K24 ["AssetInsertController"]
      105 NAMECALL                         R7 R7 K25 ["GetPluginComponent"]
      107 CALL                             R7 2 1
      108 MOVE                             R10 R6
      109 NAMECALL                         R8 R7 K26 ["DispatchInsertJobAsync"]
      111 CALL                             R8 2 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R6 6
      114 CALL                             R6 0 1
      115 JUMPIFNOT                        R6 ; [+16]
      116 GETUPVAL                         R6 7
      117 GETTABLEKS                       R6 R6 K27 ["showSnackbar"]
      119 DUPTABLE                         R7 K30 [{"LocalizableMessage", "Type"}]
      120 DUPTABLE                         R8 K35 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      121 SETTABLEKS                       R8 R7 K28 ["LocalizableMessage"]
      123 GETUPVAL                         R8 7
      124 GETTABLEKS                       R8 R8 K36 ["SnackbarType"]
      126 GETTABLEKS                       R8 R8 K37 ["Info"]
      128 SETTABLEKS                       R8 R7 K29 ["Type"]
      130 CALL                             R6 1 0
      131 JUMP                             ; [+7]
      132 DUPTABLE                         R6 K35 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
      133 GETTABLEKS                       R7 R0 K23 ["_pluginController"]
      135 MOVE                             R9 R6
      136 NAMECALL                         R7 R7 K38 ["showToast"]
      138 CALL                             R7 2 0
      139 GETUPVAL                         R6 8
      140 MOVE                             R7 R0
      141 MOVE                             R8 R2
      142 GETTABLEKS                       R9 R0 K39 ["_networking"]
      144 CALL                             R6 3 0
      145 RETURN                           R0 0

PROTO_78:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
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

PROTO_81:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R5 R2 K2 ["Uid"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K3 ["getItem"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_84:
        0 GETTABLEKS                       R3 R0 K0 ["_assetTechnicalDetails"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_85:
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

PROTO_86:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_87:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_88:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_89:
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

PROTO_90:
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

PROTO_91:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_87]
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

PROTO_92:
        0 GETTABLEKS                       R3 R0 K0 ["_assetSharing"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_93:
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

PROTO_94:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getSharingItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_95:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_96:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_97:
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

PROTO_98:
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

PROTO_99:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getSharingItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_95]
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

PROTO_100:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_assetSharing"]
        4 GETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        6 ADDK                             R1 R1 K2 [1]
        7 SETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        9 GETTABLEKS                       R1 R0 K3 ["OnAssetSharingChanged"]
       11 NAMECALL                         R1 R1 K4 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_101:
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

PROTO_102:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_103:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_104:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_105:
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
       38 JUMPIFNOT                        R4 ; [+55]
       39 GETTABLEKS                       R4 R0 K9 ["_searchController"]
       41 NAMECALL                         R4 R4 K10 ["getSearchOptions"]
       43 CALL                             R4 1 1
       44 DUPTABLE                         R5 K14 [{"SearchTerm", "AssetType", "ScopeInfo"}]
       45 GETTABLEKS                       R6 R0 K9 ["_searchController"]
       47 NAMECALL                         R6 R6 K15 ["getActiveSearchTerm"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K11 ["SearchTerm"]
       52 GETTABLEKS                       R6 R4 K12 ["AssetType"]
       54 SETTABLEKS                       R6 R5 K12 ["AssetType"]
       56 GETTABLEKS                       R6 R4 K13 ["ScopeInfo"]
       58 SETTABLEKS                       R6 R5 K13 ["ScopeInfo"]
       60 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
       62 GETTABLEKS                       R8 R5 K13 ["ScopeInfo"]
       64 GETTABLEKS                       R8 R8 K2 ["Uid"]
       66 NAMECALL                         R6 R6 K3 ["getScope"]
       68 CALL                             R6 2 1
       69 LOADB                            R7 1
       70 SETTABLEKS                       R7 R6 K16 ["Loading"]
       72 GETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
       74 ADDK                             R7 R7 K18 [1]
       75 SETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
       77 GETTABLEKS                       R9 R5 K13 ["ScopeInfo"]
       79 NAMECALL                         R7 R0 K19 ["_getNewItemsHandler"]
       81 CALL                             R7 2 1
       82 GETTABLEKS                       R8 R0 K20 ["_networking"]
       84 MOVE                             R10 R5
       85 GETTABLEKS                       R11 R6 K4 ["NextPageToken"]
       87 MOVE                             R12 R7
       88 GETTABLEKS                       R13 R0 K21 ["_fetchAssetsErrorCallback"]
       90 NAMECALL                         R8 R8 K22 ["searchAssetsAsync"]
       92 CALL                             R8 5 0
       93 RETURN                           R0 0
       94 GETTABLEKS                       R4 R0 K23 ["_pluginController"]
       96 NAMECALL                         R4 R4 K24 ["getCurrentScope"]
       98 CALL                             R4 1 1
       99 MOVE                             R7 R4
      100 NAMECALL                         R5 R0 K19 ["_getNewItemsHandler"]
      102 CALL                             R5 2 1
      103 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      105 GETTABLEKS                       R8 R4 K2 ["Uid"]
      107 NAMECALL                         R6 R6 K3 ["getScope"]
      109 CALL                             R6 2 1
      110 JUMPIF                           R6 ; [+7]
      111 GETTABLEKS                       R6 R0 K1 ["_itemsCache"]
      113 GETTABLEKS                       R8 R4 K2 ["Uid"]
      115 NAMECALL                         R6 R6 K25 ["addScope"]
      117 CALL                             R6 2 1
      118 LOADB                            R7 1
      119 SETTABLEKS                       R7 R6 K16 ["Loading"]
      121 GETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
      123 ADDK                             R7 R7 K18 [1]
      124 SETTABLEKS                       R7 R6 K17 ["PendingRequestChains"]
      126 GETTABLEKS                       R7 R0 K20 ["_networking"]
      128 MOVE                             R9 R4
      129 GETTABLEKS                       R10 R6 K4 ["NextPageToken"]
      131 MOVE                             R11 R5
      132 GETTABLEKS                       R12 R0 K21 ["_fetchAssetsErrorCallback"]
      134 NAMECALL                         R7 R7 K26 ["fetchAssetsAsync"]
      136 CALL                             R7 5 0
      137 RETURN                           R0 0

PROTO_106:
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

PROTO_107:
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

PROTO_108:
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

PROTO_109:
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

PROTO_110:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getSelection"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R0 K2 ["getItemsCache"]
        9 CALL                             R4 1 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_111:
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

PROTO_112:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_113:
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

PROTO_114:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_115:
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

PROTO_116:
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

PROTO_117:
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

PROTO_118:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_119:
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

PROTO_120:
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

PROTO_121:
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

PROTO_122:
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

PROTO_123:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_124:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateSortFilter"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_125:
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

PROTO_126:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_127:
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

PROTO_128:
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

PROTO_129:
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

PROTO_130:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_131:
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

PROTO_132:
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

PROTO_133:
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

PROTO_134:
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

PROTO_135:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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
      143 GETTABLEKS                       R23 R23 K30 ["convertToEngineAssetTypeEnum"]
      145 CALL                             R22 1 1
      146 GETIMPORT                        R23 K5 [require]
      148 GETTABLEKS                       R24 R0 K6 ["Src"]
      150 GETTABLEKS                       R24 R24 K12 ["Util"]
      152 GETTABLEKS                       R24 R24 K31 ["createAccountUidFromPath"]
      154 CALL                             R23 1 1
      155 GETIMPORT                        R24 K5 [require]
      157 GETTABLEKS                       R25 R0 K6 ["Src"]
      159 GETTABLEKS                       R25 R25 K12 ["Util"]
      161 GETTABLEKS                       R25 R25 K32 ["createFolderUid"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K5 [require]
      166 GETTABLEKS                       R26 R0 K6 ["Src"]
      168 GETTABLEKS                       R26 R26 K12 ["Util"]
      170 GETTABLEKS                       R26 R26 K33 ["createScopeUid"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K5 [require]
      175 GETTABLEKS                       R27 R0 K6 ["Src"]
      177 GETTABLEKS                       R27 R27 K12 ["Util"]
      179 GETTABLEKS                       R27 R27 K34 ["DefaultSort"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K5 [require]
      184 GETTABLEKS                       R28 R0 K6 ["Src"]
      186 GETTABLEKS                       R28 R28 K12 ["Util"]
      188 GETTABLEKS                       R28 R28 K35 ["getAssetInfosSlice"]
      190 CALL                             R27 1 1
      191 GETIMPORT                        R28 K5 [require]
      193 GETTABLEKS                       R29 R0 K6 ["Src"]
      195 GETTABLEKS                       R29 R29 K12 ["Util"]
      197 GETTABLEKS                       R29 R29 K36 ["getFolderErrorLocalizationKeys"]
      199 CALL                             R28 1 1
      200 GETIMPORT                        R29 K5 [require]
      202 GETTABLEKS                       R30 R0 K6 ["Src"]
      204 GETTABLEKS                       R30 R30 K12 ["Util"]
      206 GETTABLEKS                       R30 R30 K37 ["getItemMoveBatches"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K5 [require]
      211 GETTABLEKS                       R31 R0 K6 ["Src"]
      213 GETTABLEKS                       R31 R31 K12 ["Util"]
      215 GETTABLEKS                       R31 R31 K38 ["insertItems"]
      217 CALL                             R30 1 1
      218 GETIMPORT                        R31 K5 [require]
      220 GETTABLEKS                       R32 R0 K6 ["Src"]
      222 GETTABLEKS                       R32 R32 K12 ["Util"]
      224 GETTABLEKS                       R32 R32 K39 ["isInsertable"]
      226 CALL                             R31 1 1
      227 GETIMPORT                        R32 K5 [require]
      229 GETTABLEKS                       R33 R0 K6 ["Src"]
      231 GETTABLEKS                       R33 R33 K12 ["Util"]
      233 GETTABLEKS                       R33 R33 K40 ["isShareableAsset"]
      235 CALL                             R32 1 1
      236 GETIMPORT                        R33 K5 [require]
      238 GETTABLEKS                       R34 R0 K6 ["Src"]
      240 GETTABLEKS                       R34 R34 K12 ["Util"]
      242 GETTABLEKS                       R34 R34 K41 ["logIfDebug"]
      244 CALL                             R33 1 1
      245 GETIMPORT                        R34 K5 [require]
      247 GETTABLEKS                       R35 R0 K6 ["Src"]
      249 GETTABLEKS                       R35 R35 K42 ["Flags"]
      251 GETTABLEKS                       R35 R35 K43 ["getEFAssetInsertComponentEnabled"]
      253 CALL                             R34 1 1
      254 GETIMPORT                        R35 K5 [require]
      256 GETTABLEKS                       R36 R0 K6 ["Src"]
      258 GETTABLEKS                       R36 R36 K42 ["Flags"]
      260 GETTABLEKS                       R36 R36 K44 ["getEFAssetManagerInventoryRefreshFeature"]
      262 CALL                             R35 1 1
      263 GETIMPORT                        R36 K5 [require]
      265 GETTABLEKS                       R37 R0 K6 ["Src"]
      267 GETTABLEKS                       R37 R37 K42 ["Flags"]
      269 GETTABLEKS                       R37 R37 K45 ["getFFlagEnableAssetInserter"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K5 [require]
      274 GETTABLEKS                       R38 R0 K6 ["Src"]
      276 GETTABLEKS                       R38 R38 K42 ["Flags"]
      278 GETTABLEKS                       R38 R38 K46 ["getFFlagAmrAddToExperience"]
      280 CALL                             R37 1 1
      281 GETIMPORT                        R38 K5 [require]
      283 GETTABLEKS                       R39 R0 K6 ["Src"]
      285 GETTABLEKS                       R39 R39 K42 ["Flags"]
      287 GETTABLEKS                       R39 R39 K47 ["getFFlagDebugAmrAssetManagementControllerTest"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K5 [require]
      292 GETTABLEKS                       R40 R0 K6 ["Src"]
      294 GETTABLEKS                       R40 R40 K42 ["Flags"]
      296 GETTABLEKS                       R40 R40 K48 ["getFFlagAmrEnableBenchmarking"]
      298 CALL                             R39 1 1
      299 GETIMPORT                        R40 K5 [require]
      301 GETTABLEKS                       R41 R0 K6 ["Src"]
      303 GETTABLEKS                       R41 R41 K42 ["Flags"]
      305 GETTABLEKS                       R41 R41 K49 ["getFFlagAmrEnableTextDocuments"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K5 [require]
      310 GETTABLEKS                       R42 R0 K6 ["Src"]
      312 GETTABLEKS                       R42 R42 K42 ["Flags"]
      314 GETTABLEKS                       R42 R42 K50 ["getFFlagAmrStudioToastsIntegration"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K5 [require]
      319 GETTABLEKS                       R43 R0 K6 ["Src"]
      321 GETTABLEKS                       R43 R43 K42 ["Flags"]
      323 GETTABLEKS                       R43 R43 K51 ["getFFlagAmrOptimizeRenderListUpdates"]
      325 CALL                             R42 1 1
      326 GETIMPORT                        R43 K5 [require]
      328 GETTABLEKS                       R44 R0 K6 ["Src"]
      330 GETTABLEKS                       R44 R44 K42 ["Flags"]
      332 GETTABLEKS                       R44 R44 K52 ["getFFlagAmrRemoveAssetManagerServiceDependency"]
      334 CALL                             R43 1 1
      335 GETIMPORT                        R44 K5 [require]
      337 GETTABLEKS                       R45 R0 K6 ["Src"]
      339 GETTABLEKS                       R45 R45 K42 ["Flags"]
      341 GETTABLEKS                       R45 R45 K53 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      343 CALL                             R44 1 1
      344 GETIMPORT                        R45 K5 [require]
      346 GETTABLEKS                       R46 R0 K6 ["Src"]
      348 GETTABLEKS                       R46 R46 K42 ["Flags"]
      350 GETTABLEKS                       R46 R46 K54 ["getFFlagAmrAssetDetailView"]
      352 CALL                             R45 1 1
      353 LOADK                            R48 K55 ["ItemsController"]
      354 NAMECALL                         R46 R10 K56 ["extend"]
      356 CALL                             R46 2 1
      357 DUPCLOSURE                       R47 K57 [PROTO_0]
      358 NEWTABLE                         R48 8 0
      360 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      362 GETTABLEKS                       R49 R49 K59 ["Animation"]
      364 SETTABLE                         R47 R48 R49
      365 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      367 GETTABLEKS                       R49 R49 K60 ["Audio"]
      369 SETTABLE                         R47 R48 R49
      370 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      372 GETTABLEKS                       R49 R49 K61 ["Decal"]
      374 SETTABLE                         R47 R48 R49
      375 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      377 GETTABLEKS                       R49 R49 K62 ["FontFamily"]
      379 SETTABLE                         R47 R48 R49
      380 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      382 GETTABLEKS                       R49 R49 K63 ["MeshPart"]
      384 SETTABLE                         R47 R48 R49
      385 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      387 GETTABLEKS                       R49 R49 K64 ["Model"]
      389 SETTABLE                         R47 R48 R49
      390 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      392 GETTABLEKS                       R49 R49 K65 ["Plugin"]
      394 SETTABLE                         R47 R48 R49
      395 GETTABLEKS                       R49 R3 K58 ["AssetType"]
      397 GETTABLEKS                       R49 R49 K66 ["Video"]
      399 SETTABLE                         R47 R48 R49
      400 DUPCLOSURE                       R49 K67 [PROTO_1]
      401 CAPTURE                          VAL R33
      402 CAPTURE                          VAL R31
      403 CAPTURE                          VAL R22
      404 CAPTURE                          VAL R44
      405 DUPCLOSURE                       R50 K68 [PROTO_20]
      406 CAPTURE                          VAL R17
      407 CAPTURE                          VAL R18
      408 CAPTURE                          VAL R3
      409 CAPTURE                          VAL R26
      410 CAPTURE                          VAL R16
      411 CAPTURE                          VAL R46
      412 CAPTURE                          VAL R45
      413 CAPTURE                          VAL R33
      414 CAPTURE                          VAL R11
      415 CAPTURE                          VAL R39
      416 CAPTURE                          VAL R5
      417 CAPTURE                          VAL R4
      418 CAPTURE                          VAL R43
      419 CAPTURE                          VAL R20
      420 CAPTURE                          VAL R42
      421 CAPTURE                          VAL R37
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R1
      424 CAPTURE                          VAL R35
      425 CAPTURE                          VAL R38
      426 SETTABLEKS                       R50 R46 K69 ["new"]
      428 DUPCLOSURE                       R50 K70 [PROTO_21]
      429 CAPTURE                          VAL R46
      430 SETTABLEKS                       R50 R46 K71 ["mock"]
      432 DUPCLOSURE                       R50 K72 [PROTO_22]
      433 SETTABLEKS                       R50 R46 K73 ["getIsMock"]
      435 DUPCLOSURE                       R50 K74 [PROTO_23]
      436 CAPTURE                          VAL R19
      437 SETTABLEKS                       R50 R46 K75 ["destroy"]
      439 DUPCLOSURE                       R50 K76 [PROTO_24]
      440 CAPTURE                          VAL R3
      441 SETTABLEKS                       R50 R46 K77 ["_isOmnisearchEnabled"]
      443 DUPCLOSURE                       R50 K78 [PROTO_25]
      444 SETTABLEKS                       R50 R46 K79 ["_getIsSearchActive"]
      446 DUPCLOSURE                       R50 K80 [PROTO_26]
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R13
      449 CAPTURE                          VAL R41
      450 CAPTURE                          VAL R6
      451 SETTABLEKS                       R50 R46 K81 ["_handleOnAddToGame"]
      453 DUPCLOSURE                       R50 K82 [PROTO_28]
      454 CAPTURE                          VAL R39
      455 CAPTURE                          VAL R5
      456 CAPTURE                          VAL R4
      457 CAPTURE                          VAL R2
      458 SETTABLEKS                       R50 R46 K83 ["_getNewItemsHandler"]
      460 DUPCLOSURE                       R50 K84 [PROTO_29]
      461 SETTABLEKS                       R50 R46 K85 ["_refreshScopeInPlace"]
      463 DUPCLOSURE                       R50 K86 [PROTO_31]
      464 SETTABLEKS                       R50 R46 K87 ["_scheduleDebouncedRefresh"]
      466 DUPCLOSURE                       R50 K88 [PROTO_32]
      467 CAPTURE                          VAL R24
      468 CAPTURE                          VAL R23
      469 DUPCLOSURE                       R51 K89 [PROTO_33]
      470 CAPTURE                          VAL R24
      471 CAPTURE                          VAL R23
      472 SETTABLEKS                       R51 R46 K90 ["_handleCreatorInventoryRefresh"]
      474 DUPCLOSURE                       R51 K91 [PROTO_34]
      475 SETTABLEKS                       R51 R46 K92 ["_createRenderItems"]
      477 DUPCLOSURE                       R51 K93 [PROTO_35]
      478 SETTABLEKS                       R51 R46 K94 ["_updateRenderItems"]
      480 DUPCLOSURE                       R51 K95 [PROTO_36]
      481 CAPTURE                          VAL R2
      482 SETTABLEKS                       R51 R46 K96 ["clearRecent"]
      484 DUPCLOSURE                       R51 K97 [PROTO_38]
      485 CAPTURE                          VAL R2
      486 CAPTURE                          VAL R41
      487 CAPTURE                          VAL R6
      488 SETTABLEKS                       R51 R46 K98 ["_getFetchErrorCallback"]
      490 DUPCLOSURE                       R51 K99 [PROTO_39]
      491 CAPTURE                          VAL R26
      492 SETTABLEKS                       R51 R46 K100 ["_startNewScopeFetch"]
      494 DUPCLOSURE                       R51 K101 [PROTO_40]
      495 SETTABLEKS                       R51 R46 K102 ["_clearItems"]
      497 DUPCLOSURE                       R51 K103 [PROTO_41]
      498 SETTABLEKS                       R51 R46 K104 ["getSearchFolderCount"]
      500 DUPCLOSURE                       R51 K105 [PROTO_42]
      501 SETTABLEKS                       R51 R46 K106 ["setShowAllSearchFolders"]
      503 DUPCLOSURE                       R51 K107 [PROTO_43]
      504 SETTABLEKS                       R51 R46 K108 ["getShowAllSearchFolders"]
      506 DUPCLOSURE                       R51 K109 [PROTO_44]
      507 CAPTURE                          VAL R12
      508 CAPTURE                          VAL R26
      509 SETTABLEKS                       R51 R46 K110 ["_handleOnIsSearchInitiatedChanged"]
      511 DUPCLOSURE                       R51 K111 [PROTO_45]
      512 CAPTURE                          VAL R12
      513 CAPTURE                          VAL R26
      514 SETTABLEKS                       R51 R46 K112 ["_handleOnIsSearchRequestedChanged"]
      516 DUPCLOSURE                       R51 K113 [PROTO_46]
      517 CAPTURE                          VAL R12
      518 CAPTURE                          VAL R3
      519 CAPTURE                          VAL R25
      520 SETTABLEKS                       R51 R46 K114 ["_clearAndFetchSearchItems"]
      522 DUPCLOSURE                       R51 K115 [PROTO_47]
      523 CAPTURE                          VAL R26
      524 CAPTURE                          VAL R3
      525 CAPTURE                          VAL R39
      526 CAPTURE                          VAL R5
      527 CAPTURE                          VAL R4
      528 SETTABLEKS                       R51 R46 K116 ["refreshItems"]
      530 DUPCLOSURE                       R51 K117 [PROTO_48]
      531 SETTABLEKS                       R51 R46 K118 ["refreshAll"]
      533 DUPCLOSURE                       R51 K119 [PROTO_49]
      534 CAPTURE                          VAL R42
      535 SETTABLEKS                       R51 R46 K120 ["removeItemAndUpdateRender"]
      537 DUPCLOSURE                       R51 K121 [PROTO_50]
      538 CAPTURE                          VAL R3
      539 SETTABLEKS                       R51 R46 K122 ["renameItemAndUpdateRender"]
      541 DUPCLOSURE                       R51 K123 [PROTO_51]
      542 CAPTURE                          VAL R11
      543 SETTABLEKS                       R51 R46 K124 ["getDraggedItems"]
      545 DUPCLOSURE                       R51 K125 [PROTO_52]
      546 CAPTURE                          VAL R24
      547 CAPTURE                          VAL R33
      548 CAPTURE                          VAL R21
      549 SETTABLEKS                       R51 R46 K126 ["_goToFolder"]
      551 DUPCLOSURE                       R51 K127 [PROTO_53]
      552 SETTABLEKS                       R51 R46 K128 ["getLastUsedFolderName"]
      554 DUPCLOSURE                       R51 K129 [PROTO_54]
      555 CAPTURE                          VAL R3
      556 CAPTURE                          VAL R33
      557 DUPCLOSURE                       R52 K130 [PROTO_55]
      558 SETTABLEKS                       R52 R46 K131 ["_updateLastUsedFolder"]
      560 DUPCLOSURE                       R52 K132 [PROTO_56]
      561 CAPTURE                          VAL R51
      562 CAPTURE                          VAL R3
      563 SETTABLEKS                       R52 R46 K133 ["requestMoveSelectionToItem"]
      565 DUPCLOSURE                       R52 K134 [PROTO_60]
      566 CAPTURE                          VAL R2
      567 CAPTURE                          VAL R24
      568 CAPTURE                          VAL R7
      569 CAPTURE                          VAL R41
      570 CAPTURE                          VAL R6
      571 SETTABLEKS                       R52 R46 K135 ["_requestMoveFromSearch"]
      573 DUPCLOSURE                       R52 K136 [PROTO_63]
      574 CAPTURE                          VAL R3
      575 CAPTURE                          VAL R29
      576 CAPTURE                          VAL R41
      577 CAPTURE                          VAL R6
      578 CAPTURE                          VAL R24
      579 CAPTURE                          VAL R21
      580 CAPTURE                          VAL R33
      581 CAPTURE                          VAL R1
      582 CAPTURE                          VAL R28
      583 SETTABLEKS                       R52 R46 K137 ["_requestMoveItems"]
      585 DUPCLOSURE                       R52 K138 [PROTO_67]
      586 CAPTURE                          VAL R33
      587 CAPTURE                          VAL R21
      588 CAPTURE                          VAL R3
      589 CAPTURE                          VAL R11
      590 CAPTURE                          VAL R1
      591 CAPTURE                          VAL R28
      592 CAPTURE                          VAL R41
      593 CAPTURE                          VAL R6
      594 SETTABLEKS                       R52 R46 K139 ["_requestCreateFolder"]
      596 DUPCLOSURE                       R52 K140 [PROTO_70]
      597 CAPTURE                          VAL R3
      598 CAPTURE                          VAL R1
      599 CAPTURE                          VAL R41
      600 CAPTURE                          VAL R6
      601 SETTABLEKS                       R52 R46 K141 ["_requestRenameFolder"]
      603 DUPCLOSURE                       R52 K142 [PROTO_71]
      604 SETTABLEKS                       R52 R46 K143 ["uploadStagedFolder"]
      606 DUPCLOSURE                       R52 K144 [PROTO_72]
      607 CAPTURE                          VAL R21
      608 SETTABLEKS                       R52 R46 K145 ["uploadStagedFolderPath"]
      610 DUPCLOSURE                       R52 K146 [PROTO_75]
      611 CAPTURE                          VAL R24
      612 CAPTURE                          VAL R1
      613 CAPTURE                          VAL R2
      614 CAPTURE                          VAL R41
      615 CAPTURE                          VAL R6
      616 SETTABLEKS                       R52 R46 K147 ["requestDeleteFolder"]
      618 DUPCLOSURE                       R52 K148 [PROTO_76]
      619 CAPTURE                          VAL R49
      620 SETTABLEKS                       R52 R46 K149 ["_createInsertJobData"]
      622 DUPCLOSURE                       R52 K150 [PROTO_77]
      623 CAPTURE                          VAL R3
      624 CAPTURE                          VAL R11
      625 CAPTURE                          VAL R40
      626 CAPTURE                          VAL R31
      627 CAPTURE                          VAL R34
      628 CAPTURE                          VAL R36
      629 CAPTURE                          VAL R41
      630 CAPTURE                          VAL R6
      631 CAPTURE                          VAL R30
      632 SETTABLEKS                       R52 R46 K151 ["handleDoubleClick"]
      634 DUPCLOSURE                       R52 K152 [PROTO_78]
      635 SETTABLEKS                       R52 R46 K153 ["setLastItemClicked"]
      637 DUPCLOSURE                       R52 K154 [PROTO_79]
      638 CAPTURE                          VAL R27
      639 SETTABLEKS                       R52 R46 K155 ["changeSelection"]
      641 DUPCLOSURE                       R52 K156 [PROTO_80]
      642 SETTABLEKS                       R52 R46 K157 ["moveSelection"]
      644 DUPCLOSURE                       R52 K158 [PROTO_81]
      645 SETTABLEKS                       R52 R46 K159 ["syncSelectionIndices"]
      647 DUPCLOSURE                       R52 K160 [PROTO_82]
      648 CAPTURE                          VAL R11
      649 SETTABLEKS                       R52 R46 K161 ["getSingleItemSelected"]
      651 DUPCLOSURE                       R52 K162 [PROTO_83]
      652 SETTABLEKS                       R52 R46 K163 ["getItemInfo"]
      654 DUPCLOSURE                       R52 K164 [PROTO_84]
      655 SETTABLEKS                       R52 R46 K165 ["getAssetTechnicalDetails"]
      657 DUPCLOSURE                       R52 K166 [PROTO_85]
      658 CAPTURE                          VAL R48
      659 SETTABLEKS                       R52 R46 K167 ["_getTechnicalDetailsItem"]
      661 DUPCLOSURE                       R52 K168 [PROTO_86]
      662 SETTABLEKS                       R52 R46 K169 ["canFetchAssetTechnicalDetails"]
      664 DUPCLOSURE                       R52 K170 [PROTO_91]
      665 CAPTURE                          VAL R7
      666 CAPTURE                          VAL R48
      667 CAPTURE                          VAL R33
      668 CAPTURE                          VAL R11
      669 SETTABLEKS                       R52 R46 K171 ["fetchAssetTechnicalDetailsAsync"]
      671 DUPCLOSURE                       R52 K172 [PROTO_92]
      672 SETTABLEKS                       R52 R46 K173 ["getAssetSharing"]
      674 DUPCLOSURE                       R52 K174 [PROTO_93]
      675 CAPTURE                          VAL R3
      676 CAPTURE                          VAL R32
      677 SETTABLEKS                       R52 R46 K175 ["_getSharingItem"]
      679 DUPCLOSURE                       R52 K176 [PROTO_94]
      680 SETTABLEKS                       R52 R46 K177 ["canFetchAssetSharing"]
      682 DUPCLOSURE                       R52 K178 [PROTO_99]
      683 CAPTURE                          VAL R7
      684 CAPTURE                          VAL R33
      685 CAPTURE                          VAL R11
      686 SETTABLEKS                       R52 R46 K179 ["fetchAssetSharingAsync"]
      688 DUPCLOSURE                       R52 K180 [PROTO_100]
      689 SETTABLEKS                       R52 R46 K181 ["_invalidateAssetSharing"]
      691 DUPCLOSURE                       R52 K182 [PROTO_101]
      692 CAPTURE                          VAL R11
      693 CAPTURE                          VAL R3
      694 SETTABLEKS                       R52 R46 K183 ["getSelectionIdsHelper"]
      696 DUPCLOSURE                       R52 K184 [PROTO_102]
      697 SETTABLEKS                       R52 R46 K185 ["getAudioPreviewManager"]
      699 DUPCLOSURE                       R52 K186 [PROTO_103]
      700 SETTABLEKS                       R52 R46 K187 ["getItemsCache"]
      702 DUPCLOSURE                       R52 K188 [PROTO_104]
      703 SETTABLEKS                       R52 R46 K189 ["getRenderItems"]
      705 DUPCLOSURE                       R52 K190 [PROTO_105]
      706 CAPTURE                          VAL R3
      707 SETTABLEKS                       R52 R46 K191 ["requestNextPage"]
      709 DUPCLOSURE                       R52 K192 [PROTO_106]
      710 CAPTURE                          VAL R3
      711 CAPTURE                          VAL R31
      712 SETTABLEKS                       R52 R46 K193 ["selectionHasInsertableAssets"]
      714 DUPCLOSURE                       R52 K194 [PROTO_107]
      715 CAPTURE                          VAL R3
      716 CAPTURE                          VAL R32
      717 SETTABLEKS                       R52 R46 K195 ["selectionHasShareableAssets"]
      719 DUPCLOSURE                       R52 K196 [PROTO_108]
      720 CAPTURE                          VAL R3
      721 SETTABLEKS                       R52 R46 K197 ["selectionHasDraftAssets"]
      723 DUPCLOSURE                       R52 K198 [PROTO_109]
      724 CAPTURE                          VAL R49
      725 SETTABLEKS                       R52 R46 K199 ["getInsertDataForDrag"]
      727 DUPCLOSURE                       R52 K200 [PROTO_110]
      728 CAPTURE                          VAL R49
      729 SETTABLEKS                       R52 R46 K201 ["getInsertData"]
      731 DUPCLOSURE                       R52 K202 [PROTO_111]
      732 CAPTURE                          VAL R3
      733 SETTABLEKS                       R52 R46 K203 ["getAssetTypes"]
      735 DUPCLOSURE                       R52 K204 [PROTO_112]
      736 CAPTURE                          VAL R14
      737 SETTABLEKS                       R52 R46 K205 ["getCreators"]
      739 DUPCLOSURE                       R52 K206 [PROTO_113]
      740 CAPTURE                          VAL R12
      741 SETTABLEKS                       R52 R46 K207 ["_updateSortFilter"]
      743 DUPCLOSURE                       R52 K208 [PROTO_114]
      744 SETTABLEKS                       R52 R46 K209 ["getFilters"]
      746 DUPCLOSURE                       R52 K210 [PROTO_115]
      747 CAPTURE                          VAL R13
      748 SETTABLEKS                       R52 R46 K211 ["_addFilter"]
      750 DUPCLOSURE                       R52 K212 [PROTO_116]
      751 SETTABLEKS                       R52 R46 K213 ["_removeFilter"]
      753 DUPCLOSURE                       R52 K214 [PROTO_117]
      754 CAPTURE                          VAL R3
      755 SETTABLEKS                       R52 R46 K215 ["_clearAssetTypeFilter"]
      757 DUPCLOSURE                       R52 K216 [PROTO_118]
      758 SETTABLEKS                       R52 R46 K217 ["hasFilter"]
      760 DUPCLOSURE                       R52 K218 [PROTO_119]
      761 CAPTURE                          VAL R39
      762 CAPTURE                          VAL R5
      763 CAPTURE                          VAL R4
      764 SETTABLEKS                       R52 R46 K219 ["toggleFilter"]
      766 DUPCLOSURE                       R52 K220 [PROTO_120]
      767 CAPTURE                          VAL R39
      768 CAPTURE                          VAL R5
      769 CAPTURE                          VAL R4
      770 CAPTURE                          VAL R3
      771 SETTABLEKS                       R52 R46 K221 ["togglePackagesFilter"]
      773 DUPCLOSURE                       R52 K222 [PROTO_121]
      774 CAPTURE                          VAL R39
      775 CAPTURE                          VAL R5
      776 CAPTURE                          VAL R4
      777 CAPTURE                          VAL R3
      778 SETTABLEKS                       R52 R46 K223 ["toggleArchivedFilter"]
      780 DUPCLOSURE                       R52 K224 [PROTO_122]
      781 CAPTURE                          VAL R3
      782 SETTABLEKS                       R52 R46 K225 ["clearFilters"]
      784 DUPCLOSURE                       R52 K226 [PROTO_123]
      785 SETTABLEKS                       R52 R46 K227 ["getSorts"]
      787 DUPCLOSURE                       R52 K228 [PROTO_124]
      788 SETTABLEKS                       R52 R46 K229 ["setSorts"]
      790 DUPCLOSURE                       R52 K230 [PROTO_125]
      791 CAPTURE                          VAL R39
      792 CAPTURE                          VAL R5
      793 CAPTURE                          VAL R4
      794 SETTABLEKS                       R52 R46 K231 ["addSort"]
      796 DUPCLOSURE                       R52 K232 [PROTO_126]
      797 SETTABLEKS                       R52 R46 K233 ["getSelection"]
      799 DUPCLOSURE                       R52 K234 [PROTO_127]
      800 SETTABLEKS                       R52 R46 K235 ["setSelection"]
      802 DUPCLOSURE                       R52 K236 [PROTO_128]
      803 CAPTURE                          VAL R12
      804 SETTABLEKS                       R52 R46 K237 ["modifySelection"]
      806 DUPCLOSURE                       R52 K238 [PROTO_129]
      807 SETTABLEKS                       R52 R46 K239 ["handleRightClick"]
      809 DUPCLOSURE                       R52 K240 [PROTO_130]
      810 SETTABLEKS                       R52 R46 K241 ["getStagedEditItemPath"]
      812 DUPCLOSURE                       R52 K242 [PROTO_131]
      813 SETTABLEKS                       R52 R46 K243 ["setStagedEditItemPath"]
      815 DUPCLOSURE                       R52 K244 [PROTO_132]
      816 SETTABLEKS                       R52 R46 K245 ["removeStagedItem"]
      818 DUPCLOSURE                       R52 K246 [PROTO_133]
      819 CAPTURE                          VAL R3
      820 CAPTURE                          VAL R33
      821 SETTABLEKS                       R52 R46 K247 ["renamePlace"]
      823 DUPCLOSURE                       R52 K248 [PROTO_134]
      824 CAPTURE                          VAL R3
      825 SETTABLEKS                       R52 R46 K249 ["stageNewFolder"]
      827 DUPCLOSURE                       R52 K250 [PROTO_135]
      828 SETTABLEKS                       R52 R46 K251 ["setAnalyticsInsertAction"]
      830 DUPCLOSURE                       R52 K252 [PROTO_136]
      831 CAPTURE                          VAL R33
      832 CAPTURE                          VAL R1
      833 CAPTURE                          VAL R11
      834 SETTABLEKS                       R52 R46 K253 ["sendInsertToAnalytics"]
      836 DUPCLOSURE                       R52 K254 [PROTO_137]
      837 SETTABLEKS                       R52 R46 K255 ["getCurrentShownScope"]
      839 DUPCLOSURE                       R52 K256 [PROTO_138]
      840 SETTABLEKS                       R52 R46 K257 ["getPlugin"]
      842 RETURN                           R46 1
