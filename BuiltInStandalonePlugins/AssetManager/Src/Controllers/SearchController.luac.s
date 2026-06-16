PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
        6 GETTABLEKS                       R3 R3 K2 ["ProjectPlaces"]
        8 JUMPIFEQ                         R2 R3 ; [+12]
       10 GETTABLEKS                       R2 R0 K0 ["Type"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
       15 GETTABLEKS                       R3 R3 K3 ["ProjectShared"]
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        5 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K2 ["Id"]
       10 JUMPIFEQKN                       R2 K3 [0] ; [+9]
       12 GETTABLEKS                       R4 R1 K4 ["Uid"]
       14 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["_pluginController"]
       23 NAMECALL                         R2 R2 K8 ["getUser"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R2 R2 K4 ["Uid"]
       28 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R2
       32 GETIMPORT                        R3 K7 [table.insert]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K9 ["append"]
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K10 ["filter"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K11 ["_explorerController"]
       45 NAMECALL                         R6 R6 K12 ["getVisibleInventories"]
       47 CALL                             R6 1 1
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R2
       50 CALL                             R5 2 -1
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K11 ["_explorerController"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K13 ["_searchOptions"]
       58 GETTABLEKS                       R5 R5 K14 ["ScopeInfo"]
       60 GETTABLEKS                       R5 R5 K4 ["Uid"]
       62 NAMECALL                         R3 R3 K15 ["getScopeWithUid"]
       64 CALL                             R3 2 1
       65 JUMPIF                           R3 ; [+5]
       66 GETUPVAL                         R3 0
       67 MOVE                             R5 R2
       68 NAMECALL                         R3 R3 K16 ["setScope"]
       70 CALL                             R3 2 0
       71 GETUPVAL                         R3 0
       72 SETTABLEKS                       R0 R3 K17 ["_sourceList"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K18 ["OnSourceListChanged"]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K17 ["_sourceList"]
       80 NAMECALL                         R3 R3 K19 ["Fire"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_updateSourceList"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["hideSearchOptions"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["_restoreSearchState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["PluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 GETTABLEKS                       R3 R0 K2 ["ExplorerController"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["getScopeRoot"]
       13 CALL                             R3 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 DUPTABLE                         R4 K23 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchHistory", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged", "OnSearchHistoryChanged"}]
       17 SETTABLEKS                       R1 R4 K4 ["_isMock"]
       19 GETTABLEKS                       R5 R0 K24 ["Networking"]
       21 SETTABLEKS                       R5 R4 K5 ["_networking"]
       23 GETTABLEKS                       R5 R0 K0 ["PluginController"]
       25 SETTABLEKS                       R5 R4 K6 ["_pluginController"]
       27 GETTABLEKS                       R5 R0 K2 ["ExplorerController"]
       29 SETTABLEKS                       R5 R4 K7 ["_explorerController"]
       31 LOADK                            R5 K25 [""]
       32 SETTABLEKS                       R5 R4 K8 ["_searchTerm"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R4 K9 ["_searchHistory"]
       38 DUPTABLE                         R5 K28 [{"AssetType", "ScopeInfo"}]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K26 ["AssetType"]
       42 GETTABLEKS                       R6 R6 K29 ["Model"]
       44 SETTABLEKS                       R6 R5 K26 ["AssetType"]
       46 GETUPVAL                         R7 0
       47 CALL                             R7 0 1
       48 JUMPIFNOT                        R7 ; [+8]
       49 MOVE                             R6 R3
       50 JUMPIF                           R6 ; [+11]
       51 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       53 NAMECALL                         R6 R6 K30 ["getUser"]
       55 CALL                             R6 1 1
       56 JUMP                             ; [+5]
       57 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       59 NAMECALL                         R6 R6 K1 ["getCurrentScope"]
       61 CALL                             R6 1 1
       62 SETTABLEKS                       R6 R5 K27 ["ScopeInfo"]
       64 SETTABLEKS                       R5 R4 K10 ["_searchOptions"]
       66 NEWTABLE                         R5 0 0
       68 SETTABLEKS                       R5 R4 K11 ["_sourceList"]
       70 LOADB                            R5 0
       71 SETTABLEKS                       R5 R4 K12 ["_showSearchOptions"]
       73 LOADB                            R5 1
       74 SETTABLEKS                       R5 R4 K13 ["_isDefaultSearchState"]
       76 LOADK                            R5 K25 [""]
       77 SETTABLEKS                       R5 R4 K14 ["_searchSessionId"]
       79 NEWTABLE                         R5 0 0
       81 SETTABLEKS                       R5 R4 K15 ["_connections"]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R5 R5 K31 ["new"]
       86 CALL                             R5 0 1
       87 SETTABLEKS                       R5 R4 K16 ["OnSearchRequested"]
       89 GETUPVAL                         R5 2
       90 GETTABLEKS                       R5 R5 K31 ["new"]
       92 CALL                             R5 0 1
       93 SETTABLEKS                       R5 R4 K17 ["OnSearchTermChanged"]
       95 GETUPVAL                         R5 2
       96 GETTABLEKS                       R5 R5 K31 ["new"]
       98 CALL                             R5 0 1
       99 SETTABLEKS                       R5 R4 K18 ["OnSearchOptionsChanged"]
      101 GETUPVAL                         R5 2
      102 GETTABLEKS                       R5 R5 K31 ["new"]
      104 CALL                             R5 0 1
      105 SETTABLEKS                       R5 R4 K19 ["OnSourceListChanged"]
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R5 R5 K31 ["new"]
      110 CALL                             R5 0 1
      111 SETTABLEKS                       R5 R4 K20 ["OnShowSearchOptionsChanged"]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R5 R5 K31 ["new"]
      116 CALL                             R5 0 1
      117 SETTABLEKS                       R5 R4 K21 ["OnIsDefaultSearchStateChanged"]
      119 GETUPVAL                         R5 2
      120 GETTABLEKS                       R5 R5 K31 ["new"]
      122 CALL                             R5 0 1
      123 SETTABLEKS                       R5 R4 K22 ["OnSearchHistoryChanged"]
      125 GETUPVAL                         R7 3
      126 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      128 MOVE                             R6 R4
      129 GETIMPORT                        R5 K33 [setmetatable]
      131 CALL                             R5 2 0
      132 NEWCLOSURE                       R5 P0
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U4
      135 SETTABLEKS                       R5 R4 K34 ["_updateSourceList"]
      137 GETTABLEKS                       R6 R4 K15 ["_connections"]
      139 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      141 GETTABLEKS                       R7 R7 K35 ["OnExplorerItemsChanged"]
      143 NEWCLOSURE                       R9 P1
      144 CAPTURE                          VAL R4
      145 NAMECALL                         R7 R7 K36 ["Connect"]
      147 CALL                             R7 2 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R5 K39 [table.insert]
      151 CALL                             R5 -1 0
      152 GETTABLEKS                       R6 R4 K15 ["_connections"]
      154 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      156 GETTABLEKS                       R7 R7 K40 ["OnRestoreSearchState"]
      158 NEWCLOSURE                       R9 P2
      159 CAPTURE                          VAL R4
      160 NAMECALL                         R7 R7 K36 ["Connect"]
      162 CALL                             R7 2 -1
      163 FASTCALL                         TABLE_INSERT ; [+2]
      164 GETIMPORT                        R5 K39 [table.insert]
      166 CALL                             R5 -1 0
      167 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnSearchTermChanged"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnSearchOptionsChanged"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnSearchRequested"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnSourceListChanged"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnShowSearchOptionsChanged"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnIsDefaultSearchStateChanged"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["OnSearchHistoryChanged"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R2 R0 K7 ["_connections"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K7 ["_connections"]
       28 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        2 SETTABLEKS                       R2 R0 K1 ["_searchTerm"]
        4 GETIMPORT                        R2 K4 [table.clone]
        6 GETTABLEKS                       R3 R1 K5 ["SearchOptions"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R0 K6 ["_searchOptions"]
       11 GETTABLEKS                       R2 R1 K7 ["SearchSessionId"]
       13 SETTABLEKS                       R2 R0 K8 ["_searchSessionId"]
       15 GETTABLEKS                       R3 R1 K0 ["SearchTerm"]
       17 JUMPIFEQKS                       R3 K9 [""] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R0 K10 ["_isDefaultSearchState"]
       23 GETTABLEKS                       R2 R0 K11 ["_showSearchOptions"]
       25 JUMPIF                           R2 ; [+9]
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R0 K11 ["_showSearchOptions"]
       29 GETTABLEKS                       R2 R0 K12 ["OnShowSearchOptionsChanged"]
       31 LOADB                            R4 1
       32 NAMECALL                         R2 R2 K13 ["Fire"]
       34 CALL                             R2 2 0
       35 GETTABLEKS                       R2 R0 K14 ["OnSearchTermChanged"]
       37 GETTABLEKS                       R4 R0 K1 ["_searchTerm"]
       39 NAMECALL                         R2 R2 K13 ["Fire"]
       41 CALL                             R2 2 0
       42 GETTABLEKS                       R2 R0 K15 ["OnSearchOptionsChanged"]
       44 GETTABLEKS                       R4 R0 K6 ["_searchOptions"]
       46 NAMECALL                         R2 R2 K13 ["Fire"]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R2 R0 K16 ["OnIsDefaultSearchStateChanged"]
       51 GETTABLEKS                       R4 R0 K10 ["_isDefaultSearchState"]
       53 NAMECALL                         R2 R2 K13 ["Fire"]
       55 CALL                             R2 2 0
       56 GETTABLEKS                       R2 R0 K10 ["_isDefaultSearchState"]
       58 JUMPIF                           R2 ; [+5]
       59 GETTABLEKS                       R2 R0 K17 ["OnSearchRequested"]
       61 NAMECALL                         R2 R2 K13 ["Fire"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 RETURN                           R1 1

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSearchTermChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_searchTerm"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+15]
        4 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
        6 JUMPIF                           R1 ; [+10]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       10 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       12 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       14 NAMECALL                         R1 R1 K4 ["Fire"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       20 JUMPIFNOT                        R1 ; [+10]
       21 LOADB                            R1 0
       22 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       24 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       26 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       28 NAMECALL                         R1 R1 K4 ["Fire"]
       30 CALL                             R1 2 0
       31 GETTABLEKS                       R1 R0 K5 ["OnSearchRequested"]
       33 NAMECALL                         R1 R1 K4 ["Fire"]
       35 CALL                             R1 1 0
       36 DUPTABLE                         R1 K9 [{"searchAssetType", "searchKeywords", "searchId"}]
       37 GETTABLEKS                       R2 R0 K10 ["_searchOptions"]
       39 GETTABLEKS                       R2 R2 K11 ["AssetType"]
       41 SETTABLEKS                       R2 R1 K6 ["searchAssetType"]
       43 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
       45 SETTABLEKS                       R2 R1 K7 ["searchKeywords"]
       47 GETTABLEKS                       R2 R0 K12 ["_searchSessionId"]
       49 SETTABLEKS                       R2 R1 K8 ["searchId"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K13 ["sendSearchEvent"]
       54 MOVE                             R3 R1
       55 CALL                             R2 1 0
       56 GETTABLEKS                       R2 R0 K14 ["_explorerController"]
       58 DUPTABLE                         R4 K16 [{"SearchState"}]
       59 NAMECALL                         R5 R0 K17 ["_getSearchState"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R4 K15 ["SearchState"]
       64 NAMECALL                         R2 R2 K18 ["updateCurrentHistoryItem"]
       66 CALL                             R2 2 0
       67 NAMECALL                         R2 R0 K19 ["_pushSearchHistoryItem"]
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_searchOptions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R2 K1 ["ScopeInfo"]
        4 GETTABLEKS                       R2 R2 K2 ["Uid"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K3 ["_explorerController"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["getScopeWithUid"]
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R2 K5 ["Type"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["ScopeType"]
       23 GETTABLEKS                       R4 R4 K7 ["ProjectPlaces"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+10]
       27 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K8 ["AssetType"]
       32 GETTABLEKS                       R4 R4 K9 ["Place"]
       34 SETTABLEKS                       R4 R3 K8 ["AssetType"]
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R0 K10 ["_getValidScope"]
       39 CALL                             R3 2 1
       40 MOVE                             R2 R3
       41 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       43 SETTABLEKS                       R2 R3 K1 ["ScopeInfo"]
       45 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       47 NAMECALL                         R3 R0 K11 ["setSearchOptions"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R1 K0 ["Type"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ScopeType"]
        6 GETTABLEKS                       R4 R4 K2 ["RecentUploads"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+8]
       10 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       12 NAMECALL                         R3 R3 K4 ["getUser"]
       14 CALL                             R3 1 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1
       17 LOADB                            R3 1
       18 GETTABLEKS                       R4 R1 K0 ["Type"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K1 ["ScopeType"]
       23 GETTABLEKS                       R5 R5 K5 ["ProjectPlaces"]
       25 JUMPIFEQ                         R4 R5 ; [+12]
       27 GETTABLEKS                       R4 R1 K0 ["Type"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["ScopeType"]
       32 GETTABLEKS                       R5 R5 K6 ["ProjectShared"]
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+6]
       39 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       41 NAMECALL                         R3 R3 K7 ["getGameInfo"]
       43 CALL                             R3 1 1
       44 MOVE                             R2 R3
       45 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        9 SETTABLEKS                       R1 R2 K1 ["AssetType"]
       11 GETTABLEKS                       R4 R0 K0 ["_searchOptions"]
       13 NAMECALL                         R2 R0 K2 ["setSearchOptions"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSearchOptionsChanged"]
        4 GETIMPORT                        R4 K4 [table.clone]
        6 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K5 ["Fire"]
       11 CALL                             R2 -1 0
       12 NAMECALL                         R2 R0 K6 ["requestSearch"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_isDefaultSearchState"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+22]
        8 GETTABLEKS                       R1 R0 K1 ["_explorerController"]
       10 GETTABLEKS                       R3 R0 K2 ["_pluginController"]
       12 NAMECALL                         R3 R3 K3 ["getCurrentScope"]
       14 CALL                             R3 1 -1
       15 NAMECALL                         R1 R1 K4 ["getScopeRoot"]
       17 CALL                             R1 -1 1
       18 JUMPIF                           R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K2 ["_pluginController"]
       21 NAMECALL                         R1 R1 K5 ["getUser"]
       23 CALL                             R1 1 1
       24 GETTABLEKS                       R4 R1 K6 ["Uid"]
       26 NAMECALL                         R2 R0 K7 ["setScope"]
       28 CALL                             R2 2 0
       29 JUMP                             ; [+10]
       30 GETTABLEKS                       R3 R0 K2 ["_pluginController"]
       32 NAMECALL                         R3 R3 K3 ["getCurrentScope"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R3 R3 K6 ["Uid"]
       37 NAMECALL                         R1 R0 K7 ["setScope"]
       39 CALL                             R1 2 0
       40 LOADB                            R1 1
       41 SETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
       43 LOADB                            R1 1
       44 SETTABLEKS                       R1 R0 K8 ["_isDefaultSearchState"]
       46 GETTABLEKS                       R1 R0 K9 ["OnIsDefaultSearchStateChanged"]
       48 GETTABLEKS                       R3 R0 K8 ["_isDefaultSearchState"]
       50 NAMECALL                         R1 R1 K10 ["Fire"]
       52 CALL                             R1 2 0
       53 GETTABLEKS                       R1 R0 K11 ["OnShowSearchOptionsChanged"]
       55 LOADB                            R3 1
       56 NAMECALL                         R1 R1 K10 ["Fire"]
       58 CALL                             R1 2 0
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K12 ["createSearchSessionId"]
       62 CALL                             R1 0 1
       63 SETTABLEKS                       R1 R0 K13 ["_searchSessionId"]
       65 GETTABLEKS                       R1 R0 K1 ["_explorerController"]
       67 DUPTABLE                         R3 K15 [{"SearchState"}]
       68 NAMECALL                         R4 R0 K16 ["_getSearchState"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K14 ["SearchState"]
       73 NAMECALL                         R1 R1 K17 ["addToHistory"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_showSearchOptions"]
        2 JUMPIFEQKB                       R2 FALSE ; [+89]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K0 ["_showSearchOptions"]
        7 GETTABLEKS                       R2 R0 K1 ["OnShowSearchOptionsChanged"]
        9 LOADB                            R4 0
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       16 GETTABLEKS                       R2 R2 K4 ["Model"]
       18 GETTABLEKS                       R3 R0 K5 ["_pluginController"]
       20 NAMECALL                         R3 R3 K6 ["getCurrentScope"]
       22 CALL                             R3 1 1
       23 JUMPIF                           R3 ; [+11]
       24 GETUPVAL                         R4 1
       25 LOADK                            R5 K7 ["SearchController:hideSearchOptions - no current scope found, defaulting to user scope"]
       26 LOADK                            R6 K8 ["WARN"]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K5 ["_pluginController"]
       30 NAMECALL                         R4 R4 K9 ["getUser"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 JUMP                             ; [+19]
       35 GETTABLEKS                       R4 R3 K10 ["Type"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K11 ["ScopeType"]
       40 GETTABLEKS                       R5 R5 K12 ["ProjectPlaces"]
       42 JUMPIFNOTEQ                      R4 R5 ; [+6]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K3 ["AssetType"]
       47 GETTABLEKS                       R2 R4 K13 ["Place"]
       49 MOVE                             R6 R3
       50 NAMECALL                         R4 R0 K14 ["_getValidScope"]
       52 CALL                             R4 2 1
       53 MOVE                             R3 R4
       54 LOADK                            R6 K15 [""]
       55 NAMECALL                         R4 R0 K16 ["setSearchTerm"]
       57 CALL                             R4 2 0
       58 DUPTABLE                         R4 K18 [{"AssetType", "ScopeInfo"}]
       59 SETTABLEKS                       R2 R4 K3 ["AssetType"]
       61 SETTABLEKS                       R3 R4 K17 ["ScopeInfo"]
       63 SETTABLEKS                       R4 R0 K19 ["_searchOptions"]
       65 GETTABLEKS                       R4 R0 K20 ["OnSearchOptionsChanged"]
       67 GETIMPORT                        R6 K23 [table.clone]
       69 GETTABLEKS                       R7 R0 K19 ["_searchOptions"]
       71 CALL                             R6 1 -1
       72 NAMECALL                         R4 R4 K2 ["Fire"]
       74 CALL                             R4 -1 0
       75 LOADK                            R4 K15 [""]
       76 SETTABLEKS                       R4 R0 K24 ["_searchSessionId"]
       78 GETUPVAL                         R4 2
       79 CALL                             R4 0 1
       80 JUMPIFNOT                        R4 ; [+1]
       81 JUMPIF                           R1 ; [+10]
       82 GETTABLEKS                       R4 R0 K25 ["_explorerController"]
       84 DUPTABLE                         R6 K27 [{"ScopeUid"}]
       85 GETTABLEKS                       R7 R3 K28 ["Uid"]
       87 SETTABLEKS                       R7 R6 K26 ["ScopeUid"]
       89 NAMECALL                         R4 R4 K29 ["addToHistory"]
       91 CALL                             R4 2 0
       92 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_searchSessionId"]
        2 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R1 K3 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
        1 GETTABLEKS                       R2 R0 K4 ["_searchTerm"]
        3 SETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        5 GETIMPORT                        R2 K7 [table.clone]
        7 GETTABLEKS                       R3 R0 K8 ["_searchOptions"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["SearchOptions"]
       12 GETTABLEKS                       R2 R0 K9 ["_searchSessionId"]
       14 SETTABLEKS                       R2 R1 K2 ["SearchSessionId"]
       16 RETURN                           R1 1

PROTO_24:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["SearchOptions"]
        3 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["SearchTerm"]
       10 GETUPVAL                         R3 1
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 LOADK                            R5 K1 ["^%s*(.-)%s*$"]
        3 NAMECALL                         R3 R1 K2 ["match"]
        5 CALL                             R3 2 1
        6 LENGTH                           R2 R3
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K4 ["_searchOptions"]
       12 GETTABLEKS                       R2 R2 K5 ["AssetType"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K6 ["findIndex"]
       17 GETTABLEKS                       R4 R0 K7 ["_searchHistory"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CALL                             R3 2 1
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 GETIMPORT                        R4 K10 [table.remove]
       27 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       33 LOADN                            R6 1
       34 DUPTABLE                         R7 K13 [{"SearchTerm", "SearchOptions"}]
       35 SETTABLEKS                       R1 R7 K11 ["SearchTerm"]
       37 GETIMPORT                        R8 K15 [table.clone]
       39 GETTABLEKS                       R9 R0 K4 ["_searchOptions"]
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R7 K12 ["SearchOptions"]
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R4 K17 [table.insert]
       47 CALL                             R4 3 0
       48 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       50 LENGTH                           R4 R5
       51 LOADN                            R5 5
       52 JUMPIFNOTLT                      R5 R4 ; [+9]
       54 GETIMPORT                        R4 K10 [table.remove]
       56 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       58 GETTABLEKS                       R7 R0 K7 ["_searchHistory"]
       60 LENGTH                           R6 R7
       61 CALL                             R4 2 0
       62 GETIMPORT                        R4 K15 [table.clone]
       64 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R0 K7 ["_searchHistory"]
       69 GETTABLEKS                       R4 R0 K18 ["OnSearchHistoryChanged"]
       71 GETTABLEKS                       R6 R0 K7 ["_searchHistory"]
       73 NAMECALL                         R4 R4 K19 ["Fire"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_searchHistory"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["Signal"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K11 ["Util"]
       35 GETTABLEKS                       R7 R7 K14 ["cleanConnections"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R8 K15 ["Analytics"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K13 ["Src"]
       49 GETTABLEKS                       R9 R9 K16 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Src"]
       56 GETTABLEKS                       R10 R10 K11 ["Util"]
       58 GETTABLEKS                       R10 R10 K17 ["logIfDebug"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Src"]
       65 GETTABLEKS                       R11 R11 K18 ["Flags"]
       67 GETTABLEKS                       R11 R11 K19 ["getFFlagAmrOrganizationFoundation"]
       69 CALL                             R10 1 1
       70 LOADK                            R13 K20 ["SearchController"]
       71 NAMECALL                         R11 R4 K21 ["extend"]
       73 CALL                             R11 2 1
       74 DUPCLOSURE                       R12 K22 [PROTO_0]
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R13 K23 [PROTO_5]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R13 R11 K24 ["new"]
       84 DUPCLOSURE                       R13 K25 [PROTO_6]
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R13 R11 K26 ["mock"]
       88 DUPCLOSURE                       R13 K27 [PROTO_7]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R13 R11 K28 ["destroy"]
       92 DUPCLOSURE                       R13 K29 [PROTO_8]
       93 SETTABLEKS                       R13 R11 K30 ["_restoreSearchState"]
       95 DUPCLOSURE                       R13 K31 [PROTO_9]
       96 SETTABLEKS                       R13 R11 K32 ["getSearchTerm"]
       98 DUPCLOSURE                       R13 K33 [PROTO_10]
       99 SETTABLEKS                       R13 R11 K34 ["setSearchTerm"]
      101 DUPCLOSURE                       R13 K35 [PROTO_11]
      102 SETTABLEKS                       R13 R11 K36 ["getSourceList"]
      104 DUPCLOSURE                       R13 K37 [PROTO_12]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R13 R11 K38 ["requestSearch"]
      108 DUPCLOSURE                       R13 K39 [PROTO_13]
      109 SETTABLEKS                       R13 R11 K40 ["getSearchOptions"]
      111 DUPCLOSURE                       R13 K41 [PROTO_14]
      112 CAPTURE                          VAL R8
      113 SETTABLEKS                       R13 R11 K42 ["setScope"]
      115 DUPCLOSURE                       R13 K43 [PROTO_15]
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R13 R11 K44 ["_getValidScope"]
      119 DUPCLOSURE                       R13 K45 [PROTO_16]
      120 SETTABLEKS                       R13 R11 K46 ["setAssetTypeFilter"]
      122 DUPCLOSURE                       R13 K47 [PROTO_17]
      123 SETTABLEKS                       R13 R11 K48 ["setSearchOptions"]
      125 DUPCLOSURE                       R13 K49 [PROTO_18]
      126 SETTABLEKS                       R13 R11 K50 ["getIsDefaultSearchState"]
      128 DUPCLOSURE                       R13 K51 [PROTO_19]
      129 SETTABLEKS                       R13 R11 K52 ["getShowSearchOptions"]
      131 DUPCLOSURE                       R13 K53 [PROTO_20]
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R13 R11 K54 ["showSearchOptions"]
      136 DUPCLOSURE                       R13 K55 [PROTO_21]
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R10
      140 SETTABLEKS                       R13 R11 K56 ["hideSearchOptions"]
      142 DUPCLOSURE                       R13 K57 [PROTO_22]
      143 SETTABLEKS                       R13 R11 K58 ["getSearchId"]
      145 DUPCLOSURE                       R13 K59 [PROTO_23]
      146 SETTABLEKS                       R13 R11 K60 ["_getSearchState"]
      148 DUPCLOSURE                       R13 K61 [PROTO_25]
      149 CAPTURE                          VAL R2
      150 SETTABLEKS                       R13 R11 K62 ["_pushSearchHistoryItem"]
      152 DUPCLOSURE                       R13 K63 [PROTO_26]
      153 SETTABLEKS                       R13 R11 K64 ["getSearchHistory"]
      155 RETURN                           R11 1
