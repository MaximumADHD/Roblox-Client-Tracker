PROTO_0:
        0 DUPTABLE                         R0 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
        1 LOADK                            R1 K10 ["Recents"]
        2 SETTABLEKS                       R1 R0 K0 ["searchKey"]
        4 LOADK                            R1 K11 [""]
        5 SETTABLEKS                       R1 R0 K1 ["search"]
        7 LOADK                            R1 K12 ["User"]
        8 SETTABLEKS                       R1 R0 K2 ["creatorType"]
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K13 ["GetUserId"]
       13 CALL                             R2 1 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R1 K15 [tostring]
       17 CALL                             R1 -1 1
       18 SETTABLEKS                       R1 R0 K3 ["creatorTargetId"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K4 ["isArchived"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K5 ["isTemplates"]
       26 LOADN                            R1 10
       27 SETTABLEKS                       R1 R0 K6 ["pageSize"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K7 ["getRecentLocalFiles"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K8 ["getRecentAPIGames"]
       35 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+24]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 NAMECALL                         R2 R2 K1 ["GetUserId"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K2 ["Id"]
       14 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       16 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K3 ["showVerifyAge"]
       21 GETUPVAL                         R8 4
       22 GETTABLEKS                       R7 R8 K4 ["showAgeRestricted"]
       24 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       26 GETUPVAL                         R9 5
       27 GETUPVAL                         R10 6
       28 GETUPVAL                         R11 7
       29 CALL                             R1 10 0
       30 JUMP                             ; [+27]
       31 GETUPVAL                         R1 8
       32 GETUPVAL                         R2 3
       33 NAMECALL                         R2 R2 K1 ["GetUserId"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R0 K2 ["Id"]
       38 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R5 R6 K3 ["showVerifyAge"]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R6 R7 K4 ["showAgeRestricted"]
       46 CALL                             R1 5 0
       47 JUMP                             ; [+10]
       48 GETTABLEKS                       R1 R0 K6 ["FilePath"]
       50 JUMPIFNOT                        R1 ; [+7]
       51 GETUPVAL                         R1 9
       52 GETTABLEKS                       R3 R0 K6 ["FilePath"]
       54 LOADB                            R4 0
       55 NAMECALL                         R1 R1 K7 ["openLocalFile"]
       57 CALL                             R1 3 0
       58 GETUPVAL                         R1 10
       59 JUMPIFNOT                        R1 ; [+28]
       60 GETUPVAL                         R1 11
       61 GETUPVAL                         R3 12
       62 DUPTABLE                         R4 K12 [{"telemetryType", "telemetrySubtype", "action", "name"}]
       63 LOADK                            R5 K13 ["interaction"]
       64 SETTABLEKS                       R5 R4 K8 ["telemetryType"]
       66 LOADK                            R5 K14 ["place_open"]
       67 SETTABLEKS                       R5 R4 K9 ["telemetrySubtype"]
       69 LOADK                            R5 K15 ["home_recent_sort"]
       70 SETTABLEKS                       R5 R4 K10 ["action"]
       72 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       74 JUMPIFNOT                        R6 ; [+2]
       75 LOADK                            R5 K16 ["published"]
       76 JUMP                             ; [+6]
       77 GETTABLEKS                       R6 R0 K6 ["FilePath"]
       79 JUMPIFNOT                        R6 ; [+2]
       80 LOADK                            R5 K17 ["local_file"]
       81 JUMP                             ; [+1]
       82 LOADK                            R5 K18 ["unknown"]
       83 SETTABLEKS                       R5 R4 K11 ["name"]
       85 NAMECALL                         R1 R1 K19 ["log"]
       87 CALL                             R1 3 0
       88 RETURN                           R0 0

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
       36 GETIMPORT                        R11 K14 [UDim2.new]
       38 LOADN                            R12 0
       39 LOADN                            R13 200
       40 LOADN                            R14 0
       41 LOADN                            R15 200
       42 CALL                             R11 4 1
       43 SETTABLEKS                       R11 R10 K4 ["ImageSize"]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R4
       52 CAPTURE                          REF R3
       53 CAPTURE                          REF R5
       54 CAPTURE                          UPVAL U12
       55 CAPTURE                          UPVAL U13
       56 CAPTURE                          UPVAL U14
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U15
       59 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K6 ["IsPrivacyVisible"]
       64 LOADB                            R11 1
       65 SETTABLEKS                       R11 R10 K7 ["IsDateModifiedVisible"]
       67 LOADB                            R11 1
       68 SETTABLEKS                       R11 R10 K8 ["IsDropdownMenuVisible"]
       70 LOADB                            R11 1
       71 SETTABLEKS                       R11 R10 K9 ["IsCreatorNameVisible"]
       73 GETUPVAL                         R11 16
       74 SETTABLEKS                       R11 R10 K10 ["KebabMenu"]
       76 CALL                             R8 2 -1
       77 CALL                             R6 -1 -1
       78 CLOSEUPVALS                      R3
       79 RETURN                           R6 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R1 ; [+60]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+20]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 NAMECALL                         R2 R2 K1 ["GetUserId"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K2 ["Id"]
       14 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       16 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       18 DUPCLOSURE                       R6 K3 [PROTO_3]
       19 DUPCLOSURE                       R7 K4 [PROTO_4]
       20 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       22 GETUPVAL                         R9 4
       23 GETUPVAL                         R10 5
       24 GETUPVAL                         R11 6
       25 CALL                             R1 10 0
       26 JUMP                             ; [+12]
       27 GETUPVAL                         R1 7
       28 GETUPVAL                         R2 3
       29 NAMECALL                         R2 R2 K1 ["GetUserId"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R0 K2 ["Id"]
       34 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       36 DUPCLOSURE                       R5 K6 [PROTO_5]
       37 DUPCLOSURE                       R6 K7 [PROTO_6]
       38 CALL                             R1 5 0
       39 GETUPVAL                         R1 8
       40 JUMPIFNOT                        R1 ; [+22]
       41 GETUPVAL                         R1 9
       42 GETUPVAL                         R3 10
       43 DUPTABLE                         R4 K12 [{"telemetryType", "telemetrySubtype", "action", "name"}]
       44 LOADK                            R5 K13 ["interaction"]
       45 SETTABLEKS                       R5 R4 K8 ["telemetryType"]
       47 LOADK                            R5 K14 ["place_open"]
       48 SETTABLEKS                       R5 R4 K9 ["telemetrySubtype"]
       50 LOADK                            R5 K15 ["home_template_sort"]
       51 SETTABLEKS                       R5 R4 K10 ["action"]
       53 GETTABLEKS                       R5 R0 K16 ["Name"]
       55 JUMPIF                           R5 ; [+2]
       56 GETTABLEKS                       R5 R0 K2 ["Id"]
       58 SETTABLEKS                       R5 R4 K11 ["name"]
       60 NAMECALL                         R1 R1 K17 ["log"]
       62 CALL                             R1 3 0
       63 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 JUMPIF                           R5 ; [+2]
        9 GETUPVAL                         R5 2
       10 JUMPIFNOT                        R5 ; [+15]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K1 ["getDialogManager"]
       14 CALL                             R5 0 1
       15 MOVE                             R2 R5
       16 GETUPVAL                         R5 4
       17 NAMECALL                         R5 R5 K0 ["use"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K2 ["getActionsBridge"]
       24 CALL                             R5 0 1
       25 MOVE                             R3 R5
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R5 R6 K3 ["createElement"]
       29 GETUPVAL                         R6 6
       30 GETUPVAL                         R7 7
       31 MOVE                             R8 R0
       32 DUPTABLE                         R9 K6 [{"ImageSize", "OnClick"}]
       33 GETIMPORT                        R10 K9 [UDim2.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 200
       37 LOADN                            R13 0
       38 LOADN                            R14 200
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K4 ["ImageSize"]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          REF R3
       48 CAPTURE                          REF R2
       49 CAPTURE                          REF R4
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U12
       54 SETTABLEKS                       R10 R9 K5 ["OnClick"]
       56 CALL                             R7 2 -1
       57 CALL                             R5 -1 -1
       58 CLOSEUPVALS                      R2
       59 RETURN                           R5 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+34]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "action", "name", "link"}]
        5 LOADK                            R5 K6 ["interaction"]
        6 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        8 LOADK                            R5 K7 ["knowledge_feed"]
        9 SETTABLEKS                       R5 R4 K1 ["telemetrySubtype"]
       11 GETTABLEKS                       R6 R0 K8 ["Link"]
       13 JUMPIFNOT                        R6 ; [+2]
       14 LOADK                            R5 K9 ["open_link"]
       15 JUMP                             ; [+6]
       16 GETTABLEKS                       R6 R0 K10 ["RootPlaceId"]
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADK                            R5 K11 ["open_place"]
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K12 ["launch_tutorial"]
       22 SETTABLEKS                       R5 R4 K2 ["action"]
       24 GETTABLEKS                       R5 R0 K13 ["Name"]
       26 SETTABLEKS                       R5 R4 K3 ["name"]
       28 GETTABLEKS                       R5 R0 K8 ["Link"]
       30 SETTABLEKS                       R5 R4 K4 ["link"]
       32 NAMECALL                         R1 R1 K14 ["log"]
       34 CALL                             R1 3 0
       35 JUMP                             ; [+33]
       36 GETUPVAL                         R1 1
       37 GETUPVAL                         R3 2
       38 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "action", "name", "link"}]
       39 LOADK                            R5 K6 ["interaction"]
       40 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
       42 LOADK                            R5 K15 ["momentum"]
       43 SETTABLEKS                       R5 R4 K1 ["telemetrySubtype"]
       45 GETTABLEKS                       R6 R0 K8 ["Link"]
       47 JUMPIFNOT                        R6 ; [+2]
       48 LOADK                            R5 K9 ["open_link"]
       49 JUMP                             ; [+6]
       50 GETTABLEKS                       R6 R0 K10 ["RootPlaceId"]
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADK                            R5 K11 ["open_place"]
       54 JUMP                             ; [+1]
       55 LOADK                            R5 K12 ["launch_tutorial"]
       56 SETTABLEKS                       R5 R4 K2 ["action"]
       58 GETTABLEKS                       R5 R0 K13 ["Name"]
       60 SETTABLEKS                       R5 R4 K3 ["name"]
       62 GETTABLEKS                       R5 R0 K8 ["Link"]
       64 SETTABLEKS                       R5 R4 K4 ["link"]
       66 NAMECALL                         R1 R1 K14 ["log"]
       68 CALL                             R1 3 0
       69 GETTABLEKS                       R1 R0 K8 ["Link"]
       71 JUMPIFNOT                        R1 ; [+7]
       72 GETUPVAL                         R1 3
       73 GETTABLEKS                       R3 R0 K8 ["Link"]
       75 NAMECALL                         R1 R1 K16 ["openLink"]
       77 CALL                             R1 2 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R1 R0 K10 ["RootPlaceId"]
       81 JUMPIFNOT                        R1 ; [+47]
       82 GETUPVAL                         R1 4
       83 JUMPIF                           R1 ; [+2]
       84 GETUPVAL                         R1 5
       85 JUMPIFNOT                        R1 ; [+25]
       86 GETUPVAL                         R1 6
       87 GETUPVAL                         R2 7
       88 NAMECALL                         R2 R2 K17 ["GetUserId"]
       90 CALL                             R2 1 1
       91 GETTABLEKS                       R3 R0 K18 ["UniverseId"]
       93 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
       95 GETTABLEKS                       R5 R0 K10 ["RootPlaceId"]
       97 DUPCLOSURE                       R6 K19 [PROTO_9]
       98 DUPCLOSURE                       R7 K20 [PROTO_10]
       99 GETTABLEKS                       R8 R0 K21 ["IsTeamCreateEnabled"]
      101 GETUPVAL                         R9 8
      102 GETUPVAL                         R10 9
      103 GETUPVAL                         R11 10
      104 GETUPVAL                         R13 11
      105 JUMPIFNOT                        R13 ; [+2]
      106 LOADB                            R12 0
      107 JUMP                             ; [+1]
      108 LOADB                            R12 1
      109 CALL                             R1 11 0
      110 RETURN                           R0 0
      111 GETUPVAL                         R1 12
      112 GETUPVAL                         R2 7
      113 NAMECALL                         R2 R2 K17 ["GetUserId"]
      115 CALL                             R2 1 1
      116 GETTABLEKS                       R3 R0 K18 ["UniverseId"]
      118 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
      120 DUPCLOSURE                       R5 K22 [PROTO_11]
      121 DUPCLOSURE                       R6 K23 [PROTO_12]
      122 GETUPVAL                         R8 11
      123 JUMPIFNOT                        R8 ; [+2]
      124 LOADB                            R7 0
      125 JUMP                             ; [+1]
      126 LOADB                            R7 1
      127 CALL                             R1 6 0
      128 RETURN                           R0 0
      129 GETTABLEKS                       R1 R0 K24 ["LaunchTutorialOnClick"]
      131 JUMPIFNOT                        R1 ; [+4]
      132 GETUPVAL                         R1 3
      133 NAMECALL                         R1 R1 K25 ["startTutorial"]
      135 CALL                             R1 1 0
      136 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 JUMPIF                           R5 ; [+2]
        9 GETUPVAL                         R5 2
       10 JUMPIFNOT                        R5 ; [+15]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K1 ["getDialogManager"]
       14 CALL                             R5 0 1
       15 MOVE                             R2 R5
       16 GETUPVAL                         R5 4
       17 NAMECALL                         R5 R5 K0 ["use"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K2 ["getActionsBridge"]
       24 CALL                             R5 0 1
       25 MOVE                             R3 R5
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R5 R6 K3 ["createElement"]
       29 GETUPVAL                         R6 6
       30 GETUPVAL                         R7 7
       31 MOVE                             R8 R0
       32 DUPTABLE                         R9 K9 [{"ImageSize", "IsDescriptionVisible", "IsDifficultyVisible", "IsCategoriesVisible", "OnClick"}]
       33 GETIMPORT                        R10 K12 [UDim2.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 200
       37 LOADN                            R13 0
       38 LOADN                            R14 161
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K4 ["ImageSize"]
       42 LOADB                            R10 1
       43 SETTABLEKS                       R10 R9 K5 ["IsDescriptionVisible"]
       45 LOADB                            R10 1
       46 SETTABLEKS                       R10 R9 K6 ["IsDifficultyVisible"]
       48 LOADB                            R10 1
       49 SETTABLEKS                       R10 R9 K7 ["IsCategoriesVisible"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U11
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R2
       62 CAPTURE                          REF R4
       63 CAPTURE                          UPVAL U13
       64 CAPTURE                          UPVAL U14
       65 SETTABLEKS                       R10 R9 K8 ["OnClick"]
       67 CALL                             R7 2 -1
       68 CALL                             R5 -1 -1
       69 CLOSEUPVALS                      R2
       70 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+13]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K3 [os.clock]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 1
       12 GETIMPORT                        R1 K5 [os.time]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K0 ["current"]
       17 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+17]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["AlertClosedTimestamp"]
        4 NAMECALL                         R0 R0 K1 ["GetSetting"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETIMPORT                        R1 K4 [os.time]
       10 CALL                             R1 0 1
       11 SUB                              R2 R1 R0
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K5 [604800]
       14 JUMPIFLT                         R2 R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to check for unrated experiences: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hideBanner"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["GetUserId"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+17]
       10 LOADN                            R1 0
       11 JUMPIFNOTLT                      R1 R0 ; [+15]
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+10]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 NAMECALL                         R2 R1 K2 ["andThen"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U3
       24 NAMECALL                         R2 R2 K3 ["catch"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["current"]
        3 MULK                             R1 R2 K0 [1000]
        4 FASTCALL1                        MATH_ROUND R1 ; [+2]
        5 GETIMPORT                        R0 K4 [math.round]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K5 ["SetStartPageFirstRenderTimeAsync"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 0
        2 JUMPIFLT                         R3 R0 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["current"]
       10 JUMPIFEQKNIL                     R1 ; [+52]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K0 ["current"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+47]
       17 GETIMPORT                        R1 K3 [os.clock]
       19 CALL                             R1 0 1
       20 GETUPVAL                         R2 2
       21 SETTABLEKS                       R1 R2 K0 ["current"]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 4
       25 DUPTABLE                         R5 K9 [{"telemetryType", "telemetrySubtype", "measurementName", "timeElapsedMilliseconds", "context"}]
       26 LOADK                            R6 K10 ["performance"]
       27 SETTABLEKS                       R6 R5 K4 ["telemetryType"]
       29 LOADK                            R6 K11 ["page_load"]
       30 SETTABLEKS                       R6 R5 K5 ["telemetrySubtype"]
       32 LOADK                            R6 K12 ["initial_load_time"]
       33 SETTABLEKS                       R6 R5 K6 ["measurementName"]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K0 ["current"]
       38 SUB                              R8 R1 R9
       39 MULK                             R7 R8 K13 [1000]
       40 FASTCALL1                        MATH_ROUND R7 ; [+2]
       41 GETIMPORT                        R6 K16 [math.round]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K7 ["timeElapsedMilliseconds"]
       46 LOADK                            R6 K17 ["home_page"]
       47 SETTABLEKS                       R6 R5 K8 ["context"]
       49 NAMECALL                         R2 R2 K18 ["log"]
       51 CALL                             R2 3 0
       52 GETUPVAL                         R3 5
       53 GETTABLEKS                       R2 R3 K0 ["current"]
       55 JUMPIFEQKNIL                     R2 ; [+7]
       57 GETIMPORT                        R2 K21 [task.defer]
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K5 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid", "action"}]
        3 LOADK                            R6 K6 ["click"]
        4 SETTABLEKS                       R6 R5 K0 ["telemetryType"]
        6 SETTABLEKS                       R0 R5 K1 ["upsellEntrySurface"]
        8 GETUPVAL                         R6 2
        9 NAMECALL                         R6 R6 K7 ["GetUserId"]
       11 CALL                             R6 1 1
       12 SETTABLEKS                       R6 R5 K2 ["userId"]
       14 GETUPVAL                         R6 3
       15 NAMECALL                         R6 R6 K8 ["GetSessionId"]
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K3 ["studioSid"]
       20 SETTABLEKS                       R1 R5 K4 ["action"]
       22 NAMECALL                         R2 R2 K9 ["log"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["get"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 1
       11 GETVARARGS                       R4 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 4
       15 MOVE                             R2 R0
       16 GETVARARGS                       R3 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page"]
        8 LOADK                            R2 K2 ["start"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_establish_trust"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 JUMP                             ; [+6]
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R2 4
        9 CALL                             R2 0 -1
       10 NAMECALL                         R0 R0 K0 ["openLink"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 5
       14 LOADK                            R1 K1 ["start_page_establish_trust"]
       15 LOADK                            R2 K2 ["start"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_age_reverification"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_age_reverification"]
        8 LOADK                            R2 K2 ["start"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["AlertClosedTimestamp"]
        7 GETIMPORT                        R3 K3 [os.time]
        9 CALL                             R3 0 -1
       10 NAMECALL                         R0 R0 K4 ["SetSetting"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialBannerClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        3 LOADK                            R4 K6 ["navigation"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K7 ["page"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K8 ["see_all_recents"]
       10 SETTABLEKS                       R4 R3 K2 ["context"]
       12 LOADK                            R4 K9 ["Home"]
       13 SETTABLEKS                       R4 R3 K3 ["from"]
       15 LOADK                            R4 K10 ["Recents"]
       16 SETTABLEKS                       R4 R3 K4 ["to"]
       18 NAMECALL                         R0 R0 K11 ["log"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R0 R1 K12 ["onPageSwap"]
       24 LOADK                            R1 K10 ["Recents"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        3 LOADK                            R4 K6 ["navigation"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K7 ["page"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K8 ["see_all_templates"]
       10 SETTABLEKS                       R4 R3 K2 ["context"]
       12 LOADK                            R4 K9 ["Home"]
       13 SETTABLEKS                       R4 R3 K3 ["from"]
       15 LOADK                            R4 K10 ["Templates"]
       16 SETTABLEKS                       R4 R3 K4 ["to"]
       18 NAMECALL                         R0 R0 K11 ["log"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R0 R1 K12 ["onPageSwap"]
       24 LOADK                            R1 K10 ["Templates"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 LOADNIL                          R5
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 2
       17 LOADK                            R6 K2 ["col size-full"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 3
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 0
       26 GETUPVAL                         R6 4
       27 LOADB                            R7 0
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 4
       30 LOADB                            R9 0
       31 CALL                             R8 1 2
       32 GETUPVAL                         R10 3
       33 NEWCLOSURE                       R11 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R9
       36 NEWTABLE                         R12 0 0
       38 CALL                             R10 2 0
       39 GETUPVAL                         R10 3
       40 NEWCLOSURE                       R11 P2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R7
       45 NEWTABLE                         R12 0 0
       47 CALL                             R10 2 0
       48 GETUPVAL                         R10 7
       49 NAMECALL                         R10 R10 K0 ["use"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 8
       53 NAMECALL                         R11 R11 K0 ["use"]
       55 CALL                             R11 1 1
       56 GETUPVAL                         R13 9
       57 GETTABLEKS                       R12 R13 K3 ["getStartPageBridge"]
       59 CALL                             R12 0 1
       60 GETUPVAL                         R14 10
       61 NAMECALL                         R14 R14 K4 ["isTutorialBannerClosed"]
       63 CALL                             R14 1 1
       64 NOT                              R13 R14
       65 GETUPVAL                         R14 11
       66 LOADK                            R15 K5 ["DebugShowStudioTour3"]
       67 CALL                             R14 1 1
       68 JUMPIFNOT                        R14 ; [+1]
       69 LOADB                            R13 1
       70 GETUPVAL                         R14 4
       71 MOVE                             R15 R13
       72 CALL                             R14 1 2
       73 GETUPVAL                         R16 4
       74 LOADB                            R17 1
       75 CALL                             R16 1 2
       76 LOADNIL                          R18
       77 LOADNIL                          R19
       78 LOADNIL                          R20
       79 GETUPVAL                         R21 12
       80 JUMPIFNOT                        R21 ; [+9]
       81 GETUPVAL                         R21 13
       82 JUMPIFNOT                        R21 ; [+7]
       83 GETUPVAL                         R21 14
       84 NEWTABLE                         R22 0 0
       86 CALL                             R21 1 3
       87 MOVE                             R18 R21
       88 MOVE                             R19 R22
       89 MOVE                             R20 R23
       90 GETUPVAL                         R21 15
       91 NEWCLOSURE                       R22 P3
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 CALL                             R21 1 1
      100 GETUPVAL                         R22 17
      101 CALL                             R22 0 1
      102 GETUPVAL                         R23 18
      103 CALL                             R23 0 1
      104 LOADNIL                          R24
      105 LOADNIL                          R25
      106 LOADNIL                          R26
      107 LOADNIL                          R27
      108 LOADNIL                          R28
      109 LOADNIL                          R29
      110 LOADNIL                          R30
      111 GETUPVAL                         R31 13
      112 JUMPIFNOT                        R31 ; [+16]
      113 GETUPVAL                         R31 12
      114 JUMPIFNOT                        R31 ; [+14]
      115 GETUPVAL                         R32 19
      116 CALL                             R32 0 -1
      117 FASTCALL                         TABLE_UNPACK ; [+2]
      118 GETIMPORT                        R31 K8 [table.unpack]
      120 CALL                             R31 -1 7
      121 MOVE                             R24 R31
      122 MOVE                             R25 R32
      123 MOVE                             R26 R33
      124 MOVE                             R27 R34
      125 MOVE                             R28 R35
      126 MOVE                             R29 R36
      127 MOVE                             R30 R37
      128 JUMP                             ; [+12]
      129 GETUPVAL                         R31 12
      130 JUMPIFNOT                        R31 ; [+10]
      131 GETUPVAL                         R32 19
      132 CALL                             R32 0 -1
      133 FASTCALL                         TABLE_UNPACK ; [+2]
      134 GETIMPORT                        R31 K8 [table.unpack]
      136 CALL                             R31 -1 4
      137 MOVE                             R24 R31
      138 MOVE                             R27 R32
      139 MOVE                             R28 R33
      140 MOVE                             R30 R34
      141 NEWCLOSURE                       R31 P4
      142 CAPTURE                          VAL R10
      143 CAPTURE                          UPVAL U20
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          UPVAL U21
      146 GETUPVAL                         R32 15
      147 NEWCLOSURE                       R33 P5
      148 CAPTURE                          UPVAL U22
      149 CAPTURE                          VAL R11
      150 CAPTURE                          UPVAL U23
      151 CAPTURE                          UPVAL U24
      152 CAPTURE                          UPVAL U25
      153 NEWTABLE                         R34 0 1
      155 NAMECALL                         R35 R11 K9 ["getLocale"]
      157 CALL                             R35 1 -1
      158 SETLIST                          R34 R35 -1 [1]
      160 CALL                             R32 2 1
      161 GETUPVAL                         R34 26
      162 JUMPIFNOT                        R34 ; [+2]
      163 LOADN                            R33 24
      164 JUMP                             ; [+1]
      165 LOADN                            R33 14
      166 GETUPVAL                         R35 26
      167 JUMPIFNOT                        R35 ; [+2]
      168 LOADN                            R34 20
      169 JUMP                             ; [+1]
      170 LOADN                            R34 10
      171 GETUPVAL                         R36 27
      172 GETTABLEKS                       R35 R36 K10 ["createElement"]
      174 GETUPVAL                         R36 28
      175 NEWTABLE                         R37 4 0
      177 GETIMPORT                        R38 K14 [Enum.AutomaticSize.Y]
      179 SETTABLEKS                       R38 R37 K15 ["AutomaticCanvasSize"]
      181 GETIMPORT                        R38 K18 [UDim2.new]
      183 LOADN                            R39 1
      184 LOADN                            R40 0
      185 LOADN                            R41 0
      186 LOADN                            R42 0
      187 CALL                             R38 4 1
      188 SETTABLEKS                       R38 R37 K19 ["CanvasSize"]
      190 LOADN                            R38 0
      191 SETTABLEKS                       R38 R37 K20 ["ScrollBarThickness"]
      193 GETUPVAL                         R39 27
      194 GETTABLEKS                       R38 R39 K21 ["Tag"]
      196 SETTABLE                         R5 R37 R38
      197 DUPTABLE                         R38 K27 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "AgeReverificationBanner", "UnratedExperiencesBanner", "Content"}]
      198 GETUPVAL                         R40 12
      199 JUMPIFNOT                        R40 ; [+81]
      200 JUMPIFNOT                        R24 ; [+80]
      201 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      203 JUMPIF                           R40 ; [+77]
      204 GETUPVAL                         R40 27
      205 GETTABLEKS                       R39 R40 K10 ["createElement"]
      207 GETUPVAL                         R40 29
      208 DUPTABLE                         R41 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      209 GETUPVAL                         R43 30
      210 GETTABLEKS                       R42 R43 K36 ["Emphasis"]
      212 SETTABLEKS                       R42 R41 K29 ["variant"]
      214 GETUPVAL                         R43 31
      215 GETTABLEKS                       R42 R43 K37 ["Info"]
      217 SETTABLEKS                       R42 R41 K30 ["severity"]
      219 LOADK                            R44 K38 ["Plugin"]
      220 LOADK                            R45 K39 ["VerifyAgeBanner.Title"]
      221 NAMECALL                         R42 R11 K40 ["getText"]
      223 CALL                             R42 3 1
      224 SETTABLEKS                       R42 R41 K31 ["title"]
      226 LOADK                            R44 K38 ["Plugin"]
      227 LOADK                            R45 K41 ["VerifyAgeBanner.Body"]
      228 NAMECALL                         R42 R11 K40 ["getText"]
      230 CALL                             R42 3 1
      231 SETTABLEKS                       R42 R41 K32 ["description"]
      233 NEWTABLE                         R42 0 2
      235 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      236 LOADK                            R46 K38 ["Plugin"]
      237 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      238 NAMECALL                         R44 R11 K40 ["getText"]
      240 CALL                             R44 3 1
      241 SETTABLEKS                       R44 R43 K42 ["text"]
      243 GETUPVAL                         R45 32
      244 GETTABLEKS                       R44 R45 K46 ["Utility"]
      246 SETTABLEKS                       R44 R43 K29 ["variant"]
      248 NEWCLOSURE                       R44 P6
      249 CAPTURE                          UPVAL U10
      250 CAPTURE                          UPVAL U33
      251 CAPTURE                          VAL R31
      252 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      254 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      255 LOADK                            R47 K38 ["Plugin"]
      256 LOADK                            R48 K47 ["VerifyAgeBanner.PrimaryAction"]
      257 NAMECALL                         R45 R11 K40 ["getText"]
      259 CALL                             R45 3 1
      260 SETTABLEKS                       R45 R44 K42 ["text"]
      262 GETUPVAL                         R46 32
      263 GETTABLEKS                       R45 R46 K48 ["Standard"]
      265 SETTABLEKS                       R45 R44 K29 ["variant"]
      267 NEWCLOSURE                       R45 P7
      268 CAPTURE                          UPVAL U10
      269 CAPTURE                          UPVAL U34
      270 CAPTURE                          VAL R31
      271 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      273 SETLIST                          R42 R43 2 [1]
      275 SETTABLEKS                       R42 R41 K33 ["actions"]
      277 SETTABLEKS                       R28 R41 K34 ["onClose"]
      279 CALL                             R39 2 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R39
      282 SETTABLEKS                       R39 R38 K22 ["VerifyAgeAlertBanner"]
      284 GETUPVAL                         R40 13
      285 JUMPIFNOT                        R40 ; [+78]
      286 JUMPIFNOT                        R25 ; [+77]
      287 JUMPIF                           R24 ; [+76]
      288 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      290 JUMPIF                           R40 ; [+73]
      291 GETUPVAL                         R40 27
      292 GETTABLEKS                       R39 R40 K10 ["createElement"]
      294 GETUPVAL                         R40 29
      295 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      296 GETUPVAL                         R43 30
      297 GETTABLEKS                       R42 R43 K48 ["Standard"]
      299 SETTABLEKS                       R42 R41 K29 ["variant"]
      301 GETUPVAL                         R43 31
      302 GETTABLEKS                       R42 R43 K50 ["Warning"]
      304 SETTABLEKS                       R42 R41 K30 ["severity"]
      306 LOADK                            R44 K23 ["EstablishTrustBanner"]
      307 LOADK                            R45 K51 ["Title"]
      308 NAMECALL                         R42 R11 K40 ["getText"]
      310 CALL                             R42 3 1
      311 SETTABLEKS                       R42 R41 K31 ["title"]
      313 NEWTABLE                         R42 0 2
      315 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      316 LOADK                            R46 K38 ["Plugin"]
      317 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      318 NAMECALL                         R44 R11 K40 ["getText"]
      320 CALL                             R44 3 1
      321 SETTABLEKS                       R44 R43 K42 ["text"]
      323 GETUPVAL                         R45 32
      324 GETTABLEKS                       R44 R45 K46 ["Utility"]
      326 SETTABLEKS                       R44 R43 K29 ["variant"]
      328 NEWCLOSURE                       R44 P8
      329 CAPTURE                          UPVAL U10
      330 CAPTURE                          UPVAL U35
      331 CAPTURE                          VAL R31
      332 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      334 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      335 LOADK                            R47 K38 ["Plugin"]
      336 LOADK                            R48 K47 ["VerifyAgeBanner.PrimaryAction"]
      337 NAMECALL                         R45 R11 K40 ["getText"]
      339 CALL                             R45 3 1
      340 SETTABLEKS                       R45 R44 K42 ["text"]
      342 GETUPVAL                         R46 32
      343 GETTABLEKS                       R45 R46 K48 ["Standard"]
      345 SETTABLEKS                       R45 R44 K29 ["variant"]
      347 NEWCLOSURE                       R45 P9
      348 CAPTURE                          REF R26
      349 CAPTURE                          UPVAL U36
      350 CAPTURE                          REF R18
      351 CAPTURE                          UPVAL U10
      352 CAPTURE                          UPVAL U37
      353 CAPTURE                          VAL R31
      354 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      356 SETLIST                          R42 R43 2 [1]
      358 SETTABLEKS                       R42 R41 K33 ["actions"]
      360 SETTABLEKS                       R29 R41 K34 ["onClose"]
      362 CALL                             R39 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R39
      365 SETTABLEKS                       R39 R38 K23 ["EstablishTrustBanner"]
      367 GETUPVAL                         R40 38
      368 JUMPIFNOT                        R40 ; [+78]
      369 JUMPIFNOT                        R27 ; [+77]
      370 JUMPIF                           R24 ; [+76]
      371 GETUPVAL                         R40 13
      372 JUMPIFNOT                        R40 ; [+1]
      373 JUMPIF                           R25 ; [+73]
      374 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      376 JUMPIF                           R40 ; [+70]
      377 GETUPVAL                         R40 27
      378 GETTABLEKS                       R39 R40 K10 ["createElement"]
      380 GETUPVAL                         R40 29
      381 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      382 GETUPVAL                         R43 30
      383 GETTABLEKS                       R42 R43 K48 ["Standard"]
      385 SETTABLEKS                       R42 R41 K29 ["variant"]
      387 GETUPVAL                         R43 31
      388 GETTABLEKS                       R42 R43 K37 ["Info"]
      390 SETTABLEKS                       R42 R41 K30 ["severity"]
      392 LOADK                            R44 K24 ["AgeReverificationBanner"]
      393 LOADK                            R45 K51 ["Title"]
      394 NAMECALL                         R42 R11 K40 ["getText"]
      396 CALL                             R42 3 1
      397 SETTABLEKS                       R42 R41 K31 ["title"]
      399 NEWTABLE                         R42 0 2
      401 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      402 LOADK                            R46 K38 ["Plugin"]
      403 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      404 NAMECALL                         R44 R11 K40 ["getText"]
      406 CALL                             R44 3 1
      407 SETTABLEKS                       R44 R43 K42 ["text"]
      409 GETUPVAL                         R45 32
      410 GETTABLEKS                       R44 R45 K46 ["Utility"]
      412 SETTABLEKS                       R44 R43 K29 ["variant"]
      414 NEWCLOSURE                       R44 P10
      415 CAPTURE                          UPVAL U10
      416 CAPTURE                          UPVAL U39
      417 CAPTURE                          VAL R31
      418 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      420 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      421 LOADK                            R47 K24 ["AgeReverificationBanner"]
      422 LOADK                            R48 K52 ["PrimaryAction"]
      423 NAMECALL                         R45 R11 K40 ["getText"]
      425 CALL                             R45 3 1
      426 SETTABLEKS                       R45 R44 K42 ["text"]
      428 GETUPVAL                         R46 32
      429 GETTABLEKS                       R45 R46 K48 ["Standard"]
      431 SETTABLEKS                       R45 R44 K29 ["variant"]
      433 NEWCLOSURE                       R45 P11
      434 CAPTURE                          UPVAL U10
      435 CAPTURE                          UPVAL U40
      436 CAPTURE                          VAL R31
      437 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      439 SETLIST                          R42 R43 2 [1]
      441 SETTABLEKS                       R42 R41 K33 ["actions"]
      443 SETTABLEKS                       R30 R41 K34 ["onClose"]
      445 CALL                             R39 2 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R39
      448 SETTABLEKS                       R39 R38 K24 ["AgeReverificationBanner"]
      450 JUMPIFNOT                        R6 ; [+95]
      451 JUMPIF                           R8 ; [+94]
      452 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      454 JUMPIF                           R40 ; [+91]
      455 GETUPVAL                         R40 27
      456 GETTABLEKS                       R39 R40 K10 ["createElement"]
      458 GETUPVAL                         R40 41
      459 DUPTABLE                         R41 K55 [{"tag", "LayoutOrder"}]
      460 LOADK                            R42 K56 ["padding-x-xxlarge padding-top-large auto-y size-full-0"]
      461 SETTABLEKS                       R42 R41 K53 ["tag"]
      463 MOVE                             R42 R22
      464 CALL                             R42 0 1
      465 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      467 GETUPVAL                         R43 27
      468 GETTABLEKS                       R42 R43 K10 ["createElement"]
      470 GETUPVAL                         R43 29
      471 DUPTABLE                         R44 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      472 GETUPVAL                         R46 30
      473 GETTABLEKS                       R45 R46 K36 ["Emphasis"]
      475 SETTABLEKS                       R45 R44 K29 ["variant"]
      477 GETUPVAL                         R46 31
      478 GETTABLEKS                       R45 R46 K57 ["Error"]
      480 SETTABLEKS                       R45 R44 K30 ["severity"]
      482 LOADK                            R47 K38 ["Plugin"]
      483 LOADK                            R48 K58 ["UnratedExperiencesBanner.Title"]
      484 NAMECALL                         R45 R11 K40 ["getText"]
      486 CALL                             R45 3 1
      487 SETTABLEKS                       R45 R44 K31 ["title"]
      489 LOADK                            R47 K38 ["Plugin"]
      490 LOADK                            R48 K59 ["UnratedExperiencesBanner.Description"]
      491 NAMECALL                         R45 R11 K40 ["getText"]
      493 CALL                             R45 3 1
      494 SETTABLEKS                       R45 R44 K32 ["description"]
      496 NEWTABLE                         R45 0 2
      498 DUPTABLE                         R46 K44 [{"text", "variant", "onActivated"}]
      499 LOADK                            R49 K38 ["Plugin"]
      500 LOADK                            R50 K60 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      501 NAMECALL                         R47 R11 K40 ["getText"]
      503 CALL                             R47 3 1
      504 SETTABLEKS                       R47 R46 K42 ["text"]
      506 GETUPVAL                         R48 32
      507 GETTABLEKS                       R47 R48 K46 ["Utility"]
      509 SETTABLEKS                       R47 R46 K29 ["variant"]
      511 DUPCLOSURE                       R47 K61 [PROTO_30]
      512 CAPTURE                          UPVAL U10
      513 CAPTURE                          UPVAL U42
      514 SETTABLEKS                       R47 R46 K43 ["onActivated"]
      516 DUPTABLE                         R47 K44 [{"text", "variant", "onActivated"}]
      517 LOADK                            R50 K38 ["Plugin"]
      518 LOADK                            R51 K62 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      519 NAMECALL                         R48 R11 K40 ["getText"]
      521 CALL                             R48 3 1
      522 SETTABLEKS                       R48 R47 K42 ["text"]
      524 GETUPVAL                         R49 32
      525 GETTABLEKS                       R48 R49 K48 ["Standard"]
      527 SETTABLEKS                       R48 R47 K29 ["variant"]
      529 DUPCLOSURE                       R48 K63 [PROTO_31]
      530 CAPTURE                          UPVAL U10
      531 CAPTURE                          UPVAL U43
      532 SETTABLEKS                       R48 R47 K43 ["onActivated"]
      534 SETLIST                          R45 R46 2 [1]
      536 SETTABLEKS                       R45 R44 K33 ["actions"]
      538 NEWCLOSURE                       R45 P14
      539 CAPTURE                          VAL R9
      540 CAPTURE                          VAL R1
      541 SETTABLEKS                       R45 R44 K34 ["onClose"]
      543 CALL                             R42 2 -1
      544 CALL                             R39 -1 1
      545 JUMP                             ; [+1]
      546 LOADNIL                          R39
      547 SETTABLEKS                       R39 R38 K25 ["UnratedExperiencesBanner"]
      549 GETUPVAL                         R40 27
      550 GETTABLEKS                       R39 R40 K10 ["createElement"]
      552 GETUPVAL                         R40 41
      553 DUPTABLE                         R41 K64 [{"LayoutOrder", "tag"}]
      554 MOVE                             R42 R22
      555 CALL                             R42 0 1
      556 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      558 LOADK                            R42 K65 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      559 SETTABLEKS                       R42 R41 K53 ["tag"]
      561 DUPTABLE                         R42 K72 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      562 GETUPVAL                         R44 27
      563 GETTABLEKS                       R43 R44 K10 ["createElement"]
      565 GETUPVAL                         R44 44
      566 DUPTABLE                         R45 K73 [{"title", "LayoutOrder"}]
      567 JUMPIFNOT                        R23 ; [+9]
      568 LOADK                            R48 K38 ["Plugin"]
      569 LOADK                            R49 K74 ["HomePage.WelcomeWithUsername"]
      570 DUPTABLE                         R50 K76 [{"username"}]
      571 SETTABLEKS                       R23 R50 K75 ["username"]
      573 NAMECALL                         R46 R11 K40 ["getText"]
      575 CALL                             R46 4 1
      576 JUMP                             ; [+5]
      577 LOADK                            R48 K38 ["Plugin"]
      578 LOADK                            R49 K77 ["HomePage.Welcome"]
      579 NAMECALL                         R46 R11 K40 ["getText"]
      581 CALL                             R46 3 1
      582 SETTABLEKS                       R46 R45 K31 ["title"]
      584 MOVE                             R46 R22
      585 CALL                             R46 0 1
      586 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      588 CALL                             R43 2 1
      589 SETTABLEKS                       R43 R42 K66 ["Header"]
      591 JUMPIFNOT                        R14 ; [+25]
      592 GETUPVAL                         R44 27
      593 GETTABLEKS                       R43 R44 K10 ["createElement"]
      595 GETUPVAL                         R44 41
      596 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      597 MOVE                             R46 R22
      598 CALL                             R46 0 1
      599 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      601 LOADK                            R46 K78 ["size-full-0 auto-y col padding-bottom-medium"]
      602 SETTABLEKS                       R46 R45 K53 ["tag"]
      604 GETUPVAL                         R47 27
      605 GETTABLEKS                       R46 R47 K10 ["createElement"]
      607 GETUPVAL                         R47 45
      608 DUPTABLE                         R48 K79 [{"onClose"}]
      609 NEWCLOSURE                       R49 P15
      610 CAPTURE                          VAL R15
      611 CAPTURE                          UPVAL U10
      612 SETTABLEKS                       R49 R48 K34 ["onClose"]
      614 CALL                             R46 2 -1
      615 CALL                             R43 -1 1
      616 JUMP                             ; [+1]
      617 LOADNIL                          R43
      618 SETTABLEKS                       R43 R42 K67 ["TutorialBanner"]
      620 GETTABLEKS                       R44 R0 K80 ["hideRecents"]
      622 JUMPIF                           R44 ; [+161]
      623 JUMPIFNOT                        R16 ; [+160]
      624 GETUPVAL                         R44 27
      625 GETTABLEKS                       R43 R44 K10 ["createElement"]
      627 GETUPVAL                         R44 46
      628 DUPTABLE                         R45 K82 [{"LayoutOrder", "tag", "testId"}]
      629 MOVE                             R46 R22
      630 CALL                             R46 0 1
      631 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      633 LOADK                            R46 K83 ["size-full-0 auto-y col gap-xsmall"]
      634 SETTABLEKS                       R46 R45 K53 ["tag"]
      636 LOADK                            R46 K84 ["--start-page-RecentExperiences-section"]
      637 SETTABLEKS                       R46 R45 K81 ["testId"]
      639 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      640 GETUPVAL                         R48 27
      641 GETTABLEKS                       R47 R48 K10 ["createElement"]
      643 GETUPVAL                         R48 47
      644 DUPTABLE                         R49 K88 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      645 LOADK                            R52 K38 ["Plugin"]
      646 LOADK                            R53 K89 ["HomePage.MyRecentExperiences"]
      647 NAMECALL                         R50 R11 K40 ["getText"]
      649 CALL                             R50 3 1
      650 SETTABLEKS                       R50 R49 K31 ["title"]
      652 LOADK                            R52 K38 ["Plugin"]
      653 LOADK                            R53 K90 ["SeeAll"]
      654 NAMECALL                         R50 R11 K40 ["getText"]
      656 CALL                             R50 3 1
      657 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      659 NEWCLOSURE                       R50 P16
      660 CAPTURE                          VAL R10
      661 CAPTURE                          UPVAL U16
      662 CAPTURE                          VAL R0
      663 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      665 MOVE                             R50 R22
      666 CALL                             R50 0 1
      667 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      669 CALL                             R47 2 1
      670 SETTABLEKS                       R47 R46 K66 ["Header"]
      672 GETUPVAL                         R48 27
      673 GETTABLEKS                       R47 R48 K10 ["createElement"]
      675 GETUPVAL                         R49 48
      676 GETTABLEKS                       R48 R49 K91 ["Provider"]
      678 DUPTABLE                         R49 K93 [{"value"}]
      679 GETUPVAL                         R50 49
      680 SETTABLEKS                       R50 R49 K92 ["value"]
      682 GETUPVAL                         R51 27
      683 GETTABLEKS                       R50 R51 K10 ["createElement"]
      685 GETUPVAL                         R51 50
      686 DUPTABLE                         R52 K106 [{"Size", "DisplayComponent", "MaxCount", "PageSize", "ShowRecentAPIGames", "ShowRecentLocalFiles", "OnItemCountUpdated", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      687 GETIMPORT                        R53 K18 [UDim2.new]
      689 LOADN                            R54 1
      690 LOADN                            R55 0
      691 LOADN                            R56 0
      692 LOADN                            R57 99
      693 CALL                             R53 4 1
      694 SETTABLEKS                       R53 R52 K94 ["Size"]
      696 GETUPVAL                         R53 51
      697 SETTABLEKS                       R53 R52 K95 ["DisplayComponent"]
      699 LOADN                            R53 6
      700 SETTABLEKS                       R53 R52 K96 ["MaxCount"]
      702 LOADN                            R53 10
      703 SETTABLEKS                       R53 R52 K97 ["PageSize"]
      705 LOADB                            R53 1
      706 SETTABLEKS                       R53 R52 K98 ["ShowRecentAPIGames"]
      708 LOADB                            R53 1
      709 SETTABLEKS                       R53 R52 K99 ["ShowRecentLocalFiles"]
      711 SETTABLEKS                       R21 R52 K100 ["OnItemCountUpdated"]
      713 GETUPVAL                         R53 52
      714 SETTABLEKS                       R53 R52 K101 ["CellComponent"]
      716 GETIMPORT                        R53 K18 [UDim2.new]
      718 LOADN                            R54 0
      719 LOADN                            R55 224
      720 LOADN                            R56 0
      721 LOADN                            R57 92
      722 CALL                             R53 4 1
      723 SETTABLEKS                       R53 R52 K102 ["CellSize"]
      725 GETIMPORT                        R53 K18 [UDim2.new]
      727 LOADN                            R54 0
      728 LOADN                            R55 16
      729 LOADN                            R56 0
      730 LOADN                            R57 16
      731 CALL                             R53 4 1
      732 SETTABLEKS                       R53 R52 K103 ["CellPadding"]
      734 DUPTABLE                         R53 K116 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
      735 LOADK                            R54 K117 ["Recents"]
      736 SETTABLEKS                       R54 R53 K107 ["searchKey"]
      738 LOADK                            R54 K118 [""]
      739 SETTABLEKS                       R54 R53 K108 ["search"]
      741 LOADK                            R54 K119 ["User"]
      742 SETTABLEKS                       R54 R53 K109 ["creatorType"]
      744 GETUPVAL                         R55 5
      745 NAMECALL                         R55 R55 K120 ["GetUserId"]
      747 CALL                             R55 1 -1
      748 FASTCALL                         TOSTRING ; [+2]
      749 GETIMPORT                        R54 K122 [tostring]
      751 CALL                             R54 -1 1
      752 SETTABLEKS                       R54 R53 K110 ["creatorTargetId"]
      754 LOADB                            R54 0
      755 SETTABLEKS                       R54 R53 K111 ["isArchived"]
      757 LOADB                            R54 0
      758 SETTABLEKS                       R54 R53 K112 ["isTemplates"]
      760 LOADN                            R54 10
      761 SETTABLEKS                       R54 R53 K113 ["pageSize"]
      763 LOADB                            R54 1
      764 SETTABLEKS                       R54 R53 K114 ["getRecentLocalFiles"]
      766 LOADB                            R54 1
      767 SETTABLEKS                       R54 R53 K115 ["getRecentAPIGames"]
      769 SETTABLEKS                       R53 R52 K104 ["Query"]
      771 GETUPVAL                         R53 53
      772 SETTABLEKS                       R53 R52 K105 ["FetchItems"]
      774 MOVE                             R53 R22
      775 CALL                             R53 0 1
      776 SETTABLEKS                       R53 R52 K54 ["LayoutOrder"]
      778 CALL                             R50 2 -1
      779 CALL                             R47 -1 1
      780 SETTABLEKS                       R47 R46 K26 ["Content"]
      782 CALL                             R43 3 1
      783 JUMP                             ; [+1]
      784 LOADNIL                          R43
      785 SETTABLEKS                       R43 R42 K68 ["RecentExperiences"]
      787 GETUPVAL                         R44 27
      788 GETTABLEKS                       R43 R44 K10 ["createElement"]
      790 GETUPVAL                         R44 41
      791 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      792 MOVE                             R46 R22
      793 CALL                             R46 0 1
      794 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      796 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      797 SETTABLEKS                       R46 R45 K53 ["tag"]
      799 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      800 GETUPVAL                         R48 27
      801 GETTABLEKS                       R47 R48 K10 ["createElement"]
      803 GETUPVAL                         R48 47
      804 DUPTABLE                         R49 K124 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      805 LOADK                            R52 K38 ["Plugin"]
      806 LOADK                            R53 K125 ["HomePage.Templates.Heading"]
      807 NAMECALL                         R50 R11 K40 ["getText"]
      809 CALL                             R50 3 1
      810 SETTABLEKS                       R50 R49 K31 ["title"]
      812 LOADK                            R52 K38 ["Plugin"]
      813 LOADK                            R53 K126 ["HomePage.Templates.Description"]
      814 NAMECALL                         R50 R11 K40 ["getText"]
      816 CALL                             R50 3 1
      817 SETTABLEKS                       R50 R49 K32 ["description"]
      819 LOADK                            R52 K38 ["Plugin"]
      820 LOADK                            R53 K90 ["SeeAll"]
      821 NAMECALL                         R50 R11 K40 ["getText"]
      823 CALL                             R50 3 1
      824 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      826 NEWCLOSURE                       R50 P17
      827 CAPTURE                          VAL R10
      828 CAPTURE                          UPVAL U16
      829 CAPTURE                          VAL R0
      830 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      832 MOVE                             R50 R22
      833 CALL                             R50 0 1
      834 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      836 CALL                             R47 2 1
      837 SETTABLEKS                       R47 R46 K66 ["Header"]
      839 GETUPVAL                         R48 27
      840 GETTABLEKS                       R47 R48 K10 ["createElement"]
      842 GETUPVAL                         R48 50
      843 DUPTABLE                         R49 K127 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      844 GETIMPORT                        R50 K18 [UDim2.new]
      846 LOADN                            R51 1
      847 LOADN                            R52 0
      848 LOADN                            R53 0
      849 LOADN                            R54 8
      850 CALL                             R50 4 1
      851 SETTABLEKS                       R50 R49 K94 ["Size"]
      853 GETUPVAL                         R50 51
      854 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      856 LOADN                            R50 6
      857 SETTABLEKS                       R50 R49 K96 ["MaxCount"]
      859 GETUPVAL                         R50 54
      860 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      862 GETIMPORT                        R50 K18 [UDim2.new]
      864 LOADN                            R51 0
      865 LOADN                            R52 225
      866 LOADN                            R53 0
      867 LOADN                            R54 252
      868 CALL                             R50 4 1
      869 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      871 GETIMPORT                        R50 K18 [UDim2.new]
      873 LOADN                            R51 0
      874 LOADN                            R52 16
      875 LOADN                            R53 0
      876 LOADN                            R54 16
      877 CALL                             R50 4 1
      878 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      880 GETUPVAL                         R50 55
      881 SETTABLEKS                       R50 R49 K104 ["Query"]
      883 GETUPVAL                         R50 56
      884 SETTABLEKS                       R50 R49 K105 ["FetchItems"]
      886 MOVE                             R50 R22
      887 CALL                             R50 0 1
      888 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      890 CALL                             R47 2 1
      891 SETTABLEKS                       R47 R46 K26 ["Content"]
      893 CALL                             R43 3 1
      894 SETTABLEKS                       R43 R42 K69 ["Templates"]
      896 GETUPVAL                         R44 27
      897 GETTABLEKS                       R43 R44 K10 ["createElement"]
      899 GETUPVAL                         R44 41
      900 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      901 MOVE                             R46 R22
      902 CALL                             R46 0 1
      903 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      905 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      906 SETTABLEKS                       R46 R45 K53 ["tag"]
      908 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      909 GETUPVAL                         R48 27
      910 GETTABLEKS                       R47 R48 K10 ["createElement"]
      912 GETUPVAL                         R48 47
      913 DUPTABLE                         R49 K128 [{"title", "description", "LayoutOrder"}]
      914 LOADK                            R52 K38 ["Plugin"]
      915 LOADK                            R53 K129 ["HomePage.DiscoverStudio.Heading"]
      916 NAMECALL                         R50 R11 K40 ["getText"]
      918 CALL                             R50 3 1
      919 SETTABLEKS                       R50 R49 K31 ["title"]
      921 LOADK                            R52 K38 ["Plugin"]
      922 LOADK                            R53 K130 ["HomePage.DiscoverStudio.Description"]
      923 NAMECALL                         R50 R11 K40 ["getText"]
      925 CALL                             R50 3 1
      926 SETTABLEKS                       R50 R49 K32 ["description"]
      928 MOVE                             R50 R22
      929 CALL                             R50 0 1
      930 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      932 CALL                             R47 2 1
      933 SETTABLEKS                       R47 R46 K66 ["Header"]
      935 GETUPVAL                         R48 27
      936 GETTABLEKS                       R47 R48 K10 ["createElement"]
      938 GETUPVAL                         R48 50
      939 DUPTABLE                         R49 K131 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      940 GETIMPORT                        R50 K18 [UDim2.new]
      942 LOADN                            R51 1
      943 LOADN                            R52 0
      944 LOADN                            R53 0
      945 MOVE                             R54 R33
      946 CALL                             R50 4 1
      947 SETTABLEKS                       R50 R49 K94 ["Size"]
      949 GETUPVAL                         R50 51
      950 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      952 GETUPVAL                         R50 57
      953 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      955 GETIMPORT                        R50 K18 [UDim2.new]
      957 LOADN                            R51 0
      958 LOADN                            R52 225
      959 LOADN                            R53 0
      960 MOVE                             R54 R34
      961 CALL                             R50 4 1
      962 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      964 GETIMPORT                        R50 K18 [UDim2.new]
      966 LOADN                            R51 0
      967 LOADN                            R52 16
      968 LOADN                            R53 0
      969 LOADN                            R54 16
      970 CALL                             R50 4 1
      971 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      973 GETUPVAL                         R50 58
      974 SETTABLEKS                       R50 R49 K104 ["Query"]
      976 SETTABLEKS                       R32 R49 K105 ["FetchItems"]
      978 MOVE                             R50 R22
      979 CALL                             R50 0 1
      980 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      982 CALL                             R47 2 1
      983 SETTABLEKS                       R47 R46 K26 ["Content"]
      985 CALL                             R43 3 1
      986 SETTABLEKS                       R43 R42 K70 ["Momentum"]
      988 GETUPVAL                         R44 27
      989 GETTABLEKS                       R43 R44 K10 ["createElement"]
      991 GETUPVAL                         R44 46
      992 DUPTABLE                         R45 K132 [{"LayoutOrder", "Size"}]
      993 MOVE                             R46 R22
      994 CALL                             R46 0 1
      995 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      997 GETIMPORT                        R46 K18 [UDim2.new]
      999 LOADN                            R47 1
     1000 LOADN                            R48 0
     1001 LOADN                            R49 0
     1002 LOADN                            R50 40
     1003 CALL                             R46 4 1
     1004 SETTABLEKS                       R46 R45 K94 ["Size"]
     1006 CALL                             R43 2 1
     1007 SETTABLEKS                       R43 R42 K71 ["Spacer"]
     1009 CALL                             R39 3 1
     1010 SETTABLEKS                       R39 R38 K26 ["Content"]
     1012 CALL                             R35 3 -1
     1013 CLOSEUPVALS                      R18
     1014 RETURN                           R35 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useRef"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETTABLEKS                       R5 R1 K11 ["useContext"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R8 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R8 K12 ["Framework"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R1 K13 ["useCallback"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R10 R0 K6 ["Packages"]
       35 GETTABLEKS                       R9 R10 K14 ["Dash"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R8 K15 ["join"]
       40 GETTABLEKS                       R11 R6 K16 ["Util"]
       42 GETTABLEKS                       R10 R11 K17 ["counter"]
       44 GETTABLEKS                       R12 R6 K18 ["ContextServices"]
       46 GETTABLEKS                       R11 R12 K19 ["Localization"]
       48 GETTABLEKS                       R13 R6 K18 ["ContextServices"]
       50 GETTABLEKS                       R12 R13 K20 ["Plugin"]
       52 GETTABLEKS                       R13 R6 K21 ["UI"]
       54 GETTABLEKS                       R14 R13 K22 ["ScrollingFrame"]
       56 GETIMPORT                        R15 K5 [require]
       58 GETTABLEKS                       R19 R0 K23 ["Src"]
       60 GETTABLEKS                       R18 R19 K24 ["Foundation"]
       62 GETTABLEKS                       R17 R18 K25 ["Components"]
       64 GETTABLEKS                       R16 R17 K26 ["HomeSectionHeader"]
       66 CALL                             R15 1 1
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R20 R0 K23 ["Src"]
       71 GETTABLEKS                       R19 R20 K24 ["Foundation"]
       73 GETTABLEKS                       R18 R19 K25 ["Components"]
       75 GETTABLEKS                       R17 R18 K27 ["PageHeader"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K5 [require]
       80 GETTABLEKS                       R20 R0 K23 ["Src"]
       82 GETTABLEKS                       R19 R20 K25 ["Components"]
       84 GETTABLEKS                       R18 R19 K28 ["InfoTile"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R21 R0 K23 ["Src"]
       91 GETTABLEKS                       R20 R21 K25 ["Components"]
       93 GETTABLEKS                       R19 R20 K29 ["NetworkView"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R22 R0 K23 ["Src"]
      100 GETTABLEKS                       R21 R22 K25 ["Components"]
      102 GETTABLEKS                       R20 R21 K30 ["ScrollingCarousel"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R24 R0 K23 ["Src"]
      109 GETTABLEKS                       R23 R24 K24 ["Foundation"]
      111 GETTABLEKS                       R22 R23 K25 ["Components"]
      113 GETTABLEKS                       R21 R22 K31 ["Tour3TutorialTile"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R25 R0 K23 ["Src"]
      120 GETTABLEKS                       R24 R25 K24 ["Foundation"]
      122 GETTABLEKS                       R23 R24 K25 ["Components"]
      124 GETTABLEKS                       R22 R23 K32 ["Frame"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K5 [require]
      129 GETTABLEKS                       R25 R0 K23 ["Src"]
      131 GETTABLEKS                       R24 R25 K33 ["Network"]
      133 GETTABLEKS                       R23 R24 K34 ["DiscoverExperiences"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K5 [require]
      138 GETTABLEKS                       R26 R0 K23 ["Src"]
      140 GETTABLEKS                       R25 R26 K33 ["Network"]
      142 GETTABLEKS                       R24 R25 K35 ["DiscoverRecents"]
      144 CALL                             R23 1 1
      145 GETIMPORT                        R24 K5 [require]
      147 GETTABLEKS                       R27 R0 K23 ["Src"]
      149 GETTABLEKS                       R26 R27 K33 ["Network"]
      151 GETTABLEKS                       R25 R26 K36 ["DiscoverKnowledgeFeeds"]
      153 CALL                             R24 1 1
      154 GETIMPORT                        R25 K5 [require]
      156 GETTABLEKS                       R28 R0 K23 ["Src"]
      158 GETTABLEKS                       R27 R28 K33 ["Network"]
      160 GETTABLEKS                       R26 R27 K37 ["DiscoverMomentum"]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K5 [require]
      165 GETTABLEKS                       R29 R0 K23 ["Src"]
      167 GETTABLEKS                       R28 R29 K33 ["Network"]
      169 GETTABLEKS                       R27 R28 K38 ["DiscoverCreatorEligibilityAndOpenPlace"]
      171 CALL                             R26 1 1
      172 GETIMPORT                        R27 K5 [require]
      174 GETTABLEKS                       R30 R0 K23 ["Src"]
      176 GETTABLEKS                       R29 R30 K33 ["Network"]
      178 GETTABLEKS                       R28 R29 K39 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K5 [require]
      183 GETTABLEKS                       R31 R0 K23 ["Src"]
      185 GETTABLEKS                       R30 R31 K33 ["Network"]
      187 GETTABLEKS                       R29 R30 K40 ["DiscoverHomepageBannerExperienceUnrated"]
      189 CALL                             R28 1 1
      190 GETIMPORT                        R29 K5 [require]
      192 GETTABLEKS                       R32 R0 K23 ["Src"]
      194 GETTABLEKS                       R31 R32 K41 ["Resources"]
      196 GETTABLEKS                       R30 R31 K42 ["PlaceholderMomentumContent"]
      198 CALL                             R29 1 1
      199 GETIMPORT                        R30 K5 [require]
      201 GETTABLEKS                       R33 R0 K23 ["Src"]
      203 GETTABLEKS                       R32 R33 K43 ["SharedFlags"]
      205 GETTABLEKS                       R31 R32 K44 ["getFFlagEnableKnowledgeTutorials2"]
      207 CALL                             R30 1 1
      208 CALL                             R30 0 1
      209 GETIMPORT                        R31 K5 [require]
      211 GETTABLEKS                       R34 R0 K23 ["Src"]
      213 GETTABLEKS                       R33 R34 K43 ["SharedFlags"]
      215 GETTABLEKS                       R32 R33 K45 ["getFFlagEnableKnowledgeFeeds"]
      217 CALL                             R31 1 1
      218 CALL                             R31 0 1
      219 GETIMPORT                        R32 K5 [require]
      221 GETTABLEKS                       R35 R0 K23 ["Src"]
      223 GETTABLEKS                       R34 R35 K43 ["SharedFlags"]
      225 GETTABLEKS                       R33 R34 K46 ["getFFlagLuaStartPageTutorialInfoTile"]
      227 CALL                             R32 1 1
      228 CALL                             R32 0 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R36 R0 K23 ["Src"]
      233 GETTABLEKS                       R35 R36 K43 ["SharedFlags"]
      235 GETTABLEKS                       R34 R35 K47 ["getFFlagLuaStartPageVerifyAgeBanner"]
      237 CALL                             R33 1 1
      238 GETIMPORT                        R34 K5 [require]
      240 GETTABLEKS                       R37 R0 K23 ["Src"]
      242 GETTABLEKS                       R36 R37 K43 ["SharedFlags"]
      244 GETTABLEKS                       R35 R36 K48 ["getFFlagStartPageEstablishTrustBanner"]
      246 CALL                             R34 1 1
      247 CALL                             R34 0 1
      248 GETIMPORT                        R35 K5 [require]
      250 GETTABLEKS                       R38 R0 K23 ["Src"]
      252 GETTABLEKS                       R37 R38 K43 ["SharedFlags"]
      254 GETTABLEKS                       R36 R37 K49 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      256 CALL                             R35 1 1
      257 CALL                             R35 0 1
      258 GETIMPORT                        R36 K5 [require]
      260 GETTABLEKS                       R39 R0 K23 ["Src"]
      262 GETTABLEKS                       R38 R39 K43 ["SharedFlags"]
      264 GETTABLEKS                       R37 R38 K50 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      266 CALL                             R36 1 1
      267 CALL                             R36 0 1
      268 GETIMPORT                        R37 K5 [require]
      270 GETTABLEKS                       R40 R0 K23 ["Src"]
      272 GETTABLEKS                       R39 R40 K43 ["SharedFlags"]
      274 GETTABLEKS                       R38 R39 K51 ["getFFlagStartPageFAEReverification"]
      276 CALL                             R37 1 1
      277 CALL                             R37 0 1
      278 GETIMPORT                        R38 K5 [require]
      280 GETTABLEKS                       R41 R0 K23 ["Src"]
      282 GETTABLEKS                       R40 R41 K43 ["SharedFlags"]
      284 GETTABLEKS                       R39 R40 K52 ["getFFlagStartPageTrustedConnectionShowUpsellDialog"]
      286 CALL                             R38 1 1
      287 CALL                             R38 0 1
      288 GETIMPORT                        R39 K5 [require]
      290 GETTABLEKS                       R42 R0 K23 ["Src"]
      292 GETTABLEKS                       R41 R42 K43 ["SharedFlags"]
      294 GETTABLEKS                       R40 R41 K53 ["getFStringAgeRestrictedLink"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K5 [require]
      299 GETTABLEKS                       R43 R0 K23 ["Src"]
      301 GETTABLEKS                       R42 R43 K43 ["SharedFlags"]
      303 GETTABLEKS                       R41 R42 K54 ["getFStringUnratedExperiencesLink"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K5 [require]
      308 GETTABLEKS                       R44 R0 K23 ["Src"]
      310 GETTABLEKS                       R43 R44 K43 ["SharedFlags"]
      312 GETTABLEKS                       R42 R43 K55 ["getFStringLuaStartPageVerifyAgeLink"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K5 [require]
      317 GETTABLEKS                       R45 R0 K23 ["Src"]
      319 GETTABLEKS                       R44 R45 K43 ["SharedFlags"]
      321 GETTABLEKS                       R43 R44 K56 ["getFStringLuaStartPageCAEDevForumLink"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K5 [require]
      326 GETTABLEKS                       R46 R0 K23 ["Src"]
      328 GETTABLEKS                       R45 R46 K43 ["SharedFlags"]
      330 GETTABLEKS                       R44 R45 K57 ["getFStringReVerifyAgeLink"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K5 [require]
      335 GETTABLEKS                       R47 R0 K23 ["Src"]
      337 GETTABLEKS                       R46 R47 K43 ["SharedFlags"]
      339 GETTABLEKS                       R45 R46 K58 ["getFStringLuaStartPageFAEDevForumLink"]
      341 CALL                             R44 1 1
      342 GETIMPORT                        R45 K5 [require]
      344 GETTABLEKS                       R48 R0 K23 ["Src"]
      346 GETTABLEKS                       R47 R48 K43 ["SharedFlags"]
      348 GETTABLEKS                       R46 R47 K59 ["getFStringStartPageEstablishTrustDevForumLink"]
      350 CALL                             R45 1 1
      351 GETIMPORT                        R46 K5 [require]
      353 GETTABLEKS                       R49 R0 K23 ["Src"]
      355 GETTABLEKS                       R48 R49 K43 ["SharedFlags"]
      357 GETTABLEKS                       R47 R48 K60 ["getFStringStartPageImpactedExperiencesLink"]
      359 CALL                             R46 1 1
      360 GETIMPORT                        R47 K5 [require]
      362 GETTABLEKS                       R50 R0 K23 ["Src"]
      364 GETTABLEKS                       R49 R50 K43 ["SharedFlags"]
      366 GETTABLEKS                       R48 R49 K61 ["safeGetFastFlag"]
      368 CALL                             R47 1 1
      369 GETIMPORT                        R48 K5 [require]
      371 GETTABLEKS                       R51 R0 K23 ["Src"]
      373 GETTABLEKS                       R50 R51 K16 ["Util"]
      375 GETTABLEKS                       R49 R50 K62 ["Services"]
      377 CALL                             R48 1 1
      378 GETTABLEKS                       R49 R48 K63 ["StartPageManager"]
      380 GETIMPORT                        R50 K5 [require]
      382 GETTABLEKS                       R54 R0 K23 ["Src"]
      384 GETTABLEKS                       R53 R54 K16 ["Util"]
      386 GETTABLEKS                       R52 R53 K64 ["Telemetry"]
      388 GETTABLEKS                       R51 R52 K65 ["TelemetryContext"]
      390 CALL                             R50 1 1
      391 GETIMPORT                        R51 K5 [require]
      393 GETTABLEKS                       R55 R0 K23 ["Src"]
      395 GETTABLEKS                       R54 R55 K16 ["Util"]
      397 GETTABLEKS                       R53 R54 K64 ["Telemetry"]
      399 GETTABLEKS                       R52 R53 K66 ["StartPageTelemetryEvent"]
      401 CALL                             R51 1 1
      402 GETIMPORT                        R52 K5 [require]
      404 GETTABLEKS                       R56 R0 K23 ["Src"]
      406 GETTABLEKS                       R55 R56 K16 ["Util"]
      408 GETTABLEKS                       R54 R55 K64 ["Telemetry"]
      410 GETTABLEKS                       R53 R54 K67 ["StudioSafetyUpsellClickedEvent"]
      412 CALL                             R52 1 1
      413 GETIMPORT                        R53 K5 [require]
      415 GETTABLEKS                       R56 R0 K23 ["Src"]
      417 GETTABLEKS                       R55 R56 K68 ["Contexts"]
      419 GETTABLEKS                       R54 R55 K69 ["ContextMenuActions"]
      421 CALL                             R53 1 1
      422 GETTABLEKS                       R54 R48 K70 ["StudioService"]
      424 GETTABLEKS                       R55 R48 K71 ["RbxAnalyticsService"]
      426 GETIMPORT                        R56 K5 [require]
      428 GETTABLEKS                       R59 R0 K23 ["Src"]
      430 GETTABLEKS                       R58 R59 K16 ["Util"]
      432 GETTABLEKS                       R57 R58 K72 ["Dialogs"]
      434 CALL                             R56 1 1
      435 GETIMPORT                        R57 K5 [require]
      437 GETTABLEKS                       R60 R0 K23 ["Src"]
      439 GETTABLEKS                       R59 R60 K73 ["Hooks"]
      441 GETTABLEKS                       R58 R59 K74 ["useUsername"]
      443 CALL                             R57 1 1
      444 GETIMPORT                        R58 K5 [require]
      446 GETTABLEKS                       R61 R0 K23 ["Src"]
      448 GETTABLEKS                       R60 R61 K73 ["Hooks"]
      450 GETTABLEKS                       R59 R60 K75 ["useShowVerifyAgeBanner"]
      452 CALL                             R58 1 1
      453 GETIMPORT                        R59 K5 [require]
      455 GETTABLEKS                       R62 R0 K23 ["Src"]
      457 GETTABLEKS                       R61 R62 K73 ["Hooks"]
      459 GETTABLEKS                       R60 R61 K76 ["useEstablishTrustDialog"]
      461 CALL                             R59 1 1
      462 GETIMPORT                        R60 K5 [require]
      464 GETTABLEKS                       R63 R0 K23 ["Src"]
      466 GETTABLEKS                       R62 R63 K43 ["SharedFlags"]
      468 GETTABLEKS                       R61 R62 K77 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      470 CALL                             R60 1 1
      471 CALL                             R60 0 1
      472 GETIMPORT                        R61 K5 [require]
      474 GETTABLEKS                       R64 R0 K23 ["Src"]
      476 GETTABLEKS                       R63 R64 K43 ["SharedFlags"]
      478 GETTABLEKS                       R62 R63 K78 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      480 CALL                             R61 1 1
      481 CALL                             R61 0 1
      482 GETIMPORT                        R62 K5 [require]
      484 GETTABLEKS                       R64 R0 K6 ["Packages"]
      486 GETTABLEKS                       R63 R64 K24 ["Foundation"]
      488 CALL                             R62 1 1
      489 GETTABLEKS                       R64 R62 K73 ["Hooks"]
      491 GETTABLEKS                       R63 R64 K79 ["useStyleTags"]
      493 GETTABLEKS                       R64 R62 K80 ["View"]
      495 GETTABLEKS                       R65 R62 K81 ["SystemBanner"]
      497 GETTABLEKS                       R67 R62 K82 ["Enums"]
      499 GETTABLEKS                       R66 R67 K83 ["AlertVariant"]
      501 GETTABLEKS                       R68 R62 K82 ["Enums"]
      503 GETTABLEKS                       R67 R68 K84 ["AlertSeverity"]
      505 GETTABLEKS                       R69 R62 K82 ["Enums"]
      507 GETTABLEKS                       R68 R69 K85 ["ButtonVariant"]
      509 MOVE                             R69 R39
      510 CALL                             R69 0 1
      511 MOVE                             R70 R40
      512 CALL                             R70 0 1
      513 DUPCLOSURE                       R71 K86 [PROTO_0]
      514 CAPTURE                          VAL R54
      515 DUPTABLE                         R72 K91 [{"searchKey", "search", "isTemplates", "pageSize"}]
      516 LOADK                            R73 K92 ["Templates"]
      517 SETTABLEKS                       R73 R72 K87 ["searchKey"]
      519 LOADK                            R73 K93 ["All"]
      520 SETTABLEKS                       R73 R72 K88 ["search"]
      522 LOADB                            R73 1
      523 SETTABLEKS                       R73 R72 K89 ["isTemplates"]
      525 LOADN                            R73 30
      526 SETTABLEKS                       R73 R72 K90 ["pageSize"]
      528 DUPTABLE                         R73 K94 [{"searchKey", "pageSize"}]
      529 LOADK                            R74 K33 ["Network"]
      530 SETTABLEKS                       R74 R73 K87 ["searchKey"]
      532 LOADN                            R74 30
      533 SETTABLEKS                       R74 R73 K90 ["pageSize"]
      535 NEWTABLE                         R74 0 6
      537 LOADK                            R75 K95 ["ConfigureExperience"]
      538 LOADK                            R76 K96 ["ConfigurePlace"]
      539 LOADK                            R77 K97 ["OpenPlace"]
      540 JUMPIF                           R61 ; [+2]
      541 LOADK                            R78 K98 ["PublicPrivateToggle"]
      542 JUMP                             ; [+1]
      543 LOADK                            R78 K99 [""]
      544 LOADK                            R79 K100 ["Archive"]
      545 LOADK                            R80 K101 ["RemoveRecent"]
      546 SETLIST                          R74 R75 6 [1]
      548 DUPCLOSURE                       R75 K102 [PROTO_2]
      549 CAPTURE                          VAL R50
      550 CAPTURE                          VAL R5
      551 CAPTURE                          VAL R56
      552 CAPTURE                          VAL R36
      553 CAPTURE                          VAL R35
      554 CAPTURE                          VAL R48
      555 CAPTURE                          VAL R11
      556 CAPTURE                          VAL R1
      557 CAPTURE                          VAL R17
      558 CAPTURE                          VAL R9
      559 CAPTURE                          VAL R27
      560 CAPTURE                          VAL R54
      561 CAPTURE                          VAL R26
      562 CAPTURE                          VAL R49
      563 CAPTURE                          VAL R60
      564 CAPTURE                          VAL R51
      565 CAPTURE                          VAL R74
      566 DUPCLOSURE                       R76 K103 [PROTO_8]
      567 CAPTURE                          VAL R50
      568 CAPTURE                          VAL R36
      569 CAPTURE                          VAL R35
      570 CAPTURE                          VAL R48
      571 CAPTURE                          VAL R11
      572 CAPTURE                          VAL R1
      573 CAPTURE                          VAL R17
      574 CAPTURE                          VAL R9
      575 CAPTURE                          VAL R27
      576 CAPTURE                          VAL R54
      577 CAPTURE                          VAL R26
      578 CAPTURE                          VAL R60
      579 CAPTURE                          VAL R51
      580 DUPCLOSURE                       R77 K104 [PROTO_14]
      581 CAPTURE                          VAL R50
      582 CAPTURE                          VAL R36
      583 CAPTURE                          VAL R35
      584 CAPTURE                          VAL R48
      585 CAPTURE                          VAL R11
      586 CAPTURE                          VAL R1
      587 CAPTURE                          VAL R17
      588 CAPTURE                          VAL R9
      589 CAPTURE                          VAL R31
      590 CAPTURE                          VAL R51
      591 CAPTURE                          VAL R49
      592 CAPTURE                          VAL R27
      593 CAPTURE                          VAL R54
      594 CAPTURE                          VAL R30
      595 CAPTURE                          VAL R26
      596 DUPCLOSURE                       R78 K105 [PROTO_36]
      597 CAPTURE                          VAL R12
      598 CAPTURE                          VAL R2
      599 CAPTURE                          VAL R63
      600 CAPTURE                          VAL R4
      601 CAPTURE                          VAL R3
      602 CAPTURE                          VAL R54
      603 CAPTURE                          VAL R28
      604 CAPTURE                          VAL R50
      605 CAPTURE                          VAL R11
      606 CAPTURE                          VAL R48
      607 CAPTURE                          VAL R49
      608 CAPTURE                          VAL R47
      609 CAPTURE                          VAL R33
      610 CAPTURE                          VAL R34
      611 CAPTURE                          VAL R59
      612 CAPTURE                          VAL R7
      613 CAPTURE                          VAL R51
      614 CAPTURE                          VAL R10
      615 CAPTURE                          VAL R57
      616 CAPTURE                          VAL R58
      617 CAPTURE                          VAL R52
      618 CAPTURE                          VAL R55
      619 CAPTURE                          VAL R29
      620 CAPTURE                          VAL R31
      621 CAPTURE                          VAL R24
      622 CAPTURE                          VAL R25
      623 CAPTURE                          VAL R32
      624 CAPTURE                          VAL R1
      625 CAPTURE                          VAL R14
      626 CAPTURE                          VAL R65
      627 CAPTURE                          VAL R66
      628 CAPTURE                          VAL R67
      629 CAPTURE                          VAL R68
      630 CAPTURE                          VAL R44
      631 CAPTURE                          VAL R41
      632 CAPTURE                          VAL R45
      633 CAPTURE                          VAL R38
      634 CAPTURE                          VAL R46
      635 CAPTURE                          VAL R37
      636 CAPTURE                          VAL R42
      637 CAPTURE                          VAL R43
      638 CAPTURE                          VAL R21
      639 CAPTURE                          VAL R69
      640 CAPTURE                          VAL R70
      641 CAPTURE                          VAL R16
      642 CAPTURE                          VAL R20
      643 CAPTURE                          VAL R64
      644 CAPTURE                          VAL R15
      645 CAPTURE                          VAL R53
      646 CAPTURE                          VAL R74
      647 CAPTURE                          VAL R18
      648 CAPTURE                          VAL R19
      649 CAPTURE                          VAL R75
      650 CAPTURE                          VAL R23
      651 CAPTURE                          VAL R76
      652 CAPTURE                          VAL R72
      653 CAPTURE                          VAL R22
      654 CAPTURE                          VAL R77
      655 CAPTURE                          VAL R73
      656 RETURN                           R78 1
