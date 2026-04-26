PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
        6 GETTABLEKS                       R3 R4 K2 ["ProjectPlaces"]
        8 JUMPIFEQ                         R2 R3 ; [+12]
       10 GETTABLEKS                       R2 R0 K0 ["Type"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
       15 GETTABLEKS                       R3 R4 K3 ["ProjectShared"]
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        5 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K2 ["Id"]
       10 JUMPIFEQKN                       R2 K3 [0] ; [+9]
       12 GETTABLEKS                       R4 R1 K4 ["Uid"]
       14 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["_pluginController"]
       23 NAMECALL                         R5 R5 K8 ["getUser"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R4 R5 K4 ["Uid"]
       28 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K7 [table.insert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K9 ["append"]
       37 MOVE                             R3 R0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K10 ["_explorerController"]
       41 NAMECALL                         R4 R4 K11 ["getVisibleInventories"]
       43 CALL                             R4 1 -1
       44 CALL                             R2 -1 0
       45 GETUPVAL                         R2 0
       46 SETTABLEKS                       R0 R2 K12 ["_sourceList"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R2 R3 K13 ["OnSourceListChanged"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K12 ["_sourceList"]
       54 NAMECALL                         R2 R2 K14 ["Fire"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_updateSourceList"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       16 DUPTABLE                         R4 K21 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged"}]
       17 SETTABLEKS                       R1 R4 K4 ["_isMock"]
       19 GETTABLEKS                       R5 R0 K22 ["Networking"]
       21 SETTABLEKS                       R5 R4 K5 ["_networking"]
       23 GETTABLEKS                       R5 R0 K0 ["PluginController"]
       25 SETTABLEKS                       R5 R4 K6 ["_pluginController"]
       27 GETTABLEKS                       R5 R0 K2 ["ExplorerController"]
       29 SETTABLEKS                       R5 R4 K7 ["_explorerController"]
       31 LOADK                            R5 K23 [""]
       32 SETTABLEKS                       R5 R4 K8 ["_searchTerm"]
       34 DUPTABLE                         R5 K26 [{"AssetType", "ScopeInfo"}]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K24 ["AssetType"]
       38 GETTABLEKS                       R6 R7 K27 ["Model"]
       40 SETTABLEKS                       R6 R5 K24 ["AssetType"]
       42 GETUPVAL                         R7 0
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+8]
       45 MOVE                             R6 R3
       46 JUMPIF                           R6 ; [+11]
       47 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       49 NAMECALL                         R6 R6 K28 ["getUser"]
       51 CALL                             R6 1 1
       52 JUMP                             ; [+5]
       53 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       55 NAMECALL                         R6 R6 K1 ["getCurrentScope"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K25 ["ScopeInfo"]
       60 SETTABLEKS                       R5 R4 K9 ["_searchOptions"]
       62 NEWTABLE                         R5 0 0
       64 SETTABLEKS                       R5 R4 K10 ["_sourceList"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R4 K11 ["_showSearchOptions"]
       69 LOADB                            R5 1
       70 SETTABLEKS                       R5 R4 K12 ["_isDefaultSearchState"]
       72 LOADK                            R5 K23 [""]
       73 SETTABLEKS                       R5 R4 K13 ["_searchSessionId"]
       75 NEWTABLE                         R5 0 0
       77 SETTABLEKS                       R5 R4 K14 ["_connections"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R5 R6 K29 ["new"]
       82 CALL                             R5 0 1
       83 SETTABLEKS                       R5 R4 K15 ["OnSearchRequested"]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R5 R6 K29 ["new"]
       88 CALL                             R5 0 1
       89 SETTABLEKS                       R5 R4 K16 ["OnSearchTermChanged"]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R5 R6 K29 ["new"]
       94 CALL                             R5 0 1
       95 SETTABLEKS                       R5 R4 K17 ["OnSearchOptionsChanged"]
       97 GETUPVAL                         R6 2
       98 GETTABLEKS                       R5 R6 K29 ["new"]
      100 CALL                             R5 0 1
      101 SETTABLEKS                       R5 R4 K18 ["OnSourceListChanged"]
      103 GETUPVAL                         R6 2
      104 GETTABLEKS                       R5 R6 K29 ["new"]
      106 CALL                             R5 0 1
      107 SETTABLEKS                       R5 R4 K19 ["OnShowSearchOptionsChanged"]
      109 GETUPVAL                         R6 2
      110 GETTABLEKS                       R5 R6 K29 ["new"]
      112 CALL                             R5 0 1
      113 SETTABLEKS                       R5 R4 K20 ["OnIsDefaultSearchStateChanged"]
      115 GETUPVAL                         R7 3
      116 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      118 MOVE                             R6 R4
      119 GETIMPORT                        R5 K31 [setmetatable]
      121 CALL                             R5 2 0
      122 NEWCLOSURE                       R5 P0
      123 CAPTURE                          VAL R4
      124 CAPTURE                          UPVAL U4
      125 SETTABLEKS                       R5 R4 K32 ["_updateSourceList"]
      127 GETTABLEKS                       R6 R4 K14 ["_connections"]
      129 GETTABLEKS                       R8 R4 K7 ["_explorerController"]
      131 GETTABLEKS                       R7 R8 K33 ["OnExplorerItemsChanged"]
      133 NEWCLOSURE                       R9 P1
      134 CAPTURE                          VAL R4
      135 NAMECALL                         R7 R7 K34 ["Connect"]
      137 CALL                             R7 2 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R5 K37 [table.insert]
      141 CALL                             R5 -1 0
      142 GETTABLEKS                       R6 R4 K14 ["_connections"]
      144 GETTABLEKS                       R8 R4 K7 ["_explorerController"]
      146 GETTABLEKS                       R7 R8 K38 ["OnRestoreSearchState"]
      148 NEWCLOSURE                       R9 P2
      149 CAPTURE                          VAL R4
      150 NAMECALL                         R7 R7 K34 ["Connect"]
      152 CALL                             R7 2 -1
      153 FASTCALL                         TABLE_INSERT ; [+2]
      154 GETIMPORT                        R5 K37 [table.insert]
      156 CALL                             R5 -1 0
      157 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnSearchTermChanged"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnSearchOptionsChanged"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnSearchRequested"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnSourceListChanged"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["_connections"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["_connections"]
       19 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 RETURN                           R1 1

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSearchTermChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_searchTerm"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_11:
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
       37 GETTABLEKS                       R3 R0 K10 ["_searchOptions"]
       39 GETTABLEKS                       R2 R3 K11 ["AssetType"]
       41 SETTABLEKS                       R2 R1 K6 ["searchAssetType"]
       43 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
       45 SETTABLEKS                       R2 R1 K7 ["searchKeywords"]
       47 GETTABLEKS                       R2 R0 K12 ["_searchSessionId"]
       49 SETTABLEKS                       R2 R1 K8 ["searchId"]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R2 R3 K13 ["sendSearchEvent"]
       54 MOVE                             R3 R1
       55 CALL                             R2 1 0
       56 DUPTABLE                         R2 K17 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
       57 GETTABLEKS                       R3 R0 K0 ["_searchTerm"]
       59 SETTABLEKS                       R3 R2 K14 ["SearchTerm"]
       61 GETIMPORT                        R3 K20 [table.clone]
       63 GETTABLEKS                       R4 R0 K10 ["_searchOptions"]
       65 CALL                             R3 1 1
       66 SETTABLEKS                       R3 R2 K15 ["SearchOptions"]
       68 GETTABLEKS                       R3 R0 K12 ["_searchSessionId"]
       70 SETTABLEKS                       R3 R2 K16 ["SearchSessionId"]
       72 GETTABLEKS                       R3 R0 K21 ["_explorerController"]
       74 DUPTABLE                         R5 K23 [{"SearchState"}]
       75 SETTABLEKS                       R2 R5 K22 ["SearchState"]
       77 NAMECALL                         R3 R3 K24 ["updateCurrentHistoryItem"]
       79 CALL                             R3 2 0
       80 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_searchOptions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R3 R4 K1 ["ScopeInfo"]
        4 GETTABLEKS                       R2 R3 K2 ["Uid"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K3 ["_explorerController"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["getScopeWithUid"]
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R2 K5 ["Type"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K6 ["ScopeType"]
       23 GETTABLEKS                       R4 R5 K7 ["ProjectPlaces"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+10]
       27 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K8 ["AssetType"]
       32 GETTABLEKS                       R4 R5 K9 ["Place"]
       34 SETTABLEKS                       R4 R3 K8 ["AssetType"]
       36 MOVE                             R4 R2
       37 LOADB                            R3 1
       38 GETTABLEKS                       R5 R4 K5 ["Type"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K6 ["ScopeType"]
       43 GETTABLEKS                       R6 R7 K7 ["ProjectPlaces"]
       45 JUMPIFEQ                         R5 R6 ; [+12]
       47 GETTABLEKS                       R5 R4 K5 ["Type"]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K6 ["ScopeType"]
       52 GETTABLEKS                       R6 R7 K10 ["ProjectShared"]
       54 JUMPIFEQ                         R5 R6 ; [+2]
       56 LOADB                            R3 0 +1
       57 LOADB                            R3 1
       58 JUMPIFNOT                        R3 ; [+6]
       59 GETTABLEKS                       R3 R0 K11 ["_pluginController"]
       61 NAMECALL                         R3 R3 K12 ["getGameInfo"]
       63 CALL                             R3 1 1
       64 MOVE                             R2 R3
       65 GETUPVAL                         R3 1
       66 CALL                             R3 0 1
       67 JUMPIFNOT                        R3 ; [+10]
       68 GETTABLEKS                       R3 R0 K3 ["_explorerController"]
       70 GETTABLEKS                       R6 R0 K0 ["_searchOptions"]
       72 GETTABLEKS                       R5 R6 K1 ["ScopeInfo"]
       74 MOVE                             R6 R2
       75 NAMECALL                         R3 R3 K13 ["tryUpdateInventoryFolderReady"]
       77 CALL                             R3 3 0
       78 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       80 SETTABLEKS                       R2 R3 K1 ["ScopeInfo"]
       82 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       84 NAMECALL                         R3 R0 K14 ["setSearchOptions"]
       86 CALL                             R3 2 0
       87 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R3 K1 ["AssetType"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        9 SETTABLEKS                       R1 R2 K1 ["AssetType"]
       11 GETTABLEKS                       R4 R0 K0 ["_searchOptions"]
       13 NAMECALL                         R2 R0 K2 ["setSearchOptions"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_isDefaultSearchState"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 RETURN                           R1 1

PROTO_18:
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
       30 GETTABLEKS                       R4 R0 K2 ["_pluginController"]
       32 NAMECALL                         R4 R4 K3 ["getCurrentScope"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R3 R4 K6 ["Uid"]
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
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R1 R2 K12 ["createSearchSessionId"]
       62 CALL                             R1 0 1
       63 SETTABLEKS                       R1 R0 K13 ["_searchSessionId"]
       65 DUPTABLE                         R1 K17 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
       66 GETTABLEKS                       R2 R0 K18 ["_searchTerm"]
       68 SETTABLEKS                       R2 R1 K14 ["SearchTerm"]
       70 GETIMPORT                        R2 K21 [table.clone]
       72 GETTABLEKS                       R3 R0 K22 ["_searchOptions"]
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R1 K15 ["SearchOptions"]
       77 GETTABLEKS                       R2 R0 K13 ["_searchSessionId"]
       79 SETTABLEKS                       R2 R1 K16 ["SearchSessionId"]
       81 GETTABLEKS                       R2 R0 K1 ["_explorerController"]
       83 DUPTABLE                         R4 K24 [{"SearchState"}]
       84 SETTABLEKS                       R1 R4 K23 ["SearchState"]
       86 NAMECALL                         R2 R2 K25 ["addToHistory"]
       88 CALL                             R2 2 0
       89 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_showSearchOptions"]
        2 JUMPIFEQKB                       R2 FALSE ; [+114]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K0 ["_showSearchOptions"]
        7 GETTABLEKS                       R2 R0 K1 ["OnShowSearchOptionsChanged"]
        9 LOADB                            R4 0
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R0 K3 ["_pluginController"]
       15 NAMECALL                         R2 R2 K4 ["getCurrentScope"]
       17 CALL                             R2 1 1
       18 JUMPIF                           R2 ; [+10]
       19 GETUPVAL                         R3 0
       20 LOADK                            R4 K5 ["SearchController:hideSearchOptions - no current scope found, defaulting to user scope"]
       21 LOADK                            R5 K6 ["WARN"]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       25 NAMECALL                         R3 R3 K7 ["getUser"]
       27 CALL                             R3 1 1
       28 MOVE                             R2 R3
       29 LOADK                            R5 K8 [""]
       30 NAMECALL                         R3 R0 K9 ["setSearchTerm"]
       32 CALL                             R3 2 0
       33 DUPTABLE                         R3 K12 [{"AssetType", "ScopeInfo"}]
       34 GETTABLEKS                       R5 R2 K13 ["Type"]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R7 R8 K14 ["ScopeType"]
       39 GETTABLEKS                       R6 R7 K15 ["ProjectPlaces"]
       41 JUMPIFNOTEQ                      R5 R6 ; [+7]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R5 R6 K10 ["AssetType"]
       46 GETTABLEKS                       R4 R5 K16 ["Place"]
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K10 ["AssetType"]
       52 GETTABLEKS                       R4 R5 K17 ["Model"]
       54 SETTABLEKS                       R4 R3 K10 ["AssetType"]
       56 MOVE                             R6 R2
       57 LOADB                            R5 1
       58 GETTABLEKS                       R7 R6 K13 ["Type"]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       63 GETTABLEKS                       R8 R9 K15 ["ProjectPlaces"]
       65 JUMPIFEQ                         R7 R8 ; [+12]
       67 GETTABLEKS                       R7 R6 K13 ["Type"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       72 GETTABLEKS                       R8 R9 K18 ["ProjectShared"]
       74 JUMPIFEQ                         R7 R8 ; [+2]
       76 LOADB                            R5 0 +1
       77 LOADB                            R5 1
       78 JUMPIFNOT                        R5 ; [+6]
       79 GETTABLEKS                       R4 R0 K3 ["_pluginController"]
       81 NAMECALL                         R4 R4 K19 ["getGameInfo"]
       83 CALL                             R4 1 1
       84 JUMP                             ; [+1]
       85 MOVE                             R4 R2
       86 SETTABLEKS                       R4 R3 K11 ["ScopeInfo"]
       88 SETTABLEKS                       R3 R0 K20 ["_searchOptions"]
       90 GETTABLEKS                       R3 R0 K21 ["OnSearchOptionsChanged"]
       92 GETIMPORT                        R5 K24 [table.clone]
       94 GETTABLEKS                       R6 R0 K20 ["_searchOptions"]
       96 CALL                             R5 1 -1
       97 NAMECALL                         R3 R3 K2 ["Fire"]
       99 CALL                             R3 -1 0
      100 LOADK                            R3 K8 [""]
      101 SETTABLEKS                       R3 R0 K25 ["_searchSessionId"]
      103 GETUPVAL                         R3 2
      104 CALL                             R3 0 1
      105 JUMPIFNOT                        R3 ; [+1]
      106 JUMPIF                           R1 ; [+10]
      107 GETTABLEKS                       R3 R0 K26 ["_explorerController"]
      109 DUPTABLE                         R5 K28 [{"ScopeUid"}]
      110 GETTABLEKS                       R6 R2 K29 ["Uid"]
      112 SETTABLEKS                       R6 R5 K27 ["ScopeUid"]
      114 NAMECALL                         R3 R3 K30 ["addToHistory"]
      116 CALL                             R3 2 0
      117 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_searchSessionId"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETTABLEKS                       R6 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R6 K12 ["Signal"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K11 ["Util"]
       35 GETTABLEKS                       R7 R8 K14 ["cleanConnections"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R9 K15 ["Analytics"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R10 R0 K13 ["Src"]
       49 GETTABLEKS                       R9 R10 K16 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R12 R0 K13 ["Src"]
       56 GETTABLEKS                       R11 R12 K11 ["Util"]
       58 GETTABLEKS                       R10 R11 K17 ["logIfDebug"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R13 R0 K13 ["Src"]
       65 GETTABLEKS                       R12 R13 K18 ["Flags"]
       67 GETTABLEKS                       R11 R12 K19 ["getFFlagAmrOrganizationFoundation"]
       69 CALL                             R10 1 1
       70 LOADK                            R13 K20 ["SearchController"]
       71 NAMECALL                         R11 R4 K21 ["extend"]
       73 CALL                             R11 2 1
       74 DUPCLOSURE                       R12 K22 [PROTO_0]
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R13 K23 [PROTO_4]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R13 R11 K24 ["new"]
       84 DUPCLOSURE                       R13 K25 [PROTO_5]
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R13 R11 K26 ["mock"]
       88 DUPCLOSURE                       R13 K27 [PROTO_6]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R13 R11 K28 ["destroy"]
       92 DUPCLOSURE                       R13 K29 [PROTO_7]
       93 SETTABLEKS                       R13 R11 K30 ["_restoreSearchState"]
       95 DUPCLOSURE                       R13 K31 [PROTO_8]
       96 SETTABLEKS                       R13 R11 K32 ["getSearchTerm"]
       98 DUPCLOSURE                       R13 K33 [PROTO_9]
       99 SETTABLEKS                       R13 R11 K34 ["setSearchTerm"]
      101 DUPCLOSURE                       R13 K35 [PROTO_10]
      102 SETTABLEKS                       R13 R11 K36 ["getSourceList"]
      104 DUPCLOSURE                       R13 K37 [PROTO_11]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R13 R11 K38 ["requestSearch"]
      108 DUPCLOSURE                       R13 K39 [PROTO_12]
      109 SETTABLEKS                       R13 R11 K40 ["getSearchOptions"]
      111 DUPCLOSURE                       R13 K41 [PROTO_13]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R10
      114 SETTABLEKS                       R13 R11 K42 ["setScope"]
      116 DUPCLOSURE                       R13 K43 [PROTO_14]
      117 SETTABLEKS                       R13 R11 K44 ["setAssetTypeFilter"]
      119 DUPCLOSURE                       R13 K45 [PROTO_15]
      120 SETTABLEKS                       R13 R11 K46 ["setSearchOptions"]
      122 DUPCLOSURE                       R13 K47 [PROTO_16]
      123 SETTABLEKS                       R13 R11 K48 ["getIsDefaultSearchState"]
      125 DUPCLOSURE                       R13 K49 [PROTO_17]
      126 SETTABLEKS                       R13 R11 K50 ["getShowSearchOptions"]
      128 DUPCLOSURE                       R13 K51 [PROTO_18]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R13 R11 K52 ["showSearchOptions"]
      133 DUPCLOSURE                       R13 K53 [PROTO_19]
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R10
      137 SETTABLEKS                       R13 R11 K54 ["hideSearchOptions"]
      139 DUPCLOSURE                       R13 K55 [PROTO_20]
      140 SETTABLEKS                       R13 R11 K56 ["getSearchId"]
      142 RETURN                           R11 1
