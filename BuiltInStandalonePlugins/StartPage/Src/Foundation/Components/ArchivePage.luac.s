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
        2 JUMPIFNOT                        R1 ; [+33]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K0 ["Id"]
       10 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K3 ["showVerifyAge"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K4 ["showAgeRestricted"]
       18 CALL                             R1 5 0
       19 GETUPVAL                         R1 3
       20 JUMPIFNOT                        R1 ; [+15]
       21 GETUPVAL                         R1 4
       22 GETUPVAL                         R3 5
       23 DUPTABLE                         R4 K8 [{"telemetryType", "telemetrySubtype", "action"}]
       24 LOADK                            R5 K9 ["interaction"]
       25 SETTABLEKS                       R5 R4 K5 ["telemetryType"]
       27 LOADK                            R5 K10 ["place_open"]
       28 SETTABLEKS                       R5 R4 K6 ["telemetrySubtype"]
       30 LOADK                            R5 K11 ["archive_page"]
       31 SETTABLEKS                       R5 R4 K7 ["action"]
       33 NAMECALL                         R1 R1 K12 ["log"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 4
       11 GETUPVAL                         R5 5
       12 MOVE                             R6 R0
       13 DUPTABLE                         R7 K9 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
       14 GETUPVAL                         R8 6
       15 SETTABLEKS                       R8 R7 K2 ["ImageSize"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U10
       24 SETTABLEKS                       R8 R7 K3 ["OnClick"]
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K4 ["IsPrivacyVisible"]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K5 ["IsDateModifiedVisible"]
       32 LOADB                            R8 1
       33 SETTABLEKS                       R8 R7 K6 ["IsDropdownMenuVisible"]
       35 LOADB                            R8 0
       36 SETTABLEKS                       R8 R7 K7 ["IsCreatorNameVisible"]
       38 GETUPVAL                         R8 11
       39 SETTABLEKS                       R8 R7 K8 ["KebabMenu"]
       41 CALL                             R5 2 -1
       42 CALL                             R3 -1 -1
       43 RETURN                           R3 -1

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
      146 GETTABLEKS                       R22 R23 K19 ["Util"]
      148 GETTABLEKS                       R21 R22 K34 ["SortingOptions"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R24 R0 K11 ["Src"]
      155 GETTABLEKS                       R23 R24 K19 ["Util"]
      157 GETTABLEKS                       R22 R23 K35 ["Dialogs"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R25 R0 K11 ["Src"]
      164 GETTABLEKS                       R24 R25 K12 ["SharedFlags"]
      166 GETTABLEKS                       R23 R24 K36 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      168 CALL                             R22 1 1
      169 CALL                             R22 0 1
      170 GETTABLEKS                       R23 R10 K37 ["StudioService"]
      172 GETIMPORT                        R24 K5 [require]
      174 GETTABLEKS                       R28 R0 K11 ["Src"]
      176 GETTABLEKS                       R27 R28 K19 ["Util"]
      178 GETTABLEKS                       R26 R27 K38 ["Telemetry"]
      180 GETTABLEKS                       R25 R26 K39 ["TelemetryContext"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETTABLEKS                       R29 R0 K11 ["Src"]
      187 GETTABLEKS                       R28 R29 K19 ["Util"]
      189 GETTABLEKS                       R27 R28 K38 ["Telemetry"]
      191 GETTABLEKS                       R26 R27 K40 ["StartPageTelemetryEvent"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K43 [UDim2.new]
      196 LOADN                            R27 0
      197 LOADN                            R28 200
      198 LOADN                            R29 0
      199 LOADN                            R30 200
      200 CALL                             R26 4 1
      201 GETIMPORT                        R27 K43 [UDim2.new]
      203 LOADN                            R28 0
      204 LOADN                            R29 225
      205 LOADN                            R30 0
      206 LOADN                            R31 69
      207 CALL                             R27 4 1
      208 DUPCLOSURE                       R28 K44 [PROTO_0]
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R20
      211 DUPTABLE                         R29 K49 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
      212 LOADK                            R30 K50 ["Archive"]
      213 SETTABLEKS                       R30 R29 K45 ["searchKey"]
      215 LOADB                            R30 1
      216 SETTABLEKS                       R30 R29 K46 ["isArchived"]
      218 LOADB                            R30 0
      219 SETTABLEKS                       R30 R29 K47 ["isTemplates"]
      221 LOADN                            R30 30
      222 SETTABLEKS                       R30 R29 K48 ["pageSize"]
      224 NEWTABLE                         R30 0 1
      226 LOADK                            R31 K51 ["RestoreArchive"]
      227 SETLIST                          R30 R31 1 [1]
      229 DUPCLOSURE                       R31 K52 [PROTO_2]
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R23
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R30
      242 DUPCLOSURE                       R32 K53 [PROTO_4]
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R13
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R30
      253 DUPCLOSURE                       R33 K54 [PROTO_5]
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R32
      256 CAPTURE                          VAL R23
      257 DUPCLOSURE                       R34 K55 [PROTO_6]
      258 CAPTURE                          VAL R7
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R9
      263 DUPCLOSURE                       R35 K56 [PROTO_8]
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R2
      266 CAPTURE                          VAL R28
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R16
      269 CAPTURE                          VAL R1
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R34
      273 RETURN                           R35 1
