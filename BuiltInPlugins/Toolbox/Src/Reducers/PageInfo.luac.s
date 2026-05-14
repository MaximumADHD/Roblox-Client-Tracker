PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["sorts"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETIMPORT                        R2 K2 [warn]
        5 LOADK                            R3 K3 ["Lua Toolbox: Cannot change sorts array through UpdatePageInfo"]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K4 ["groups"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETIMPORT                        R2 K2 [warn]
       12 LOADK                            R3 K5 ["Lua Toolbox: Cannot change groups array through UpdatePageInfo"]
       13 CALL                             R2 1 0
       14 GETTABLEKS                       R2 R1 K6 ["sortIndex"]
       16 JUMPIFNOT                        R2 ; [+16]
       17 GETTABLEKS                       R2 R1 K6 ["sortIndex"]
       19 LOADN                            R3 1
       20 JUMPIFLT                         R2 R3 ; [+8]
       22 GETTABLEKS                       R2 R1 K6 ["sortIndex"]
       24 GETTABLEKS                       R4 R0 K0 ["sorts"]
       26 LENGTH                           R3 R4
       27 JUMPIFNOTLT                      R3 R2 ; [+5]
       29 GETIMPORT                        R2 K2 [warn]
       31 LOADK                            R3 K7 ["Lua Toolbox: sortIndex out of range in UpdatePageInfo"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R2 R1 K8 ["groupIndex"]
       35 JUMPIFEQKNIL                     R2 ; [+30]
       37 GETTABLEKS                       R2 R1 K8 ["groupIndex"]
       39 LOADN                            R3 0
       40 JUMPIFNOTLT                      R3 R2 ; [+25]
       42 GETTABLEKS                       R2 R1 K8 ["groupIndex"]
       44 GETTABLEKS                       R5 R0 K4 ["groups"]
       46 LENGTH                           R4 R5
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R4 ; [+3]
       50 LOADN                            R3 1
       51 JUMP                             ; [+1]
       52 LOADN                            R3 0
       53 JUMPIFLT                         R2 R3 ; [+8]
       55 GETTABLEKS                       R2 R1 K8 ["groupIndex"]
       57 GETTABLEKS                       R4 R0 K4 ["groups"]
       59 LENGTH                           R3 R4
       60 JUMPIFNOTLT                      R3 R2 ; [+5]
       62 GETIMPORT                        R2 K2 [warn]
       64 LOADK                            R3 K9 ["Lua Toolbox: groupIndex out of range in UpdatePageInfo"]
       65 CALL                             R2 1 0
       66 GETTABLEKS                       R2 R1 K6 ["sortIndex"]
       68 JUMPIFNOT                        R2 ; [+10]
       69 GETTABLEKS                       R3 R0 K0 ["sorts"]
       71 GETTABLEKS                       R4 R1 K6 ["sortIndex"]
       73 GETTABLE                         R2 R3 R4
       74 JUMPIF                           R2 ; [+4]
       75 GETIMPORT                        R2 K2 [warn]
       77 LOADK                            R3 K10 ["Lua Toolbox: Changing sortIndex but sortType is not valid in UpdatePageInfo"]
       78 CALL                             R2 1 0
       79 GETTABLEKS                       R2 R1 K8 ["groupIndex"]
       81 JUMPIFNOT                        R2 ; [+7]
       82 GETTABLEKS                       R3 R1 K8 ["groupIndex"]
       84 LOADN                            R4 0
       85 JUMPIFLT                         R4 R3 ; [+2]
       87 LOADB                            R2 0 +1
       88 LOADB                            R2 1
       89 JUMPIFNOT                        R2 ; [+24]
       90 GETTABLEKS                       R4 R0 K4 ["groups"]
       92 LENGTH                           R3 R4
       93 JUMPIFNOTEQKN                    R3 K11 [0] ; [+10]
       95 GETTABLEKS                       R3 R1 K8 ["groupIndex"]
       97 JUMPIFEQKN                       R3 K11 [0] ; [+16]
       99 GETIMPORT                        R3 K2 [warn]
      101 LOADK                            R4 K12 ["Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo"]
      102 CALL                             R3 1 0
      103 RETURN                           R0 0
      104 GETTABLEKS                       R4 R0 K4 ["groups"]
      106 GETTABLEKS                       R5 R1 K8 ["groupIndex"]
      108 GETTABLE                         R3 R4 R5
      109 JUMPIF                           R3 ; [+4]
      110 GETIMPORT                        R3 K2 [warn]
      112 LOADK                            R4 K12 ["Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo"]
      113 CALL                             R3 1 0
      114 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchTerm"}]
        7 GETTABLEKS                       R5 R1 K2 ["searchTerm"]
        9 SETTABLEKS                       R5 R4 K2 ["searchTerm"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["changes"]
        2 JUMPIF                           R2 ; [+10]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Toolbox UpdatePageInfo action.changes = nil"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 GETTABLEKS                       R4 R1 K0 ["changes"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       26 GETTABLEKS                       R2 R2 K6 ["join"]
       28 MOVE                             R3 R0
       29 GETTABLEKS                       R4 R1 K0 ["changes"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K7 ["IsUpdate"]
       35 GETTABLEKS                       R4 R2 K8 ["requestReason"]
       37 CALL                             R3 1 1
       38 JUMPIF                           R3 ; [+7]
       39 GETUPVAL                         R3 4
       40 LOADB                            R5 0
       41 NAMECALL                         R3 R3 K9 ["GenerateGUID"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K10 ["searchId"]
       46 GETTABLEKS                       R3 R1 K11 ["settings"]
       48 JUMPIFNOT                        R3 ; [+6]
       49 GETTABLEKS                       R3 R1 K11 ["settings"]
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K12 ["updateFromPageInfo"]
       54 CALL                             R3 2 0
       55 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["currentPage"]
        2 JUMPIF                           R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Toolbox SetCurrentPage action.currentPage = nil"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       15 GETTABLEKS                       R2 R2 K6 ["join"]
       17 MOVE                             R3 R0
       18 DUPTABLE                         R4 K7 [{"currentPage"}]
       19 GETTABLEKS                       R5 R1 K0 ["currentPage"]
       21 SETTABLEKS                       R5 R4 K0 ["currentPage"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"layoutMode"}]
        7 GETTABLEKS                       R5 R1 K2 ["layoutMode"]
        9 SETTABLEKS                       R5 R4 K2 ["layoutMode"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["groups"]
        2 JUMPIF                           R2 ; [+10]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Toolbox SetToolboxManageableGroups action.groups = nil"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 1
       13 NEWTABLE                         R2 0 0
       15 GETIMPORT                        R3 K6 [ipairs]
       17 GETTABLEKS                       R4 R1 K0 ["groups"]
       19 CALL                             R3 1 3
       20 FORGPREP_INEXT                   R3
       21 DUPTABLE                         R8 K9 [{"id", "name"}]
       22 GETTABLEKS                       R9 R7 K7 ["id"]
       24 SETTABLEKS                       R9 R8 K7 ["id"]
       26 GETTABLEKS                       R9 R7 K8 ["name"]
       28 SETTABLEKS                       R9 R8 K8 ["name"]
       30 SETTABLE                         R8 R2 R6
       31 FORGLOOP                         R3 2 [inext] ; [-11]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K10 ["Dictionary"]
       36 GETTABLEKS                       R3 R3 K11 ["join"]
       38 MOVE                             R4 R0
       39 DUPTABLE                         R5 K12 [{"groups"}]
       40 SETTABLEKS                       R2 R5 K0 ["groups"]
       42 CALL                             R3 2 1
       43 LENGTH                           R4 R2
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+23]
       47 LOADN                            R4 1
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K13 ["getGroupIdForPageInfo"]
       51 MOVE                             R6 R0
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [ipairs]
       55 MOVE                             R7 R2
       56 CALL                             R6 1 3
       57 FORGPREP_INEXT                   R6
       58 GETTABLEKS                       R11 R10 K7 ["id"]
       60 JUMPIFNOTEQ                      R11 R5 ; [+3]
       62 MOVE                             R4 R9
       63 JUMP                             ; [+2]
       64 FORGLOOP                         R6 2 [inext] ; [-7]
       66 SETTABLEKS                       R4 R3 K14 ["groupIndex"]
       68 RETURN                           R3 1
       69 LOADN                            R4 0
       70 SETTABLEKS                       R4 R3 K14 ["groupIndex"]
       72 GETTABLEKS                       R4 R3 K15 ["categoryName"]
       74 JUMPIFNOTEQKS                    R4 K16 [""] ; [+8]
       76 GETTABLEKS                       R5 R3 K17 ["categories"]
       78 GETTABLEN                        R4 R5 1
       79 GETTABLEKS                       R4 R4 K8 ["name"]
       81 SETTABLEKS                       R4 R3 K15 ["categoryName"]
       83 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"lastLoggedSearchId"}]
        7 GETTABLEKS                       R5 R1 K4 ["searchId"]
        9 SETTABLEKS                       R5 R4 K2 ["lastLoggedSearchId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"correctionState", "correctedQuery", "userQuery"}]
        7 GETTABLEKS                       R5 R1 K2 ["correctionState"]
        9 SETTABLEKS                       R5 R4 K2 ["correctionState"]
       11 GETTABLEKS                       R5 R1 K3 ["correctedQuery"]
       13 SETTABLEKS                       R5 R4 K3 ["correctedQuery"]
       15 GETTABLEKS                       R5 R1 K4 ["userQuery"]
       17 SETTABLEKS                       R5 R4 K4 ["userQuery"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Cryo"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["Rodux"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Util"]
       33 GETTABLEKS                       R6 R6 K14 ["DebugFlags"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Util"]
       42 GETTABLEKS                       R7 R7 K15 ["PageInfoHelper"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R8 R1 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["Types"]
       51 GETTABLEKS                       R8 R8 K17 ["Category"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R1 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K16 ["Types"]
       60 GETTABLEKS                       R9 R9 K18 ["Sort"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K9 [require]
       65 GETTABLEKS                       R10 R1 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K16 ["Types"]
       69 GETTABLEKS                       R10 R10 K19 ["RequestReason"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K9 [require]
       74 GETTABLEKS                       R11 R1 K12 ["Src"]
       76 GETTABLEKS                       R11 R11 K16 ["Types"]
       78 GETTABLEKS                       R11 R11 K20 ["AutocorrectTypes"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K9 [require]
       83 GETTABLEKS                       R12 R1 K12 ["Src"]
       85 GETTABLEKS                       R12 R12 K16 ["Types"]
       87 GETTABLEKS                       R12 R12 K21 ["LayoutMode"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K9 [require]
       92 GETTABLEKS                       R13 R1 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K16 ["Types"]
       96 GETTABLEKS                       R13 R13 K22 ["BackendTypes"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R1 K12 ["Src"]
      101 GETTABLEKS                       R13 R13 K23 ["Actions"]
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R13 K24 ["SetToolboxManageableGroups"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R16 R13 K25 ["UpdatePageInfo"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K9 [require]
      115 GETTABLEKS                       R17 R13 K26 ["UpdateSearchTerm"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R18 R13 K27 ["SetCurrentPage"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K9 [require]
      125 GETTABLEKS                       R19 R13 K28 ["SetLayoutMode"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K9 [require]
      130 GETTABLEKS                       R20 R13 K29 ["UpdateLastLoggedSearchId"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K9 [require]
      135 GETTABLEKS                       R21 R13 K30 ["SetAutocorrect"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K9 [require]
      140 GETTABLEKS                       R22 R1 K12 ["Src"]
      142 GETTABLEKS                       R22 R22 K13 ["Util"]
      144 GETTABLEKS                       R22 R22 K31 ["ToolboxUtilities"]
      146 CALL                             R21 1 1
      147 GETTABLEKS                       R21 R21 K32 ["disableMarketplaceAndRecents"]
      149 GETIMPORT                        R22 K9 [require]
      151 GETTABLEKS                       R23 R1 K12 ["Src"]
      153 GETTABLEKS                       R23 R23 K13 ["Util"]
      155 GETTABLEKS                       R23 R23 K33 ["SharedFlags"]
      157 GETTABLEKS                       R23 R23 K34 ["getFFlagToolboxEnableAssetRows"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K9 [require]
      162 GETTABLEKS                       R24 R1 K12 ["Src"]
      164 GETTABLEKS                       R24 R24 K13 ["Util"]
      166 GETTABLEKS                       R24 R24 K33 ["SharedFlags"]
      168 GETTABLEKS                       R24 R24 K35 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K9 [require]
      173 GETTABLEKS                       R25 R1 K12 ["Src"]
      175 GETTABLEKS                       R25 R25 K13 ["Util"]
      177 GETTABLEKS                       R25 R25 K33 ["SharedFlags"]
      179 GETTABLEKS                       R25 R25 K36 ["getFFlagToolboxAddCreationsFilterToListView"]
      181 CALL                             R24 1 1
      182 GETIMPORT                        R25 K9 [require]
      184 GETTABLEKS                       R26 R1 K12 ["Src"]
      186 GETTABLEKS                       R26 R26 K13 ["Util"]
      188 GETTABLEKS                       R26 R26 K33 ["SharedFlags"]
      190 GETTABLEKS                       R26 R26 K37 ["getFFlagToolboxFixDefaultTabForCreations"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K9 [require]
      195 GETTABLEKS                       R27 R1 K12 ["Src"]
      197 GETTABLEKS                       R27 R27 K13 ["Util"]
      199 GETTABLEKS                       R27 R27 K33 ["SharedFlags"]
      201 GETTABLEKS                       R27 R27 K38 ["getFFlagToolboxExcludeGroupCreations"]
      203 CALL                             R26 1 1
      204 GETTABLEKS                       R27 R8 K39 ["SORT_OPTIONS"]
      206 LOADNIL                          R28
      207 MOVE                             R29 R25
      208 CALL                             R29 0 1
      209 JUMPIFNOT                        R29 ; [+3]
      210 GETTABLEKS                       R28 R7 K40 ["DEFAULT_TAB"]
      212 JUMP                             ; [+8]
      213 MOVE                             R29 R21
      214 CALL                             R29 0 1
      215 JUMPIFNOT                        R29 ; [+3]
      216 GETTABLEKS                       R28 R7 K41 ["INVENTORY"]
      218 JUMP                             ; [+2]
      219 GETTABLEKS                       R28 R7 K42 ["MARKETPLACE"]
      221 DUPCLOSURE                       R29 K43 [PROTO_0]
      222 LOADNIL                          R30
      223 MOVE                             R31 R26
      224 CALL                             R31 0 1
      225 JUMPIFNOT                        R31 ; [+2]
      226 LOADB                            R30 1
      227 JUMP                             ; [+6]
      228 MOVE                             R31 R24
      229 CALL                             R31 0 1
      230 JUMPIFNOT                        R31 ; [+2]
      231 LOADB                            R30 0
      232 JUMP                             ; [+1]
      233 LOADNIL                          R30
      234 GETTABLEKS                       R31 R4 K44 ["createReducer"]
      236 DUPTABLE                         R32 K70 [{"audioSearchInfo", "additionalAudioSearchInfo", "categories", "categoryName", "searchTerm", "sorts", "sortIndex", "groups", "groupIndex", "targetPage", "currentPage", "selectedBackgroundIndex", "hoveredBackgroundIndex", "requestReason", "lastLoggedSearchId", "correctionState", "correctedQuery", "userQuery", "creatorTargetIds", "excludeGroupCreations", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent", "sortDirection", "layoutMode"}]
      237 LOADNIL                          R33
      238 SETTABLEKS                       R33 R32 K45 ["audioSearchInfo"]
      240 LOADNIL                          R33
      241 SETTABLEKS                       R33 R32 K46 ["additionalAudioSearchInfo"]
      243 SETTABLEKS                       R28 R32 K47 ["categories"]
      245 GETTABLEKS                       R33 R7 K71 ["DEFAULT"]
      247 GETTABLEKS                       R33 R33 K72 ["name"]
      249 SETTABLEKS                       R33 R32 K48 ["categoryName"]
      251 LOADK                            R33 K73 [""]
      252 SETTABLEKS                       R33 R32 K49 ["searchTerm"]
      254 SETTABLEKS                       R27 R32 K50 ["sorts"]
      256 LOADN                            R33 1
      257 SETTABLEKS                       R33 R32 K51 ["sortIndex"]
      259 NEWTABLE                         R33 0 0
      261 SETTABLEKS                       R33 R32 K52 ["groups"]
      263 LOADN                            R33 0
      264 SETTABLEKS                       R33 R32 K53 ["groupIndex"]
      266 LOADN                            R33 1
      267 SETTABLEKS                       R33 R32 K54 ["targetPage"]
      269 LOADN                            R33 0
      270 SETTABLEKS                       R33 R32 K55 ["currentPage"]
      272 LOADN                            R33 1
      273 SETTABLEKS                       R33 R32 K56 ["selectedBackgroundIndex"]
      275 LOADN                            R33 0
      276 SETTABLEKS                       R33 R32 K57 ["hoveredBackgroundIndex"]
      278 GETTABLEKS                       R33 R9 K74 ["InitLoad"]
      280 SETTABLEKS                       R33 R32 K58 ["requestReason"]
      282 LOADK                            R33 K73 [""]
      283 SETTABLEKS                       R33 R32 K59 ["lastLoggedSearchId"]
      285 GETTABLEKS                       R33 R10 K75 ["AutocorrectResponseState"]
      287 GETTABLEKS                       R33 R33 K76 ["NoCorrection"]
      289 SETTABLEKS                       R33 R32 K60 ["correctionState"]
      291 LOADK                            R33 K73 [""]
      292 SETTABLEKS                       R33 R32 K61 ["correctedQuery"]
      294 LOADK                            R33 K73 [""]
      295 SETTABLEKS                       R33 R32 K62 ["userQuery"]
      297 LOADNIL                          R33
      298 SETTABLEKS                       R33 R32 K63 ["creatorTargetIds"]
      300 SETTABLEKS                       R30 R32 K64 ["excludeGroupCreations"]
      302 LOADNIL                          R33
      303 SETTABLEKS                       R33 R32 K65 ["groupTargetIds"]
      305 LOADNIL                          R33
      306 SETTABLEKS                       R33 R32 K66 ["includeUnverifiedCreators"]
      308 LOADNIL                          R33
      309 SETTABLEKS                       R33 R32 K67 ["uiSortIntent"]
      311 LOADNIL                          R33
      312 SETTABLEKS                       R33 R32 K68 ["sortDirection"]
      314 MOVE                             R34 R22
      315 CALL                             R34 0 1
      316 JUMPIFNOT                        R34 ; [+3]
      317 GETTABLEKS                       R33 R11 K77 ["Grid"]
      319 JUMP                             ; [+1]
      320 LOADNIL                          R33
      321 SETTABLEKS                       R33 R32 K69 ["layoutMode"]
      323 NEWTABLE                         R33 8 0
      325 GETTABLEKS                       R34 R16 K72 ["name"]
      327 DUPCLOSURE                       R35 K78 [PROTO_1]
      328 CAPTURE                          VAL R3
      329 SETTABLE                         R35 R33 R34
      330 GETTABLEKS                       R34 R15 K72 ["name"]
      332 DUPCLOSURE                       R35 K79 [PROTO_2]
      333 CAPTURE                          VAL R5
      334 CAPTURE                          VAL R29
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R9
      337 CAPTURE                          VAL R0
      338 SETTABLE                         R35 R33 R34
      339 GETTABLEKS                       R34 R17 K72 ["name"]
      341 DUPCLOSURE                       R35 K80 [PROTO_3]
      342 CAPTURE                          VAL R5
      343 CAPTURE                          VAL R3
      344 SETTABLE                         R35 R33 R34
      345 GETTABLEKS                       R34 R18 K72 ["name"]
      347 MOVE                             R36 R22
      348 CALL                             R36 0 1
      349 JUMPIFNOT                        R36 ; [+3]
      350 DUPCLOSURE                       R35 K81 [PROTO_4]
      351 CAPTURE                          VAL R3
      352 JUMP                             ; [+1]
      353 LOADNIL                          R35
      354 SETTABLE                         R35 R33 R34
      355 GETTABLEKS                       R34 R14 K72 ["name"]
      357 DUPCLOSURE                       R35 K82 [PROTO_5]
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R6
      361 SETTABLE                         R35 R33 R34
      362 GETTABLEKS                       R34 R19 K72 ["name"]
      364 DUPCLOSURE                       R35 K83 [PROTO_6]
      365 CAPTURE                          VAL R3
      366 SETTABLE                         R35 R33 R34
      367 GETTABLEKS                       R34 R20 K72 ["name"]
      369 DUPCLOSURE                       R35 K84 [PROTO_7]
      370 CAPTURE                          VAL R3
      371 SETTABLE                         R35 R33 R34
      372 CALL                             R31 2 -1
      373 RETURN                           R31 -1
