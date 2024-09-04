PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_explorerController"]
  NAMECALL R0 R0 K1 ["getExplorerItems"]
  CALL R0 1 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["_searchOptions"]
  GETTABLEKS R6 R7 K3 ["SourceIncludeSet"]
  GETTABLEKS R7 R5 K4 ["Id"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  FORGLOOP R1 2 [-10]
  RETURN R0 0

PROTO_1:
  DUPTABLE R4 K11 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_lastUsedSearchTerm", "_searchOptions", "_showSearchOptions", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnShowSearchOptionsChanged"}]
  SETTABLEKS R3 R4 K0 ["_isMock"]
  SETTABLEKS R2 R4 K1 ["_networking"]
  SETTABLEKS R0 R4 K2 ["_pluginController"]
  SETTABLEKS R1 R4 K3 ["_explorerController"]
  LOADK R5 K12 [""]
  SETTABLEKS R5 R4 K4 ["_searchTerm"]
  LOADK R5 K12 [""]
  SETTABLEKS R5 R4 K5 ["_lastUsedSearchTerm"]
  DUPTABLE R5 K15 [{"AssetType", "SourceIncludeSet"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["AssetType"]
  GETTABLEKS R6 R7 K16 ["Model"]
  SETTABLEKS R6 R5 K13 ["AssetType"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K14 ["SourceIncludeSet"]
  SETTABLEKS R5 R4 K6 ["_searchOptions"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["_showSearchOptions"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K8 ["OnSearchTermChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K9 ["OnSearchOptionsChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K10 ["OnShowSearchOptionsChanged"]
  GETTABLEKS R6 R4 K3 ["_explorerController"]
  GETTABLEKS R5 R6 K18 ["OnExplorerItemsChanged"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  NAMECALL R5 R5 K19 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K20 ["_explorerItemsChangedConnection"]
  GETUPVAL R7 2
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K22 [setmetatable]
  CALL R5 2 0
  RETURN R4 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  LOADB R7 1
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["OnSearchTermChanged"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["OnSearchOptionsChanged"]
  GETTABLEKS R1 R0 K2 ["_explorerItemsChangedConnection"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_explorerItemsChangedConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_searchTerm"]
  RETURN R1 1

PROTO_5:
  SETTABLEKS R1 R0 K0 ["_searchTerm"]
  RETURN R0 0

PROTO_6:
  JUMPIFEQKNIL R1 [+9]
  GETTABLEKS R2 R0 K0 ["_searchTerm"]
  JUMPIFEQ R2 R1 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["setSearchTerm"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["_searchTerm"]
  SETTABLEKS R2 R0 K2 ["_lastUsedSearchTerm"]
  GETTABLEKS R2 R0 K3 ["OnSearchTermChanged"]
  GETTABLEKS R4 R0 K0 ["_searchTerm"]
  NAMECALL R2 R2 K4 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R2 R0 K3 ["_searchOptions"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  SETTABLEKS R1 R0 K0 ["_searchOptions"]
  GETTABLEKS R2 R0 K1 ["_searchTerm"]
  JUMPIFEQKS R2 K2 [""] [+11]
  GETTABLEKS R2 R0 K3 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K6 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["Fire"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R4 R0 K0 ["_searchOptions"]
  GETTABLEKS R3 R4 K1 ["SourceIncludeSet"]
  GETTABLEKS R4 R1 K2 ["Id"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  GETTABLEKS R2 R3 K1 ["SourceIncludeSet"]
  GETTABLEKS R3 R1 K2 ["Id"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  JUMP [+8]
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  GETTABLEKS R2 R3 K1 ["SourceIncludeSet"]
  GETTABLEKS R3 R1 K2 ["Id"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETTABLEKS R2 R0 K3 ["_searchTerm"]
  JUMPIFEQKS R2 K4 [""] [+11]
  GETTABLEKS R2 R0 K5 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K8 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K9 ["Fire"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_searchOptions"]
  SETTABLEKS R1 R2 K1 ["AssetType"]
  GETTABLEKS R2 R0 K2 ["_searchTerm"]
  JUMPIFEQKS R2 K3 [""] [+11]
  GETTABLEKS R2 R0 K4 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K7 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_showSearchOptions"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R2 R0 K1 ["OnShowSearchOptionsChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_showSearchOptions"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R1 R0 K1 ["OnShowSearchOptionsChanged"]
  GETTABLEKS R3 R0 K0 ["_showSearchOptions"]
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

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
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Signal"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  LOADK R8 K14 ["SearchController"]
  NAMECALL R6 R3 K15 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K17 ["new"]
  DUPCLOSURE R7 K18 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K19 ["mock"]
  DUPCLOSURE R7 K20 [PROTO_3]
  SETTABLEKS R7 R6 K21 ["destroy"]
  DUPCLOSURE R7 K22 [PROTO_4]
  SETTABLEKS R7 R6 K23 ["getSearchTerm"]
  DUPCLOSURE R7 K24 [PROTO_5]
  SETTABLEKS R7 R6 K25 ["setSearchTerm"]
  DUPCLOSURE R7 K26 [PROTO_6]
  SETTABLEKS R7 R6 K27 ["applySearch"]
  DUPCLOSURE R7 K28 [PROTO_7]
  SETTABLEKS R7 R6 K29 ["getSearchOptions"]
  DUPCLOSURE R7 K30 [PROTO_8]
  SETTABLEKS R7 R6 K31 ["setSearchOptions"]
  DUPCLOSURE R7 K32 [PROTO_9]
  SETTABLEKS R7 R6 K33 ["toggleSourceInclude"]
  DUPCLOSURE R7 K34 [PROTO_10]
  SETTABLEKS R7 R6 K35 ["setAssetTypeFilter"]
  DUPCLOSURE R7 K36 [PROTO_11]
  SETTABLEKS R7 R6 K37 ["getShowSearchOptions"]
  DUPCLOSURE R7 K38 [PROTO_12]
  SETTABLEKS R7 R6 K39 ["setShowSearchOptions"]
  DUPCLOSURE R7 K40 [PROTO_13]
  SETTABLEKS R7 R6 K41 ["toggleShowSearchOptions"]
  RETURN R6 1
