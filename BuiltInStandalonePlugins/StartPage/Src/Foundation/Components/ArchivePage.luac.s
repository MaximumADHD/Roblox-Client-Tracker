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
        2 JUMPIFNOT                        R1 ; [+52]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+24]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 NAMECALL                         R2 R2 K1 ["GetUserId"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K0 ["Id"]
       14 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       16 GETTABLEKS                       R5 R0 K2 ["RootPlaceId"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
       24 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       26 GETUPVAL                         R9 5
       27 GETUPVAL                         R10 6
       28 GETUPVAL                         R11 7
       29 CALL                             R1 10 0
       30 JUMP                             ; [+16]
       31 GETUPVAL                         R1 8
       32 GETUPVAL                         R2 3
       33 NAMECALL                         R2 R2 K1 ["GetUserId"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R0 K0 ["Id"]
       38 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K3 ["showVerifyAge"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K4 ["showAgeRestricted"]
       46 CALL                             R1 5 0
       47 GETUPVAL                         R1 9
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETUPVAL                         R1 10
       50 GETUPVAL                         R3 11
       51 DUPTABLE                         R4 K12 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "archive_page"}]
       52 NAMECALL                         R1 R1 K13 ["log"]
       54 CALL                             R1 3 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 GETUPVAL                         R6 3
       11 JUMPIF                           R6 ; [+2]
       12 GETUPVAL                         R6 4
       13 JUMPIFNOT                        R6 ; [+15]
       14 GETUPVAL                         R6 5
       15 GETTABLEKS                       R6 R6 K1 ["getDialogManager"]
       17 CALL                             R6 0 1
       18 MOVE                             R3 R6
       19 GETUPVAL                         R6 6
       20 NAMECALL                         R6 R6 K0 ["use"]
       22 CALL                             R6 1 1
       23 MOVE                             R5 R6
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R6 R6 K2 ["getActionsBridge"]
       27 CALL                             R6 0 1
       28 MOVE                             R4 R6
       29 GETUPVAL                         R6 7
       30 GETTABLEKS                       R6 R6 K3 ["createElement"]
       32 GETUPVAL                         R7 8
       33 GETUPVAL                         R8 9
       34 MOVE                             R9 R0
       35 DUPTABLE                         R10 K13 [{["ImageSize"], ["OnClick"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"]}]
       36 GETUPVAL                         R11 10
       37 SETTABLEKS                       R11 R10 K4 ["ImageSize"]
       39 NEWCLOSURE                       R11 P0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U12
       44 CAPTURE                          VAL R2
       45 CAPTURE                          REF R4
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R5
       48 CAPTURE                          UPVAL U13
       49 CAPTURE                          UPVAL U14
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U15
       52 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       54 GETUPVAL                         R11 16
       55 SETTABLEKS                       R11 R10 K12 ["KebabMenu"]
       57 CALL                             R8 2 -1
       58 CALL                             R6 -1 -1
       59 CLOSEUPVALS                      R3
       60 RETURN                           R6 -1

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
       42 GETTABLEKS                       R8 R0 K11 ["Src"]
       44 GETTABLEKS                       R8 R8 K12 ["SharedFlags"]
       46 GETTABLEKS                       R8 R8 K15 ["getFFlagStartPageSaveAsCopy"]
       48 CALL                             R7 1 1
       49 CALL                             R7 0 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Packages"]
       54 GETTABLEKS                       R9 R9 K16 ["Framework"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K17 ["ContextServices"]
       59 GETTABLEKS                       R9 R9 K18 ["Localization"]
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K6 ["Packages"]
       65 GETTABLEKS                       R11 R11 K19 ["Dash"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R10 K20 ["join"]
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K11 ["Src"]
       74 GETTABLEKS                       R13 R13 K21 ["Util"]
       76 GETTABLEKS                       R13 R13 K22 ["Services"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Src"]
       83 GETTABLEKS                       R14 R14 K23 ["Types"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K11 ["Src"]
       90 GETTABLEKS                       R15 R15 K24 ["Components"]
       92 GETTABLEKS                       R15 R15 K25 ["InfoTile"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K11 ["Src"]
       99 GETTABLEKS                       R16 R16 K24 ["Components"]
      101 GETTABLEKS                       R16 R16 K26 ["NetworkView"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K11 ["Src"]
      108 GETTABLEKS                       R17 R17 K27 ["Foundation"]
      110 GETTABLEKS                       R17 R17 K24 ["Components"]
      112 GETTABLEKS                       R17 R17 K28 ["GamePage"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K11 ["Src"]
      119 GETTABLEKS                       R18 R18 K29 ["Contexts"]
      121 GETTABLEKS                       R18 R18 K30 ["ContextMenuActions"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K11 ["Src"]
      128 GETTABLEKS                       R19 R19 K31 ["Network"]
      130 GETTABLEKS                       R19 R19 K32 ["DiscoverGroups"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K11 ["Src"]
      137 GETTABLEKS                       R20 R20 K31 ["Network"]
      139 GETTABLEKS                       R20 R20 K33 ["DiscoverExperiences"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K11 ["Src"]
      146 GETTABLEKS                       R21 R21 K27 ["Foundation"]
      148 GETTABLEKS                       R21 R21 K24 ["Components"]
      150 GETTABLEKS                       R21 R21 K34 ["NoResultsFound"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K11 ["Src"]
      157 GETTABLEKS                       R22 R22 K31 ["Network"]
      159 GETTABLEKS                       R22 R22 K35 ["DiscoverCreatorEligibilityAndOpenPlace"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K11 ["Src"]
      166 GETTABLEKS                       R23 R23 K31 ["Network"]
      168 GETTABLEKS                       R23 R23 K36 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K11 ["Src"]
      175 GETTABLEKS                       R24 R24 K21 ["Util"]
      177 GETTABLEKS                       R24 R24 K37 ["SortingOptions"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K11 ["Src"]
      184 GETTABLEKS                       R25 R25 K21 ["Util"]
      186 GETTABLEKS                       R25 R25 K38 ["Dialogs"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K5 [require]
      191 GETTABLEKS                       R26 R0 K11 ["Src"]
      193 GETTABLEKS                       R26 R26 K12 ["SharedFlags"]
      195 GETTABLEKS                       R26 R26 K39 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      197 CALL                             R25 1 1
      198 CALL                             R25 0 1
      199 GETTABLEKS                       R26 R12 K40 ["StudioService"]
      201 GETIMPORT                        R27 K5 [require]
      203 GETTABLEKS                       R28 R0 K11 ["Src"]
      205 GETTABLEKS                       R28 R28 K21 ["Util"]
      207 GETTABLEKS                       R28 R28 K41 ["Telemetry"]
      209 GETTABLEKS                       R28 R28 K42 ["TelemetryContext"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K5 [require]
      214 GETTABLEKS                       R29 R0 K11 ["Src"]
      216 GETTABLEKS                       R29 R29 K21 ["Util"]
      218 GETTABLEKS                       R29 R29 K41 ["Telemetry"]
      220 GETTABLEKS                       R29 R29 K43 ["StartPageTelemetryEvent"]
      222 CALL                             R28 1 1
      223 GETIMPORT                        R29 K5 [require]
      225 GETTABLEKS                       R30 R0 K11 ["Src"]
      227 GETTABLEKS                       R30 R30 K12 ["SharedFlags"]
      229 GETTABLEKS                       R30 R30 K44 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      231 CALL                             R29 1 1
      232 CALL                             R29 0 1
      233 GETIMPORT                        R30 K5 [require]
      235 GETTABLEKS                       R31 R0 K11 ["Src"]
      237 GETTABLEKS                       R31 R31 K12 ["SharedFlags"]
      239 GETTABLEKS                       R31 R31 K45 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      241 CALL                             R30 1 1
      242 CALL                             R30 0 1
      243 GETIMPORT                        R31 K48 [UDim2.new]
      245 LOADN                            R32 0
      246 LOADN                            R33 200
      247 LOADN                            R34 0
      248 LOADN                            R35 200
      249 CALL                             R31 4 1
      250 GETIMPORT                        R32 K48 [UDim2.new]
      252 LOADN                            R33 0
      253 LOADN                            R34 225
      254 LOADN                            R35 0
      255 LOADN                            R36 325
      256 CALL                             R32 4 1
      257 DUPCLOSURE                       R33 K49 [PROTO_0]
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R23
      260 DUPTABLE                         R34 K58 [{["searchKey"] = "Archive", ["isArchived"] = True, ["isTemplates"] = False, ["pageSize"] = 30}]
      261 NEWTABLE                         R35 0 2
      263 LOADK                            R36 K59 ["RestoreArchive"]
      264 JUMPIFNOT                        R7 ; [+2]
      265 LOADK                            R37 K60 ["SaveAs"]
      266 JUMP                             ; [+1]
      267 LOADK                            R37 K61 [""]
      268 SETLIST                          R35 R36 2 [1]
      270 DUPCLOSURE                       R36 K62 [PROTO_2]
      271 CAPTURE                          VAL R27
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R30
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R12
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R14
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R31
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R26
      284 CAPTURE                          VAL R21
      285 CAPTURE                          VAL R25
      286 CAPTURE                          VAL R28
      287 CAPTURE                          VAL R35
      288 DUPCLOSURE                       R37 K63 [PROTO_4]
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R34
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R15
      293 CAPTURE                          VAL R32
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R19
      296 CAPTURE                          VAL R5
      297 CAPTURE                          VAL R6
      298 CAPTURE                          VAL R17
      299 CAPTURE                          VAL R35
      300 DUPCLOSURE                       R38 K64 [PROTO_5]
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R37
      303 CAPTURE                          VAL R26
      304 DUPCLOSURE                       R39 K65 [PROTO_6]
      305 CAPTURE                          VAL R9
      306 CAPTURE                          VAL R1
      307 CAPTURE                          VAL R37
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R11
      310 DUPCLOSURE                       R40 K66 [PROTO_8]
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R33
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R18
      316 CAPTURE                          VAL R1
      317 CAPTURE                          VAL R16
      318 CAPTURE                          VAL R38
      319 CAPTURE                          VAL R39
      320 RETURN                           R40 1
