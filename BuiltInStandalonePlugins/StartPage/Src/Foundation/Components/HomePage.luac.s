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
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 NAMECALL                         R0 R0 K1 ["GetUserId"]
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+17]
       12 LOADN                            R1 0
       13 JUMPIFNOTLT                      R1 R0 ; [+15]
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+10]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R2 R1 K2 ["andThen"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R2 R2 K3 ["catch"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

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
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R12 0 0
       48 CALL                             R10 2 0
       49 GETUPVAL                         R10 8
       50 NAMECALL                         R10 R10 K0 ["use"]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 9
       54 NAMECALL                         R11 R11 K0 ["use"]
       56 CALL                             R11 1 1
       57 GETUPVAL                         R13 10
       58 GETTABLEKS                       R12 R13 K3 ["getStartPageBridge"]
       60 CALL                             R12 0 1
       61 GETUPVAL                         R14 11
       62 NAMECALL                         R14 R14 K4 ["isTutorialBannerClosed"]
       64 CALL                             R14 1 1
       65 NOT                              R13 R14
       66 GETUPVAL                         R14 12
       67 LOADK                            R15 K5 ["DebugShowStudioTour3"]
       68 CALL                             R14 1 1
       69 JUMPIFNOT                        R14 ; [+1]
       70 LOADB                            R13 1
       71 GETUPVAL                         R14 4
       72 MOVE                             R15 R13
       73 CALL                             R14 1 2
       74 GETUPVAL                         R16 4
       75 LOADB                            R17 1
       76 CALL                             R16 1 2
       77 LOADNIL                          R18
       78 LOADNIL                          R19
       79 LOADNIL                          R20
       80 GETUPVAL                         R21 13
       81 JUMPIFNOT                        R21 ; [+9]
       82 GETUPVAL                         R21 14
       83 JUMPIFNOT                        R21 ; [+7]
       84 GETUPVAL                         R21 15
       85 NEWTABLE                         R22 0 0
       87 CALL                             R21 1 3
       88 MOVE                             R18 R21
       89 MOVE                             R19 R22
       90 MOVE                             R20 R23
       91 GETUPVAL                         R21 16
       92 NEWCLOSURE                       R22 P3
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R12
      100 CALL                             R21 1 1
      101 GETUPVAL                         R22 18
      102 CALL                             R22 0 1
      103 GETUPVAL                         R23 19
      104 CALL                             R23 0 1
      105 LOADNIL                          R24
      106 LOADNIL                          R25
      107 LOADNIL                          R26
      108 LOADNIL                          R27
      109 LOADNIL                          R28
      110 LOADNIL                          R29
      111 LOADNIL                          R30
      112 GETUPVAL                         R31 14
      113 JUMPIFNOT                        R31 ; [+16]
      114 GETUPVAL                         R31 13
      115 JUMPIFNOT                        R31 ; [+14]
      116 GETUPVAL                         R32 20
      117 CALL                             R32 0 -1
      118 FASTCALL                         TABLE_UNPACK ; [+2]
      119 GETIMPORT                        R31 K8 [table.unpack]
      121 CALL                             R31 -1 7
      122 MOVE                             R24 R31
      123 MOVE                             R25 R32
      124 MOVE                             R26 R33
      125 MOVE                             R27 R34
      126 MOVE                             R28 R35
      127 MOVE                             R29 R36
      128 MOVE                             R30 R37
      129 JUMP                             ; [+12]
      130 GETUPVAL                         R31 13
      131 JUMPIFNOT                        R31 ; [+10]
      132 GETUPVAL                         R32 20
      133 CALL                             R32 0 -1
      134 FASTCALL                         TABLE_UNPACK ; [+2]
      135 GETIMPORT                        R31 K8 [table.unpack]
      137 CALL                             R31 -1 4
      138 MOVE                             R24 R31
      139 MOVE                             R27 R32
      140 MOVE                             R28 R33
      141 MOVE                             R30 R34
      142 NEWCLOSURE                       R31 P4
      143 CAPTURE                          VAL R10
      144 CAPTURE                          UPVAL U21
      145 CAPTURE                          UPVAL U6
      146 CAPTURE                          UPVAL U22
      147 GETUPVAL                         R32 16
      148 NEWCLOSURE                       R33 P5
      149 CAPTURE                          UPVAL U23
      150 CAPTURE                          VAL R11
      151 CAPTURE                          UPVAL U24
      152 CAPTURE                          UPVAL U25
      153 CAPTURE                          UPVAL U26
      154 NEWTABLE                         R34 0 1
      156 NAMECALL                         R35 R11 K9 ["getLocale"]
      158 CALL                             R35 1 -1
      159 SETLIST                          R34 R35 -1 [1]
      161 CALL                             R32 2 1
      162 GETUPVAL                         R34 27
      163 JUMPIFNOT                        R34 ; [+2]
      164 LOADN                            R33 24
      165 JUMP                             ; [+1]
      166 LOADN                            R33 14
      167 GETUPVAL                         R35 27
      168 JUMPIFNOT                        R35 ; [+2]
      169 LOADN                            R34 20
      170 JUMP                             ; [+1]
      171 LOADN                            R34 10
      172 GETUPVAL                         R36 28
      173 GETTABLEKS                       R35 R36 K10 ["createElement"]
      175 GETUPVAL                         R36 29
      176 NEWTABLE                         R37 4 0
      178 GETIMPORT                        R38 K14 [Enum.AutomaticSize.Y]
      180 SETTABLEKS                       R38 R37 K15 ["AutomaticCanvasSize"]
      182 GETIMPORT                        R38 K18 [UDim2.new]
      184 LOADN                            R39 1
      185 LOADN                            R40 0
      186 LOADN                            R41 0
      187 LOADN                            R42 0
      188 CALL                             R38 4 1
      189 SETTABLEKS                       R38 R37 K19 ["CanvasSize"]
      191 LOADN                            R38 0
      192 SETTABLEKS                       R38 R37 K20 ["ScrollBarThickness"]
      194 GETUPVAL                         R39 28
      195 GETTABLEKS                       R38 R39 K21 ["Tag"]
      197 SETTABLE                         R5 R37 R38
      198 DUPTABLE                         R38 K27 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "AgeReverificationBanner", "UnratedExperiencesBanner", "Content"}]
      199 GETUPVAL                         R40 13
      200 JUMPIFNOT                        R40 ; [+81]
      201 JUMPIFNOT                        R24 ; [+80]
      202 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      204 JUMPIF                           R40 ; [+77]
      205 GETUPVAL                         R40 28
      206 GETTABLEKS                       R39 R40 K10 ["createElement"]
      208 GETUPVAL                         R40 30
      209 DUPTABLE                         R41 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      210 GETUPVAL                         R43 31
      211 GETTABLEKS                       R42 R43 K36 ["Emphasis"]
      213 SETTABLEKS                       R42 R41 K29 ["variant"]
      215 GETUPVAL                         R43 32
      216 GETTABLEKS                       R42 R43 K37 ["Info"]
      218 SETTABLEKS                       R42 R41 K30 ["severity"]
      220 LOADK                            R44 K38 ["Plugin"]
      221 LOADK                            R45 K39 ["VerifyAgeBanner.Title"]
      222 NAMECALL                         R42 R11 K40 ["getText"]
      224 CALL                             R42 3 1
      225 SETTABLEKS                       R42 R41 K31 ["title"]
      227 LOADK                            R44 K38 ["Plugin"]
      228 LOADK                            R45 K41 ["VerifyAgeBanner.Body"]
      229 NAMECALL                         R42 R11 K40 ["getText"]
      231 CALL                             R42 3 1
      232 SETTABLEKS                       R42 R41 K32 ["description"]
      234 NEWTABLE                         R42 0 2
      236 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      237 LOADK                            R46 K38 ["Plugin"]
      238 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      239 NAMECALL                         R44 R11 K40 ["getText"]
      241 CALL                             R44 3 1
      242 SETTABLEKS                       R44 R43 K42 ["text"]
      244 GETUPVAL                         R45 33
      245 GETTABLEKS                       R44 R45 K46 ["Utility"]
      247 SETTABLEKS                       R44 R43 K29 ["variant"]
      249 NEWCLOSURE                       R44 P6
      250 CAPTURE                          UPVAL U11
      251 CAPTURE                          UPVAL U34
      252 CAPTURE                          VAL R31
      253 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      255 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      256 LOADK                            R47 K38 ["Plugin"]
      257 LOADK                            R48 K47 ["VerifyAgeBanner.PrimaryAction"]
      258 NAMECALL                         R45 R11 K40 ["getText"]
      260 CALL                             R45 3 1
      261 SETTABLEKS                       R45 R44 K42 ["text"]
      263 GETUPVAL                         R46 33
      264 GETTABLEKS                       R45 R46 K48 ["Standard"]
      266 SETTABLEKS                       R45 R44 K29 ["variant"]
      268 NEWCLOSURE                       R45 P7
      269 CAPTURE                          UPVAL U11
      270 CAPTURE                          UPVAL U35
      271 CAPTURE                          VAL R31
      272 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      274 SETLIST                          R42 R43 2 [1]
      276 SETTABLEKS                       R42 R41 K33 ["actions"]
      278 SETTABLEKS                       R28 R41 K34 ["onClose"]
      280 CALL                             R39 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R39
      283 SETTABLEKS                       R39 R38 K22 ["VerifyAgeAlertBanner"]
      285 GETUPVAL                         R40 14
      286 JUMPIFNOT                        R40 ; [+78]
      287 JUMPIFNOT                        R25 ; [+77]
      288 JUMPIF                           R24 ; [+76]
      289 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      291 JUMPIF                           R40 ; [+73]
      292 GETUPVAL                         R40 28
      293 GETTABLEKS                       R39 R40 K10 ["createElement"]
      295 GETUPVAL                         R40 30
      296 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      297 GETUPVAL                         R43 31
      298 GETTABLEKS                       R42 R43 K48 ["Standard"]
      300 SETTABLEKS                       R42 R41 K29 ["variant"]
      302 GETUPVAL                         R43 32
      303 GETTABLEKS                       R42 R43 K50 ["Warning"]
      305 SETTABLEKS                       R42 R41 K30 ["severity"]
      307 LOADK                            R44 K23 ["EstablishTrustBanner"]
      308 LOADK                            R45 K51 ["Title"]
      309 NAMECALL                         R42 R11 K40 ["getText"]
      311 CALL                             R42 3 1
      312 SETTABLEKS                       R42 R41 K31 ["title"]
      314 NEWTABLE                         R42 0 2
      316 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      317 LOADK                            R46 K38 ["Plugin"]
      318 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      319 NAMECALL                         R44 R11 K40 ["getText"]
      321 CALL                             R44 3 1
      322 SETTABLEKS                       R44 R43 K42 ["text"]
      324 GETUPVAL                         R45 33
      325 GETTABLEKS                       R44 R45 K46 ["Utility"]
      327 SETTABLEKS                       R44 R43 K29 ["variant"]
      329 NEWCLOSURE                       R44 P8
      330 CAPTURE                          UPVAL U11
      331 CAPTURE                          UPVAL U36
      332 CAPTURE                          VAL R31
      333 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      335 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      336 LOADK                            R47 K38 ["Plugin"]
      337 LOADK                            R48 K47 ["VerifyAgeBanner.PrimaryAction"]
      338 NAMECALL                         R45 R11 K40 ["getText"]
      340 CALL                             R45 3 1
      341 SETTABLEKS                       R45 R44 K42 ["text"]
      343 GETUPVAL                         R46 33
      344 GETTABLEKS                       R45 R46 K48 ["Standard"]
      346 SETTABLEKS                       R45 R44 K29 ["variant"]
      348 NEWCLOSURE                       R45 P9
      349 CAPTURE                          REF R26
      350 CAPTURE                          UPVAL U37
      351 CAPTURE                          REF R18
      352 CAPTURE                          UPVAL U11
      353 CAPTURE                          UPVAL U38
      354 CAPTURE                          VAL R31
      355 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      357 SETLIST                          R42 R43 2 [1]
      359 SETTABLEKS                       R42 R41 K33 ["actions"]
      361 SETTABLEKS                       R29 R41 K34 ["onClose"]
      363 CALL                             R39 2 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R39
      366 SETTABLEKS                       R39 R38 K23 ["EstablishTrustBanner"]
      368 GETUPVAL                         R40 39
      369 JUMPIFNOT                        R40 ; [+78]
      370 JUMPIFNOT                        R27 ; [+77]
      371 JUMPIF                           R24 ; [+76]
      372 GETUPVAL                         R40 14
      373 JUMPIFNOT                        R40 ; [+1]
      374 JUMPIF                           R25 ; [+73]
      375 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      377 JUMPIF                           R40 ; [+70]
      378 GETUPVAL                         R40 28
      379 GETTABLEKS                       R39 R40 K10 ["createElement"]
      381 GETUPVAL                         R40 30
      382 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      383 GETUPVAL                         R43 31
      384 GETTABLEKS                       R42 R43 K48 ["Standard"]
      386 SETTABLEKS                       R42 R41 K29 ["variant"]
      388 GETUPVAL                         R43 32
      389 GETTABLEKS                       R42 R43 K37 ["Info"]
      391 SETTABLEKS                       R42 R41 K30 ["severity"]
      393 LOADK                            R44 K24 ["AgeReverificationBanner"]
      394 LOADK                            R45 K51 ["Title"]
      395 NAMECALL                         R42 R11 K40 ["getText"]
      397 CALL                             R42 3 1
      398 SETTABLEKS                       R42 R41 K31 ["title"]
      400 NEWTABLE                         R42 0 2
      402 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      403 LOADK                            R46 K38 ["Plugin"]
      404 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      405 NAMECALL                         R44 R11 K40 ["getText"]
      407 CALL                             R44 3 1
      408 SETTABLEKS                       R44 R43 K42 ["text"]
      410 GETUPVAL                         R45 33
      411 GETTABLEKS                       R44 R45 K46 ["Utility"]
      413 SETTABLEKS                       R44 R43 K29 ["variant"]
      415 NEWCLOSURE                       R44 P10
      416 CAPTURE                          UPVAL U11
      417 CAPTURE                          UPVAL U40
      418 CAPTURE                          VAL R31
      419 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      421 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      422 LOADK                            R47 K24 ["AgeReverificationBanner"]
      423 LOADK                            R48 K52 ["PrimaryAction"]
      424 NAMECALL                         R45 R11 K40 ["getText"]
      426 CALL                             R45 3 1
      427 SETTABLEKS                       R45 R44 K42 ["text"]
      429 GETUPVAL                         R46 33
      430 GETTABLEKS                       R45 R46 K48 ["Standard"]
      432 SETTABLEKS                       R45 R44 K29 ["variant"]
      434 NEWCLOSURE                       R45 P11
      435 CAPTURE                          UPVAL U11
      436 CAPTURE                          UPVAL U41
      437 CAPTURE                          VAL R31
      438 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      440 SETLIST                          R42 R43 2 [1]
      442 SETTABLEKS                       R42 R41 K33 ["actions"]
      444 SETTABLEKS                       R30 R41 K34 ["onClose"]
      446 CALL                             R39 2 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R39
      449 SETTABLEKS                       R39 R38 K24 ["AgeReverificationBanner"]
      451 GETUPVAL                         R40 5
      452 JUMPIFNOT                        R40 ; [+96]
      453 JUMPIFNOT                        R6 ; [+95]
      454 JUMPIF                           R8 ; [+94]
      455 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      457 JUMPIF                           R40 ; [+91]
      458 GETUPVAL                         R40 28
      459 GETTABLEKS                       R39 R40 K10 ["createElement"]
      461 GETUPVAL                         R40 42
      462 DUPTABLE                         R41 K55 [{"tag", "LayoutOrder"}]
      463 LOADK                            R42 K56 ["padding-top-xxsmall auto-y size-full-0"]
      464 SETTABLEKS                       R42 R41 K53 ["tag"]
      466 MOVE                             R42 R22
      467 CALL                             R42 0 1
      468 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      470 GETUPVAL                         R43 28
      471 GETTABLEKS                       R42 R43 K10 ["createElement"]
      473 GETUPVAL                         R43 30
      474 DUPTABLE                         R44 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      475 GETUPVAL                         R46 31
      476 GETTABLEKS                       R45 R46 K36 ["Emphasis"]
      478 SETTABLEKS                       R45 R44 K29 ["variant"]
      480 GETUPVAL                         R46 32
      481 GETTABLEKS                       R45 R46 K57 ["Error"]
      483 SETTABLEKS                       R45 R44 K30 ["severity"]
      485 LOADK                            R47 K38 ["Plugin"]
      486 LOADK                            R48 K58 ["UnratedExperiencesBanner.Title"]
      487 NAMECALL                         R45 R11 K40 ["getText"]
      489 CALL                             R45 3 1
      490 SETTABLEKS                       R45 R44 K31 ["title"]
      492 LOADK                            R47 K38 ["Plugin"]
      493 LOADK                            R48 K59 ["UnratedExperiencesBanner.Description"]
      494 NAMECALL                         R45 R11 K40 ["getText"]
      496 CALL                             R45 3 1
      497 SETTABLEKS                       R45 R44 K32 ["description"]
      499 NEWTABLE                         R45 0 2
      501 DUPTABLE                         R46 K44 [{"text", "variant", "onActivated"}]
      502 LOADK                            R49 K38 ["Plugin"]
      503 LOADK                            R50 K60 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      504 NAMECALL                         R47 R11 K40 ["getText"]
      506 CALL                             R47 3 1
      507 SETTABLEKS                       R47 R46 K42 ["text"]
      509 GETUPVAL                         R48 33
      510 GETTABLEKS                       R47 R48 K46 ["Utility"]
      512 SETTABLEKS                       R47 R46 K29 ["variant"]
      514 DUPCLOSURE                       R47 K61 [PROTO_30]
      515 CAPTURE                          UPVAL U11
      516 CAPTURE                          UPVAL U43
      517 SETTABLEKS                       R47 R46 K43 ["onActivated"]
      519 DUPTABLE                         R47 K44 [{"text", "variant", "onActivated"}]
      520 LOADK                            R50 K38 ["Plugin"]
      521 LOADK                            R51 K62 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      522 NAMECALL                         R48 R11 K40 ["getText"]
      524 CALL                             R48 3 1
      525 SETTABLEKS                       R48 R47 K42 ["text"]
      527 GETUPVAL                         R49 33
      528 GETTABLEKS                       R48 R49 K48 ["Standard"]
      530 SETTABLEKS                       R48 R47 K29 ["variant"]
      532 DUPCLOSURE                       R48 K63 [PROTO_31]
      533 CAPTURE                          UPVAL U11
      534 CAPTURE                          UPVAL U44
      535 SETTABLEKS                       R48 R47 K43 ["onActivated"]
      537 SETLIST                          R45 R46 2 [1]
      539 SETTABLEKS                       R45 R44 K33 ["actions"]
      541 NEWCLOSURE                       R45 P14
      542 CAPTURE                          VAL R9
      543 CAPTURE                          VAL R1
      544 SETTABLEKS                       R45 R44 K34 ["onClose"]
      546 CALL                             R42 2 -1
      547 CALL                             R39 -1 1
      548 JUMP                             ; [+1]
      549 LOADNIL                          R39
      550 SETTABLEKS                       R39 R38 K25 ["UnratedExperiencesBanner"]
      552 GETUPVAL                         R40 28
      553 GETTABLEKS                       R39 R40 K10 ["createElement"]
      555 GETUPVAL                         R40 42
      556 DUPTABLE                         R41 K64 [{"LayoutOrder", "tag"}]
      557 MOVE                             R42 R22
      558 CALL                             R42 0 1
      559 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      561 LOADK                            R42 K65 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      562 SETTABLEKS                       R42 R41 K53 ["tag"]
      564 DUPTABLE                         R42 K72 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      565 GETUPVAL                         R44 28
      566 GETTABLEKS                       R43 R44 K10 ["createElement"]
      568 GETUPVAL                         R44 45
      569 DUPTABLE                         R45 K73 [{"title", "LayoutOrder"}]
      570 JUMPIFNOT                        R23 ; [+9]
      571 LOADK                            R48 K38 ["Plugin"]
      572 LOADK                            R49 K74 ["HomePage.WelcomeWithUsername"]
      573 DUPTABLE                         R50 K76 [{"username"}]
      574 SETTABLEKS                       R23 R50 K75 ["username"]
      576 NAMECALL                         R46 R11 K40 ["getText"]
      578 CALL                             R46 4 1
      579 JUMP                             ; [+5]
      580 LOADK                            R48 K38 ["Plugin"]
      581 LOADK                            R49 K77 ["HomePage.Welcome"]
      582 NAMECALL                         R46 R11 K40 ["getText"]
      584 CALL                             R46 3 1
      585 SETTABLEKS                       R46 R45 K31 ["title"]
      587 MOVE                             R46 R22
      588 CALL                             R46 0 1
      589 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      591 CALL                             R43 2 1
      592 SETTABLEKS                       R43 R42 K66 ["Header"]
      594 GETUPVAL                         R44 46
      595 JUMPIFNOT                        R44 ; [+21]
      596 GETUPVAL                         R44 28
      597 GETTABLEKS                       R43 R44 K10 ["createElement"]
      599 GETUPVAL                         R44 42
      600 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      601 MOVE                             R46 R22
      602 CALL                             R46 0 1
      603 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      605 LOADK                            R46 K78 ["size-full-0 auto-y col padding-bottom-medium"]
      606 SETTABLEKS                       R46 R45 K53 ["tag"]
      608 GETUPVAL                         R47 28
      609 GETTABLEKS                       R46 R47 K10 ["createElement"]
      611 GETUPVAL                         R47 47
      612 NEWTABLE                         R48 0 0
      614 CALL                             R46 2 -1
      615 CALL                             R43 -1 1
      616 JUMP                             ; [+27]
      617 JUMPIFNOT                        R14 ; [+25]
      618 GETUPVAL                         R44 28
      619 GETTABLEKS                       R43 R44 K10 ["createElement"]
      621 GETUPVAL                         R44 42
      622 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      623 MOVE                             R46 R22
      624 CALL                             R46 0 1
      625 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      627 LOADK                            R46 K78 ["size-full-0 auto-y col padding-bottom-medium"]
      628 SETTABLEKS                       R46 R45 K53 ["tag"]
      630 GETUPVAL                         R47 28
      631 GETTABLEKS                       R46 R47 K10 ["createElement"]
      633 GETUPVAL                         R47 48
      634 DUPTABLE                         R48 K79 [{"onClose"}]
      635 NEWCLOSURE                       R49 P15
      636 CAPTURE                          VAL R15
      637 CAPTURE                          UPVAL U11
      638 SETTABLEKS                       R49 R48 K34 ["onClose"]
      640 CALL                             R46 2 -1
      641 CALL                             R43 -1 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R43
      644 SETTABLEKS                       R43 R42 K67 ["TutorialBanner"]
      646 GETTABLEKS                       R44 R0 K80 ["hideRecents"]
      648 JUMPIF                           R44 ; [+161]
      649 JUMPIFNOT                        R16 ; [+160]
      650 GETUPVAL                         R44 28
      651 GETTABLEKS                       R43 R44 K10 ["createElement"]
      653 GETUPVAL                         R44 49
      654 DUPTABLE                         R45 K82 [{"LayoutOrder", "tag", "testId"}]
      655 MOVE                             R46 R22
      656 CALL                             R46 0 1
      657 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      659 LOADK                            R46 K83 ["size-full-0 auto-y col gap-xsmall"]
      660 SETTABLEKS                       R46 R45 K53 ["tag"]
      662 LOADK                            R46 K84 ["--start-page-RecentExperiences-section"]
      663 SETTABLEKS                       R46 R45 K81 ["testId"]
      665 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      666 GETUPVAL                         R48 28
      667 GETTABLEKS                       R47 R48 K10 ["createElement"]
      669 GETUPVAL                         R48 50
      670 DUPTABLE                         R49 K88 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      671 LOADK                            R52 K38 ["Plugin"]
      672 LOADK                            R53 K89 ["HomePage.MyRecentExperiences"]
      673 NAMECALL                         R50 R11 K40 ["getText"]
      675 CALL                             R50 3 1
      676 SETTABLEKS                       R50 R49 K31 ["title"]
      678 LOADK                            R52 K38 ["Plugin"]
      679 LOADK                            R53 K90 ["SeeAll"]
      680 NAMECALL                         R50 R11 K40 ["getText"]
      682 CALL                             R50 3 1
      683 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      685 NEWCLOSURE                       R50 P16
      686 CAPTURE                          VAL R10
      687 CAPTURE                          UPVAL U17
      688 CAPTURE                          VAL R0
      689 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      691 MOVE                             R50 R22
      692 CALL                             R50 0 1
      693 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      695 CALL                             R47 2 1
      696 SETTABLEKS                       R47 R46 K66 ["Header"]
      698 GETUPVAL                         R48 28
      699 GETTABLEKS                       R47 R48 K10 ["createElement"]
      701 GETUPVAL                         R49 51
      702 GETTABLEKS                       R48 R49 K91 ["Provider"]
      704 DUPTABLE                         R49 K93 [{"value"}]
      705 GETUPVAL                         R50 52
      706 SETTABLEKS                       R50 R49 K92 ["value"]
      708 GETUPVAL                         R51 28
      709 GETTABLEKS                       R50 R51 K10 ["createElement"]
      711 GETUPVAL                         R51 53
      712 DUPTABLE                         R52 K106 [{"Size", "DisplayComponent", "MaxCount", "PageSize", "ShowRecentAPIGames", "ShowRecentLocalFiles", "OnItemCountUpdated", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      713 GETIMPORT                        R53 K18 [UDim2.new]
      715 LOADN                            R54 1
      716 LOADN                            R55 0
      717 LOADN                            R56 0
      718 LOADN                            R57 99
      719 CALL                             R53 4 1
      720 SETTABLEKS                       R53 R52 K94 ["Size"]
      722 GETUPVAL                         R53 54
      723 SETTABLEKS                       R53 R52 K95 ["DisplayComponent"]
      725 LOADN                            R53 6
      726 SETTABLEKS                       R53 R52 K96 ["MaxCount"]
      728 LOADN                            R53 10
      729 SETTABLEKS                       R53 R52 K97 ["PageSize"]
      731 LOADB                            R53 1
      732 SETTABLEKS                       R53 R52 K98 ["ShowRecentAPIGames"]
      734 LOADB                            R53 1
      735 SETTABLEKS                       R53 R52 K99 ["ShowRecentLocalFiles"]
      737 SETTABLEKS                       R21 R52 K100 ["OnItemCountUpdated"]
      739 GETUPVAL                         R53 55
      740 SETTABLEKS                       R53 R52 K101 ["CellComponent"]
      742 GETIMPORT                        R53 K18 [UDim2.new]
      744 LOADN                            R54 0
      745 LOADN                            R55 224
      746 LOADN                            R56 0
      747 LOADN                            R57 92
      748 CALL                             R53 4 1
      749 SETTABLEKS                       R53 R52 K102 ["CellSize"]
      751 GETIMPORT                        R53 K18 [UDim2.new]
      753 LOADN                            R54 0
      754 LOADN                            R55 16
      755 LOADN                            R56 0
      756 LOADN                            R57 16
      757 CALL                             R53 4 1
      758 SETTABLEKS                       R53 R52 K103 ["CellPadding"]
      760 DUPTABLE                         R53 K116 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
      761 LOADK                            R54 K117 ["Recents"]
      762 SETTABLEKS                       R54 R53 K107 ["searchKey"]
      764 LOADK                            R54 K118 [""]
      765 SETTABLEKS                       R54 R53 K108 ["search"]
      767 LOADK                            R54 K119 ["User"]
      768 SETTABLEKS                       R54 R53 K109 ["creatorType"]
      770 GETUPVAL                         R55 6
      771 NAMECALL                         R55 R55 K120 ["GetUserId"]
      773 CALL                             R55 1 -1
      774 FASTCALL                         TOSTRING ; [+2]
      775 GETIMPORT                        R54 K122 [tostring]
      777 CALL                             R54 -1 1
      778 SETTABLEKS                       R54 R53 K110 ["creatorTargetId"]
      780 LOADB                            R54 0
      781 SETTABLEKS                       R54 R53 K111 ["isArchived"]
      783 LOADB                            R54 0
      784 SETTABLEKS                       R54 R53 K112 ["isTemplates"]
      786 LOADN                            R54 10
      787 SETTABLEKS                       R54 R53 K113 ["pageSize"]
      789 LOADB                            R54 1
      790 SETTABLEKS                       R54 R53 K114 ["getRecentLocalFiles"]
      792 LOADB                            R54 1
      793 SETTABLEKS                       R54 R53 K115 ["getRecentAPIGames"]
      795 SETTABLEKS                       R53 R52 K104 ["Query"]
      797 GETUPVAL                         R53 56
      798 SETTABLEKS                       R53 R52 K105 ["FetchItems"]
      800 MOVE                             R53 R22
      801 CALL                             R53 0 1
      802 SETTABLEKS                       R53 R52 K54 ["LayoutOrder"]
      804 CALL                             R50 2 -1
      805 CALL                             R47 -1 1
      806 SETTABLEKS                       R47 R46 K26 ["Content"]
      808 CALL                             R43 3 1
      809 JUMP                             ; [+1]
      810 LOADNIL                          R43
      811 SETTABLEKS                       R43 R42 K68 ["RecentExperiences"]
      813 GETUPVAL                         R44 28
      814 GETTABLEKS                       R43 R44 K10 ["createElement"]
      816 GETUPVAL                         R44 42
      817 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      818 MOVE                             R46 R22
      819 CALL                             R46 0 1
      820 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      822 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      823 SETTABLEKS                       R46 R45 K53 ["tag"]
      825 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      826 GETUPVAL                         R48 28
      827 GETTABLEKS                       R47 R48 K10 ["createElement"]
      829 GETUPVAL                         R48 50
      830 DUPTABLE                         R49 K124 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      831 LOADK                            R52 K38 ["Plugin"]
      832 LOADK                            R53 K125 ["HomePage.Templates.Heading"]
      833 NAMECALL                         R50 R11 K40 ["getText"]
      835 CALL                             R50 3 1
      836 SETTABLEKS                       R50 R49 K31 ["title"]
      838 LOADK                            R52 K38 ["Plugin"]
      839 LOADK                            R53 K126 ["HomePage.Templates.Description"]
      840 NAMECALL                         R50 R11 K40 ["getText"]
      842 CALL                             R50 3 1
      843 SETTABLEKS                       R50 R49 K32 ["description"]
      845 LOADK                            R52 K38 ["Plugin"]
      846 LOADK                            R53 K90 ["SeeAll"]
      847 NAMECALL                         R50 R11 K40 ["getText"]
      849 CALL                             R50 3 1
      850 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      852 NEWCLOSURE                       R50 P17
      853 CAPTURE                          VAL R10
      854 CAPTURE                          UPVAL U17
      855 CAPTURE                          VAL R0
      856 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      858 MOVE                             R50 R22
      859 CALL                             R50 0 1
      860 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      862 CALL                             R47 2 1
      863 SETTABLEKS                       R47 R46 K66 ["Header"]
      865 GETUPVAL                         R48 28
      866 GETTABLEKS                       R47 R48 K10 ["createElement"]
      868 GETUPVAL                         R48 53
      869 DUPTABLE                         R49 K127 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      870 GETIMPORT                        R50 K18 [UDim2.new]
      872 LOADN                            R51 1
      873 LOADN                            R52 0
      874 LOADN                            R53 0
      875 LOADN                            R54 8
      876 CALL                             R50 4 1
      877 SETTABLEKS                       R50 R49 K94 ["Size"]
      879 GETUPVAL                         R50 54
      880 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      882 LOADN                            R50 6
      883 SETTABLEKS                       R50 R49 K96 ["MaxCount"]
      885 GETUPVAL                         R50 57
      886 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      888 GETIMPORT                        R50 K18 [UDim2.new]
      890 LOADN                            R51 0
      891 LOADN                            R52 225
      892 LOADN                            R53 0
      893 LOADN                            R54 252
      894 CALL                             R50 4 1
      895 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      897 GETIMPORT                        R50 K18 [UDim2.new]
      899 LOADN                            R51 0
      900 LOADN                            R52 16
      901 LOADN                            R53 0
      902 LOADN                            R54 16
      903 CALL                             R50 4 1
      904 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      906 GETUPVAL                         R50 58
      907 SETTABLEKS                       R50 R49 K104 ["Query"]
      909 GETUPVAL                         R50 59
      910 SETTABLEKS                       R50 R49 K105 ["FetchItems"]
      912 MOVE                             R50 R22
      913 CALL                             R50 0 1
      914 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      916 CALL                             R47 2 1
      917 SETTABLEKS                       R47 R46 K26 ["Content"]
      919 CALL                             R43 3 1
      920 SETTABLEKS                       R43 R42 K69 ["Templates"]
      922 GETUPVAL                         R44 28
      923 GETTABLEKS                       R43 R44 K10 ["createElement"]
      925 GETUPVAL                         R44 42
      926 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      927 MOVE                             R46 R22
      928 CALL                             R46 0 1
      929 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      931 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      932 SETTABLEKS                       R46 R45 K53 ["tag"]
      934 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      935 GETUPVAL                         R48 28
      936 GETTABLEKS                       R47 R48 K10 ["createElement"]
      938 GETUPVAL                         R48 50
      939 DUPTABLE                         R49 K128 [{"title", "description", "LayoutOrder"}]
      940 LOADK                            R52 K38 ["Plugin"]
      941 LOADK                            R53 K129 ["HomePage.DiscoverStudio.Heading"]
      942 NAMECALL                         R50 R11 K40 ["getText"]
      944 CALL                             R50 3 1
      945 SETTABLEKS                       R50 R49 K31 ["title"]
      947 LOADK                            R52 K38 ["Plugin"]
      948 LOADK                            R53 K130 ["HomePage.DiscoverStudio.Description"]
      949 NAMECALL                         R50 R11 K40 ["getText"]
      951 CALL                             R50 3 1
      952 SETTABLEKS                       R50 R49 K32 ["description"]
      954 MOVE                             R50 R22
      955 CALL                             R50 0 1
      956 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      958 CALL                             R47 2 1
      959 SETTABLEKS                       R47 R46 K66 ["Header"]
      961 GETUPVAL                         R48 28
      962 GETTABLEKS                       R47 R48 K10 ["createElement"]
      964 GETUPVAL                         R48 53
      965 DUPTABLE                         R49 K131 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      966 GETIMPORT                        R50 K18 [UDim2.new]
      968 LOADN                            R51 1
      969 LOADN                            R52 0
      970 LOADN                            R53 0
      971 MOVE                             R54 R33
      972 CALL                             R50 4 1
      973 SETTABLEKS                       R50 R49 K94 ["Size"]
      975 GETUPVAL                         R50 54
      976 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      978 GETUPVAL                         R50 60
      979 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      981 GETIMPORT                        R50 K18 [UDim2.new]
      983 LOADN                            R51 0
      984 LOADN                            R52 225
      985 LOADN                            R53 0
      986 MOVE                             R54 R34
      987 CALL                             R50 4 1
      988 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      990 GETIMPORT                        R50 K18 [UDim2.new]
      992 LOADN                            R51 0
      993 LOADN                            R52 16
      994 LOADN                            R53 0
      995 LOADN                            R54 16
      996 CALL                             R50 4 1
      997 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      999 GETUPVAL                         R50 61
     1000 SETTABLEKS                       R50 R49 K104 ["Query"]
     1002 SETTABLEKS                       R32 R49 K105 ["FetchItems"]
     1004 MOVE                             R50 R22
     1005 CALL                             R50 0 1
     1006 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
     1008 CALL                             R47 2 1
     1009 SETTABLEKS                       R47 R46 K26 ["Content"]
     1011 CALL                             R43 3 1
     1012 SETTABLEKS                       R43 R42 K70 ["Momentum"]
     1014 GETUPVAL                         R44 28
     1015 GETTABLEKS                       R43 R44 K10 ["createElement"]
     1017 GETUPVAL                         R44 49
     1018 DUPTABLE                         R45 K132 [{"LayoutOrder", "Size"}]
     1019 MOVE                             R46 R22
     1020 CALL                             R46 0 1
     1021 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
     1023 GETIMPORT                        R46 K18 [UDim2.new]
     1025 LOADN                            R47 1
     1026 LOADN                            R48 0
     1027 LOADN                            R49 0
     1028 LOADN                            R50 40
     1029 CALL                             R46 4 1
     1030 SETTABLEKS                       R46 R45 K94 ["Size"]
     1032 CALL                             R43 2 1
     1033 SETTABLEKS                       R43 R42 K71 ["Spacer"]
     1035 CALL                             R39 3 1
     1036 SETTABLEKS                       R39 R38 K26 ["Content"]
     1038 CALL                             R35 3 -1
     1039 CLOSEUPVALS                      R18
     1040 RETURN                           R35 -1

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
      124 GETTABLEKS                       R22 R23 K32 ["PublishEligibilityBanner"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K5 [require]
      129 GETTABLEKS                       R26 R0 K23 ["Src"]
      131 GETTABLEKS                       R25 R26 K24 ["Foundation"]
      133 GETTABLEKS                       R24 R25 K25 ["Components"]
      135 GETTABLEKS                       R23 R24 K33 ["Frame"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K5 [require]
      140 GETTABLEKS                       R26 R0 K23 ["Src"]
      142 GETTABLEKS                       R25 R26 K34 ["Network"]
      144 GETTABLEKS                       R24 R25 K35 ["DiscoverExperiences"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K5 [require]
      149 GETTABLEKS                       R27 R0 K23 ["Src"]
      151 GETTABLEKS                       R26 R27 K34 ["Network"]
      153 GETTABLEKS                       R25 R26 K36 ["DiscoverRecents"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K5 [require]
      158 GETTABLEKS                       R28 R0 K23 ["Src"]
      160 GETTABLEKS                       R27 R28 K34 ["Network"]
      162 GETTABLEKS                       R26 R27 K37 ["DiscoverKnowledgeFeeds"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K5 [require]
      167 GETTABLEKS                       R29 R0 K23 ["Src"]
      169 GETTABLEKS                       R28 R29 K34 ["Network"]
      171 GETTABLEKS                       R27 R28 K38 ["DiscoverMomentum"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K5 [require]
      176 GETTABLEKS                       R30 R0 K23 ["Src"]
      178 GETTABLEKS                       R29 R30 K34 ["Network"]
      180 GETTABLEKS                       R28 R29 K39 ["DiscoverCreatorEligibilityAndOpenPlace"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K5 [require]
      185 GETTABLEKS                       R31 R0 K23 ["Src"]
      187 GETTABLEKS                       R30 R31 K34 ["Network"]
      189 GETTABLEKS                       R29 R30 K40 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R32 R0 K23 ["Src"]
      196 GETTABLEKS                       R31 R32 K34 ["Network"]
      198 GETTABLEKS                       R30 R31 K41 ["DiscoverHomepageBannerExperienceUnrated"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K5 [require]
      203 GETTABLEKS                       R33 R0 K23 ["Src"]
      205 GETTABLEKS                       R32 R33 K42 ["Resources"]
      207 GETTABLEKS                       R31 R32 K43 ["PlaceholderMomentumContent"]
      209 CALL                             R30 1 1
      210 GETIMPORT                        R31 K5 [require]
      212 GETTABLEKS                       R34 R0 K23 ["Src"]
      214 GETTABLEKS                       R33 R34 K44 ["SharedFlags"]
      216 GETTABLEKS                       R32 R33 K45 ["getFFlagEnableKnowledgeTutorials2"]
      218 CALL                             R31 1 1
      219 CALL                             R31 0 1
      220 GETIMPORT                        R32 K5 [require]
      222 GETTABLEKS                       R35 R0 K23 ["Src"]
      224 GETTABLEKS                       R34 R35 K44 ["SharedFlags"]
      226 GETTABLEKS                       R33 R34 K46 ["getFFlagEnableKnowledgeFeeds"]
      228 CALL                             R32 1 1
      229 CALL                             R32 0 1
      230 GETIMPORT                        R33 K5 [require]
      232 GETTABLEKS                       R36 R0 K23 ["Src"]
      234 GETTABLEKS                       R35 R36 K44 ["SharedFlags"]
      236 GETTABLEKS                       R34 R35 K47 ["getFFlagLuaStartPageTutorialInfoTile"]
      238 CALL                             R33 1 1
      239 CALL                             R33 0 1
      240 GETIMPORT                        R34 K5 [require]
      242 GETTABLEKS                       R37 R0 K23 ["Src"]
      244 GETTABLEKS                       R36 R37 K44 ["SharedFlags"]
      246 GETTABLEKS                       R35 R36 K48 ["getFFlagLuaStartPageVerifyAgeBanner"]
      248 CALL                             R34 1 1
      249 GETIMPORT                        R35 K5 [require]
      251 GETTABLEKS                       R38 R0 K23 ["Src"]
      253 GETTABLEKS                       R37 R38 K44 ["SharedFlags"]
      255 GETTABLEKS                       R36 R37 K49 ["getFFlagStartPageEstablishTrustBanner"]
      257 CALL                             R35 1 1
      258 CALL                             R35 0 1
      259 GETIMPORT                        R36 K5 [require]
      261 GETTABLEKS                       R39 R0 K23 ["Src"]
      263 GETTABLEKS                       R38 R39 K44 ["SharedFlags"]
      265 GETTABLEKS                       R37 R38 K50 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      267 CALL                             R36 1 1
      268 CALL                             R36 0 1
      269 GETIMPORT                        R37 K5 [require]
      271 GETTABLEKS                       R40 R0 K23 ["Src"]
      273 GETTABLEKS                       R39 R40 K44 ["SharedFlags"]
      275 GETTABLEKS                       R38 R39 K51 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      277 CALL                             R37 1 1
      278 CALL                             R37 0 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R41 R0 K23 ["Src"]
      283 GETTABLEKS                       R40 R41 K44 ["SharedFlags"]
      285 GETTABLEKS                       R39 R40 K52 ["getFFlagStartPageFAEReverification"]
      287 CALL                             R38 1 1
      288 CALL                             R38 0 1
      289 GETIMPORT                        R39 K5 [require]
      291 GETTABLEKS                       R42 R0 K23 ["Src"]
      293 GETTABLEKS                       R41 R42 K44 ["SharedFlags"]
      295 GETTABLEKS                       R40 R41 K53 ["getFFlagStartPageTrustedConnectionShowUpsellDialog"]
      297 CALL                             R39 1 1
      298 CALL                             R39 0 1
      299 GETIMPORT                        R40 K5 [require]
      301 GETTABLEKS                       R43 R0 K23 ["Src"]
      303 GETTABLEKS                       R42 R43 K44 ["SharedFlags"]
      305 GETTABLEKS                       R41 R42 K54 ["getFFlagStartPageShowUnratedExperiencesBanner"]
      307 CALL                             R40 1 1
      308 CALL                             R40 0 1
      309 GETIMPORT                        R41 K5 [require]
      311 GETTABLEKS                       R44 R0 K23 ["Src"]
      313 GETTABLEKS                       R43 R44 K44 ["SharedFlags"]
      315 GETTABLEKS                       R42 R43 K55 ["getFStringAgeRestrictedLink"]
      317 CALL                             R41 1 1
      318 GETIMPORT                        R42 K5 [require]
      320 GETTABLEKS                       R45 R0 K23 ["Src"]
      322 GETTABLEKS                       R44 R45 K44 ["SharedFlags"]
      324 GETTABLEKS                       R43 R44 K56 ["getFStringUnratedExperiencesLink"]
      326 CALL                             R42 1 1
      327 GETIMPORT                        R43 K5 [require]
      329 GETTABLEKS                       R46 R0 K23 ["Src"]
      331 GETTABLEKS                       R45 R46 K44 ["SharedFlags"]
      333 GETTABLEKS                       R44 R45 K57 ["getFStringLuaStartPageVerifyAgeLink"]
      335 CALL                             R43 1 1
      336 GETIMPORT                        R44 K5 [require]
      338 GETTABLEKS                       R47 R0 K23 ["Src"]
      340 GETTABLEKS                       R46 R47 K44 ["SharedFlags"]
      342 GETTABLEKS                       R45 R46 K58 ["getFStringLuaStartPageCAEDevForumLink"]
      344 CALL                             R44 1 1
      345 GETIMPORT                        R45 K5 [require]
      347 GETTABLEKS                       R48 R0 K23 ["Src"]
      349 GETTABLEKS                       R47 R48 K44 ["SharedFlags"]
      351 GETTABLEKS                       R46 R47 K59 ["getFStringReVerifyAgeLink"]
      353 CALL                             R45 1 1
      354 GETIMPORT                        R46 K5 [require]
      356 GETTABLEKS                       R49 R0 K23 ["Src"]
      358 GETTABLEKS                       R48 R49 K44 ["SharedFlags"]
      360 GETTABLEKS                       R47 R48 K60 ["getFStringLuaStartPageFAEDevForumLink"]
      362 CALL                             R46 1 1
      363 GETIMPORT                        R47 K5 [require]
      365 GETTABLEKS                       R50 R0 K23 ["Src"]
      367 GETTABLEKS                       R49 R50 K44 ["SharedFlags"]
      369 GETTABLEKS                       R48 R49 K61 ["getFStringStartPageEstablishTrustDevForumLink"]
      371 CALL                             R47 1 1
      372 GETIMPORT                        R48 K5 [require]
      374 GETTABLEKS                       R51 R0 K23 ["Src"]
      376 GETTABLEKS                       R50 R51 K44 ["SharedFlags"]
      378 GETTABLEKS                       R49 R50 K62 ["getFStringStartPageImpactedExperiencesLink"]
      380 CALL                             R48 1 1
      381 GETIMPORT                        R49 K5 [require]
      383 GETTABLEKS                       R52 R0 K23 ["Src"]
      385 GETTABLEKS                       R51 R52 K44 ["SharedFlags"]
      387 GETTABLEKS                       R50 R51 K63 ["safeGetFastFlag"]
      389 CALL                             R49 1 1
      390 GETIMPORT                        R50 K5 [require]
      392 GETTABLEKS                       R53 R0 K23 ["Src"]
      394 GETTABLEKS                       R52 R53 K44 ["SharedFlags"]
      396 GETTABLEKS                       R51 R52 K64 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      398 CALL                             R50 1 1
      399 CALL                             R50 0 1
      400 GETIMPORT                        R51 K5 [require]
      402 GETTABLEKS                       R54 R0 K23 ["Src"]
      404 GETTABLEKS                       R53 R54 K16 ["Util"]
      406 GETTABLEKS                       R52 R53 K65 ["Services"]
      408 CALL                             R51 1 1
      409 GETTABLEKS                       R52 R51 K66 ["StartPageManager"]
      411 GETIMPORT                        R53 K5 [require]
      413 GETTABLEKS                       R57 R0 K23 ["Src"]
      415 GETTABLEKS                       R56 R57 K16 ["Util"]
      417 GETTABLEKS                       R55 R56 K67 ["Telemetry"]
      419 GETTABLEKS                       R54 R55 K68 ["TelemetryContext"]
      421 CALL                             R53 1 1
      422 GETIMPORT                        R54 K5 [require]
      424 GETTABLEKS                       R58 R0 K23 ["Src"]
      426 GETTABLEKS                       R57 R58 K16 ["Util"]
      428 GETTABLEKS                       R56 R57 K67 ["Telemetry"]
      430 GETTABLEKS                       R55 R56 K69 ["StartPageTelemetryEvent"]
      432 CALL                             R54 1 1
      433 GETIMPORT                        R55 K5 [require]
      435 GETTABLEKS                       R59 R0 K23 ["Src"]
      437 GETTABLEKS                       R58 R59 K16 ["Util"]
      439 GETTABLEKS                       R57 R58 K67 ["Telemetry"]
      441 GETTABLEKS                       R56 R57 K70 ["StudioSafetyUpsellClickedEvent"]
      443 CALL                             R55 1 1
      444 GETIMPORT                        R56 K5 [require]
      446 GETTABLEKS                       R59 R0 K23 ["Src"]
      448 GETTABLEKS                       R58 R59 K71 ["Contexts"]
      450 GETTABLEKS                       R57 R58 K72 ["ContextMenuActions"]
      452 CALL                             R56 1 1
      453 GETTABLEKS                       R57 R51 K73 ["StudioService"]
      455 GETTABLEKS                       R58 R51 K74 ["RbxAnalyticsService"]
      457 GETIMPORT                        R59 K5 [require]
      459 GETTABLEKS                       R62 R0 K23 ["Src"]
      461 GETTABLEKS                       R61 R62 K16 ["Util"]
      463 GETTABLEKS                       R60 R61 K75 ["Dialogs"]
      465 CALL                             R59 1 1
      466 GETIMPORT                        R60 K5 [require]
      468 GETTABLEKS                       R63 R0 K23 ["Src"]
      470 GETTABLEKS                       R62 R63 K76 ["Hooks"]
      472 GETTABLEKS                       R61 R62 K77 ["useUsername"]
      474 CALL                             R60 1 1
      475 GETIMPORT                        R61 K5 [require]
      477 GETTABLEKS                       R64 R0 K23 ["Src"]
      479 GETTABLEKS                       R63 R64 K76 ["Hooks"]
      481 GETTABLEKS                       R62 R63 K78 ["useShowVerifyAgeBanner"]
      483 CALL                             R61 1 1
      484 GETIMPORT                        R62 K5 [require]
      486 GETTABLEKS                       R65 R0 K23 ["Src"]
      488 GETTABLEKS                       R64 R65 K76 ["Hooks"]
      490 GETTABLEKS                       R63 R64 K79 ["useEstablishTrustDialog"]
      492 CALL                             R62 1 1
      493 GETIMPORT                        R63 K5 [require]
      495 GETTABLEKS                       R66 R0 K23 ["Src"]
      497 GETTABLEKS                       R65 R66 K44 ["SharedFlags"]
      499 GETTABLEKS                       R64 R65 K80 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      501 CALL                             R63 1 1
      502 CALL                             R63 0 1
      503 GETIMPORT                        R64 K5 [require]
      505 GETTABLEKS                       R67 R0 K23 ["Src"]
      507 GETTABLEKS                       R66 R67 K44 ["SharedFlags"]
      509 GETTABLEKS                       R65 R66 K81 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      511 CALL                             R64 1 1
      512 CALL                             R64 0 1
      513 GETIMPORT                        R65 K5 [require]
      515 GETTABLEKS                       R67 R0 K6 ["Packages"]
      517 GETTABLEKS                       R66 R67 K24 ["Foundation"]
      519 CALL                             R65 1 1
      520 GETTABLEKS                       R67 R65 K76 ["Hooks"]
      522 GETTABLEKS                       R66 R67 K82 ["useStyleTags"]
      524 GETTABLEKS                       R67 R65 K83 ["View"]
      526 GETTABLEKS                       R68 R65 K84 ["SystemBanner"]
      528 GETTABLEKS                       R70 R65 K85 ["Enums"]
      530 GETTABLEKS                       R69 R70 K86 ["AlertVariant"]
      532 GETTABLEKS                       R71 R65 K85 ["Enums"]
      534 GETTABLEKS                       R70 R71 K87 ["AlertSeverity"]
      536 GETTABLEKS                       R72 R65 K85 ["Enums"]
      538 GETTABLEKS                       R71 R72 K88 ["ButtonVariant"]
      540 MOVE                             R72 R41
      541 CALL                             R72 0 1
      542 MOVE                             R73 R42
      543 CALL                             R73 0 1
      544 DUPCLOSURE                       R74 K89 [PROTO_0]
      545 CAPTURE                          VAL R57
      546 DUPTABLE                         R75 K94 [{"searchKey", "search", "isTemplates", "pageSize"}]
      547 LOADK                            R76 K95 ["Templates"]
      548 SETTABLEKS                       R76 R75 K90 ["searchKey"]
      550 LOADK                            R76 K96 ["All"]
      551 SETTABLEKS                       R76 R75 K91 ["search"]
      553 LOADB                            R76 1
      554 SETTABLEKS                       R76 R75 K92 ["isTemplates"]
      556 LOADN                            R76 30
      557 SETTABLEKS                       R76 R75 K93 ["pageSize"]
      559 DUPTABLE                         R76 K97 [{"searchKey", "pageSize"}]
      560 LOADK                            R77 K34 ["Network"]
      561 SETTABLEKS                       R77 R76 K90 ["searchKey"]
      563 LOADN                            R77 30
      564 SETTABLEKS                       R77 R76 K93 ["pageSize"]
      566 NEWTABLE                         R77 0 6
      568 LOADK                            R78 K98 ["ConfigureExperience"]
      569 LOADK                            R79 K99 ["ConfigurePlace"]
      570 LOADK                            R80 K100 ["OpenPlace"]
      571 JUMPIF                           R64 ; [+2]
      572 LOADK                            R81 K101 ["PublicPrivateToggle"]
      573 JUMP                             ; [+1]
      574 LOADK                            R81 K102 [""]
      575 LOADK                            R82 K103 ["Archive"]
      576 LOADK                            R83 K104 ["RemoveRecent"]
      577 SETLIST                          R77 R78 6 [1]
      579 DUPCLOSURE                       R78 K105 [PROTO_2]
      580 CAPTURE                          VAL R53
      581 CAPTURE                          VAL R5
      582 CAPTURE                          VAL R59
      583 CAPTURE                          VAL R37
      584 CAPTURE                          VAL R36
      585 CAPTURE                          VAL R51
      586 CAPTURE                          VAL R11
      587 CAPTURE                          VAL R1
      588 CAPTURE                          VAL R17
      589 CAPTURE                          VAL R9
      590 CAPTURE                          VAL R28
      591 CAPTURE                          VAL R57
      592 CAPTURE                          VAL R27
      593 CAPTURE                          VAL R52
      594 CAPTURE                          VAL R63
      595 CAPTURE                          VAL R54
      596 CAPTURE                          VAL R77
      597 DUPCLOSURE                       R79 K106 [PROTO_8]
      598 CAPTURE                          VAL R53
      599 CAPTURE                          VAL R37
      600 CAPTURE                          VAL R36
      601 CAPTURE                          VAL R51
      602 CAPTURE                          VAL R11
      603 CAPTURE                          VAL R1
      604 CAPTURE                          VAL R17
      605 CAPTURE                          VAL R9
      606 CAPTURE                          VAL R28
      607 CAPTURE                          VAL R57
      608 CAPTURE                          VAL R27
      609 CAPTURE                          VAL R63
      610 CAPTURE                          VAL R54
      611 DUPCLOSURE                       R80 K107 [PROTO_14]
      612 CAPTURE                          VAL R53
      613 CAPTURE                          VAL R37
      614 CAPTURE                          VAL R36
      615 CAPTURE                          VAL R51
      616 CAPTURE                          VAL R11
      617 CAPTURE                          VAL R1
      618 CAPTURE                          VAL R17
      619 CAPTURE                          VAL R9
      620 CAPTURE                          VAL R32
      621 CAPTURE                          VAL R54
      622 CAPTURE                          VAL R52
      623 CAPTURE                          VAL R28
      624 CAPTURE                          VAL R57
      625 CAPTURE                          VAL R31
      626 CAPTURE                          VAL R27
      627 DUPCLOSURE                       R81 K108 [PROTO_36]
      628 CAPTURE                          VAL R12
      629 CAPTURE                          VAL R2
      630 CAPTURE                          VAL R66
      631 CAPTURE                          VAL R4
      632 CAPTURE                          VAL R3
      633 CAPTURE                          VAL R40
      634 CAPTURE                          VAL R57
      635 CAPTURE                          VAL R29
      636 CAPTURE                          VAL R53
      637 CAPTURE                          VAL R11
      638 CAPTURE                          VAL R51
      639 CAPTURE                          VAL R52
      640 CAPTURE                          VAL R49
      641 CAPTURE                          VAL R34
      642 CAPTURE                          VAL R35
      643 CAPTURE                          VAL R62
      644 CAPTURE                          VAL R7
      645 CAPTURE                          VAL R54
      646 CAPTURE                          VAL R10
      647 CAPTURE                          VAL R60
      648 CAPTURE                          VAL R61
      649 CAPTURE                          VAL R55
      650 CAPTURE                          VAL R58
      651 CAPTURE                          VAL R30
      652 CAPTURE                          VAL R32
      653 CAPTURE                          VAL R25
      654 CAPTURE                          VAL R26
      655 CAPTURE                          VAL R33
      656 CAPTURE                          VAL R1
      657 CAPTURE                          VAL R14
      658 CAPTURE                          VAL R68
      659 CAPTURE                          VAL R69
      660 CAPTURE                          VAL R70
      661 CAPTURE                          VAL R71
      662 CAPTURE                          VAL R46
      663 CAPTURE                          VAL R43
      664 CAPTURE                          VAL R47
      665 CAPTURE                          VAL R39
      666 CAPTURE                          VAL R48
      667 CAPTURE                          VAL R38
      668 CAPTURE                          VAL R44
      669 CAPTURE                          VAL R45
      670 CAPTURE                          VAL R22
      671 CAPTURE                          VAL R72
      672 CAPTURE                          VAL R73
      673 CAPTURE                          VAL R16
      674 CAPTURE                          VAL R50
      675 CAPTURE                          VAL R21
      676 CAPTURE                          VAL R20
      677 CAPTURE                          VAL R67
      678 CAPTURE                          VAL R15
      679 CAPTURE                          VAL R56
      680 CAPTURE                          VAL R77
      681 CAPTURE                          VAL R18
      682 CAPTURE                          VAL R19
      683 CAPTURE                          VAL R78
      684 CAPTURE                          VAL R24
      685 CAPTURE                          VAL R79
      686 CAPTURE                          VAL R75
      687 CAPTURE                          VAL R23
      688 CAPTURE                          VAL R80
      689 CAPTURE                          VAL R76
      690 RETURN                           R81 1
