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
       15 GETTABLEKS                       R3 R3 K3 ["Universe"]
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
        2 NAMECALL                         R1 R1 K0 ["endSearchSession"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["_restoreSearchState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isOmnisearchEnabled"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["getIsSearchRequested"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["_pluginController"]
       14 NAMECALL                         R1 R1 K3 ["getCurrentScope"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R1 K4 ["Uid"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["_searchOptions"]
       22 GETTABLEKS                       R3 R3 K6 ["ScopeInfo"]
       24 GETTABLEKS                       R3 R3 K4 ["Uid"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K5 ["_searchOptions"]
       32 SETTABLEKS                       R1 R2 K6 ["ScopeInfo"]
       34 GETUPVAL                         R2 0
       35 NAMECALL                         R2 R2 K7 ["endSearchSession"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["PluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["ExplorerController"]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K3 ["getScopeRoot"]
       10 CALL                             R3 2 1
       11 DUPTABLE                         R4 K30 [{["_isMock"], ["_networking"], ["_pluginController"], ["_explorerController"], ["_ixpController"], ["_pendingSearchTerm"] = "", ["_activeSearchTerm"] = "", ["_searchHistory"], ["_searchOptions"], ["_sourceList"], ["_isSearchInitiated"] = False, ["_isDefaultSearchState"] = True, ["_searchSessionId"] = "", ["_connections"], ["OnSearchRequested"], ["OnPendingSearchTermChanged"], ["OnActiveSearchTermChanged"], ["OnSearchOptionsChanged"], ["OnSourceListChanged"], ["OnIsSearchInitiatedChanged"], ["OnIsSearchRequestedChanged"], ["OnIsDefaultSearchStateChanged"], ["OnSearchHistoryChanged"]}]
       12 SETTABLEKS                       R1 R4 K4 ["_isMock"]
       14 GETTABLEKS                       R5 R0 K31 ["Networking"]
       16 SETTABLEKS                       R5 R4 K5 ["_networking"]
       18 GETTABLEKS                       R5 R0 K0 ["PluginController"]
       20 SETTABLEKS                       R5 R4 K6 ["_pluginController"]
       22 GETTABLEKS                       R5 R0 K2 ["ExplorerController"]
       24 SETTABLEKS                       R5 R4 K7 ["_explorerController"]
       26 GETTABLEKS                       R5 R0 K32 ["IxpController"]
       28 SETTABLEKS                       R5 R4 K8 ["_ixpController"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K12 ["_searchHistory"]
       34 DUPTABLE                         R5 K35 [{"AssetType", "ScopeInfo"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K33 ["AssetType"]
       38 GETTABLEKS                       R6 R6 K36 ["Model"]
       40 SETTABLEKS                       R6 R5 K33 ["AssetType"]
       42 MOVE                             R6 R3
       43 JUMPIF                           R6 ; [+5]
       44 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       46 NAMECALL                         R6 R6 K37 ["getUser"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K34 ["ScopeInfo"]
       51 SETTABLEKS                       R5 R4 K13 ["_searchOptions"]
       53 NEWTABLE                         R5 0 0
       55 SETTABLEKS                       R5 R4 K14 ["_sourceList"]
       57 NEWTABLE                         R5 0 0
       59 SETTABLEKS                       R5 R4 K20 ["_connections"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K38 ["new"]
       64 CALL                             R5 0 1
       65 SETTABLEKS                       R5 R4 K21 ["OnSearchRequested"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K38 ["new"]
       70 CALL                             R5 0 1
       71 SETTABLEKS                       R5 R4 K22 ["OnPendingSearchTermChanged"]
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K38 ["new"]
       76 CALL                             R5 0 1
       77 SETTABLEKS                       R5 R4 K23 ["OnActiveSearchTermChanged"]
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R5 R5 K38 ["new"]
       82 CALL                             R5 0 1
       83 SETTABLEKS                       R5 R4 K24 ["OnSearchOptionsChanged"]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K38 ["new"]
       88 CALL                             R5 0 1
       89 SETTABLEKS                       R5 R4 K25 ["OnSourceListChanged"]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K38 ["new"]
       94 CALL                             R5 0 1
       95 SETTABLEKS                       R5 R4 K26 ["OnIsSearchInitiatedChanged"]
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K38 ["new"]
      100 CALL                             R5 0 1
      101 SETTABLEKS                       R5 R4 K27 ["OnIsSearchRequestedChanged"]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K38 ["new"]
      106 CALL                             R5 0 1
      107 SETTABLEKS                       R5 R4 K28 ["OnIsDefaultSearchStateChanged"]
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R5 R5 K38 ["new"]
      112 CALL                             R5 0 1
      113 SETTABLEKS                       R5 R4 K29 ["OnSearchHistoryChanged"]
      115 GETUPVAL                         R7 2
      116 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      118 MOVE                             R6 R4
      119 GETIMPORT                        R5 K40 [setmetatable]
      121 CALL                             R5 2 0
      122 NEWCLOSURE                       R5 P0
      123 CAPTURE                          VAL R4
      124 CAPTURE                          UPVAL U3
      125 SETTABLEKS                       R5 R4 K41 ["_updateSourceList"]
      127 GETTABLEKS                       R6 R4 K20 ["_connections"]
      129 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      131 GETTABLEKS                       R7 R7 K42 ["OnExplorerItemsChanged"]
      133 NEWCLOSURE                       R9 P1
      134 CAPTURE                          VAL R4
      135 NAMECALL                         R7 R7 K43 ["Connect"]
      137 CALL                             R7 2 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R5 K46 [table.insert]
      141 CALL                             R5 -1 0
      142 GETTABLEKS                       R6 R4 K20 ["_connections"]
      144 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      146 GETTABLEKS                       R7 R7 K47 ["OnRestoreSearchState"]
      148 NEWCLOSURE                       R9 P2
      149 CAPTURE                          VAL R4
      150 NAMECALL                         R7 R7 K43 ["Connect"]
      152 CALL                             R7 2 -1
      153 FASTCALL                         TABLE_INSERT ; [+2]
      154 GETIMPORT                        R5 K46 [table.insert]
      156 CALL                             R5 -1 0
      157 GETTABLEKS                       R6 R4 K20 ["_connections"]
      159 GETTABLEKS                       R7 R4 K6 ["_pluginController"]
      161 GETTABLEKS                       R7 R7 K48 ["OnCurrentScopeChanged"]
      163 NEWCLOSURE                       R9 P3
      164 CAPTURE                          VAL R4
      165 NAMECALL                         R7 R7 K43 ["Connect"]
      167 CALL                             R7 2 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R5 K46 [table.insert]
      171 CALL                             R5 -1 0
      172 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        2 SETTABLEKS                       R2 R0 K1 ["_pendingSearchTerm"]
        4 GETIMPORT                        R3 K4 [table.clone]
        6 GETTABLEKS                       R4 R1 K5 ["SearchOptions"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R0 K6 ["_searchOptions"]
       11 GETTABLEKS                       R3 R1 K7 ["SearchSessionId"]
       13 SETTABLEKS                       R3 R0 K8 ["_searchSessionId"]
       15 GETTABLEKS                       R4 R1 K0 ["SearchTerm"]
       17 JUMPIFEQKS                       R4 K9 [""] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R0 K10 ["_isDefaultSearchState"]
       23 GETTABLEKS                       R3 R0 K11 ["_isSearchInitiated"]
       25 JUMPIF                           R3 ; [+9]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R0 K11 ["_isSearchInitiated"]
       29 GETTABLEKS                       R3 R0 K12 ["OnIsSearchInitiatedChanged"]
       31 LOADB                            R5 1
       32 NAMECALL                         R3 R3 K13 ["Fire"]
       34 CALL                             R3 2 0
       35 GETTABLEKS                       R3 R0 K14 ["OnPendingSearchTermChanged"]
       37 GETTABLEKS                       R5 R0 K1 ["_pendingSearchTerm"]
       39 NAMECALL                         R3 R3 K13 ["Fire"]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R0 K15 ["OnSearchOptionsChanged"]
       44 GETTABLEKS                       R5 R0 K6 ["_searchOptions"]
       46 NAMECALL                         R3 R3 K13 ["Fire"]
       48 CALL                             R3 2 0
       49 MOVE                             R5 R2
       50 NAMECALL                         R3 R0 K16 ["_setActiveSearchTerm"]
       52 CALL                             R3 2 0
       53 NAMECALL                         R3 R0 K17 ["_isOmnisearchEnabled"]
       55 CALL                             R3 1 1
       56 JUMPIF                           R3 ; [+7]
       57 GETTABLEKS                       R3 R0 K18 ["OnIsDefaultSearchStateChanged"]
       59 GETTABLEKS                       R5 R0 K10 ["_isDefaultSearchState"]
       61 NAMECALL                         R3 R3 K13 ["Fire"]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R3 R0 K10 ["_isDefaultSearchState"]
       66 JUMPIF                           R3 ; [+5]
       67 GETTABLEKS                       R3 R0 K19 ["OnSearchRequested"]
       69 NAMECALL                         R3 R3 K13 ["Fire"]
       71 CALL                             R3 1 0
       72 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 RETURN                           R1 1

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 GETTABLEKS                       R2 R0 K1 ["OnPendingSearchTermChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_pendingSearchTerm"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_activeSearchTerm"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_activeSearchTerm"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R0 K1 ["getIsSearchRequested"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R0 K0 ["_activeSearchTerm"]
       10 GETTABLEKS                       R3 R0 K2 ["OnActiveSearchTermChanged"]
       12 GETTABLEKS                       R5 R0 K0 ["_activeSearchTerm"]
       14 NAMECALL                         R3 R3 K3 ["Fire"]
       16 CALL                             R3 2 0
       17 NAMECALL                         R3 R0 K1 ["getIsSearchRequested"]
       19 CALL                             R3 1 1
       20 NAMECALL                         R4 R0 K4 ["_isOmnisearchEnabled"]
       22 CALL                             R4 1 1
       23 JUMPIFNOT                        R4 ; [+8]
       24 JUMPIFEQ                         R2 R3 ; [+7]
       26 GETTABLEKS                       R4 R0 K5 ["OnIsSearchRequestedChanged"]
       28 MOVE                             R6 R3
       29 NAMECALL                         R4 R4 K3 ["Fire"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+27]
        4 NAMECALL                         R1 R0 K2 ["_isOmnisearchEnabled"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R1 R0 K3 ["endSearchSession"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K4 ["_isDefaultSearchState"]
       14 JUMPIF                           R1 ; [+10]
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K4 ["_isDefaultSearchState"]
       18 GETTABLEKS                       R1 R0 K5 ["OnIsDefaultSearchStateChanged"]
       20 GETTABLEKS                       R3 R0 K4 ["_isDefaultSearchState"]
       22 NAMECALL                         R1 R1 K6 ["Fire"]
       24 CALL                             R1 2 0
       25 LOADK                            R3 K1 [""]
       26 NAMECALL                         R1 R0 K7 ["_setActiveSearchTerm"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0
       30 NAMECALL                         R1 R0 K2 ["_isOmnisearchEnabled"]
       32 CALL                             R1 1 1
       33 JUMPIFNOT                        R1 ; [+38]
       34 NAMECALL                         R1 R0 K8 ["_getSearchScopeForRequest"]
       36 CALL                             R1 1 1
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R0 K9 ["canSearchInScope"]
       40 CALL                             R2 2 1
       41 JUMPIF                           R2 ; [+1]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R2 R0 K10 ["_searchSessionId"]
       45 JUMPIFNOTEQKS                    R2 K1 [""] ; [+39]
       47 GETTABLEKS                       R2 R0 K11 ["_searchOptions"]
       49 SETTABLEKS                       R1 R2 K12 ["ScopeInfo"]
       51 GETTABLEKS                       R2 R0 K13 ["_pluginController"]
       53 NAMECALL                         R2 R2 K14 ["getCurrentScope"]
       55 CALL                             R2 1 1
       56 GETTABLEKS                       R3 R2 K15 ["Uid"]
       58 GETTABLEKS                       R4 R1 K15 ["Uid"]
       60 JUMPIFEQ                         R3 R4 ; [+7]
       62 GETTABLEKS                       R3 R0 K13 ["_pluginController"]
       64 MOVE                             R5 R1
       65 NAMECALL                         R3 R3 K16 ["setCurrentScope"]
       67 CALL                             R3 2 0
       68 NAMECALL                         R3 R0 K17 ["_startSearchSession"]
       70 CALL                             R3 1 0
       71 JUMP                             ; [+13]
       72 GETTABLEKS                       R1 R0 K4 ["_isDefaultSearchState"]
       74 JUMPIFNOT                        R1 ; [+10]
       75 LOADB                            R1 0
       76 SETTABLEKS                       R1 R0 K4 ["_isDefaultSearchState"]
       78 GETTABLEKS                       R1 R0 K5 ["OnIsDefaultSearchStateChanged"]
       80 GETTABLEKS                       R3 R0 K4 ["_isDefaultSearchState"]
       82 NAMECALL                         R1 R1 K6 ["Fire"]
       84 CALL                             R1 2 0
       85 GETTABLEKS                       R3 R0 K0 ["_pendingSearchTerm"]
       87 NAMECALL                         R1 R0 K7 ["_setActiveSearchTerm"]
       89 CALL                             R1 2 0
       90 GETTABLEKS                       R1 R0 K18 ["OnSearchRequested"]
       92 NAMECALL                         R1 R1 K6 ["Fire"]
       94 CALL                             R1 1 0
       95 NAMECALL                         R1 R0 K2 ["_isOmnisearchEnabled"]
       97 CALL                             R1 1 1
       98 JUMPIFNOT                        R1 ; [+12]
       99 GETTABLEKS                       R1 R0 K19 ["_explorerController"]
      101 DUPTABLE                         R3 K21 [{"SearchState"}]
      102 NAMECALL                         R4 R0 K22 ["_getSearchState"]
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K20 ["SearchState"]
      107 NAMECALL                         R1 R1 K23 ["addToHistory"]
      109 CALL                             R1 2 0
      110 JUMP                             ; [+11]
      111 GETTABLEKS                       R1 R0 K19 ["_explorerController"]
      113 DUPTABLE                         R3 K21 [{"SearchState"}]
      114 NAMECALL                         R4 R0 K22 ["_getSearchState"]
      116 CALL                             R4 1 1
      117 SETTABLEKS                       R4 R3 K20 ["SearchState"]
      119 NAMECALL                         R1 R1 K24 ["updateCurrentHistoryItem"]
      121 CALL                             R1 2 0
      122 NAMECALL                         R1 R0 K25 ["_pushSearchHistoryItem"]
      124 CALL                             R1 1 0
      125 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_searchOptions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getScopeRoot"]
        5 CALL                             R3 2 1
        6 OR                               R2 R3 R1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R6 R2 K2 ["Type"]
       10 GETTABLE                         R4 R5 R6
       11 JUMPIFEQKB                       R4 TRUE ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getScopeRoot"]
        5 CALL                             R3 2 1
        6 OR                               R2 R3 R1
        7 GETTABLEKS                       R3 R2 K2 ["Type"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["ScopeType"]
       12 GETTABLEKS                       R4 R4 K4 ["ProjectPlaces"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADB                            R3 1
       17 RETURN                           R3 1
       18 GETTABLEKS                       R4 R0 K0 ["_explorerController"]
       20 MOVE                             R6 R2
       21 NAMECALL                         R4 R4 K5 ["getFolderReadinessStatus"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["InventoryFolderStatus"]
       27 GETTABLEKS                       R5 R5 K7 ["FoldersReady"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_20:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["rootScopeTypeIsSearchable"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["rootScopeIsBackfilledForSearch"]
        8 CALL                             R2 2 1
        9 RETURN                           R2 1

PROTO_21:
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
       45 NAMECALL                         R3 R0 K11 ["_isOmnisearchEnabled"]
       47 CALL                             R3 1 1
       48 JUMPIFNOT                        R3 ; [+21]
       49 NAMECALL                         R3 R0 K12 ["getIsSearchRequested"]
       51 CALL                             R3 1 1
       52 JUMPIFNOT                        R3 ; [+17]
       53 GETTABLEKS                       R3 R0 K13 ["_pluginController"]
       55 NAMECALL                         R3 R3 K14 ["getCurrentScope"]
       57 CALL                             R3 1 1
       58 GETTABLEKS                       R4 R3 K2 ["Uid"]
       60 GETTABLEKS                       R5 R2 K2 ["Uid"]
       62 JUMPIFEQ                         R4 R5 ; [+7]
       64 GETTABLEKS                       R4 R0 K13 ["_pluginController"]
       66 MOVE                             R6 R2
       67 NAMECALL                         R4 R4 K15 ["setCurrentScope"]
       69 CALL                             R4 2 0
       70 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       72 NAMECALL                         R3 R0 K16 ["setSearchOptions"]
       74 CALL                             R3 2 0
       75 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R2 R1
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R0 K0 ["rootScopeTypeIsSearchable"]
        4 CALL                             R3 2 1
        5 JUMPIF                           R3 ; [+7]
        6 GETTABLEKS                       R3 R0 K1 ["_pluginController"]
        8 NAMECALL                         R3 R3 K2 ["getUser"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 RETURN                           R2 1
       13 LOADB                            R3 1
       14 GETTABLEKS                       R4 R1 K3 ["Type"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["ScopeType"]
       19 GETTABLEKS                       R5 R5 K5 ["ProjectPlaces"]
       21 JUMPIFEQ                         R4 R5 ; [+12]
       23 GETTABLEKS                       R4 R1 K3 ["Type"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["ScopeType"]
       28 GETTABLEKS                       R5 R5 K6 ["Universe"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R3 ; [+6]
       35 GETTABLEKS                       R3 R0 K1 ["_pluginController"]
       37 NAMECALL                         R3 R3 K7 ["getGameInfo"]
       39 CALL                             R3 1 1
       40 MOVE                             R2 R3
       41 RETURN                           R2 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_searchSessionId"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        4 GETTABLEKS                       R1 R0 K2 ["_searchOptions"]
        6 GETTABLEKS                       R1 R1 K3 ["ScopeInfo"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K4 ["_explorerController"]
       11 GETTABLEKS                       R3 R0 K5 ["_pluginController"]
       13 NAMECALL                         R3 R3 K6 ["getCurrentScope"]
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K7 ["getScopeRoot"]
       18 CALL                             R1 -1 1
       19 JUMPIF                           R1 ; [+5]
       20 GETTABLEKS                       R1 R0 K5 ["_pluginController"]
       22 NAMECALL                         R1 R1 K8 ["getUser"]
       24 CALL                             R1 1 1
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R0 K9 ["rootScopeTypeIsSearchable"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 MOVE                             R2 R1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K5 ["_pluginController"]
       34 NAMECALL                         R2 R2 K8 ["getUser"]
       36 CALL                             R2 1 1
       37 RETURN                           R2 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_isDefaultSearchState"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_isSearchInitiated"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_activeSearchTerm"]
        2 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["_searchSessionId"]
        6 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_isSearchInitiated"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+2]
        4 RETURN                           R0 0
        5 NAMECALL                         R1 R0 K1 ["_isOmnisearchEnabled"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+21]
        9 GETTABLEKS                       R1 R0 K2 ["_explorerController"]
       11 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       13 NAMECALL                         R3 R3 K4 ["getCurrentScope"]
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K5 ["getScopeRoot"]
       18 CALL                             R1 -1 1
       19 JUMPIF                           R1 ; [+5]
       20 GETTABLEKS                       R1 R0 K3 ["_pluginController"]
       22 NAMECALL                         R1 R1 K6 ["getUser"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R4 R1 K7 ["Uid"]
       27 NAMECALL                         R2 R0 K8 ["setScope"]
       29 CALL                             R2 2 0
       30 LOADB                            R1 1
       31 SETTABLEKS                       R1 R0 K0 ["_isSearchInitiated"]
       33 LOADB                            R1 1
       34 SETTABLEKS                       R1 R0 K9 ["_isDefaultSearchState"]
       36 NAMECALL                         R1 R0 K1 ["_isOmnisearchEnabled"]
       38 CALL                             R1 1 1
       39 JUMPIF                           R1 ; [+7]
       40 GETTABLEKS                       R1 R0 K10 ["OnIsDefaultSearchStateChanged"]
       42 GETTABLEKS                       R3 R0 K9 ["_isDefaultSearchState"]
       44 NAMECALL                         R1 R1 K11 ["Fire"]
       46 CALL                             R1 2 0
       47 GETTABLEKS                       R1 R0 K12 ["OnIsSearchInitiatedChanged"]
       49 LOADB                            R3 1
       50 NAMECALL                         R1 R1 K11 ["Fire"]
       52 CALL                             R1 2 0
       53 NAMECALL                         R1 R0 K1 ["_isOmnisearchEnabled"]
       55 CALL                             R1 1 1
       56 JUMPIF                           R1 ; [+14]
       57 NAMECALL                         R1 R0 K13 ["_startSearchSession"]
       59 CALL                             R1 1 0
       60 GETTABLEKS                       R1 R0 K2 ["_explorerController"]
       62 DUPTABLE                         R3 K15 [{"SearchState"}]
       63 NAMECALL                         R4 R0 K16 ["_getSearchState"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K14 ["SearchState"]
       68 NAMECALL                         R1 R1 K17 ["addToHistory"]
       70 CALL                             R1 2 0
       71 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_isSearchInitiated"]
        2 JUMPIFEQKB                       R1 FALSE ; [+109]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_isSearchInitiated"]
        7 GETTABLEKS                       R1 R0 K1 ["OnIsSearchInitiatedChanged"]
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 NAMECALL                         R1 R0 K3 ["_isOmnisearchEnabled"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+26]
       17 NAMECALL                         R1 R0 K4 ["getIsSearchRequested"]
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+22]
       21 GETTABLEKS                       R1 R0 K5 ["_searchOptions"]
       23 GETTABLEKS                       R1 R1 K6 ["ScopeInfo"]
       25 JUMPIFNOT                        R1 ; [+17]
       26 GETTABLEKS                       R2 R0 K7 ["_pluginController"]
       28 NAMECALL                         R2 R2 K8 ["getCurrentScope"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R2 R2 K9 ["Uid"]
       33 GETTABLEKS                       R3 R1 K9 ["Uid"]
       35 JUMPIFEQ                         R2 R3 ; [+7]
       37 GETTABLEKS                       R2 R0 K7 ["_pluginController"]
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K10 ["setCurrentScope"]
       42 CALL                             R2 2 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K11 ["AssetType"]
       46 GETTABLEKS                       R1 R1 K12 ["Model"]
       48 GETTABLEKS                       R2 R0 K7 ["_pluginController"]
       50 NAMECALL                         R2 R2 K8 ["getCurrentScope"]
       52 CALL                             R2 1 1
       53 JUMPIF                           R2 ; [+11]
       54 GETUPVAL                         R3 1
       55 LOADK                            R4 K13 ["SearchController:endSearchSession - no current scope found, defaulting to user scope"]
       56 LOADK                            R5 K14 ["WARN"]
       57 CALL                             R3 2 0
       58 GETTABLEKS                       R3 R0 K7 ["_pluginController"]
       60 NAMECALL                         R3 R3 K15 ["getUser"]
       62 CALL                             R3 1 1
       63 MOVE                             R2 R3
       64 JUMP                             ; [+19]
       65 GETTABLEKS                       R3 R2 K16 ["Type"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K17 ["ScopeType"]
       70 GETTABLEKS                       R4 R4 K18 ["ProjectPlaces"]
       72 JUMPIFNOTEQ                      R3 R4 ; [+6]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K11 ["AssetType"]
       77 GETTABLEKS                       R1 R3 K19 ["Place"]
       79 MOVE                             R5 R2
       80 NAMECALL                         R3 R0 K20 ["_getValidScope"]
       82 CALL                             R3 2 1
       83 MOVE                             R2 R3
       84 LOADK                            R5 K21 [""]
       85 NAMECALL                         R3 R0 K22 ["setPendingSearchTerm"]
       87 CALL                             R3 2 0
       88 LOADK                            R5 K21 [""]
       89 NAMECALL                         R3 R0 K23 ["_setActiveSearchTerm"]
       91 CALL                             R3 2 0
       92 DUPTABLE                         R3 K24 [{"AssetType", "ScopeInfo"}]
       93 SETTABLEKS                       R1 R3 K11 ["AssetType"]
       95 SETTABLEKS                       R2 R3 K6 ["ScopeInfo"]
       97 SETTABLEKS                       R3 R0 K5 ["_searchOptions"]
       99 GETTABLEKS                       R3 R0 K25 ["OnSearchOptionsChanged"]
      101 GETIMPORT                        R5 K28 [table.clone]
      103 GETTABLEKS                       R6 R0 K5 ["_searchOptions"]
      105 CALL                             R5 1 -1
      106 NAMECALL                         R3 R3 K2 ["Fire"]
      108 CALL                             R3 -1 0
      109 LOADK                            R3 K21 [""]
      110 SETTABLEKS                       R3 R0 K29 ["_searchSessionId"]
      112 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_searchSessionId"]
        2 RETURN                           R1 1

PROTO_33:
        0 DUPTABLE                         R1 K3 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
        1 GETTABLEKS                       R2 R0 K4 ["_activeSearchTerm"]
        3 SETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        5 GETIMPORT                        R2 K7 [table.clone]
        7 GETTABLEKS                       R3 R0 K8 ["_searchOptions"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["SearchOptions"]
       12 GETTABLEKS                       R2 R0 K9 ["_searchSessionId"]
       14 SETTABLEKS                       R2 R1 K2 ["SearchSessionId"]
       16 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETTABLEKS                       R2 R0 K0 ["SearchTerm"]
        4 GETUPVAL                         R3 1
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K1 ["SearchOptions"]
       13 JUMPIFEQKNIL                     R2 ; [+16]
       15 LOADB                            R1 0
       16 GETTABLEKS                       R2 R0 K1 ["SearchOptions"]
       18 GETTABLEKS                       R2 R2 K2 ["AssetType"]
       20 GETUPVAL                         R3 2
       21 JUMPIFNOTEQ                      R2 R3 ; [+8]
       23 GETTABLEKS                       R2 R0 K0 ["SearchTerm"]
       25 GETUPVAL                         R3 1
       26 JUMPIFEQ                         R2 R3 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_activeSearchTerm"]
        2 LOADK                            R5 K1 ["^%s*(.-)%s*$"]
        3 NAMECALL                         R3 R1 K2 ["match"]
        5 CALL                             R3 2 1
        6 LENGTH                           R2 R3
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K4 ["_searchOptions"]
       12 GETTABLEKS                       R2 R2 K5 ["AssetType"]
       14 NAMECALL                         R3 R0 K6 ["_isOmnisearchEnabled"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["findIndex"]
       20 GETTABLEKS                       R5 R0 K8 ["_searchHistory"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CALL                             R4 2 1
       27 JUMPIFEQKNIL                     R4 ; [+7]
       29 GETIMPORT                        R5 K11 [table.remove]
       31 GETTABLEKS                       R6 R0 K8 ["_searchHistory"]
       33 MOVE                             R7 R4
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R6 R0 K8 ["_searchHistory"]
       37 LOADN                            R7 1
       38 DUPTABLE                         R8 K14 [{"SearchTerm", "SearchOptions"}]
       39 SETTABLEKS                       R1 R8 K12 ["SearchTerm"]
       41 JUMPIFNOT                        R3 ; [+2]
       42 LOADNIL                          R9
       43 JUMP                             ; [+5]
       44 GETIMPORT                        R9 K16 [table.clone]
       46 GETTABLEKS                       R10 R0 K4 ["_searchOptions"]
       48 CALL                             R9 1 1
       49 SETTABLEKS                       R9 R8 K13 ["SearchOptions"]
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R5 K18 [table.insert]
       54 CALL                             R5 3 0
       55 GETTABLEKS                       R6 R0 K8 ["_searchHistory"]
       57 LENGTH                           R5 R6
       58 LOADN                            R6 5
       59 JUMPIFNOTLT                      R6 R5 ; [+9]
       61 GETIMPORT                        R5 K11 [table.remove]
       63 GETTABLEKS                       R6 R0 K8 ["_searchHistory"]
       65 GETTABLEKS                       R8 R0 K8 ["_searchHistory"]
       67 LENGTH                           R7 R8
       68 CALL                             R5 2 0
       69 GETIMPORT                        R5 K16 [table.clone]
       71 GETTABLEKS                       R6 R0 K8 ["_searchHistory"]
       73 CALL                             R5 1 1
       74 SETTABLEKS                       R5 R0 K8 ["_searchHistory"]
       76 GETTABLEKS                       R5 R0 K19 ["OnSearchHistoryChanged"]
       78 GETTABLEKS                       R7 R0 K8 ["_searchHistory"]
       80 NAMECALL                         R5 R5 K20 ["Fire"]
       82 CALL                             R5 2 0
       83 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["_searchHistory"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["ContextItem"]
       31 GETTABLEKS                       R6 R2 K15 ["Util"]
       33 GETTABLEKS                       R6 R6 K16 ["Signal"]
       35 GETIMPORT                        R7 K9 [require]
       37 GETTABLEKS                       R8 R1 K17 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Util"]
       41 GETTABLEKS                       R8 R8 K18 ["cleanConnections"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R1 K17 ["Src"]
       48 GETTABLEKS                       R9 R9 K19 ["Types"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K9 [require]
       53 GETTABLEKS                       R10 R1 K17 ["Src"]
       55 GETTABLEKS                       R10 R10 K15 ["Util"]
       57 GETTABLEKS                       R10 R10 K20 ["logIfDebug"]
       59 CALL                             R9 1 1
       60 LOADK                            R12 K21 ["SearchController"]
       61 NAMECALL                         R10 R5 K22 ["extend"]
       63 CALL                             R10 2 1
       64 NEWTABLE                         R11 4 0
       66 GETTABLEKS                       R12 R8 K23 ["ScopeType"]
       68 GETTABLEKS                       R12 R12 K24 ["User"]
       70 LOADB                            R13 1
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R8 K23 ["ScopeType"]
       74 GETTABLEKS                       R12 R12 K25 ["Group"]
       76 LOADB                            R13 1
       77 SETTABLE                         R13 R11 R12
       78 GETTABLEKS                       R12 R8 K23 ["ScopeType"]
       80 GETTABLEKS                       R12 R12 K26 ["Universe"]
       82 LOADB                            R13 1
       83 SETTABLE                         R13 R11 R12
       84 GETTABLEKS                       R12 R8 K23 ["ScopeType"]
       86 GETTABLEKS                       R12 R12 K27 ["ProjectPlaces"]
       88 LOADB                            R13 1
       89 SETTABLE                         R13 R11 R12
       90 DUPCLOSURE                       R12 K28 [PROTO_0]
       91 CAPTURE                          VAL R8
       92 DUPCLOSURE                       R13 K29 [PROTO_6]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R13 R10 K30 ["new"]
       99 DUPCLOSURE                       R13 K31 [PROTO_7]
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R13 R10 K32 ["mock"]
      103 DUPCLOSURE                       R13 K33 [PROTO_8]
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R13 R10 K34 ["destroy"]
      107 DUPCLOSURE                       R13 K35 [PROTO_9]
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R13 R10 K36 ["_isOmnisearchEnabled"]
      111 DUPCLOSURE                       R13 K37 [PROTO_10]
      112 SETTABLEKS                       R13 R10 K38 ["_restoreSearchState"]
      114 DUPCLOSURE                       R13 K39 [PROTO_11]
      115 SETTABLEKS                       R13 R10 K40 ["getPendingSearchTerm"]
      117 DUPCLOSURE                       R13 K41 [PROTO_12]
      118 SETTABLEKS                       R13 R10 K42 ["setPendingSearchTerm"]
      120 DUPCLOSURE                       R13 K43 [PROTO_13]
      121 SETTABLEKS                       R13 R10 K44 ["getActiveSearchTerm"]
      123 DUPCLOSURE                       R13 K45 [PROTO_14]
      124 SETTABLEKS                       R13 R10 K46 ["_setActiveSearchTerm"]
      126 DUPCLOSURE                       R13 K47 [PROTO_15]
      127 SETTABLEKS                       R13 R10 K48 ["getSourceList"]
      129 DUPCLOSURE                       R13 K49 [PROTO_16]
      130 SETTABLEKS                       R13 R10 K50 ["requestSearch"]
      132 DUPCLOSURE                       R13 K51 [PROTO_17]
      133 SETTABLEKS                       R13 R10 K52 ["getSearchOptions"]
      135 DUPCLOSURE                       R13 K53 [PROTO_18]
      136 CAPTURE                          VAL R11
      137 SETTABLEKS                       R13 R10 K54 ["rootScopeTypeIsSearchable"]
      139 DUPCLOSURE                       R13 K55 [PROTO_19]
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R13 R10 K56 ["rootScopeIsBackfilledForSearch"]
      143 DUPCLOSURE                       R13 K57 [PROTO_20]
      144 SETTABLEKS                       R13 R10 K58 ["canSearchInScope"]
      146 DUPCLOSURE                       R13 K59 [PROTO_21]
      147 CAPTURE                          VAL R8
      148 SETTABLEKS                       R13 R10 K60 ["setScope"]
      150 DUPCLOSURE                       R13 K61 [PROTO_22]
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R13 R10 K62 ["_getValidScope"]
      154 DUPCLOSURE                       R13 K63 [PROTO_23]
      155 SETTABLEKS                       R13 R10 K64 ["_getSearchScopeForRequest"]
      157 DUPCLOSURE                       R13 K65 [PROTO_24]
      158 SETTABLEKS                       R13 R10 K66 ["setAssetTypeFilter"]
      160 DUPCLOSURE                       R13 K67 [PROTO_25]
      161 SETTABLEKS                       R13 R10 K68 ["setSearchOptions"]
      163 DUPCLOSURE                       R13 K69 [PROTO_26]
      164 SETTABLEKS                       R13 R10 K70 ["getIsDefaultSearchState"]
      166 DUPCLOSURE                       R13 K71 [PROTO_27]
      167 SETTABLEKS                       R13 R10 K72 ["getIsSearchInitiated"]
      169 DUPCLOSURE                       R13 K73 [PROTO_28]
      170 SETTABLEKS                       R13 R10 K74 ["getIsSearchRequested"]
      172 DUPCLOSURE                       R13 K75 [PROTO_29]
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R13 R10 K76 ["_startSearchSession"]
      176 DUPCLOSURE                       R13 K77 [PROTO_30]
      177 SETTABLEKS                       R13 R10 K78 ["initiateSearch"]
      179 DUPCLOSURE                       R13 K79 [PROTO_31]
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R9
      182 SETTABLEKS                       R13 R10 K80 ["endSearchSession"]
      184 DUPCLOSURE                       R13 K81 [PROTO_32]
      185 SETTABLEKS                       R13 R10 K82 ["getSearchId"]
      187 DUPCLOSURE                       R13 K83 [PROTO_33]
      188 SETTABLEKS                       R13 R10 K84 ["_getSearchState"]
      190 DUPCLOSURE                       R13 K85 [PROTO_35]
      191 CAPTURE                          VAL R3
      192 SETTABLEKS                       R13 R10 K86 ["_pushSearchHistoryItem"]
      194 DUPCLOSURE                       R13 K87 [PROTO_36]
      195 SETTABLEKS                       R13 R10 K88 ["getSearchHistory"]
      197 RETURN                           R10 1
