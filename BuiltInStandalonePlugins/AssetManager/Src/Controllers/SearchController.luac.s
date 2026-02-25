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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Uid"]
        3 NAMECALL                         R1 R1 K1 ["setScope"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K18 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged", "OnSearchClosed"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K19 ["Networking"]
        5 SETTABLEKS                       R3 R2 K1 ["_networking"]
        7 GETTABLEKS                       R3 R0 K20 ["PluginController"]
        9 SETTABLEKS                       R3 R2 K2 ["_pluginController"]
       11 GETTABLEKS                       R3 R0 K21 ["ExplorerController"]
       13 SETTABLEKS                       R3 R2 K3 ["_explorerController"]
       15 LOADK                            R3 K22 [""]
       16 SETTABLEKS                       R3 R2 K4 ["_searchTerm"]
       18 DUPTABLE                         R3 K25 [{"AssetType", "ScopeInfo"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K23 ["AssetType"]
       22 GETTABLEKS                       R4 R5 K26 ["Model"]
       24 SETTABLEKS                       R4 R3 K23 ["AssetType"]
       26 GETTABLEKS                       R4 R0 K20 ["PluginController"]
       28 NAMECALL                         R4 R4 K27 ["getCurrentScope"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K24 ["ScopeInfo"]
       33 SETTABLEKS                       R3 R2 K5 ["_searchOptions"]
       35 NEWTABLE                         R3 0 0
       37 SETTABLEKS                       R3 R2 K6 ["_sourceList"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K7 ["_showSearchOptions"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K8 ["_isDefaultSearchState"]
       45 LOADK                            R3 K22 [""]
       46 SETTABLEKS                       R3 R2 K9 ["_searchSessionId"]
       48 NEWTABLE                         R3 0 0
       50 SETTABLEKS                       R3 R2 K10 ["_connections"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K28 ["new"]
       55 CALL                             R3 0 1
       56 SETTABLEKS                       R3 R2 K11 ["OnSearchRequested"]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R3 R4 K28 ["new"]
       61 CALL                             R3 0 1
       62 SETTABLEKS                       R3 R2 K12 ["OnSearchTermChanged"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R3 R4 K28 ["new"]
       67 CALL                             R3 0 1
       68 SETTABLEKS                       R3 R2 K13 ["OnSearchOptionsChanged"]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R3 R4 K28 ["new"]
       73 CALL                             R3 0 1
       74 SETTABLEKS                       R3 R2 K14 ["OnSourceListChanged"]
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R3 R4 K28 ["new"]
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K15 ["OnShowSearchOptionsChanged"]
       82 GETUPVAL                         R4 1
       83 GETTABLEKS                       R3 R4 K28 ["new"]
       85 CALL                             R3 0 1
       86 SETTABLEKS                       R3 R2 K16 ["OnIsDefaultSearchStateChanged"]
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R3 R4 K28 ["new"]
       91 CALL                             R3 0 1
       92 SETTABLEKS                       R3 R2 K17 ["OnSearchClosed"]
       94 GETUPVAL                         R5 2
       95 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       97 MOVE                             R4 R2
       98 GETIMPORT                        R3 K30 [setmetatable]
      100 CALL                             R3 2 0
      101 NEWCLOSURE                       R3 P0
      102 CAPTURE                          VAL R2
      103 CAPTURE                          UPVAL U3
      104 SETTABLEKS                       R3 R2 K31 ["_updateSourceList"]
      106 GETTABLEKS                       R4 R2 K10 ["_connections"]
      108 GETTABLEKS                       R6 R2 K3 ["_explorerController"]
      110 GETTABLEKS                       R5 R6 K32 ["OnExplorerItemsChanged"]
      112 NEWCLOSURE                       R7 P1
      113 CAPTURE                          VAL R2
      114 NAMECALL                         R5 R5 K33 ["Connect"]
      116 CALL                             R5 2 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R3 K36 [table.insert]
      120 CALL                             R3 -1 0
      121 GETUPVAL                         R3 4
      122 CALL                             R3 0 1
      123 JUMPIF                           R3 ; [+15]
      124 GETTABLEKS                       R4 R2 K10 ["_connections"]
      126 GETTABLEKS                       R6 R2 K2 ["_pluginController"]
      128 GETTABLEKS                       R5 R6 K37 ["OnCurrentScopeChanged"]
      130 NEWCLOSURE                       R7 P2
      131 CAPTURE                          VAL R2
      132 NAMECALL                         R5 R5 K33 ["Connect"]
      134 CALL                             R5 2 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R3 K36 [table.insert]
      138 CALL                             R3 -1 0
      139 RETURN                           R2 1

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
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 RETURN                           R1 1

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
        4 JUMPIFNOTEQKS                    R2 K1 [""] ; [+11]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R0 K2 ["_isDefaultSearchState"]
        9 GETTABLEKS                       R2 R0 K3 ["OnIsDefaultSearchStateChanged"]
       11 GETTABLEKS                       R4 R0 K2 ["_isDefaultSearchState"]
       13 NAMECALL                         R2 R2 K4 ["Fire"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K5 ["OnSearchTermChanged"]
       18 GETTABLEKS                       R4 R0 K0 ["_searchTerm"]
       20 NAMECALL                         R2 R2 K4 ["Fire"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_searchTerm"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        4 RETURN                           R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
        8 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       10 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["OnSearchRequested"]
       17 NAMECALL                         R1 R1 K4 ["Fire"]
       19 CALL                             R1 1 0
       20 DUPTABLE                         R1 K9 [{"searchAssetType", "searchKeywords", "searchId"}]
       21 GETTABLEKS                       R3 R0 K10 ["_searchOptions"]
       23 GETTABLEKS                       R2 R3 K11 ["AssetType"]
       25 SETTABLEKS                       R2 R1 K6 ["searchAssetType"]
       27 GETTABLEKS                       R2 R0 K0 ["_searchTerm"]
       29 SETTABLEKS                       R2 R1 K7 ["searchKeywords"]
       31 GETTABLEKS                       R2 R0 K12 ["_searchSessionId"]
       33 SETTABLEKS                       R2 R1 K8 ["searchId"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K13 ["sendSearchEvent"]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_searchOptions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_12:
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
       69 GETTABLEKS                       R3 R0 K13 ["OnSearchOptionsChanged"]
       71 GETIMPORT                        R5 K16 [table.clone]
       73 GETTABLEKS                       R6 R0 K0 ["_searchOptions"]
       75 CALL                             R5 1 -1
       76 NAMECALL                         R3 R3 K17 ["Fire"]
       78 CALL                             R3 -1 0
       79 GETTABLEKS                       R3 R0 K18 ["_searchTerm"]
       81 JUMPIFEQKS                       R3 K19 [""] ; [+6]
       83 GETTABLEKS                       R3 R0 K20 ["OnSearchRequested"]
       85 NAMECALL                         R3 R3 K17 ["Fire"]
       87 CALL                             R3 1 0
       88 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        2 SETTABLEKS                       R1 R2 K1 ["AssetType"]
        4 GETTABLEKS                       R2 R0 K2 ["OnSearchOptionsChanged"]
        6 GETIMPORT                        R4 K5 [table.clone]
        8 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R2 K6 ["Fire"]
       13 CALL                             R2 -1 0
       14 GETTABLEKS                       R2 R0 K7 ["_searchTerm"]
       16 JUMPIFEQKS                       R2 K8 [""] ; [+6]
       18 GETTABLEKS                       R2 R0 K9 ["OnSearchRequested"]
       20 NAMECALL                         R2 R2 K6 ["Fire"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R0 K1 ["_searchTerm"]
        4 JUMPIFEQKS                       R2 K2 [""] ; [+16]
        6 GETTABLEKS                       R2 R0 K3 ["OnSearchOptionsChanged"]
        8 GETIMPORT                        R4 K6 [table.clone]
       10 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K7 ["Fire"]
       15 CALL                             R2 -1 0
       16 GETTABLEKS                       R2 R0 K8 ["OnSearchRequested"]
       18 NAMECALL                         R2 R2 K7 ["Fire"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_isDefaultSearchState"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETTABLEKS                       R4 R0 K1 ["_pluginController"]
       10 NAMECALL                         R4 R4 K2 ["getCurrentScope"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R3 R4 K3 ["Uid"]
       15 NAMECALL                         R1 R0 K4 ["setScope"]
       17 CALL                             R1 2 0
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K5 ["_isDefaultSearchState"]
       24 GETTABLEKS                       R1 R0 K6 ["OnIsDefaultSearchStateChanged"]
       26 GETTABLEKS                       R3 R0 K5 ["_isDefaultSearchState"]
       28 NAMECALL                         R1 R1 K7 ["Fire"]
       30 CALL                             R1 2 0
       31 GETTABLEKS                       R1 R0 K8 ["OnShowSearchOptionsChanged"]
       33 LOADB                            R3 1
       34 NAMECALL                         R1 R1 K7 ["Fire"]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R1 R2 K9 ["createSearchSessionId"]
       40 CALL                             R1 0 1
       41 SETTABLEKS                       R1 R0 K10 ["_searchSessionId"]
       43 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFEQKB                       R1 FALSE ; [+93]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        7 GETTABLEKS                       R1 R0 K1 ["OnShowSearchOptionsChanged"]
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K3 ["_pluginController"]
       15 NAMECALL                         R1 R1 K4 ["getCurrentScope"]
       17 CALL                             R1 1 1
       18 LOADK                            R4 K5 [""]
       19 NAMECALL                         R2 R0 K6 ["setSearchTerm"]
       21 CALL                             R2 2 0
       22 DUPTABLE                         R2 K9 [{"AssetType", "ScopeInfo"}]
       23 GETTABLEKS                       R4 R1 K10 ["Type"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K11 ["ScopeType"]
       28 GETTABLEKS                       R5 R6 K12 ["ProjectPlaces"]
       30 JUMPIFNOTEQ                      R4 R5 ; [+7]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K7 ["AssetType"]
       35 GETTABLEKS                       R3 R4 K13 ["Place"]
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K7 ["AssetType"]
       41 GETTABLEKS                       R3 R4 K14 ["Model"]
       43 SETTABLEKS                       R3 R2 K7 ["AssetType"]
       45 LOADB                            R4 1
       46 GETTABLEKS                       R5 R1 K10 ["Type"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K11 ["ScopeType"]
       51 GETTABLEKS                       R6 R7 K12 ["ProjectPlaces"]
       53 JUMPIFEQ                         R5 R6 ; [+12]
       55 GETTABLEKS                       R5 R1 K10 ["Type"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K11 ["ScopeType"]
       60 GETTABLEKS                       R6 R7 K15 ["ProjectShared"]
       62 JUMPIFEQ                         R5 R6 ; [+2]
       64 LOADB                            R4 0 +1
       65 LOADB                            R4 1
       66 JUMPIFNOT                        R4 ; [+6]
       67 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       69 NAMECALL                         R3 R3 K16 ["getGameInfo"]
       71 CALL                             R3 1 1
       72 JUMP                             ; [+1]
       73 MOVE                             R3 R1
       74 SETTABLEKS                       R3 R2 K8 ["ScopeInfo"]
       76 SETTABLEKS                       R2 R0 K17 ["_searchOptions"]
       78 GETTABLEKS                       R2 R0 K18 ["OnSearchOptionsChanged"]
       80 GETIMPORT                        R4 K21 [table.clone]
       82 GETTABLEKS                       R5 R0 K17 ["_searchOptions"]
       84 CALL                             R4 1 -1
       85 NAMECALL                         R2 R2 K2 ["Fire"]
       87 CALL                             R2 -1 0
       88 GETTABLEKS                       R2 R0 K22 ["OnSearchClosed"]
       90 NAMECALL                         R2 R2 K2 ["Fire"]
       92 CALL                             R2 1 0
       93 LOADK                            R2 K5 [""]
       94 SETTABLEKS                       R2 R0 K23 ["_searchSessionId"]
       96 RETURN                           R0 0

PROTO_19:
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
       56 GETTABLEKS                       R11 R12 K17 ["Flags"]
       58 GETTABLEKS                       R10 R11 K18 ["getFFlagAmrUpdatedItemsCache"]
       60 CALL                             R9 1 1
       61 LOADK                            R12 K19 ["SearchController"]
       62 NAMECALL                         R10 R4 K20 ["extend"]
       64 CALL                             R10 2 1
       65 DUPCLOSURE                       R11 K21 [PROTO_0]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R12 K22 [PROTO_4]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R12 R10 K23 ["new"]
       75 DUPCLOSURE                       R12 K24 [PROTO_5]
       76 CAPTURE                          VAL R10
       77 SETTABLEKS                       R12 R10 K25 ["mock"]
       79 DUPCLOSURE                       R12 K26 [PROTO_6]
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R12 R10 K27 ["destroy"]
       83 DUPCLOSURE                       R12 K28 [PROTO_7]
       84 SETTABLEKS                       R12 R10 K29 ["getSearchTerm"]
       86 DUPCLOSURE                       R12 K30 [PROTO_8]
       87 SETTABLEKS                       R12 R10 K31 ["setSearchTerm"]
       89 DUPCLOSURE                       R12 K32 [PROTO_9]
       90 SETTABLEKS                       R12 R10 K33 ["getSourceList"]
       92 DUPCLOSURE                       R12 K34 [PROTO_10]
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R12 R10 K35 ["requestSearch"]
       96 DUPCLOSURE                       R12 K36 [PROTO_11]
       97 SETTABLEKS                       R12 R10 K37 ["getSearchOptions"]
       99 DUPCLOSURE                       R12 K38 [PROTO_12]
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R12 R10 K39 ["setScope"]
      103 DUPCLOSURE                       R12 K40 [PROTO_13]
      104 SETTABLEKS                       R12 R10 K41 ["setAssetTypeFilter"]
      106 DUPCLOSURE                       R12 K42 [PROTO_14]
      107 SETTABLEKS                       R12 R10 K43 ["setSearchOptions"]
      109 DUPCLOSURE                       R12 K44 [PROTO_15]
      110 SETTABLEKS                       R12 R10 K45 ["getIsDefaultSearchState"]
      112 DUPCLOSURE                       R12 K46 [PROTO_16]
      113 SETTABLEKS                       R12 R10 K47 ["getShowSearchOptions"]
      115 DUPCLOSURE                       R12 K48 [PROTO_17]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R12 R10 K49 ["showSearchOptions"]
      120 DUPCLOSURE                       R12 K50 [PROTO_18]
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R12 R10 K51 ["hideSearchOptions"]
      124 DUPCLOSURE                       R12 K52 [PROTO_19]
      125 SETTABLEKS                       R12 R10 K53 ["getSearchId"]
      127 RETURN                           R10 1
