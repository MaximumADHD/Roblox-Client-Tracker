PROTO_0:
  DUPTABLE R1 K5 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm", "qualityFilterData"}]
  GETTABLEKS R2 R0 K0 ["includeUnverifiedCreators"]
  SETTABLEKS R2 R1 K0 ["includeUnverifiedCreators"]
  GETTABLEKS R2 R0 K1 ["minDuration"]
  JUMPIF R2 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["MIN_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R2 R1 K1 ["minDuration"]
  GETTABLEKS R2 R0 K2 ["maxDuration"]
  JUMPIF R2 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["MAX_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R2 R1 K2 ["maxDuration"]
  GETTABLEKS R2 R0 K8 ["initialCreatorName"]
  SETTABLEKS R2 R1 K3 ["searchTerm"]
  GETTABLEKS R2 R0 K4 ["qualityFilterData"]
  SETTABLEKS R2 R1 K4 ["qualityFilterData"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["userSearch"]
  GETTABLEKS R5 R2 K2 ["Network"]
  GETTABLEKS R4 R5 K3 ["networkInterface"]
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"searchTerm", "extraSearchDetails"}]
  SETTABLEKS R0 R5 K1 ["searchTerm"]
  SETTABLEKS R1 R5 K2 ["extraSearchDetails"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["debouncedUserSearch"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"includeUnverifiedCreators"}]
  GETTABLEKS R3 R0 K0 ["includeUnverifiedCreators"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["includeUnverifiedCreators"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_3]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"qualityFilterData"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  GETTABLEKS R3 R0 K0 ["qualityFilterData"]
  NEWTABLE R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R8 R0 K0 ["qualityFilterData"]
  GETUPVAL R9 1
  GETTABLE R7 R8 R9
  JUMPIFEQKB R7 TRUE [+3]
  LOADB R6 1
  JUMP [+3]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["None"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["qualityFilterData"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  DUPTABLE R1 K4 [{"Creator", "includeUnverifiedCreators", "qualityFilterData"}]
  GETTABLEKS R2 R0 K5 ["searchTerm"]
  SETTABLEKS R2 R1 K1 ["Creator"]
  GETTABLEKS R2 R0 K2 ["includeUnverifiedCreators"]
  SETTABLEKS R2 R1 K2 ["includeUnverifiedCreators"]
  GETTABLEKS R2 R0 K3 ["qualityFilterData"]
  SETTABLEKS R2 R1 K3 ["qualityFilterData"]
  GETTABLEKS R2 R0 K6 ["extraSearchDetails"]
  JUMPIFNOT R2 [+22]
  GETIMPORT R2 K8 [next]
  GETTABLEKS R3 R0 K6 ["extraSearchDetails"]
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+16]
  DUPTABLE R2 K11 [{"Name", "Id"}]
  GETTABLEKS R4 R0 K6 ["extraSearchDetails"]
  GETTABLEKS R3 R4 K9 ["Name"]
  SETTABLEKS R3 R2 K9 ["Name"]
  GETTABLEKS R4 R0 K6 ["extraSearchDetails"]
  GETTABLEKS R3 R4 K10 ["Id"]
  SETTABLEKS R3 R2 K10 ["Id"]
  SETTABLEKS R2 R1 K1 ["Creator"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  DUPTABLE R2 K6 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm", "extraSearchDetails", "qualityFilterData"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["includeUnverifiedCreators"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["MIN_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R3 R2 K1 ["minDuration"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["MAX_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R3 R2 K2 ["maxDuration"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["searchTerm"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["extraSearchDetails"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["qualityFilterData"]
  NAMECALL R0 R0 K10 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onReset"]
  CALL R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["getInitState"]
  GETTABLEKS R1 R0 K1 ["getInitState"]
  GETTABLEKS R2 R0 K2 ["props"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["state"]
  GETUPVAL R1 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  GETUPVAL R3 2
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["debouncedUserSearch"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["updateUserSearch"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onToggleIdVerified"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K7 ["onToggleQualityFilter"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["getSearchOptions"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K9 ["onReset"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onClose"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["liveSearchData"]
  GETTABLEKS R2 R3 K2 ["searchTerm"]
  SETTABLEKS R2 R0 K2 ["searchTerm"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["includeUnverifiedCreators"]
  GETTABLEKS R3 R1 K0 ["includeUnverifiedCreators"]
  JUMPIFNOTEQ R2 R3 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["initialCreatorName"]
  GETTABLEKS R3 R1 K1 ["initialCreatorName"]
  JUMPIFNOTEQ R2 R3 [+23]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["maxDuration"]
  GETTABLEKS R3 R1 K2 ["maxDuration"]
  JUMPIFNOTEQ R2 R3 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["minDuration"]
  GETTABLEKS R3 R1 K3 ["minDuration"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["qualityFilterData"]
  GETTABLEKS R4 R1 K4 ["qualityFilterData"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["getInitState"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_13:
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R0 K0 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["categoryName"]
  GETTABLEKS R4 R1 K3 ["liveSearchData"]
  GETTABLEKS R5 R1 K4 ["Localization"]
  GETUPVAL R7 0
  CALL R7 0 1
  NOT R6 R7
  LOADB R7 0
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+17]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["categoryIsModel"]
  MOVE R9 R3
  CALL R8 1 1
  JUMPIFNOT R8 [+11]
  GETTABLEKS R8 R1 K6 ["IXP"]
  LOADK R10 K7 ["Studio.Toolbox.AssetQuality.Exposure"]
  NAMECALL R8 R8 K8 ["logUserLayerExposure"]
  CALL R8 2 0
  GETUPVAL R8 3
  GETTABLEKS R9 R1 K6 ["IXP"]
  CALL R8 1 1
  MOVE R7 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K9 ["new"]
  CALL R8 0 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K14 [{"GetSearchOptions", "OnClose", "OnReset"}]
  GETTABLEKS R12 R0 K15 ["getSearchOptions"]
  SETTABLEKS R12 R11 K11 ["GetSearchOptions"]
  GETTABLEKS R12 R0 K16 ["onClose"]
  SETTABLEKS R12 R11 K12 ["OnClose"]
  GETTABLEKS R12 R0 K17 ["onReset"]
  SETTABLEKS R12 R11 K13 ["OnReset"]
  DUPTABLE R12 K21 [{"AllViews", "Creator", "QualityFilters"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K24 [{"Header", "LayoutOrder"}]
  LOADK R18 K25 ["General"]
  LOADK R19 K26 ["SearchOptionsAllViews"]
  NAMECALL R16 R5 K27 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K22 ["Header"]
  NAMECALL R16 R8 K28 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K23 ["LayoutOrder"]
  DUPTABLE R16 K30 [{"CheckboxAndDescriptionContainer"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K33 [{"IsChecked", "OnClick"}]
  GETTABLEKS R20 R2 K34 ["includeUnverifiedCreators"]
  SETTABLEKS R20 R19 K31 ["IsChecked"]
  GETTABLEKS R20 R0 K35 ["onToggleIdVerified"]
  SETTABLEKS R20 R19 K32 ["OnClick"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["CheckboxAndDescriptionContainer"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["AllViews"]
  MOVE R13 R6
  JUMPIFNOT R13 [+47]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K24 [{"Header", "LayoutOrder"}]
  LOADK R18 K25 ["General"]
  LOADK R19 K36 ["SearchOptionCreator"]
  NAMECALL R16 R5 K27 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K22 ["Header"]
  NAMECALL R16 R8 K28 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K23 ["LayoutOrder"]
  DUPTABLE R16 K38 [{"SearchBar"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K44 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width"}]
  LOADK R20 K45 ["SearchBarCreatorText"]
  SETTABLEKS R20 R19 K39 ["defaultTextKey"]
  GETTABLEKS R20 R2 K40 ["searchTerm"]
  SETTABLEKS R20 R19 K40 ["searchTerm"]
  GETTABLEKS R20 R4 K41 ["results"]
  SETTABLEKS R20 R19 K41 ["results"]
  GETTABLEKS R20 R0 K46 ["updateUserSearch"]
  SETTABLEKS R20 R19 K42 ["updateSearch"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K47 ["SEARCH_BAR_WIDTH"]
  SETTABLEKS R20 R19 K43 ["width"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["SearchBar"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["Creator"]
  MOVE R13 R7
  JUMPIFNOT R13 [+16]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K50 [{"CheckedState", "OnToggleFilter"}]
  GETTABLEKS R16 R2 K51 ["qualityFilterData"]
  SETTABLEKS R16 R15 K48 ["CheckedState"]
  GETTABLEKS R16 R0 K52 ["onToggleQualityFilter"]
  SETTABLEKS R16 R15 K49 ["OnToggleFilter"]
  NEWTABLE R16 0 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K20 ["QualityFilters"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_15:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  LOADNIL R3
  GETTABLEKS R4 R0 K1 ["liveSearch"]
  JUMPIFNOT R4 [+14]
  DUPTABLE R4 K4 [{"searchTerm", "results"}]
  GETTABLEKS R6 R0 K1 ["liveSearch"]
  GETTABLEKS R5 R6 K2 ["searchTerm"]
  SETTABLEKS R5 R4 K2 ["searchTerm"]
  GETTABLEKS R6 R0 K1 ["liveSearch"]
  GETTABLEKS R5 R6 K3 ["results"]
  SETTABLEKS R5 R4 K3 ["results"]
  MOVE R3 R4
  GETTABLEKS R5 R2 K5 ["creator"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R2 K5 ["creator"]
  GETTABLEKS R4 R5 K6 ["Name"]
  JUMP [+1]
  LOADK R4 K7 [""]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETTABLEKS R6 R2 K8 ["qualityFilterData"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R2 K8 ["qualityFilterData"]
  JUMP [+2]
  NEWTABLE R5 0 0
  DUPTABLE R6 K13 [{"categoryName", "includeUnverifiedCreators", "initialCreatorName", "liveSearchData", "qualityFilterData"}]
  GETTABLEKS R7 R2 K9 ["categoryName"]
  JUMPIF R7 [+5]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["DEFAULT"]
  GETTABLEKS R7 R8 K15 ["name"]
  SETTABLEKS R7 R6 K9 ["categoryName"]
  GETTABLEKS R7 R2 K10 ["includeUnverifiedCreators"]
  SETTABLEKS R7 R6 K10 ["includeUnverifiedCreators"]
  SETTABLEKS R4 R6 K11 ["initialCreatorName"]
  SETTABLEKS R3 R6 K12 ["liveSearchData"]
  SETTABLEKS R5 R6 K8 ["qualityFilterData"]
  RETURN R6 1

PROTO_16:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K1 [{"userSearch"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["userSearch"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Cryo"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K13 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K14 ["debounce"]
  CALL R8 1 1
  GETTABLEKS R10 R4 K12 ["Util"]
  GETTABLEKS R9 R10 K15 ["deepEqual"]
  GETTABLEKS R10 R4 K16 ["ContextServices"]
  GETTABLEKS R11 R10 K17 ["withContext"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K11 ["Core"]
  GETTABLEKS R14 R15 K16 ["ContextServices"]
  GETTABLEKS R13 R14 K18 ["Settings"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K11 ["Core"]
  GETTABLEKS R15 R16 K16 ["ContextServices"]
  GETTABLEKS R14 R15 K19 ["NetworkContext"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R18 R0 K11 ["Core"]
  GETTABLEKS R17 R18 K20 ["Components"]
  GETTABLEKS R16 R17 K21 ["AssetQualityFilter"]
  GETTABLEKS R15 R16 K21 ["AssetQualityFilter"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R0 K11 ["Core"]
  GETTABLEKS R18 R19 K20 ["Components"]
  GETTABLEKS R17 R18 K22 ["SearchOptions"]
  GETTABLEKS R16 R17 K23 ["LiveSearchBar"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R20 R0 K11 ["Core"]
  GETTABLEKS R19 R20 K20 ["Components"]
  GETTABLEKS R18 R19 K22 ["SearchOptions"]
  GETTABLEKS R17 R18 K24 ["SearchOptionsEntry"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K11 ["Core"]
  GETTABLEKS R20 R21 K20 ["Components"]
  GETTABLEKS R19 R20 K22 ["SearchOptions"]
  GETTABLEKS R18 R19 K25 ["SearchOptionsLayout"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R22 R0 K11 ["Core"]
  GETTABLEKS R21 R22 K20 ["Components"]
  GETTABLEKS R20 R21 K22 ["SearchOptions"]
  GETTABLEKS R19 R20 K26 ["VerfifiedCreatorCheckbox"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K11 ["Core"]
  GETTABLEKS R21 R22 K16 ["ContextServices"]
  GETTABLEKS R20 R21 K27 ["IXPContext"]
  CALL R19 1 1
  GETTABLEKS R21 R4 K12 ["Util"]
  GETTABLEKS R20 R21 K28 ["LayoutOrderIterator"]
  GETIMPORT R21 K6 [require]
  GETTABLEKS R25 R0 K11 ["Core"]
  GETTABLEKS R24 R25 K29 ["Networking"]
  GETTABLEKS R23 R24 K30 ["Requests"]
  GETTABLEKS R22 R23 K31 ["UserSearchRequest"]
  CALL R21 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K11 ["Core"]
  GETTABLEKS R25 R26 K12 ["Util"]
  GETTABLEKS R24 R25 K32 ["ToolboxUtilities"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K33 ["showRobloxCreatedAssets"]
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K11 ["Core"]
  GETTABLEKS R25 R26 K34 ["Types"]
  GETTABLEKS R24 R25 K35 ["Category"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K11 ["Core"]
  GETTABLEKS R26 R27 K34 ["Types"]
  GETTABLEKS R25 R26 K36 ["SearchOptionsTypes"]
  CALL R24 1 1
  GETIMPORT R25 K38 [game]
  LOADK R27 K39 ["ToolboxLiveSearchDebounceWait"]
  NAMECALL R25 R25 K40 ["GetFastInt"]
  CALL R25 2 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R29 R0 K11 ["Core"]
  GETTABLEKS R28 R29 K41 ["Flags"]
  GETTABLEKS R27 R28 K42 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R26 1 1
  GETIMPORT R27 K6 [require]
  GETTABLEKS R29 R6 K43 ["SharedFlags"]
  GETTABLEKS R28 R29 K44 ["getIsIXPEnabledForAssetQualityFilter"]
  CALL R27 1 1
  GETTABLEKS R28 R2 K45 ["PureComponent"]
  LOADK R30 K46 ["MarketplaceSearchOptions"]
  NAMECALL R28 R28 K47 ["extend"]
  CALL R28 2 1
  DUPCLOSURE R29 K48 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R25
  CAPTURE VAL R5
  SETTABLEKS R29 R28 K49 ["init"]
  DUPCLOSURE R29 K50 [PROTO_11]
  SETTABLEKS R29 R28 K51 ["didMount"]
  DUPCLOSURE R29 K52 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R29 R28 K53 ["didUpdate"]
  DUPCLOSURE R29 K54 [PROTO_14]
  CAPTURE VAL R22
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R27
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R14
  SETTABLEKS R29 R28 K55 ["render"]
  MOVE R29 R11
  DUPTABLE R30 K59 [{"Localization", "Settings", "Network", "IXP"}]
  GETTABLEKS R31 R10 K56 ["Localization"]
  SETTABLEKS R31 R30 K56 ["Localization"]
  SETTABLEKS R12 R30 K18 ["Settings"]
  SETTABLEKS R13 R30 K57 ["Network"]
  MOVE R32 R26
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  MOVE R31 R19
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K58 ["IXP"]
  CALL R29 1 1
  MOVE R30 R28
  CALL R29 1 1
  MOVE R28 R29
  DUPCLOSURE R29 K60 [PROTO_15]
  CAPTURE VAL R26
  CAPTURE VAL R23
  DUPCLOSURE R30 K61 [PROTO_17]
  CAPTURE VAL R21
  GETTABLEKS R31 R3 K62 ["connect"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R28
  CALL R31 1 -1
  RETURN R31 -1
