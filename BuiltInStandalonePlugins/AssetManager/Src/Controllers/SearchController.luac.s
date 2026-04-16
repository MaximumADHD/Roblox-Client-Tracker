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
       16 DUPTABLE                         R4 K22 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged", "OnSearchClosed"}]
       17 SETTABLEKS                       R1 R4 K4 ["_isMock"]
       19 GETTABLEKS                       R5 R0 K23 ["Networking"]
       21 SETTABLEKS                       R5 R4 K5 ["_networking"]
       23 GETTABLEKS                       R5 R0 K0 ["PluginController"]
       25 SETTABLEKS                       R5 R4 K6 ["_pluginController"]
       27 GETTABLEKS                       R5 R0 K2 ["ExplorerController"]
       29 SETTABLEKS                       R5 R4 K7 ["_explorerController"]
       31 LOADK                            R5 K24 [""]
       32 SETTABLEKS                       R5 R4 K8 ["_searchTerm"]
       34 DUPTABLE                         R5 K27 [{"AssetType", "ScopeInfo"}]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K25 ["AssetType"]
       38 GETTABLEKS                       R6 R7 K28 ["Model"]
       40 SETTABLEKS                       R6 R5 K25 ["AssetType"]
       42 GETUPVAL                         R7 0
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+8]
       45 MOVE                             R6 R3
       46 JUMPIF                           R6 ; [+11]
       47 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       49 NAMECALL                         R6 R6 K29 ["getUser"]
       51 CALL                             R6 1 1
       52 JUMP                             ; [+5]
       53 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       55 NAMECALL                         R6 R6 K1 ["getCurrentScope"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K26 ["ScopeInfo"]
       60 SETTABLEKS                       R5 R4 K9 ["_searchOptions"]
       62 NEWTABLE                         R5 0 0
       64 SETTABLEKS                       R5 R4 K10 ["_sourceList"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R4 K11 ["_showSearchOptions"]
       69 LOADB                            R5 1
       70 SETTABLEKS                       R5 R4 K12 ["_isDefaultSearchState"]
       72 LOADK                            R5 K24 [""]
       73 SETTABLEKS                       R5 R4 K13 ["_searchSessionId"]
       75 NEWTABLE                         R5 0 0
       77 SETTABLEKS                       R5 R4 K14 ["_connections"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R5 R6 K30 ["new"]
       82 CALL                             R5 0 1
       83 SETTABLEKS                       R5 R4 K15 ["OnSearchRequested"]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R5 R6 K30 ["new"]
       88 CALL                             R5 0 1
       89 SETTABLEKS                       R5 R4 K16 ["OnSearchTermChanged"]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R5 R6 K30 ["new"]
       94 CALL                             R5 0 1
       95 SETTABLEKS                       R5 R4 K17 ["OnSearchOptionsChanged"]
       97 GETUPVAL                         R6 2
       98 GETTABLEKS                       R5 R6 K30 ["new"]
      100 CALL                             R5 0 1
      101 SETTABLEKS                       R5 R4 K18 ["OnSourceListChanged"]
      103 GETUPVAL                         R6 2
      104 GETTABLEKS                       R5 R6 K30 ["new"]
      106 CALL                             R5 0 1
      107 SETTABLEKS                       R5 R4 K19 ["OnShowSearchOptionsChanged"]
      109 GETUPVAL                         R6 2
      110 GETTABLEKS                       R5 R6 K30 ["new"]
      112 CALL                             R5 0 1
      113 SETTABLEKS                       R5 R4 K20 ["OnIsDefaultSearchStateChanged"]
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R5 R6 K30 ["new"]
      118 CALL                             R5 0 1
      119 SETTABLEKS                       R5 R4 K21 ["OnSearchClosed"]
      121 GETUPVAL                         R7 3
      122 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      124 MOVE                             R6 R4
      125 GETIMPORT                        R5 K32 [setmetatable]
      127 CALL                             R5 2 0
      128 NEWCLOSURE                       R5 P0
      129 CAPTURE                          VAL R4
      130 CAPTURE                          UPVAL U4
      131 SETTABLEKS                       R5 R4 K33 ["_updateSourceList"]
      133 GETTABLEKS                       R6 R4 K14 ["_connections"]
      135 GETTABLEKS                       R8 R4 K7 ["_explorerController"]
      137 GETTABLEKS                       R7 R8 K34 ["OnExplorerItemsChanged"]
      139 NEWCLOSURE                       R9 P1
      140 CAPTURE                          VAL R4
      141 NAMECALL                         R7 R7 K35 ["Connect"]
      143 CALL                             R7 2 -1
      144 FASTCALL                         TABLE_INSERT ; [+2]
      145 GETIMPORT                        R5 K38 [table.insert]
      147 CALL                             R5 -1 0
      148 GETUPVAL                         R5 5
      149 CALL                             R5 0 1
      150 JUMPIFNOT                        R5 ; [+15]
      151 GETTABLEKS                       R6 R4 K14 ["_connections"]
      153 GETTABLEKS                       R8 R4 K7 ["_explorerController"]
      155 GETTABLEKS                       R7 R8 K39 ["OnRestoreSearchState"]
      157 NEWCLOSURE                       R9 P2
      158 CAPTURE                          VAL R4
      159 NAMECALL                         R7 R7 K35 ["Connect"]
      161 CALL                             R7 2 -1
      162 FASTCALL                         TABLE_INSERT ; [+2]
      163 GETIMPORT                        R5 K38 [table.insert]
      165 CALL                             R5 -1 0
      166 RETURN                           R4 1

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
        7 SETTABLEKS                       R1 R0 K2 ["OnSearchClosed"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnSearchRequested"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnSourceListChanged"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R2 R0 K5 ["_connections"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K5 ["_connections"]
       22 RETURN                           R0 0

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
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+14]
        5 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
        7 JUMPIFNOTEQKS                    R2 K1 [""] ; [+11]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R0 K2 ["_isDefaultSearchState"]
       12 GETTABLEKS                       R2 R0 K3 ["OnIsDefaultSearchStateChanged"]
       14 GETTABLEKS                       R4 R0 K2 ["_isDefaultSearchState"]
       16 NAMECALL                         R2 R2 K4 ["Fire"]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R0 K5 ["OnSearchTermChanged"]
       21 GETTABLEKS                       R4 R0 K0 ["_searchTerm"]
       23 NAMECALL                         R2 R2 K4 ["Fire"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+18]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+13]
        7 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
        9 JUMPIF                           R1 ; [+10]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       13 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       15 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       17 NAMECALL                         R1 R1 K4 ["Fire"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       26 JUMPIFNOT                        R1 ; [+10]
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       30 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       32 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       34 NAMECALL                         R1 R1 K4 ["Fire"]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R1 R0 K5 ["OnSearchRequested"]
       39 NAMECALL                         R1 R1 K4 ["Fire"]
       41 CALL                             R1 1 0
       42 DUPTABLE                         R1 K9 [{"searchAssetType", "searchKeywords", "searchId"}]
       43 GETTABLEKS                       R3 R0 K10 ["_searchOptions"]
       45 GETTABLEKS                       R2 R3 K11 ["AssetType"]
       47 SETTABLEKS                       R2 R1 K6 ["searchAssetType"]
       49 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
       51 SETTABLEKS                       R2 R1 K7 ["searchKeywords"]
       53 GETTABLEKS                       R2 R0 K12 ["_searchSessionId"]
       55 SETTABLEKS                       R2 R1 K8 ["searchId"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R2 R3 K13 ["sendSearchEvent"]
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 2
       63 CALL                             R2 0 1
       64 JUMPIFNOT                        R2 ; [+24]
       65 DUPTABLE                         R2 K17 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
       66 GETTABLEKS                       R3 R0 K0 ["_searchTerm"]
       68 SETTABLEKS                       R3 R2 K14 ["SearchTerm"]
       70 GETIMPORT                        R3 K20 [table.clone]
       72 GETTABLEKS                       R4 R0 K10 ["_searchOptions"]
       74 CALL                             R3 1 1
       75 SETTABLEKS                       R3 R2 K15 ["SearchOptions"]
       77 GETTABLEKS                       R3 R0 K12 ["_searchSessionId"]
       79 SETTABLEKS                       R3 R2 K16 ["SearchSessionId"]
       81 GETTABLEKS                       R3 R0 K21 ["_explorerController"]
       83 DUPTABLE                         R5 K23 [{"SearchState"}]
       84 SETTABLEKS                       R2 R5 K22 ["SearchState"]
       86 NAMECALL                         R3 R3 K24 ["updateCurrentHistoryItem"]
       88 CALL                             R3 2 0
       89 RETURN                           R0 0

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
       65 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       67 SETTABLEKS                       R2 R3 K1 ["ScopeInfo"]
       69 GETUPVAL                         R3 1
       70 CALL                             R3 0 1
       71 JUMPIFNOT                        R3 ; [+6]
       72 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       74 NAMECALL                         R3 R0 K13 ["setSearchOptions"]
       76 CALL                             R3 2 0
       77 RETURN                           R0 0
       78 GETTABLEKS                       R3 R0 K14 ["OnSearchOptionsChanged"]
       80 GETIMPORT                        R5 K17 [table.clone]
       82 GETTABLEKS                       R6 R0 K0 ["_searchOptions"]
       84 CALL                             R5 1 -1
       85 NAMECALL                         R3 R3 K18 ["Fire"]
       87 CALL                             R3 -1 0
       88 GETTABLEKS                       R3 R0 K19 ["_searchTerm"]
       90 JUMPIFEQKS                       R3 K20 [""] ; [+6]
       92 GETTABLEKS                       R3 R0 K21 ["OnSearchRequested"]
       94 NAMECALL                         R3 R3 K18 ["Fire"]
       96 CALL                             R3 1 0
       97 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+17]
        6 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
        8 GETTABLEKS                       R2 R3 K1 ["AssetType"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
       15 SETTABLEKS                       R1 R2 K1 ["AssetType"]
       17 GETTABLEKS                       R4 R0 K0 ["_searchOptions"]
       19 NAMECALL                         R2 R0 K2 ["setSearchOptions"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
       25 SETTABLEKS                       R1 R2 K1 ["AssetType"]
       27 GETTABLEKS                       R2 R0 K3 ["OnSearchOptionsChanged"]
       29 GETIMPORT                        R4 K6 [table.clone]
       31 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       33 CALL                             R4 1 -1
       34 NAMECALL                         R2 R2 K7 ["Fire"]
       36 CALL                             R2 -1 0
       37 GETTABLEKS                       R2 R0 K8 ["_searchTerm"]
       39 JUMPIFEQKS                       R2 K9 [""] ; [+6]
       41 GETTABLEKS                       R2 R0 K10 ["OnSearchRequested"]
       43 NAMECALL                         R2 R2 K7 ["Fire"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["_searchOptions"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETTABLEKS                       R2 R0 K1 ["OnSearchOptionsChanged"]
       10 GETIMPORT                        R4 K4 [table.clone]
       12 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R2 K5 ["Fire"]
       17 CALL                             R2 -1 0
       18 NAMECALL                         R2 R0 K6 ["requestSearch"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R0 K7 ["_searchTerm"]
       24 JUMPIFEQKS                       R2 K8 [""] ; [+16]
       26 GETTABLEKS                       R2 R0 K1 ["OnSearchOptionsChanged"]
       28 GETIMPORT                        R4 K4 [table.clone]
       30 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R2 K5 ["Fire"]
       35 CALL                             R2 -1 0
       36 GETTABLEKS                       R2 R0 K9 ["OnSearchRequested"]
       38 NAMECALL                         R2 R2 K5 ["Fire"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

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
       65 GETUPVAL                         R1 2
       66 CALL                             R1 0 1
       67 JUMPIFNOT                        R1 ; [+24]
       68 DUPTABLE                         R1 K17 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
       69 GETTABLEKS                       R2 R0 K18 ["_searchTerm"]
       71 SETTABLEKS                       R2 R1 K14 ["SearchTerm"]
       73 GETIMPORT                        R2 K21 [table.clone]
       75 GETTABLEKS                       R3 R0 K22 ["_searchOptions"]
       77 CALL                             R2 1 1
       78 SETTABLEKS                       R2 R1 K15 ["SearchOptions"]
       80 GETTABLEKS                       R2 R0 K13 ["_searchSessionId"]
       82 SETTABLEKS                       R2 R1 K16 ["SearchSessionId"]
       84 GETTABLEKS                       R2 R0 K1 ["_explorerController"]
       86 DUPTABLE                         R4 K24 [{"SearchState"}]
       87 SETTABLEKS                       R1 R4 K23 ["SearchState"]
       89 NAMECALL                         R2 R2 K25 ["addToHistory"]
       91 CALL                             R2 2 0
       92 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFEQKB                       R1 FALSE ; [+121]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        7 GETTABLEKS                       R1 R0 K1 ["OnShowSearchOptionsChanged"]
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K3 ["_pluginController"]
       15 NAMECALL                         R1 R1 K4 ["getCurrentScope"]
       17 CALL                             R1 1 1
       18 JUMPIF                           R1 ; [+10]
       19 GETUPVAL                         R2 0
       20 LOADK                            R3 K5 ["SearchController:hideSearchOptions - no current scope found, defaulting to user scope"]
       21 LOADK                            R4 K6 ["WARN"]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K3 ["_pluginController"]
       25 NAMECALL                         R2 R2 K7 ["getUser"]
       27 CALL                             R2 1 1
       28 MOVE                             R1 R2
       29 LOADK                            R4 K8 [""]
       30 NAMECALL                         R2 R0 K9 ["setSearchTerm"]
       32 CALL                             R2 2 0
       33 DUPTABLE                         R2 K12 [{"AssetType", "ScopeInfo"}]
       34 GETTABLEKS                       R4 R1 K13 ["Type"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K14 ["ScopeType"]
       39 GETTABLEKS                       R5 R6 K15 ["ProjectPlaces"]
       41 JUMPIFNOTEQ                      R4 R5 ; [+7]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K10 ["AssetType"]
       46 GETTABLEKS                       R3 R4 K16 ["Place"]
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R4 R5 K10 ["AssetType"]
       52 GETTABLEKS                       R3 R4 K17 ["Model"]
       54 SETTABLEKS                       R3 R2 K10 ["AssetType"]
       56 MOVE                             R5 R1
       57 LOADB                            R4 1
       58 GETTABLEKS                       R6 R5 K13 ["Type"]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R8 R9 K14 ["ScopeType"]
       63 GETTABLEKS                       R7 R8 K15 ["ProjectPlaces"]
       65 JUMPIFEQ                         R6 R7 ; [+12]
       67 GETTABLEKS                       R6 R5 K13 ["Type"]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K14 ["ScopeType"]
       72 GETTABLEKS                       R7 R8 K18 ["ProjectShared"]
       74 JUMPIFEQ                         R6 R7 ; [+2]
       76 LOADB                            R4 0 +1
       77 LOADB                            R4 1
       78 JUMPIFNOT                        R4 ; [+6]
       79 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       81 NAMECALL                         R3 R3 K19 ["getGameInfo"]
       83 CALL                             R3 1 1
       84 JUMP                             ; [+1]
       85 MOVE                             R3 R1
       86 SETTABLEKS                       R3 R2 K11 ["ScopeInfo"]
       88 SETTABLEKS                       R2 R0 K20 ["_searchOptions"]
       90 GETTABLEKS                       R2 R0 K21 ["OnSearchOptionsChanged"]
       92 GETIMPORT                        R4 K24 [table.clone]
       94 GETTABLEKS                       R5 R0 K20 ["_searchOptions"]
       96 CALL                             R4 1 -1
       97 NAMECALL                         R2 R2 K2 ["Fire"]
       99 CALL                             R2 -1 0
      100 GETUPVAL                         R2 2
      101 CALL                             R2 0 1
      102 JUMPIF                           R2 ; [+5]
      103 GETTABLEKS                       R2 R0 K25 ["OnSearchClosed"]
      105 NAMECALL                         R2 R2 K2 ["Fire"]
      107 CALL                             R2 1 0
      108 LOADK                            R2 K8 [""]
      109 SETTABLEKS                       R2 R0 K26 ["_searchSessionId"]
      111 GETUPVAL                         R2 3
      112 CALL                             R2 0 1
      113 JUMPIFNOT                        R2 ; [+10]
      114 GETTABLEKS                       R2 R0 K27 ["_explorerController"]
      116 DUPTABLE                         R4 K29 [{"ScopeUid"}]
      117 GETTABLEKS                       R5 R1 K30 ["Uid"]
      119 SETTABLEKS                       R5 R4 K28 ["ScopeUid"]
      121 NAMECALL                         R2 R2 K31 ["addToHistory"]
      123 CALL                             R2 2 0
      124 RETURN                           R0 0

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
       67 GETTABLEKS                       R11 R12 K19 ["getFFlagAmrSearchAndHistory"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R14 R0 K13 ["Src"]
       74 GETTABLEKS                       R13 R14 K18 ["Flags"]
       76 GETTABLEKS                       R12 R13 K20 ["getFFlagAmrOrganizationFoundation"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R15 R0 K13 ["Src"]
       83 GETTABLEKS                       R14 R15 K18 ["Flags"]
       85 GETTABLEKS                       R13 R14 K21 ["getFFlagAmrFixNetworkingEpochs"]
       87 CALL                             R12 1 1
       88 LOADK                            R15 K22 ["SearchController"]
       89 NAMECALL                         R13 R4 K23 ["extend"]
       91 CALL                             R13 2 1
       92 DUPCLOSURE                       R14 K24 [PROTO_0]
       93 CAPTURE                          VAL R8
       94 DUPCLOSURE                       R15 K25 [PROTO_4]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R15 R13 K26 ["new"]
      103 DUPCLOSURE                       R15 K27 [PROTO_5]
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R15 R13 K28 ["mock"]
      107 DUPCLOSURE                       R15 K29 [PROTO_6]
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R15 R13 K30 ["destroy"]
      111 DUPCLOSURE                       R15 K31 [PROTO_7]
      112 SETTABLEKS                       R15 R13 K32 ["_restoreSearchState"]
      114 DUPCLOSURE                       R15 K33 [PROTO_8]
      115 SETTABLEKS                       R15 R13 K34 ["getSearchTerm"]
      117 DUPCLOSURE                       R15 K35 [PROTO_9]
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R15 R13 K36 ["setSearchTerm"]
      121 DUPCLOSURE                       R15 K37 [PROTO_10]
      122 SETTABLEKS                       R15 R13 K38 ["getSourceList"]
      124 DUPCLOSURE                       R15 K39 [PROTO_11]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R10
      128 SETTABLEKS                       R15 R13 K40 ["requestSearch"]
      130 DUPCLOSURE                       R15 K41 [PROTO_12]
      131 SETTABLEKS                       R15 R13 K42 ["getSearchOptions"]
      133 DUPCLOSURE                       R15 K43 [PROTO_13]
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R10
      136 SETTABLEKS                       R15 R13 K44 ["setScope"]
      138 DUPCLOSURE                       R15 K45 [PROTO_14]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R15 R13 K46 ["setAssetTypeFilter"]
      143 DUPCLOSURE                       R15 K47 [PROTO_15]
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R15 R13 K48 ["setSearchOptions"]
      148 DUPCLOSURE                       R15 K49 [PROTO_16]
      149 SETTABLEKS                       R15 R13 K50 ["getIsDefaultSearchState"]
      151 DUPCLOSURE                       R15 K51 [PROTO_17]
      152 SETTABLEKS                       R15 R13 K52 ["getShowSearchOptions"]
      154 DUPCLOSURE                       R15 K53 [PROTO_18]
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R10
      158 SETTABLEKS                       R15 R13 K54 ["showSearchOptions"]
      160 DUPCLOSURE                       R15 K55 [PROTO_19]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R10
      165 SETTABLEKS                       R15 R13 K56 ["hideSearchOptions"]
      167 DUPCLOSURE                       R15 K57 [PROTO_20]
      168 SETTABLEKS                       R15 R13 K58 ["getSearchId"]
      170 RETURN                           R13 1
