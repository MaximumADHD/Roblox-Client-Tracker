PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+58]
  NEWTABLE R0 0 0
  GETUPVAL R2 1
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
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["_pluginController"]
  NAMECALL R5 R5 K8 ["getUser"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["Uid"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["append"]
  MOVE R3 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["_explorerController"]
  NAMECALL R4 R4 K11 ["getVisibleInventories"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  SETTABLEKS R0 R2 K12 ["_sourceList"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["OnSourceListChanged"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["_sourceList"]
  NAMECALL R2 R2 K14 ["Fire"]
  CALL R2 2 0
  RETURN R0 0
  NEWTABLE R0 0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["_pluginController"]
  NAMECALL R1 R1 K1 ["getGameInfo"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["Id"]
  JUMPIFEQKN R2 K3 [0] [+9]
  GETTABLEKS R4 R1 K2 ["Id"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["_pluginController"]
  NAMECALL R5 R5 K8 ["getUser"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K2 ["Id"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["append"]
  MOVE R3 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["_explorerController"]
  NAMECALL R4 R4 K15 ["getVisibleGroups"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  SETTABLEKS R0 R2 K12 ["_sourceList"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["OnSourceListChanged"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["_sourceList"]
  NAMECALL R2 R2 K14 ["Fire"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["_sourceList"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_updateSourceList"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Id"]
  NAMECALL R1 R1 K1 ["setScope"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R4 K18 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_showSearchOptions", "_isDefaultSearchState", "_searchSessionId", "_connections", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnIsDefaultSearchStateChanged", "OnSearchClosed"}]
  SETTABLEKS R3 R4 K0 ["_isMock"]
  SETTABLEKS R2 R4 K1 ["_networking"]
  SETTABLEKS R0 R4 K2 ["_pluginController"]
  SETTABLEKS R1 R4 K3 ["_explorerController"]
  LOADK R5 K19 [""]
  SETTABLEKS R5 R4 K4 ["_searchTerm"]
  DUPTABLE R5 K22 [{"AssetType", "ScopeInfo"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K20 ["AssetType"]
  GETTABLEKS R6 R7 K23 ["Model"]
  SETTABLEKS R6 R5 K20 ["AssetType"]
  NAMECALL R6 R0 K24 ["getCurrentScope"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["ScopeInfo"]
  SETTABLEKS R5 R4 K5 ["_searchOptions"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["_sourceList"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["_showSearchOptions"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["_isDefaultSearchState"]
  LOADK R5 K19 [""]
  SETTABLEKS R5 R4 K9 ["_searchSessionId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["_connections"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K11 ["OnSearchRequested"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["OnSearchTermChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K13 ["OnSearchOptionsChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K14 ["OnSourceListChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K15 ["OnShowSearchOptionsChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K16 ["OnIsDefaultSearchStateChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K17 ["OnSearchClosed"]
  GETUPVAL R7 2
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K27 [setmetatable]
  CALL R5 2 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R5 R4 K28 ["_updateSourceList"]
  GETTABLEKS R6 R4 K10 ["_connections"]
  GETTABLEKS R8 R4 K3 ["_explorerController"]
  GETTABLEKS R7 R8 K29 ["OnExplorerItemsChanged"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R4
  NAMECALL R7 R7 K30 ["Connect"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K33 [table.insert]
  CALL R5 -1 0
  GETTABLEKS R6 R4 K10 ["_connections"]
  GETTABLEKS R8 R4 K2 ["_pluginController"]
  GETTABLEKS R7 R8 K34 ["OnCurrentScopeChanged"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  NAMECALL R7 R7 K30 ["Connect"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K33 [table.insert]
  CALL R5 -1 0
  RETURN R4 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  LOADB R7 1
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
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

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_searchTerm"]
  RETURN R1 1

PROTO_7:
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

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_sourceList"]
  RETURN R1 1

PROTO_9:
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

PROTO_10:
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R2 R0 K3 ["_searchOptions"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_11:
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
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  SETTABLEKS R2 R3 K1 ["ScopeInfo"]
  GETTABLEKS R3 R0 K5 ["OnSearchOptionsChanged"]
  GETIMPORT R5 K8 [table.clone]
  GETTABLEKS R6 R0 K0 ["_searchOptions"]
  CALL R5 1 -1
  NAMECALL R3 R3 K9 ["Fire"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K10 ["_searchTerm"]
  JUMPIFEQKS R3 K11 [""] [+6]
  GETTABLEKS R3 R0 K12 ["OnSearchRequested"]
  NAMECALL R3 R3 K9 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["This function is deprecated with FFlagAmrGroupsRefactor"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_searchOptions"]
  GETTABLEKS R3 R4 K4 ["ScopeInfo"]
  GETTABLEKS R2 R3 K5 ["Id"]
  JUMPIFEQ R1 R2 [+33]
  GETTABLEKS R2 R0 K6 ["_explorerController"]
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["getScopeById"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETTABLEKS R3 R0 K3 ["_searchOptions"]
  SETTABLEKS R2 R3 K4 ["ScopeInfo"]
  GETTABLEKS R3 R0 K8 ["OnSearchOptionsChanged"]
  GETIMPORT R5 K11 [table.clone]
  GETTABLEKS R6 R0 K3 ["_searchOptions"]
  CALL R5 1 -1
  NAMECALL R3 R3 K12 ["Fire"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K13 ["_searchTerm"]
  JUMPIFEQKS R3 K14 [""] [+6]
  GETTABLEKS R3 R0 K15 ["OnSearchRequested"]
  NAMECALL R3 R3 K12 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_14:
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
  JUMPIFEQKB R1 FALSE [+49]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R1 R0 K1 ["OnShowSearchOptionsChanged"]
  LOADB R3 0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  LOADK R3 K3 [""]
  NAMECALL R1 R0 K4 ["setSearchTerm"]
  CALL R1 2 0
  DUPTABLE R1 K7 [{"AssetType", "ScopeInfo"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["AssetType"]
  GETTABLEKS R2 R3 K8 ["Model"]
  SETTABLEKS R2 R1 K5 ["AssetType"]
  GETTABLEKS R2 R0 K9 ["_pluginController"]
  NAMECALL R2 R2 K10 ["getCurrentScope"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["ScopeInfo"]
  SETTABLEKS R1 R0 K11 ["_searchOptions"]
  GETTABLEKS R1 R0 K12 ["OnSearchOptionsChanged"]
  GETIMPORT R3 K15 [table.clone]
  GETTABLEKS R4 R0 K11 ["_searchOptions"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K16 ["OnSearchClosed"]
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 1 0
  LOADK R1 K3 [""]
  SETTABLEKS R1 R0 K17 ["_searchSessionId"]
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
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K17 ["Flags"]
  GETTABLEKS R10 R11 K18 ["getFFlagAmrGroupsRefactor"]
  CALL R9 1 1
  LOADK R12 K19 ["SearchController"]
  NAMECALL R10 R4 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K22 ["new"]
  DUPCLOSURE R11 K23 [PROTO_4]
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K24 ["mock"]
  DUPCLOSURE R11 K25 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K26 ["destroy"]
  DUPCLOSURE R11 K27 [PROTO_6]
  SETTABLEKS R11 R10 K28 ["getSearchTerm"]
  DUPCLOSURE R11 K29 [PROTO_7]
  SETTABLEKS R11 R10 K30 ["setSearchTerm"]
  DUPCLOSURE R11 K31 [PROTO_8]
  SETTABLEKS R11 R10 K32 ["getSourceList"]
  DUPCLOSURE R11 K33 [PROTO_9]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K34 ["requestSearch"]
  DUPCLOSURE R11 K35 [PROTO_10]
  SETTABLEKS R11 R10 K36 ["getSearchOptions"]
  DUPCLOSURE R11 K37 [PROTO_11]
  SETTABLEKS R11 R10 K38 ["setSearchOptions"]
  DUPCLOSURE R11 K39 [PROTO_12]
  SETTABLEKS R11 R10 K40 ["setScope"]
  DUPCLOSURE R11 K41 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K42 ["setScope_DEPRECATED"]
  DUPCLOSURE R11 K43 [PROTO_14]
  SETTABLEKS R11 R10 K44 ["setAssetTypeFilter"]
  DUPCLOSURE R11 K45 [PROTO_15]
  SETTABLEKS R11 R10 K46 ["getIsDefaultSearchState"]
  DUPCLOSURE R11 K47 [PROTO_16]
  SETTABLEKS R11 R10 K48 ["getShowSearchOptions"]
  DUPCLOSURE R11 K49 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K50 ["showSearchOptions"]
  DUPCLOSURE R11 K51 [PROTO_18]
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K52 ["hideSearchOptions"]
  DUPCLOSURE R11 K53 [PROTO_19]
  SETTABLEKS R11 R10 K54 ["getSearchId"]
  RETURN R10 1
