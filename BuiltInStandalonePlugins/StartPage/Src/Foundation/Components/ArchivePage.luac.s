PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 4
        6 DUPTABLE                         R2 K4 [{"DropdownLabel", "Key", "Query"}]
        7 LOADK                            R5 K5 ["Plugin"]
        8 LOADK                            R6 K6 ["SortOptions.Alphabetical"]
        9 NAMECALL                         R3 R0 K7 ["getText"]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["DropdownLabel"]
       14 LOADK                            R3 K8 ["GameName"]
       15 SETTABLEKS                       R3 R2 K2 ["Key"]
       17 DUPTABLE                         R3 K11 [{"sortParam", "sortOrder"}]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K8 ["GameName"]
       21 SETTABLEKS                       R4 R3 K9 ["sortParam"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K12 ["Asc"]
       26 SETTABLEKS                       R4 R3 K10 ["sortOrder"]
       28 SETTABLEKS                       R3 R2 K3 ["Query"]
       30 DUPTABLE                         R3 K4 [{"DropdownLabel", "Key", "Query"}]
       31 LOADK                            R6 K5 ["Plugin"]
       32 LOADK                            R7 K13 ["SortOptions.Created"]
       33 NAMECALL                         R4 R0 K7 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K1 ["DropdownLabel"]
       38 LOADK                            R4 K14 ["GameCreatedAsc"]
       39 SETTABLEKS                       R4 R3 K2 ["Key"]
       41 DUPTABLE                         R4 K11 [{"sortParam", "sortOrder"}]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K15 ["GameCreated"]
       45 SETTABLEKS                       R5 R4 K9 ["sortParam"]
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K12 ["Asc"]
       50 SETTABLEKS                       R5 R4 K10 ["sortOrder"]
       52 SETTABLEKS                       R4 R3 K3 ["Query"]
       54 DUPTABLE                         R4 K4 [{"DropdownLabel", "Key", "Query"}]
       55 LOADK                            R7 K5 ["Plugin"]
       56 LOADK                            R8 K16 ["SortOptions.CreatedDescending"]
       57 NAMECALL                         R5 R0 K7 ["getText"]
       59 CALL                             R5 3 1
       60 SETTABLEKS                       R5 R4 K1 ["DropdownLabel"]
       62 LOADK                            R5 K17 ["GameCreatedDesc"]
       63 SETTABLEKS                       R5 R4 K2 ["Key"]
       65 DUPTABLE                         R5 K11 [{"sortParam", "sortOrder"}]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K15 ["GameCreated"]
       69 SETTABLEKS                       R6 R5 K9 ["sortParam"]
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K18 ["Desc"]
       74 SETTABLEKS                       R6 R5 K10 ["sortOrder"]
       76 SETTABLEKS                       R5 R4 K3 ["Query"]
       78 DUPTABLE                         R5 K4 [{"DropdownLabel", "Key", "Query"}]
       79 LOADK                            R8 K5 ["Plugin"]
       80 LOADK                            R9 K19 ["SortOptions.Modified"]
       81 NAMECALL                         R6 R0 K7 ["getText"]
       83 CALL                             R6 3 1
       84 SETTABLEKS                       R6 R5 K1 ["DropdownLabel"]
       86 LOADK                            R6 K20 ["LastUpdated"]
       87 SETTABLEKS                       R6 R5 K2 ["Key"]
       89 DUPTABLE                         R6 K11 [{"sortParam", "sortOrder"}]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K20 ["LastUpdated"]
       93 SETTABLEKS                       R7 R6 K9 ["sortParam"]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K18 ["Desc"]
       98 SETTABLEKS                       R7 R6 K10 ["sortOrder"]
      100 SETTABLEKS                       R6 R5 K3 ["Query"]
      102 SETLIST                          R1 R2 4 [1]
      104 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOT                        R1 ; [+61]
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
       48 JUMPIFNOT                        R1 ; [+15]
       49 GETUPVAL                         R1 10
       50 GETUPVAL                         R3 11
       51 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       52 LOADK                            R5 K10 ["interaction"]
       53 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       55 LOADK                            R5 K11 ["place_open"]
       56 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       58 LOADK                            R5 K12 ["archive_page"]
       59 SETTABLEKS                       R5 R4 K8 ["action"]
       61 NAMECALL                         R1 R1 K13 ["log"]
       63 CALL                             R1 3 0
       64 RETURN                           R0 0

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
       35 DUPTABLE                         R10 K11 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
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
       54 LOADB                            R11 1
       55 SETTABLEKS                       R11 R10 K6 ["IsPrivacyVisible"]
       57 LOADB                            R11 1
       58 SETTABLEKS                       R11 R10 K7 ["IsDateModifiedVisible"]
       60 LOADB                            R11 1
       61 SETTABLEKS                       R11 R10 K8 ["IsDropdownMenuVisible"]
       63 LOADB                            R11 0
       64 SETTABLEKS                       R11 R10 K9 ["IsCreatorNameVisible"]
       66 GETUPVAL                         R11 16
       67 SETTABLEKS                       R11 R10 K10 ["KebabMenu"]
       69 CALL                             R8 2 -1
       70 CALL                             R6 -1 -1
       71 CLOSEUPVALS                      R3
       72 RETURN                           R6 -1

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
        9 DUPTABLE                         R4 K7 [{"creatorType", "creatorTargetId"}]
       10 LOADK                            R5 K8 ["User"]
       11 SETTABLEKS                       R5 R4 K5 ["creatorType"]
       13 GETUPVAL                         R6 2
       14 NAMECALL                         R6 R6 K9 ["GetUserId"]
       16 CALL                             R6 1 -1
       17 FASTCALL                         TOSTRING ; [+2]
       18 GETIMPORT                        R5 K11 [tostring]
       20 CALL                             R5 -1 1
       21 SETTABLEKS                       R5 R4 K6 ["creatorTargetId"]
       23 SETTABLEKS                       R4 R3 K2 ["NetworkQuery"]
       25 SETTABLEKS                       R0 R3 K3 ["NetworkViewProps"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["BaseQuery"]
        6 JUMPIFNOT                        R2 ; [+24]
        7 GETTABLEKS                       R2 R0 K1 ["BaseQuery"]
        9 GETTABLEKS                       R2 R2 K2 ["creatorTargetId"]
       11 JUMPIFNOT                        R2 ; [+19]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["createElement"]
       15 GETUPVAL                         R3 2
       16 DUPTABLE                         R4 K6 [{"BaseQuery", "NetworkQuery", "NetworkViewProps"}]
       17 GETTABLEKS                       R5 R0 K1 ["BaseQuery"]
       19 SETTABLEKS                       R5 R4 K1 ["BaseQuery"]
       21 DUPTABLE                         R5 K8 [{"creatorType"}]
       22 LOADK                            R6 K9 ["Group"]
       23 SETTABLEKS                       R6 R5 K7 ["creatorType"]
       25 SETTABLEKS                       R5 R4 K4 ["NetworkQuery"]
       27 SETTABLEKS                       R0 R4 K5 ["NetworkViewProps"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K3 ["createElement"]
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R4 4
       36 MOVE                             R5 R0
       37 DUPTABLE                         R6 K11 [{"title"}]
       38 LOADK                            R9 K12 ["Plugin"]
       39 LOADK                            R10 K13 ["NoGroupsToDisplay"]
       40 NAMECALL                         R7 R1 K14 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K10 ["title"]
       45 CALL                             R4 2 -1
       46 CALL                             R2 -1 -1
       47 RETURN                           R2 -1

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
       21 DUPTABLE                         R6 K8 [{"PageName", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar", "CellPadding"}]
       22 LOADK                            R7 K9 ["Archive"]
       23 SETTABLEKS                       R7 R6 K2 ["PageName"]
       25 NEWTABLE                         R7 0 2
       27 DUPTABLE                         R8 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       28 LOADK                            R11 K16 ["Plugin"]
       29 LOADK                            R12 K17 ["ArchivePage.Owned"]
       30 NAMECALL                         R9 R0 K18 ["getText"]
       32 CALL                             R9 3 1
       33 SETTABLEKS                       R9 R8 K10 ["Title"]
       35 LOADK                            R11 K16 ["Plugin"]
       36 LOADK                            R12 K19 ["NoExperiencesToDisplay"]
       37 NAMECALL                         R9 R0 K18 ["getText"]
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R9 R8 K11 ["FailedTitle"]
       42 LOADK                            R9 K20 ["Owned"]
       43 SETTABLEKS                       R9 R8 K12 ["Key"]
       45 GETUPVAL                         R9 7
       46 SETTABLEKS                       R9 R8 K13 ["PageComponent"]
       48 DUPTABLE                         R9 K23 [{"SortDropdown", "DefaultSortIndex"}]
       49 SETTABLEKS                       R3 R9 K21 ["SortDropdown"]
       51 LOADN                            R10 4
       52 SETTABLEKS                       R10 R9 K22 ["DefaultSortIndex"]
       54 SETTABLEKS                       R9 R8 K14 ["Dropdowns"]
       56 DUPTABLE                         R9 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       57 LOADK                            R12 K16 ["Plugin"]
       58 LOADK                            R13 K24 ["ArchivePage.Group"]
       59 NAMECALL                         R10 R0 K18 ["getText"]
       61 CALL                             R10 3 1
       62 SETTABLEKS                       R10 R9 K10 ["Title"]
       64 LOADK                            R12 K16 ["Plugin"]
       65 LOADK                            R13 K25 ["NoGroupExperiencesToDisplay"]
       66 NAMECALL                         R10 R0 K18 ["getText"]
       68 CALL                             R10 3 1
       69 SETTABLEKS                       R10 R9 K11 ["FailedTitle"]
       71 LOADK                            R10 K26 ["Group"]
       72 SETTABLEKS                       R10 R9 K12 ["Key"]
       74 GETUPVAL                         R10 8
       75 SETTABLEKS                       R10 R9 K13 ["PageComponent"]
       77 DUPTABLE                         R10 K28 [{"SortDropdown", "DefaultSortIndex", "GroupDropdown"}]
       78 SETTABLEKS                       R3 R10 K21 ["SortDropdown"]
       80 LOADN                            R11 4
       81 SETTABLEKS                       R11 R10 K22 ["DefaultSortIndex"]
       83 LENGTH                           R12 R1
       84 LOADN                            R13 0
       85 JUMPIFNOTLT                      R13 R12 ; [+3]
       87 MOVE                             R11 R1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K27 ["GroupDropdown"]
       92 SETTABLEKS                       R10 R9 K14 ["Dropdowns"]
       94 SETLIST                          R7 R8 2 [1]
       96 SETTABLEKS                       R7 R6 K3 ["Tabs"]
       98 LOADB                            R7 1
       99 SETTABLEKS                       R7 R6 K4 ["CanSwapBetweenViews"]
      101 LOADB                            R7 1
      102 SETTABLEKS                       R7 R6 K5 ["IsDefaultGridView"]
      104 LOADB                            R7 1
      105 SETTABLEKS                       R7 R6 K6 ["HasSearchBar"]
      107 GETIMPORT                        R7 K31 [UDim2.new]
      109 LOADN                            R8 0
      110 LOADN                            R9 16
      111 LOADN                            R10 0
      112 LOADN                            R11 16
      113 CALL                             R7 4 1
      114 SETTABLEKS                       R7 R6 K7 ["CellPadding"]
      116 CALL                             R4 2 -1
      117 RETURN                           R4 -1

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
      149 GETTABLEKS                       R21 R21 K34 ["DiscoverCreatorEligibilityAndOpenPlace"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R22 R0 K11 ["Src"]
      156 GETTABLEKS                       R22 R22 K30 ["Network"]
      158 GETTABLEKS                       R22 R22 K35 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K5 [require]
      163 GETTABLEKS                       R23 R0 K11 ["Src"]
      165 GETTABLEKS                       R23 R23 K20 ["Util"]
      167 GETTABLEKS                       R23 R23 K36 ["SortingOptions"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K5 [require]
      172 GETTABLEKS                       R24 R0 K11 ["Src"]
      174 GETTABLEKS                       R24 R24 K20 ["Util"]
      176 GETTABLEKS                       R24 R24 K37 ["Dialogs"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K5 [require]
      181 GETTABLEKS                       R25 R0 K11 ["Src"]
      183 GETTABLEKS                       R25 R25 K12 ["SharedFlags"]
      185 GETTABLEKS                       R25 R25 K38 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      187 CALL                             R24 1 1
      188 CALL                             R24 0 1
      189 GETTABLEKS                       R25 R11 K39 ["StudioService"]
      191 GETIMPORT                        R26 K5 [require]
      193 GETTABLEKS                       R27 R0 K11 ["Src"]
      195 GETTABLEKS                       R27 R27 K20 ["Util"]
      197 GETTABLEKS                       R27 R27 K40 ["Telemetry"]
      199 GETTABLEKS                       R27 R27 K41 ["TelemetryContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K5 [require]
      204 GETTABLEKS                       R28 R0 K11 ["Src"]
      206 GETTABLEKS                       R28 R28 K20 ["Util"]
      208 GETTABLEKS                       R28 R28 K40 ["Telemetry"]
      210 GETTABLEKS                       R28 R28 K42 ["StartPageTelemetryEvent"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K5 [require]
      215 GETTABLEKS                       R29 R0 K11 ["Src"]
      217 GETTABLEKS                       R29 R29 K12 ["SharedFlags"]
      219 GETTABLEKS                       R29 R29 K43 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      221 CALL                             R28 1 1
      222 CALL                             R28 0 1
      223 GETIMPORT                        R29 K5 [require]
      225 GETTABLEKS                       R30 R0 K11 ["Src"]
      227 GETTABLEKS                       R30 R30 K12 ["SharedFlags"]
      229 GETTABLEKS                       R30 R30 K44 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      231 CALL                             R29 1 1
      232 CALL                             R29 0 1
      233 GETIMPORT                        R30 K47 [UDim2.new]
      235 LOADN                            R31 0
      236 LOADN                            R32 200
      237 LOADN                            R33 0
      238 LOADN                            R34 200
      239 CALL                             R30 4 1
      240 GETIMPORT                        R31 K47 [UDim2.new]
      242 LOADN                            R32 0
      243 LOADN                            R33 225
      244 LOADN                            R34 0
      245 LOADN                            R35 69
      246 CALL                             R31 4 1
      247 DUPCLOSURE                       R32 K48 [PROTO_0]
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R22
      250 DUPTABLE                         R33 K53 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
      251 LOADK                            R34 K54 ["Archive"]
      252 SETTABLEKS                       R34 R33 K49 ["searchKey"]
      254 LOADB                            R34 1
      255 SETTABLEKS                       R34 R33 K50 ["isArchived"]
      257 LOADB                            R34 0
      258 SETTABLEKS                       R34 R33 K51 ["isTemplates"]
      260 LOADN                            R34 30
      261 SETTABLEKS                       R34 R33 K52 ["pageSize"]
      263 NEWTABLE                         R34 0 1
      265 LOADK                            R35 K55 ["RestoreArchive"]
      266 SETLIST                          R34 R35 1 [1]
      268 DUPCLOSURE                       R35 K56 [PROTO_2]
      269 CAPTURE                          VAL R26
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R23
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R28
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R1
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R30
      280 CAPTURE                          VAL R21
      281 CAPTURE                          VAL R25
      282 CAPTURE                          VAL R20
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R27
      285 CAPTURE                          VAL R34
      286 DUPCLOSURE                       R36 K57 [PROTO_4]
      287 CAPTURE                          VAL R10
      288 CAPTURE                          VAL R33
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R31
      292 CAPTURE                          VAL R35
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R5
      295 CAPTURE                          VAL R6
      296 CAPTURE                          VAL R16
      297 CAPTURE                          VAL R34
      298 DUPCLOSURE                       R37 K58 [PROTO_5]
      299 CAPTURE                          VAL R1
      300 CAPTURE                          VAL R36
      301 CAPTURE                          VAL R25
      302 DUPCLOSURE                       R38 K59 [PROTO_6]
      303 CAPTURE                          VAL R8
      304 CAPTURE                          VAL R1
      305 CAPTURE                          VAL R36
      306 CAPTURE                          VAL R19
      307 CAPTURE                          VAL R10
      308 DUPCLOSURE                       R39 K60 [PROTO_8]
      309 CAPTURE                          VAL R8
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R3
      313 CAPTURE                          VAL R17
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R37
      317 CAPTURE                          VAL R38
      318 RETURN                           R39 1
