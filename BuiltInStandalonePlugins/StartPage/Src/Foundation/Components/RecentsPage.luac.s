PROTO_0:
        0 DUPTABLE                         R0 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
        1 LOADK                            R1 K10 ["Recents"]
        2 SETTABLEKS                       R1 R0 K0 ["searchKey"]
        4 LOADK                            R1 K11 [""]
        5 SETTABLEKS                       R1 R0 K1 ["search"]
        7 LOADK                            R1 K12 ["User"]
        8 SETTABLEKS                       R1 R0 K2 ["creatorType"]
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K13 ["GetUserId"]
       13 CALL                             R2 1 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R1 K15 [tostring]
       17 CALL                             R1 -1 1
       18 SETTABLEKS                       R1 R0 K3 ["creatorTargetId"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K4 ["isArchived"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K5 ["isTemplates"]
       26 LOADN                            R1 10
       27 SETTABLEKS                       R1 R0 K6 ["pageSize"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K7 ["getRecentLocalFiles"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K8 ["getRecentAPIGames"]
       35 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClick"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
        7 GETUPVAL                         R6 3
        8 SETTABLEKS                       R6 R5 K1 ["ImageSize"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R6 R5 K2 ["OnClick"]
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R6 R7 K3 ["IsPrivacyVisible"]
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R6 R7 K4 ["IsDateModifiedVisible"]
       22 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K5 ["IsDropdownMenuVisible"]
       27 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R6 R7 K6 ["IsCreatorNameVisible"]
       32 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R6 R7 K7 ["KebabMenu"]
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
        1 DUPTABLE                         R2 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
        2 LOADK                            R3 K10 ["Recents"]
        3 SETTABLEKS                       R3 R2 K0 ["searchKey"]
        5 LOADK                            R3 K11 [""]
        6 SETTABLEKS                       R3 R2 K1 ["search"]
        8 LOADK                            R3 K12 ["User"]
        9 SETTABLEKS                       R3 R2 K2 ["creatorType"]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K13 ["GetUserId"]
       14 CALL                             R4 1 -1
       15 FASTCALL                         TOSTRING ; [+2]
       16 GETIMPORT                        R3 K15 [tostring]
       18 CALL                             R3 -1 1
       19 SETTABLEKS                       R3 R2 K3 ["creatorTargetId"]
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K4 ["isArchived"]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K5 ["isTemplates"]
       27 LOADN                            R3 10
       28 SETTABLEKS                       R3 R2 K6 ["pageSize"]
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K7 ["getRecentLocalFiles"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K8 ["getRecentAPIGames"]
       36 GETTABLEKS                       R3 R0 K16 ["BaseQuery"]
       38 JUMPIF                           R3 ; [+2]
       39 NEWTABLE                         R3 0 0
       41 CALL                             R1 2 1
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K17 ["createElement"]
       45 GETUPVAL                         R3 3
       46 GETUPVAL                         R4 0
       47 DUPTABLE                         R5 K23 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
       48 GETUPVAL                         R6 0
       49 MOVE                             R7 R1
       50 GETTABLEKS                       R8 R0 K24 ["NetworkQuery"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K18 ["Query"]
       55 GETTABLEKS                       R6 R0 K19 ["CellSize"]
       57 SETTABLEKS                       R6 R5 K19 ["CellSize"]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R6 R5 K20 ["CellComponent"]
       67 GETTABLEKS                       R6 R0 K21 ["FetchItems"]
       69 SETTABLEKS                       R6 R5 K21 ["FetchItems"]
       71 NEWCLOSURE                       R6 P1
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R6 R5 K22 ["AdjustQuery"]
       76 GETTABLEKS                       R6 R0 K25 ["NetworkViewProps"]
       78 CALL                             R4 2 -1
       79 CALL                             R2 -1 1
       80 GETUPVAL                         R4 6
       81 JUMPIFNOT                        R4 ; [+14]
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R3 R4 K17 ["createElement"]
       85 GETUPVAL                         R5 7
       86 GETTABLEKS                       R4 R5 K26 ["Provider"]
       88 DUPTABLE                         R5 K28 [{"value"}]
       89 GETTABLEKS                       R6 R0 K29 ["KebabMenu"]
       91 SETTABLEKS                       R6 R5 K27 ["value"]
       93 MOVE                             R6 R2
       94 CALL                             R3 3 1
       95 RETURN                           R3 1
       96 MOVE                             R3 R2
       97 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+68]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+65]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+62]
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
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K4 ["showVerifyAge"]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R7 R8 K5 ["showAgeRestricted"]
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
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R5 R6 K4 ["showVerifyAge"]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R6 R7 K5 ["showAgeRestricted"]
       52 CALL                             R1 5 0
       53 GETUPVAL                         R1 9
       54 JUMPIFNOT                        R1 ; [+46]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K10 [{"telemetryType", "telemetrySubtype", "action"}]
       58 LOADK                            R5 K11 ["interaction"]
       59 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       61 LOADK                            R5 K12 ["place_open"]
       62 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       64 LOADK                            R5 K13 ["recents_cloud"]
       65 SETTABLEKS                       R5 R4 K9 ["action"]
       67 NAMECALL                         R1 R1 K14 ["log"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0
       71 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
       73 JUMPIF                           R1 ; [+27]
       74 GETTABLEKS                       R1 R0 K15 ["FilePath"]
       76 JUMPIFNOT                        R1 ; [+24]
       77 GETUPVAL                         R1 12
       78 GETTABLEKS                       R3 R0 K15 ["FilePath"]
       80 LOADB                            R4 0
       81 NAMECALL                         R1 R1 K16 ["openLocalFile"]
       83 CALL                             R1 3 0
       84 GETUPVAL                         R1 9
       85 JUMPIFNOT                        R1 ; [+15]
       86 GETUPVAL                         R1 10
       87 GETUPVAL                         R3 11
       88 DUPTABLE                         R4 K10 [{"telemetryType", "telemetrySubtype", "action"}]
       89 LOADK                            R5 K11 ["interaction"]
       90 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       92 LOADK                            R5 K12 ["place_open"]
       93 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       95 LOADK                            R5 K17 ["recents_local"]
       96 SETTABLEKS                       R5 R4 K9 ["action"]
       98 NAMECALL                         R1 R1 K14 ["log"]
      100 CALL                             R1 3 0
      101 RETURN                           R0 0

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
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R5 R6 K0 ["getDialogManager"]
       13 CALL                             R5 0 1
       14 MOVE                             R2 R5
       15 GETUPVAL                         R5 5
       16 NAMECALL                         R5 R5 K1 ["use"]
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R5 R6 K2 ["getActionsBridge"]
       23 CALL                             R5 0 1
       24 MOVE                             R3 R5
       25 GETUPVAL                         R5 6
       26 NAMECALL                         R5 R5 K1 ["use"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R7 7
       30 GETTABLEKS                       R6 R7 K3 ["createElement"]
       32 GETUPVAL                         R7 8
       33 DUPTABLE                         R8 K15 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R8 K5 ["IsPrivacyVisible"]
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K6 ["IsDateModifiedVisible"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K7 ["IsDropdownMenuVisible"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K8 ["IsCreatorNameVisible"]
       50 GETUPVAL                         R9 9
       51 SETTABLEKS                       R9 R8 K9 ["KebabMenu"]
       53 GETUPVAL                         R9 10
       54 SETTABLEKS                       R9 R8 K10 ["CellSize"]
       56 GETUPVAL                         R9 11
       57 SETTABLEKS                       R9 R8 K11 ["FetchItems"]
       59 DUPTABLE                         R9 K19 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
       60 LOADK                            R10 K20 ["Recents"]
       61 SETTABLEKS                       R10 R9 K16 ["searchKey"]
       63 LOADB                            R10 1
       64 SETTABLEKS                       R10 R9 K17 ["getRecentLocalFiles"]
       66 LOADB                            R10 1
       67 SETTABLEKS                       R10 R9 K18 ["getRecentAPIGames"]
       69 SETTABLEKS                       R9 R8 K12 ["NetworkQuery"]
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U12
       75 CAPTURE                          UPVAL U13
       76 CAPTURE                          VAL R1
       77 CAPTURE                          REF R3
       78 CAPTURE                          REF R2
       79 CAPTURE                          REF R4
       80 CAPTURE                          UPVAL U14
       81 CAPTURE                          UPVAL U15
       82 CAPTURE                          VAL R5
       83 CAPTURE                          UPVAL U16
       84 CAPTURE                          UPVAL U17
       85 SETTABLEKS                       R9 R8 K13 ["OnClick"]
       87 SETTABLEKS                       R0 R8 K14 ["NetworkViewProps"]
       89 CALL                             R6 2 -1
       90 CLOSEUPVALS                      R2
       91 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K8 [{"PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
        9 LOADK                            R4 K9 ["Recents"]
       10 SETTABLEKS                       R4 R3 K2 ["PageName"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["HideTabs"]
       15 NEWTABLE                         R4 0 1
       17 DUPTABLE                         R5 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       18 LOADK                            R8 K16 ["Plugin"]
       19 LOADK                            R9 K17 ["RecentsPage.Title"]
       20 NAMECALL                         R6 R0 K18 ["getText"]
       22 CALL                             R6 3 1
       23 SETTABLEKS                       R6 R5 K10 ["Title"]
       25 LOADK                            R8 K16 ["Plugin"]
       26 LOADK                            R9 K19 ["NoExperiencesToDisplay"]
       27 NAMECALL                         R6 R0 K18 ["getText"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K11 ["FailedTitle"]
       32 LOADK                            R6 K9 ["Recents"]
       33 SETTABLEKS                       R6 R5 K12 ["Key"]
       35 GETUPVAL                         R6 3
       36 SETTABLEKS                       R6 R5 K13 ["PageComponent"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K14 ["Dropdowns"]
       42 SETLIST                          R4 R5 1 [1]
       44 SETTABLEKS                       R4 R3 K4 ["Tabs"]
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R3 K5 ["CanSwapBetweenViews"]
       49 LOADB                            R4 1
       50 SETTABLEKS                       R4 R3 K6 ["IsDefaultGridView"]
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K7 ["HasSearchBar"]
       55 CALL                             R1 2 -1
       56 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useContext"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R5 K11 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       24 CALL                             R3 1 1
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Src"]
       30 GETTABLEKS                       R6 R7 K10 ["SharedFlags"]
       32 GETTABLEKS                       R5 R6 K12 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       34 CALL                             R4 1 1
       35 CALL                             R4 0 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R0 K9 ["Src"]
       40 GETTABLEKS                       R7 R8 K10 ["SharedFlags"]
       42 GETTABLEKS                       R6 R7 K13 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       44 CALL                             R5 1 1
       45 CALL                             R5 0 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K9 ["Src"]
       50 GETTABLEKS                       R8 R9 K10 ["SharedFlags"]
       52 GETTABLEKS                       R7 R8 K14 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R11 R0 K9 ["Src"]
       60 GETTABLEKS                       R10 R11 K15 ["Foundation"]
       62 GETTABLEKS                       R9 R10 K16 ["Components"]
       64 GETTABLEKS                       R8 R9 K17 ["GamePage"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R11 R0 K9 ["Src"]
       71 GETTABLEKS                       R10 R11 K16 ["Components"]
       73 GETTABLEKS                       R9 R10 K18 ["InfoTile"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R12 R0 K9 ["Src"]
       80 GETTABLEKS                       R11 R12 K16 ["Components"]
       82 GETTABLEKS                       R10 R11 K19 ["NetworkView"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Packages"]
       89 GETTABLEKS                       R11 R12 K20 ["Framework"]
       91 CALL                             R10 1 1
       92 GETTABLEKS                       R12 R10 K21 ["ContextServices"]
       94 GETTABLEKS                       R11 R12 K22 ["Localization"]
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R15 R0 K9 ["Src"]
      100 GETTABLEKS                       R14 R15 K23 ["Util"]
      102 GETTABLEKS                       R13 R14 K24 ["Services"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R12 K25 ["StartPageManager"]
      107 GETTABLEKS                       R14 R12 K26 ["StudioService"]
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R18 R0 K9 ["Src"]
      113 GETTABLEKS                       R17 R18 K27 ["Network"]
      115 GETTABLEKS                       R16 R17 K28 ["DiscoverRecents"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R19 R0 K9 ["Src"]
      122 GETTABLEKS                       R18 R19 K27 ["Network"]
      124 GETTABLEKS                       R17 R18 K29 ["DiscoverCreatorEligibilityAndOpenPlace"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R20 R0 K9 ["Src"]
      131 GETTABLEKS                       R19 R20 K27 ["Network"]
      133 GETTABLEKS                       R18 R19 K30 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R22 R0 K9 ["Src"]
      140 GETTABLEKS                       R21 R22 K23 ["Util"]
      142 GETTABLEKS                       R20 R21 K31 ["Telemetry"]
      144 GETTABLEKS                       R19 R20 K32 ["TelemetryContext"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R23 R0 K9 ["Src"]
      151 GETTABLEKS                       R22 R23 K23 ["Util"]
      153 GETTABLEKS                       R21 R22 K31 ["Telemetry"]
      155 GETTABLEKS                       R20 R21 K33 ["StartPageTelemetryEvent"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R23 R0 K9 ["Src"]
      162 GETTABLEKS                       R22 R23 K10 ["SharedFlags"]
      164 GETTABLEKS                       R21 R22 K34 ["getFFlagLuaStartPageTableContextMenu"]
      166 CALL                             R20 1 1
      167 CALL                             R20 0 1
      168 GETIMPORT                        R21 K5 [require]
      170 GETTABLEKS                       R24 R0 K9 ["Src"]
      172 GETTABLEKS                       R23 R24 K35 ["Contexts"]
      174 GETTABLEKS                       R22 R23 K36 ["ContextMenuActions"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K5 [require]
      179 GETTABLEKS                       R25 R0 K9 ["Src"]
      181 GETTABLEKS                       R24 R25 K23 ["Util"]
      183 GETTABLEKS                       R23 R24 K37 ["Dialogs"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K5 [require]
      188 GETTABLEKS                       R25 R0 K6 ["Packages"]
      190 GETTABLEKS                       R24 R25 K38 ["Dash"]
      192 CALL                             R23 1 1
      193 GETTABLEKS                       R24 R23 K39 ["join"]
      195 GETIMPORT                        R25 K42 [UDim2.new]
      197 LOADN                            R26 0
      198 LOADN                            R27 200
      199 LOADN                            R28 0
      200 LOADN                            R29 200
      201 CALL                             R25 4 1
      202 GETIMPORT                        R26 K42 [UDim2.new]
      204 LOADN                            R27 0
      205 LOADN                            R28 225
      206 LOADN                            R29 0
      207 LOADN                            R30 92
      208 CALL                             R26 4 1
      209 DUPCLOSURE                       R27 K43 [PROTO_0]
      210 CAPTURE                          VAL R14
      211 GETIMPORT                        R28 K5 [require]
      213 GETTABLEKS                       R30 R0 K9 ["Src"]
      215 GETTABLEKS                       R29 R30 K44 ["Types"]
      217 CALL                             R28 1 1
      218 NEWTABLE                         R29 0 6
      220 LOADK                            R30 K45 ["ConfigureExperience"]
      221 LOADK                            R31 K46 ["ConfigurePlace"]
      222 LOADK                            R32 K47 ["OpenPlace"]
      223 JUMPIF                           R4 ; [+2]
      224 LOADK                            R33 K48 ["PublicPrivateToggle"]
      225 JUMP                             ; [+1]
      226 LOADK                            R33 K49 [""]
      227 LOADK                            R34 K50 ["Archive"]
      228 LOADK                            R35 K51 ["RemoveRecent"]
      229 SETLIST                          R29 R30 6 [1]
      231 DUPCLOSURE                       R30 K52 [PROTO_4]
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R20
      239 CAPTURE                          VAL R21
      240 DUPCLOSURE                       R31 K53 [PROTO_6]
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R22
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R30
      250 CAPTURE                          VAL R29
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R13
      259 DUPCLOSURE                       R32 K54 [PROTO_7]
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R31
      264 RETURN                           R32 1
