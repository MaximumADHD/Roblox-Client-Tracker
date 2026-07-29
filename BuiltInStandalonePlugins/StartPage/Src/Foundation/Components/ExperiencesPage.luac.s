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
       38 NEWTABLE                         R9 0 9
       40 LOADK                            R10 K18 ["ConfigureExperience"]
       41 GETUPVAL                         R12 9
       42 JUMPIFNOT                        R12 ; [+2]
       43 LOADK                            R11 K19 ["ViewPlaces"]
       44 JUMP                             ; [+1]
       45 LOADK                            R11 K20 [""]
       46 LOADK                            R12 K21 ["ConfigurePlace"]
       47 LOADK                            R13 K22 ["OpenPlace"]
       48 LOADK                            R14 K23 ["OpenACopy"]
       49 GETUPVAL                         R16 10
       50 JUMPIF                           R16 ; [+2]
       51 LOADK                            R15 K24 ["PublicPrivateToggle"]
       52 JUMP                             ; [+1]
       53 LOADK                            R15 K20 [""]
       54 LOADK                            R16 K25 ["Archive"]
       55 GETUPVAL                         R18 11
       56 JUMPIFNOT                        R18 ; [+2]
       57 LOADK                            R17 K26 ["DisableTeamCreate"]
       58 JUMP                             ; [+1]
       59 LOADK                            R17 K20 [""]
       60 GETUPVAL                         R19 12
       61 JUMPIFNOT                        R19 ; [+2]
       62 LOADK                            R18 K27 ["SaveAs"]
       63 JUMP                             ; [+1]
       64 LOADK                            R18 K20 [""]
       65 SETLIST                          R9 R10 9 [1]
       67 SETTABLEKS                       R9 R8 K11 ["KebabMenu"]
       69 GETUPVAL                         R9 13
       70 SETTABLEKS                       R9 R8 K12 ["CellSize"]
       72 GETUPVAL                         R9 14
       73 SETTABLEKS                       R9 R8 K13 ["FetchItems"]
       75 DUPTABLE                         R9 K31 [{["creatorType"] = "User", ["creatorTargetId"]}]
       76 GETUPVAL                         R11 15
       77 NAMECALL                         R11 R11 K32 ["GetUserId"]
       79 CALL                             R11 1 -1
       80 FASTCALL                         TOSTRING ; [+2]
       81 GETIMPORT                        R10 K34 [tostring]
       83 CALL                             R10 -1 1
       84 SETTABLEKS                       R10 R9 K30 ["creatorTargetId"]
       86 SETTABLEKS                       R9 R8 K14 ["NetworkQuery"]
       88 NEWCLOSURE                       R9 P0
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U16
       92 CAPTURE                          UPVAL U15
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R4
       95 CAPTURE                          REF R3
       96 CAPTURE                          REF R5
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          UPVAL U18
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U19
      101 SETTABLEKS                       R9 R8 K15 ["OnClick"]
      103 SETTABLEKS                       R0 R8 K16 ["NetworkViewProps"]
      105 CALL                             R6 2 -1
      106 CLOSEUPVALS                      R3
      107 RETURN                           R6 -1

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
       38 NEWTABLE                         R9 0 6
       40 LOADK                            R10 K17 ["OpenPlace"]
       41 GETUPVAL                         R12 9
       42 JUMPIFNOT                        R12 ; [+2]
       43 LOADK                            R11 K18 ["ViewPlaces"]
       44 JUMP                             ; [+1]
       45 LOADK                            R11 K19 [""]
       46 LOADK                            R12 K20 ["OpenACopy"]
       47 LOADK                            R13 K21 ["RemoveShared"]
       48 GETUPVAL                         R15 10
       49 JUMPIFNOT                        R15 ; [+2]
       50 LOADK                            R14 K22 ["DisableTeamCreate"]
       51 JUMP                             ; [+1]
       52 LOADK                            R14 K19 [""]
       53 GETUPVAL                         R16 11
       54 JUMPIFNOT                        R16 ; [+2]
       55 LOADK                            R15 K23 ["SaveAs"]
       56 JUMP                             ; [+1]
       57 LOADK                            R15 K19 [""]
       58 SETLIST                          R9 R10 6 [1]
       60 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       62 GETUPVAL                         R9 12
       63 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       65 GETUPVAL                         R9 13
       66 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       68 DUPTABLE                         R9 K29 [{["searchKey"] = "Experiences", ["creatorType"] = "Team", ["creatorTargetId"]}]
       69 GETUPVAL                         R11 14
       70 NAMECALL                         R11 R11 K30 ["GetUserId"]
       72 CALL                             R11 1 -1
       73 FASTCALL                         TOSTRING ; [+2]
       74 GETIMPORT                        R10 K32 [tostring]
       76 CALL                             R10 -1 1
       77 SETTABLEKS                       R10 R9 K28 ["creatorTargetId"]
       79 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       81 NEWCLOSURE                       R9 P0
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U15
       85 CAPTURE                          UPVAL U14
       86 CAPTURE                          VAL R2
       87 CAPTURE                          REF R4
       88 CAPTURE                          REF R3
       89 CAPTURE                          REF R5
       90 CAPTURE                          UPVAL U16
       91 CAPTURE                          UPVAL U17
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U18
       94 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       96 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
       98 CALL                             R6 2 -1
       99 CLOSEUPVALS                      R3
      100 RETURN                           R6 -1

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
      178 GETTABLEKS                       R24 R24 K35 ["getFFlagLuaStartPageNewListView"]
      180 CALL                             R23 1 1
      181 CALL                             R23 0 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K11 ["Src"]
      186 GETTABLEKS                       R25 R25 K12 ["SharedFlags"]
      188 GETTABLEKS                       R25 R25 K36 ["getFFlagStartPageAllowDisableTeamCreate"]
      190 CALL                             R24 1 1
      191 CALL                             R24 0 1
      192 GETIMPORT                        R25 K5 [require]
      194 GETTABLEKS                       R26 R0 K11 ["Src"]
      196 GETTABLEKS                       R26 R26 K12 ["SharedFlags"]
      198 GETTABLEKS                       R26 R26 K37 ["getFFlagStartPageSaveAsCopy"]
      200 CALL                             R25 1 1
      201 CALL                             R25 0 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K11 ["Src"]
      206 GETTABLEKS                       R27 R27 K12 ["SharedFlags"]
      208 GETTABLEKS                       R27 R27 K38 ["getFFlagLuaStartPageViewPlacesDialog"]
      210 CALL                             R26 1 1
      211 CALL                             R26 0 1
      212 GETIMPORT                        R27 K5 [require]
      214 GETTABLEKS                       R28 R0 K11 ["Src"]
      216 GETTABLEKS                       R28 R28 K39 ["Contexts"]
      218 GETTABLEKS                       R28 R28 K40 ["ContextMenuActions"]
      220 CALL                             R27 1 1
      221 GETIMPORT                        R28 K5 [require]
      223 GETTABLEKS                       R29 R0 K11 ["Src"]
      225 GETTABLEKS                       R29 R29 K41 ["Util"]
      227 GETTABLEKS                       R29 R29 K42 ["Dialogs"]
      229 CALL                             R28 1 1
      230 GETIMPORT                        R29 K5 [require]
      232 GETTABLEKS                       R30 R0 K11 ["Src"]
      234 GETTABLEKS                       R30 R30 K41 ["Util"]
      236 GETTABLEKS                       R30 R30 K43 ["SortingOptions"]
      238 CALL                             R29 1 1
      239 GETIMPORT                        R30 K5 [require]
      241 GETTABLEKS                       R31 R0 K11 ["Src"]
      243 GETTABLEKS                       R31 R31 K41 ["Util"]
      245 GETTABLEKS                       R31 R31 K44 ["Services"]
      247 CALL                             R30 1 1
      248 GETTABLEKS                       R31 R30 K45 ["StartPageManager"]
      250 GETTABLEKS                       R32 R30 K46 ["StudioService"]
      252 GETIMPORT                        R33 K5 [require]
      254 GETTABLEKS                       R34 R0 K11 ["Src"]
      256 GETTABLEKS                       R34 R34 K41 ["Util"]
      258 GETTABLEKS                       R34 R34 K47 ["Telemetry"]
      260 GETTABLEKS                       R34 R34 K48 ["TelemetryContext"]
      262 CALL                             R33 1 1
      263 GETIMPORT                        R34 K5 [require]
      265 GETTABLEKS                       R35 R0 K11 ["Src"]
      267 GETTABLEKS                       R35 R35 K41 ["Util"]
      269 GETTABLEKS                       R35 R35 K47 ["Telemetry"]
      271 GETTABLEKS                       R35 R35 K49 ["StartPageTelemetryEvent"]
      273 CALL                             R34 1 1
      274 GETIMPORT                        R35 K5 [require]
      276 GETTABLEKS                       R36 R0 K11 ["Src"]
      278 GETTABLEKS                       R36 R36 K12 ["SharedFlags"]
      280 GETTABLEKS                       R36 R36 K50 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      282 CALL                             R35 1 1
      283 CALL                             R35 0 1
      284 GETIMPORT                        R36 K5 [require]
      286 GETTABLEKS                       R37 R0 K11 ["Src"]
      288 GETTABLEKS                       R37 R37 K12 ["SharedFlags"]
      290 GETTABLEKS                       R37 R37 K51 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      292 CALL                             R36 1 1
      293 CALL                             R36 0 1
      294 GETIMPORT                        R37 K54 [UDim2.new]
      296 LOADN                            R38 0
      297 LOADN                            R39 200
      298 LOADN                            R40 0
      299 LOADN                            R41 200
      300 CALL                             R37 4 1
      301 GETIMPORT                        R38 K54 [UDim2.new]
      303 LOADN                            R39 0
      304 LOADN                            R40 225
      305 LOADN                            R41 0
      306 LOADN                            R42 325
      307 CALL                             R38 4 1
      308 GETIMPORT                        R39 K54 [UDim2.new]
      310 LOADN                            R40 0
      311 LOADN                            R41 225
      312 LOADN                            R42 0
      313 LOADN                            R43 348
      314 CALL                             R39 4 1
      315 DUPCLOSURE                       R40 K55 [PROTO_0]
      316 CAPTURE                          VAL R8
      317 CAPTURE                          VAL R29
      318 DUPTABLE                         R41 K63 [{["searchKey"] = "Experiences", ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 30}]
      319 DUPCLOSURE                       R42 K64 [PROTO_4]
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R41
      322 CAPTURE                          VAL R1
      323 CAPTURE                          VAL R13
      324 CAPTURE                          VAL R12
      325 CAPTURE                          VAL R37
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R22
      328 CAPTURE                          VAL R23
      329 CAPTURE                          VAL R27
      330 DUPCLOSURE                       R43 K65 [PROTO_6]
      331 CAPTURE                          VAL R33
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R28
      334 CAPTURE                          VAL R36
      335 CAPTURE                          VAL R35
      336 CAPTURE                          VAL R30
      337 CAPTURE                          VAL R8
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R42
      340 CAPTURE                          VAL R26
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R24
      343 CAPTURE                          VAL R25
      344 CAPTURE                          VAL R38
      345 CAPTURE                          VAL R17
      346 CAPTURE                          VAL R32
      347 CAPTURE                          VAL R20
      348 CAPTURE                          VAL R19
      349 CAPTURE                          VAL R5
      350 CAPTURE                          VAL R34
      351 DUPCLOSURE                       R44 K66 [PROTO_8]
      352 CAPTURE                          VAL R33
      353 CAPTURE                          VAL R8
      354 CAPTURE                          VAL R4
      355 CAPTURE                          VAL R28
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R35
      358 CAPTURE                          VAL R30
      359 CAPTURE                          VAL R1
      360 CAPTURE                          VAL R42
      361 CAPTURE                          VAL R6
      362 CAPTURE                          VAL R24
      363 CAPTURE                          VAL R25
      364 CAPTURE                          VAL R38
      365 CAPTURE                          VAL R17
      366 CAPTURE                          VAL R20
      367 CAPTURE                          VAL R32
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R5
      370 CAPTURE                          VAL R34
      371 CAPTURE                          VAL R15
      372 CAPTURE                          VAL R10
      373 DUPCLOSURE                       R45 K67 [PROTO_10]
      374 CAPTURE                          VAL R33
      375 CAPTURE                          VAL R4
      376 CAPTURE                          VAL R28
      377 CAPTURE                          VAL R36
      378 CAPTURE                          VAL R35
      379 CAPTURE                          VAL R30
      380 CAPTURE                          VAL R8
      381 CAPTURE                          VAL R1
      382 CAPTURE                          VAL R42
      383 CAPTURE                          VAL R26
      384 CAPTURE                          VAL R24
      385 CAPTURE                          VAL R25
      386 CAPTURE                          VAL R39
      387 CAPTURE                          VAL R17
      388 CAPTURE                          VAL R32
      389 CAPTURE                          VAL R20
      390 CAPTURE                          VAL R19
      391 CAPTURE                          VAL R5
      392 CAPTURE                          VAL R34
      393 DUPCLOSURE                       R46 K68 [PROTO_12]
      394 CAPTURE                          VAL R33
      395 CAPTURE                          VAL R1
      396 CAPTURE                          VAL R42
      397 CAPTURE                          VAL R38
      398 CAPTURE                          VAL R18
      399 CAPTURE                          VAL R31
      400 CAPTURE                          VAL R5
      401 CAPTURE                          VAL R34
      402 DUPCLOSURE                       R47 K69 [PROTO_14]
      403 CAPTURE                          VAL R8
      404 CAPTURE                          VAL R2
      405 CAPTURE                          VAL R40
      406 CAPTURE                          VAL R3
      407 CAPTURE                          VAL R16
      408 CAPTURE                          VAL R1
      409 CAPTURE                          VAL R14
      410 CAPTURE                          VAL R43
      411 CAPTURE                          VAL R44
      412 CAPTURE                          VAL R45
      413 CAPTURE                          VAL R46
      414 RETURN                           R47 1
