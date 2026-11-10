PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Networking"]
        6 GETTABLEKS                       R2 R2 K1 ["fetchToolboxTechnicalDetailsAsync"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R0 K1 ["fetchToolboxTechnicalDetailsAsync"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 NEWTABLE                         R8 0 0
       12 GETUPVAL                         R10 0
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+6]
       15 GETUPVAL                         R10 1
       16 CALL                             R10 0 1
       17 JUMPIFNOT                        R10 ; [+3]
       18 NEWTABLE                         R9 0 0
       20 JUMP                             ; [+1]
       21 LOADNIL                          R9
       22 MOVE                             R10 R0
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 GETTABLEKS                       R17 R1 K0 ["Uid"]
       28 MOVE                             R18 R13
       29 NAMECALL                         R15 R2 K1 ["getItem"]
       31 CALL                             R15 3 1
       32 JUMPIF                           R15 ; [+8]
       33 GETUPVAL                         R16 2
       34 LOADK                            R17 K2 ["AssetInfo not found in cache for path: %*"]
       35 MOVE                             R19 R13
       36 NAMECALL                         R17 R17 K3 ["format"]
       38 CALL                             R17 2 1
       39 CALL                             R16 1 0
       40 JUMP                             ; [+78]
       41 GETUPVAL                         R16 3
       42 GETTABLEKS                       R17 R15 K4 ["AssetType"]
       44 CALL                             R16 1 1
       45 JUMPIFNOT                        R16 ; [+73]
       46 GETTABLEKS                       R18 R15 K5 ["AssetId"]
       48 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
       50 MOVE                             R17 R3
       51 GETIMPORT                        R16 K8 [table.insert]
       53 CALL                             R16 2 0
       54 GETUPVAL                         R16 4
       55 CALL                             R16 0 1
       56 JUMPIFNOT                        R16 ; [+4]
       57 LENGTH                           R16 R3
       58 GETTABLEKS                       R17 R15 K9 ["VersionNumber"]
       60 SETTABLE                         R17 R4 R16
       61 MOVE                             R17 R5
       62 GETUPVAL                         R18 5
       63 GETTABLEKS                       R19 R15 K4 ["AssetType"]
       65 CALL                             R18 1 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R16 K8 [table.insert]
       69 CALL                             R16 -1 0
       70 GETTABLEKS                       R18 R15 K10 ["DisplayName"]
       72 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
       74 MOVE                             R17 R6
       75 GETIMPORT                        R16 K8 [table.insert]
       77 CALL                             R16 2 0
       78 GETTABLEKS                       R19 R15 K12 ["IsPackage"]
       80 ORK                              R18 R19 K11 [False]
       81 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
       83 MOVE                             R17 R7
       84 GETIMPORT                        R16 K8 [table.insert]
       86 CALL                             R16 2 0
       87 GETUPVAL                         R16 0
       88 CALL                             R16 0 1
       89 JUMPIFNOT                        R16 ; [+8]
       90 GETTABLEKS                       R18 R15 K13 ["Creator"]
       92 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
       94 MOVE                             R17 R8
       95 GETIMPORT                        R16 K8 [table.insert]
       97 CALL                             R16 2 0
       98 JUMPIFEQKNIL                     R9 ; [+20]
      100 LENGTH                           R16 R3
      101 DUPTABLE                         R17 K16 [{"Creator", "DraftStatus", "VersionNumber", "ModerationStatus"}]
      102 GETTABLEKS                       R18 R15 K13 ["Creator"]
      104 SETTABLEKS                       R18 R17 K13 ["Creator"]
      106 GETTABLEKS                       R18 R15 K14 ["DraftStatus"]
      108 SETTABLEKS                       R18 R17 K14 ["DraftStatus"]
      110 GETTABLEKS                       R18 R15 K9 ["VersionNumber"]
      112 SETTABLEKS                       R18 R17 K9 ["VersionNumber"]
      114 GETTABLEKS                       R18 R15 K15 ["ModerationStatus"]
      116 SETTABLEKS                       R18 R17 K15 ["ModerationStatus"]
      118 SETTABLE                         R17 R9 R16
      119 FORGLOOP                         R10 2 ; [-94]
      121 DUPTABLE                         R10 K23 [{"Ids", "VersionNumbers", "Types", "Names", "IsPackage", "Creators", "InventoryPublishStates"}]
      122 SETTABLEKS                       R3 R10 K17 ["Ids"]
      124 SETTABLEKS                       R4 R10 K18 ["VersionNumbers"]
      126 SETTABLEKS                       R5 R10 K19 ["Types"]
      128 SETTABLEKS                       R6 R10 K20 ["Names"]
      130 SETTABLEKS                       R7 R10 K12 ["IsPackage"]
      132 GETUPVAL                         R12 0
      133 CALL                             R12 0 1
      134 JUMPIFNOT                        R12 ; [+2]
      135 MOVE                             R11 R8
      136 JUMP                             ; [+1]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K21 ["Creators"]
      140 SETTABLEKS                       R9 R10 K22 ["InventoryPublishStates"]
      142 RETURN                           R10 1

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
       36 JUMPIF                           R2 ; [+3]
       37 GETUPVAL                         R3 2
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+19]
       40 GETUPVAL                         R3 0
       41 NEWTABLE                         R4 0 0
       43 SETTABLEKS                       R4 R3 K7 ["_selection"]
       45 GETUPVAL                         R3 0
       46 LOADN                            R5 1
       47 NAMECALL                         R3 R3 K8 ["syncSelectionIndices"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K9 ["OnItemSelectionChanged"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K7 ["_selection"]
       56 NAMECALL                         R3 R3 K10 ["Fire"]
       58 CALL                             R3 2 0
       59 JUMPIFNOT                        R2 ; [+21]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K5 ["_itemsCache"]
       63 GETTABLEKS                       R5 R1 K4 ["Uid"]
       65 NAMECALL                         R3 R3 K11 ["getScope"]
       67 CALL                             R3 2 1
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K12 ["OnScopeFetchProgressChanged"]
       71 GETTABLEKS                       R6 R3 K13 ["FetchProgress"]
       73 GETTABLEKS                       R7 R3 K14 ["Loading"]
       75 GETTABLEKS                       R8 R1 K4 ["Uid"]
       77 NAMECALL                         R4 R4 K10 ["Fire"]
       79 CALL                             R4 4 0
       80 JUMP                             ; [+18]
       81 GETUPVAL                         R3 3
       82 GETTABLEKS                       R3 R3 K15 ["eventStart"]
       84 GETUPVAL                         R4 4
       85 GETTABLEKS                       R4 R4 K16 ["BenchmarkingEvent"]
       87 GETTABLEKS                       R4 R4 K17 ["LoadNewScope"]
       89 DUPTABLE                         R5 K20 [{["isBackgroundFetch"] = False}]
       90 GETTABLEKS                       R6 R1 K4 ["Uid"]
       92 CALL                             R3 3 0
       93 GETUPVAL                         R3 0
       94 MOVE                             R5 R1
       95 LOADB                            R6 1
       96 NAMECALL                         R3 R3 K21 ["_startNewScopeFetch"]
       98 CALL                             R3 3 0
       99 GETUPVAL                         R3 0
      100 NAMECALL                         R3 R3 K22 ["_createRenderItems"]
      102 CALL                             R3 1 0
      103 GETTABLEKS                       R3 R1 K23 ["Parent"]
      105 JUMPIFNOT                        R3 ; [+24]
      106 GETUPVAL                         R3 0
      107 GETTABLEKS                       R3 R3 K5 ["_itemsCache"]
      109 GETTABLEKS                       R5 R1 K23 ["Parent"]
      111 NAMECALL                         R3 R3 K6 ["hasScope"]
      113 CALL                             R3 2 1
      114 JUMPIF                           R3 ; [+15]
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K24 ["_explorerController"]
      118 GETTABLEKS                       R5 R1 K23 ["Parent"]
      120 NAMECALL                         R3 R3 K25 ["getScopeWithUid"]
      122 CALL                             R3 2 1
      123 JUMPIFNOT                        R3 ; [+6]
      124 GETUPVAL                         R4 0
      125 MOVE                             R6 R3
      126 LOADB                            R7 0
      127 NAMECALL                         R4 R4 K21 ["_startNewScopeFetch"]
      129 CALL                             R4 3 0
      130 GETTABLEKS                       R3 R1 K26 ["Type"]
      132 GETUPVAL                         R4 5
      133 GETTABLEKS                       R4 R4 K27 ["ScopeType"]
      135 GETTABLEKS                       R4 R4 K28 ["ProjectPlaces"]
      137 JUMPIFNOTEQ                      R3 R4 ; [+5]
      139 GETUPVAL                         R3 0
      140 NAMECALL                         R3 R3 K29 ["_clearAssetTypeFilter"]
      142 CALL                             R3 1 0
      143 GETUPVAL                         R3 0
      144 GETTABLEKS                       R3 R3 K30 ["_lastUsedFolderRootUid"]
      146 JUMPIFEQKNIL                     R3 ; [+25]
      148 GETUPVAL                         R3 0
      149 GETTABLEKS                       R3 R3 K24 ["_explorerController"]
      151 MOVE                             R5 R1
      152 NAMECALL                         R3 R3 K31 ["getScopeRoot"]
      154 CALL                             R3 2 1
      155 JUMPIFEQKNIL                     R3 ; [+8]
      157 GETTABLEKS                       R4 R3 K4 ["Uid"]
      159 GETUPVAL                         R5 0
      160 GETTABLEKS                       R5 R5 K30 ["_lastUsedFolderRootUid"]
      162 JUMPIFEQ                         R4 R5 ; [+9]
      164 GETUPVAL                         R4 0
      165 LOADNIL                          R5
      166 SETTABLEKS                       R5 R4 K32 ["_lastUsedFolderName"]
      168 GETUPVAL                         R4 0
      169 LOADNIL                          R5
      170 SETTABLEKS                       R5 R4 K30 ["_lastUsedFolderRootUid"]
      172 GETUPVAL                         R3 0
      173 GETTABLEKS                       R3 R3 K33 ["_audioPreviewManager"]
      175 NAMECALL                         R3 R3 K34 ["stop"]
      177 CALL                             R3 1 0
      178 GETUPVAL                         R3 0
      179 GETTABLEKS                       R3 R3 K35 ["_analyticsState"]
      181 LOADK                            R4 K36 ["browse"]
      182 SETTABLEKS                       R4 R3 K37 ["Source"]
      184 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["_handleOnAddToGame"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_8:
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
       82 JUMPIFNOT                        R4 ; [+31]
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
       99 JUMPIFNOTEQ                      R4 R2 ; [+14]
      101 GETUPVAL                         R4 0
      102 NEWTABLE                         R6 0 1
      104 GETTABLEKS                       R7 R0 K8 ["Path"]
      106 SETLIST                          R6 R7 1 [1]
      108 NEWTABLE                         R7 0 0
      110 MOVE                             R8 R2
      111 NAMECALL                         R4 R4 K16 ["_updateRenderItems"]
      113 CALL                             R4 4 0
      114 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnIsSearchInitiatedChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleOnIsSearchRequestedChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_isOmnisearchEnabled"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["_clearItems"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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
       83 LOADB                            R3 0
       84 SETTABLEKS                       R3 R2 K27 ["_rightClickChangedSelection"]
       86 LOADNIL                          R3
       87 SETTABLEKS                       R3 R2 K28 ["_stagedEditItemPath"]
       89 LOADB                            R3 0
       90 SETTABLEKS                       R3 R2 K29 ["_moveSelectionToNewFolder"]
       92 LOADN                            R3 1
       93 SETTABLEKS                       R3 R2 K30 ["_selectStartIndex"]
       95 LOADN                            R3 1
       96 SETTABLEKS                       R3 R2 K31 ["_selectEndIndex"]
       98 DUPTABLE                         R3 K35 [{["modsPressed"], ["targetAssetId"] = -1}]
       99 DUPTABLE                         R4 K39 [{["Shift"] = False, ["Ctrl"] = False}]
      100 SETTABLEKS                       R4 R3 K32 ["modsPressed"]
      102 SETTABLEKS                       R3 R2 K40 ["_clickState"]
      104 LOADB                            R3 0
      105 SETTABLEKS                       R3 R2 K41 ["_isDragging"]
      107 LOADK                            R3 K42 [""]
      108 SETTABLEKS                       R3 R2 K43 ["_lastItemPathClicked"]
      110 LOADNIL                          R3
      111 SETTABLEKS                       R3 R2 K44 ["_lastUsedFolderName"]
      113 LOADNIL                          R3
      114 SETTABLEKS                       R3 R2 K45 ["_lastUsedFolderRootUid"]
      116 LOADNIL                          R3
      117 SETTABLEKS                       R3 R2 K46 ["_pendingRevealPath"]
      119 LOADNIL                          R3
      120 SETTABLEKS                       R3 R2 K47 ["_pendingRevealScopeUid"]
      122 LOADB                            R3 0
      123 SETTABLEKS                       R3 R2 K48 ["_showAllSearchFolders"]
      125 LOADN                            R3 0
      126 SETTABLEKS                       R3 R2 K49 ["_searchFolderCount"]
      128 LOADNIL                          R3
      129 SETTABLEKS                       R3 R2 K50 ["_savedSorts"]
      131 LOADNIL                          R3
      132 SETTABLEKS                       R3 R2 K51 ["_savedFilters"]
      134 DUPTABLE                         R3 K58 [{["Action"] = "double_click", ["Source"] = "browse", ["Position"] = 0}]
      135 SETTABLEKS                       R3 R2 K59 ["_analyticsState"]
      137 NEWTABLE                         R3 0 0
      139 SETTABLEKS                       R3 R2 K60 ["_connections"]
      141 NEWTABLE                         R3 0 0
      143 SETTABLEKS                       R3 R2 K61 ["_refreshDebounceTimers"]
      145 NEWTABLE                         R3 0 0
      147 SETTABLEKS                       R3 R2 K62 ["_assetTechnicalDetails"]
      149 NEWTABLE                         R3 0 0
      151 SETTABLEKS                       R3 R2 K63 ["_assetSharing"]
      153 LOADN                            R3 0
      154 SETTABLEKS                       R3 R2 K64 ["_assetSharingEpoch"]
      156 GETUPVAL                         R3 4
      157 GETTABLEKS                       R3 R3 K15 ["new"]
      159 CALL                             R3 0 1
      160 SETTABLEKS                       R3 R2 K65 ["OnVisiblePropertiesChanged"]
      162 GETUPVAL                         R3 4
      163 GETTABLEKS                       R3 R3 K15 ["new"]
      165 CALL                             R3 0 1
      166 SETTABLEKS                       R3 R2 K66 ["OnItemsChanged"]
      168 GETUPVAL                         R3 4
      169 GETTABLEKS                       R3 R3 K15 ["new"]
      171 CALL                             R3 0 1
      172 SETTABLEKS                       R3 R2 K67 ["OnItemSelectionChanged"]
      174 GETUPVAL                         R3 4
      175 GETTABLEKS                       R3 R3 K15 ["new"]
      177 CALL                             R3 0 1
      178 SETTABLEKS                       R3 R2 K68 ["OnSortFilterChanged"]
      180 GETUPVAL                         R3 4
      181 GETTABLEKS                       R3 R3 K15 ["new"]
      183 CALL                             R3 0 1
      184 SETTABLEKS                       R3 R2 K69 ["OnCreatorsChanged"]
      186 GETUPVAL                         R3 4
      187 GETTABLEKS                       R3 R3 K15 ["new"]
      189 CALL                             R3 0 1
      190 SETTABLEKS                       R3 R2 K70 ["OnScopeFetchProgressChanged"]
      192 GETUPVAL                         R3 4
      193 GETTABLEKS                       R3 R3 K15 ["new"]
      195 CALL                             R3 0 1
      196 SETTABLEKS                       R3 R2 K71 ["OnSearchFolderCountChanged"]
      198 GETUPVAL                         R3 4
      199 GETTABLEKS                       R3 R3 K15 ["new"]
      201 CALL                             R3 0 1
      202 SETTABLEKS                       R3 R2 K72 ["OnStagedEditItemPathChanged"]
      204 GETUPVAL                         R3 4
      205 GETTABLEKS                       R3 R3 K15 ["new"]
      207 CALL                             R3 0 1
      208 SETTABLEKS                       R3 R2 K73 ["OnAssetSharingChanged"]
      210 GETUPVAL                         R5 5
      211 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      213 MOVE                             R4 R2
      214 GETIMPORT                        R3 K75 [setmetatable]
      216 CALL                             R3 2 0
      217 GETIMPORT                        R3 K77 [pcall]
      219 NEWCLOSURE                       R4 P0
      220 CAPTURE                          VAL R2
      221 CALL                             R3 1 2
      222 JUMPIFNOT                        R3 ; [+14]
      223 JUMPIFNOT                        R4 ; [+13]
      224 GETTABLEKS                       R6 R2 K60 ["_connections"]
      226 GETTABLEKS                       R7 R4 K78 ["PlaceDocPanelClosed"]
      228 NEWCLOSURE                       R9 P1
      229 CAPTURE                          VAL R2
      230 NAMECALL                         R7 R7 K79 ["Connect"]
      232 CALL                             R7 2 -1
      233 FASTCALL                         TABLE_INSERT ; [+2]
      234 GETIMPORT                        R5 K82 [table.insert]
      236 CALL                             R5 -1 0
      237 GETUPVAL                         R5 6
      238 CALL                             R5 0 1
      239 JUMPIFNOT                        R5 ; [+15]
      240 GETTABLEKS                       R6 R2 K60 ["_connections"]
      242 GETTABLEKS                       R7 R2 K11 ["_networking"]
      244 GETTABLEKS                       R7 R7 K83 ["OnAssetPermissionsChanged"]
      246 NEWCLOSURE                       R9 P2
      247 CAPTURE                          VAL R2
      248 NAMECALL                         R7 R7 K79 ["Connect"]
      250 CALL                             R7 2 -1
      251 FASTCALL                         TABLE_INSERT ; [+2]
      252 GETIMPORT                        R5 K82 [table.insert]
      254 CALL                             R5 -1 0
      255 DUPCLOSURE                       R5 K84 [PROTO_5]
      256 CAPTURE                          UPVAL U7
      257 CAPTURE                          UPVAL U8
      258 SETTABLEKS                       R5 R2 K85 ["_fetchAssetsErrorCallback"]
      260 GETTABLEKS                       R5 R2 K3 ["_pluginController"]
      262 NAMECALL                         R5 R5 K86 ["getCurrentScope"]
      264 CALL                             R5 1 1
      265 GETUPVAL                         R6 9
      266 GETTABLEKS                       R6 R6 K87 ["eventStart"]
      268 GETUPVAL                         R7 10
      269 GETTABLEKS                       R7 R7 K88 ["BenchmarkingEvent"]
      271 GETTABLEKS                       R7 R7 K89 ["LoadNewScope"]
      273 DUPTABLE                         R8 K91 [{["isBackgroundFetch"] = False}]
      274 GETTABLEKS                       R9 R5 K92 ["Uid"]
      276 CALL                             R6 3 0
      277 MOVE                             R8 R5
      278 NAMECALL                         R6 R2 K93 ["_startNewScopeFetch"]
      280 CALL                             R6 2 0
      281 GETTABLEKS                       R6 R2 K3 ["_pluginController"]
      283 NAMECALL                         R6 R6 K16 ["getPlugin"]
      285 CALL                             R6 1 1
      286 GETTABLEKS                       R8 R2 K60 ["_connections"]
      288 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      290 GETTABLEKS                       R9 R9 K94 ["OnCurrentScopeChanged"]
      292 NEWCLOSURE                       R11 P4
      293 CAPTURE                          VAL R2
      294 CAPTURE                          UPVAL U11
      295 CAPTURE                          UPVAL U6
      296 CAPTURE                          UPVAL U9
      297 CAPTURE                          UPVAL U10
      298 CAPTURE                          UPVAL U2
      299 NAMECALL                         R9 R9 K79 ["Connect"]
      301 CALL                             R9 2 -1
      302 FASTCALL                         TABLE_INSERT ; [+2]
      303 GETIMPORT                        R7 K82 [table.insert]
      305 CALL                             R7 -1 0
      306 GETUPVAL                         R7 12
      307 CALL                             R7 0 1
      308 JUMPIFNOT                        R7 ; [+12]
      309 GETTABLEKS                       R8 R2 K60 ["_connections"]
      311 LOADK                            R11 K95 ["OnAddToExperienceFinished"]
      312 NEWCLOSURE                       R12 P5
      313 CAPTURE                          VAL R2
      314 NAMECALL                         R9 R6 K96 ["OnInvoke"]
      316 CALL                             R9 3 -1
      317 FASTCALL                         TABLE_INSERT ; [+2]
      318 GETIMPORT                        R7 K82 [table.insert]
      320 CALL                             R7 -1 0
      321 GETTABLEKS                       R8 R2 K60 ["_connections"]
      323 GETTABLEKS                       R9 R2 K3 ["_pluginController"]
      325 GETTABLEKS                       R9 R9 K97 ["OnNewAssetFetched"]
      327 NEWCLOSURE                       R11 P6
      328 CAPTURE                          VAL R2
      329 CAPTURE                          UPVAL U13
      330 NAMECALL                         R9 R9 K79 ["Connect"]
      332 CALL                             R9 2 -1
      333 FASTCALL                         TABLE_INSERT ; [+2]
      334 GETIMPORT                        R7 K82 [table.insert]
      336 CALL                             R7 -1 0
      337 GETTABLEKS                       R8 R2 K60 ["_connections"]
      339 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      341 GETTABLEKS                       R9 R9 K98 ["OnSearchRequested"]
      343 NEWCLOSURE                       R11 P7
      344 CAPTURE                          VAL R2
      345 CAPTURE                          UPVAL U14
      346 NAMECALL                         R9 R9 K79 ["Connect"]
      348 CALL                             R9 2 -1
      349 FASTCALL                         TABLE_INSERT ; [+2]
      350 GETIMPORT                        R7 K82 [table.insert]
      352 CALL                             R7 -1 0
      353 GETTABLEKS                       R8 R2 K60 ["_connections"]
      355 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      357 GETTABLEKS                       R9 R9 K99 ["OnIsSearchInitiatedChanged"]
      359 NEWCLOSURE                       R11 P8
      360 CAPTURE                          VAL R2
      361 NAMECALL                         R9 R9 K79 ["Connect"]
      363 CALL                             R9 2 -1
      364 FASTCALL                         TABLE_INSERT ; [+2]
      365 GETIMPORT                        R7 K82 [table.insert]
      367 CALL                             R7 -1 0
      368 GETTABLEKS                       R8 R2 K60 ["_connections"]
      370 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      372 GETTABLEKS                       R9 R9 K100 ["OnIsSearchRequestedChanged"]
      374 NEWCLOSURE                       R11 P9
      375 CAPTURE                          VAL R2
      376 NAMECALL                         R9 R9 K79 ["Connect"]
      378 CALL                             R9 2 -1
      379 FASTCALL                         TABLE_INSERT ; [+2]
      380 GETIMPORT                        R7 K82 [table.insert]
      382 CALL                             R7 -1 0
      383 GETTABLEKS                       R8 R2 K60 ["_connections"]
      385 GETTABLEKS                       R9 R2 K7 ["_searchController"]
      387 GETTABLEKS                       R9 R9 K101 ["OnIsDefaultSearchStateChanged"]
      389 NEWCLOSURE                       R11 P10
      390 CAPTURE                          VAL R2
      391 NAMECALL                         R9 R9 K79 ["Connect"]
      393 CALL                             R9 2 -1
      394 FASTCALL                         TABLE_INSERT ; [+2]
      395 GETIMPORT                        R7 K82 [table.insert]
      397 CALL                             R7 -1 0
      398 GETTABLEKS                       R8 R2 K60 ["_connections"]
      400 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      402 GETTABLEKS                       R9 R9 K102 ["OnBrowserLayoutChanged"]
      404 NEWCLOSURE                       R11 P11
      405 CAPTURE                          VAL R2
      406 NAMECALL                         R9 R9 K79 ["Connect"]
      408 CALL                             R9 2 -1
      409 FASTCALL                         TABLE_INSERT ; [+2]
      410 GETIMPORT                        R7 K82 [table.insert]
      412 CALL                             R7 -1 0
      413 GETTABLEKS                       R8 R2 K60 ["_connections"]
      415 GETTABLEKS                       R9 R2 K9 ["_layoutController"]
      417 GETTABLEKS                       R9 R9 K103 ["OnGridStateUpdated"]
      419 NEWCLOSURE                       R11 P12
      420 CAPTURE                          VAL R2
      421 NAMECALL                         R9 R9 K79 ["Connect"]
      423 CALL                             R9 2 -1
      424 FASTCALL                         TABLE_INSERT ; [+2]
      425 GETIMPORT                        R7 K82 [table.insert]
      427 CALL                             R7 -1 0
      428 GETUPVAL                         R7 15
      429 CALL                             R7 0 1
      430 JUMPIF                           R7 ; [+3]
      431 GETUPVAL                         R7 16
      432 CALL                             R7 0 1
      433 JUMPIFNOT                        R7 ; [+20]
      434 GETIMPORT                        R7 K77 [pcall]
      436 NEWCLOSURE                       R8 P13
      437 CAPTURE                          VAL R2
      438 CALL                             R7 1 2
      439 JUMPIFNOT                        R7 ; [+14]
      440 JUMPIFNOT                        R8 ; [+13]
      441 GETTABLEKS                       R10 R2 K60 ["_connections"]
      443 GETTABLEKS                       R11 R8 K104 ["InventoryRefreshReceived"]
      445 NEWCLOSURE                       R13 P14
      446 CAPTURE                          VAL R2
      447 NAMECALL                         R11 R11 K79 ["Connect"]
      449 CALL                             R11 2 -1
      450 FASTCALL                         TABLE_INSERT ; [+2]
      451 GETIMPORT                        R9 K82 [table.insert]
      453 CALL                             R9 -1 0
      454 RETURN                           R2 1

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
        3 NAMECALL                         R1 R0 K1 ["_cancelCreatorScopeWait"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_audioPreviewManager"]
        8 NAMECALL                         R1 R1 K3 ["teardownAudioPlayer"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K4 ["_refreshDebounceTimers"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETIMPORT                        R6 K7 [task.cancel]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-5]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R2 R0 K8 ["_connections"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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
       28 NAMECALL                         R4 R0 K10 ["_tryRevealPendingItem"]
       30 CALL                             R4 1 0
       31 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_searchFolderCount"]
        2 RETURN                           R1 1

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_showAllSearchFolders"]
        2 RETURN                           R1 1

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 NAMECALL                         R1 R0 K0 ["refreshItems"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pluginController"]
        5 NAMECALL                         R1 R1 K2 ["refreshUniverseInfo"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_explorerController"]
       10 NAMECALL                         R1 R1 K4 ["refreshScopes"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsCache"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["removeItem"]
        6 CALL                             R3 3 0
        7 NAMECALL                         R3 R0 K2 ["getCurrentShownScope"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R3 R3 K3 ["Uid"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+27]
       14 NAMECALL                         R3 R0 K2 ["getCurrentShownScope"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K3 ["Uid"]
       19 JUMPIFNOTEQ                      R3 R2 ; [+20]
       21 NAMECALL                         R3 R0 K4 ["_getIsSearchActive"]
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+4]
       25 NAMECALL                         R4 R0 K5 ["_createRenderItems"]
       27 CALL                             R4 1 0
       28 RETURN                           R0 0
       29 NEWTABLE                         R6 0 0
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R1
       34 SETLIST                          R7 R8 1 [1]
       36 MOVE                             R8 R2
       37 NAMECALL                         R4 R0 K6 ["_updateRenderItems"]
       39 CALL                             R4 4 0
       40 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["showSnackbar"]
        6 DUPTABLE                         R2 K3 [{"LocalizableMessage", "Type"}]
        7 DUPTABLE                         R3 K8 [{["Key"] = "Toast", ["SubKey"] = "ShowInFolderFailed"}]
        8 SETTABLEKS                       R3 R2 K1 ["LocalizableMessage"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K9 ["SnackbarType"]
       13 GETTABLEKS                       R3 R3 K10 ["Error"]
       15 SETTABLEKS                       R3 R2 K2 ["Type"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R1 R0 K11 ["_pluginController"]
       21 DUPTABLE                         R3 K8 [{["Key"] = "Toast", ["SubKey"] = "ShowInFolderFailed"}]
       22 NAMECALL                         R1 R1 K12 ["showToast"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
        3 JUMPIF                           R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R1 K1 ["results"]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R1 K1 ["results"]
       15 GETTABLEN                        R2 R3 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETTABLEKS                       R3 R2 K2 ["error"]
       19 JUMPIFEQKNIL                     R3 ; [+14]
       21 GETUPVAL                         R3 2
       22 LOADK                            R4 K3 ["Could not resolve parent folder for item %*"]
       23 GETUPVAL                         R6 3
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 LOADK                            R5 K5 ["WARN"]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 0
       30 NAMECALL                         R3 R3 K6 ["_showShowInFolderFailedToast"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R3 R2 K7 ["item"]
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETTABLEKS                       R5 R3 K8 ["folderItem"]
       39 JUMPIFNOT                        R5 ; [+7]
       40 GETTABLEKS                       R4 R3 K8 ["folderItem"]
       42 GETTABLEKS                       R4 R4 K9 ["folder"]
       44 GETTABLEKS                       R4 R4 K10 ["folderId"]
       46 JUMP                             ; [+1]
       47 LOADN                            R4 0
       48 JUMPIFNOT                        R3 ; [+2]
       49 JUMPIFNOTEQKN                    R4 K11 [0] ; [+8]
       51 GETUPVAL                         R5 0
       52 GETUPVAL                         R7 4
       53 GETUPVAL                         R8 3
       54 NAMECALL                         R5 R5 K12 ["_revealItemInScope"]
       56 CALL                             R5 3 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R5 5
       59 GETUPVAL                         R6 6
       60 GETTABLEKS                       R6 R6 K13 ["ScopeType"]
       62 GETTABLEKS                       R6 R6 K14 ["Folder"]
       64 MOVE                             R7 R4
       65 CALL                             R5 2 1
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K15 ["_explorerController"]
       69 MOVE                             R8 R5
       70 NAMECALL                         R6 R6 K16 ["getScopeWithUid"]
       72 CALL                             R6 2 1
       73 JUMPIFNOT                        R6 ; [+7]
       74 GETUPVAL                         R7 0
       75 MOVE                             R9 R6
       76 GETUPVAL                         R10 3
       77 NAMECALL                         R7 R7 K12 ["_revealItemInScope"]
       79 CALL                             R7 3 0
       80 RETURN                           R0 0
       81 GETTABLEKS                       R7 R3 K17 ["path"]
       83 GETUPVAL                         R8 7
       84 MOVE                             R9 R7
       85 CALL                             R8 1 1
       86 JUMPIF                           R8 ; [+3]
       87 GETUPVAL                         R8 4
       88 GETTABLEKS                       R8 R8 K18 ["Uid"]
       90 GETUPVAL                         R9 8
       91 GETTABLEKS                       R10 R3 K8 ["folderItem"]
       93 GETUPVAL                         R11 4
       94 MOVE                             R12 R7
       95 CALL                             R9 3 1
       96 GETUPVAL                         R10 0
       97 GETUPVAL                         R12 9
       98 MOVE                             R13 R9
       99 MOVE                             R14 R8
      100 CALL                             R12 2 1
      101 GETUPVAL                         R13 3
      102 NAMECALL                         R10 R10 K12 ["_revealItemInScope"]
      104 CALL                             R10 3 0
      105 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIF                           R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 LOADK                            R2 K1 ["Failed to get parent folder for item %*: %*"]
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K2 ["pretty"]
       16 MOVE                             R6 R0
       17 CALL                             R5 1 1
       18 NAMECALL                         R2 R2 K3 ["format"]
       20 CALL                             R2 3 1
       21 LOADK                            R3 K4 ["WARN"]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 0
       24 NAMECALL                         R1 R1 K5 ["_showShowInFolderFailedToast"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 MOVE                             R4 R3
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R4 R0 K0 ["_explorerController"]
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R4 K1 ["getScopeWithUid"]
       10 CALL                             R4 2 1
       11 JUMPIF                           R4 ; [+12]
       12 GETUPVAL                         R5 1
       13 LOADK                            R6 K2 ["Cannot show item %* in folder, could not resolve its account"]
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K3 ["format"]
       17 CALL                             R6 2 1
       18 LOADK                            R7 K4 ["WARN"]
       19 CALL                             R5 2 0
       20 NAMECALL                         R5 R0 K5 ["_showShowInFolderFailedToast"]
       22 CALL                             R5 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R6 2
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+13]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K6 ["Networking"]
       30 GETTABLEKS                       R5 R5 K7 ["getItemParentsAsync"]
       32 MOVE                             R6 R4
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R1
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 JUMP                             ; [+11]
       40 GETTABLEKS                       R5 R0 K8 ["_networking"]
       42 MOVE                             R7 R4
       43 NEWTABLE                         R8 0 1
       45 MOVE                             R9 R1
       46 SETLIST                          R8 R9 1 [1]
       48 NAMECALL                         R5 R5 K7 ["getItemParentsAsync"]
       50 CALL                             R5 3 1
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 NAMECALL                         R6 R5 K9 ["andThen"]
       64 CALL                             R6 2 1
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U8
       71 NAMECALL                         R6 R6 K10 ["catch"]
       73 CALL                             R6 2 0
       74 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 NOT                              R0 R1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_showAssetGeneration"]
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Path"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["showItemInFolder"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["_showAssetGeneration"]
        8 GETUPVAL                         R3 1
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 MOVE                             R3 R0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R1 R1 K2 ["_whenCreatorScopeKnown"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["_showAssetGeneration"]
        8 GETUPVAL                         R3 1
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 LOADK                            R2 K2 ["Cannot show asset %*, fetching its info failed: %*"]
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K3 ["pretty"]
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 NAMECALL                         R2 R2 K4 ["format"]
       25 CALL                             R2 3 1
       26 LOADK                            R3 K5 ["WARN"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 0
       29 NAMECALL                         R1 R1 K6 ["_showShowInFolderFailedToast"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_62:
        0 NAMECALL                         R2 R0 K0 ["_cancelCreatorScopeWait"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R4 R0 K3 ["_showAssetGeneration"]
        5 ORK                              R3 R4 K2 [0]
        6 ADDK                             R2 R3 K1 [1]
        7 SETTABLEKS                       R2 R0 K3 ["_showAssetGeneration"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 GETTABLEKS                       R4 R0 K4 ["_networking"]
       14 MOVE                             R6 R1
       15 GETTABLEKS                       R7 R0 K5 ["_pluginController"]
       17 NAMECALL                         R7 R7 K6 ["getUser"]
       19 CALL                             R7 1 1
       20 LOADB                            R8 0
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWCLOSURE                       R10 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 NAMECALL                         R4 R4 K7 ["fetchAssetInfoAsync"]
       33 CALL                             R4 6 0
       34 RETURN                           R0 0

PROTO_63:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Type"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K2 ["Group"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+21]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["_explorerController"]
       14 NAMECALL                         R0 R0 K4 ["hasLoadedGroups"]
       16 CALL                             R0 1 1
       17 JUMPIF                           R0 ; [+13]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["_explorerController"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["Uid"]
       24 NAMECALL                         R1 R1 K6 ["getScopeWithUid"]
       26 CALL                             R1 2 1
       27 JUMPIFNOTEQKNIL                  R1 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 RETURN                           R0 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_cancelCreatorScopeWait"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_65:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Type"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K2 ["Group"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+21]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["_explorerController"]
       14 NAMECALL                         R0 R0 K4 ["hasLoadedGroups"]
       16 CALL                             R0 1 1
       17 JUMPIF                           R0 ; [+13]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["_explorerController"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["Uid"]
       24 NAMECALL                         R1 R1 K6 ["getScopeWithUid"]
       26 CALL                             R1 2 1
       27 JUMPIFNOTEQKNIL                  R1 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 JUMPIFNOT                        R0 ; [+6]
       32 GETUPVAL                         R0 2
       33 NAMECALL                         R0 R0 K7 ["_cancelCreatorScopeWait"]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 3
       37 CALL                             R0 0 0
       38 RETURN                           R0 0

PROTO_66:
        0 GETTABLEKS                       R3 R1 K0 ["Creator"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 LOADB                            R5 1
        7 GETTABLEKS                       R6 R3 K1 ["Type"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K2 ["ScopeType"]
       12 GETTABLEKS                       R7 R7 K3 ["Group"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+18]
       16 GETTABLEKS                       R5 R0 K4 ["_explorerController"]
       18 NAMECALL                         R5 R5 K5 ["hasLoadedGroups"]
       20 CALL                             R5 1 1
       21 JUMPIF                           R5 ; [+11]
       22 GETTABLEKS                       R6 R0 K4 ["_explorerController"]
       24 GETTABLEKS                       R8 R3 K6 ["Uid"]
       26 NAMECALL                         R6 R6 K7 ["getScopeWithUid"]
       28 CALL                             R6 2 1
       29 JUMPIFNOTEQKNIL                  R6 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMPIFNOT                        R5 ; [+3]
       34 MOVE                             R5 R2
       35 CALL                             R5 0 0
       36 RETURN                           R0 0
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 DUPTABLE                         R6 K10 [{"connection", "timeout"}]
       41 GETTABLEKS                       R7 R0 K4 ["_explorerController"]
       43 GETTABLEKS                       R7 R7 K11 ["OnExplorerItemsChanged"]
       45 NEWCLOSURE                       R9 P2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R7 R7 K12 ["Connect"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K8 ["connection"]
       55 GETIMPORT                        R7 K15 [task.delay]
       57 LOADN                            R8 10
       58 MOVE                             R9 R5
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K9 ["timeout"]
       62 SETTABLEKS                       R6 R0 K16 ["_creatorScopeWait"]
       64 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["_creatorScopeWait"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R0 K0 ["_creatorScopeWait"]
        7 GETTABLEKS                       R2 R1 K1 ["connection"]
        9 NAMECALL                         R2 R2 K2 ["Disconnect"]
       11 CALL                             R2 1 0
       12 GETIMPORT                        R2 K5 [coroutine.running]
       14 CALL                             R2 0 1
       15 GETTABLEKS                       R3 R1 K6 ["timeout"]
       17 JUMPIFEQ                         R2 R3 ; [+6]
       19 GETIMPORT                        R2 K9 [task.cancel]
       21 GETTABLEKS                       R3 R1 K6 ["timeout"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_lastUsedFolderName"]
        2 RETURN                           R1 1

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_75:
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

PROTO_76:
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
       38 JUMPIFNOTEQ                      R11 R12 ; [+43]
       40 GETUPVAL                         R13 1
       41 CALL                             R13 0 1
       42 JUMPIFNOT                        R13 ; [+9]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K9 ["Networking"]
       46 GETTABLEKS                       R12 R12 K10 ["getItemParentsAsync"]
       48 MOVE                             R13 R3
       49 MOVE                             R14 R8
       50 CALL                             R12 2 1
       51 JUMP                             ; [+7]
       52 GETTABLEKS                       R12 R0 K11 ["_networking"]
       54 MOVE                             R14 R3
       55 MOVE                             R15 R8
       56 NAMECALL                         R12 R12 K10 ["getItemParentsAsync"]
       58 CALL                             R12 3 1
       59 NEWCLOSURE                       R15 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          REF R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R6
       65 NAMECALL                         R13 R12 K12 ["andThen"]
       67 CALL                             R13 2 1
       68 NEWCLOSURE                       R15 P1
       69 CAPTURE                          REF R5
       70 NAMECALL                         R13 R13 K13 ["catch"]
       72 CALL                             R13 2 1
       73 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       75 MOVE                             R15 R7
       76 MOVE                             R16 R13
       77 GETIMPORT                        R14 K7 [table.insert]
       79 CALL                             R14 2 0
       80 NEWTABLE                         R8 0 0
       82 FORNLOOP                         R9
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K14 ["all"]
       86 MOVE                             R10 R7
       87 CALL                             R9 1 1
       88 NEWCLOSURE                       R11 P2
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R5
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 NAMECALL                         R9 R9 K12 ["andThen"]
       99 CALL                             R9 2 0
      100 CLOSEUPVALS                      R5
      101 RETURN                           R0 0

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETTABLEKS                       R1 R0 K1 ["responseBody"]
       10 JUMPIF                           R1 ; [+4]
       11 NEWTABLE                         R1 0 0
       13 JUMP                             ; [+1]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 2
       16 LOADK                            R3 K2 ["Error creating folder: %*"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["pretty"]
       20 MOVE                             R6 R1
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K4 ["format"]
       24 CALL                             R3 2 1
       25 LOADK                            R4 K5 ["WARN"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R4 R1 K7 ["message"]
       30 ORK                              R3 R4 K6 [""]
       31 LOADK                            R4 K8 ["Create"]
       32 CALL                             R2 2 3
       33 GETUPVAL                         R5 5
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+22]
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R5 R5 K9 ["showSnackbar"]
       39 DUPTABLE                         R6 K12 [{"LocalizableMessage", "Type"}]
       40 DUPTABLE                         R7 K16 [{"Key", "SubKey", "Args"}]
       41 SETTABLEKS                       R2 R7 K13 ["Key"]
       43 SETTABLEKS                       R3 R7 K14 ["SubKey"]
       45 SETTABLEKS                       R4 R7 K15 ["Args"]
       47 SETTABLEKS                       R7 R6 K10 ["LocalizableMessage"]
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K17 ["SnackbarType"]
       52 GETTABLEKS                       R7 R7 K18 ["Error"]
       54 SETTABLEKS                       R7 R6 K11 ["Type"]
       56 CALL                             R5 1 0
       57 JUMP                             ; [+13]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K19 ["_pluginController"]
       61 DUPTABLE                         R7 K16 [{"Key", "SubKey", "Args"}]
       62 SETTABLEKS                       R2 R7 K13 ["Key"]
       64 SETTABLEKS                       R3 R7 K14 ["SubKey"]
       66 SETTABLEKS                       R4 R7 K15 ["Args"]
       68 NAMECALL                         R5 R5 K20 ["showToast"]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R5 0
       72 LOADB                            R6 0
       73 SETTABLEKS                       R6 R5 K21 ["_moveSelectionToNewFolder"]
       75 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
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
       45 DUPTABLE                         R5 K14 [{"ParentScope", "RootScope", "FolderName", "PluginSessionId"}]
       46 SETTABLEKS                       R3 R5 K10 ["ParentScope"]
       48 SETTABLEKS                       R4 R5 K11 ["RootScope"]
       50 SETTABLEKS                       R1 R5 K12 ["FolderName"]
       52 GETTABLEKS                       R6 R0 K15 ["_pluginController"]
       54 NAMECALL                         R6 R6 K16 ["getPluginSessionId"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K13 ["PluginSessionId"]
       59 GETUPVAL                         R7 1
       60 CALL                             R7 0 1
       61 JUMPIFNOT                        R7 ; [+8]
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K17 ["Networking"]
       65 GETTABLEKS                       R6 R6 K18 ["createFolderAsync"]
       67 MOVE                             R7 R5
       68 CALL                             R6 1 1
       69 JUMP                             ; [+6]
       70 GETTABLEKS                       R6 R0 K19 ["_networking"]
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K18 ["createFolderAsync"]
       75 CALL                             R6 2 1
       76 NEWCLOSURE                       R9 P0
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          UPVAL U6
       83 NAMECALL                         R7 R6 K20 ["andThen"]
       85 CALL                             R7 2 1
       86 NEWCLOSURE                       R9 P1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U9
       94 NAMECALL                         R7 R7 K21 ["catch"]
       96 CALL                             R7 2 1
       97 NEWCLOSURE                       R9 P2
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R3
      100 NAMECALL                         R7 R7 K22 ["finally"]
      102 CALL                             R7 2 0
      103 RETURN                           R0 0

PROTO_84:
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

PROTO_85:
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

PROTO_86:
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
       22 GETTABLEKS                       R4 R0 K7 ["_pluginController"]
       24 NAMECALL                         R4 R4 K8 ["getPluginSessionId"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R6 0
       28 CALL                             R6 0 1
       29 JUMPIFNOT                        R6 ; [+10]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K9 ["Networking"]
       33 GETTABLEKS                       R5 R5 K10 ["updateFolderMetadataAsync"]
       35 MOVE                             R6 R3
       36 MOVE                             R7 R1
       37 MOVE                             R8 R4
       38 CALL                             R5 3 1
       39 JUMP                             ; [+8]
       40 GETTABLEKS                       R5 R0 K11 ["_networking"]
       42 MOVE                             R7 R3
       43 MOVE                             R8 R1
       44 MOVE                             R9 R4
       45 NAMECALL                         R5 R5 K10 ["updateFolderMetadataAsync"]
       47 CALL                             R5 4 1
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U3
       55 NAMECALL                         R6 R5 K12 ["andThen"]
       57 CALL                             R6 2 1
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 NAMECALL                         R6 R6 K13 ["catch"]
       64 CALL                             R6 2 0
       65 RETURN                           R0 0

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETTABLEKS                       R1 R0 K1 ["responseBody"]
       10 JUMPIF                           R1 ; [+4]
       11 NEWTABLE                         R1 0 0
       13 JUMP                             ; [+1]
       14 MOVE                             R1 R0
       15 GETIMPORT                        R3 K4 [string.find]
       17 GETTABLEKS                       R5 R1 K6 ["message"]
       19 ORK                              R4 R5 K5 [""]
       20 LOADK                            R5 K7 ["must be empty"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+2]
       23 LOADN                            R2 1
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R2 R1 K8 ["code"]
       27 LOADK                            R3 K9 ["DeleteFolderFailed"]
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K10 ["ErrorTypeLookup"]
       32 GETTABLEKS                       R5 R5 K11 ["DeleteFolder"]
       34 GETTABLE                         R4 R5 R2
       35 OR                               R3 R4 R3
       36 GETUPVAL                         R4 3
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+18]
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K12 ["showSnackbar"]
       42 DUPTABLE                         R5 K15 [{"LocalizableMessage", "Type"}]
       43 DUPTABLE                         R6 K19 [{["Key"] = "Toast", ["SubKey"]}]
       44 SETTABLEKS                       R3 R6 K18 ["SubKey"]
       46 SETTABLEKS                       R6 R5 K13 ["LocalizableMessage"]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K20 ["SnackbarType"]
       51 GETTABLEKS                       R6 R6 K21 ["Error"]
       53 SETTABLEKS                       R6 R5 K14 ["Type"]
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K22 ["_pluginController"]
       60 DUPTABLE                         R6 K19 [{["Key"] = "Toast", ["SubKey"]}]
       61 SETTABLEKS                       R3 R6 K18 ["SubKey"]
       63 NAMECALL                         R4 R4 K23 ["showToast"]
       65 CALL                             R4 2 0
       66 RETURN                           R0 0

PROTO_91:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginController"]
        2 NAMECALL                         R3 R3 K1 ["getPluginSessionId"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+9]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Networking"]
       11 GETTABLEKS                       R4 R4 K3 ["deleteFolderAsync"]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R3
       15 CALL                             R4 2 1
       16 JUMP                             ; [+7]
       17 GETTABLEKS                       R4 R0 K4 ["_networking"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R3
       21 NAMECALL                         R4 R4 K3 ["deleteFolderAsync"]
       23 CALL                             R4 3 1
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R5 R4 K5 ["andThen"]
       32 CALL                             R5 2 1
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NAMECALL                         R5 R5 K6 ["catch"]
       41 CALL                             R5 2 0
       42 RETURN                           R0 0

PROTO_92:
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
      119 CALL                             R6 1 0
      120 RETURN                           R0 0

PROTO_93:
        0 GETTABLEKS                       R3 R0 K0 ["_renderItems"]
        2 GETTABLE                         R2 R3 R1
        3 SETTABLEKS                       R2 R0 K1 ["_lastItemPathClicked"]
        5 RETURN                           R0 0

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["_selectStartIndex"]
        3 GETTABLEKS                       R2 R0 K0 ["_selectStartIndex"]
        5 SETTABLEKS                       R2 R0 K1 ["_selectEndIndex"]
        7 RETURN                           R0 0

PROTO_97:
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

PROTO_98:
        0 NAMECALL                         R2 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_itemsCache"]
        5 GETTABLEKS                       R5 R2 K2 ["Uid"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K3 ["getItem"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_99:
        0 GETTABLEKS                       R3 R0 K0 ["_assetTechnicalDetails"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_100:
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

PROTO_101:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_102:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_103:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_104:
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

PROTO_105:
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

PROTO_106:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getTechnicalDetailsItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_102]
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

PROTO_107:
        0 GETTABLEKS                       R3 R0 K0 ["_assetSharing"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_108:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R1 K0 ["Source"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["AssetSource"]
        6 GETTABLEKS                       R4 R4 K2 ["Uploaded"]
        8 JUMPIFEQ                         R3 R4 ; [+14]
       10 GETTABLEKS                       R3 R0 K3 ["_explorerController"]
       12 GETTABLEKS                       R5 R1 K4 ["Creator"]
       14 GETTABLEKS                       R5 R5 K5 ["Uid"]
       16 NAMECALL                         R3 R3 K6 ["getScopeWithUid"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_109:
        0 LOADB                            R2 0
        1 NAMECALL                         R3 R0 K0 ["getCurrentShownScope"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R3 R3 K1 ["Type"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        9 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       11 JUMPIFEQ                         R3 R4 ; [+10]
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R0 K4 ["isOwnedItem"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R3 R1 K5 ["AssetType"]
       21 CALL                             R2 1 1
       22 RETURN                           R2 1

PROTO_110:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getItemInfo"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+27]
        5 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R3 R3 K2 ["Type"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["ScopeType"]
       13 GETTABLEKS                       R4 R4 K4 ["ProjectPlaces"]
       15 JUMPIFEQ                         R3 R4 ; [+16]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R0 K5 ["isOwnedItem"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+10]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R4 R2 K6 ["AssetType"]
       25 CALL                             R3 1 1
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETTABLEKS                       R3 R2 K7 ["AssetId"]
       29 JUMPIFEQKN                       R3 K8 [0] ; [+2]
       31 RETURN                           R2 1
       32 LOADNIL                          R3
       33 RETURN                           R3 1

PROTO_111:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getSharingItem"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_112:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_113:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_114:
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

PROTO_115:
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

PROTO_116:
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

PROTO_117:
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

PROTO_118:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getSharingItem"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 DUPCLOSURE                       R4 K2 [PROTO_112]
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
       24 GETUPVAL                         R5 1
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+25]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["Networking"]
       30 GETTABLEKS                       R5 R5 K6 ["fetchAssetPermissionsAsync"]
       32 GETTABLEKS                       R6 R2 K7 ["AssetId"]
       34 GETTABLEKS                       R7 R2 K8 ["Creator"]
       36 CALL                             R5 2 1
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 NAMECALL                         R5 R5 K9 ["andThen"]
       43 CALL                             R5 2 1
       44 NEWCLOSURE                       R7 P3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 NAMECALL                         R5 R5 K10 ["catch"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1
       52 GETTABLEKS                       R5 R0 K11 ["_networking"]
       54 GETTABLEKS                       R7 R2 K7 ["AssetId"]
       56 GETTABLEKS                       R8 R2 K8 ["Creator"]
       58 NAMECALL                         R5 R5 K6 ["fetchAssetPermissionsAsync"]
       60 CALL                             R5 3 1
       61 NEWCLOSURE                       R7 P4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R1
       65 NAMECALL                         R5 R5 K9 ["andThen"]
       67 CALL                             R5 2 1
       68 NEWCLOSURE                       R7 P5
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 NAMECALL                         R5 R5 K10 ["catch"]
       74 CALL                             R5 2 -1
       75 RETURN                           R5 -1

PROTO_119:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_assetSharing"]
        4 GETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        6 ADDK                             R1 R1 K2 [1]
        7 SETTABLEKS                       R1 R0 K1 ["_assetSharingEpoch"]
        9 GETTABLEKS                       R1 R0 K3 ["OnAssetSharingChanged"]
       11 NAMECALL                         R1 R1 K4 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_120:
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

PROTO_121:
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

PROTO_122:
        0 GETTABLEKS                       R1 R0 K0 ["_audioPreviewManager"]
        2 RETURN                           R1 1

PROTO_123:
        0 GETTABLEKS                       R1 R0 K0 ["_itemsCache"]
        2 RETURN                           R1 1

PROTO_124:
        0 GETTABLEKS                       R1 R0 K0 ["_renderItems"]
        2 RETURN                           R1 1

PROTO_125:
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

PROTO_126:
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

PROTO_127:
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

PROTO_128:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADN                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K4 ["Uid"]
       16 LOADN                            R3 0
       17 NAMECALL                         R4 R0 K5 ["getSelection"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 GETTABLEKS                       R9 R0 K6 ["_itemsCache"]
       23 MOVE                             R11 R2
       24 MOVE                             R12 R7
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K7 ["AssetInfoField"]
       28 GETTABLEKS                       R13 R13 K8 ["ModerationStatus"]
       30 NAMECALL                         R9 R9 K9 ["getItemField"]
       32 CALL                             R9 4 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K8 ["ModerationStatus"]
       36 GETTABLEKS                       R10 R10 K10 ["Rejected"]
       38 JUMPIFEQ                         R9 R10 ; [+21]
       40 GETTABLEKS                       R10 R0 K6 ["_itemsCache"]
       42 MOVE                             R12 R2
       43 MOVE                             R13 R7
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K7 ["AssetInfoField"]
       47 GETTABLEKS                       R14 R14 K11 ["DraftStatus"]
       49 NAMECALL                         R10 R10 K9 ["getItemField"]
       51 CALL                             R10 4 1
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K11 ["DraftStatus"]
       55 GETTABLEKS                       R11 R11 K12 ["Draft"]
       57 JUMPIFNOTEQ                      R10 R11 ; [+2]
       59 ADDK                             R3 R3 K13 [1]
       60 FORGLOOP                         R4 2 ; [-40]
       62 RETURN                           R3 1

PROTO_129:
        0 NAMECALL                         R1 R0 K0 ["getCurrentShownScope"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        8 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K4 ["_itemsCache"]
       16 GETTABLEKS                       R4 R1 K5 ["Uid"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R5 R5 K7 ["DraftStatus"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K7 ["DraftStatus"]
       26 GETTABLEKS                       R6 R6 K8 ["Draft"]
       28 NAMECALL                         R2 R2 K9 ["scopeHasFieldValue"]
       30 CALL                             R2 4 -1
       31 RETURN                           R2 -1

PROTO_130:
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
       22 DUPTABLE                         R4 K10 [{"Ids", "VersionNumbers", "Types", "Names", "IsPackage", "Creators", "InventoryPublishStates"}]
       23 GETTABLEKS                       R5 R3 K3 ["Ids"]
       25 SETTABLEKS                       R5 R4 K3 ["Ids"]
       27 GETTABLEKS                       R5 R3 K4 ["VersionNumbers"]
       29 SETTABLEKS                       R5 R4 K4 ["VersionNumbers"]
       31 GETTABLEKS                       R5 R3 K5 ["Types"]
       33 SETTABLEKS                       R5 R4 K5 ["Types"]
       35 GETTABLEKS                       R5 R3 K6 ["Names"]
       37 SETTABLEKS                       R5 R4 K6 ["Names"]
       39 GETTABLEKS                       R5 R3 K7 ["IsPackage"]
       41 SETTABLEKS                       R5 R4 K7 ["IsPackage"]
       43 GETTABLEKS                       R5 R3 K8 ["Creators"]
       45 SETTABLEKS                       R5 R4 K8 ["Creators"]
       47 GETUPVAL                         R6 1
       48 CALL                             R6 0 1
       49 JUMPIFNOT                        R6 ; [+3]
       50 GETTABLEKS                       R5 R3 K9 ["InventoryPublishStates"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K9 ["InventoryPublishStates"]
       56 RETURN                           R4 1

PROTO_131:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getSelection"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R0 K1 ["getCurrentShownScope"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R0 K2 ["getItemsCache"]
        9 CALL                             R4 1 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_132:
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

PROTO_133:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_creators"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_134:
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

PROTO_135:
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

PROTO_136:
        0 GETTABLEKS                       R1 R0 K0 ["_filters"]
        2 RETURN                           R1 1

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_140:
        0 GETTABLEKS                       R4 R0 K0 ["_filters"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_filters"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_141:
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

PROTO_142:
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

PROTO_143:
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

PROTO_144:
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

PROTO_145:
        0 GETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 RETURN                           R1 1

PROTO_146:
        0 SETTABLEKS                       R1 R0 K0 ["_sorts"]
        2 NAMECALL                         R2 R0 K1 ["_updateAfterSortChange"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_147:
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

PROTO_148:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_149:
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

PROTO_150:
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

PROTO_151:
        0 GETTABLEKS                       R4 R0 K0 ["_selection"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R2 ; [+10]
        4 NEWTABLE                         R7 0 0
        6 NAMECALL                         R5 R0 K1 ["setSelection"]
        8 CALL                             R5 2 0
        9 LOADN                            R7 1
       10 NAMECALL                         R5 R0 K2 ["syncSelectionIndices"]
       12 CALL                             R5 2 0
       13 JUMP                             ; [+16]
       14 GETTABLEKS                       R6 R0 K0 ["_selection"]
       16 GETTABLE                         R5 R6 R1
       17 JUMPIF                           R5 ; [+12]
       18 NEWTABLE                         R7 0 1
       20 MOVE                             R8 R1
       21 SETLIST                          R7 R8 1 [1]
       23 NAMECALL                         R5 R0 K1 ["setSelection"]
       25 CALL                             R5 2 0
       26 MOVE                             R7 R2
       27 NAMECALL                         R5 R0 K2 ["syncSelectionIndices"]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R6 R0 K0 ["_selection"]
       32 JUMPIFNOTEQ                      R6 R4 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 SETTABLEKS                       R5 R0 K3 ["_rightClickChangedSelection"]
       38 GETTABLEKS                       R5 R0 K4 ["_analyticsState"]
       40 SETTABLEKS                       R2 R5 K5 ["Position"]
       42 MOVE                             R5 R3
       43 CALL                             R5 0 0
       44 RETURN                           R0 0

PROTO_152:
        0 GETTABLEKS                       R1 R0 K0 ["_rightClickChangedSelection"]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R0 K0 ["_rightClickChangedSelection"]
        5 RETURN                           R1 1

PROTO_153:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedEditItemPath"]
        2 RETURN                           R1 1

PROTO_154:
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

PROTO_155:
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

PROTO_156:
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

PROTO_157:
        0 GETTABLEKS                       R2 R0 K0 ["_analyticsState"]
        2 SETTABLEKS                       R1 R2 K1 ["Action"]
        4 RETURN                           R0 0

PROTO_158:
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

PROTO_159:
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

PROTO_160:
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Utils"]
       16 GETTABLEKS                       R2 R2 K9 ["createFolderUid"]
       18 GETTABLEKS                       R3 R1 K8 ["Utils"]
       20 GETTABLEKS                       R3 R3 K10 ["createScopeUid"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R5 K12 ["Analytics"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K11 ["Src"]
       33 GETTABLEKS                       R6 R6 K13 ["Resources"]
       35 GETTABLEKS                       R6 R6 K14 ["Constants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Src"]
       42 GETTABLEKS                       R7 R7 K15 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K12 ["Analytics"]
       51 GETTABLEKS                       R8 R8 K15 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Src"]
       58 GETTABLEKS                       R9 R9 K12 ["Analytics"]
       60 GETTABLEKS                       R9 R9 K16 ["Benchmarking"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["Notifications"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Packages"]
       76 GETTABLEKS                       R11 R11 K19 ["Promise"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Packages"]
       83 GETTABLEKS                       R12 R12 K20 ["Framework"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R11 K21 ["ContextServices"]
       88 GETTABLEKS                       R13 R12 K22 ["ContextItem"]
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K6 ["Packages"]
       94 GETTABLEKS                       R15 R15 K23 ["Dash"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R14 K24 ["copy"]
       99 GETTABLEKS                       R16 R14 K25 ["join"]
      101 GETTABLEKS                       R17 R14 K26 ["keys"]
      103 GETTABLEKS                       R18 R11 K17 ["Util"]
      105 GETTABLEKS                       R19 R18 K27 ["Signal"]
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R21 R0 K11 ["Src"]
      111 GETTABLEKS                       R21 R21 K28 ["Controllers"]
      113 GETTABLEKS                       R21 R21 K29 ["AudioPreviewManager"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R22 R0 K11 ["Src"]
      120 GETTABLEKS                       R22 R22 K28 ["Controllers"]
      122 GETTABLEKS                       R22 R22 K30 ["ItemsCache"]
      124 CALL                             R21 1 1
      125 GETIMPORT                        R22 K5 [require]
      127 GETTABLEKS                       R23 R0 K11 ["Src"]
      129 GETTABLEKS                       R23 R23 K17 ["Util"]
      131 GETTABLEKS                       R23 R23 K31 ["cleanConnections"]
      133 CALL                             R22 1 1
      134 GETIMPORT                        R23 K5 [require]
      136 GETTABLEKS                       R24 R0 K11 ["Src"]
      138 GETTABLEKS                       R24 R24 K17 ["Util"]
      140 GETTABLEKS                       R24 R24 K32 ["constructItemPath"]
      142 CALL                             R23 1 1
      143 GETIMPORT                        R24 K5 [require]
      145 GETTABLEKS                       R25 R0 K11 ["Src"]
      147 GETTABLEKS                       R25 R25 K17 ["Util"]
      149 GETTABLEKS                       R25 R25 K33 ["convertFolderItemToScope"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K5 [require]
      154 GETTABLEKS                       R26 R0 K11 ["Src"]
      156 GETTABLEKS                       R26 R26 K17 ["Util"]
      158 GETTABLEKS                       R26 R26 K34 ["convertFolderResponseToItem"]
      160 CALL                             R25 1 1
      161 GETIMPORT                        R26 K5 [require]
      163 GETTABLEKS                       R27 R0 K11 ["Src"]
      165 GETTABLEKS                       R27 R27 K17 ["Util"]
      167 GETTABLEKS                       R27 R27 K35 ["convertToEngineAssetTypeEnum"]
      169 CALL                             R26 1 1
      170 GETIMPORT                        R27 K5 [require]
      172 GETTABLEKS                       R28 R0 K11 ["Src"]
      174 GETTABLEKS                       R28 R28 K17 ["Util"]
      176 GETTABLEKS                       R28 R28 K36 ["createAccountUidFromPath"]
      178 CALL                             R27 1 1
      179 GETIMPORT                        R28 K5 [require]
      181 GETTABLEKS                       R29 R0 K11 ["Src"]
      183 GETTABLEKS                       R29 R29 K17 ["Util"]
      185 GETTABLEKS                       R29 R29 K37 ["DefaultSort"]
      187 CALL                             R28 1 1
      188 GETIMPORT                        R29 K5 [require]
      190 GETTABLEKS                       R30 R0 K11 ["Src"]
      192 GETTABLEKS                       R30 R30 K17 ["Util"]
      194 GETTABLEKS                       R30 R30 K38 ["getAssetInfosSlice"]
      196 CALL                             R29 1 1
      197 GETIMPORT                        R30 K5 [require]
      199 GETTABLEKS                       R31 R0 K11 ["Src"]
      201 GETTABLEKS                       R31 R31 K17 ["Util"]
      203 GETTABLEKS                       R31 R31 K39 ["getFolderErrorLocalizationKeys"]
      205 CALL                             R30 1 1
      206 GETIMPORT                        R31 K5 [require]
      208 GETTABLEKS                       R32 R0 K11 ["Src"]
      210 GETTABLEKS                       R32 R32 K17 ["Util"]
      212 GETTABLEKS                       R32 R32 K40 ["getItemMoveBatches"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K5 [require]
      217 GETTABLEKS                       R33 R0 K11 ["Src"]
      219 GETTABLEKS                       R33 R33 K17 ["Util"]
      221 GETTABLEKS                       R33 R33 K41 ["insertItems"]
      223 CALL                             R32 1 1
      224 GETIMPORT                        R33 K5 [require]
      226 GETTABLEKS                       R34 R0 K11 ["Src"]
      228 GETTABLEKS                       R34 R34 K17 ["Util"]
      230 GETTABLEKS                       R34 R34 K42 ["isInsertable"]
      232 CALL                             R33 1 1
      233 GETIMPORT                        R34 K5 [require]
      235 GETTABLEKS                       R35 R0 K11 ["Src"]
      237 GETTABLEKS                       R35 R35 K17 ["Util"]
      239 GETTABLEKS                       R35 R35 K43 ["isShareableAsset"]
      241 CALL                             R34 1 1
      242 GETIMPORT                        R35 K5 [require]
      244 GETTABLEKS                       R36 R0 K11 ["Src"]
      246 GETTABLEKS                       R36 R36 K17 ["Util"]
      248 GETTABLEKS                       R36 R36 K44 ["logIfDebug"]
      250 CALL                             R35 1 1
      251 GETIMPORT                        R36 K5 [require]
      253 GETTABLEKS                       R37 R0 K11 ["Src"]
      255 GETTABLEKS                       R37 R37 K45 ["Flags"]
      257 GETTABLEKS                       R37 R37 K46 ["getEFAssetManagerInventoryRefreshFeature"]
      259 CALL                             R36 1 1
      260 GETIMPORT                        R37 K5 [require]
      262 GETTABLEKS                       R38 R0 K11 ["Src"]
      264 GETTABLEKS                       R38 R38 K45 ["Flags"]
      266 GETTABLEKS                       R38 R38 K47 ["getFFlagAmrAddToExperience"]
      268 CALL                             R37 1 1
      269 GETIMPORT                        R38 K5 [require]
      271 GETTABLEKS                       R39 R0 K11 ["Src"]
      273 GETTABLEKS                       R39 R39 K45 ["Flags"]
      275 GETTABLEKS                       R39 R39 K48 ["getFFlagDebugAmrAssetManagementControllerTest"]
      277 CALL                             R38 1 1
      278 GETIMPORT                        R39 K5 [require]
      280 GETTABLEKS                       R40 R0 K11 ["Src"]
      282 GETTABLEKS                       R40 R40 K45 ["Flags"]
      284 GETTABLEKS                       R40 R40 K49 ["getFFlagAmrEnableTextDocuments"]
      286 CALL                             R39 1 1
      287 GETIMPORT                        R40 K5 [require]
      289 GETTABLEKS                       R41 R0 K11 ["Src"]
      291 GETTABLEKS                       R41 R41 K45 ["Flags"]
      293 GETTABLEKS                       R41 R41 K50 ["getFFlagAmrStudioToastsIntegration"]
      295 CALL                             R40 1 1
      296 GETIMPORT                        R41 K5 [require]
      298 GETTABLEKS                       R42 R0 K11 ["Src"]
      300 GETTABLEKS                       R42 R42 K45 ["Flags"]
      302 GETTABLEKS                       R42 R42 K51 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      304 CALL                             R41 1 1
      305 GETIMPORT                        R42 K5 [require]
      307 GETTABLEKS                       R43 R0 K11 ["Src"]
      309 GETTABLEKS                       R43 R43 K45 ["Flags"]
      311 GETTABLEKS                       R43 R43 K52 ["getFFlagAmrPublishInsertUsesInventoryDraftState"]
      313 CALL                             R42 1 1
      314 GETIMPORT                        R43 K5 [require]
      316 GETTABLEKS                       R44 R0 K11 ["Src"]
      318 GETTABLEKS                       R44 R44 K45 ["Flags"]
      320 GETTABLEKS                       R44 R44 K53 ["getFFlagAmrShowInFolder"]
      322 CALL                             R43 1 1
      323 GETIMPORT                        R44 K5 [require]
      325 GETTABLEKS                       R45 R0 K11 ["Src"]
      327 GETTABLEKS                       R45 R45 K45 ["Flags"]
      329 GETTABLEKS                       R45 R45 K54 ["getFFlagAmrAssetDetailView"]
      331 CALL                             R44 1 1
      332 GETIMPORT                        R45 K5 [require]
      334 GETTABLEKS                       R46 R0 K11 ["Src"]
      336 GETTABLEKS                       R46 R46 K45 ["Flags"]
      338 GETTABLEKS                       R46 R46 K55 ["getFFlagAmrInsertPinned"]
      340 CALL                             R45 1 1
      341 GETIMPORT                        R46 K5 [require]
      343 GETTABLEKS                       R47 R0 K11 ["Src"]
      345 GETTABLEKS                       R47 R47 K45 ["Flags"]
      347 GETTABLEKS                       R47 R47 K56 ["getFFlagAmrUseAssetManagementNetworking"]
      349 CALL                             R46 1 1
      350 LOADK                            R49 K57 ["ItemsController"]
      351 NAMECALL                         R47 R13 K58 ["extend"]
      353 CALL                             R47 2 1
      354 DUPCLOSURE                       R48 K59 [PROTO_0]
      355 CAPTURE                          VAL R46
      356 CAPTURE                          VAL R1
      357 NEWTABLE                         R49 8 0
      359 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      361 GETTABLEKS                       R50 R50 K61 ["Animation"]
      363 SETTABLE                         R48 R49 R50
      364 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      366 GETTABLEKS                       R50 R50 K62 ["Audio"]
      368 SETTABLE                         R48 R49 R50
      369 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      371 GETTABLEKS                       R50 R50 K63 ["Decal"]
      373 SETTABLE                         R48 R49 R50
      374 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      376 GETTABLEKS                       R50 R50 K64 ["FontFamily"]
      378 SETTABLE                         R48 R49 R50
      379 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      381 GETTABLEKS                       R50 R50 K65 ["MeshPart"]
      383 SETTABLE                         R48 R49 R50
      384 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      386 GETTABLEKS                       R50 R50 K66 ["Model"]
      388 SETTABLE                         R48 R49 R50
      389 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      391 GETTABLEKS                       R50 R50 K67 ["Plugin"]
      393 SETTABLE                         R48 R49 R50
      394 GETTABLEKS                       R50 R6 K60 ["AssetType"]
      396 GETTABLEKS                       R50 R50 K68 ["Video"]
      398 SETTABLE                         R48 R49 R50
      399 DUPCLOSURE                       R50 K69 [PROTO_1]
      400 CAPTURE                          VAL R41
      401 CAPTURE                          VAL R42
      402 CAPTURE                          VAL R35
      403 CAPTURE                          VAL R33
      404 CAPTURE                          VAL R45
      405 CAPTURE                          VAL R26
      406 DUPCLOSURE                       R51 K70 [PROTO_17]
      407 CAPTURE                          VAL R20
      408 CAPTURE                          VAL R21
      409 CAPTURE                          VAL R6
      410 CAPTURE                          VAL R28
      411 CAPTURE                          VAL R19
      412 CAPTURE                          VAL R47
      413 CAPTURE                          VAL R44
      414 CAPTURE                          VAL R35
      415 CAPTURE                          VAL R14
      416 CAPTURE                          VAL R8
      417 CAPTURE                          VAL R7
      418 CAPTURE                          VAL R43
      419 CAPTURE                          VAL R37
      420 CAPTURE                          VAL R5
      421 CAPTURE                          VAL R4
      422 CAPTURE                          VAL R36
      423 CAPTURE                          VAL R38
      424 SETTABLEKS                       R51 R47 K71 ["new"]
      426 DUPCLOSURE                       R51 K72 [PROTO_18]
      427 CAPTURE                          VAL R47
      428 SETTABLEKS                       R51 R47 K73 ["mock"]
      430 DUPCLOSURE                       R51 K74 [PROTO_19]
      431 SETTABLEKS                       R51 R47 K75 ["getIsMock"]
      433 DUPCLOSURE                       R51 K76 [PROTO_20]
      434 CAPTURE                          VAL R22
      435 SETTABLEKS                       R51 R47 K77 ["destroy"]
      437 DUPCLOSURE                       R51 K78 [PROTO_21]
      438 CAPTURE                          VAL R6
      439 SETTABLEKS                       R51 R47 K79 ["_isOmnisearchEnabled"]
      441 DUPCLOSURE                       R51 K80 [PROTO_22]
      442 SETTABLEKS                       R51 R47 K81 ["_getIsSearchActive"]
      444 DUPCLOSURE                       R51 K82 [PROTO_23]
      445 CAPTURE                          VAL R6
      446 SETTABLEKS                       R51 R47 K83 ["_isPlacesSearch"]
      448 DUPCLOSURE                       R51 K84 [PROTO_24]
      449 CAPTURE                          VAL R6
      450 CAPTURE                          VAL R3
      451 SETTABLEKS                       R51 R47 K85 ["_getPlacesRequestScope"]
      453 DUPCLOSURE                       R51 K86 [PROTO_25]
      454 CAPTURE                          VAL R23
      455 CAPTURE                          VAL R16
      456 CAPTURE                          VAL R40
      457 CAPTURE                          VAL R9
      458 SETTABLEKS                       R51 R47 K87 ["_handleOnAddToGame"]
      460 DUPCLOSURE                       R51 K88 [PROTO_27]
      461 CAPTURE                          VAL R8
      462 CAPTURE                          VAL R7
      463 CAPTURE                          VAL R5
      464 SETTABLEKS                       R51 R47 K89 ["_getNewItemsHandler"]
      466 DUPCLOSURE                       R51 K90 [PROTO_28]
      467 SETTABLEKS                       R51 R47 K91 ["_refreshScopeInPlace"]
      469 DUPCLOSURE                       R51 K92 [PROTO_30]
      470 SETTABLEKS                       R51 R47 K93 ["_scheduleDebouncedRefresh"]
      472 DUPCLOSURE                       R51 K94 [PROTO_31]
      473 CAPTURE                          VAL R2
      474 CAPTURE                          VAL R27
      475 DUPCLOSURE                       R52 K95 [PROTO_32]
      476 CAPTURE                          VAL R2
      477 CAPTURE                          VAL R27
      478 SETTABLEKS                       R52 R47 K96 ["_handleCreatorInventoryRefresh"]
      480 DUPCLOSURE                       R52 K97 [PROTO_33]
      481 CAPTURE                          VAL R6
      482 SETTABLEKS                       R52 R47 K98 ["_getSearchAssetTypes"]
      484 DUPCLOSURE                       R52 K99 [PROTO_34]
      485 SETTABLEKS                       R52 R47 K100 ["_createRenderItems"]
      487 DUPCLOSURE                       R52 K101 [PROTO_35]
      488 SETTABLEKS                       R52 R47 K102 ["_updateRenderItems"]
      490 DUPCLOSURE                       R52 K103 [PROTO_36]
      491 SETTABLEKS                       R52 R47 K104 ["_tryRevealPendingItem"]
      493 DUPCLOSURE                       R52 K105 [PROTO_37]
      494 CAPTURE                          VAL R5
      495 SETTABLEKS                       R52 R47 K106 ["clearRecent"]
      497 DUPCLOSURE                       R52 K107 [PROTO_39]
      498 CAPTURE                          VAL R5
      499 CAPTURE                          VAL R40
      500 CAPTURE                          VAL R9
      501 SETTABLEKS                       R52 R47 K108 ["_getFetchErrorCallback"]
      503 DUPCLOSURE                       R52 K109 [PROTO_40]
      504 CAPTURE                          VAL R28
      505 SETTABLEKS                       R52 R47 K110 ["_startNewScopeFetch"]
      507 DUPCLOSURE                       R52 K111 [PROTO_41]
      508 SETTABLEKS                       R52 R47 K112 ["_clearItems"]
      510 DUPCLOSURE                       R52 K113 [PROTO_42]
      511 SETTABLEKS                       R52 R47 K114 ["getSearchFolderCount"]
      513 DUPCLOSURE                       R52 K115 [PROTO_43]
      514 SETTABLEKS                       R52 R47 K116 ["setShowAllSearchFolders"]
      516 DUPCLOSURE                       R52 K117 [PROTO_44]
      517 SETTABLEKS                       R52 R47 K118 ["getShowAllSearchFolders"]
      519 DUPCLOSURE                       R52 K119 [PROTO_45]
      520 CAPTURE                          VAL R15
      521 CAPTURE                          VAL R28
      522 SETTABLEKS                       R52 R47 K120 ["_handleOnIsSearchInitiatedChanged"]
      524 DUPCLOSURE                       R52 K121 [PROTO_46]
      525 CAPTURE                          VAL R15
      526 CAPTURE                          VAL R28
      527 SETTABLEKS                       R52 R47 K122 ["_handleOnIsSearchRequestedChanged"]
      529 DUPCLOSURE                       R52 K123 [PROTO_47]
      530 CAPTURE                          VAL R15
      531 CAPTURE                          VAL R6
      532 SETTABLEKS                       R52 R47 K124 ["_clearAndFetchSearchItems"]
      534 DUPCLOSURE                       R52 K125 [PROTO_48]
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R6
      537 CAPTURE                          VAL R8
      538 CAPTURE                          VAL R7
      539 SETTABLEKS                       R52 R47 K126 ["refreshItems"]
      541 DUPCLOSURE                       R52 K127 [PROTO_49]
      542 SETTABLEKS                       R52 R47 K128 ["refreshAll"]
      544 DUPCLOSURE                       R52 K129 [PROTO_50]
      545 SETTABLEKS                       R52 R47 K130 ["removeItemAndUpdateRender"]
      547 DUPCLOSURE                       R52 K131 [PROTO_51]
      548 CAPTURE                          VAL R6
      549 SETTABLEKS                       R52 R47 K132 ["renameItemAndUpdateRender"]
      551 DUPCLOSURE                       R52 K133 [PROTO_52]
      552 CAPTURE                          VAL R14
      553 SETTABLEKS                       R52 R47 K134 ["getDraggedItems"]
      555 DUPCLOSURE                       R52 K135 [PROTO_53]
      556 CAPTURE                          VAL R2
      557 CAPTURE                          VAL R35
      558 CAPTURE                          VAL R24
      559 SETTABLEKS                       R52 R47 K136 ["_goToFolder"]
      561 DUPCLOSURE                       R52 K137 [PROTO_54]
      562 CAPTURE                          VAL R40
      563 CAPTURE                          VAL R9
      564 SETTABLEKS                       R52 R47 K138 ["_showShowInFolderFailedToast"]
      566 DUPCLOSURE                       R52 K139 [PROTO_57]
      567 CAPTURE                          VAL R27
      568 CAPTURE                          VAL R35
      569 CAPTURE                          VAL R46
      570 CAPTURE                          VAL R1
      571 CAPTURE                          VAL R3
      572 CAPTURE                          VAL R6
      573 CAPTURE                          VAL R25
      574 CAPTURE                          VAL R24
      575 CAPTURE                          VAL R14
      576 SETTABLEKS                       R52 R47 K140 ["showItemInFolder"]
      578 DUPCLOSURE                       R52 K141 [PROTO_62]
      579 CAPTURE                          VAL R35
      580 CAPTURE                          VAL R14
      581 SETTABLEKS                       R52 R47 K142 ["showAsset"]
      583 DUPCLOSURE                       R52 K143 [PROTO_66]
      584 CAPTURE                          VAL R6
      585 SETTABLEKS                       R52 R47 K144 ["_whenCreatorScopeKnown"]
      587 DUPCLOSURE                       R52 K145 [PROTO_67]
      588 SETTABLEKS                       R52 R47 K146 ["_cancelCreatorScopeWait"]
      590 DUPCLOSURE                       R52 K147 [PROTO_68]
      591 SETTABLEKS                       R52 R47 K148 ["_revealItemInScope"]
      593 DUPCLOSURE                       R52 K149 [PROTO_69]
      594 SETTABLEKS                       R52 R47 K150 ["getLastUsedFolderName"]
      596 DUPCLOSURE                       R52 K151 [PROTO_70]
      597 CAPTURE                          VAL R6
      598 CAPTURE                          VAL R35
      599 DUPCLOSURE                       R53 K152 [PROTO_71]
      600 SETTABLEKS                       R53 R47 K153 ["_updateLastUsedFolder"]
      602 DUPCLOSURE                       R53 K154 [PROTO_72]
      603 CAPTURE                          VAL R52
      604 CAPTURE                          VAL R6
      605 SETTABLEKS                       R53 R47 K155 ["requestMoveSelectionToItem"]
      607 DUPCLOSURE                       R53 K156 [PROTO_76]
      608 CAPTURE                          VAL R5
      609 CAPTURE                          VAL R46
      610 CAPTURE                          VAL R1
      611 CAPTURE                          VAL R2
      612 CAPTURE                          VAL R10
      613 CAPTURE                          VAL R40
      614 CAPTURE                          VAL R9
      615 SETTABLEKS                       R53 R47 K157 ["_requestMoveFromSearch"]
      617 DUPCLOSURE                       R53 K158 [PROTO_79]
      618 CAPTURE                          VAL R6
      619 CAPTURE                          VAL R31
      620 CAPTURE                          VAL R40
      621 CAPTURE                          VAL R9
      622 CAPTURE                          VAL R2
      623 CAPTURE                          VAL R24
      624 CAPTURE                          VAL R35
      625 CAPTURE                          VAL R4
      626 CAPTURE                          VAL R30
      627 SETTABLEKS                       R53 R47 K159 ["_requestMoveItems"]
      629 DUPCLOSURE                       R53 K160 [PROTO_83]
      630 CAPTURE                          VAL R35
      631 CAPTURE                          VAL R46
      632 CAPTURE                          VAL R1
      633 CAPTURE                          VAL R24
      634 CAPTURE                          VAL R6
      635 CAPTURE                          VAL R14
      636 CAPTURE                          VAL R4
      637 CAPTURE                          VAL R30
      638 CAPTURE                          VAL R40
      639 CAPTURE                          VAL R9
      640 SETTABLEKS                       R53 R47 K161 ["_requestCreateFolder"]
      642 DUPCLOSURE                       R53 K162 [PROTO_86]
      643 CAPTURE                          VAL R46
      644 CAPTURE                          VAL R1
      645 CAPTURE                          VAL R6
      646 CAPTURE                          VAL R4
      647 CAPTURE                          VAL R40
      648 CAPTURE                          VAL R9
      649 SETTABLEKS                       R53 R47 K163 ["_requestRenameFolder"]
      651 DUPCLOSURE                       R53 K164 [PROTO_87]
      652 SETTABLEKS                       R53 R47 K165 ["uploadStagedFolder"]
      654 DUPCLOSURE                       R53 K166 [PROTO_88]
      655 CAPTURE                          VAL R24
      656 SETTABLEKS                       R53 R47 K167 ["uploadStagedFolderPath"]
      658 DUPCLOSURE                       R53 K168 [PROTO_91]
      659 CAPTURE                          VAL R46
      660 CAPTURE                          VAL R1
      661 CAPTURE                          VAL R2
      662 CAPTURE                          VAL R4
      663 CAPTURE                          VAL R5
      664 CAPTURE                          VAL R40
      665 CAPTURE                          VAL R9
      666 SETTABLEKS                       R53 R47 K169 ["requestDeleteFolder"]
      668 DUPCLOSURE                       R53 K170 [PROTO_92]
      669 CAPTURE                          VAL R6
      670 CAPTURE                          VAL R14
      671 CAPTURE                          VAL R39
      672 CAPTURE                          VAL R33
      673 CAPTURE                          VAL R40
      674 CAPTURE                          VAL R9
      675 CAPTURE                          VAL R32
      676 SETTABLEKS                       R53 R47 K171 ["handleDoubleClick"]
      678 DUPCLOSURE                       R53 K172 [PROTO_93]
      679 SETTABLEKS                       R53 R47 K173 ["setLastItemClicked"]
      681 DUPCLOSURE                       R53 K174 [PROTO_94]
      682 CAPTURE                          VAL R29
      683 SETTABLEKS                       R53 R47 K175 ["changeSelection"]
      685 DUPCLOSURE                       R53 K176 [PROTO_95]
      686 SETTABLEKS                       R53 R47 K177 ["moveSelection"]
      688 DUPCLOSURE                       R53 K178 [PROTO_96]
      689 SETTABLEKS                       R53 R47 K179 ["syncSelectionIndices"]
      691 DUPCLOSURE                       R53 K180 [PROTO_97]
      692 CAPTURE                          VAL R14
      693 SETTABLEKS                       R53 R47 K181 ["getSingleItemSelected"]
      695 DUPCLOSURE                       R53 K182 [PROTO_98]
      696 SETTABLEKS                       R53 R47 K183 ["getItemInfo"]
      698 DUPCLOSURE                       R53 K184 [PROTO_99]
      699 SETTABLEKS                       R53 R47 K185 ["getAssetTechnicalDetails"]
      701 DUPCLOSURE                       R53 K186 [PROTO_100]
      702 CAPTURE                          VAL R49
      703 SETTABLEKS                       R53 R47 K187 ["_getTechnicalDetailsItem"]
      705 DUPCLOSURE                       R53 K188 [PROTO_101]
      706 SETTABLEKS                       R53 R47 K189 ["canFetchAssetTechnicalDetails"]
      708 DUPCLOSURE                       R53 K190 [PROTO_106]
      709 CAPTURE                          VAL R10
      710 CAPTURE                          VAL R49
      711 CAPTURE                          VAL R35
      712 CAPTURE                          VAL R14
      713 SETTABLEKS                       R53 R47 K191 ["fetchAssetTechnicalDetailsAsync"]
      715 DUPCLOSURE                       R53 K192 [PROTO_107]
      716 SETTABLEKS                       R53 R47 K193 ["getAssetSharing"]
      718 DUPCLOSURE                       R53 K194 [PROTO_108]
      719 CAPTURE                          VAL R6
      720 SETTABLEKS                       R53 R47 K195 ["isOwnedItem"]
      722 DUPCLOSURE                       R53 K196 [PROTO_109]
      723 CAPTURE                          VAL R6
      724 CAPTURE                          VAL R33
      725 SETTABLEKS                       R53 R47 K197 ["canEditItem"]
      727 DUPCLOSURE                       R53 K198 [PROTO_110]
      728 CAPTURE                          VAL R6
      729 CAPTURE                          VAL R34
      730 SETTABLEKS                       R53 R47 K199 ["_getSharingItem"]
      732 DUPCLOSURE                       R53 K200 [PROTO_111]
      733 SETTABLEKS                       R53 R47 K201 ["canFetchAssetSharing"]
      735 DUPCLOSURE                       R53 K202 [PROTO_118]
      736 CAPTURE                          VAL R10
      737 CAPTURE                          VAL R46
      738 CAPTURE                          VAL R1
      739 CAPTURE                          VAL R35
      740 CAPTURE                          VAL R14
      741 SETTABLEKS                       R53 R47 K203 ["fetchAssetSharingAsync"]
      743 DUPCLOSURE                       R53 K204 [PROTO_119]
      744 SETTABLEKS                       R53 R47 K205 ["_invalidateAssetSharing"]
      746 DUPCLOSURE                       R53 K206 [PROTO_120]
      747 CAPTURE                          VAL R14
      748 CAPTURE                          VAL R6
      749 SETTABLEKS                       R53 R47 K207 ["DEPRECATED_getSelectionIdsHelper"]
      751 DUPCLOSURE                       R53 K208 [PROTO_121]
      752 CAPTURE                          VAL R14
      753 CAPTURE                          VAL R6
      754 SETTABLEKS                       R53 R47 K209 ["getSelectionIdsAndVersions"]
      756 DUPCLOSURE                       R53 K210 [PROTO_122]
      757 SETTABLEKS                       R53 R47 K211 ["getAudioPreviewManager"]
      759 DUPCLOSURE                       R53 K212 [PROTO_123]
      760 SETTABLEKS                       R53 R47 K213 ["getItemsCache"]
      762 DUPCLOSURE                       R53 K214 [PROTO_124]
      763 SETTABLEKS                       R53 R47 K215 ["getRenderItems"]
      765 DUPCLOSURE                       R53 K216 [PROTO_125]
      766 CAPTURE                          VAL R6
      767 SETTABLEKS                       R53 R47 K217 ["requestNextPage"]
      769 DUPCLOSURE                       R53 K218 [PROTO_126]
      770 CAPTURE                          VAL R6
      771 CAPTURE                          VAL R33
      772 SETTABLEKS                       R53 R47 K219 ["selectionHasInsertableAssets"]
      774 DUPCLOSURE                       R53 K220 [PROTO_127]
      775 CAPTURE                          VAL R6
      776 CAPTURE                          VAL R34
      777 SETTABLEKS                       R53 R47 K221 ["selectionHasShareableAssets"]
      779 DUPCLOSURE                       R53 K222 [PROTO_128]
      780 CAPTURE                          VAL R6
      781 SETTABLEKS                       R53 R47 K223 ["getSelectionDraftCount"]
      783 DUPCLOSURE                       R53 K224 [PROTO_129]
      784 CAPTURE                          VAL R6
      785 SETTABLEKS                       R53 R47 K225 ["currentScopeHasDraftAssets"]
      787 DUPCLOSURE                       R53 K226 [PROTO_130]
      788 CAPTURE                          VAL R50
      789 CAPTURE                          VAL R42
      790 SETTABLEKS                       R53 R47 K227 ["getInsertDataForDrag"]
      792 DUPCLOSURE                       R53 K228 [PROTO_131]
      793 CAPTURE                          VAL R50
      794 SETTABLEKS                       R53 R47 K229 ["getInsertData"]
      796 DUPCLOSURE                       R53 K230 [PROTO_132]
      797 CAPTURE                          VAL R6
      798 SETTABLEKS                       R53 R47 K231 ["getAssetTypes"]
      800 DUPCLOSURE                       R53 K232 [PROTO_133]
      801 CAPTURE                          VAL R17
      802 SETTABLEKS                       R53 R47 K233 ["getCreators"]
      804 DUPCLOSURE                       R53 K234 [PROTO_134]
      805 CAPTURE                          VAL R15
      806 SETTABLEKS                       R53 R47 K235 ["_updateAfterSortChange"]
      808 DUPCLOSURE                       R53 K236 [PROTO_135]
      809 CAPTURE                          VAL R6
      810 CAPTURE                          VAL R15
      811 SETTABLEKS                       R53 R47 K237 ["_updateAfterFilterChanges"]
      813 DUPCLOSURE                       R53 K238 [PROTO_136]
      814 SETTABLEKS                       R53 R47 K239 ["getFilters"]
      816 DUPCLOSURE                       R53 K240 [PROTO_137]
      817 CAPTURE                          VAL R16
      818 SETTABLEKS                       R53 R47 K241 ["_addFilter"]
      820 DUPCLOSURE                       R53 K242 [PROTO_138]
      821 SETTABLEKS                       R53 R47 K243 ["_removeFilter"]
      823 DUPCLOSURE                       R53 K244 [PROTO_139]
      824 CAPTURE                          VAL R6
      825 SETTABLEKS                       R53 R47 K245 ["_clearAssetTypeFilter"]
      827 DUPCLOSURE                       R53 K246 [PROTO_140]
      828 SETTABLEKS                       R53 R47 K247 ["hasFilter"]
      830 DUPCLOSURE                       R53 K248 [PROTO_141]
      831 CAPTURE                          VAL R8
      832 CAPTURE                          VAL R7
      833 SETTABLEKS                       R53 R47 K249 ["toggleFilter"]
      835 DUPCLOSURE                       R53 K250 [PROTO_142]
      836 CAPTURE                          VAL R8
      837 CAPTURE                          VAL R7
      838 CAPTURE                          VAL R6
      839 SETTABLEKS                       R53 R47 K251 ["togglePackagesFilter"]
      841 DUPCLOSURE                       R53 K252 [PROTO_143]
      842 CAPTURE                          VAL R8
      843 CAPTURE                          VAL R7
      844 CAPTURE                          VAL R6
      845 SETTABLEKS                       R53 R47 K253 ["toggleArchivedFilter"]
      847 DUPCLOSURE                       R53 K254 [PROTO_144]
      848 CAPTURE                          VAL R6
      849 SETTABLEKS                       R53 R47 K255 ["clearFilters"]
      851 DUPCLOSURE                       R53 K256 [PROTO_145]
      852 SETTABLEKS                       R53 R47 K257 ["getSorts"]
      854 DUPCLOSURE                       R53 K258 [PROTO_146]
      855 SETTABLEKS                       R53 R47 K259 ["setSorts"]
      857 DUPCLOSURE                       R53 K260 [PROTO_147]
      858 CAPTURE                          VAL R8
      859 CAPTURE                          VAL R7
      860 SETTABLEKS                       R53 R47 K261 ["addSort"]
      862 DUPCLOSURE                       R53 K262 [PROTO_148]
      863 SETTABLEKS                       R53 R47 K263 ["getSelection"]
      865 DUPCLOSURE                       R53 K264 [PROTO_149]
      866 SETTABLEKS                       R53 R47 K265 ["setSelection"]
      868 DUPCLOSURE                       R53 K266 [PROTO_150]
      869 CAPTURE                          VAL R15
      870 SETTABLEKS                       R53 R47 K267 ["modifySelection"]
      872 DUPCLOSURE                       R53 K268 [PROTO_151]
      873 SETTABLEKS                       R53 R47 K269 ["handleRightClick"]
      875 DUPCLOSURE                       R53 K270 [PROTO_152]
      876 SETTABLEKS                       R53 R47 K271 ["consumeRightClickChangedSelection"]
      878 DUPCLOSURE                       R53 K272 [PROTO_153]
      879 SETTABLEKS                       R53 R47 K273 ["getStagedEditItemPath"]
      881 DUPCLOSURE                       R53 K274 [PROTO_154]
      882 SETTABLEKS                       R53 R47 K275 ["setStagedEditItemPath"]
      884 DUPCLOSURE                       R53 K276 [PROTO_155]
      885 SETTABLEKS                       R53 R47 K277 ["removeStagedItem"]
      887 DUPCLOSURE                       R53 K278 [PROTO_156]
      888 CAPTURE                          VAL R6
      889 SETTABLEKS                       R53 R47 K279 ["stageNewFolder"]
      891 DUPCLOSURE                       R53 K280 [PROTO_157]
      892 SETTABLEKS                       R53 R47 K281 ["setAnalyticsInsertAction"]
      894 DUPCLOSURE                       R53 K282 [PROTO_158]
      895 CAPTURE                          VAL R35
      896 CAPTURE                          VAL R4
      897 CAPTURE                          VAL R14
      898 SETTABLEKS                       R53 R47 K283 ["sendInsertToAnalytics"]
      900 DUPCLOSURE                       R53 K284 [PROTO_159]
      901 SETTABLEKS                       R53 R47 K285 ["getCurrentShownScope"]
      903 DUPCLOSURE                       R53 K286 [PROTO_160]
      904 SETTABLEKS                       R53 R47 K287 ["getPlugin"]
      906 RETURN                           R47 1
