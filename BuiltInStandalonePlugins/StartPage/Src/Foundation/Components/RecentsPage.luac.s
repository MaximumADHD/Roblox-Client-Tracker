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
        2 JUMPIF                           R1 ; [+67]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+64]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+61]
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
       54 JUMPIFNOT                        R1 ; [+36]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K14 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_cloud", ["isBuildGame"]}]
       58 GETUPVAL                         R6 12
       59 JUMPIFNOT                        R6 ; [+3]
       60 GETTABLEKS                       R5 R0 K15 ["IsBuildSealed"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K13 ["isBuildGame"]
       66 NAMECALL                         R1 R1 K16 ["log"]
       68 CALL                             R1 3 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
       72 JUMPIF                           R1 ; [+18]
       73 GETTABLEKS                       R1 R0 K17 ["FilePath"]
       75 JUMPIFNOT                        R1 ; [+15]
       76 GETUPVAL                         R1 13
       77 GETTABLEKS                       R3 R0 K17 ["FilePath"]
       79 LOADB                            R4 0
       80 NAMECALL                         R1 R1 K18 ["openLocalFile"]
       82 CALL                             R1 3 0
       83 GETUPVAL                         R1 9
       84 JUMPIFNOT                        R1 ; [+6]
       85 GETUPVAL                         R1 10
       86 GETUPVAL                         R3 11
       87 DUPTABLE                         R4 K20 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "recents_local"}]
       88 NAMECALL                         R1 R1 K16 ["log"]
       90 CALL                             R1 3 0
       91 RETURN                           R0 0

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
       64 CAPTURE                          UPVAL U18
       65 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       67 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       69 CALL                             R6 2 -1
       70 CLOSEUPVALS                      R2
       71 RETURN                           R6 -1

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
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       44 CALL                             R5 1 1
       45 CALL                             R5 0 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K10 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K14 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K10 ["SharedFlags"]
       62 GETTABLEKS                       R8 R8 K15 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["SharedFlags"]
       72 GETTABLEKS                       R9 R9 K16 ["getFFlagStartPageAllowDisableTeamCreate"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K10 ["SharedFlags"]
       82 GETTABLEKS                       R10 R10 K17 ["getFFlagStartPageSaveAsCopy"]
       84 CALL                             R9 1 1
       85 CALL                             R9 0 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K9 ["Src"]
       90 GETTABLEKS                       R11 R11 K10 ["SharedFlags"]
       92 GETTABLEKS                       R11 R11 K18 ["getFFlagLuaStartPageViewPlacesDialog"]
       94 CALL                             R10 1 1
       95 CALL                             R10 0 1
       96 GETIMPORT                        R11 K5 [require]
       98 GETTABLEKS                       R12 R0 K9 ["Src"]
      100 GETTABLEKS                       R12 R12 K19 ["Foundation"]
      102 GETTABLEKS                       R12 R12 K20 ["Components"]
      104 GETTABLEKS                       R12 R12 K21 ["GamePage"]
      106 CALL                             R11 1 1
      107 GETIMPORT                        R12 K5 [require]
      109 GETTABLEKS                       R13 R0 K9 ["Src"]
      111 GETTABLEKS                       R13 R13 K20 ["Components"]
      113 GETTABLEKS                       R13 R13 K22 ["InfoTile"]
      115 CALL                             R12 1 1
      116 GETIMPORT                        R13 K5 [require]
      118 GETTABLEKS                       R14 R0 K9 ["Src"]
      120 GETTABLEKS                       R14 R14 K20 ["Components"]
      122 GETTABLEKS                       R14 R14 K23 ["NetworkView"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K5 [require]
      127 GETTABLEKS                       R15 R0 K6 ["Packages"]
      129 GETTABLEKS                       R15 R15 K24 ["Framework"]
      131 CALL                             R14 1 1
      132 GETTABLEKS                       R15 R14 K25 ["ContextServices"]
      134 GETTABLEKS                       R15 R15 K26 ["Localization"]
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K9 ["Src"]
      140 GETTABLEKS                       R17 R17 K27 ["Util"]
      142 GETTABLEKS                       R17 R17 K28 ["Services"]
      144 CALL                             R16 1 1
      145 GETTABLEKS                       R17 R16 K29 ["StartPageManager"]
      147 GETTABLEKS                       R18 R16 K30 ["StudioService"]
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K9 ["Src"]
      153 GETTABLEKS                       R20 R20 K31 ["Network"]
      155 GETTABLEKS                       R20 R20 K32 ["DiscoverRecents"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R21 R0 K9 ["Src"]
      162 GETTABLEKS                       R21 R21 K31 ["Network"]
      164 GETTABLEKS                       R21 R21 K33 ["DiscoverCreatorEligibilityAndOpenPlace"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R22 R0 K9 ["Src"]
      171 GETTABLEKS                       R22 R22 K31 ["Network"]
      173 GETTABLEKS                       R22 R22 K34 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      175 CALL                             R21 1 1
      176 GETIMPORT                        R22 K5 [require]
      178 GETTABLEKS                       R23 R0 K9 ["Src"]
      180 GETTABLEKS                       R23 R23 K27 ["Util"]
      182 GETTABLEKS                       R23 R23 K35 ["Telemetry"]
      184 GETTABLEKS                       R23 R23 K36 ["TelemetryContext"]
      186 CALL                             R22 1 1
      187 GETIMPORT                        R23 K5 [require]
      189 GETTABLEKS                       R24 R0 K9 ["Src"]
      191 GETTABLEKS                       R24 R24 K27 ["Util"]
      193 GETTABLEKS                       R24 R24 K35 ["Telemetry"]
      195 GETTABLEKS                       R24 R24 K37 ["StartPageTelemetryEvent"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K9 ["Src"]
      202 GETTABLEKS                       R25 R25 K10 ["SharedFlags"]
      204 GETTABLEKS                       R25 R25 K38 ["getFFlagLuaStartPageTableContextMenu"]
      206 CALL                             R24 1 1
      207 CALL                             R24 0 1
      208 GETIMPORT                        R25 K5 [require]
      210 GETTABLEKS                       R26 R0 K9 ["Src"]
      212 GETTABLEKS                       R26 R26 K10 ["SharedFlags"]
      214 GETTABLEKS                       R26 R26 K39 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      216 CALL                             R25 1 1
      217 CALL                             R25 0 1
      218 GETIMPORT                        R26 K5 [require]
      220 GETTABLEKS                       R27 R0 K9 ["Src"]
      222 GETTABLEKS                       R27 R27 K40 ["Contexts"]
      224 GETTABLEKS                       R27 R27 K41 ["ContextMenuActions"]
      226 CALL                             R26 1 1
      227 GETIMPORT                        R27 K5 [require]
      229 GETTABLEKS                       R28 R0 K9 ["Src"]
      231 GETTABLEKS                       R28 R28 K27 ["Util"]
      233 GETTABLEKS                       R28 R28 K42 ["Dialogs"]
      235 CALL                             R27 1 1
      236 GETIMPORT                        R28 K5 [require]
      238 GETTABLEKS                       R29 R0 K6 ["Packages"]
      240 GETTABLEKS                       R29 R29 K43 ["Dash"]
      242 CALL                             R28 1 1
      243 GETTABLEKS                       R29 R28 K44 ["join"]
      245 GETIMPORT                        R30 K47 [UDim2.new]
      247 LOADN                            R31 0
      248 LOADN                            R32 200
      249 LOADN                            R33 0
      250 LOADN                            R34 200
      251 CALL                             R30 4 1
      252 GETIMPORT                        R31 K47 [UDim2.new]
      254 LOADN                            R32 0
      255 LOADN                            R33 225
      256 LOADN                            R34 0
      257 LOADN                            R35 348
      258 CALL                             R31 4 1
      259 DUPCLOSURE                       R32 K48 [PROTO_0]
      260 CAPTURE                          VAL R18
      261 GETIMPORT                        R33 K5 [require]
      263 GETTABLEKS                       R34 R0 K9 ["Src"]
      265 GETTABLEKS                       R34 R34 K49 ["Types"]
      267 CALL                             R33 1 1
      268 NEWTABLE                         R34 0 10
      270 LOADK                            R35 K50 ["ConfigureExperience"]
      271 JUMPIFNOT                        R10 ; [+2]
      272 LOADK                            R36 K51 ["ViewPlaces"]
      273 JUMP                             ; [+1]
      274 LOADK                            R36 K52 [""]
      275 LOADK                            R37 K53 ["ConfigurePlace"]
      276 LOADK                            R38 K54 ["OpenPlace"]
      277 LOADK                            R39 K55 ["OpenACopy"]
      278 JUMPIF                           R5 ; [+2]
      279 LOADK                            R40 K56 ["PublicPrivateToggle"]
      280 JUMP                             ; [+1]
      281 LOADK                            R40 K52 [""]
      282 LOADK                            R41 K57 ["Archive"]
      283 JUMPIFNOT                        R8 ; [+2]
      284 LOADK                            R42 K58 ["DisableTeamCreate"]
      285 JUMP                             ; [+1]
      286 LOADK                            R42 K52 [""]
      287 JUMPIFNOT                        R9 ; [+2]
      288 LOADK                            R43 K59 ["SaveAs"]
      289 JUMP                             ; [+1]
      290 LOADK                            R43 K52 [""]
      291 LOADK                            R44 K60 ["RemoveRecent"]
      292 SETLIST                          R34 R35 10 [1]
      294 DUPCLOSURE                       R35 K61 [PROTO_4]
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R12
      300 CAPTURE                          VAL R30
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R25
      303 CAPTURE                          VAL R26
      304 DUPCLOSURE                       R36 K62 [PROTO_6]
      305 CAPTURE                          VAL R2
      306 CAPTURE                          VAL R27
      307 CAPTURE                          VAL R7
      308 CAPTURE                          VAL R6
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R35
      314 CAPTURE                          VAL R34
      315 CAPTURE                          VAL R31
      316 CAPTURE                          VAL R19
      317 CAPTURE                          VAL R21
      318 CAPTURE                          VAL R18
      319 CAPTURE                          VAL R20
      320 CAPTURE                          VAL R3
      321 CAPTURE                          VAL R23
      322 CAPTURE                          VAL R4
      323 CAPTURE                          VAL R17
      324 DUPCLOSURE                       R37 K63 [PROTO_7]
      325 CAPTURE                          VAL R15
      326 CAPTURE                          VAL R1
      327 CAPTURE                          VAL R11
      328 CAPTURE                          VAL R36
      329 RETURN                           R37 1
