PROTO_0:
        0 DUPTABLE                         R0 K15 [{[1] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K16 ["GetUserId"]
        4 CALL                             R2 1 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R1 K18 [tostring]
        8 CALL                             R1 -1 1
        9 SETTABLEKS                       R1 R0 K6 ["creatorTargetId"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClick"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
        7 GETUPVAL                         R6 3
        8 SETTABLEKS                       R6 R5 K1 ["ImageSize"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R6 R5 K2 ["OnClick"]
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R6 R6 K3 ["IsPrivacyVisible"]
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K4 ["IsDateModifiedVisible"]
       22 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K5 ["IsDropdownMenuVisible"]
       27 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K6 ["IsCreatorNameVisible"]
       32 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K7 ["KebabMenu"]
       37 SETTABLEKS                       R6 R5 K7 ["KebabMenu"]
       39 CALL                             R3 2 -1
       40 CALL                             R1 -1 -1
       41 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K15 [{[1] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K16 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R3 K18 [tostring]
        9 CALL                             R3 -1 1
       10 SETTABLEKS                       R3 R2 K6 ["creatorTargetId"]
       12 GETTABLEKS                       R3 R0 K19 ["BaseQuery"]
       14 JUMPIF                           R3 ; [+2]
       15 NEWTABLE                         R3 0 0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K20 ["createElement"]
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 0
       23 DUPTABLE                         R5 K26 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
       24 GETUPVAL                         R6 0
       25 MOVE                             R7 R1
       26 GETTABLEKS                       R8 R0 K27 ["NetworkQuery"]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K21 ["Query"]
       31 GETTABLEKS                       R6 R0 K22 ["CellSize"]
       33 SETTABLEKS                       R6 R5 K22 ["CellSize"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R6 R5 K23 ["CellComponent"]
       43 GETTABLEKS                       R6 R0 K24 ["FetchItems"]
       45 SETTABLEKS                       R6 R5 K24 ["FetchItems"]
       47 NEWCLOSURE                       R6 P1
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K25 ["AdjustQuery"]
       52 GETTABLEKS                       R6 R0 K28 ["NetworkViewProps"]
       54 CALL                             R4 2 -1
       55 CALL                             R2 -1 1
       56 GETUPVAL                         R4 6
       57 JUMPIF                           R4 ; [+2]
       58 GETUPVAL                         R4 7
       59 JUMPIFNOT                        R4 ; [+14]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K20 ["createElement"]
       63 GETUPVAL                         R4 8
       64 GETTABLEKS                       R4 R4 K29 ["Provider"]
       66 DUPTABLE                         R5 K31 [{"value"}]
       67 GETTABLEKS                       R6 R0 K32 ["KebabMenu"]
       69 SETTABLEKS                       R6 R5 K30 ["value"]
       71 MOVE                             R6 R2
       72 CALL                             R3 3 1
       73 RETURN                           R3 1
       74 MOVE                             R3 R2
       75 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+59]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+56]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+53]
        9 GETUPVAL                         R1 0
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+24]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 NAMECALL                         R2 R2 K3 ["GetUserId"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K1 ["Id"]
       20 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       22 GETTABLEKS                       R5 R0 K2 ["RootPlaceId"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K4 ["showVerifyAge"]
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K5 ["showAgeRestricted"]
       30 GETTABLEKS                       R8 R0 K6 ["IsTeamCreateEnabled"]
       32 GETUPVAL                         R9 5
       33 GETUPVAL                         R10 6
       34 GETUPVAL                         R11 7
       35 CALL                             R1 10 0
       36 JUMP                             ; [+16]
       37 GETUPVAL                         R1 8
       38 GETUPVAL                         R2 3
       39 NAMECALL                         R2 R2 K3 ["GetUserId"]
       41 CALL                             R2 1 1
       42 GETTABLEKS                       R3 R0 K1 ["Id"]
       44 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K4 ["showVerifyAge"]
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K5 ["showAgeRestricted"]
       52 CALL                             R1 5 0
       53 GETUPVAL                         R1 9
       54 JUMPIFNOT                        R1 ; [+28]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K13 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_cloud"}]
       58 NAMECALL                         R1 R1 K14 ["log"]
       60 CALL                             R1 3 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
       64 JUMPIF                           R1 ; [+18]
       65 GETTABLEKS                       R1 R0 K15 ["FilePath"]
       67 JUMPIFNOT                        R1 ; [+15]
       68 GETUPVAL                         R1 12
       69 GETTABLEKS                       R3 R0 K15 ["FilePath"]
       71 LOADB                            R4 0
       72 NAMECALL                         R1 R1 K16 ["openLocalFile"]
       74 CALL                             R1 3 0
       75 GETUPVAL                         R1 9
       76 JUMPIFNOT                        R1 ; [+6]
       77 GETUPVAL                         R1 10
       78 GETUPVAL                         R3 11
       79 DUPTABLE                         R4 K18 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_local"}]
       80 NAMECALL                         R1 R1 K14 ["log"]
       82 CALL                             R1 3 0
       83 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 2
        7 JUMPIF                           R5 ; [+2]
        8 GETUPVAL                         R5 3
        9 JUMPIFNOT                        R5 ; [+15]
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R5 R5 K0 ["getDialogManager"]
       13 CALL                             R5 0 1
       14 MOVE                             R2 R5
       15 GETUPVAL                         R5 5
       16 NAMECALL                         R5 R5 K1 ["use"]
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K2 ["getActionsBridge"]
       23 CALL                             R5 0 1
       24 MOVE                             R3 R5
       25 GETUPVAL                         R5 6
       26 NAMECALL                         R5 R5 K1 ["use"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 7
       30 GETTABLEKS                       R6 R6 K3 ["createElement"]
       32 GETUPVAL                         R7 8
       33 DUPTABLE                         R8 K16 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 GETUPVAL                         R9 9
       39 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       41 GETUPVAL                         R9 10
       42 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       44 GETUPVAL                         R9 11
       45 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       47 DUPTABLE                         R9 K21 [{["searchKey"] = "Recents", ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
       48 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          UPVAL U13
       55 CAPTURE                          VAL R1
       56 CAPTURE                          REF R3
       57 CAPTURE                          REF R2
       58 CAPTURE                          REF R4
       59 CAPTURE                          UPVAL U14
       60 CAPTURE                          UPVAL U15
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U16
       63 CAPTURE                          UPVAL U17
       64 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       66 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       68 CALL                             R6 2 -1
       69 CLOSEUPVALS                      R2
       70 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K10 [{["PageName"] = "Recents", ["HideTabs"] = True, ["Tabs"], ["CanSwapBetweenViews"] = True, ["IsDefaultGridView"] = True, ["HasSearchBar"] = True}]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K16 [{["Title"], ["FailedTitle"], ["Key"] = "Recents", ["PageComponent"], ["Dropdowns"]}]
       12 LOADK                            R8 K17 ["Plugin"]
       13 LOADK                            R9 K18 ["RecentsPage.Title"]
       14 NAMECALL                         R6 R0 K19 ["getText"]
       16 CALL                             R6 3 1
       17 SETTABLEKS                       R6 R5 K11 ["Title"]
       19 LOADK                            R8 K17 ["Plugin"]
       20 LOADK                            R9 K20 ["NoExperiencesToDisplay"]
       21 NAMECALL                         R6 R0 K19 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K12 ["FailedTitle"]
       26 GETUPVAL                         R6 3
       27 SETTABLEKS                       R6 R5 K14 ["PageComponent"]
       29 NEWTABLE                         R6 0 0
       31 SETTABLEKS                       R6 R5 K15 ["Dropdowns"]
       33 SETLIST                          R4 R5 1 [1]
       35 SETTABLEKS                       R4 R3 K6 ["Tabs"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useContext"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       24 CALL                             R3 1 1
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R5 K10 ["SharedFlags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       34 CALL                             R4 1 1
       35 CALL                             R4 0 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K9 ["Src"]
       40 GETTABLEKS                       R6 R6 K10 ["SharedFlags"]
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       44 CALL                             R5 1 1
       45 CALL                             R5 0 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K10 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K14 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K10 ["SharedFlags"]
       62 GETTABLEKS                       R8 R8 K15 ["getFFlagStartPageAllowDisableTeamCreate"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["SharedFlags"]
       72 GETTABLEKS                       R9 R9 K16 ["getFFlagStartPageSaveAsCopy"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K10 ["SharedFlags"]
       82 GETTABLEKS                       R10 R10 K17 ["getFFlagLuaStartPageViewPlacesDialog"]
       84 CALL                             R9 1 1
       85 CALL                             R9 0 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K9 ["Src"]
       90 GETTABLEKS                       R11 R11 K18 ["Foundation"]
       92 GETTABLEKS                       R11 R11 K19 ["Components"]
       94 GETTABLEKS                       R11 R11 K20 ["GamePage"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K9 ["Src"]
      101 GETTABLEKS                       R12 R12 K19 ["Components"]
      103 GETTABLEKS                       R12 R12 K21 ["InfoTile"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K9 ["Src"]
      110 GETTABLEKS                       R13 R13 K19 ["Components"]
      112 GETTABLEKS                       R13 R13 K22 ["NetworkView"]
      114 CALL                             R12 1 1
      115 GETIMPORT                        R13 K5 [require]
      117 GETTABLEKS                       R14 R0 K6 ["Packages"]
      119 GETTABLEKS                       R14 R14 K23 ["Framework"]
      121 CALL                             R13 1 1
      122 GETTABLEKS                       R14 R13 K24 ["ContextServices"]
      124 GETTABLEKS                       R14 R14 K25 ["Localization"]
      126 GETIMPORT                        R15 K5 [require]
      128 GETTABLEKS                       R16 R0 K9 ["Src"]
      130 GETTABLEKS                       R16 R16 K26 ["Util"]
      132 GETTABLEKS                       R16 R16 K27 ["Services"]
      134 CALL                             R15 1 1
      135 GETTABLEKS                       R16 R15 K28 ["StartPageManager"]
      137 GETTABLEKS                       R17 R15 K29 ["StudioService"]
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R19 R0 K9 ["Src"]
      143 GETTABLEKS                       R19 R19 K30 ["Network"]
      145 GETTABLEKS                       R19 R19 K31 ["DiscoverRecents"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K9 ["Src"]
      152 GETTABLEKS                       R20 R20 K30 ["Network"]
      154 GETTABLEKS                       R20 R20 K32 ["DiscoverCreatorEligibilityAndOpenPlace"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R21 R0 K9 ["Src"]
      161 GETTABLEKS                       R21 R21 K30 ["Network"]
      163 GETTABLEKS                       R21 R21 K33 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R22 R0 K9 ["Src"]
      170 GETTABLEKS                       R22 R22 K26 ["Util"]
      172 GETTABLEKS                       R22 R22 K34 ["Telemetry"]
      174 GETTABLEKS                       R22 R22 K35 ["TelemetryContext"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K5 [require]
      179 GETTABLEKS                       R23 R0 K9 ["Src"]
      181 GETTABLEKS                       R23 R23 K26 ["Util"]
      183 GETTABLEKS                       R23 R23 K34 ["Telemetry"]
      185 GETTABLEKS                       R23 R23 K36 ["StartPageTelemetryEvent"]
      187 CALL                             R22 1 1
      188 GETIMPORT                        R23 K5 [require]
      190 GETTABLEKS                       R24 R0 K9 ["Src"]
      192 GETTABLEKS                       R24 R24 K10 ["SharedFlags"]
      194 GETTABLEKS                       R24 R24 K37 ["getFFlagLuaStartPageTableContextMenu"]
      196 CALL                             R23 1 1
      197 CALL                             R23 0 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K9 ["Src"]
      202 GETTABLEKS                       R25 R25 K10 ["SharedFlags"]
      204 GETTABLEKS                       R25 R25 K38 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      206 CALL                             R24 1 1
      207 CALL                             R24 0 1
      208 GETIMPORT                        R25 K5 [require]
      210 GETTABLEKS                       R26 R0 K9 ["Src"]
      212 GETTABLEKS                       R26 R26 K39 ["Contexts"]
      214 GETTABLEKS                       R26 R26 K40 ["ContextMenuActions"]
      216 CALL                             R25 1 1
      217 GETIMPORT                        R26 K5 [require]
      219 GETTABLEKS                       R27 R0 K9 ["Src"]
      221 GETTABLEKS                       R27 R27 K26 ["Util"]
      223 GETTABLEKS                       R27 R27 K41 ["Dialogs"]
      225 CALL                             R26 1 1
      226 GETIMPORT                        R27 K5 [require]
      228 GETTABLEKS                       R28 R0 K6 ["Packages"]
      230 GETTABLEKS                       R28 R28 K42 ["Dash"]
      232 CALL                             R27 1 1
      233 GETTABLEKS                       R28 R27 K43 ["join"]
      235 GETIMPORT                        R29 K46 [UDim2.new]
      237 LOADN                            R30 0
      238 LOADN                            R31 200
      239 LOADN                            R32 0
      240 LOADN                            R33 200
      241 CALL                             R29 4 1
      242 GETIMPORT                        R30 K46 [UDim2.new]
      244 LOADN                            R31 0
      245 LOADN                            R32 225
      246 LOADN                            R33 0
      247 LOADN                            R34 348
      248 CALL                             R30 4 1
      249 DUPCLOSURE                       R31 K47 [PROTO_0]
      250 CAPTURE                          VAL R17
      251 GETIMPORT                        R32 K5 [require]
      253 GETTABLEKS                       R33 R0 K9 ["Src"]
      255 GETTABLEKS                       R33 R33 K48 ["Types"]
      257 CALL                             R32 1 1
      258 NEWTABLE                         R33 0 10
      260 LOADK                            R34 K49 ["ConfigureExperience"]
      261 JUMPIFNOT                        R9 ; [+2]
      262 LOADK                            R35 K50 ["ViewPlaces"]
      263 JUMP                             ; [+1]
      264 LOADK                            R35 K51 [""]
      265 LOADK                            R36 K52 ["ConfigurePlace"]
      266 LOADK                            R37 K53 ["OpenPlace"]
      267 LOADK                            R38 K54 ["OpenACopy"]
      268 JUMPIF                           R4 ; [+2]
      269 LOADK                            R39 K55 ["PublicPrivateToggle"]
      270 JUMP                             ; [+1]
      271 LOADK                            R39 K51 [""]
      272 LOADK                            R40 K56 ["Archive"]
      273 JUMPIFNOT                        R7 ; [+2]
      274 LOADK                            R41 K57 ["DisableTeamCreate"]
      275 JUMP                             ; [+1]
      276 LOADK                            R41 K51 [""]
      277 JUMPIFNOT                        R8 ; [+2]
      278 LOADK                            R42 K58 ["SaveAs"]
      279 JUMP                             ; [+1]
      280 LOADK                            R42 K51 [""]
      281 LOADK                            R43 K59 ["RemoveRecent"]
      282 SETLIST                          R33 R34 10 [1]
      284 DUPCLOSURE                       R34 K60 [PROTO_4]
      285 CAPTURE                          VAL R28
      286 CAPTURE                          VAL R17
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R29
      291 CAPTURE                          VAL R23
      292 CAPTURE                          VAL R24
      293 CAPTURE                          VAL R25
      294 DUPCLOSURE                       R35 K61 [PROTO_6]
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R26
      297 CAPTURE                          VAL R6
      298 CAPTURE                          VAL R5
      299 CAPTURE                          VAL R15
      300 CAPTURE                          VAL R14
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R34
      304 CAPTURE                          VAL R33
      305 CAPTURE                          VAL R30
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R20
      308 CAPTURE                          VAL R17
      309 CAPTURE                          VAL R19
      310 CAPTURE                          VAL R3
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R16
      313 DUPCLOSURE                       R36 K62 [PROTO_7]
      314 CAPTURE                          VAL R14
      315 CAPTURE                          VAL R1
      316 CAPTURE                          VAL R10
      317 CAPTURE                          VAL R35
      318 RETURN                           R36 1
