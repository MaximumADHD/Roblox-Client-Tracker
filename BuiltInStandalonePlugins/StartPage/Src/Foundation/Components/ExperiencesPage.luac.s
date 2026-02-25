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
       21 GETTABLEKS                       R6 R0 K3 ["CellSize"]
       23 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R5 K4 ["CellComponent"]
       33 GETTABLEKS                       R6 R0 K5 ["FetchItems"]
       35 SETTABLEKS                       R6 R5 K5 ["FetchItems"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R6 R5 K6 ["AdjustQuery"]
       42 GETTABLEKS                       R6 R0 K9 ["NetworkViewProps"]
       44 CALL                             R4 2 -1
       45 CALL                             R2 -1 1
       46 GETUPVAL                         R4 6
       47 JUMPIFNOT                        R4 ; [+14]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R3 R4 K1 ["createElement"]
       51 GETUPVAL                         R5 7
       52 GETTABLEKS                       R4 R5 K10 ["Provider"]
       54 DUPTABLE                         R5 K12 [{"value"}]
       55 GETTABLEKS                       R6 R0 K13 ["KebabMenu"]
       57 SETTABLEKS                       R6 R5 K11 ["value"]
       59 MOVE                             R6 R2
       60 CALL                             R3 3 1
       61 RETURN                           R3 1
       62 MOVE                             R3 R2
       63 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+39]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+36]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+33]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["GetUserId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K1 ["Id"]
       16 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K4 ["showVerifyAge"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K5 ["showAgeRestricted"]
       24 CALL                             R1 5 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       30 LOADK                            R5 K10 ["interaction"]
       31 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       33 LOADK                            R5 K11 ["place_open"]
       34 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       36 LOADK                            R5 K12 ["experiences_owned_tab"]
       37 SETTABLEKS                       R5 R4 K8 ["action"]
       39 NAMECALL                         R1 R1 K13 ["log"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 4
       11 DUPTABLE                         R5 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       12 GETTABLEKS                       R6 R0 K2 ["BaseQuery"]
       14 SETTABLEKS                       R6 R5 K2 ["BaseQuery"]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       25 LOADB                            R6 0
       26 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       28 NEWTABLE                         R6 0 5
       30 LOADK                            R7 K14 ["ConfigureExperience"]
       31 LOADK                            R8 K15 ["ConfigurePlace"]
       32 LOADK                            R9 K16 ["OpenPlace"]
       33 GETUPVAL                         R11 5
       34 JUMPIF                           R11 ; [+2]
       35 LOADK                            R10 K17 ["PublicPrivateToggle"]
       36 JUMP                             ; [+1]
       37 LOADK                            R10 K18 [""]
       38 LOADK                            R11 K19 ["Archive"]
       39 SETLIST                          R6 R7 5 [1]
       41 SETTABLEKS                       R6 R5 K7 ["KebabMenu"]
       43 GETUPVAL                         R6 6
       44 SETTABLEKS                       R6 R5 K8 ["CellSize"]
       46 GETUPVAL                         R6 7
       47 SETTABLEKS                       R6 R5 K9 ["FetchItems"]
       49 DUPTABLE                         R6 K22 [{"creatorType", "creatorTargetId"}]
       50 LOADK                            R7 K23 ["User"]
       51 SETTABLEKS                       R7 R6 K20 ["creatorType"]
       53 GETUPVAL                         R8 8
       54 NAMECALL                         R8 R8 K24 ["GetUserId"]
       56 CALL                             R8 1 -1
       57 FASTCALL                         TOSTRING ; [+2]
       58 GETIMPORT                        R7 K26 [tostring]
       60 CALL                             R7 -1 1
       61 SETTABLEKS                       R7 R6 K21 ["creatorTargetId"]
       63 SETTABLEKS                       R6 R5 K10 ["NetworkQuery"]
       65 NEWCLOSURE                       R6 P0
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U11
       72 SETTABLEKS                       R6 R5 K11 ["OnClick"]
       74 SETTABLEKS                       R0 R5 K12 ["NetworkViewProps"]
       76 CALL                             R3 2 -1
       77 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+39]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+36]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+33]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["GetUserId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K1 ["Id"]
       16 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K4 ["showVerifyAge"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K5 ["showAgeRestricted"]
       24 CALL                             R1 5 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       30 LOADK                            R5 K10 ["interaction"]
       31 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       33 LOADK                            R5 K11 ["place_open"]
       34 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       36 LOADK                            R5 K12 ["experiences_group_tab"]
       37 SETTABLEKS                       R5 R4 K8 ["action"]
       39 NAMECALL                         R1 R1 K13 ["log"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R0 K1 ["BaseQuery"]
       13 JUMPIFNOT                        R4 ; [+66]
       14 GETTABLEKS                       R5 R0 K1 ["BaseQuery"]
       16 GETTABLEKS                       R4 R5 K2 ["creatorTargetId"]
       18 JUMPIFNOT                        R4 ; [+61]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R4 R5 K3 ["createElement"]
       22 GETUPVAL                         R5 5
       23 DUPTABLE                         R6 K14 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       24 GETTABLEKS                       R7 R0 K1 ["BaseQuery"]
       26 SETTABLEKS                       R7 R6 K1 ["BaseQuery"]
       28 LOADB                            R7 1
       29 SETTABLEKS                       R7 R6 K4 ["IsPrivacyVisible"]
       31 LOADB                            R7 1
       32 SETTABLEKS                       R7 R6 K5 ["IsDateModifiedVisible"]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K6 ["IsDropdownMenuVisible"]
       37 LOADB                            R7 0
       38 SETTABLEKS                       R7 R6 K7 ["IsCreatorNameVisible"]
       40 NEWTABLE                         R7 0 5
       42 LOADK                            R8 K15 ["ConfigureExperience"]
       43 LOADK                            R9 K16 ["ConfigurePlace"]
       44 LOADK                            R10 K17 ["OpenPlace"]
       45 GETUPVAL                         R12 6
       46 JUMPIF                           R12 ; [+2]
       47 LOADK                            R11 K18 ["PublicPrivateToggle"]
       48 JUMP                             ; [+1]
       49 LOADK                            R11 K19 [""]
       50 LOADK                            R12 K20 ["Archive"]
       51 SETLIST                          R7 R8 5 [1]
       53 SETTABLEKS                       R7 R6 K8 ["KebabMenu"]
       55 GETUPVAL                         R7 7
       56 SETTABLEKS                       R7 R6 K9 ["CellSize"]
       58 GETUPVAL                         R7 8
       59 SETTABLEKS                       R7 R6 K10 ["FetchItems"]
       61 DUPTABLE                         R7 K22 [{"creatorType"}]
       62 LOADK                            R8 K23 ["Group"]
       63 SETTABLEKS                       R8 R7 K21 ["creatorType"]
       65 SETTABLEKS                       R7 R6 K11 ["NetworkQuery"]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U12
       74 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       76 SETTABLEKS                       R0 R6 K13 ["NetworkViewProps"]
       78 CALL                             R4 2 -1
       79 RETURN                           R4 -1
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R4 R5 K3 ["createElement"]
       83 GETUPVAL                         R5 13
       84 GETUPVAL                         R6 14
       85 MOVE                             R7 R0
       86 DUPTABLE                         R8 K25 [{"title"}]
       87 LOADK                            R11 K26 ["Plugin"]
       88 LOADK                            R12 K27 ["NoGroupsToDisplay"]
       89 NAMECALL                         R9 R2 K28 ["getText"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K24 ["title"]
       94 CALL                             R6 2 -1
       95 CALL                             R4 -1 -1
       96 RETURN                           R4 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+39]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+36]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+33]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["GetUserId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K1 ["Id"]
       16 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K4 ["showVerifyAge"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K5 ["showAgeRestricted"]
       24 CALL                             R1 5 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       30 LOADK                            R5 K10 ["interaction"]
       31 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       33 LOADK                            R5 K11 ["place_open"]
       34 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       36 LOADK                            R5 K12 ["experiences_shared_tab"]
       37 SETTABLEKS                       R5 R4 K8 ["action"]
       39 NAMECALL                         R1 R1 K13 ["log"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 4
       11 DUPTABLE                         R5 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       12 GETTABLEKS                       R6 R0 K2 ["BaseQuery"]
       14 SETTABLEKS                       R6 R5 K2 ["BaseQuery"]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       28 NEWTABLE                         R6 0 2
       30 LOADK                            R7 K14 ["OpenPlace"]
       31 LOADK                            R8 K15 ["RemoveShared"]
       32 SETLIST                          R6 R7 2 [1]
       34 SETTABLEKS                       R6 R5 K7 ["KebabMenu"]
       36 GETUPVAL                         R6 5
       37 SETTABLEKS                       R6 R5 K8 ["CellSize"]
       39 GETUPVAL                         R6 6
       40 SETTABLEKS                       R6 R5 K9 ["FetchItems"]
       42 DUPTABLE                         R6 K19 [{"searchKey", "creatorType", "creatorTargetId"}]
       43 LOADK                            R7 K20 ["Experiences"]
       44 SETTABLEKS                       R7 R6 K16 ["searchKey"]
       46 LOADK                            R7 K21 ["Team"]
       47 SETTABLEKS                       R7 R6 K17 ["creatorType"]
       49 GETUPVAL                         R8 7
       50 NAMECALL                         R8 R8 K22 ["GetUserId"]
       52 CALL                             R8 1 -1
       53 FASTCALL                         TOSTRING ; [+2]
       54 GETIMPORT                        R7 K24 [tostring]
       56 CALL                             R7 -1 1
       57 SETTABLEKS                       R7 R6 K18 ["creatorTargetId"]
       59 SETTABLEKS                       R6 R5 K10 ["NetworkQuery"]
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U10
       68 SETTABLEKS                       R6 R5 K11 ["OnClick"]
       70 SETTABLEKS                       R0 R5 K12 ["NetworkViewProps"]
       72 CALL                             R3 2 -1
       73 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+27]
        3 GETTABLEKS                       R1 R0 K1 ["FilePath"]
        5 JUMPIFNOT                        R1 ; [+24]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["FilePath"]
        9 LOADB                            R4 0
       10 NAMECALL                         R1 R1 K2 ["openLocalFile"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 3
       17 DUPTABLE                         R4 K6 [{"telemetryType", "telemetrySubtype", "action"}]
       18 LOADK                            R5 K7 ["interaction"]
       19 SETTABLEKS                       R5 R4 K3 ["telemetryType"]
       21 LOADK                            R5 K8 ["place_open"]
       22 SETTABLEKS                       R5 R4 K4 ["telemetrySubtype"]
       24 LOADK                            R5 K9 ["experiences_local_tab"]
       25 SETTABLEKS                       R5 R4 K5 ["action"]
       27 NAMECALL                         R1 R1 K10 ["log"]
       29 CALL                             R1 3 0
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
        9 GETTABLEKS                       R5 R0 K2 ["BaseQuery"]
       11 SETTABLEKS                       R5 R4 K2 ["BaseQuery"]
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K3 ["IsPrivacyVisible"]
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R4 K4 ["IsDateModifiedVisible"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K5 ["IsDropdownMenuVisible"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K6 ["IsCreatorNameVisible"]
       25 NEWTABLE                         R5 0 1
       27 LOADK                            R6 K14 ["RemoveRecent"]
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K7 ["KebabMenu"]
       32 GETUPVAL                         R5 3
       33 SETTABLEKS                       R5 R4 K8 ["CellSize"]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K9 ["FetchItems"]
       38 DUPTABLE                         R5 K18 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
       39 LOADK                            R6 K19 ["Local"]
       40 SETTABLEKS                       R6 R5 K15 ["searchKey"]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K16 ["getRecentLocalFiles"]
       45 LOADB                            R6 0
       46 SETTABLEKS                       R6 R5 K17 ["getRecentAPIGames"]
       48 SETTABLEKS                       R5 R4 K10 ["NetworkQuery"]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U7
       55 SETTABLEKS                       R5 R4 K11 ["OnClick"]
       57 SETTABLEKS                       R0 R4 K12 ["NetworkViewProps"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
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
       21 DUPTABLE                         R6 K7 [{"PageName", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
       22 LOADK                            R7 K8 ["Experiences"]
       23 SETTABLEKS                       R7 R6 K2 ["PageName"]
       25 NEWTABLE                         R7 0 4
       27 DUPTABLE                         R8 K14 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       28 LOADK                            R11 K15 ["Plugin"]
       29 LOADK                            R12 K16 ["ExperiencesPage.Owned"]
       30 NAMECALL                         R9 R0 K17 ["getText"]
       32 CALL                             R9 3 1
       33 SETTABLEKS                       R9 R8 K9 ["Title"]
       35 LOADK                            R11 K15 ["Plugin"]
       36 LOADK                            R12 K18 ["NoExperiencesToDisplay"]
       37 NAMECALL                         R9 R0 K17 ["getText"]
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R9 R8 K10 ["FailedTitle"]
       42 LOADK                            R9 K19 ["Owned"]
       43 SETTABLEKS                       R9 R8 K11 ["Key"]
       45 GETUPVAL                         R9 7
       46 SETTABLEKS                       R9 R8 K12 ["PageComponent"]
       48 DUPTABLE                         R9 K22 [{"SortDropdown", "DefaultSortIndex"}]
       49 SETTABLEKS                       R3 R9 K20 ["SortDropdown"]
       51 LOADN                            R10 4
       52 SETTABLEKS                       R10 R9 K21 ["DefaultSortIndex"]
       54 SETTABLEKS                       R9 R8 K13 ["Dropdowns"]
       56 DUPTABLE                         R9 K14 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       57 LOADK                            R12 K15 ["Plugin"]
       58 LOADK                            R13 K23 ["ExperiencesPage.Group"]
       59 NAMECALL                         R10 R0 K17 ["getText"]
       61 CALL                             R10 3 1
       62 SETTABLEKS                       R10 R9 K9 ["Title"]
       64 LOADK                            R12 K15 ["Plugin"]
       65 LOADK                            R13 K24 ["NoGroupExperiencesToDisplay"]
       66 NAMECALL                         R10 R0 K17 ["getText"]
       68 CALL                             R10 3 1
       69 SETTABLEKS                       R10 R9 K10 ["FailedTitle"]
       71 LOADK                            R10 K25 ["Group"]
       72 SETTABLEKS                       R10 R9 K11 ["Key"]
       74 GETUPVAL                         R10 8
       75 SETTABLEKS                       R10 R9 K12 ["PageComponent"]
       77 DUPTABLE                         R10 K27 [{"SortDropdown", "DefaultSortIndex", "GroupDropdown"}]
       78 SETTABLEKS                       R3 R10 K20 ["SortDropdown"]
       80 LOADN                            R11 4
       81 SETTABLEKS                       R11 R10 K21 ["DefaultSortIndex"]
       83 LENGTH                           R12 R1
       84 LOADN                            R13 0
       85 JUMPIFNOTLT                      R13 R12 ; [+3]
       87 MOVE                             R11 R1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K26 ["GroupDropdown"]
       92 SETTABLEKS                       R10 R9 K13 ["Dropdowns"]
       94 DUPTABLE                         R10 K14 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       95 LOADK                            R13 K15 ["Plugin"]
       96 LOADK                            R14 K28 ["ExperiencesPage.Shared"]
       97 NAMECALL                         R11 R0 K17 ["getText"]
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R10 K9 ["Title"]
      102 LOADK                            R13 K15 ["Plugin"]
      103 LOADK                            R14 K29 ["NoSharedExperiencesToDisplay"]
      104 NAMECALL                         R11 R0 K17 ["getText"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K10 ["FailedTitle"]
      109 LOADK                            R11 K30 ["Shared"]
      110 SETTABLEKS                       R11 R10 K11 ["Key"]
      112 GETUPVAL                         R11 9
      113 SETTABLEKS                       R11 R10 K12 ["PageComponent"]
      115 DUPTABLE                         R11 K22 [{"SortDropdown", "DefaultSortIndex"}]
      116 SETTABLEKS                       R3 R11 K20 ["SortDropdown"]
      118 LOADN                            R12 4
      119 SETTABLEKS                       R12 R11 K21 ["DefaultSortIndex"]
      121 SETTABLEKS                       R11 R10 K13 ["Dropdowns"]
      123 DUPTABLE                         R11 K14 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
      124 LOADK                            R14 K15 ["Plugin"]
      125 LOADK                            R15 K31 ["ExperiencesPage.Local"]
      126 NAMECALL                         R12 R0 K17 ["getText"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K9 ["Title"]
      131 LOADK                            R14 K15 ["Plugin"]
      132 LOADK                            R15 K32 ["NoLocalFilesToDisplay"]
      133 NAMECALL                         R12 R0 K17 ["getText"]
      135 CALL                             R12 3 1
      136 SETTABLEKS                       R12 R11 K10 ["FailedTitle"]
      138 LOADK                            R12 K33 ["Local"]
      139 SETTABLEKS                       R12 R11 K11 ["Key"]
      141 GETUPVAL                         R12 10
      142 SETTABLEKS                       R12 R11 K12 ["PageComponent"]
      144 NEWTABLE                         R12 0 0
      146 SETTABLEKS                       R12 R11 K13 ["Dropdowns"]
      148 SETLIST                          R7 R8 4 [1]
      150 SETTABLEKS                       R7 R6 K3 ["Tabs"]
      152 LOADB                            R7 1
      153 SETTABLEKS                       R7 R6 K4 ["CanSwapBetweenViews"]
      155 LOADB                            R7 1
      156 SETTABLEKS                       R7 R6 K5 ["IsDefaultGridView"]
      158 LOADB                            R7 1
      159 SETTABLEKS                       R7 R6 K6 ["HasSearchBar"]
      161 CALL                             R4 2 -1
      162 RETURN                           R4 -1

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
       26 GETTABLEKS                       R6 R7 K13 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       28 CALL                             R5 1 1
       29 CALL                             R5 0 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R9 R0 K11 ["Src"]
       34 GETTABLEKS                       R8 R9 K12 ["SharedFlags"]
       36 GETTABLEKS                       R7 R8 K14 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       38 CALL                             R6 1 1
       39 CALL                             R6 0 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R9 R0 K6 ["Packages"]
       44 GETTABLEKS                       R8 R9 K15 ["Framework"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R9 R7 K16 ["ContextServices"]
       49 GETTABLEKS                       R8 R9 K17 ["Localization"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Packages"]
       55 GETTABLEKS                       R10 R11 K18 ["Dash"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R9 K19 ["join"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R13 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R13 K20 ["Types"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R15 R0 K11 ["Src"]
       71 GETTABLEKS                       R14 R15 K21 ["Components"]
       73 GETTABLEKS                       R13 R14 K22 ["InfoTile"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R16 R0 K11 ["Src"]
       80 GETTABLEKS                       R15 R16 K21 ["Components"]
       82 GETTABLEKS                       R14 R15 K23 ["NetworkView"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R18 R0 K11 ["Src"]
       89 GETTABLEKS                       R17 R18 K24 ["Foundation"]
       91 GETTABLEKS                       R16 R17 K21 ["Components"]
       93 GETTABLEKS                       R15 R16 K25 ["GamePage"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R19 R0 K11 ["Src"]
      100 GETTABLEKS                       R18 R19 K24 ["Foundation"]
      102 GETTABLEKS                       R17 R18 K21 ["Components"]
      104 GETTABLEKS                       R16 R17 K26 ["NoResultsFound"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R19 R0 K11 ["Src"]
      111 GETTABLEKS                       R18 R19 K27 ["Network"]
      113 GETTABLEKS                       R17 R18 K28 ["DiscoverGroups"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R20 R0 K11 ["Src"]
      120 GETTABLEKS                       R19 R20 K27 ["Network"]
      122 GETTABLEKS                       R18 R19 K29 ["DiscoverExperiences"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R21 R0 K11 ["Src"]
      129 GETTABLEKS                       R20 R21 K27 ["Network"]
      131 GETTABLEKS                       R19 R20 K30 ["DiscoverRecents"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R22 R0 K11 ["Src"]
      138 GETTABLEKS                       R21 R22 K27 ["Network"]
      140 GETTABLEKS                       R20 R21 K31 ["DiscoverCreatorEligibilityAndOpenPlace"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R23 R0 K11 ["Src"]
      147 GETTABLEKS                       R22 R23 K12 ["SharedFlags"]
      149 GETTABLEKS                       R21 R22 K32 ["getFFlagLuaStartPageTableContextMenu"]
      151 CALL                             R20 1 1
      152 CALL                             R20 0 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R24 R0 K11 ["Src"]
      157 GETTABLEKS                       R23 R24 K33 ["Contexts"]
      159 GETTABLEKS                       R22 R23 K34 ["ContextMenuActions"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R25 R0 K11 ["Src"]
      166 GETTABLEKS                       R24 R25 K35 ["Util"]
      168 GETTABLEKS                       R23 R24 K36 ["Dialogs"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R26 R0 K11 ["Src"]
      175 GETTABLEKS                       R25 R26 K35 ["Util"]
      177 GETTABLEKS                       R24 R25 K37 ["SortingOptions"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R27 R0 K11 ["Src"]
      184 GETTABLEKS                       R26 R27 K35 ["Util"]
      186 GETTABLEKS                       R25 R26 K38 ["Services"]
      188 CALL                             R24 1 1
      189 GETTABLEKS                       R25 R24 K39 ["StartPageManager"]
      191 GETTABLEKS                       R26 R24 K40 ["StudioService"]
      193 GETIMPORT                        R27 K5 [require]
      195 GETTABLEKS                       R31 R0 K11 ["Src"]
      197 GETTABLEKS                       R30 R31 K35 ["Util"]
      199 GETTABLEKS                       R29 R30 K41 ["Telemetry"]
      201 GETTABLEKS                       R28 R29 K42 ["TelemetryContext"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETTABLEKS                       R32 R0 K11 ["Src"]
      208 GETTABLEKS                       R31 R32 K35 ["Util"]
      210 GETTABLEKS                       R30 R31 K41 ["Telemetry"]
      212 GETTABLEKS                       R29 R30 K43 ["StartPageTelemetryEvent"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K46 [UDim2.new]
      217 LOADN                            R30 0
      218 LOADN                            R31 200
      219 LOADN                            R32 0
      220 LOADN                            R33 200
      221 CALL                             R29 4 1
      222 GETIMPORT                        R30 K46 [UDim2.new]
      224 LOADN                            R31 0
      225 LOADN                            R32 225
      226 LOADN                            R33 0
      227 LOADN                            R34 69
      228 CALL                             R30 4 1
      229 GETIMPORT                        R31 K46 [UDim2.new]
      231 LOADN                            R32 0
      232 LOADN                            R33 225
      233 LOADN                            R34 0
      234 LOADN                            R35 92
      235 CALL                             R31 4 1
      236 DUPCLOSURE                       R32 K47 [PROTO_0]
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R23
      239 DUPTABLE                         R33 K52 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
      240 LOADK                            R34 K53 ["Experiences"]
      241 SETTABLEKS                       R34 R33 K48 ["searchKey"]
      243 LOADB                            R34 0
      244 SETTABLEKS                       R34 R33 K49 ["isArchived"]
      246 LOADB                            R34 0
      247 SETTABLEKS                       R34 R33 K50 ["isTemplates"]
      249 LOADN                            R34 30
      250 SETTABLEKS                       R34 R33 K51 ["pageSize"]
      252 DUPCLOSURE                       R34 K54 [PROTO_4]
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R33
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R29
      259 CAPTURE                          VAL R20
      260 CAPTURE                          VAL R21
      261 DUPCLOSURE                       R35 K55 [PROTO_6]
      262 CAPTURE                          VAL R27
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R22
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R34
      267 CAPTURE                          VAL R6
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R17
      270 CAPTURE                          VAL R26
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R28
      274 DUPCLOSURE                       R36 K56 [PROTO_8]
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R8
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R22
      279 CAPTURE                          VAL R1
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R6
      282 CAPTURE                          VAL R30
      283 CAPTURE                          VAL R17
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R26
      286 CAPTURE                          VAL R5
      287 CAPTURE                          VAL R28
      288 CAPTURE                          VAL R15
      289 CAPTURE                          VAL R10
      290 DUPCLOSURE                       R37 K57 [PROTO_10]
      291 CAPTURE                          VAL R27
      292 CAPTURE                          VAL R4
      293 CAPTURE                          VAL R22
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R34
      296 CAPTURE                          VAL R31
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R26
      299 CAPTURE                          VAL R19
      300 CAPTURE                          VAL R5
      301 CAPTURE                          VAL R28
      302 DUPCLOSURE                       R38 K58 [PROTO_12]
      303 CAPTURE                          VAL R27
      304 CAPTURE                          VAL R1
      305 CAPTURE                          VAL R34
      306 CAPTURE                          VAL R30
      307 CAPTURE                          VAL R18
      308 CAPTURE                          VAL R25
      309 CAPTURE                          VAL R5
      310 CAPTURE                          VAL R28
      311 DUPCLOSURE                       R39 K59 [PROTO_14]
      312 CAPTURE                          VAL R8
      313 CAPTURE                          VAL R2
      314 CAPTURE                          VAL R32
      315 CAPTURE                          VAL R3
      316 CAPTURE                          VAL R16
      317 CAPTURE                          VAL R1
      318 CAPTURE                          VAL R14
      319 CAPTURE                          VAL R35
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R37
      322 CAPTURE                          VAL R38
      323 RETURN                           R39 1
