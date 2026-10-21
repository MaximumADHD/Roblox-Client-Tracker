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
       47 JUMPIF                           R4 ; [+4]
       48 GETUPVAL                         R4 7
       49 JUMPIF                           R4 ; [+2]
       50 GETUPVAL                         R4 8
       51 JUMPIFNOT                        R4 ; [+14]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K1 ["createElement"]
       55 GETUPVAL                         R4 9
       56 GETTABLEKS                       R4 R4 K10 ["Provider"]
       58 DUPTABLE                         R5 K12 [{"value"}]
       59 GETTABLEKS                       R6 R0 K13 ["KebabMenu"]
       61 SETTABLEKS                       R6 R5 K11 ["value"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 1
       65 RETURN                           R3 1
       66 MOVE                             R3 R2
       67 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+45]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+42]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+39]
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
       33 JUMPIFNOT                        R1 ; [+14]
       34 GETUPVAL                         R1 7
       35 GETUPVAL                         R3 8
       36 DUPTABLE                         R4 K14 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_owned_tab", ["isBuildGame"]}]
       37 GETUPVAL                         R6 9
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R5 R0 K15 ["IsBuildSealed"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K13 ["isBuildGame"]
       45 NAMECALL                         R1 R1 K16 ["log"]
       47 CALL                             R1 3 0
       48 RETURN                           R0 0

PROTO_6:
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
       23 DUPTABLE                         R8 K17 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       24 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       26 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       28 NEWTABLE                         R9 0 8
       30 LOADK                            R10 K18 ["ConfigureExperience"]
       31 GETUPVAL                         R12 7
       32 JUMPIFNOT                        R12 ; [+2]
       33 LOADK                            R11 K19 ["ViewPlaces"]
       34 JUMP                             ; [+1]
       35 LOADK                            R11 K20 [""]
       36 LOADK                            R12 K21 ["ConfigurePlace"]
       37 LOADK                            R13 K22 ["OpenPlace"]
       38 LOADK                            R14 K23 ["OpenACopy"]
       39 LOADK                            R15 K24 ["Archive"]
       40 GETUPVAL                         R17 8
       41 JUMPIFNOT                        R17 ; [+2]
       42 LOADK                            R16 K25 ["DisableTeamCreate"]
       43 JUMP                             ; [+1]
       44 LOADK                            R16 K20 [""]
       45 LOADK                            R17 K26 ["SaveAs"]
       46 SETLIST                          R9 R10 8 [1]
       48 SETTABLEKS                       R9 R8 K11 ["KebabMenu"]
       50 GETUPVAL                         R9 9
       51 SETTABLEKS                       R9 R8 K12 ["CellSize"]
       53 GETUPVAL                         R9 10
       54 SETTABLEKS                       R9 R8 K13 ["FetchItems"]
       56 DUPTABLE                         R9 K30 [{["creatorType"] = "User", ["creatorTargetId"]}]
       57 GETUPVAL                         R11 11
       58 NAMECALL                         R11 R11 K31 ["GetUserId"]
       60 CALL                             R11 1 -1
       61 FASTCALL                         TOSTRING ; [+2]
       62 GETIMPORT                        R10 K33 [tostring]
       64 CALL                             R10 -1 1
       65 SETTABLEKS                       R10 R9 K29 ["creatorTargetId"]
       67 SETTABLEKS                       R9 R8 K14 ["NetworkQuery"]
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          UPVAL U12
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U14
       79 CAPTURE                          UPVAL U15
       80 SETTABLEKS                       R9 R8 K15 ["OnClick"]
       82 SETTABLEKS                       R0 R8 K16 ["NetworkViewProps"]
       84 CALL                             R6 2 -1
       85 RETURN                           R6 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+45]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+42]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+39]
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
       33 JUMPIFNOT                        R1 ; [+14]
       34 GETUPVAL                         R1 7
       35 GETUPVAL                         R3 8
       36 DUPTABLE                         R4 K14 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_group_tab", ["isBuildGame"]}]
       37 GETUPVAL                         R6 9
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R5 R0 K15 ["IsBuildSealed"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K13 ["isBuildGame"]
       45 NAMECALL                         R1 R1 K16 ["log"]
       47 CALL                             R1 3 0
       48 RETURN                           R0 0

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
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K1 ["getDialogManager"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K2 ["getActionsBridge"]
       18 CALL                             R5 0 1
       19 GETTABLEKS                       R6 R0 K3 ["BaseQuery"]
       21 JUMPIFNOT                        R6 ; [+57]
       22 GETTABLEKS                       R6 R0 K3 ["BaseQuery"]
       24 GETTABLEKS                       R6 R6 K4 ["creatorTargetId"]
       26 JUMPIFNOT                        R6 ; [+52]
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K5 ["createElement"]
       30 GETUPVAL                         R7 6
       31 DUPTABLE                         R8 K18 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       32 GETTABLEKS                       R9 R0 K3 ["BaseQuery"]
       34 SETTABLEKS                       R9 R8 K3 ["BaseQuery"]
       36 NEWTABLE                         R9 0 7
       38 LOADK                            R10 K19 ["ConfigureExperience"]
       39 LOADK                            R11 K20 ["ConfigurePlace"]
       40 LOADK                            R12 K21 ["OpenPlace"]
       41 LOADK                            R13 K22 ["OpenACopy"]
       42 LOADK                            R14 K23 ["Archive"]
       43 GETUPVAL                         R16 7
       44 JUMPIFNOT                        R16 ; [+2]
       45 LOADK                            R15 K24 ["DisableTeamCreate"]
       46 JUMP                             ; [+1]
       47 LOADK                            R15 K25 [""]
       48 LOADK                            R16 K26 ["SaveAs"]
       49 SETLIST                          R9 R10 7 [1]
       51 SETTABLEKS                       R9 R8 K12 ["KebabMenu"]
       53 GETUPVAL                         R9 8
       54 SETTABLEKS                       R9 R8 K13 ["CellSize"]
       56 GETUPVAL                         R9 9
       57 SETTABLEKS                       R9 R8 K14 ["FetchItems"]
       59 DUPTABLE                         R9 K29 [{["creatorType"] = "Group"}]
       60 SETTABLEKS                       R9 R8 K15 ["NetworkQuery"]
       62 NEWCLOSURE                       R9 P0
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U13
       72 CAPTURE                          UPVAL U14
       73 SETTABLEKS                       R9 R8 K16 ["OnClick"]
       75 SETTABLEKS                       R0 R8 K17 ["NetworkViewProps"]
       77 CALL                             R6 2 -1
       78 RETURN                           R6 -1
       79 GETUPVAL                         R6 5
       80 GETTABLEKS                       R6 R6 K5 ["createElement"]
       82 GETUPVAL                         R7 15
       83 GETUPVAL                         R8 16
       84 MOVE                             R9 R0
       85 DUPTABLE                         R10 K31 [{"title"}]
       86 LOADK                            R13 K32 ["Plugin"]
       87 LOADK                            R14 K33 ["NoGroupsToDisplay"]
       88 NAMECALL                         R11 R2 K34 ["getText"]
       90 CALL                             R11 3 1
       91 SETTABLEKS                       R11 R10 K30 ["title"]
       93 CALL                             R8 2 -1
       94 CALL                             R6 -1 -1
       95 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+45]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+42]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+39]
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
       33 JUMPIFNOT                        R1 ; [+14]
       34 GETUPVAL                         R1 7
       35 GETUPVAL                         R3 8
       36 DUPTABLE                         R4 K14 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_shared_tab", ["isBuildGame"]}]
       37 GETUPVAL                         R6 9
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R5 R0 K15 ["IsBuildSealed"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K13 ["isBuildGame"]
       45 NAMECALL                         R1 R1 K16 ["log"]
       47 CALL                             R1 3 0
       48 RETURN                           R0 0

PROTO_10:
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
       23 DUPTABLE                         R8 K16 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       24 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       26 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       28 NEWTABLE                         R9 0 6
       30 LOADK                            R10 K17 ["OpenPlace"]
       31 GETUPVAL                         R12 7
       32 JUMPIFNOT                        R12 ; [+2]
       33 LOADK                            R11 K18 ["ViewPlaces"]
       34 JUMP                             ; [+1]
       35 LOADK                            R11 K19 [""]
       36 LOADK                            R12 K20 ["OpenACopy"]
       37 LOADK                            R13 K21 ["RemoveShared"]
       38 GETUPVAL                         R15 8
       39 JUMPIFNOT                        R15 ; [+2]
       40 LOADK                            R14 K22 ["DisableTeamCreate"]
       41 JUMP                             ; [+1]
       42 LOADK                            R14 K19 [""]
       43 LOADK                            R15 K23 ["SaveAs"]
       44 SETLIST                          R9 R10 6 [1]
       46 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       48 GETUPVAL                         R9 9
       49 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       51 GETUPVAL                         R9 10
       52 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       54 DUPTABLE                         R9 K29 [{["searchKey"] = "Experiences", ["creatorType"] = "Team", ["creatorTargetId"]}]
       55 GETUPVAL                         R11 11
       56 NAMECALL                         R11 R11 K30 ["GetUserId"]
       58 CALL                             R11 1 -1
       59 FASTCALL                         TOSTRING ; [+2]
       60 GETIMPORT                        R10 K32 [tostring]
       62 CALL                             R10 -1 1
       63 SETTABLEKS                       R10 R9 K28 ["creatorTargetId"]
       65 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       67 NEWCLOSURE                       R9 P0
       68 CAPTURE                          UPVAL U12
       69 CAPTURE                          UPVAL U11
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U14
       77 CAPTURE                          UPVAL U15
       78 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       80 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       82 CALL                             R6 2 -1
       83 RETURN                           R6 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+18]
        3 GETTABLEKS                       R1 R0 K1 ["FilePath"]
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["FilePath"]
        9 LOADB                            R4 0
       10 NAMECALL                         R1 R1 K2 ["openLocalFile"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 3
       17 DUPTABLE                         R4 K9 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_local_tab"}]
       18 NAMECALL                         R1 R1 K10 ["log"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K15 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = False, ["IsCreatorNameVisible"] = False, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
        9 GETTABLEKS                       R5 R0 K2 ["BaseQuery"]
       11 SETTABLEKS                       R5 R4 K2 ["BaseQuery"]
       13 GETUPVAL                         R6 3
       14 JUMPIFNOT                        R6 ; [+3]
       15 NEWTABLE                         R5 0 0
       17 JUMP                             ; [+5]
       18 NEWTABLE                         R5 0 1
       20 LOADK                            R6 K16 ["RemoveRecent"]
       21 SETLIST                          R5 R6 1 [1]
       23 SETTABLEKS                       R5 R4 K9 ["KebabMenu"]
       25 GETUPVAL                         R5 4
       26 SETTABLEKS                       R5 R4 K10 ["CellSize"]
       28 GETUPVAL                         R5 5
       29 SETTABLEKS                       R5 R4 K11 ["FetchItems"]
       31 DUPTABLE                         R5 K21 [{["searchKey"] = "Local", ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = False}]
       32 SETTABLEKS                       R5 R4 K12 ["NetworkQuery"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U8
       39 SETTABLEKS                       R5 R4 K13 ["OnClick"]
       41 SETTABLEKS                       R0 R4 K14 ["NetworkViewProps"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

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
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K1 ["createElement"]
       20 GETUPVAL                         R5 6
       21 DUPTABLE                         R6 K9 [{["PageName"] = "Experiences", ["Tabs"], ["CanSwapBetweenViews"] = True, ["IsDefaultGridView"] = True, ["HasSearchBar"] = True}]
       22 NEWTABLE                         R7 0 4
       24 DUPTABLE                         R8 K16 [{["Title"], ["FailedTitle"], ["Key"] = "Owned", ["PageComponent"], ["Dropdowns"]}]
       25 LOADK                            R11 K17 ["Plugin"]
       26 LOADK                            R12 K18 ["ExperiencesPage.Owned"]
       27 NAMECALL                         R9 R0 K19 ["getText"]
       29 CALL                             R9 3 1
       30 SETTABLEKS                       R9 R8 K10 ["Title"]
       32 LOADK                            R11 K17 ["Plugin"]
       33 LOADK                            R12 K20 ["NoExperiencesToDisplay"]
       34 NAMECALL                         R9 R0 K19 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K11 ["FailedTitle"]
       39 GETUPVAL                         R9 7
       40 SETTABLEKS                       R9 R8 K14 ["PageComponent"]
       42 DUPTABLE                         R9 K24 [{["SortDropdown"], ["DefaultSortIndex"] = 4}]
       43 SETTABLEKS                       R3 R9 K21 ["SortDropdown"]
       45 SETTABLEKS                       R9 R8 K15 ["Dropdowns"]
       47 DUPTABLE                         R9 K26 [{["Title"], ["FailedTitle"], ["Key"] = "Group", ["PageComponent"], ["Dropdowns"]}]
       48 LOADK                            R12 K17 ["Plugin"]
       49 LOADK                            R13 K27 ["ExperiencesPage.Group"]
       50 NAMECALL                         R10 R0 K19 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K10 ["Title"]
       55 LOADK                            R12 K17 ["Plugin"]
       56 LOADK                            R13 K28 ["NoGroupExperiencesToDisplay"]
       57 NAMECALL                         R10 R0 K19 ["getText"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K11 ["FailedTitle"]
       62 GETUPVAL                         R10 8
       63 SETTABLEKS                       R10 R9 K14 ["PageComponent"]
       65 DUPTABLE                         R10 K30 [{["SortDropdown"], ["DefaultSortIndex"] = 4, ["GroupDropdown"]}]
       66 SETTABLEKS                       R3 R10 K21 ["SortDropdown"]
       68 LENGTH                           R12 R1
       69 LOADN                            R13 0
       70 JUMPIFNOTLT                      R13 R12 ; [+3]
       72 MOVE                             R11 R1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R11
       75 SETTABLEKS                       R11 R10 K29 ["GroupDropdown"]
       77 SETTABLEKS                       R10 R9 K15 ["Dropdowns"]
       79 DUPTABLE                         R10 K32 [{["Title"], ["FailedTitle"], ["Key"] = "Shared", ["PageComponent"], ["Dropdowns"]}]
       80 LOADK                            R13 K17 ["Plugin"]
       81 LOADK                            R14 K33 ["ExperiencesPage.Shared"]
       82 NAMECALL                         R11 R0 K19 ["getText"]
       84 CALL                             R11 3 1
       85 SETTABLEKS                       R11 R10 K10 ["Title"]
       87 LOADK                            R13 K17 ["Plugin"]
       88 LOADK                            R14 K34 ["NoSharedExperiencesToDisplay"]
       89 NAMECALL                         R11 R0 K19 ["getText"]
       91 CALL                             R11 3 1
       92 SETTABLEKS                       R11 R10 K11 ["FailedTitle"]
       94 GETUPVAL                         R11 9
       95 SETTABLEKS                       R11 R10 K14 ["PageComponent"]
       97 DUPTABLE                         R11 K24 [{["SortDropdown"], ["DefaultSortIndex"] = 4}]
       98 SETTABLEKS                       R3 R11 K21 ["SortDropdown"]
      100 SETTABLEKS                       R11 R10 K15 ["Dropdowns"]
      102 DUPTABLE                         R11 K36 [{["Title"], ["FailedTitle"], ["Key"] = "Local", ["PageComponent"], ["Dropdowns"]}]
      103 LOADK                            R14 K17 ["Plugin"]
      104 LOADK                            R15 K37 ["ExperiencesPage.Local"]
      105 NAMECALL                         R12 R0 K19 ["getText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K10 ["Title"]
      110 LOADK                            R14 K17 ["Plugin"]
      111 LOADK                            R15 K38 ["NoLocalFilesToDisplay"]
      112 NAMECALL                         R12 R0 K19 ["getText"]
      114 CALL                             R12 3 1
      115 SETTABLEKS                       R12 R11 K11 ["FailedTitle"]
      117 GETUPVAL                         R12 10
      118 SETTABLEKS                       R12 R11 K14 ["PageComponent"]
      120 NEWTABLE                         R12 0 0
      122 SETTABLEKS                       R12 R11 K15 ["Dropdowns"]
      124 SETLIST                          R7 R8 4 [1]
      126 SETTABLEKS                       R7 R6 K4 ["Tabs"]
      128 CALL                             R4 2 -1
      129 RETURN                           R4 -1

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
       26 GETTABLEKS                       R6 R6 K13 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       28 CALL                             R5 1 1
       29 CALL                             R5 0 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R7 K12 ["SharedFlags"]
       36 GETTABLEKS                       R7 R7 K14 ["getFFlagStartPageBuildGameClickTelemetry"]
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
       64 GETTABLEKS                       R12 R12 K20 ["Types"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K11 ["Src"]
       71 GETTABLEKS                       R13 R13 K21 ["Components"]
       73 GETTABLEKS                       R13 R13 K22 ["InfoTile"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K11 ["Src"]
       80 GETTABLEKS                       R14 R14 K21 ["Components"]
       82 GETTABLEKS                       R14 R14 K23 ["NetworkView"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K11 ["Src"]
       89 GETTABLEKS                       R15 R15 K24 ["Foundation"]
       91 GETTABLEKS                       R15 R15 K21 ["Components"]
       93 GETTABLEKS                       R15 R15 K25 ["GamePage"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K11 ["Src"]
      100 GETTABLEKS                       R16 R16 K24 ["Foundation"]
      102 GETTABLEKS                       R16 R16 K21 ["Components"]
      104 GETTABLEKS                       R16 R16 K26 ["NoResultsFound"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K11 ["Src"]
      111 GETTABLEKS                       R17 R17 K27 ["Network"]
      113 GETTABLEKS                       R17 R17 K28 ["DiscoverGroups"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K11 ["Src"]
      120 GETTABLEKS                       R18 R18 K27 ["Network"]
      122 GETTABLEKS                       R18 R18 K29 ["DiscoverExperiences"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K11 ["Src"]
      129 GETTABLEKS                       R19 R19 K27 ["Network"]
      131 GETTABLEKS                       R19 R19 K30 ["DiscoverRecents"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R20 R0 K11 ["Src"]
      138 GETTABLEKS                       R20 R20 K27 ["Network"]
      140 GETTABLEKS                       R20 R20 K31 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R0 K11 ["Src"]
      147 GETTABLEKS                       R21 R21 K12 ["SharedFlags"]
      149 GETTABLEKS                       R21 R21 K32 ["getFFlagLuaStartPageTableContextMenu"]
      151 CALL                             R20 1 1
      152 CALL                             R20 0 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K11 ["Src"]
      157 GETTABLEKS                       R22 R22 K12 ["SharedFlags"]
      159 GETTABLEKS                       R22 R22 K33 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      161 CALL                             R21 1 1
      162 CALL                             R21 0 1
      163 GETIMPORT                        R22 K5 [require]
      165 GETTABLEKS                       R23 R0 K11 ["Src"]
      167 GETTABLEKS                       R23 R23 K12 ["SharedFlags"]
      169 GETTABLEKS                       R23 R23 K34 ["getFFlagLuaStartPageNewListView"]
      171 CALL                             R22 1 1
      172 CALL                             R22 0 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K11 ["Src"]
      177 GETTABLEKS                       R24 R24 K12 ["SharedFlags"]
      179 GETTABLEKS                       R24 R24 K35 ["getFFlagStartPageAllowDisableTeamCreate"]
      181 CALL                             R23 1 1
      182 CALL                             R23 0 1
      183 GETIMPORT                        R24 K5 [require]
      185 GETTABLEKS                       R25 R0 K11 ["Src"]
      187 GETTABLEKS                       R25 R25 K12 ["SharedFlags"]
      189 GETTABLEKS                       R25 R25 K36 ["getFFlagLuaStartPageViewPlacesDialog"]
      191 CALL                             R24 1 1
      192 CALL                             R24 0 1
      193 GETIMPORT                        R25 K5 [require]
      195 GETTABLEKS                       R26 R0 K11 ["Src"]
      197 GETTABLEKS                       R26 R26 K37 ["Contexts"]
      199 GETTABLEKS                       R26 R26 K38 ["ContextMenuActions"]
      201 CALL                             R25 1 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K11 ["Src"]
      206 GETTABLEKS                       R27 R27 K39 ["Util"]
      208 GETTABLEKS                       R27 R27 K40 ["Dialogs"]
      210 CALL                             R26 1 1
      211 GETIMPORT                        R27 K5 [require]
      213 GETTABLEKS                       R28 R0 K11 ["Src"]
      215 GETTABLEKS                       R28 R28 K39 ["Util"]
      217 GETTABLEKS                       R28 R28 K41 ["SortingOptions"]
      219 CALL                             R27 1 1
      220 GETIMPORT                        R28 K5 [require]
      222 GETTABLEKS                       R29 R0 K11 ["Src"]
      224 GETTABLEKS                       R29 R29 K39 ["Util"]
      226 GETTABLEKS                       R29 R29 K42 ["Services"]
      228 CALL                             R28 1 1
      229 GETTABLEKS                       R29 R28 K43 ["StartPageManager"]
      231 GETTABLEKS                       R30 R28 K44 ["StudioService"]
      233 GETIMPORT                        R31 K5 [require]
      235 GETTABLEKS                       R32 R0 K11 ["Src"]
      237 GETTABLEKS                       R32 R32 K39 ["Util"]
      239 GETTABLEKS                       R32 R32 K45 ["Telemetry"]
      241 GETTABLEKS                       R32 R32 K46 ["TelemetryContext"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K5 [require]
      246 GETTABLEKS                       R33 R0 K11 ["Src"]
      248 GETTABLEKS                       R33 R33 K39 ["Util"]
      250 GETTABLEKS                       R33 R33 K45 ["Telemetry"]
      252 GETTABLEKS                       R33 R33 K47 ["StartPageTelemetryEvent"]
      254 CALL                             R32 1 1
      255 GETIMPORT                        R33 K50 [UDim2.new]
      257 LOADN                            R34 0
      258 LOADN                            R35 200
      259 LOADN                            R36 0
      260 LOADN                            R37 200
      261 CALL                             R33 4 1
      262 GETIMPORT                        R34 K50 [UDim2.new]
      264 LOADN                            R35 0
      265 LOADN                            R36 225
      266 LOADN                            R37 0
      267 LOADN                            R38 325
      268 CALL                             R34 4 1
      269 GETIMPORT                        R35 K50 [UDim2.new]
      271 LOADN                            R36 0
      272 LOADN                            R37 225
      273 LOADN                            R38 0
      274 LOADN                            R39 348
      275 CALL                             R35 4 1
      276 DUPCLOSURE                       R36 K51 [PROTO_0]
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R27
      279 DUPTABLE                         R37 K59 [{["searchKey"] = "Experiences", ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 30}]
      280 DUPCLOSURE                       R38 K60 [PROTO_4]
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R1
      284 CAPTURE                          VAL R13
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R33
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R21
      289 CAPTURE                          VAL R22
      290 CAPTURE                          VAL R25
      291 DUPCLOSURE                       R39 K61 [PROTO_6]
      292 CAPTURE                          VAL R31
      293 CAPTURE                          VAL R4
      294 CAPTURE                          VAL R26
      295 CAPTURE                          VAL R28
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R38
      299 CAPTURE                          VAL R24
      300 CAPTURE                          VAL R23
      301 CAPTURE                          VAL R34
      302 CAPTURE                          VAL R17
      303 CAPTURE                          VAL R30
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R32
      307 CAPTURE                          VAL R6
      308 DUPCLOSURE                       R40 K62 [PROTO_8]
      309 CAPTURE                          VAL R31
      310 CAPTURE                          VAL R8
      311 CAPTURE                          VAL R4
      312 CAPTURE                          VAL R26
      313 CAPTURE                          VAL R28
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R38
      316 CAPTURE                          VAL R23
      317 CAPTURE                          VAL R34
      318 CAPTURE                          VAL R17
      319 CAPTURE                          VAL R19
      320 CAPTURE                          VAL R30
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R32
      323 CAPTURE                          VAL R6
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R10
      326 DUPCLOSURE                       R41 K63 [PROTO_10]
      327 CAPTURE                          VAL R31
      328 CAPTURE                          VAL R4
      329 CAPTURE                          VAL R26
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R8
      332 CAPTURE                          VAL R1
      333 CAPTURE                          VAL R38
      334 CAPTURE                          VAL R24
      335 CAPTURE                          VAL R23
      336 CAPTURE                          VAL R35
      337 CAPTURE                          VAL R17
      338 CAPTURE                          VAL R30
      339 CAPTURE                          VAL R19
      340 CAPTURE                          VAL R5
      341 CAPTURE                          VAL R32
      342 CAPTURE                          VAL R6
      343 DUPCLOSURE                       R42 K64 [PROTO_12]
      344 CAPTURE                          VAL R31
      345 CAPTURE                          VAL R1
      346 CAPTURE                          VAL R38
      347 CAPTURE                          VAL R21
      348 CAPTURE                          VAL R34
      349 CAPTURE                          VAL R18
      350 CAPTURE                          VAL R29
      351 CAPTURE                          VAL R5
      352 CAPTURE                          VAL R32
      353 DUPCLOSURE                       R43 K65 [PROTO_14]
      354 CAPTURE                          VAL R8
      355 CAPTURE                          VAL R2
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R1
      360 CAPTURE                          VAL R14
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R41
      364 CAPTURE                          VAL R42
      365 RETURN                           R43 1
