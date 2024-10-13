PROTO_0:
  GETTABLEKS R2 R1 K0 ["sorts"]
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K3 ["Lua Toolbox: Cannot change sorts array through UpdatePageInfo"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K4 ["groups"]
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K5 ["Lua Toolbox: Cannot change groups array through UpdatePageInfo"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K6 ["sortIndex"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R1 K6 ["sortIndex"]
  LOADN R3 1
  JUMPIFLT R2 R3 [+8]
  GETTABLEKS R2 R1 K6 ["sortIndex"]
  GETTABLEKS R4 R0 K0 ["sorts"]
  LENGTH R3 R4
  JUMPIFNOTLT R3 R2 [+5]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K7 ["Lua Toolbox: sortIndex out of range in UpdatePageInfo"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K8 ["groupIndex"]
  JUMPIFEQKNIL R2 [+30]
  GETTABLEKS R2 R1 K8 ["groupIndex"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+25]
  GETTABLEKS R2 R1 K8 ["groupIndex"]
  GETTABLEKS R5 R0 K4 ["groups"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+3]
  LOADN R3 1
  JUMP [+1]
  LOADN R3 0
  JUMPIFLT R2 R3 [+8]
  GETTABLEKS R2 R1 K8 ["groupIndex"]
  GETTABLEKS R4 R0 K4 ["groups"]
  LENGTH R3 R4
  JUMPIFNOTLT R3 R2 [+5]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K9 ["Lua Toolbox: groupIndex out of range in UpdatePageInfo"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K6 ["sortIndex"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R3 R0 K0 ["sorts"]
  GETTABLEKS R4 R1 K6 ["sortIndex"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+4]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K10 ["Lua Toolbox: Changing sortIndex but sortType is not valid in UpdatePageInfo"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K8 ["groupIndex"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R1 K8 ["groupIndex"]
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+24]
  GETTABLEKS R4 R0 K4 ["groups"]
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K11 [0] [+10]
  GETTABLEKS R3 R1 K8 ["groupIndex"]
  JUMPIFEQKN R3 K11 [0] [+16]
  GETIMPORT R3 K2 [warn]
  LOADK R4 K12 ["Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K4 ["groups"]
  GETTABLEKS R5 R1 K8 ["groupIndex"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+4]
  GETIMPORT R3 K2 [warn]
  LOADK R4 K12 ["Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo"]
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"searchTerm"}]
  GETTABLEKS R5 R1 K2 ["searchTerm"]
  SETTABLEKS R5 R4 K2 ["searchTerm"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["changes"]
  JUMPIF R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Toolbox UpdatePageInfo action.changes = nil"]
  CALL R2 1 0
  RETURN R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 1
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["changes"]
  CALL R2 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["Dictionary"]
  GETTABLEKS R2 R3 K6 ["join"]
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["changes"]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["IsUpdate"]
  GETTABLEKS R4 R2 K8 ["requestReason"]
  CALL R3 1 1
  JUMPIF R3 [+7]
  GETUPVAL R3 4
  LOADB R5 0
  NAMECALL R3 R3 K9 ["GenerateGUID"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["searchId"]
  GETTABLEKS R3 R1 K11 ["settings"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R1 K11 ["settings"]
  MOVE R5 R2
  NAMECALL R3 R3 K12 ["updateFromPageInfo"]
  CALL R3 2 0
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["currentPage"]
  JUMPIF R2 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Toolbox SetCurrentPage action.currentPage = nil"]
  CALL R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["Dictionary"]
  GETTABLEKS R2 R3 K6 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K7 [{"currentPage"}]
  GETTABLEKS R5 R1 K0 ["currentPage"]
  SETTABLEKS R5 R4 K0 ["currentPage"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"layoutMode"}]
  GETTABLEKS R5 R1 K2 ["layoutMode"]
  SETTABLEKS R5 R4 K2 ["layoutMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["groups"]
  JUMPIF R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Toolbox SetToolboxManageableGroups action.groups = nil"]
  CALL R2 1 0
  RETURN R0 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K6 [ipairs]
  GETTABLEKS R4 R1 K0 ["groups"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  DUPTABLE R8 K9 [{"id", "name"}]
  GETTABLEKS R9 R7 K7 ["id"]
  SETTABLEKS R9 R8 K7 ["id"]
  GETTABLEKS R9 R7 K8 ["name"]
  SETTABLEKS R9 R8 K8 ["name"]
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [inext] [-11]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["Dictionary"]
  GETTABLEKS R3 R4 K11 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K12 [{"groups"}]
  SETTABLEKS R2 R5 K0 ["groups"]
  CALL R3 2 1
  LENGTH R4 R2
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+23]
  LOADN R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["getGroupIdForPageInfo"]
  MOVE R6 R0
  CALL R5 1 1
  GETIMPORT R6 K6 [ipairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K7 ["id"]
  JUMPIFNOTEQ R11 R5 [+3]
  MOVE R4 R9
  JUMP [+2]
  FORGLOOP R6 2 [inext] [-7]
  SETTABLEKS R4 R3 K14 ["groupIndex"]
  RETURN R3 1
  LOADN R4 0
  SETTABLEKS R4 R3 K14 ["groupIndex"]
  GETTABLEKS R4 R3 K15 ["categoryName"]
  JUMPIFNOTEQKS R4 K16 [""] [+8]
  GETTABLEKS R6 R3 K17 ["categories"]
  GETTABLEN R5 R6 1
  GETTABLEKS R4 R5 K8 ["name"]
  SETTABLEKS R4 R3 K15 ["categoryName"]
  RETURN R3 1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"lastLoggedSearchId"}]
  GETTABLEKS R5 R1 K4 ["searchId"]
  SETTABLEKS R5 R4 K2 ["lastLoggedSearchId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"correctionState", "correctedQuery", "userQuery"}]
  GETTABLEKS R5 R1 K2 ["correctionState"]
  SETTABLEKS R5 R4 K2 ["correctionState"]
  GETTABLEKS R5 R1 K3 ["correctedQuery"]
  SETTABLEKS R5 R4 K3 ["correctedQuery"]
  GETTABLEKS R5 R1 K4 ["userQuery"]
  SETTABLEKS R5 R4 K4 ["userQuery"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["DebugFlags"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["PageInfoHelper"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Core"]
  GETTABLEKS R9 R10 K16 ["Types"]
  GETTABLEKS R8 R9 K17 ["Category"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Core"]
  GETTABLEKS R10 R11 K16 ["Types"]
  GETTABLEKS R9 R10 K18 ["Sort"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Core"]
  GETTABLEKS R11 R12 K16 ["Types"]
  GETTABLEKS R10 R11 K19 ["RequestReason"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K12 ["Core"]
  GETTABLEKS R12 R13 K16 ["Types"]
  GETTABLEKS R11 R12 K20 ["AutocorrectTypes"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K12 ["Core"]
  GETTABLEKS R13 R14 K16 ["Types"]
  GETTABLEKS R12 R13 K21 ["LayoutMode"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K12 ["Core"]
  GETTABLEKS R14 R15 K16 ["Types"]
  GETTABLEKS R13 R14 K22 ["BackendTypes"]
  CALL R12 1 1
  GETTABLEKS R14 R1 K12 ["Core"]
  GETTABLEKS R13 R14 K23 ["Actions"]
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R13 K24 ["SetToolboxManageableGroups"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R13 K25 ["UpdatePageInfo"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R13 K26 ["UpdateSearchTerm"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R13 K27 ["SetCurrentPage"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R13 K28 ["SetLayoutMode"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R13 K29 ["UpdateLastLoggedSearchId"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R21 R13 K30 ["SetAutocorrect"]
  CALL R20 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R1 K12 ["Core"]
  GETTABLEKS R24 R25 K13 ["Util"]
  GETTABLEKS R23 R24 K31 ["ToolboxUtilities"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K32 ["disableMarketplaceAndRecents"]
  GETIMPORT R22 K9 [require]
  GETTABLEKS R26 R1 K12 ["Core"]
  GETTABLEKS R25 R26 K13 ["Util"]
  GETTABLEKS R24 R25 K33 ["SharedFlags"]
  GETTABLEKS R23 R24 K34 ["getFFlagToolboxEnableAssetRows"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R27 R1 K12 ["Core"]
  GETTABLEKS R26 R27 K13 ["Util"]
  GETTABLEKS R25 R26 K33 ["SharedFlags"]
  GETTABLEKS R24 R25 K35 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R28 R1 K12 ["Core"]
  GETTABLEKS R27 R28 K13 ["Util"]
  GETTABLEKS R26 R27 K33 ["SharedFlags"]
  GETTABLEKS R25 R26 K36 ["getFFlagToolboxAddCreationsFilterToListView"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R29 R1 K12 ["Core"]
  GETTABLEKS R28 R29 K13 ["Util"]
  GETTABLEKS R27 R28 K33 ["SharedFlags"]
  GETTABLEKS R26 R27 K37 ["getFFlagToolboxFixDefaultTabForCreations"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R30 R1 K12 ["Core"]
  GETTABLEKS R29 R30 K13 ["Util"]
  GETTABLEKS R28 R29 K33 ["SharedFlags"]
  GETTABLEKS R27 R28 K38 ["getFFlagToolboxExcludeGroupCreations"]
  CALL R26 1 1
  GETTABLEKS R27 R8 K39 ["SORT_OPTIONS"]
  LOADNIL R28
  MOVE R29 R25
  CALL R29 0 1
  JUMPIFNOT R29 [+3]
  GETTABLEKS R28 R7 K40 ["DEFAULT_TAB"]
  JUMP [+8]
  MOVE R29 R21
  CALL R29 0 1
  JUMPIFNOT R29 [+3]
  GETTABLEKS R28 R7 K41 ["INVENTORY"]
  JUMP [+2]
  GETTABLEKS R28 R7 K42 ["MARKETPLACE"]
  DUPCLOSURE R29 K43 [PROTO_0]
  LOADNIL R30
  MOVE R31 R26
  CALL R31 0 1
  JUMPIFNOT R31 [+2]
  LOADB R30 1
  JUMP [+6]
  MOVE R31 R24
  CALL R31 0 1
  JUMPIFNOT R31 [+2]
  LOADB R30 0
  JUMP [+1]
  LOADNIL R30
  GETTABLEKS R31 R4 K44 ["createReducer"]
  DUPTABLE R32 K70 [{"audioSearchInfo", "additionalAudioSearchInfo", "categories", "categoryName", "searchTerm", "sorts", "sortIndex", "groups", "groupIndex", "targetPage", "currentPage", "selectedBackgroundIndex", "hoveredBackgroundIndex", "requestReason", "lastLoggedSearchId", "correctionState", "correctedQuery", "userQuery", "creatorTargetIds", "excludeGroupCreations", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent", "sortDirection", "layoutMode"}]
  LOADNIL R33
  SETTABLEKS R33 R32 K45 ["audioSearchInfo"]
  LOADNIL R33
  SETTABLEKS R33 R32 K46 ["additionalAudioSearchInfo"]
  SETTABLEKS R28 R32 K47 ["categories"]
  GETTABLEKS R34 R7 K71 ["DEFAULT"]
  GETTABLEKS R33 R34 K72 ["name"]
  SETTABLEKS R33 R32 K48 ["categoryName"]
  LOADK R33 K73 [""]
  SETTABLEKS R33 R32 K49 ["searchTerm"]
  SETTABLEKS R27 R32 K50 ["sorts"]
  LOADN R33 1
  SETTABLEKS R33 R32 K51 ["sortIndex"]
  NEWTABLE R33 0 0
  SETTABLEKS R33 R32 K52 ["groups"]
  LOADN R33 0
  SETTABLEKS R33 R32 K53 ["groupIndex"]
  LOADN R33 1
  SETTABLEKS R33 R32 K54 ["targetPage"]
  LOADN R33 0
  SETTABLEKS R33 R32 K55 ["currentPage"]
  LOADN R33 1
  SETTABLEKS R33 R32 K56 ["selectedBackgroundIndex"]
  LOADN R33 0
  SETTABLEKS R33 R32 K57 ["hoveredBackgroundIndex"]
  GETTABLEKS R33 R9 K74 ["InitLoad"]
  SETTABLEKS R33 R32 K58 ["requestReason"]
  LOADK R33 K73 [""]
  SETTABLEKS R33 R32 K59 ["lastLoggedSearchId"]
  GETTABLEKS R34 R10 K75 ["AutocorrectResponseState"]
  GETTABLEKS R33 R34 K76 ["NoCorrection"]
  SETTABLEKS R33 R32 K60 ["correctionState"]
  LOADK R33 K73 [""]
  SETTABLEKS R33 R32 K61 ["correctedQuery"]
  LOADK R33 K73 [""]
  SETTABLEKS R33 R32 K62 ["userQuery"]
  LOADNIL R33
  SETTABLEKS R33 R32 K63 ["creatorTargetIds"]
  SETTABLEKS R30 R32 K64 ["excludeGroupCreations"]
  LOADNIL R33
  SETTABLEKS R33 R32 K65 ["groupTargetIds"]
  LOADNIL R33
  SETTABLEKS R33 R32 K66 ["includeUnverifiedCreators"]
  LOADNIL R33
  SETTABLEKS R33 R32 K67 ["uiSortIntent"]
  LOADNIL R33
  SETTABLEKS R33 R32 K68 ["sortDirection"]
  MOVE R34 R22
  CALL R34 0 1
  JUMPIFNOT R34 [+3]
  GETTABLEKS R33 R11 K77 ["Grid"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K69 ["layoutMode"]
  NEWTABLE R33 8 0
  GETTABLEKS R34 R16 K72 ["name"]
  DUPCLOSURE R35 K78 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R15 K72 ["name"]
  DUPCLOSURE R35 K79 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R29
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R0
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R17 K72 ["name"]
  DUPCLOSURE R35 K80 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R18 K72 ["name"]
  MOVE R36 R22
  CALL R36 0 1
  JUMPIFNOT R36 [+3]
  DUPCLOSURE R35 K81 [PROTO_4]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R35
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R14 K72 ["name"]
  DUPCLOSURE R35 K82 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R19 K72 ["name"]
  DUPCLOSURE R35 K83 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R20 K72 ["name"]
  DUPCLOSURE R35 K84 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R35 R33 R34
  CALL R31 2 -1
  RETURN R31 -1
