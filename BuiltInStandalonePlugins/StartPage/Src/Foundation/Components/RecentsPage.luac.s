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
        2 JUMPIF                           R1 ; [+46]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+43]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+40]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["GetUserId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K1 ["Id"]
       16 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       18 GETTABLEKS                       R5 R0 K2 ["RootPlaceId"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K4 ["showVerifyAge"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K5 ["showAgeRestricted"]
       26 GETTABLEKS                       R8 R0 K6 ["IsTeamCreateEnabled"]
       28 GETUPVAL                         R9 3
       29 GETUPVAL                         R10 4
       30 GETUPVAL                         R11 5
       31 CALL                             R1 10 0
       32 GETUPVAL                         R1 6
       33 JUMPIFNOT                        R1 ; [+36]
       34 GETUPVAL                         R1 7
       35 GETUPVAL                         R3 8
       36 DUPTABLE                         R4 K14 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_cloud", ["isBuildGame"]}]
       37 GETUPVAL                         R6 9
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R5 R0 K15 ["IsBuildSealed"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K13 ["isBuildGame"]
       45 NAMECALL                         R1 R1 K16 ["log"]
       47 CALL                             R1 3 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
       51 JUMPIF                           R1 ; [+18]
       52 GETTABLEKS                       R1 R0 K17 ["FilePath"]
       54 JUMPIFNOT                        R1 ; [+15]
       55 GETUPVAL                         R1 10
       56 GETTABLEKS                       R3 R0 K17 ["FilePath"]
       58 LOADB                            R4 0
       59 NAMECALL                         R1 R1 K18 ["openLocalFile"]
       61 CALL                             R1 3 0
       62 GETUPVAL                         R1 6
       63 JUMPIFNOT                        R1 ; [+6]
       64 GETUPVAL                         R1 7
       65 GETUPVAL                         R3 8
       66 DUPTABLE                         R4 K20 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_local"}]
       67 NAMECALL                         R1 R1 K16 ["log"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["getDialogManager"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["getActionsBridge"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 4
       16 NAMECALL                         R5 R5 K1 ["use"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R6 R6 K3 ["createElement"]
       22 GETUPVAL                         R7 6
       23 DUPTABLE                         R8 K16 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       24 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       26 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       28 GETUPVAL                         R9 7
       29 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       31 GETUPVAL                         R9 8
       32 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       34 GETUPVAL                         R9 9
       35 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       37 DUPTABLE                         R9 K21 [{["searchKey"] = "Recents", ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
       38 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U12
       48 CAPTURE                          VAL R5
       49 CAPTURE                          UPVAL U13
       50 CAPTURE                          UPVAL U14
       51 CAPTURE                          UPVAL U15
       52 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       54 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       56 CALL                             R6 2 -1
       57 RETURN                           R6 -1

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
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagStartPageBuildGameClickTelemetry"]
       34 CALL                             R4 1 1
       35 CALL                             R4 0 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K9 ["Src"]
       40 GETTABLEKS                       R6 R6 K10 ["SharedFlags"]
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagStartPageAllowDisableTeamCreate"]
       44 CALL                             R5 1 1
       45 CALL                             R5 0 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K10 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K14 ["getFFlagLuaStartPageViewPlacesDialog"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K15 ["Foundation"]
       62 GETTABLEKS                       R8 R8 K16 ["Components"]
       64 GETTABLEKS                       R8 R8 K17 ["GamePage"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R0 K9 ["Src"]
       71 GETTABLEKS                       R9 R9 K16 ["Components"]
       73 GETTABLEKS                       R9 R9 K18 ["InfoTile"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K16 ["Components"]
       82 GETTABLEKS                       R10 R10 K19 ["NetworkView"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K6 ["Packages"]
       89 GETTABLEKS                       R11 R11 K20 ["Framework"]
       91 CALL                             R10 1 1
       92 GETTABLEKS                       R11 R10 K21 ["ContextServices"]
       94 GETTABLEKS                       R11 R11 K22 ["Localization"]
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K9 ["Src"]
      100 GETTABLEKS                       R13 R13 K23 ["Util"]
      102 GETTABLEKS                       R13 R13 K24 ["Services"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R12 K25 ["StartPageManager"]
      107 GETTABLEKS                       R14 R12 K26 ["StudioService"]
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K9 ["Src"]
      113 GETTABLEKS                       R16 R16 K27 ["Network"]
      115 GETTABLEKS                       R16 R16 K28 ["DiscoverRecents"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K9 ["Src"]
      122 GETTABLEKS                       R17 R17 K27 ["Network"]
      124 GETTABLEKS                       R17 R17 K29 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R0 K9 ["Src"]
      131 GETTABLEKS                       R18 R18 K23 ["Util"]
      133 GETTABLEKS                       R18 R18 K30 ["Telemetry"]
      135 GETTABLEKS                       R18 R18 K31 ["TelemetryContext"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K9 ["Src"]
      142 GETTABLEKS                       R19 R19 K23 ["Util"]
      144 GETTABLEKS                       R19 R19 K30 ["Telemetry"]
      146 GETTABLEKS                       R19 R19 K32 ["StartPageTelemetryEvent"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K9 ["Src"]
      153 GETTABLEKS                       R20 R20 K10 ["SharedFlags"]
      155 GETTABLEKS                       R20 R20 K33 ["getFFlagLuaStartPageTableContextMenu"]
      157 CALL                             R19 1 1
      158 CALL                             R19 0 1
      159 GETIMPORT                        R20 K5 [require]
      161 GETTABLEKS                       R21 R0 K9 ["Src"]
      163 GETTABLEKS                       R21 R21 K10 ["SharedFlags"]
      165 GETTABLEKS                       R21 R21 K34 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      167 CALL                             R20 1 1
      168 CALL                             R20 0 1
      169 GETIMPORT                        R21 K5 [require]
      171 GETTABLEKS                       R22 R0 K9 ["Src"]
      173 GETTABLEKS                       R22 R22 K35 ["Contexts"]
      175 GETTABLEKS                       R22 R22 K36 ["ContextMenuActions"]
      177 CALL                             R21 1 1
      178 GETIMPORT                        R22 K5 [require]
      180 GETTABLEKS                       R23 R0 K9 ["Src"]
      182 GETTABLEKS                       R23 R23 K23 ["Util"]
      184 GETTABLEKS                       R23 R23 K37 ["Dialogs"]
      186 CALL                             R22 1 1
      187 GETIMPORT                        R23 K5 [require]
      189 GETTABLEKS                       R24 R0 K6 ["Packages"]
      191 GETTABLEKS                       R24 R24 K38 ["Dash"]
      193 CALL                             R23 1 1
      194 GETTABLEKS                       R24 R23 K39 ["join"]
      196 GETIMPORT                        R25 K42 [UDim2.new]
      198 LOADN                            R26 0
      199 LOADN                            R27 200
      200 LOADN                            R28 0
      201 LOADN                            R29 200
      202 CALL                             R25 4 1
      203 GETIMPORT                        R26 K42 [UDim2.new]
      205 LOADN                            R27 0
      206 LOADN                            R28 225
      207 LOADN                            R29 0
      208 LOADN                            R30 348
      209 CALL                             R26 4 1
      210 DUPCLOSURE                       R27 K43 [PROTO_0]
      211 CAPTURE                          VAL R14
      212 GETIMPORT                        R28 K5 [require]
      214 GETTABLEKS                       R29 R0 K9 ["Src"]
      216 GETTABLEKS                       R29 R29 K44 ["Types"]
      218 CALL                             R28 1 1
      219 NEWTABLE                         R29 0 9
      221 LOADK                            R30 K45 ["ConfigureExperience"]
      222 JUMPIFNOT                        R6 ; [+2]
      223 LOADK                            R31 K46 ["ViewPlaces"]
      224 JUMP                             ; [+1]
      225 LOADK                            R31 K47 [""]
      226 LOADK                            R32 K48 ["ConfigurePlace"]
      227 LOADK                            R33 K49 ["OpenPlace"]
      228 LOADK                            R34 K50 ["OpenACopy"]
      229 LOADK                            R35 K51 ["Archive"]
      230 JUMPIFNOT                        R5 ; [+2]
      231 LOADK                            R36 K52 ["DisableTeamCreate"]
      232 JUMP                             ; [+1]
      233 LOADK                            R36 K47 [""]
      234 LOADK                            R37 K53 ["SaveAs"]
      235 LOADK                            R38 K54 ["RemoveRecent"]
      236 SETLIST                          R29 R30 9 [1]
      238 DUPCLOSURE                       R30 K55 [PROTO_4]
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R25
      245 CAPTURE                          VAL R19
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R21
      248 DUPCLOSURE                       R31 K56 [PROTO_6]
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R16
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R18
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R13
      265 DUPCLOSURE                       R32 K57 [PROTO_7]
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R31
      270 RETURN                           R32 1
