PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 4
        6 DUPTABLE                         R2 K5 [{["DropdownLabel"], ["Key"] = "GameName", ["Query"]}]
        7 LOADK                            R5 K6 ["Plugin"]
        8 LOADK                            R6 K7 ["SortOptions.Alphabetical"]
        9 NAMECALL                         R3 R0 K8 ["getText"]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["DropdownLabel"]
       14 DUPTABLE                         R3 K11 [{"sortParam", "sortOrder"}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["GameName"]
       18 SETTABLEKS                       R4 R3 K9 ["sortParam"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K12 ["Asc"]
       23 SETTABLEKS                       R4 R3 K10 ["sortOrder"]
       25 SETTABLEKS                       R3 R2 K4 ["Query"]
       27 DUPTABLE                         R3 K14 [{["DropdownLabel"], ["Key"] = "GameCreatedAsc", ["Query"]}]
       28 LOADK                            R6 K6 ["Plugin"]
       29 LOADK                            R7 K15 ["SortOptions.Created"]
       30 NAMECALL                         R4 R0 K8 ["getText"]
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K1 ["DropdownLabel"]
       35 DUPTABLE                         R4 K11 [{"sortParam", "sortOrder"}]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K16 ["GameCreated"]
       39 SETTABLEKS                       R5 R4 K9 ["sortParam"]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K12 ["Asc"]
       44 SETTABLEKS                       R5 R4 K10 ["sortOrder"]
       46 SETTABLEKS                       R4 R3 K4 ["Query"]
       48 DUPTABLE                         R4 K18 [{["DropdownLabel"], ["Key"] = "GameCreatedDesc", ["Query"]}]
       49 LOADK                            R7 K6 ["Plugin"]
       50 LOADK                            R8 K19 ["SortOptions.CreatedDescending"]
       51 NAMECALL                         R5 R0 K8 ["getText"]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K1 ["DropdownLabel"]
       56 DUPTABLE                         R5 K11 [{"sortParam", "sortOrder"}]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K16 ["GameCreated"]
       60 SETTABLEKS                       R6 R5 K9 ["sortParam"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K20 ["Desc"]
       65 SETTABLEKS                       R6 R5 K10 ["sortOrder"]
       67 SETTABLEKS                       R5 R4 K4 ["Query"]
       69 DUPTABLE                         R5 K22 [{["DropdownLabel"], ["Key"] = "LastUpdated", ["Query"]}]
       70 LOADK                            R8 K6 ["Plugin"]
       71 LOADK                            R9 K23 ["SortOptions.Modified"]
       72 NAMECALL                         R6 R0 K8 ["getText"]
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K1 ["DropdownLabel"]
       77 DUPTABLE                         R6 K11 [{"sortParam", "sortOrder"}]
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K21 ["LastUpdated"]
       81 SETTABLEKS                       R7 R6 K9 ["sortParam"]
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R7 R7 K20 ["Desc"]
       86 SETTABLEKS                       R7 R6 K10 ["sortOrder"]
       88 SETTABLEKS                       R6 R5 K4 ["Query"]
       90 SETLIST                          R1 R2 4 [1]
       92 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOT                        R1 ; [+31]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K0 ["Id"]
       10 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       12 GETTABLEKS                       R5 R0 K2 ["RootPlaceId"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
       20 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       22 GETUPVAL                         R9 3
       23 GETUPVAL                         R10 4
       24 GETUPVAL                         R11 5
       25 CALL                             R1 10 0
       26 GETUPVAL                         R1 6
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 7
       29 GETUPVAL                         R3 8
       30 DUPTABLE                         R4 K12 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "archive_page"}]
       31 NAMECALL                         R1 R1 K13 ["log"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["getDialogManager"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 4
       12 NAMECALL                         R4 R4 K0 ["use"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K2 ["getActionsBridge"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R6 R6 K3 ["createElement"]
       22 GETUPVAL                         R7 6
       23 GETUPVAL                         R8 7
       24 MOVE                             R9 R0
       25 DUPTABLE                         R10 K13 [{["ImageSize"], ["OnClick"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"]}]
       26 GETUPVAL                         R11 8
       27 SETTABLEKS                       R11 R10 K4 ["ImageSize"]
       29 NEWCLOSURE                       R11 P0
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U12
       39 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       41 GETUPVAL                         R11 13
       42 SETTABLEKS                       R11 R10 K12 ["KebabMenu"]
       44 CALL                             R8 2 -1
       45 CALL                             R6 -1 -1
       46 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["BaseQuery"]
        4 JUMPIF                           R3 ; [+2]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 0
       13 DUPTABLE                         R5 K7 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R1
       16 GETTABLEKS                       R8 R0 K8 ["NetworkQuery"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K2 ["Query"]
       21 GETUPVAL                         R6 4
       22 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       24 GETUPVAL                         R6 5
       25 SETTABLEKS                       R6 R5 K4 ["CellComponent"]
       27 GETUPVAL                         R6 6
       28 SETTABLEKS                       R6 R5 K5 ["FetchItems"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K6 ["AdjustQuery"]
       35 GETTABLEKS                       R6 R0 K9 ["NetworkViewProps"]
       37 CALL                             R4 2 -1
       38 CALL                             R2 -1 1
       39 GETUPVAL                         R4 7
       40 JUMPIF                           R4 ; [+2]
       41 GETUPVAL                         R4 8
       42 JUMPIFNOT                        R4 ; [+13]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K1 ["createElement"]
       46 GETUPVAL                         R4 9
       47 GETTABLEKS                       R4 R4 K10 ["Provider"]
       49 DUPTABLE                         R5 K12 [{"value"}]
       50 GETUPVAL                         R6 10
       51 SETTABLEKS                       R6 R5 K11 ["value"]
       53 MOVE                             R6 R2
       54 CALL                             R3 3 1
       55 RETURN                           R3 1
       56 MOVE                             R3 R2
       57 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"BaseQuery", "NetworkQuery", "NetworkViewProps"}]
        5 GETTABLEKS                       R4 R0 K1 ["BaseQuery"]
        7 SETTABLEKS                       R4 R3 K1 ["BaseQuery"]
        9 DUPTABLE                         R4 K8 [{["creatorType"] = "User", ["creatorTargetId"]}]
       10 GETUPVAL                         R6 2
       11 NAMECALL                         R6 R6 K9 ["GetUserId"]
       13 CALL                             R6 1 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R5 K11 [tostring]
       17 CALL                             R5 -1 1
       18 SETTABLEKS                       R5 R4 K7 ["creatorTargetId"]
       20 SETTABLEKS                       R4 R3 K2 ["NetworkQuery"]
       22 SETTABLEKS                       R0 R3 K3 ["NetworkViewProps"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["BaseQuery"]
        6 JUMPIFNOT                        R2 ; [+21]
        7 GETTABLEKS                       R2 R0 K1 ["BaseQuery"]
        9 GETTABLEKS                       R2 R2 K2 ["creatorTargetId"]
       11 JUMPIFNOT                        R2 ; [+16]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["createElement"]
       15 GETUPVAL                         R3 2
       16 DUPTABLE                         R4 K6 [{"BaseQuery", "NetworkQuery", "NetworkViewProps"}]
       17 GETTABLEKS                       R5 R0 K1 ["BaseQuery"]
       19 SETTABLEKS                       R5 R4 K1 ["BaseQuery"]
       21 DUPTABLE                         R5 K9 [{["creatorType"] = "Group"}]
       22 SETTABLEKS                       R5 R4 K4 ["NetworkQuery"]
       24 SETTABLEKS                       R0 R4 K5 ["NetworkViewProps"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K3 ["createElement"]
       31 GETUPVAL                         R3 3
       32 GETUPVAL                         R4 4
       33 MOVE                             R5 R0
       34 DUPTABLE                         R6 K11 [{"title"}]
       35 LOADK                            R9 K12 ["Plugin"]
       36 LOADK                            R10 K13 ["NoGroupsToDisplay"]
       37 NAMECALL                         R7 R1 K14 ["getText"]
       39 CALL                             R7 3 1
       40 SETTABLEKS                       R7 R6 K10 ["title"]
       42 CALL                             R4 2 -1
       43 CALL                             R2 -1 -1
       44 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 0
       16 CALL                             R4 2 0
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K1 ["createElement"]
       20 GETUPVAL                         R5 6
       21 DUPTABLE                         R6 K10 [{["PageName"] = "Archive", ["Tabs"], ["CanSwapBetweenViews"] = True, ["IsDefaultGridView"] = True, ["HasSearchBar"] = True, ["CellPadding"]}]
       22 NEWTABLE                         R7 0 2
       24 DUPTABLE                         R8 K17 [{["Title"], ["FailedTitle"], ["Key"] = "Owned", ["PageComponent"], ["Dropdowns"]}]
       25 LOADK                            R11 K18 ["Plugin"]
       26 LOADK                            R12 K19 ["ArchivePage.Owned"]
       27 NAMECALL                         R9 R0 K20 ["getText"]
       29 CALL                             R9 3 1
       30 SETTABLEKS                       R9 R8 K11 ["Title"]
       32 LOADK                            R11 K18 ["Plugin"]
       33 LOADK                            R12 K21 ["NoExperiencesToDisplay"]
       34 NAMECALL                         R9 R0 K20 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K12 ["FailedTitle"]
       39 GETUPVAL                         R9 7
       40 SETTABLEKS                       R9 R8 K15 ["PageComponent"]
       42 DUPTABLE                         R9 K25 [{["SortDropdown"], ["DefaultSortIndex"] = 4}]
       43 SETTABLEKS                       R3 R9 K22 ["SortDropdown"]
       45 SETTABLEKS                       R9 R8 K16 ["Dropdowns"]
       47 DUPTABLE                         R9 K27 [{["Title"], ["FailedTitle"], ["Key"] = "Group", ["PageComponent"], ["Dropdowns"]}]
       48 LOADK                            R12 K18 ["Plugin"]
       49 LOADK                            R13 K28 ["ArchivePage.Group"]
       50 NAMECALL                         R10 R0 K20 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K11 ["Title"]
       55 LOADK                            R12 K18 ["Plugin"]
       56 LOADK                            R13 K29 ["NoGroupExperiencesToDisplay"]
       57 NAMECALL                         R10 R0 K20 ["getText"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K12 ["FailedTitle"]
       62 GETUPVAL                         R10 8
       63 SETTABLEKS                       R10 R9 K15 ["PageComponent"]
       65 DUPTABLE                         R10 K31 [{["SortDropdown"], ["DefaultSortIndex"] = 4, ["GroupDropdown"]}]
       66 SETTABLEKS                       R3 R10 K22 ["SortDropdown"]
       68 LENGTH                           R12 R1
       69 LOADN                            R13 0
       70 JUMPIFNOTLT                      R13 R12 ; [+3]
       72 MOVE                             R11 R1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R11
       75 SETTABLEKS                       R11 R10 K30 ["GroupDropdown"]
       77 SETTABLEKS                       R10 R9 K16 ["Dropdowns"]
       79 SETLIST                          R7 R8 2 [1]
       81 SETTABLEKS                       R7 R6 K4 ["Tabs"]
       83 GETIMPORT                        R7 K34 [UDim2.new]
       85 LOADN                            R8 0
       86 LOADN                            R9 16
       87 LOADN                            R10 0
       88 LOADN                            R11 16
       89 CALL                             R7 4 1
       90 SETTABLEKS                       R7 R6 K9 ["CellPadding"]
       92 CALL                             R4 2 -1
       93 RETURN                           R4 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useContext"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K11 ["Src"]
       24 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       26 GETTABLEKS                       R6 R6 K13 ["getFFlagLuaStartPageTableContextMenu"]
       28 CALL                             R5 1 1
       29 CALL                             R5 0 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R7 K12 ["SharedFlags"]
       36 GETTABLEKS                       R7 R7 K14 ["getFFlagLuaStartPageAddKebabMenuToListView"]
       38 CALL                             R6 1 1
       39 CALL                             R6 0 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Packages"]
       44 GETTABLEKS                       R8 R8 K15 ["Framework"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       49 GETTABLEKS                       R8 R8 K17 ["Localization"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Packages"]
       55 GETTABLEKS                       R10 R10 K18 ["Dash"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R9 K19 ["join"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R12 K20 ["Util"]
       66 GETTABLEKS                       R12 R12 K21 ["Services"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K11 ["Src"]
       73 GETTABLEKS                       R13 R13 K22 ["Types"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K11 ["Src"]
       80 GETTABLEKS                       R14 R14 K23 ["Components"]
       82 GETTABLEKS                       R14 R14 K24 ["InfoTile"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K11 ["Src"]
       89 GETTABLEKS                       R15 R15 K23 ["Components"]
       91 GETTABLEKS                       R15 R15 K25 ["NetworkView"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R16 R0 K11 ["Src"]
       98 GETTABLEKS                       R16 R16 K26 ["Foundation"]
      100 GETTABLEKS                       R16 R16 K23 ["Components"]
      102 GETTABLEKS                       R16 R16 K27 ["GamePage"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K11 ["Src"]
      109 GETTABLEKS                       R17 R17 K28 ["Contexts"]
      111 GETTABLEKS                       R17 R17 K29 ["ContextMenuActions"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K11 ["Src"]
      118 GETTABLEKS                       R18 R18 K30 ["Network"]
      120 GETTABLEKS                       R18 R18 K31 ["DiscoverGroups"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K11 ["Src"]
      127 GETTABLEKS                       R19 R19 K30 ["Network"]
      129 GETTABLEKS                       R19 R19 K32 ["DiscoverExperiences"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K11 ["Src"]
      136 GETTABLEKS                       R20 R20 K26 ["Foundation"]
      138 GETTABLEKS                       R20 R20 K23 ["Components"]
      140 GETTABLEKS                       R20 R20 K33 ["NoResultsFound"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R0 K11 ["Src"]
      147 GETTABLEKS                       R21 R21 K30 ["Network"]
      149 GETTABLEKS                       R21 R21 K34 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R22 R0 K11 ["Src"]
      156 GETTABLEKS                       R22 R22 K20 ["Util"]
      158 GETTABLEKS                       R22 R22 K35 ["SortingOptions"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K5 [require]
      163 GETTABLEKS                       R23 R0 K11 ["Src"]
      165 GETTABLEKS                       R23 R23 K20 ["Util"]
      167 GETTABLEKS                       R23 R23 K36 ["Dialogs"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K5 [require]
      172 GETTABLEKS                       R24 R0 K11 ["Src"]
      174 GETTABLEKS                       R24 R24 K12 ["SharedFlags"]
      176 GETTABLEKS                       R24 R24 K37 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      178 CALL                             R23 1 1
      179 CALL                             R23 0 1
      180 GETTABLEKS                       R24 R11 K38 ["StudioService"]
      182 GETIMPORT                        R25 K5 [require]
      184 GETTABLEKS                       R26 R0 K11 ["Src"]
      186 GETTABLEKS                       R26 R26 K20 ["Util"]
      188 GETTABLEKS                       R26 R26 K39 ["Telemetry"]
      190 GETTABLEKS                       R26 R26 K40 ["TelemetryContext"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K5 [require]
      195 GETTABLEKS                       R27 R0 K11 ["Src"]
      197 GETTABLEKS                       R27 R27 K20 ["Util"]
      199 GETTABLEKS                       R27 R27 K39 ["Telemetry"]
      201 GETTABLEKS                       R27 R27 K41 ["StartPageTelemetryEvent"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K44 [UDim2.new]
      206 LOADN                            R28 0
      207 LOADN                            R29 200
      208 LOADN                            R30 0
      209 LOADN                            R31 200
      210 CALL                             R27 4 1
      211 GETIMPORT                        R28 K44 [UDim2.new]
      213 LOADN                            R29 0
      214 LOADN                            R30 225
      215 LOADN                            R31 0
      216 LOADN                            R32 325
      217 CALL                             R28 4 1
      218 DUPCLOSURE                       R29 K45 [PROTO_0]
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R21
      221 DUPTABLE                         R30 K54 [{["searchKey"] = "Archive", ["isArchived"] = True, ["isTemplates"] = False, ["pageSize"] = 30}]
      222 NEWTABLE                         R31 0 2
      224 LOADK                            R32 K55 ["RestoreArchive"]
      225 LOADK                            R33 K56 ["SaveAs"]
      226 SETLIST                          R31 R32 2 [1]
      228 DUPCLOSURE                       R32 K57 [PROTO_2]
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R20
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R31
      243 DUPCLOSURE                       R33 K58 [PROTO_4]
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R30
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R28
      249 CAPTURE                          VAL R32
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R16
      254 CAPTURE                          VAL R31
      255 DUPCLOSURE                       R34 K59 [PROTO_5]
      256 CAPTURE                          VAL R1
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R24
      259 DUPCLOSURE                       R35 K60 [PROTO_6]
      260 CAPTURE                          VAL R8
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R10
      265 DUPCLOSURE                       R36 K61 [PROTO_8]
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R2
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R34
      274 CAPTURE                          VAL R35
      275 RETURN                           R36 1
