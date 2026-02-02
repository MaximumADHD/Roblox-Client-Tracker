PROTO_0:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["Type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ScopeType"]
  GETTABLEKS R3 R4 K2 ["ProjectPlaces"]
  JUMPIFEQ R2 R3 [+12]
  GETTABLEKS R2 R0 K0 ["Type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ScopeType"]
  GETTABLEKS R3 R4 K3 ["ProjectShared"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_pluginController"]
  NAMECALL R1 R1 K1 ["getGameInfo"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["Id"]
  JUMPIFEQKN R2 K3 [0] [+9]
  GETTABLEKS R4 R1 K4 ["Uid"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["_pluginController"]
  NAMECALL R5 R5 K8 ["getUser"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["Uid"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["append"]
  MOVE R3 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["_explorerController"]
  NAMECALL R4 R4 K11 ["getVisibleInventories"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K12 ["_sourceList"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["OnSourceListChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["_sourceList"]
  NAMECALL R2 R2 K14 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_updateSourceList"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Uid"]
  NAMECALL R1 R1 K1 ["setScope"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R2 K18 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged", "OnSearchClosed"}]
  SETTABLEKS R1 R2 K0 ["_isMock"]
  GETTABLEKS R3 R0 K19 ["Networking"]
  SETTABLEKS R3 R2 K1 ["_networking"]
  GETTABLEKS R3 R0 K20 ["PluginController"]
  SETTABLEKS R3 R2 K2 ["_pluginController"]
  GETTABLEKS R3 R0 K21 ["ExplorerController"]
  SETTABLEKS R3 R2 K3 ["_explorerController"]
  LOADK R3 K22 [""]
  SETTABLEKS R3 R2 K4 ["_searchTerm"]
  DUPTABLE R3 K25 [{"AssetType", "ScopeInfo"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K23 ["AssetType"]
  GETTABLEKS R4 R5 K26 ["Model"]
  SETTABLEKS R4 R3 K23 ["AssetType"]
  GETTABLEKS R4 R0 K20 ["PluginController"]
  NAMECALL R4 R4 K27 ["getCurrentScope"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["ScopeInfo"]
  SETTABLEKS R3 R2 K5 ["_searchOptions"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["_sourceList"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["_showSearchOptions"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["_isDefaultSearchState"]
  LOADK R3 K22 [""]
  SETTABLEKS R3 R2 K9 ["_searchSessionId"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K10 ["_connections"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K11 ["OnSearchRequested"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K12 ["OnSearchTermChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K13 ["OnSearchOptionsChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K14 ["OnSourceListChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K15 ["OnShowSearchOptionsChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["OnIsDefaultSearchStateChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K17 ["OnSearchClosed"]
  GETUPVAL R5 2
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K30 [setmetatable]
  CALL R3 2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K31 ["_updateSourceList"]
  GETTABLEKS R4 R2 K10 ["_connections"]
  GETTABLEKS R6 R2 K3 ["_explorerController"]
  GETTABLEKS R5 R6 K32 ["OnExplorerItemsChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  NAMECALL R5 R5 K33 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K36 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K10 ["_connections"]
  GETTABLEKS R6 R2 K2 ["_pluginController"]
  GETTABLEKS R5 R6 K37 ["OnCurrentScopeChanged"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  NAMECALL R5 R5 K33 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K36 [table.insert]
  CALL R3 -1 0
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["OnSearchTermChanged"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["OnSearchOptionsChanged"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["OnSearchClosed"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["OnSearchRequested"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["OnSourceListChanged"]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K5 ["_connections"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_connections"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_searchTerm"]
  RETURN R1 1

PROTO_8:
  SETTABLEKS R1 R0 K0 ["_searchTerm"]
  GETTABLEKS R2 R0 K0 ["_searchTerm"]
  JUMPIFNOTEQKS R2 K1 [""] [+11]
  LOADB R2 1
  SETTABLEKS R2 R0 K2 ["_isDefaultSearchState"]
  GETTABLEKS R2 R0 K3 ["OnIsDefaultSearchStateChanged"]
  GETTABLEKS R4 R0 K2 ["_isDefaultSearchState"]
  NAMECALL R2 R2 K4 ["Fire"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K5 ["OnSearchTermChanged"]
  GETTABLEKS R4 R0 K0 ["_searchTerm"]
  NAMECALL R2 R2 K4 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_sourceList"]
  RETURN R1 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_searchTerm"]
  JUMPIFNOTEQKS R1 K1 [""] [+2]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["_isDefaultSearchState"]
  GETTABLEKS R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
  GETTABLEKS R3 R0 K2 ["_isDefaultSearchState"]
  NAMECALL R1 R1 K4 ["Fire"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K5 ["OnSearchRequested"]
  NAMECALL R1 R1 K4 ["Fire"]
  CALL R1 1 0
  DUPTABLE R1 K9 [{"searchAssetType", "searchKeywords", "searchId"}]
  GETTABLEKS R3 R0 K10 ["_searchOptions"]
  GETTABLEKS R2 R3 K11 ["AssetType"]
  SETTABLEKS R2 R1 K6 ["searchAssetType"]
  GETTABLEKS R2 R0 K0 ["_searchTerm"]
  SETTABLEKS R2 R1 K7 ["searchKeywords"]
  GETTABLEKS R2 R0 K12 ["_searchSessionId"]
  SETTABLEKS R2 R1 K8 ["searchId"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["sendSearchEvent"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R2 R0 K3 ["_searchOptions"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  GETTABLEKS R4 R0 K0 ["_searchOptions"]
  GETTABLEKS R3 R4 K1 ["ScopeInfo"]
  GETTABLEKS R2 R3 K2 ["Uid"]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETTABLEKS R2 R0 K3 ["_explorerController"]
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["getScopeWithUid"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETTABLEKS R3 R2 K5 ["Type"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["ScopeType"]
  GETTABLEKS R4 R5 K7 ["ProjectPlaces"]
  JUMPIFNOTEQ R3 R4 [+10]
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["AssetType"]
  GETTABLEKS R4 R5 K9 ["Place"]
  SETTABLEKS R4 R3 K8 ["AssetType"]
  MOVE R4 R2
  LOADB R3 1
  GETTABLEKS R5 R4 K5 ["Type"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["ScopeType"]
  GETTABLEKS R6 R7 K7 ["ProjectPlaces"]
  JUMPIFEQ R5 R6 [+12]
  GETTABLEKS R5 R4 K5 ["Type"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["ScopeType"]
  GETTABLEKS R6 R7 K10 ["ProjectShared"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K11 ["_pluginController"]
  NAMECALL R3 R3 K12 ["getGameInfo"]
  CALL R3 1 1
  MOVE R2 R3
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  SETTABLEKS R2 R3 K1 ["ScopeInfo"]
  GETTABLEKS R3 R0 K13 ["OnSearchOptionsChanged"]
  GETIMPORT R5 K16 [table.clone]
  GETTABLEKS R6 R0 K0 ["_searchOptions"]
  CALL R5 1 -1
  NAMECALL R3 R3 K17 ["Fire"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K18 ["_searchTerm"]
  JUMPIFEQKS R3 K19 [""] [+6]
  GETTABLEKS R3 R0 K20 ["OnSearchRequested"]
  NAMECALL R3 R3 K17 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_searchOptions"]
  SETTABLEKS R1 R2 K1 ["AssetType"]
  GETTABLEKS R2 R0 K2 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K5 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K7 ["_searchTerm"]
  JUMPIFEQKS R2 K8 [""] [+6]
  GETTABLEKS R2 R0 K9 ["OnSearchRequested"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  SETTABLEKS R1 R0 K0 ["_searchOptions"]
  GETTABLEKS R2 R0 K1 ["_searchTerm"]
  JUMPIFEQKS R2 K2 [""] [+16]
  GETTABLEKS R2 R0 K3 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K6 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["Fire"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K8 ["OnSearchRequested"]
  NAMECALL R2 R2 K7 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_isDefaultSearchState"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  JUMPIFEQKB R1 TRUE [+26]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["_isDefaultSearchState"]
  GETTABLEKS R1 R0 K2 ["OnIsDefaultSearchStateChanged"]
  GETTABLEKS R3 R0 K1 ["_isDefaultSearchState"]
  NAMECALL R1 R1 K3 ["Fire"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["OnShowSearchOptionsChanged"]
  LOADB R3 1
  NAMECALL R1 R1 K3 ["Fire"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createSearchSessionId"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["_searchSessionId"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  JUMPIFEQKB R1 FALSE [+93]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R1 R0 K1 ["OnShowSearchOptionsChanged"]
  LOADB R3 0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["_pluginController"]
  NAMECALL R1 R1 K4 ["getCurrentScope"]
  CALL R1 1 1
  LOADK R4 K5 [""]
  NAMECALL R2 R0 K6 ["setSearchTerm"]
  CALL R2 2 0
  DUPTABLE R2 K9 [{"AssetType", "ScopeInfo"}]
  GETTABLEKS R4 R1 K10 ["Type"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["ScopeType"]
  GETTABLEKS R5 R6 K12 ["ProjectPlaces"]
  JUMPIFNOTEQ R4 R5 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["AssetType"]
  GETTABLEKS R3 R4 K13 ["Place"]
  JUMP [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["AssetType"]
  GETTABLEKS R3 R4 K14 ["Model"]
  SETTABLEKS R3 R2 K7 ["AssetType"]
  LOADB R4 1
  GETTABLEKS R5 R1 K10 ["Type"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["ScopeType"]
  GETTABLEKS R6 R7 K12 ["ProjectPlaces"]
  JUMPIFEQ R5 R6 [+12]
  GETTABLEKS R5 R1 K10 ["Type"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["ScopeType"]
  GETTABLEKS R6 R7 K15 ["ProjectShared"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R3 R0 K3 ["_pluginController"]
  NAMECALL R3 R3 K16 ["getGameInfo"]
  CALL R3 1 1
  JUMP [+1]
  MOVE R3 R1
  SETTABLEKS R3 R2 K8 ["ScopeInfo"]
  SETTABLEKS R2 R0 K17 ["_searchOptions"]
  GETTABLEKS R2 R0 K18 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K21 [table.clone]
  GETTABLEKS R5 R0 K17 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K22 ["OnSearchClosed"]
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 1 0
  LOADK R2 K5 [""]
  SETTABLEKS R2 R0 K23 ["_searchSessionId"]
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["_searchSessionId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["ContextItem"]
  GETTABLEKS R6 R1 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Signal"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K14 ["cleanConnections"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K15 ["Analytics"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K16 ["Types"]
  CALL R8 1 1
  LOADK R11 K17 ["SearchController"]
  NAMECALL R9 R4 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R8
  DUPCLOSURE R11 K20 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R11 R9 K21 ["new"]
  DUPCLOSURE R11 K22 [PROTO_5]
  CAPTURE VAL R9
  SETTABLEKS R11 R9 K23 ["mock"]
  DUPCLOSURE R11 K24 [PROTO_6]
  CAPTURE VAL R6
  SETTABLEKS R11 R9 K25 ["destroy"]
  DUPCLOSURE R11 K26 [PROTO_7]
  SETTABLEKS R11 R9 K27 ["getSearchTerm"]
  DUPCLOSURE R11 K28 [PROTO_8]
  SETTABLEKS R11 R9 K29 ["setSearchTerm"]
  DUPCLOSURE R11 K30 [PROTO_9]
  SETTABLEKS R11 R9 K31 ["getSourceList"]
  DUPCLOSURE R11 K32 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R11 R9 K33 ["requestSearch"]
  DUPCLOSURE R11 K34 [PROTO_11]
  SETTABLEKS R11 R9 K35 ["getSearchOptions"]
  DUPCLOSURE R11 K36 [PROTO_12]
  CAPTURE VAL R8
  SETTABLEKS R11 R9 K37 ["setScope"]
  DUPCLOSURE R11 K38 [PROTO_13]
  SETTABLEKS R11 R9 K39 ["setAssetTypeFilter"]
  DUPCLOSURE R11 K40 [PROTO_14]
  SETTABLEKS R11 R9 K41 ["setSearchOptions"]
  DUPCLOSURE R11 K42 [PROTO_15]
  SETTABLEKS R11 R9 K43 ["getIsDefaultSearchState"]
  DUPCLOSURE R11 K44 [PROTO_16]
  SETTABLEKS R11 R9 K45 ["getShowSearchOptions"]
  DUPCLOSURE R11 K46 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R11 R9 K47 ["showSearchOptions"]
  DUPCLOSURE R11 K48 [PROTO_18]
  CAPTURE VAL R8
  SETTABLEKS R11 R9 K49 ["hideSearchOptions"]
  DUPCLOSURE R11 K50 [PROTO_19]
  SETTABLEKS R11 R9 K51 ["getSearchId"]
  RETURN R9 1
