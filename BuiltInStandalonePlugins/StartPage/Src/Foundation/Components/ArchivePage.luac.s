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
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K8 ["GameName"]
       21 SETTABLEKS                       R4 R3 K9 ["sortParam"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K12 ["Asc"]
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
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K15 ["GameCreated"]
       45 SETTABLEKS                       R5 R4 K9 ["sortParam"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K12 ["Asc"]
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
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R6 R7 K15 ["GameCreated"]
       69 SETTABLEKS                       R6 R5 K9 ["sortParam"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K18 ["Desc"]
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
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R7 R8 K20 ["LastUpdated"]
       93 SETTABLEKS                       R7 R6 K9 ["sortParam"]
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R7 R8 K18 ["Desc"]
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
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K3 ["showVerifyAge"]
       21 GETUPVAL                         R8 4
       22 GETTABLEKS                       R7 R8 K4 ["showAgeRestricted"]
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
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R5 R6 K3 ["showVerifyAge"]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R6 R7 K4 ["showAgeRestricted"]
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
       14 GETUPVAL                         R7 5
       15 GETTABLEKS                       R6 R7 K1 ["getDialogManager"]
       17 CALL                             R6 0 1
       18 MOVE                             R3 R6
       19 GETUPVAL                         R6 6
       20 NAMECALL                         R6 R6 K0 ["use"]
       22 CALL                             R6 1 1
       23 MOVE                             R5 R6
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R6 R7 K2 ["getActionsBridge"]
       27 CALL                             R6 0 1
       28 MOVE                             R4 R6
       29 GETUPVAL                         R7 7
       30 GETTABLEKS                       R6 R7 K3 ["createElement"]
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
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["createElement"]
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
       40 JUMPIFNOT                        R4 ; [+13]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R3 R4 K1 ["createElement"]
       44 GETUPVAL                         R5 8
       45 GETTABLEKS                       R4 R5 K10 ["Provider"]
       47 DUPTABLE                         R5 K12 [{"value"}]
       48 GETUPVAL                         R6 9
       49 SETTABLEKS                       R6 R5 K11 ["value"]
       51 MOVE                             R6 R2
       52 CALL                             R3 3 1
       53 RETURN                           R3 1
       54 MOVE                             R3 R2
       55 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
        7 GETTABLEKS                       R3 R0 K1 ["BaseQuery"]
        9 GETTABLEKS                       R2 R3 K2 ["creatorTargetId"]
       11 JUMPIFNOT                        R2 ; [+19]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["createElement"]
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
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K3 ["createElement"]
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
       17 GETUPVAL                         R5 5
       18 GETTABLEKS                       R4 R5 K1 ["createElement"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useContext"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R8 R0 K11 ["Src"]
       24 GETTABLEKS                       R7 R8 K12 ["SharedFlags"]
       26 GETTABLEKS                       R6 R7 K13 ["getFFlagLuaStartPageTableContextMenu"]
       28 CALL                             R5 1 1
       29 CALL                             R5 0 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R8 R0 K6 ["Packages"]
       34 GETTABLEKS                       R7 R8 K14 ["Framework"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R8 R6 K15 ["ContextServices"]
       39 GETTABLEKS                       R7 R8 K16 ["Localization"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R10 R0 K6 ["Packages"]
       45 GETTABLEKS                       R9 R10 K17 ["Dash"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K18 ["join"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R13 R0 K11 ["Src"]
       54 GETTABLEKS                       R12 R13 K19 ["Util"]
       56 GETTABLEKS                       R11 R12 K20 ["Services"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R13 R0 K11 ["Src"]
       63 GETTABLEKS                       R12 R13 K21 ["Types"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R15 R0 K11 ["Src"]
       70 GETTABLEKS                       R14 R15 K22 ["Components"]
       72 GETTABLEKS                       R13 R14 K23 ["InfoTile"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R16 R0 K11 ["Src"]
       79 GETTABLEKS                       R15 R16 K22 ["Components"]
       81 GETTABLEKS                       R14 R15 K24 ["NetworkView"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R18 R0 K11 ["Src"]
       88 GETTABLEKS                       R17 R18 K25 ["Foundation"]
       90 GETTABLEKS                       R16 R17 K22 ["Components"]
       92 GETTABLEKS                       R15 R16 K26 ["GamePage"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R18 R0 K11 ["Src"]
       99 GETTABLEKS                       R17 R18 K27 ["Contexts"]
      101 GETTABLEKS                       R16 R17 K28 ["ContextMenuActions"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R19 R0 K11 ["Src"]
      108 GETTABLEKS                       R18 R19 K29 ["Network"]
      110 GETTABLEKS                       R17 R18 K30 ["DiscoverGroups"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R20 R0 K11 ["Src"]
      117 GETTABLEKS                       R19 R20 K29 ["Network"]
      119 GETTABLEKS                       R18 R19 K31 ["DiscoverExperiences"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R22 R0 K11 ["Src"]
      126 GETTABLEKS                       R21 R22 K25 ["Foundation"]
      128 GETTABLEKS                       R20 R21 K22 ["Components"]
      130 GETTABLEKS                       R19 R20 K32 ["NoResultsFound"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R22 R0 K11 ["Src"]
      137 GETTABLEKS                       R21 R22 K29 ["Network"]
      139 GETTABLEKS                       R20 R21 K33 ["DiscoverCreatorEligibilityAndOpenPlace"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R23 R0 K11 ["Src"]
      146 GETTABLEKS                       R22 R23 K29 ["Network"]
      148 GETTABLEKS                       R21 R22 K34 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R24 R0 K11 ["Src"]
      155 GETTABLEKS                       R23 R24 K19 ["Util"]
      157 GETTABLEKS                       R22 R23 K35 ["SortingOptions"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R25 R0 K11 ["Src"]
      164 GETTABLEKS                       R24 R25 K19 ["Util"]
      166 GETTABLEKS                       R23 R24 K36 ["Dialogs"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETTABLEKS                       R26 R0 K11 ["Src"]
      173 GETTABLEKS                       R25 R26 K12 ["SharedFlags"]
      175 GETTABLEKS                       R24 R25 K37 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      177 CALL                             R23 1 1
      178 CALL                             R23 0 1
      179 GETTABLEKS                       R24 R10 K38 ["StudioService"]
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R29 R0 K11 ["Src"]
      185 GETTABLEKS                       R28 R29 K19 ["Util"]
      187 GETTABLEKS                       R27 R28 K39 ["Telemetry"]
      189 GETTABLEKS                       R26 R27 K40 ["TelemetryContext"]
      191 CALL                             R25 1 1
      192 GETIMPORT                        R26 K5 [require]
      194 GETTABLEKS                       R30 R0 K11 ["Src"]
      196 GETTABLEKS                       R29 R30 K19 ["Util"]
      198 GETTABLEKS                       R28 R29 K39 ["Telemetry"]
      200 GETTABLEKS                       R27 R28 K41 ["StartPageTelemetryEvent"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K5 [require]
      205 GETTABLEKS                       R30 R0 K11 ["Src"]
      207 GETTABLEKS                       R29 R30 K12 ["SharedFlags"]
      209 GETTABLEKS                       R28 R29 K42 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      211 CALL                             R27 1 1
      212 CALL                             R27 0 1
      213 GETIMPORT                        R28 K5 [require]
      215 GETTABLEKS                       R31 R0 K11 ["Src"]
      217 GETTABLEKS                       R30 R31 K12 ["SharedFlags"]
      219 GETTABLEKS                       R29 R30 K43 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      221 CALL                             R28 1 1
      222 CALL                             R28 0 1
      223 GETIMPORT                        R29 K46 [UDim2.new]
      225 LOADN                            R30 0
      226 LOADN                            R31 200
      227 LOADN                            R32 0
      228 LOADN                            R33 200
      229 CALL                             R29 4 1
      230 GETIMPORT                        R30 K46 [UDim2.new]
      232 LOADN                            R31 0
      233 LOADN                            R32 225
      234 LOADN                            R33 0
      235 LOADN                            R34 69
      236 CALL                             R30 4 1
      237 DUPCLOSURE                       R31 K47 [PROTO_0]
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R21
      240 DUPTABLE                         R32 K52 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
      241 LOADK                            R33 K53 ["Archive"]
      242 SETTABLEKS                       R33 R32 K48 ["searchKey"]
      244 LOADB                            R33 1
      245 SETTABLEKS                       R33 R32 K49 ["isArchived"]
      247 LOADB                            R33 0
      248 SETTABLEKS                       R33 R32 K50 ["isTemplates"]
      250 LOADN                            R33 30
      251 SETTABLEKS                       R33 R32 K51 ["pageSize"]
      253 NEWTABLE                         R33 0 1
      255 LOADK                            R34 K54 ["RestoreArchive"]
      256 SETLIST                          R33 R34 1 [1]
      258 DUPCLOSURE                       R34 K55 [PROTO_2]
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R28
      263 CAPTURE                          VAL R27
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R7
      266 CAPTURE                          VAL R1
      267 CAPTURE                          VAL R12
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R29
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R33
      276 DUPCLOSURE                       R35 K56 [PROTO_4]
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R32
      279 CAPTURE                          VAL R1
      280 CAPTURE                          VAL R13
      281 CAPTURE                          VAL R30
      282 CAPTURE                          VAL R34
      283 CAPTURE                          VAL R17
      284 CAPTURE                          VAL R5
      285 CAPTURE                          VAL R15
      286 CAPTURE                          VAL R33
      287 DUPCLOSURE                       R36 K57 [PROTO_5]
      288 CAPTURE                          VAL R1
      289 CAPTURE                          VAL R35
      290 CAPTURE                          VAL R24
      291 DUPCLOSURE                       R37 K58 [PROTO_6]
      292 CAPTURE                          VAL R7
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R35
      295 CAPTURE                          VAL R18
      296 CAPTURE                          VAL R9
      297 DUPCLOSURE                       R38 K59 [PROTO_8]
      298 CAPTURE                          VAL R7
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R31
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R1
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R36
      306 CAPTURE                          VAL R37
      307 RETURN                           R38 1
