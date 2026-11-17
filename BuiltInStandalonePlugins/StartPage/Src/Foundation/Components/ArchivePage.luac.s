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
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["createElement"]
        6 GETUPVAL                         R3 3
        7 DUPTABLE                         R4 K4 [{"BaseQuery", "NetworkQuery", "NetworkViewProps"}]
        8 GETTABLEKS                       R5 R0 K1 ["BaseQuery"]
       10 SETTABLEKS                       R5 R4 K1 ["BaseQuery"]
       12 GETUPVAL                         R6 4
       13 JUMPIFNOT                        R6 ; [+6]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R6 R1 K5 ["selectedCreator"]
       18 CALL                             R5 1 1
       19 JUMP                             ; [+11]
       20 DUPTABLE                         R5 K9 [{["creatorType"] = "User", ["creatorTargetId"]}]
       21 GETUPVAL                         R7 6
       22 NAMECALL                         R7 R7 K10 ["GetUserId"]
       24 CALL                             R7 1 -1
       25 FASTCALL                         TOSTRING ; [+2]
       26 GETIMPORT                        R6 K12 [tostring]
       28 CALL                             R6 -1 1
       29 SETTABLEKS                       R6 R5 K8 ["creatorTargetId"]
       31 SETTABLEKS                       R5 R4 K2 ["NetworkQuery"]
       33 SETTABLEKS                       R0 R4 K3 ["NetworkViewProps"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

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
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 3
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 4
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 5
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R7 0 0
       20 CALL                             R5 2 0
       21 GETUPVAL                         R6 6
       22 JUMPIFNOT                        R6 ; [+14]
       23 LOADB                            R5 0
       24 JUMPIFEQKNIL                     R1 ; [+13]
       26 GETTABLEKS                       R6 R1 K1 ["selectedCreator"]
       28 GETTABLEKS                       R6 R6 K2 ["creatorType"]
       30 GETIMPORT                        R7 K6 [Enum.CreatorType.Group]
       32 JUMPIFEQ                         R6 R7 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 JUMP                             ; [+1]
       37 LOADB                            R5 0
       38 NEWTABLE                         R6 0 1
       40 DUPTABLE                         R7 K13 [{["Title"], ["FailedTitle"], ["Key"] = "Owned", ["PageComponent"], ["Dropdowns"]}]
       41 GETUPVAL                         R9 6
       42 JUMPIFNOT                        R9 ; [+6]
       43 LOADK                            R10 K14 ["Plugin"]
       44 LOADK                            R11 K15 ["PageMenu.Archive"]
       45 NAMECALL                         R8 R0 K16 ["getText"]
       47 CALL                             R8 3 1
       48 JUMP                             ; [+5]
       49 LOADK                            R10 K14 ["Plugin"]
       50 LOADK                            R11 K17 ["ArchivePage.Owned"]
       51 NAMECALL                         R8 R0 K16 ["getText"]
       53 CALL                             R8 3 1
       54 SETTABLEKS                       R8 R7 K7 ["Title"]
       56 LOADK                            R10 K14 ["Plugin"]
       57 LOADK                            R11 K18 ["NoExperiencesToDisplay"]
       58 NAMECALL                         R8 R0 K16 ["getText"]
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K8 ["FailedTitle"]
       63 GETUPVAL                         R8 8
       64 SETTABLEKS                       R8 R7 K11 ["PageComponent"]
       66 DUPTABLE                         R8 K22 [{["SortDropdown"], ["DefaultSortIndex"] = 4}]
       67 SETTABLEKS                       R4 R8 K19 ["SortDropdown"]
       69 SETTABLEKS                       R8 R7 K12 ["Dropdowns"]
       71 SETLIST                          R6 R7 1 [1]
       73 GETUPVAL                         R7 6
       74 JUMPIF                           R7 ; [+38]
       75 DUPTABLE                         R9 K23 [{["Title"], ["FailedTitle"], ["Key"] = "Group", ["PageComponent"], ["Dropdowns"]}]
       76 LOADK                            R12 K14 ["Plugin"]
       77 LOADK                            R13 K24 ["ArchivePage.Group"]
       78 NAMECALL                         R10 R0 K16 ["getText"]
       80 CALL                             R10 3 1
       81 SETTABLEKS                       R10 R9 K7 ["Title"]
       83 LOADK                            R12 K14 ["Plugin"]
       84 LOADK                            R13 K25 ["NoGroupExperiencesToDisplay"]
       85 NAMECALL                         R10 R0 K16 ["getText"]
       87 CALL                             R10 3 1
       88 SETTABLEKS                       R10 R9 K8 ["FailedTitle"]
       90 GETUPVAL                         R10 9
       91 SETTABLEKS                       R10 R9 K11 ["PageComponent"]
       93 DUPTABLE                         R10 K27 [{["SortDropdown"], ["DefaultSortIndex"] = 4, ["GroupDropdown"]}]
       94 SETTABLEKS                       R4 R10 K19 ["SortDropdown"]
       96 LENGTH                           R12 R2
       97 LOADN                            R13 0
       98 JUMPIFNOTLT                      R13 R12 ; [+3]
      100 MOVE                             R11 R2
      101 JUMP                             ; [+1]
      102 LOADNIL                          R11
      103 SETTABLEKS                       R11 R10 K26 ["GroupDropdown"]
      105 SETTABLEKS                       R10 R9 K12 ["Dropdowns"]
      107 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      109 MOVE                             R8 R6
      110 GETIMPORT                        R7 K30 [table.insert]
      112 CALL                             R7 2 0
      113 GETUPVAL                         R7 10
      114 GETTABLEKS                       R7 R7 K31 ["createElement"]
      116 GETUPVAL                         R8 11
      117 DUPTABLE                         R9 K42 [{["key"], ["PageName"] = "Archive", ["Tabs"], ["HideTabs"], ["CanSwapBetweenViews"] = True, ["IsDefaultGridView"] = True, ["HasSearchBar"] = True, ["CellPadding"]}]
      118 JUMPIFNOT                        R5 ; [+2]
      119 LOADK                            R10 K43 ["group"]
      120 JUMP                             ; [+1]
      121 LOADK                            R10 K44 ["user"]
      122 SETTABLEKS                       R10 R9 K32 ["key"]
      124 SETTABLEKS                       R6 R9 K35 ["Tabs"]
      126 GETUPVAL                         R10 6
      127 SETTABLEKS                       R10 R9 K36 ["HideTabs"]
      129 GETIMPORT                        R10 K47 [UDim2.new]
      131 LOADN                            R11 0
      132 LOADN                            R12 16
      133 LOADN                            R13 0
      134 LOADN                            R14 16
      135 CALL                             R10 4 1
      136 SETTABLEKS                       R10 R9 K41 ["CellPadding"]
      138 CALL                             R7 2 -1
      139 RETURN                           R7 -1

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
       46 GETTABLEKS                       R8 R8 K15 ["getFFlagLuaStartPageGroupSelector"]
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
      128 GETTABLEKS                       R19 R19 K29 ["Contexts"]
      130 GETTABLEKS                       R19 R19 K31 ["SelectedCreator"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K11 ["Src"]
      137 GETTABLEKS                       R20 R20 K21 ["Util"]
      139 GETTABLEKS                       R20 R20 K32 ["creatorIdentityToQuery"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K11 ["Src"]
      146 GETTABLEKS                       R21 R21 K33 ["Network"]
      148 GETTABLEKS                       R21 R21 K34 ["DiscoverGroups"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K11 ["Src"]
      155 GETTABLEKS                       R22 R22 K33 ["Network"]
      157 GETTABLEKS                       R22 R22 K35 ["DiscoverExperiences"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K11 ["Src"]
      164 GETTABLEKS                       R23 R23 K27 ["Foundation"]
      166 GETTABLEKS                       R23 R23 K24 ["Components"]
      168 GETTABLEKS                       R23 R23 K36 ["NoResultsFound"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K11 ["Src"]
      175 GETTABLEKS                       R24 R24 K33 ["Network"]
      177 GETTABLEKS                       R24 R24 K37 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K11 ["Src"]
      184 GETTABLEKS                       R25 R25 K21 ["Util"]
      186 GETTABLEKS                       R25 R25 K38 ["SortingOptions"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K5 [require]
      191 GETTABLEKS                       R26 R0 K11 ["Src"]
      193 GETTABLEKS                       R26 R26 K21 ["Util"]
      195 GETTABLEKS                       R26 R26 K39 ["Dialogs"]
      197 CALL                             R25 1 1
      198 GETIMPORT                        R26 K5 [require]
      200 GETTABLEKS                       R27 R0 K11 ["Src"]
      202 GETTABLEKS                       R27 R27 K12 ["SharedFlags"]
      204 GETTABLEKS                       R27 R27 K40 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      206 CALL                             R26 1 1
      207 CALL                             R26 0 1
      208 GETTABLEKS                       R27 R12 K41 ["StudioService"]
      210 GETIMPORT                        R28 K5 [require]
      212 GETTABLEKS                       R29 R0 K11 ["Src"]
      214 GETTABLEKS                       R29 R29 K21 ["Util"]
      216 GETTABLEKS                       R29 R29 K42 ["Telemetry"]
      218 GETTABLEKS                       R29 R29 K43 ["TelemetryContext"]
      220 CALL                             R28 1 1
      221 GETIMPORT                        R29 K5 [require]
      223 GETTABLEKS                       R30 R0 K11 ["Src"]
      225 GETTABLEKS                       R30 R30 K21 ["Util"]
      227 GETTABLEKS                       R30 R30 K42 ["Telemetry"]
      229 GETTABLEKS                       R30 R30 K44 ["StartPageTelemetryEvent"]
      231 CALL                             R29 1 1
      232 GETIMPORT                        R30 K47 [UDim2.new]
      234 LOADN                            R31 0
      235 LOADN                            R32 200
      236 LOADN                            R33 0
      237 LOADN                            R34 200
      238 CALL                             R30 4 1
      239 GETIMPORT                        R31 K47 [UDim2.new]
      241 LOADN                            R32 0
      242 LOADN                            R33 225
      243 LOADN                            R34 0
      244 LOADN                            R35 325
      245 CALL                             R31 4 1
      246 DUPCLOSURE                       R32 K48 [PROTO_0]
      247 CAPTURE                          VAL R9
      248 CAPTURE                          VAL R24
      249 DUPTABLE                         R33 K57 [{["searchKey"] = "Archive", ["isArchived"] = True, ["isTemplates"] = False, ["pageSize"] = 30}]
      250 NEWTABLE                         R34 0 2
      252 LOADK                            R35 K58 ["RestoreArchive"]
      253 LOADK                            R36 K59 ["SaveAs"]
      254 SETLIST                          R34 R35 2 [1]
      256 DUPCLOSURE                       R35 K60 [PROTO_2]
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R9
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R14
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R30
      266 CAPTURE                          VAL R23
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R26
      269 CAPTURE                          VAL R29
      270 CAPTURE                          VAL R34
      271 DUPCLOSURE                       R36 K61 [PROTO_4]
      272 CAPTURE                          VAL R11
      273 CAPTURE                          VAL R33
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R15
      276 CAPTURE                          VAL R31
      277 CAPTURE                          VAL R35
      278 CAPTURE                          VAL R21
      279 CAPTURE                          VAL R5
      280 CAPTURE                          VAL R6
      281 CAPTURE                          VAL R17
      282 CAPTURE                          VAL R34
      283 DUPCLOSURE                       R37 K62 [PROTO_5]
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R18
      286 CAPTURE                          VAL R1
      287 CAPTURE                          VAL R36
      288 CAPTURE                          VAL R7
      289 CAPTURE                          VAL R19
      290 CAPTURE                          VAL R27
      291 DUPCLOSURE                       R38 K63 [PROTO_6]
      292 CAPTURE                          VAL R9
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R22
      296 CAPTURE                          VAL R11
      297 DUPCLOSURE                       R39 K64 [PROTO_8]
      298 CAPTURE                          VAL R9
      299 CAPTURE                          VAL R4
      300 CAPTURE                          VAL R18
      301 CAPTURE                          VAL R2
      302 CAPTURE                          VAL R32
      303 CAPTURE                          VAL R3
      304 CAPTURE                          VAL R7
      305 CAPTURE                          VAL R20
      306 CAPTURE                          VAL R37
      307 CAPTURE                          VAL R38
      308 CAPTURE                          VAL R1
      309 CAPTURE                          VAL R16
      310 RETURN                           R39 1
