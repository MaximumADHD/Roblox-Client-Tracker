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
        2 JUMPIF                           R1 ; [+67]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+64]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+61]
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
       54 JUMPIFNOT                        R1 ; [+15]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K10 [{"telemetryType", "telemetrySubtype", "action"}]
       58 LOADK                            R5 K11 ["interaction"]
       59 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       61 LOADK                            R5 K12 ["place_open"]
       62 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       64 LOADK                            R5 K13 ["experiences_owned_tab"]
       65 SETTABLEKS                       R5 R4 K9 ["action"]
       67 NAMECALL                         R1 R1 K14 ["log"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0

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
       33 DUPTABLE                         R8 K15 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R8 K5 ["IsPrivacyVisible"]
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K6 ["IsDateModifiedVisible"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K7 ["IsDropdownMenuVisible"]
       47 LOADB                            R9 0
       48 SETTABLEKS                       R9 R8 K8 ["IsCreatorNameVisible"]
       50 NEWTABLE                         R9 0 7
       52 LOADK                            R10 K16 ["ConfigureExperience"]
       53 LOADK                            R11 K17 ["ConfigurePlace"]
       54 LOADK                            R12 K18 ["OpenPlace"]
       55 LOADK                            R13 K19 ["OpenACopy"]
       56 GETUPVAL                         R15 9
       57 JUMPIF                           R15 ; [+2]
       58 LOADK                            R14 K20 ["PublicPrivateToggle"]
       59 JUMP                             ; [+1]
       60 LOADK                            R14 K21 [""]
       61 LOADK                            R15 K22 ["Archive"]
       62 GETUPVAL                         R17 10
       63 JUMPIFNOT                        R17 ; [+2]
       64 LOADK                            R16 K23 ["DisableTeamCreate"]
       65 JUMP                             ; [+1]
       66 LOADK                            R16 K21 [""]
       67 SETLIST                          R9 R10 7 [1]
       69 SETTABLEKS                       R9 R8 K9 ["KebabMenu"]
       71 GETUPVAL                         R9 11
       72 SETTABLEKS                       R9 R8 K10 ["CellSize"]
       74 GETUPVAL                         R9 12
       75 SETTABLEKS                       R9 R8 K11 ["FetchItems"]
       77 DUPTABLE                         R9 K26 [{"creatorType", "creatorTargetId"}]
       78 LOADK                            R10 K27 ["User"]
       79 SETTABLEKS                       R10 R9 K24 ["creatorType"]
       81 GETUPVAL                         R11 13
       82 NAMECALL                         R11 R11 K28 ["GetUserId"]
       84 CALL                             R11 1 -1
       85 FASTCALL                         TOSTRING ; [+2]
       86 GETIMPORT                        R10 K30 [tostring]
       88 CALL                             R10 -1 1
       89 SETTABLEKS                       R10 R9 K25 ["creatorTargetId"]
       91 SETTABLEKS                       R9 R8 K12 ["NetworkQuery"]
       93 NEWCLOSURE                       R9 P0
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          UPVAL U13
       98 CAPTURE                          VAL R2
       99 CAPTURE                          REF R4
      100 CAPTURE                          REF R3
      101 CAPTURE                          REF R5
      102 CAPTURE                          UPVAL U15
      103 CAPTURE                          UPVAL U16
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U17
      106 SETTABLEKS                       R9 R8 K13 ["OnClick"]
      108 SETTABLEKS                       R0 R8 K14 ["NetworkViewProps"]
      110 CALL                             R6 2 -1
      111 CLOSEUPVALS                      R3
      112 RETURN                           R6 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+67]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+64]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+61]
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
       54 JUMPIFNOT                        R1 ; [+15]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K10 [{"telemetryType", "telemetrySubtype", "action"}]
       58 LOADK                            R5 K11 ["interaction"]
       59 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       61 LOADK                            R5 K12 ["place_open"]
       62 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       64 LOADK                            R5 K13 ["experiences_group_tab"]
       65 SETTABLEKS                       R5 R4 K9 ["action"]
       67 NAMECALL                         R1 R1 K14 ["log"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0

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
       29 JUMPIFNOT                        R6 ; [+79]
       30 GETTABLEKS                       R6 R0 K3 ["BaseQuery"]
       32 GETTABLEKS                       R6 R6 K4 ["creatorTargetId"]
       34 JUMPIFNOT                        R6 ; [+74]
       35 GETUPVAL                         R6 7
       36 GETTABLEKS                       R6 R6 K5 ["createElement"]
       38 GETUPVAL                         R7 8
       39 DUPTABLE                         R8 K16 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       40 GETTABLEKS                       R9 R0 K3 ["BaseQuery"]
       42 SETTABLEKS                       R9 R8 K3 ["BaseQuery"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K6 ["IsPrivacyVisible"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K7 ["IsDateModifiedVisible"]
       50 LOADB                            R9 1
       51 SETTABLEKS                       R9 R8 K8 ["IsDropdownMenuVisible"]
       53 LOADB                            R9 0
       54 SETTABLEKS                       R9 R8 K9 ["IsCreatorNameVisible"]
       56 NEWTABLE                         R9 0 7
       58 LOADK                            R10 K17 ["ConfigureExperience"]
       59 LOADK                            R11 K18 ["ConfigurePlace"]
       60 LOADK                            R12 K19 ["OpenPlace"]
       61 LOADK                            R13 K20 ["OpenACopy"]
       62 GETUPVAL                         R15 9
       63 JUMPIF                           R15 ; [+2]
       64 LOADK                            R14 K21 ["PublicPrivateToggle"]
       65 JUMP                             ; [+1]
       66 LOADK                            R14 K22 [""]
       67 LOADK                            R15 K23 ["Archive"]
       68 GETUPVAL                         R17 10
       69 JUMPIFNOT                        R17 ; [+2]
       70 LOADK                            R16 K24 ["DisableTeamCreate"]
       71 JUMP                             ; [+1]
       72 LOADK                            R16 K22 [""]
       73 SETLIST                          R9 R10 7 [1]
       75 SETTABLEKS                       R9 R8 K10 ["KebabMenu"]
       77 GETUPVAL                         R9 11
       78 SETTABLEKS                       R9 R8 K11 ["CellSize"]
       80 GETUPVAL                         R9 12
       81 SETTABLEKS                       R9 R8 K12 ["FetchItems"]
       83 DUPTABLE                         R9 K26 [{"creatorType"}]
       84 LOADK                            R10 K27 ["Group"]
       85 SETTABLEKS                       R10 R9 K25 ["creatorType"]
       87 SETTABLEKS                       R9 R8 K13 ["NetworkQuery"]
       89 NEWCLOSURE                       R9 P0
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          UPVAL U13
       93 CAPTURE                          UPVAL U14
       94 CAPTURE                          VAL R3
       95 CAPTURE                          REF R5
       96 CAPTURE                          REF R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U15
       99 CAPTURE                          UPVAL U16
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U17
      102 SETTABLEKS                       R9 R8 K14 ["OnClick"]
      104 SETTABLEKS                       R0 R8 K15 ["NetworkViewProps"]
      106 CALL                             R6 2 -1
      107 CLOSEUPVALS                      R4
      108 RETURN                           R6 -1
      109 GETUPVAL                         R6 7
      110 GETTABLEKS                       R6 R6 K5 ["createElement"]
      112 GETUPVAL                         R7 18
      113 GETUPVAL                         R8 19
      114 MOVE                             R9 R0
      115 DUPTABLE                         R10 K29 [{"title"}]
      116 LOADK                            R13 K30 ["Plugin"]
      117 LOADK                            R14 K31 ["NoGroupsToDisplay"]
      118 NAMECALL                         R11 R2 K32 ["getText"]
      120 CALL                             R11 3 1
      121 SETTABLEKS                       R11 R10 K28 ["title"]
      123 CALL                             R8 2 -1
      124 CALL                             R6 -1 -1
      125 CLOSEUPVALS                      R4
      126 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+67]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+64]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+61]
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
       54 JUMPIFNOT                        R1 ; [+15]
       55 GETUPVAL                         R1 10
       56 GETUPVAL                         R3 11
       57 DUPTABLE                         R4 K10 [{"telemetryType", "telemetrySubtype", "action"}]
       58 LOADK                            R5 K11 ["interaction"]
       59 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       61 LOADK                            R5 K12 ["place_open"]
       62 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       64 LOADK                            R5 K13 ["experiences_shared_tab"]
       65 SETTABLEKS                       R5 R4 K9 ["action"]
       67 NAMECALL                         R1 R1 K14 ["log"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0

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
       33 DUPTABLE                         R8 K15 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       34 GETTABLEKS                       R9 R0 K4 ["BaseQuery"]
       36 SETTABLEKS                       R9 R8 K4 ["BaseQuery"]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R8 K5 ["IsPrivacyVisible"]
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K6 ["IsDateModifiedVisible"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K7 ["IsDropdownMenuVisible"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K8 ["IsCreatorNameVisible"]
       50 NEWTABLE                         R9 0 4
       52 LOADK                            R10 K16 ["OpenPlace"]
       53 LOADK                            R11 K17 ["OpenACopy"]
       54 LOADK                            R12 K18 ["RemoveShared"]
       55 GETUPVAL                         R14 9
       56 JUMPIFNOT                        R14 ; [+2]
       57 LOADK                            R13 K19 ["DisableTeamCreate"]
       58 JUMP                             ; [+1]
       59 LOADK                            R13 K20 [""]
       60 SETLIST                          R9 R10 4 [1]
       62 SETTABLEKS                       R9 R8 K9 ["KebabMenu"]
       64 GETUPVAL                         R9 10
       65 SETTABLEKS                       R9 R8 K10 ["CellSize"]
       67 GETUPVAL                         R9 11
       68 SETTABLEKS                       R9 R8 K11 ["FetchItems"]
       70 DUPTABLE                         R9 K24 [{"searchKey", "creatorType", "creatorTargetId"}]
       71 LOADK                            R10 K25 ["Experiences"]
       72 SETTABLEKS                       R10 R9 K21 ["searchKey"]
       74 LOADK                            R10 K26 ["Team"]
       75 SETTABLEKS                       R10 R9 K22 ["creatorType"]
       77 GETUPVAL                         R11 12
       78 NAMECALL                         R11 R11 K27 ["GetUserId"]
       80 CALL                             R11 1 -1
       81 FASTCALL                         TOSTRING ; [+2]
       82 GETIMPORT                        R10 K29 [tostring]
       84 CALL                             R10 -1 1
       85 SETTABLEKS                       R10 R9 K23 ["creatorTargetId"]
       87 SETTABLEKS                       R9 R8 K12 ["NetworkQuery"]
       89 NEWCLOSURE                       R9 P0
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          UPVAL U13
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          VAL R2
       95 CAPTURE                          REF R4
       96 CAPTURE                          REF R3
       97 CAPTURE                          REF R5
       98 CAPTURE                          UPVAL U14
       99 CAPTURE                          UPVAL U15
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U16
      102 SETTABLEKS                       R9 R8 K13 ["OnClick"]
      104 SETTABLEKS                       R0 R8 K14 ["NetworkViewProps"]
      106 CALL                             R6 2 -1
      107 CLOSEUPVALS                      R3
      108 RETURN                           R6 -1

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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
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
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K1 ["createElement"]
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
      186 GETTABLEKS                       R25 R25 K36 ["Contexts"]
      188 GETTABLEKS                       R25 R25 K37 ["ContextMenuActions"]
      190 CALL                             R24 1 1
      191 GETIMPORT                        R25 K5 [require]
      193 GETTABLEKS                       R26 R0 K11 ["Src"]
      195 GETTABLEKS                       R26 R26 K38 ["Util"]
      197 GETTABLEKS                       R26 R26 K39 ["Dialogs"]
      199 CALL                             R25 1 1
      200 GETIMPORT                        R26 K5 [require]
      202 GETTABLEKS                       R27 R0 K11 ["Src"]
      204 GETTABLEKS                       R27 R27 K38 ["Util"]
      206 GETTABLEKS                       R27 R27 K40 ["SortingOptions"]
      208 CALL                             R26 1 1
      209 GETIMPORT                        R27 K5 [require]
      211 GETTABLEKS                       R28 R0 K11 ["Src"]
      213 GETTABLEKS                       R28 R28 K38 ["Util"]
      215 GETTABLEKS                       R28 R28 K41 ["Services"]
      217 CALL                             R27 1 1
      218 GETTABLEKS                       R28 R27 K42 ["StartPageManager"]
      220 GETTABLEKS                       R29 R27 K43 ["StudioService"]
      222 GETIMPORT                        R30 K5 [require]
      224 GETTABLEKS                       R31 R0 K11 ["Src"]
      226 GETTABLEKS                       R31 R31 K38 ["Util"]
      228 GETTABLEKS                       R31 R31 K44 ["Telemetry"]
      230 GETTABLEKS                       R31 R31 K45 ["TelemetryContext"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K5 [require]
      235 GETTABLEKS                       R32 R0 K11 ["Src"]
      237 GETTABLEKS                       R32 R32 K38 ["Util"]
      239 GETTABLEKS                       R32 R32 K44 ["Telemetry"]
      241 GETTABLEKS                       R32 R32 K46 ["StartPageTelemetryEvent"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K5 [require]
      246 GETTABLEKS                       R33 R0 K11 ["Src"]
      248 GETTABLEKS                       R33 R33 K12 ["SharedFlags"]
      250 GETTABLEKS                       R33 R33 K47 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      252 CALL                             R32 1 1
      253 CALL                             R32 0 1
      254 GETIMPORT                        R33 K5 [require]
      256 GETTABLEKS                       R34 R0 K11 ["Src"]
      258 GETTABLEKS                       R34 R34 K12 ["SharedFlags"]
      260 GETTABLEKS                       R34 R34 K48 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      262 CALL                             R33 1 1
      263 CALL                             R33 0 1
      264 GETIMPORT                        R34 K51 [UDim2.new]
      266 LOADN                            R35 0
      267 LOADN                            R36 200
      268 LOADN                            R37 0
      269 LOADN                            R38 200
      270 CALL                             R34 4 1
      271 GETIMPORT                        R35 K51 [UDim2.new]
      273 LOADN                            R36 0
      274 LOADN                            R37 225
      275 LOADN                            R38 0
      276 LOADN                            R39 69
      277 CALL                             R35 4 1
      278 GETIMPORT                        R36 K51 [UDim2.new]
      280 LOADN                            R37 0
      281 LOADN                            R38 225
      282 LOADN                            R39 0
      283 LOADN                            R40 92
      284 CALL                             R36 4 1
      285 DUPCLOSURE                       R37 K52 [PROTO_0]
      286 CAPTURE                          VAL R8
      287 CAPTURE                          VAL R26
      288 DUPTABLE                         R38 K57 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
      289 LOADK                            R39 K58 ["Experiences"]
      290 SETTABLEKS                       R39 R38 K53 ["searchKey"]
      292 LOADB                            R39 0
      293 SETTABLEKS                       R39 R38 K54 ["isArchived"]
      295 LOADB                            R39 0
      296 SETTABLEKS                       R39 R38 K55 ["isTemplates"]
      298 LOADN                            R39 30
      299 SETTABLEKS                       R39 R38 K56 ["pageSize"]
      301 DUPCLOSURE                       R39 K59 [PROTO_4]
      302 CAPTURE                          VAL R10
      303 CAPTURE                          VAL R38
      304 CAPTURE                          VAL R1
      305 CAPTURE                          VAL R13
      306 CAPTURE                          VAL R12
      307 CAPTURE                          VAL R34
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R24
      311 DUPCLOSURE                       R40 K60 [PROTO_6]
      312 CAPTURE                          VAL R30
      313 CAPTURE                          VAL R4
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R33
      316 CAPTURE                          VAL R32
      317 CAPTURE                          VAL R27
      318 CAPTURE                          VAL R8
      319 CAPTURE                          VAL R1
      320 CAPTURE                          VAL R39
      321 CAPTURE                          VAL R6
      322 CAPTURE                          VAL R23
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R17
      325 CAPTURE                          VAL R29
      326 CAPTURE                          VAL R20
      327 CAPTURE                          VAL R19
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R31
      330 DUPCLOSURE                       R41 K61 [PROTO_8]
      331 CAPTURE                          VAL R30
      332 CAPTURE                          VAL R8
      333 CAPTURE                          VAL R4
      334 CAPTURE                          VAL R25
      335 CAPTURE                          VAL R33
      336 CAPTURE                          VAL R32
      337 CAPTURE                          VAL R27
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R39
      340 CAPTURE                          VAL R6
      341 CAPTURE                          VAL R23
      342 CAPTURE                          VAL R35
      343 CAPTURE                          VAL R17
      344 CAPTURE                          VAL R20
      345 CAPTURE                          VAL R29
      346 CAPTURE                          VAL R19
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R31
      349 CAPTURE                          VAL R15
      350 CAPTURE                          VAL R10
      351 DUPCLOSURE                       R42 K62 [PROTO_10]
      352 CAPTURE                          VAL R30
      353 CAPTURE                          VAL R4
      354 CAPTURE                          VAL R25
      355 CAPTURE                          VAL R33
      356 CAPTURE                          VAL R32
      357 CAPTURE                          VAL R27
      358 CAPTURE                          VAL R8
      359 CAPTURE                          VAL R1
      360 CAPTURE                          VAL R39
      361 CAPTURE                          VAL R23
      362 CAPTURE                          VAL R36
      363 CAPTURE                          VAL R17
      364 CAPTURE                          VAL R29
      365 CAPTURE                          VAL R20
      366 CAPTURE                          VAL R19
      367 CAPTURE                          VAL R5
      368 CAPTURE                          VAL R31
      369 DUPCLOSURE                       R43 K63 [PROTO_12]
      370 CAPTURE                          VAL R30
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R39
      373 CAPTURE                          VAL R35
      374 CAPTURE                          VAL R18
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R5
      377 CAPTURE                          VAL R31
      378 DUPCLOSURE                       R44 K64 [PROTO_14]
      379 CAPTURE                          VAL R8
      380 CAPTURE                          VAL R2
      381 CAPTURE                          VAL R37
      382 CAPTURE                          VAL R3
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R1
      385 CAPTURE                          VAL R14
      386 CAPTURE                          VAL R40
      387 CAPTURE                          VAL R41
      388 CAPTURE                          VAL R42
      389 CAPTURE                          VAL R43
      390 RETURN                           R44 1
