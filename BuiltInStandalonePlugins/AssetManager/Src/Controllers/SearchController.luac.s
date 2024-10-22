PROTO_0:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_sourceList"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["_explorerController"]
  NAMECALL R0 R0 K2 ["getExplorerItems"]
  CALL R0 1 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADB R6 1
  GETTABLEKS R7 R5 K3 ["Scope"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["Scope"]
  GETTABLEKS R8 R9 K4 ["User"]
  JUMPIFEQ R7 R8 [+12]
  GETTABLEKS R7 R5 K3 ["Scope"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["Scope"]
  GETTABLEKS R8 R9 K5 ["Group"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETIMPORT R7 K8 [string.find]
  GETTABLEKS R8 R5 K9 ["Name"]
  NAMECALL R8 R8 K10 ["lower"]
  CALL R8 1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["_sourceFilter"]
  NAMECALL R9 R9 K10 ["lower"]
  CALL R9 1 -1
  CALL R7 -1 1
  JUMPIFNOT R6 [+7]
  JUMPIFNOT R7 [+6]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["_sourceList"]
  GETTABLEKS R9 R5 K12 ["Id"]
  SETTABLE R5 R8 R9
  FORGLOOP R1 2 [-44]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K13 ["OnSourceListChanged"]
  GETIMPORT R3 K16 [table.clone]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["_sourceList"]
  CALL R3 1 -1
  NAMECALL R1 R1 K17 ["Fire"]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sourceList"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_updateSourceList"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_searchOptions"]
  SETTABLEKS R0 R1 K1 ["Source"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R4 K15 [{"_isMock", "_networking", "_pluginController", "_explorerController", "_searchTerm", "_searchOptions", "_sourceList", "_sourceFilter", "_showSearchOptions", "OnSearchRequested", "OnSearchTermChanged", "OnSearchOptionsChanged", "OnSourceListChanged", "OnShowSearchOptionsChanged", "OnSearchClosed"}]
  SETTABLEKS R3 R4 K0 ["_isMock"]
  SETTABLEKS R2 R4 K1 ["_networking"]
  SETTABLEKS R0 R4 K2 ["_pluginController"]
  SETTABLEKS R1 R4 K3 ["_explorerController"]
  LOADK R5 K16 [""]
  SETTABLEKS R5 R4 K4 ["_searchTerm"]
  DUPTABLE R5 K19 [{"AssetType", "Source"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["AssetType"]
  GETTABLEKS R6 R7 K20 ["Model"]
  SETTABLEKS R6 R5 K17 ["AssetType"]
  NAMECALL R6 R1 K21 ["getSelection"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["Source"]
  SETTABLEKS R5 R4 K5 ["_searchOptions"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["_sourceList"]
  LOADK R5 K16 [""]
  SETTABLEKS R5 R4 K7 ["_sourceFilter"]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["_showSearchOptions"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K9 ["OnSearchRequested"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K10 ["OnSearchTermChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K11 ["OnSearchOptionsChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["OnSourceListChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K13 ["OnShowSearchOptionsChanged"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K14 ["OnSearchClosed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  SETTABLEKS R5 R4 K23 ["_updateSourceList"]
  GETTABLEKS R6 R4 K3 ["_explorerController"]
  GETTABLEKS R5 R6 K24 ["OnExplorerItemsChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  NAMECALL R5 R5 K25 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["_explorerItemsChangedConnection"]
  GETTABLEKS R6 R4 K2 ["_pluginController"]
  GETTABLEKS R5 R6 K27 ["OnSelectionChanged"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R4
  NAMECALL R5 R5 K25 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["_explorerSelectionConnection"]
  GETUPVAL R7 2
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K30 [setmetatable]
  CALL R5 2 0
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
  GETTABLEKS R1 R0 K5 ["_explorerItemsChangedConnection"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_explorerItemsChangedConnection"]
  GETTABLEKS R1 R0 K7 ["_explorerSelectionConnection"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_explorerSelectionConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_searchTerm"]
  RETURN R1 1

PROTO_7:
  SETTABLEKS R1 R0 K0 ["_searchTerm"]
  GETTABLEKS R2 R0 K1 ["OnSearchTermChanged"]
  GETTABLEKS R4 R0 K0 ["_searchTerm"]
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["OnSearchRequested"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R2 R0 K3 ["_searchOptions"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_10:
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

PROTO_11:
  GETTABLEKS R4 R0 K0 ["_searchOptions"]
  GETTABLEKS R3 R4 K1 ["Source"]
  GETTABLEKS R2 R3 K2 ["Id"]
  JUMPIFEQ R1 R2 [+30]
  GETTABLEKS R3 R0 K3 ["_sourceList"]
  GETTABLE R2 R3 R1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_searchOptions"]
  SETTABLEKS R2 R3 K1 ["Source"]
  GETTABLEKS R3 R0 K4 ["_searchTerm"]
  JUMPIFEQKS R3 K5 [""] [+16]
  GETTABLEKS R3 R0 K6 ["OnSearchOptionsChanged"]
  GETIMPORT R5 K9 [table.clone]
  GETTABLEKS R6 R0 K0 ["_searchOptions"]
  CALL R5 1 -1
  NAMECALL R3 R3 K10 ["Fire"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K11 ["OnSearchRequested"]
  NAMECALL R3 R3 K10 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  SETTABLEKS R1 R0 K0 ["_sourceFilter"]
  GETTABLEKS R2 R0 K1 ["_updateSourceList"]
  CALL R2 0 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_sourceList"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_searchOptions"]
  SETTABLEKS R1 R2 K1 ["AssetType"]
  GETTABLEKS R2 R0 K2 ["_searchTerm"]
  JUMPIFEQKS R2 K3 [""] [+16]
  GETTABLEKS R2 R0 K4 ["OnSearchOptionsChanged"]
  GETIMPORT R4 K7 [table.clone]
  GETTABLEKS R5 R0 K0 ["_searchOptions"]
  CALL R4 1 -1
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K9 ["OnSearchRequested"]
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_showSearchOptions"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R2 R0 K1 ["OnShowSearchOptionsChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  JUMPIFEQKB R1 FALSE [+50]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_showSearchOptions"]
  GETTABLEKS R1 R0 K1 ["OnShowSearchOptionsChanged"]
  LOADB R3 0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  LOADK R3 K3 [""]
  NAMECALL R1 R0 K4 ["setSourceFilter"]
  CALL R1 2 0
  LOADK R3 K3 [""]
  NAMECALL R1 R0 K5 ["setSearchTerm"]
  CALL R1 2 0
  DUPTABLE R1 K8 [{"AssetType", "Source"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["AssetType"]
  GETTABLEKS R2 R3 K9 ["Model"]
  SETTABLEKS R2 R1 K6 ["AssetType"]
  GETTABLEKS R2 R0 K10 ["_explorerController"]
  NAMECALL R2 R2 K11 ["getSelection"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["Source"]
  SETTABLEKS R1 R0 K12 ["_searchOptions"]
  GETTABLEKS R1 R0 K13 ["OnSearchOptionsChanged"]
  GETIMPORT R3 K16 [table.clone]
  GETTABLEKS R4 R0 K12 ["_searchOptions"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K17 ["OnSearchClosed"]
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 1 0
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
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K17 ["new"]
  DUPCLOSURE R7 K18 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K19 ["mock"]
  DUPCLOSURE R7 K20 [PROTO_5]
  SETTABLEKS R7 R6 K21 ["destroy"]
  DUPCLOSURE R7 K22 [PROTO_6]
  SETTABLEKS R7 R6 K23 ["getSearchTerm"]
  DUPCLOSURE R7 K24 [PROTO_7]
  SETTABLEKS R7 R6 K25 ["setSearchTerm"]
  DUPCLOSURE R7 K26 [PROTO_8]
  SETTABLEKS R7 R6 K27 ["requestSearch"]
  DUPCLOSURE R7 K28 [PROTO_9]
  SETTABLEKS R7 R6 K29 ["getSearchOptions"]
  DUPCLOSURE R7 K30 [PROTO_10]
  SETTABLEKS R7 R6 K31 ["setSearchOptions"]
  DUPCLOSURE R7 K32 [PROTO_11]
  SETTABLEKS R7 R6 K33 ["setSource"]
  DUPCLOSURE R7 K34 [PROTO_12]
  SETTABLEKS R7 R6 K35 ["setSourceFilter"]
  DUPCLOSURE R7 K36 [PROTO_13]
  SETTABLEKS R7 R6 K37 ["getSourceList"]
  DUPCLOSURE R7 K38 [PROTO_14]
  SETTABLEKS R7 R6 K39 ["setAssetTypeFilter"]
  DUPCLOSURE R7 K40 [PROTO_15]
  SETTABLEKS R7 R6 K41 ["getShowSearchOptions"]
  DUPCLOSURE R7 K42 [PROTO_16]
  SETTABLEKS R7 R6 K43 ["setShowSearchOptions"]
  DUPCLOSURE R7 K44 [PROTO_17]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K45 ["hideSearchOptions"]
  RETURN R6 1
