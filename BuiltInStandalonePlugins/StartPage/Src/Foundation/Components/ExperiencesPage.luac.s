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
       47 JUMPIF                           R4 ; [+2]
       48 GETUPVAL                         R4 7
       49 JUMPIFNOT                        R4 ; [+14]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K1 ["createElement"]
       53 GETUPVAL                         R4 8
       54 GETTABLEKS                       R4 R4 K10 ["Provider"]
       56 DUPTABLE                         R5 K12 [{"value"}]
       57 GETTABLEKS                       R6 R0 K13 ["KebabMenu"]
       59 SETTABLEKS                       R6 R5 K11 ["value"]
       61 MOVE                             R6 R2
       62 CALL                             R3 3 1
       63 RETURN                           R3 1
       64 MOVE                             R3 R2
       65 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+58]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+55]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+52]
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
       54 JUMPIFNOT                        R1 ; [+6]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K13 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_owned_tab"}]
       58 NAMECALL                         R1 R1 K14 ["log"]
       60 CALL                             R1 3 0
       61 RETURN                           R0 0

PROTO_6:
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
       33 DUPTABLE                         R8 K17 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 NEWTABLE                         R9 0 8
       40 LOADK                            R10 K18 ["ConfigureExperience"]
       41 LOADK                            R11 K19 ["ConfigurePlace"]
       42 LOADK                            R12 K20 ["OpenPlace"]
       43 LOADK                            R13 K21 ["OpenACopy"]
       44 GETUPVAL                         R15 9
       45 JUMPIF                           R15 ; [+2]
       46 LOADK                            R14 K22 ["PublicPrivateToggle"]
       47 JUMP                             ; [+1]
       48 LOADK                            R14 K23 [""]
       49 LOADK                            R15 K24 ["Archive"]
       50 GETUPVAL                         R17 10
       51 JUMPIFNOT                        R17 ; [+2]
       52 LOADK                            R16 K25 ["DisableTeamCreate"]
       53 JUMP                             ; [+1]
       54 LOADK                            R16 K23 [""]
       55 GETUPVAL                         R18 11
       56 JUMPIFNOT                        R18 ; [+2]
       57 LOADK                            R17 K26 ["SaveAs"]
       58 JUMP                             ; [+1]
       59 LOADK                            R17 K23 [""]
       60 SETLIST                          R9 R10 8 [1]
       62 SETTABLEKS                       R9 R8 K11 ["KebabMenu"]
       64 GETUPVAL                         R9 12
       65 SETTABLEKS                       R9 R8 K12 ["CellSize"]
       67 GETUPVAL                         R9 13
       68 SETTABLEKS                       R9 R8 K13 ["FetchItems"]
       70 DUPTABLE                         R9 K30 [{["creatorType"] = "User", ["creatorTargetId"]}]
       71 GETUPVAL                         R11 14
       72 NAMECALL                         R11 R11 K31 ["GetUserId"]
       74 CALL                             R11 1 -1
       75 FASTCALL                         TOSTRING ; [+2]
       76 GETIMPORT                        R10 K33 [tostring]
       78 CALL                             R10 -1 1
       79 SETTABLEKS                       R10 R9 K29 ["creatorTargetId"]
       81 SETTABLEKS                       R9 R8 K14 ["NetworkQuery"]
       83 NEWCLOSURE                       R9 P0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U15
       87 CAPTURE                          UPVAL U14
       88 CAPTURE                          VAL R2
       89 CAPTURE                          REF R4
       90 CAPTURE                          REF R3
       91 CAPTURE                          REF R5
       92 CAPTURE                          UPVAL U16
       93 CAPTURE                          UPVAL U17
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U18
       96 SETTABLEKS                       R9 R8 K15 ["OnClick"]
       98 SETTABLEKS                       R0 R8 K16 ["NetworkViewProps"]
      100 CALL                             R6 2 -1
      101 CLOSEUPVALS                      R3
      102 RETURN                           R6 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+58]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+55]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+52]
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
       54 JUMPIFNOT                        R1 ; [+6]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K13 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_group_tab"}]
       58 NAMECALL                         R1 R1 K14 ["log"]
       60 CALL                             R1 3 0
       61 RETURN                           R0 0

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
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 GETUPVAL                         R6 4
       14 JUMPIF                           R6 ; [+2]
       15 GETUPVAL                         R6 5
       16 JUMPIFNOT                        R6 ; [+10]
       17 GETUPVAL                         R6 6
       18 GETTABLEKS                       R6 R6 K1 ["getDialogManager"]
       20 CALL                             R6 0 1
       21 MOVE                             R4 R6
       22 GETUPVAL                         R6 6
       23 GETTABLEKS                       R6 R6 K2 ["getActionsBridge"]
       25 CALL                             R6 0 1
       26 MOVE                             R5 R6
       27 GETTABLEKS                       R6 R0 K3 ["BaseQuery"]
       29 JUMPIFNOT                        R6 ; [+69]
       30 GETTABLEKS                       R6 R0 K3 ["BaseQuery"]
       32 GETTABLEKS                       R6 R6 K4 ["creatorTargetId"]
       34 JUMPIFNOT                        R6 ; [+64]
       35 GETUPVAL                         R6 7
       36 GETTABLEKS                       R6 R6 K5 ["createElement"]
       38 GETUPVAL                         R7 8
       39 DUPTABLE                         R8 K18 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = False, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       40 GETTABLEKS                       R9 R0 K3 ["BaseQuery"]
       42 SETTABLEKS                       R9 R8 K3 ["BaseQuery"]
       44 NEWTABLE                         R9 0 8
       46 LOADK                            R10 K19 ["ConfigureExperience"]
       47 LOADK                            R11 K20 ["ConfigurePlace"]
       48 LOADK                            R12 K21 ["OpenPlace"]
       49 LOADK                            R13 K22 ["OpenACopy"]
       50 GETUPVAL                         R15 9
       51 JUMPIF                           R15 ; [+2]
       52 LOADK                            R14 K23 ["PublicPrivateToggle"]
       53 JUMP                             ; [+1]
       54 LOADK                            R14 K24 [""]
       55 LOADK                            R15 K25 ["Archive"]
       56 GETUPVAL                         R17 10
       57 JUMPIFNOT                        R17 ; [+2]
       58 LOADK                            R16 K26 ["DisableTeamCreate"]
       59 JUMP                             ; [+1]
       60 LOADK                            R16 K24 [""]
       61 GETUPVAL                         R18 11
       62 JUMPIFNOT                        R18 ; [+2]
       63 LOADK                            R17 K27 ["SaveAs"]
       64 JUMP                             ; [+1]
       65 LOADK                            R17 K24 [""]
       66 SETLIST                          R9 R10 8 [1]
       68 SETTABLEKS                       R9 R8 K12 ["KebabMenu"]
       70 GETUPVAL                         R9 12
       71 SETTABLEKS                       R9 R8 K13 ["CellSize"]
       73 GETUPVAL                         R9 13
       74 SETTABLEKS                       R9 R8 K14 ["FetchItems"]
       76 DUPTABLE                         R9 K30 [{["creatorType"] = "Group"}]
       77 SETTABLEKS                       R9 R8 K15 ["NetworkQuery"]
       79 NEWCLOSURE                       R9 P0
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          UPVAL U14
       83 CAPTURE                          UPVAL U15
       84 CAPTURE                          VAL R3
       85 CAPTURE                          REF R5
       86 CAPTURE                          REF R4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          UPVAL U16
       89 CAPTURE                          UPVAL U17
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U18
       92 SETTABLEKS                       R9 R8 K16 ["OnClick"]
       94 SETTABLEKS                       R0 R8 K17 ["NetworkViewProps"]
       96 CALL                             R6 2 -1
       97 CLOSEUPVALS                      R4
       98 RETURN                           R6 -1
       99 GETUPVAL                         R6 7
      100 GETTABLEKS                       R6 R6 K5 ["createElement"]
      102 GETUPVAL                         R7 19
      103 GETUPVAL                         R8 20
      104 MOVE                             R9 R0
      105 DUPTABLE                         R10 K32 [{"title"}]
      106 LOADK                            R13 K33 ["Plugin"]
      107 LOADK                            R14 K34 ["NoGroupsToDisplay"]
      108 NAMECALL                         R11 R2 K35 ["getText"]
      110 CALL                             R11 3 1
      111 SETTABLEKS                       R11 R10 K31 ["title"]
      113 CALL                             R8 2 -1
      114 CALL                             R6 -1 -1
      115 CLOSEUPVALS                      R4
      116 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+58]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+55]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+52]
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
       54 JUMPIFNOT                        R1 ; [+6]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K13 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "experiences_shared_tab"}]
       58 NAMECALL                         R1 R1 K14 ["log"]
       60 CALL                             R1 3 0
       61 RETURN                           R0 0

PROTO_10:
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
       33 DUPTABLE                         R8 K16 [{["BaseQuery"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"], ["CellSize"], ["FetchItems"], ["NetworkQuery"], ["OnClick"], ["NetworkViewProps"]}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 NEWTABLE                         R9 0 5
       40 LOADK                            R10 K17 ["OpenPlace"]
       41 LOADK                            R11 K18 ["OpenACopy"]
       42 LOADK                            R12 K19 ["RemoveShared"]
       43 GETUPVAL                         R14 9
       44 JUMPIFNOT                        R14 ; [+2]
       45 LOADK                            R13 K20 ["DisableTeamCreate"]
       46 JUMP                             ; [+1]
       47 LOADK                            R13 K21 [""]
       48 GETUPVAL                         R15 10
       49 JUMPIFNOT                        R15 ; [+2]
       50 LOADK                            R14 K22 ["SaveAs"]
       51 JUMP                             ; [+1]
       52 LOADK                            R14 K21 [""]
       53 SETLIST                          R9 R10 5 [1]
       55 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       57 GETUPVAL                         R9 11
       58 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       60 GETUPVAL                         R9 12
       61 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       63 DUPTABLE                         R9 K28 [{["searchKey"] = "Experiences", ["creatorType"] = "Team", ["creatorTargetId"]}]
       64 GETUPVAL                         R11 13
       65 NAMECALL                         R11 R11 K29 ["GetUserId"]
       67 CALL                             R11 1 -1
       68 FASTCALL                         TOSTRING ; [+2]
       69 GETIMPORT                        R10 K31 [tostring]
       71 CALL                             R10 -1 1
       72 SETTABLEKS                       R10 R9 K27 ["creatorTargetId"]
       74 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       76 NEWCLOSURE                       R9 P0
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U14
       80 CAPTURE                          UPVAL U13
       81 CAPTURE                          VAL R2
       82 CAPTURE                          REF R4
       83 CAPTURE                          REF R3
       84 CAPTURE                          REF R5
       85 CAPTURE                          UPVAL U15
       86 CAPTURE                          UPVAL U16
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U17
       89 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       91 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       93 CALL                             R6 2 -1
       94 CLOSEUPVALS                      R3
       95 RETURN                           R6 -1

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
       13 NEWTABLE                         R5 0 1
       15 LOADK                            R6 K16 ["RemoveRecent"]
       16 SETLIST                          R5 R6 1 [1]
       18 SETTABLEKS                       R5 R4 K9 ["KebabMenu"]
       20 GETUPVAL                         R5 3
       21 SETTABLEKS                       R5 R4 K10 ["CellSize"]
       23 GETUPVAL                         R5 4
       24 SETTABLEKS                       R5 R4 K11 ["FetchItems"]
       26 DUPTABLE                         R5 K21 [{["searchKey"] = "Local", ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = False}]
       27 SETTABLEKS                       R5 R4 K12 ["NetworkQuery"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U7
       34 SETTABLEKS                       R5 R4 K13 ["OnClick"]
       36 SETTABLEKS                       R0 R4 K14 ["NetworkViewProps"]
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1

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
       36 GETTABLEKS                       R7 R7 K14 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
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
      140 GETTABLEKS                       R20 R20 K31 ["DiscoverCreatorEligibilityAndOpenPlace"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R0 K11 ["Src"]
      147 GETTABLEKS                       R21 R21 K27 ["Network"]
      149 GETTABLEKS                       R21 R21 K32 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R22 R0 K11 ["Src"]
      156 GETTABLEKS                       R22 R22 K12 ["SharedFlags"]
      158 GETTABLEKS                       R22 R22 K33 ["getFFlagLuaStartPageTableContextMenu"]
      160 CALL                             R21 1 1
      161 CALL                             R21 0 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K11 ["Src"]
      166 GETTABLEKS                       R23 R23 K12 ["SharedFlags"]
      168 GETTABLEKS                       R23 R23 K34 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      170 CALL                             R22 1 1
      171 CALL                             R22 0 1
      172 GETIMPORT                        R23 K5 [require]
      174 GETTABLEKS                       R24 R0 K11 ["Src"]
      176 GETTABLEKS                       R24 R24 K12 ["SharedFlags"]
      178 GETTABLEKS                       R24 R24 K35 ["getFFlagStartPageAllowDisableTeamCreate"]
      180 CALL                             R23 1 1
      181 CALL                             R23 0 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K11 ["Src"]
      186 GETTABLEKS                       R25 R25 K12 ["SharedFlags"]
      188 GETTABLEKS                       R25 R25 K36 ["getFFlagStartPageSaveAsCopy"]
      190 CALL                             R24 1 1
      191 CALL                             R24 0 1
      192 GETIMPORT                        R25 K5 [require]
      194 GETTABLEKS                       R26 R0 K11 ["Src"]
      196 GETTABLEKS                       R26 R26 K37 ["Contexts"]
      198 GETTABLEKS                       R26 R26 K38 ["ContextMenuActions"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K5 [require]
      203 GETTABLEKS                       R27 R0 K11 ["Src"]
      205 GETTABLEKS                       R27 R27 K39 ["Util"]
      207 GETTABLEKS                       R27 R27 K40 ["Dialogs"]
      209 CALL                             R26 1 1
      210 GETIMPORT                        R27 K5 [require]
      212 GETTABLEKS                       R28 R0 K11 ["Src"]
      214 GETTABLEKS                       R28 R28 K39 ["Util"]
      216 GETTABLEKS                       R28 R28 K41 ["SortingOptions"]
      218 CALL                             R27 1 1
      219 GETIMPORT                        R28 K5 [require]
      221 GETTABLEKS                       R29 R0 K11 ["Src"]
      223 GETTABLEKS                       R29 R29 K39 ["Util"]
      225 GETTABLEKS                       R29 R29 K42 ["Services"]
      227 CALL                             R28 1 1
      228 GETTABLEKS                       R29 R28 K43 ["StartPageManager"]
      230 GETTABLEKS                       R30 R28 K44 ["StudioService"]
      232 GETIMPORT                        R31 K5 [require]
      234 GETTABLEKS                       R32 R0 K11 ["Src"]
      236 GETTABLEKS                       R32 R32 K39 ["Util"]
      238 GETTABLEKS                       R32 R32 K45 ["Telemetry"]
      240 GETTABLEKS                       R32 R32 K46 ["TelemetryContext"]
      242 CALL                             R31 1 1
      243 GETIMPORT                        R32 K5 [require]
      245 GETTABLEKS                       R33 R0 K11 ["Src"]
      247 GETTABLEKS                       R33 R33 K39 ["Util"]
      249 GETTABLEKS                       R33 R33 K45 ["Telemetry"]
      251 GETTABLEKS                       R33 R33 K47 ["StartPageTelemetryEvent"]
      253 CALL                             R32 1 1
      254 GETIMPORT                        R33 K5 [require]
      256 GETTABLEKS                       R34 R0 K11 ["Src"]
      258 GETTABLEKS                       R34 R34 K12 ["SharedFlags"]
      260 GETTABLEKS                       R34 R34 K48 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      262 CALL                             R33 1 1
      263 CALL                             R33 0 1
      264 GETIMPORT                        R34 K5 [require]
      266 GETTABLEKS                       R35 R0 K11 ["Src"]
      268 GETTABLEKS                       R35 R35 K12 ["SharedFlags"]
      270 GETTABLEKS                       R35 R35 K49 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      272 CALL                             R34 1 1
      273 CALL                             R34 0 1
      274 GETIMPORT                        R35 K52 [UDim2.new]
      276 LOADN                            R36 0
      277 LOADN                            R37 200
      278 LOADN                            R38 0
      279 LOADN                            R39 200
      280 CALL                             R35 4 1
      281 GETIMPORT                        R36 K52 [UDim2.new]
      283 LOADN                            R37 0
      284 LOADN                            R38 225
      285 LOADN                            R39 0
      286 LOADN                            R40 325
      287 CALL                             R36 4 1
      288 GETIMPORT                        R37 K52 [UDim2.new]
      290 LOADN                            R38 0
      291 LOADN                            R39 225
      292 LOADN                            R40 0
      293 LOADN                            R41 348
      294 CALL                             R37 4 1
      295 DUPCLOSURE                       R38 K53 [PROTO_0]
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R27
      298 DUPTABLE                         R39 K61 [{["searchKey"] = "Experiences", ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 30}]
      299 DUPCLOSURE                       R40 K62 [PROTO_4]
      300 CAPTURE                          VAL R10
      301 CAPTURE                          VAL R39
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R12
      305 CAPTURE                          VAL R35
      306 CAPTURE                          VAL R21
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R25
      309 DUPCLOSURE                       R41 K63 [PROTO_6]
      310 CAPTURE                          VAL R31
      311 CAPTURE                          VAL R4
      312 CAPTURE                          VAL R26
      313 CAPTURE                          VAL R34
      314 CAPTURE                          VAL R33
      315 CAPTURE                          VAL R28
      316 CAPTURE                          VAL R8
      317 CAPTURE                          VAL R1
      318 CAPTURE                          VAL R40
      319 CAPTURE                          VAL R6
      320 CAPTURE                          VAL R23
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R36
      323 CAPTURE                          VAL R17
      324 CAPTURE                          VAL R30
      325 CAPTURE                          VAL R20
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R5
      328 CAPTURE                          VAL R32
      329 DUPCLOSURE                       R42 K64 [PROTO_8]
      330 CAPTURE                          VAL R31
      331 CAPTURE                          VAL R8
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R26
      334 CAPTURE                          VAL R34
      335 CAPTURE                          VAL R33
      336 CAPTURE                          VAL R28
      337 CAPTURE                          VAL R1
      338 CAPTURE                          VAL R40
      339 CAPTURE                          VAL R6
      340 CAPTURE                          VAL R23
      341 CAPTURE                          VAL R24
      342 CAPTURE                          VAL R36
      343 CAPTURE                          VAL R17
      344 CAPTURE                          VAL R20
      345 CAPTURE                          VAL R30
      346 CAPTURE                          VAL R19
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R32
      349 CAPTURE                          VAL R15
      350 CAPTURE                          VAL R10
      351 DUPCLOSURE                       R43 K65 [PROTO_10]
      352 CAPTURE                          VAL R31
      353 CAPTURE                          VAL R4
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R34
      356 CAPTURE                          VAL R33
      357 CAPTURE                          VAL R28
      358 CAPTURE                          VAL R8
      359 CAPTURE                          VAL R1
      360 CAPTURE                          VAL R40
      361 CAPTURE                          VAL R23
      362 CAPTURE                          VAL R24
      363 CAPTURE                          VAL R37
      364 CAPTURE                          VAL R17
      365 CAPTURE                          VAL R30
      366 CAPTURE                          VAL R20
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R5
      369 CAPTURE                          VAL R32
      370 DUPCLOSURE                       R44 K66 [PROTO_12]
      371 CAPTURE                          VAL R31
      372 CAPTURE                          VAL R1
      373 CAPTURE                          VAL R40
      374 CAPTURE                          VAL R36
      375 CAPTURE                          VAL R18
      376 CAPTURE                          VAL R29
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R32
      379 DUPCLOSURE                       R45 K67 [PROTO_14]
      380 CAPTURE                          VAL R8
      381 CAPTURE                          VAL R2
      382 CAPTURE                          VAL R38
      383 CAPTURE                          VAL R3
      384 CAPTURE                          VAL R16
      385 CAPTURE                          VAL R1
      386 CAPTURE                          VAL R14
      387 CAPTURE                          VAL R41
      388 CAPTURE                          VAL R42
      389 CAPTURE                          VAL R43
      390 CAPTURE                          VAL R44
      391 RETURN                           R45 1
