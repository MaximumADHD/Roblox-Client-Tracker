PROTO_0:
        0 DUPTABLE                         R0 K15 [{[1] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K16 ["GetUserId"]
        4 CALL                             R2 1 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R1 K18 [tostring]
        8 CALL                             R1 -1 1
        9 SETTABLEKS                       R1 R0 K6 ["creatorTargetId"]
       11 RETURN                           R0 1

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
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
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
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K3 ["showVerifyAge"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K4 ["showAgeRestricted"]
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
       59 JUMPIFNOT                        R1 ; [+27]
       60 GETUPVAL                         R1 11
       61 GETUPVAL                         R3 12
       62 DUPTABLE                         R4 K16 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_recent_sort", ["name"], ["isBuildGame"]}]
       63 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 LOADK                            R5 K17 ["published"]
       67 JUMP                             ; [+6]
       68 GETTABLEKS                       R6 R0 K6 ["FilePath"]
       70 JUMPIFNOT                        R6 ; [+2]
       71 LOADK                            R5 K18 ["local_file"]
       72 JUMP                             ; [+1]
       73 LOADK                            R5 K19 ["unknown"]
       74 SETTABLEKS                       R5 R4 K14 ["name"]
       76 GETUPVAL                         R6 13
       77 JUMPIFNOT                        R6 ; [+3]
       78 GETTABLEKS                       R5 R0 K20 ["IsBuildSealed"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R5
       82 SETTABLEKS                       R5 R4 K15 ["isBuildGame"]
       84 NAMECALL                         R1 R1 K21 ["log"]
       86 CALL                             R1 3 0
       87 RETURN                           R0 0

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
       35 DUPTABLE                         R10 K12 [{["ImageSize"], ["OnClick"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"]}]
       36 GETIMPORT                        R11 K15 [UDim2.new]
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
       59 CAPTURE                          UPVAL U16
       60 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       62 GETUPVAL                         R11 17
       63 SETTABLEKS                       R11 R10 K11 ["KebabMenu"]
       65 CALL                             R8 2 -1
       66 CALL                             R6 -1 -1
       67 CLOSEUPVALS                      R3
       68 RETURN                           R6 -1

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
        2 JUMPIFNOT                        R1 ; [+51]
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
       40 JUMPIFNOT                        R1 ; [+13]
       41 GETUPVAL                         R1 9
       42 GETUPVAL                         R3 10
       43 DUPTABLE                         R4 K15 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_template_sort", ["name"]}]
       44 GETTABLEKS                       R5 R0 K16 ["Name"]
       46 JUMPIF                           R5 ; [+2]
       47 GETTABLEKS                       R5 R0 K2 ["Id"]
       49 SETTABLEKS                       R5 R4 K14 ["name"]
       51 NAMECALL                         R1 R1 K17 ["log"]
       53 CALL                             R1 3 0
       54 RETURN                           R0 0

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
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["getDialogManager"]
       14 CALL                             R5 0 1
       15 MOVE                             R2 R5
       16 GETUPVAL                         R5 4
       17 NAMECALL                         R5 R5 K0 ["use"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K2 ["getActionsBridge"]
       24 CALL                             R5 0 1
       25 MOVE                             R3 R5
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K3 ["createElement"]
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
        1 JUMPIFNOT                        R1 ; [+28]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K7 [{[1] = "interaction", ["telemetrySubtype"] = "knowledge_feed", ["action"], ["name"], ["link"]}]
        5 GETTABLEKS                       R6 R0 K8 ["Link"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADK                            R5 K9 ["open_link"]
        9 JUMP                             ; [+6]
       10 GETTABLEKS                       R6 R0 K10 ["RootPlaceId"]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADK                            R5 K11 ["open_place"]
       14 JUMP                             ; [+1]
       15 LOADK                            R5 K12 ["launch_tutorial"]
       16 SETTABLEKS                       R5 R4 K4 ["action"]
       18 GETTABLEKS                       R5 R0 K13 ["Name"]
       20 SETTABLEKS                       R5 R4 K5 ["name"]
       22 GETTABLEKS                       R5 R0 K8 ["Link"]
       24 SETTABLEKS                       R5 R4 K6 ["link"]
       26 NAMECALL                         R1 R1 K14 ["log"]
       28 CALL                             R1 3 0
       29 JUMP                             ; [+27]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R3 2
       32 DUPTABLE                         R4 K16 [{[1] = "interaction", ["telemetrySubtype"] = "momentum", ["action"], ["name"], ["link"]}]
       33 GETTABLEKS                       R6 R0 K8 ["Link"]
       35 JUMPIFNOT                        R6 ; [+2]
       36 LOADK                            R5 K9 ["open_link"]
       37 JUMP                             ; [+6]
       38 GETTABLEKS                       R6 R0 K10 ["RootPlaceId"]
       40 JUMPIFNOT                        R6 ; [+2]
       41 LOADK                            R5 K11 ["open_place"]
       42 JUMP                             ; [+1]
       43 LOADK                            R5 K12 ["launch_tutorial"]
       44 SETTABLEKS                       R5 R4 K4 ["action"]
       46 GETTABLEKS                       R5 R0 K13 ["Name"]
       48 SETTABLEKS                       R5 R4 K5 ["name"]
       50 GETTABLEKS                       R5 R0 K8 ["Link"]
       52 SETTABLEKS                       R5 R4 K6 ["link"]
       54 NAMECALL                         R1 R1 K14 ["log"]
       56 CALL                             R1 3 0
       57 GETTABLEKS                       R1 R0 K8 ["Link"]
       59 JUMPIFNOT                        R1 ; [+7]
       60 GETUPVAL                         R1 3
       61 GETTABLEKS                       R3 R0 K8 ["Link"]
       63 NAMECALL                         R1 R1 K17 ["openLink"]
       65 CALL                             R1 2 0
       66 RETURN                           R0 0
       67 GETTABLEKS                       R1 R0 K10 ["RootPlaceId"]
       69 JUMPIFNOT                        R1 ; [+47]
       70 GETUPVAL                         R1 4
       71 JUMPIF                           R1 ; [+2]
       72 GETUPVAL                         R1 5
       73 JUMPIFNOT                        R1 ; [+25]
       74 GETUPVAL                         R1 6
       75 GETUPVAL                         R2 7
       76 NAMECALL                         R2 R2 K18 ["GetUserId"]
       78 CALL                             R2 1 1
       79 GETTABLEKS                       R3 R0 K19 ["UniverseId"]
       81 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
       83 GETTABLEKS                       R5 R0 K10 ["RootPlaceId"]
       85 DUPCLOSURE                       R6 K20 [PROTO_9]
       86 DUPCLOSURE                       R7 K21 [PROTO_10]
       87 GETTABLEKS                       R8 R0 K22 ["IsTeamCreateEnabled"]
       89 GETUPVAL                         R9 8
       90 GETUPVAL                         R10 9
       91 GETUPVAL                         R11 10
       92 GETUPVAL                         R13 11
       93 JUMPIFNOT                        R13 ; [+2]
       94 LOADB                            R12 0
       95 JUMP                             ; [+1]
       96 LOADB                            R12 1
       97 CALL                             R1 11 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R1 12
      100 GETUPVAL                         R2 7
      101 NAMECALL                         R2 R2 K18 ["GetUserId"]
      103 CALL                             R2 1 1
      104 GETTABLEKS                       R3 R0 K19 ["UniverseId"]
      106 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
      108 DUPCLOSURE                       R5 K23 [PROTO_11]
      109 DUPCLOSURE                       R6 K24 [PROTO_12]
      110 GETUPVAL                         R8 11
      111 JUMPIFNOT                        R8 ; [+2]
      112 LOADB                            R7 0
      113 JUMP                             ; [+1]
      114 LOADB                            R7 1
      115 CALL                             R1 6 0
      116 RETURN                           R0 0
      117 GETTABLEKS                       R1 R0 K25 ["LaunchTutorialOnClick"]
      119 JUMPIFNOT                        R1 ; [+4]
      120 GETUPVAL                         R1 3
      121 NAMECALL                         R1 R1 K26 ["startTutorial"]
      123 CALL                             R1 1 0
      124 RETURN                           R0 0

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
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["getDialogManager"]
       14 CALL                             R5 0 1
       15 MOVE                             R2 R5
       16 GETUPVAL                         R5 4
       17 NAMECALL                         R5 R5 K0 ["use"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K2 ["getActionsBridge"]
       24 CALL                             R5 0 1
       25 MOVE                             R3 R5
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K3 ["createElement"]
       29 GETUPVAL                         R6 6
       30 GETUPVAL                         R7 7
       31 MOVE                             R8 R0
       32 DUPTABLE                         R9 K10 [{["ImageSize"], ["IsDescriptionVisible"] = True, ["IsDifficultyVisible"] = True, ["IsCategoriesVisible"] = True, ["OnClick"]}]
       33 GETIMPORT                        R10 K13 [UDim2.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 200
       37 LOADN                            R13 0
       38 LOADN                            R14 161
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K4 ["ImageSize"]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          REF R3
       52 CAPTURE                          REF R2
       53 CAPTURE                          REF R4
       54 CAPTURE                          UPVAL U13
       55 CAPTURE                          UPVAL U14
       56 SETTABLEKS                       R10 R9 K9 ["OnClick"]
       58 CALL                             R7 2 -1
       59 CALL                             R5 -1 -1
       60 CLOSEUPVALS                      R2
       61 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        2 LOADK                            R2 K2 ["Failed to check for unrated experiences: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideBanner"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["current"]
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
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 JUMPIFEQKNIL                     R1 ; [+40]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+35]
       17 GETIMPORT                        R1 K3 [os.clock]
       19 CALL                             R1 0 1
       20 GETUPVAL                         R2 2
       21 SETTABLEKS                       R1 R2 K0 ["current"]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 4
       25 DUPTABLE                         R5 K13 [{["telemetryType"] = "performance", ["telemetrySubtype"] = "page_load", ["measurementName"] = "initial_load_time", ["timeElapsedMilliseconds"], ["context"] = "home_page"}]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K0 ["current"]
       29 SUB                              R8 R1 R9
       30 MULK                             R7 R8 K14 [1000]
       31 FASTCALL1                        MATH_ROUND R7 ; [+2]
       32 GETIMPORT                        R6 K17 [math.round]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K10 ["timeElapsedMilliseconds"]
       37 NAMECALL                         R2 R2 K18 ["log"]
       39 CALL                             R2 3 0
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K0 ["current"]
       43 JUMPIFEQKNIL                     R2 ; [+7]
       45 GETIMPORT                        R2 K21 [task.defer]
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K6 [{[1] = "click", ["upsellEntrySurface"], ["userId"], ["studioSid"], ["action"]}]
        3 SETTABLEKS                       R0 R5 K2 ["upsellEntrySurface"]
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R6 R6 K7 ["GetUserId"]
        8 CALL                             R6 1 1
        9 SETTABLEKS                       R6 R5 K3 ["userId"]
       11 GETUPVAL                         R6 3
       12 NAMECALL                         R6 R6 K8 ["GetSessionId"]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K4 ["studioSid"]
       17 SETTABLEKS                       R1 R5 K5 ["action"]
       19 NAMECALL                         R2 R2 K9 ["log"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["get"]
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
        2 DUPTABLE                         R3 K10 [{[1] = "navigation", ["telemetrySubtype"] = "page", ["context"] = "see_all_recents", ["from"] = "Home", ["to"] = "Recents"}]
        3 NAMECALL                         R0 R0 K11 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K12 ["onPageSwap"]
        9 LOADK                            R1 K9 ["Recents"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K10 [{[1] = "navigation", ["telemetrySubtype"] = "page", ["context"] = "see_all_templates", ["from"] = "Home", ["to"] = "Templates"}]
        3 NAMECALL                         R0 R0 K11 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K12 ["onPageSwap"]
        9 LOADK                            R1 K9 ["Templates"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

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
       57 GETUPVAL                         R12 10
       58 GETTABLEKS                       R12 R12 K3 ["getStartPageBridge"]
       60 CALL                             R12 0 1
       61 GETUPVAL                         R14 11
       62 NAMECALL                         R14 R14 K4 ["isTutorialBannerClosed"]
       64 CALL                             R14 1 1
       65 NOT                              R13 R14
       66 GETUPVAL                         R14 12
       67 CALL                             R14 0 1
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
       79 GETUPVAL                         R21 13
       80 JUMPIFNOT                        R21 ; [+9]
       81 GETUPVAL                         R21 14
       82 JUMPIFNOT                        R21 ; [+7]
       83 GETUPVAL                         R21 15
       84 NEWTABLE                         R22 0 0
       86 CALL                             R21 1 3
       87 MOVE                             R18 R21
       88 MOVE                             R19 R22
       89 MOVE                             R20 R23
       90 GETUPVAL                         R21 16
       91 NEWCLOSURE                       R22 P3
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U17
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 CALL                             R21 1 1
      100 GETUPVAL                         R22 18
      101 CALL                             R22 0 1
      102 GETUPVAL                         R23 19
      103 CALL                             R23 0 1
      104 LOADNIL                          R24
      105 LOADNIL                          R25
      106 LOADNIL                          R26
      107 LOADNIL                          R27
      108 LOADNIL                          R28
      109 LOADNIL                          R29
      110 LOADNIL                          R30
      111 GETUPVAL                         R31 14
      112 JUMPIFNOT                        R31 ; [+16]
      113 GETUPVAL                         R31 13
      114 JUMPIFNOT                        R31 ; [+14]
      115 GETUPVAL                         R32 20
      116 CALL                             R32 0 -1
      117 FASTCALL                         TABLE_UNPACK ; [+2]
      118 GETIMPORT                        R31 K7 [table.unpack]
      120 CALL                             R31 -1 7
      121 MOVE                             R24 R31
      122 MOVE                             R25 R32
      123 MOVE                             R26 R33
      124 MOVE                             R27 R34
      125 MOVE                             R28 R35
      126 MOVE                             R29 R36
      127 MOVE                             R30 R37
      128 JUMP                             ; [+12]
      129 GETUPVAL                         R31 13
      130 JUMPIFNOT                        R31 ; [+10]
      131 GETUPVAL                         R32 20
      132 CALL                             R32 0 -1
      133 FASTCALL                         TABLE_UNPACK ; [+2]
      134 GETIMPORT                        R31 K7 [table.unpack]
      136 CALL                             R31 -1 4
      137 MOVE                             R24 R31
      138 MOVE                             R27 R32
      139 MOVE                             R28 R33
      140 MOVE                             R30 R34
      141 NEWCLOSURE                       R31 P4
      142 CAPTURE                          VAL R10
      143 CAPTURE                          UPVAL U21
      144 CAPTURE                          UPVAL U6
      145 CAPTURE                          UPVAL U22
      146 GETUPVAL                         R32 16
      147 NEWCLOSURE                       R33 P5
      148 CAPTURE                          UPVAL U23
      149 CAPTURE                          VAL R11
      150 CAPTURE                          UPVAL U24
      151 CAPTURE                          UPVAL U25
      152 CAPTURE                          UPVAL U26
      153 NEWTABLE                         R34 0 1
      155 NAMECALL                         R35 R11 K8 ["getLocale"]
      157 CALL                             R35 1 -1
      158 SETLIST                          R34 R35 -1 [1]
      160 CALL                             R32 2 1
      161 GETUPVAL                         R34 27
      162 JUMPIFNOT                        R34 ; [+2]
      163 LOADN                            R33 280
      164 JUMP                             ; [+1]
      165 LOADN                            R33 270
      166 GETUPVAL                         R35 27
      167 JUMPIFNOT                        R35 ; [+2]
      168 LOADN                            R34 276
      169 JUMP                             ; [+1]
      170 LOADN                            R34 266
      171 GETUPVAL                         R35 28
      172 GETTABLEKS                       R35 R35 K9 ["createElement"]
      174 GETUPVAL                         R36 29
      175 NEWTABLE                         R37 4 0
      177 GETIMPORT                        R38 K13 [Enum.AutomaticSize.Y]
      179 SETTABLEKS                       R38 R37 K14 ["AutomaticCanvasSize"]
      181 GETIMPORT                        R38 K17 [UDim2.new]
      183 LOADN                            R39 1
      184 LOADN                            R40 0
      185 LOADN                            R41 0
      186 LOADN                            R42 0
      187 CALL                             R38 4 1
      188 SETTABLEKS                       R38 R37 K18 ["CanvasSize"]
      190 LOADN                            R38 0
      191 SETTABLEKS                       R38 R37 K19 ["ScrollBarThickness"]
      193 GETUPVAL                         R38 28
      194 GETTABLEKS                       R38 R38 K20 ["Tag"]
      196 SETTABLE                         R5 R37 R38
      197 DUPTABLE                         R38 K26 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "AgeReverificationBanner", "UnratedExperiencesBanner", "Content"}]
      198 GETUPVAL                         R40 13
      199 JUMPIFNOT                        R40 ; [+81]
      200 JUMPIFNOT                        R24 ; [+80]
      201 GETTABLEKS                       R40 R0 K27 ["hideBanner"]
      203 JUMPIF                           R40 ; [+77]
      204 GETUPVAL                         R39 28
      205 GETTABLEKS                       R39 R39 K9 ["createElement"]
      207 GETUPVAL                         R40 30
      208 DUPTABLE                         R41 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      209 GETUPVAL                         R42 31
      210 GETTABLEKS                       R42 R42 K35 ["Emphasis"]
      212 SETTABLEKS                       R42 R41 K28 ["variant"]
      214 GETUPVAL                         R42 32
      215 GETTABLEKS                       R42 R42 K36 ["Info"]
      217 SETTABLEKS                       R42 R41 K29 ["severity"]
      219 LOADK                            R44 K37 ["Plugin"]
      220 LOADK                            R45 K38 ["VerifyAgeBanner.Title"]
      221 NAMECALL                         R42 R11 K39 ["getText"]
      223 CALL                             R42 3 1
      224 SETTABLEKS                       R42 R41 K30 ["title"]
      226 LOADK                            R44 K37 ["Plugin"]
      227 LOADK                            R45 K40 ["VerifyAgeBanner.Body"]
      228 NAMECALL                         R42 R11 K39 ["getText"]
      230 CALL                             R42 3 1
      231 SETTABLEKS                       R42 R41 K31 ["description"]
      233 NEWTABLE                         R42 0 2
      235 DUPTABLE                         R43 K43 [{"text", "variant", "onActivated"}]
      236 LOADK                            R46 K37 ["Plugin"]
      237 LOADK                            R47 K44 ["VerifyAgeBanner.SecondaryAction"]
      238 NAMECALL                         R44 R11 K39 ["getText"]
      240 CALL                             R44 3 1
      241 SETTABLEKS                       R44 R43 K41 ["text"]
      243 GETUPVAL                         R44 33
      244 GETTABLEKS                       R44 R44 K45 ["Utility"]
      246 SETTABLEKS                       R44 R43 K28 ["variant"]
      248 NEWCLOSURE                       R44 P6
      249 CAPTURE                          UPVAL U11
      250 CAPTURE                          UPVAL U34
      251 CAPTURE                          VAL R31
      252 SETTABLEKS                       R44 R43 K42 ["onActivated"]
      254 DUPTABLE                         R44 K43 [{"text", "variant", "onActivated"}]
      255 LOADK                            R47 K37 ["Plugin"]
      256 LOADK                            R48 K46 ["VerifyAgeBanner.PrimaryAction"]
      257 NAMECALL                         R45 R11 K39 ["getText"]
      259 CALL                             R45 3 1
      260 SETTABLEKS                       R45 R44 K41 ["text"]
      262 GETUPVAL                         R45 33
      263 GETTABLEKS                       R45 R45 K47 ["Standard"]
      265 SETTABLEKS                       R45 R44 K28 ["variant"]
      267 NEWCLOSURE                       R45 P7
      268 CAPTURE                          UPVAL U11
      269 CAPTURE                          UPVAL U35
      270 CAPTURE                          VAL R31
      271 SETTABLEKS                       R45 R44 K42 ["onActivated"]
      273 SETLIST                          R42 R43 2 [1]
      275 SETTABLEKS                       R42 R41 K32 ["actions"]
      277 SETTABLEKS                       R28 R41 K33 ["onClose"]
      279 CALL                             R39 2 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R39
      282 SETTABLEKS                       R39 R38 K21 ["VerifyAgeAlertBanner"]
      284 GETUPVAL                         R40 14
      285 JUMPIFNOT                        R40 ; [+78]
      286 JUMPIFNOT                        R25 ; [+77]
      287 JUMPIF                           R24 ; [+76]
      288 GETTABLEKS                       R40 R0 K27 ["hideBanner"]
      290 JUMPIF                           R40 ; [+73]
      291 GETUPVAL                         R39 28
      292 GETTABLEKS                       R39 R39 K9 ["createElement"]
      294 GETUPVAL                         R40 30
      295 DUPTABLE                         R41 K48 [{"variant", "severity", "title", "actions", "onClose"}]
      296 GETUPVAL                         R42 31
      297 GETTABLEKS                       R42 R42 K47 ["Standard"]
      299 SETTABLEKS                       R42 R41 K28 ["variant"]
      301 GETUPVAL                         R42 32
      302 GETTABLEKS                       R42 R42 K49 ["Warning"]
      304 SETTABLEKS                       R42 R41 K29 ["severity"]
      306 LOADK                            R44 K22 ["EstablishTrustBanner"]
      307 LOADK                            R45 K50 ["Title"]
      308 NAMECALL                         R42 R11 K39 ["getText"]
      310 CALL                             R42 3 1
      311 SETTABLEKS                       R42 R41 K30 ["title"]
      313 NEWTABLE                         R42 0 2
      315 DUPTABLE                         R43 K43 [{"text", "variant", "onActivated"}]
      316 LOADK                            R46 K37 ["Plugin"]
      317 LOADK                            R47 K44 ["VerifyAgeBanner.SecondaryAction"]
      318 NAMECALL                         R44 R11 K39 ["getText"]
      320 CALL                             R44 3 1
      321 SETTABLEKS                       R44 R43 K41 ["text"]
      323 GETUPVAL                         R44 33
      324 GETTABLEKS                       R44 R44 K45 ["Utility"]
      326 SETTABLEKS                       R44 R43 K28 ["variant"]
      328 NEWCLOSURE                       R44 P8
      329 CAPTURE                          UPVAL U11
      330 CAPTURE                          UPVAL U36
      331 CAPTURE                          VAL R31
      332 SETTABLEKS                       R44 R43 K42 ["onActivated"]
      334 DUPTABLE                         R44 K43 [{"text", "variant", "onActivated"}]
      335 LOADK                            R47 K37 ["Plugin"]
      336 LOADK                            R48 K46 ["VerifyAgeBanner.PrimaryAction"]
      337 NAMECALL                         R45 R11 K39 ["getText"]
      339 CALL                             R45 3 1
      340 SETTABLEKS                       R45 R44 K41 ["text"]
      342 GETUPVAL                         R45 33
      343 GETTABLEKS                       R45 R45 K47 ["Standard"]
      345 SETTABLEKS                       R45 R44 K28 ["variant"]
      347 NEWCLOSURE                       R45 P9
      348 CAPTURE                          REF R26
      349 CAPTURE                          UPVAL U37
      350 CAPTURE                          REF R18
      351 CAPTURE                          UPVAL U11
      352 CAPTURE                          UPVAL U38
      353 CAPTURE                          VAL R31
      354 SETTABLEKS                       R45 R44 K42 ["onActivated"]
      356 SETLIST                          R42 R43 2 [1]
      358 SETTABLEKS                       R42 R41 K32 ["actions"]
      360 SETTABLEKS                       R29 R41 K33 ["onClose"]
      362 CALL                             R39 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R39
      365 SETTABLEKS                       R39 R38 K22 ["EstablishTrustBanner"]
      367 GETUPVAL                         R40 39
      368 JUMPIFNOT                        R40 ; [+78]
      369 JUMPIFNOT                        R27 ; [+77]
      370 JUMPIF                           R24 ; [+76]
      371 GETUPVAL                         R40 14
      372 JUMPIFNOT                        R40 ; [+1]
      373 JUMPIF                           R25 ; [+73]
      374 GETTABLEKS                       R40 R0 K27 ["hideBanner"]
      376 JUMPIF                           R40 ; [+70]
      377 GETUPVAL                         R39 28
      378 GETTABLEKS                       R39 R39 K9 ["createElement"]
      380 GETUPVAL                         R40 30
      381 DUPTABLE                         R41 K48 [{"variant", "severity", "title", "actions", "onClose"}]
      382 GETUPVAL                         R42 31
      383 GETTABLEKS                       R42 R42 K47 ["Standard"]
      385 SETTABLEKS                       R42 R41 K28 ["variant"]
      387 GETUPVAL                         R42 32
      388 GETTABLEKS                       R42 R42 K36 ["Info"]
      390 SETTABLEKS                       R42 R41 K29 ["severity"]
      392 LOADK                            R44 K23 ["AgeReverificationBanner"]
      393 LOADK                            R45 K50 ["Title"]
      394 NAMECALL                         R42 R11 K39 ["getText"]
      396 CALL                             R42 3 1
      397 SETTABLEKS                       R42 R41 K30 ["title"]
      399 NEWTABLE                         R42 0 2
      401 DUPTABLE                         R43 K43 [{"text", "variant", "onActivated"}]
      402 LOADK                            R46 K37 ["Plugin"]
      403 LOADK                            R47 K44 ["VerifyAgeBanner.SecondaryAction"]
      404 NAMECALL                         R44 R11 K39 ["getText"]
      406 CALL                             R44 3 1
      407 SETTABLEKS                       R44 R43 K41 ["text"]
      409 GETUPVAL                         R44 33
      410 GETTABLEKS                       R44 R44 K45 ["Utility"]
      412 SETTABLEKS                       R44 R43 K28 ["variant"]
      414 NEWCLOSURE                       R44 P10
      415 CAPTURE                          UPVAL U11
      416 CAPTURE                          UPVAL U40
      417 CAPTURE                          VAL R31
      418 SETTABLEKS                       R44 R43 K42 ["onActivated"]
      420 DUPTABLE                         R44 K43 [{"text", "variant", "onActivated"}]
      421 LOADK                            R47 K23 ["AgeReverificationBanner"]
      422 LOADK                            R48 K51 ["PrimaryAction"]
      423 NAMECALL                         R45 R11 K39 ["getText"]
      425 CALL                             R45 3 1
      426 SETTABLEKS                       R45 R44 K41 ["text"]
      428 GETUPVAL                         R45 33
      429 GETTABLEKS                       R45 R45 K47 ["Standard"]
      431 SETTABLEKS                       R45 R44 K28 ["variant"]
      433 NEWCLOSURE                       R45 P11
      434 CAPTURE                          UPVAL U11
      435 CAPTURE                          UPVAL U41
      436 CAPTURE                          VAL R31
      437 SETTABLEKS                       R45 R44 K42 ["onActivated"]
      439 SETLIST                          R42 R43 2 [1]
      441 SETTABLEKS                       R42 R41 K32 ["actions"]
      443 SETTABLEKS                       R30 R41 K33 ["onClose"]
      445 CALL                             R39 2 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R39
      448 SETTABLEKS                       R39 R38 K23 ["AgeReverificationBanner"]
      450 GETUPVAL                         R40 5
      451 JUMPIFNOT                        R40 ; [+93]
      452 JUMPIFNOT                        R6 ; [+92]
      453 JUMPIF                           R8 ; [+91]
      454 GETTABLEKS                       R40 R0 K27 ["hideBanner"]
      456 JUMPIF                           R40 ; [+88]
      457 GETUPVAL                         R39 28
      458 GETTABLEKS                       R39 R39 K9 ["createElement"]
      460 GETUPVAL                         R40 42
      461 DUPTABLE                         R41 K55 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      462 MOVE                             R42 R22
      463 CALL                             R42 0 1
      464 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      466 GETUPVAL                         R42 28
      467 GETTABLEKS                       R42 R42 K9 ["createElement"]
      469 GETUPVAL                         R43 30
      470 DUPTABLE                         R44 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      471 GETUPVAL                         R45 31
      472 GETTABLEKS                       R45 R45 K35 ["Emphasis"]
      474 SETTABLEKS                       R45 R44 K28 ["variant"]
      476 GETUPVAL                         R45 32
      477 GETTABLEKS                       R45 R45 K56 ["Error"]
      479 SETTABLEKS                       R45 R44 K29 ["severity"]
      481 LOADK                            R47 K37 ["Plugin"]
      482 LOADK                            R48 K57 ["UnratedExperiencesBanner.Title"]
      483 NAMECALL                         R45 R11 K39 ["getText"]
      485 CALL                             R45 3 1
      486 SETTABLEKS                       R45 R44 K30 ["title"]
      488 LOADK                            R47 K37 ["Plugin"]
      489 LOADK                            R48 K58 ["UnratedExperiencesBanner.Description"]
      490 NAMECALL                         R45 R11 K39 ["getText"]
      492 CALL                             R45 3 1
      493 SETTABLEKS                       R45 R44 K31 ["description"]
      495 NEWTABLE                         R45 0 2
      497 DUPTABLE                         R46 K43 [{"text", "variant", "onActivated"}]
      498 LOADK                            R49 K37 ["Plugin"]
      499 LOADK                            R50 K59 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      500 NAMECALL                         R47 R11 K39 ["getText"]
      502 CALL                             R47 3 1
      503 SETTABLEKS                       R47 R46 K41 ["text"]
      505 GETUPVAL                         R47 33
      506 GETTABLEKS                       R47 R47 K45 ["Utility"]
      508 SETTABLEKS                       R47 R46 K28 ["variant"]
      510 DUPCLOSURE                       R47 K60 [PROTO_30]
      511 CAPTURE                          UPVAL U11
      512 CAPTURE                          UPVAL U43
      513 SETTABLEKS                       R47 R46 K42 ["onActivated"]
      515 DUPTABLE                         R47 K43 [{"text", "variant", "onActivated"}]
      516 LOADK                            R50 K37 ["Plugin"]
      517 LOADK                            R51 K61 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      518 NAMECALL                         R48 R11 K39 ["getText"]
      520 CALL                             R48 3 1
      521 SETTABLEKS                       R48 R47 K41 ["text"]
      523 GETUPVAL                         R48 33
      524 GETTABLEKS                       R48 R48 K47 ["Standard"]
      526 SETTABLEKS                       R48 R47 K28 ["variant"]
      528 DUPCLOSURE                       R48 K62 [PROTO_31]
      529 CAPTURE                          UPVAL U11
      530 CAPTURE                          UPVAL U44
      531 SETTABLEKS                       R48 R47 K42 ["onActivated"]
      533 SETLIST                          R45 R46 2 [1]
      535 SETTABLEKS                       R45 R44 K32 ["actions"]
      537 NEWCLOSURE                       R45 P14
      538 CAPTURE                          VAL R9
      539 CAPTURE                          VAL R1
      540 SETTABLEKS                       R45 R44 K33 ["onClose"]
      542 CALL                             R42 2 -1
      543 CALL                             R39 -1 1
      544 JUMP                             ; [+1]
      545 LOADNIL                          R39
      546 SETTABLEKS                       R39 R38 K24 ["UnratedExperiencesBanner"]
      548 GETUPVAL                         R39 28
      549 GETTABLEKS                       R39 R39 K9 ["createElement"]
      551 GETUPVAL                         R40 42
      552 DUPTABLE                         R41 K64 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      553 MOVE                             R42 R22
      554 CALL                             R42 0 1
      555 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      557 DUPTABLE                         R42 K71 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      558 GETUPVAL                         R43 28
      559 GETTABLEKS                       R43 R43 K9 ["createElement"]
      561 GETUPVAL                         R44 45
      562 DUPTABLE                         R45 K72 [{"title", "LayoutOrder"}]
      563 JUMPIFNOT                        R23 ; [+9]
      564 LOADK                            R48 K37 ["Plugin"]
      565 LOADK                            R49 K73 ["HomePage.WelcomeWithUsername"]
      566 DUPTABLE                         R50 K75 [{"username"}]
      567 SETTABLEKS                       R23 R50 K74 ["username"]
      569 NAMECALL                         R46 R11 K39 ["getText"]
      571 CALL                             R46 4 1
      572 JUMP                             ; [+5]
      573 LOADK                            R48 K37 ["Plugin"]
      574 LOADK                            R49 K76 ["HomePage.Welcome"]
      575 NAMECALL                         R46 R11 K39 ["getText"]
      577 CALL                             R46 3 1
      578 SETTABLEKS                       R46 R45 K30 ["title"]
      580 MOVE                             R46 R22
      581 CALL                             R46 0 1
      582 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      584 CALL                             R43 2 1
      585 SETTABLEKS                       R43 R42 K65 ["Header"]
      587 GETUPVAL                         R44 46
      588 JUMPIFNOT                        R44 ; [+18]
      589 GETUPVAL                         R43 28
      590 GETTABLEKS                       R43 R43 K9 ["createElement"]
      592 GETUPVAL                         R44 42
      593 DUPTABLE                         R45 K78 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      594 MOVE                             R46 R22
      595 CALL                             R46 0 1
      596 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      598 GETUPVAL                         R46 28
      599 GETTABLEKS                       R46 R46 K9 ["createElement"]
      601 GETUPVAL                         R47 47
      602 NEWTABLE                         R48 0 0
      604 CALL                             R46 2 -1
      605 CALL                             R43 -1 1
      606 JUMP                             ; [+24]
      607 JUMPIFNOT                        R14 ; [+22]
      608 GETUPVAL                         R43 28
      609 GETTABLEKS                       R43 R43 K9 ["createElement"]
      611 GETUPVAL                         R44 42
      612 DUPTABLE                         R45 K78 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      613 MOVE                             R46 R22
      614 CALL                             R46 0 1
      615 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      617 GETUPVAL                         R46 28
      618 GETTABLEKS                       R46 R46 K9 ["createElement"]
      620 GETUPVAL                         R47 48
      621 DUPTABLE                         R48 K79 [{"onClose"}]
      622 NEWCLOSURE                       R49 P15
      623 CAPTURE                          VAL R15
      624 CAPTURE                          UPVAL U11
      625 SETTABLEKS                       R49 R48 K33 ["onClose"]
      627 CALL                             R46 2 -1
      628 CALL                             R43 -1 1
      629 JUMP                             ; [+1]
      630 LOADNIL                          R43
      631 SETTABLEKS                       R43 R42 K66 ["TutorialBanner"]
      633 GETTABLEKS                       R44 R0 K80 ["hideRecents"]
      635 JUMPIF                           R44 ; [+119]
      636 JUMPIFNOT                        R16 ; [+118]
      637 GETUPVAL                         R43 28
      638 GETTABLEKS                       R43 R43 K9 ["createElement"]
      640 GETUPVAL                         R44 49
      641 DUPTABLE                         R45 K84 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      642 MOVE                             R46 R22
      643 CALL                             R46 0 1
      644 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      646 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      647 GETUPVAL                         R47 28
      648 GETTABLEKS                       R47 R47 K9 ["createElement"]
      650 GETUPVAL                         R48 50
      651 DUPTABLE                         R49 K88 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      652 LOADK                            R52 K37 ["Plugin"]
      653 LOADK                            R53 K89 ["HomePage.MyRecentExperiences"]
      654 NAMECALL                         R50 R11 K39 ["getText"]
      656 CALL                             R50 3 1
      657 SETTABLEKS                       R50 R49 K30 ["title"]
      659 LOADK                            R52 K37 ["Plugin"]
      660 LOADK                            R53 K90 ["SeeAll"]
      661 NAMECALL                         R50 R11 K39 ["getText"]
      663 CALL                             R50 3 1
      664 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      666 NEWCLOSURE                       R50 P16
      667 CAPTURE                          VAL R10
      668 CAPTURE                          UPVAL U17
      669 CAPTURE                          VAL R0
      670 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      672 MOVE                             R50 R22
      673 CALL                             R50 0 1
      674 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      676 CALL                             R47 2 1
      677 SETTABLEKS                       R47 R46 K65 ["Header"]
      679 GETUPVAL                         R47 28
      680 GETTABLEKS                       R47 R47 K9 ["createElement"]
      682 GETUPVAL                         R48 51
      683 GETTABLEKS                       R48 R48 K91 ["Provider"]
      685 DUPTABLE                         R49 K93 [{"value"}]
      686 GETUPVAL                         R50 52
      687 SETTABLEKS                       R50 R49 K92 ["value"]
      689 GETUPVAL                         R50 28
      690 GETTABLEKS                       R50 R50 K9 ["createElement"]
      692 GETUPVAL                         R51 53
      693 DUPTABLE                         R52 K109 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      694 GETIMPORT                        R53 K17 [UDim2.new]
      696 LOADN                            R54 1
      697 LOADN                            R55 0
      698 LOADN                            R56 0
      699 LOADN                            R57 355
      700 CALL                             R53 4 1
      701 SETTABLEKS                       R53 R52 K94 ["Size"]
      703 GETUPVAL                         R53 54
      704 SETTABLEKS                       R53 R52 K95 ["DisplayComponent"]
      706 SETTABLEKS                       R21 R52 K103 ["OnItemCountUpdated"]
      708 GETUPVAL                         R53 55
      709 SETTABLEKS                       R53 R52 K104 ["CellComponent"]
      711 GETIMPORT                        R53 K17 [UDim2.new]
      713 LOADN                            R54 0
      714 LOADN                            R55 224
      715 LOADN                            R56 0
      716 LOADN                            R57 348
      717 CALL                             R53 4 1
      718 SETTABLEKS                       R53 R52 K105 ["CellSize"]
      720 GETIMPORT                        R53 K17 [UDim2.new]
      722 LOADN                            R54 0
      723 LOADN                            R55 16
      724 LOADN                            R56 0
      725 LOADN                            R57 16
      726 CALL                             R53 4 1
      727 SETTABLEKS                       R53 R52 K106 ["CellPadding"]
      729 DUPTABLE                         R53 K123 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      730 GETUPVAL                         R55 6
      731 NAMECALL                         R55 R55 K124 ["GetUserId"]
      733 CALL                             R55 1 -1
      734 FASTCALL                         TOSTRING ; [+2]
      735 GETIMPORT                        R54 K126 [tostring]
      737 CALL                             R54 -1 1
      738 SETTABLEKS                       R54 R53 K116 ["creatorTargetId"]
      740 SETTABLEKS                       R53 R52 K107 ["Query"]
      742 GETUPVAL                         R53 56
      743 SETTABLEKS                       R53 R52 K108 ["FetchItems"]
      745 MOVE                             R53 R22
      746 CALL                             R53 0 1
      747 SETTABLEKS                       R53 R52 K54 ["LayoutOrder"]
      749 CALL                             R50 2 -1
      750 CALL                             R47 -1 1
      751 SETTABLEKS                       R47 R46 K25 ["Content"]
      753 CALL                             R43 3 1
      754 JUMP                             ; [+1]
      755 LOADNIL                          R43
      756 SETTABLEKS                       R43 R42 K67 ["RecentExperiences"]
      758 GETUPVAL                         R43 28
      759 GETTABLEKS                       R43 R43 K9 ["createElement"]
      761 GETUPVAL                         R44 42
      762 DUPTABLE                         R45 K128 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      763 MOVE                             R46 R22
      764 CALL                             R46 0 1
      765 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      767 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      768 GETUPVAL                         R47 28
      769 GETTABLEKS                       R47 R47 K9 ["createElement"]
      771 GETUPVAL                         R48 50
      772 DUPTABLE                         R49 K129 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      773 LOADK                            R52 K37 ["Plugin"]
      774 LOADK                            R53 K130 ["HomePage.Templates.Heading"]
      775 NAMECALL                         R50 R11 K39 ["getText"]
      777 CALL                             R50 3 1
      778 SETTABLEKS                       R50 R49 K30 ["title"]
      780 LOADK                            R52 K37 ["Plugin"]
      781 LOADK                            R53 K131 ["HomePage.Templates.Description"]
      782 NAMECALL                         R50 R11 K39 ["getText"]
      784 CALL                             R50 3 1
      785 SETTABLEKS                       R50 R49 K31 ["description"]
      787 LOADK                            R52 K37 ["Plugin"]
      788 LOADK                            R53 K90 ["SeeAll"]
      789 NAMECALL                         R50 R11 K39 ["getText"]
      791 CALL                             R50 3 1
      792 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      794 NEWCLOSURE                       R50 P17
      795 CAPTURE                          VAL R10
      796 CAPTURE                          UPVAL U17
      797 CAPTURE                          VAL R0
      798 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      800 MOVE                             R50 R22
      801 CALL                             R50 0 1
      802 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      804 CALL                             R47 2 1
      805 SETTABLEKS                       R47 R46 K65 ["Header"]
      807 GETUPVAL                         R47 28
      808 GETTABLEKS                       R47 R47 K9 ["createElement"]
      810 GETUPVAL                         R48 53
      811 DUPTABLE                         R49 K132 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      812 GETIMPORT                        R50 K17 [UDim2.new]
      814 LOADN                            R51 1
      815 LOADN                            R52 0
      816 LOADN                            R53 0
      817 LOADN                            R54 264
      818 CALL                             R50 4 1
      819 SETTABLEKS                       R50 R49 K94 ["Size"]
      821 GETUPVAL                         R50 54
      822 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      824 GETUPVAL                         R50 57
      825 SETTABLEKS                       R50 R49 K104 ["CellComponent"]
      827 GETIMPORT                        R50 K17 [UDim2.new]
      829 LOADN                            R51 0
      830 LOADN                            R52 225
      831 LOADN                            R53 0
      832 LOADN                            R54 252
      833 CALL                             R50 4 1
      834 SETTABLEKS                       R50 R49 K105 ["CellSize"]
      836 GETIMPORT                        R50 K17 [UDim2.new]
      838 LOADN                            R51 0
      839 LOADN                            R52 16
      840 LOADN                            R53 0
      841 LOADN                            R54 16
      842 CALL                             R50 4 1
      843 SETTABLEKS                       R50 R49 K106 ["CellPadding"]
      845 GETUPVAL                         R50 58
      846 SETTABLEKS                       R50 R49 K107 ["Query"]
      848 GETUPVAL                         R50 59
      849 SETTABLEKS                       R50 R49 K108 ["FetchItems"]
      851 MOVE                             R50 R22
      852 CALL                             R50 0 1
      853 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      855 CALL                             R47 2 1
      856 SETTABLEKS                       R47 R46 K25 ["Content"]
      858 CALL                             R43 3 1
      859 SETTABLEKS                       R43 R42 K68 ["Templates"]
      861 GETUPVAL                         R43 28
      862 GETTABLEKS                       R43 R43 K9 ["createElement"]
      864 GETUPVAL                         R44 42
      865 DUPTABLE                         R45 K128 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      866 MOVE                             R46 R22
      867 CALL                             R46 0 1
      868 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      870 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      871 GETUPVAL                         R47 28
      872 GETTABLEKS                       R47 R47 K9 ["createElement"]
      874 GETUPVAL                         R48 50
      875 DUPTABLE                         R49 K133 [{"title", "description", "LayoutOrder"}]
      876 LOADK                            R52 K37 ["Plugin"]
      877 LOADK                            R53 K134 ["HomePage.DiscoverStudio.Heading"]
      878 NAMECALL                         R50 R11 K39 ["getText"]
      880 CALL                             R50 3 1
      881 SETTABLEKS                       R50 R49 K30 ["title"]
      883 LOADK                            R52 K37 ["Plugin"]
      884 LOADK                            R53 K135 ["HomePage.DiscoverStudio.Description"]
      885 NAMECALL                         R50 R11 K39 ["getText"]
      887 CALL                             R50 3 1
      888 SETTABLEKS                       R50 R49 K31 ["description"]
      890 MOVE                             R50 R22
      891 CALL                             R50 0 1
      892 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      894 CALL                             R47 2 1
      895 SETTABLEKS                       R47 R46 K65 ["Header"]
      897 GETUPVAL                         R47 28
      898 GETTABLEKS                       R47 R47 K9 ["createElement"]
      900 GETUPVAL                         R48 53
      901 DUPTABLE                         R49 K136 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      902 GETIMPORT                        R50 K17 [UDim2.new]
      904 LOADN                            R51 1
      905 LOADN                            R52 0
      906 LOADN                            R53 0
      907 MOVE                             R54 R33
      908 CALL                             R50 4 1
      909 SETTABLEKS                       R50 R49 K94 ["Size"]
      911 GETUPVAL                         R50 54
      912 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      914 GETUPVAL                         R50 60
      915 SETTABLEKS                       R50 R49 K104 ["CellComponent"]
      917 GETIMPORT                        R50 K17 [UDim2.new]
      919 LOADN                            R51 0
      920 LOADN                            R52 225
      921 LOADN                            R53 0
      922 MOVE                             R54 R34
      923 CALL                             R50 4 1
      924 SETTABLEKS                       R50 R49 K105 ["CellSize"]
      926 GETIMPORT                        R50 K17 [UDim2.new]
      928 LOADN                            R51 0
      929 LOADN                            R52 16
      930 LOADN                            R53 0
      931 LOADN                            R54 16
      932 CALL                             R50 4 1
      933 SETTABLEKS                       R50 R49 K106 ["CellPadding"]
      935 GETUPVAL                         R50 61
      936 SETTABLEKS                       R50 R49 K107 ["Query"]
      938 SETTABLEKS                       R32 R49 K108 ["FetchItems"]
      940 MOVE                             R50 R22
      941 CALL                             R50 0 1
      942 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      944 CALL                             R47 2 1
      945 SETTABLEKS                       R47 R46 K25 ["Content"]
      947 CALL                             R43 3 1
      948 SETTABLEKS                       R43 R42 K69 ["Momentum"]
      950 GETUPVAL                         R43 28
      951 GETTABLEKS                       R43 R43 K9 ["createElement"]
      953 GETUPVAL                         R44 49
      954 DUPTABLE                         R45 K137 [{"LayoutOrder", "Size"}]
      955 MOVE                             R46 R22
      956 CALL                             R46 0 1
      957 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      959 GETIMPORT                        R46 K17 [UDim2.new]
      961 LOADN                            R47 1
      962 LOADN                            R48 0
      963 LOADN                            R49 0
      964 LOADN                            R50 40
      965 CALL                             R46 4 1
      966 SETTABLEKS                       R46 R45 K94 ["Size"]
      968 CALL                             R43 2 1
      969 SETTABLEKS                       R43 R42 K70 ["Spacer"]
      971 CALL                             R39 3 1
      972 SETTABLEKS                       R39 R38 K25 ["Content"]
      974 CALL                             R35 3 -1
      975 CLOSEUPVALS                      R18
      976 RETURN                           R35 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useRef"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETTABLEKS                       R5 R1 K11 ["useContext"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R7 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R7 K12 ["Framework"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R1 K13 ["useCallback"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R9 R0 K6 ["Packages"]
       35 GETTABLEKS                       R9 R9 K14 ["Dash"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R8 K15 ["join"]
       40 GETTABLEKS                       R10 R6 K16 ["Util"]
       42 GETTABLEKS                       R10 R10 K17 ["counter"]
       44 GETTABLEKS                       R11 R6 K18 ["ContextServices"]
       46 GETTABLEKS                       R11 R11 K19 ["Localization"]
       48 GETTABLEKS                       R12 R6 K18 ["ContextServices"]
       50 GETTABLEKS                       R12 R12 K20 ["Plugin"]
       52 GETTABLEKS                       R13 R6 K21 ["UI"]
       54 GETTABLEKS                       R14 R13 K22 ["ScrollingFrame"]
       56 GETIMPORT                        R15 K5 [require]
       58 GETTABLEKS                       R16 R0 K23 ["Src"]
       60 GETTABLEKS                       R16 R16 K24 ["Foundation"]
       62 GETTABLEKS                       R16 R16 K25 ["Components"]
       64 GETTABLEKS                       R16 R16 K26 ["HomeSectionHeader"]
       66 CALL                             R15 1 1
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R0 K23 ["Src"]
       71 GETTABLEKS                       R17 R17 K24 ["Foundation"]
       73 GETTABLEKS                       R17 R17 K25 ["Components"]
       75 GETTABLEKS                       R17 R17 K27 ["PageHeader"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K5 [require]
       80 GETTABLEKS                       R18 R0 K23 ["Src"]
       82 GETTABLEKS                       R18 R18 K25 ["Components"]
       84 GETTABLEKS                       R18 R18 K28 ["InfoTile"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R0 K23 ["Src"]
       91 GETTABLEKS                       R19 R19 K25 ["Components"]
       93 GETTABLEKS                       R19 R19 K29 ["NetworkView"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R0 K23 ["Src"]
      100 GETTABLEKS                       R20 R20 K25 ["Components"]
      102 GETTABLEKS                       R20 R20 K30 ["ScrollingCarousel"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R0 K23 ["Src"]
      109 GETTABLEKS                       R21 R21 K24 ["Foundation"]
      111 GETTABLEKS                       R21 R21 K25 ["Components"]
      113 GETTABLEKS                       R21 R21 K31 ["Tour3TutorialTile"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R22 R0 K23 ["Src"]
      120 GETTABLEKS                       R22 R22 K24 ["Foundation"]
      122 GETTABLEKS                       R22 R22 K25 ["Components"]
      124 GETTABLEKS                       R22 R22 K32 ["PublishEligibilityBanner"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K5 [require]
      129 GETTABLEKS                       R23 R0 K23 ["Src"]
      131 GETTABLEKS                       R23 R23 K24 ["Foundation"]
      133 GETTABLEKS                       R23 R23 K25 ["Components"]
      135 GETTABLEKS                       R23 R23 K33 ["Frame"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K5 [require]
      140 GETTABLEKS                       R24 R0 K23 ["Src"]
      142 GETTABLEKS                       R24 R24 K34 ["Network"]
      144 GETTABLEKS                       R24 R24 K35 ["DiscoverExperiences"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K5 [require]
      149 GETTABLEKS                       R25 R0 K23 ["Src"]
      151 GETTABLEKS                       R25 R25 K34 ["Network"]
      153 GETTABLEKS                       R25 R25 K36 ["DiscoverRecents"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K5 [require]
      158 GETTABLEKS                       R26 R0 K23 ["Src"]
      160 GETTABLEKS                       R26 R26 K34 ["Network"]
      162 GETTABLEKS                       R26 R26 K37 ["DiscoverKnowledgeFeeds"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K5 [require]
      167 GETTABLEKS                       R27 R0 K23 ["Src"]
      169 GETTABLEKS                       R27 R27 K34 ["Network"]
      171 GETTABLEKS                       R27 R27 K38 ["DiscoverMomentum"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K5 [require]
      176 GETTABLEKS                       R28 R0 K23 ["Src"]
      178 GETTABLEKS                       R28 R28 K34 ["Network"]
      180 GETTABLEKS                       R28 R28 K39 ["DiscoverCreatorEligibilityAndOpenPlace"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K5 [require]
      185 GETTABLEKS                       R29 R0 K23 ["Src"]
      187 GETTABLEKS                       R29 R29 K34 ["Network"]
      189 GETTABLEKS                       R29 R29 K40 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R30 R0 K23 ["Src"]
      196 GETTABLEKS                       R30 R30 K34 ["Network"]
      198 GETTABLEKS                       R30 R30 K41 ["DiscoverHomepageBannerExperienceUnrated"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K5 [require]
      203 GETTABLEKS                       R31 R0 K23 ["Src"]
      205 GETTABLEKS                       R31 R31 K42 ["Resources"]
      207 GETTABLEKS                       R31 R31 K43 ["PlaceholderMomentumContent"]
      209 CALL                             R30 1 1
      210 GETIMPORT                        R31 K5 [require]
      212 GETTABLEKS                       R32 R0 K23 ["Src"]
      214 GETTABLEKS                       R32 R32 K44 ["SharedFlags"]
      216 GETTABLEKS                       R32 R32 K45 ["getFFlagEnableKnowledgeTutorials2"]
      218 CALL                             R31 1 1
      219 CALL                             R31 0 1
      220 GETIMPORT                        R32 K5 [require]
      222 GETTABLEKS                       R33 R0 K23 ["Src"]
      224 GETTABLEKS                       R33 R33 K44 ["SharedFlags"]
      226 GETTABLEKS                       R33 R33 K46 ["getFFlagEnableKnowledgeFeeds"]
      228 CALL                             R32 1 1
      229 CALL                             R32 0 1
      230 GETIMPORT                        R33 K5 [require]
      232 GETTABLEKS                       R34 R0 K23 ["Src"]
      234 GETTABLEKS                       R34 R34 K44 ["SharedFlags"]
      236 GETTABLEKS                       R34 R34 K47 ["getFFlagLuaStartPageTutorialInfoTile"]
      238 CALL                             R33 1 1
      239 CALL                             R33 0 1
      240 GETIMPORT                        R34 K5 [require]
      242 GETTABLEKS                       R35 R0 K23 ["Src"]
      244 GETTABLEKS                       R35 R35 K44 ["SharedFlags"]
      246 GETTABLEKS                       R35 R35 K48 ["getFFlagLuaStartPageVerifyAgeBanner"]
      248 CALL                             R34 1 1
      249 GETIMPORT                        R35 K5 [require]
      251 GETTABLEKS                       R36 R0 K23 ["Src"]
      253 GETTABLEKS                       R36 R36 K44 ["SharedFlags"]
      255 GETTABLEKS                       R36 R36 K49 ["getFFlagStartPageEstablishTrustBanner"]
      257 CALL                             R35 1 1
      258 CALL                             R35 0 1
      259 GETIMPORT                        R36 K5 [require]
      261 GETTABLEKS                       R37 R0 K23 ["Src"]
      263 GETTABLEKS                       R37 R37 K44 ["SharedFlags"]
      265 GETTABLEKS                       R37 R37 K50 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      267 CALL                             R36 1 1
      268 CALL                             R36 0 1
      269 GETIMPORT                        R37 K5 [require]
      271 GETTABLEKS                       R38 R0 K23 ["Src"]
      273 GETTABLEKS                       R38 R38 K44 ["SharedFlags"]
      275 GETTABLEKS                       R38 R38 K51 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      277 CALL                             R37 1 1
      278 CALL                             R37 0 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K23 ["Src"]
      283 GETTABLEKS                       R39 R39 K44 ["SharedFlags"]
      285 GETTABLEKS                       R39 R39 K52 ["getFFlagStartPageFAEReverification"]
      287 CALL                             R38 1 1
      288 CALL                             R38 0 1
      289 GETIMPORT                        R39 K5 [require]
      291 GETTABLEKS                       R40 R0 K23 ["Src"]
      293 GETTABLEKS                       R40 R40 K44 ["SharedFlags"]
      295 GETTABLEKS                       R40 R40 K53 ["getFFlagStartPageTrustedConnectionShowUpsellDialog"]
      297 CALL                             R39 1 1
      298 CALL                             R39 0 1
      299 GETIMPORT                        R40 K5 [require]
      301 GETTABLEKS                       R41 R0 K23 ["Src"]
      303 GETTABLEKS                       R41 R41 K44 ["SharedFlags"]
      305 GETTABLEKS                       R41 R41 K54 ["getFFlagStartPageShowUnratedExperiencesBanner"]
      307 CALL                             R40 1 1
      308 CALL                             R40 0 1
      309 GETIMPORT                        R41 K5 [require]
      311 GETTABLEKS                       R42 R0 K23 ["Src"]
      313 GETTABLEKS                       R42 R42 K44 ["SharedFlags"]
      315 GETTABLEKS                       R42 R42 K55 ["getFFlagStartPageAllowDisableTeamCreate"]
      317 CALL                             R41 1 1
      318 CALL                             R41 0 1
      319 GETIMPORT                        R42 K5 [require]
      321 GETTABLEKS                       R43 R0 K23 ["Src"]
      323 GETTABLEKS                       R43 R43 K44 ["SharedFlags"]
      325 GETTABLEKS                       R43 R43 K56 ["getFFlagStartPageSaveAsCopy"]
      327 CALL                             R42 1 1
      328 CALL                             R42 0 1
      329 GETIMPORT                        R43 K5 [require]
      331 GETTABLEKS                       R44 R0 K23 ["Src"]
      333 GETTABLEKS                       R44 R44 K44 ["SharedFlags"]
      335 GETTABLEKS                       R44 R44 K57 ["getFFlagLuaStartPageViewPlacesDialog"]
      337 CALL                             R43 1 1
      338 CALL                             R43 0 1
      339 GETIMPORT                        R44 K5 [require]
      341 GETTABLEKS                       R45 R0 K23 ["Src"]
      343 GETTABLEKS                       R45 R45 K44 ["SharedFlags"]
      345 GETTABLEKS                       R45 R45 K58 ["getFStringAgeRestrictedLink"]
      347 CALL                             R44 1 1
      348 GETIMPORT                        R45 K5 [require]
      350 GETTABLEKS                       R46 R0 K23 ["Src"]
      352 GETTABLEKS                       R46 R46 K44 ["SharedFlags"]
      354 GETTABLEKS                       R46 R46 K59 ["getFStringUnratedExperiencesLink"]
      356 CALL                             R45 1 1
      357 GETIMPORT                        R46 K5 [require]
      359 GETTABLEKS                       R47 R0 K23 ["Src"]
      361 GETTABLEKS                       R47 R47 K44 ["SharedFlags"]
      363 GETTABLEKS                       R47 R47 K60 ["getFStringLuaStartPageVerifyAgeLink"]
      365 CALL                             R46 1 1
      366 GETIMPORT                        R47 K5 [require]
      368 GETTABLEKS                       R48 R0 K23 ["Src"]
      370 GETTABLEKS                       R48 R48 K44 ["SharedFlags"]
      372 GETTABLEKS                       R48 R48 K61 ["getFStringLuaStartPageCAEDevForumLink"]
      374 CALL                             R47 1 1
      375 GETIMPORT                        R48 K5 [require]
      377 GETTABLEKS                       R49 R0 K23 ["Src"]
      379 GETTABLEKS                       R49 R49 K44 ["SharedFlags"]
      381 GETTABLEKS                       R49 R49 K62 ["getFStringReVerifyAgeLink"]
      383 CALL                             R48 1 1
      384 GETIMPORT                        R49 K5 [require]
      386 GETTABLEKS                       R50 R0 K23 ["Src"]
      388 GETTABLEKS                       R50 R50 K44 ["SharedFlags"]
      390 GETTABLEKS                       R50 R50 K63 ["getFStringLuaStartPageFAEDevForumLink"]
      392 CALL                             R49 1 1
      393 GETIMPORT                        R50 K5 [require]
      395 GETTABLEKS                       R51 R0 K23 ["Src"]
      397 GETTABLEKS                       R51 R51 K44 ["SharedFlags"]
      399 GETTABLEKS                       R51 R51 K64 ["getFStringStartPageEstablishTrustDevForumLink"]
      401 CALL                             R50 1 1
      402 GETIMPORT                        R51 K5 [require]
      404 GETTABLEKS                       R52 R0 K23 ["Src"]
      406 GETTABLEKS                       R52 R52 K44 ["SharedFlags"]
      408 GETTABLEKS                       R52 R52 K65 ["getFStringStartPageImpactedExperiencesLink"]
      410 CALL                             R51 1 1
      411 GETIMPORT                        R52 K5 [require]
      413 GETTABLEKS                       R53 R0 K6 ["Packages"]
      415 GETTABLEKS                       R53 R53 K66 ["SafeFlags"]
      417 CALL                             R52 1 1
      418 GETTABLEKS                       R53 R52 K67 ["createGetFFlag"]
      420 LOADK                            R54 K68 ["DebugShowStudioTour3"]
      421 CALL                             R53 1 1
      422 GETIMPORT                        R54 K5 [require]
      424 GETTABLEKS                       R55 R0 K23 ["Src"]
      426 GETTABLEKS                       R55 R55 K44 ["SharedFlags"]
      428 GETTABLEKS                       R55 R55 K69 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      430 CALL                             R54 1 1
      431 CALL                             R54 0 1
      432 GETIMPORT                        R55 K5 [require]
      434 GETTABLEKS                       R56 R0 K23 ["Src"]
      436 GETTABLEKS                       R56 R56 K16 ["Util"]
      438 GETTABLEKS                       R56 R56 K70 ["Services"]
      440 CALL                             R55 1 1
      441 GETTABLEKS                       R56 R55 K71 ["StartPageManager"]
      443 GETIMPORT                        R57 K5 [require]
      445 GETTABLEKS                       R58 R0 K23 ["Src"]
      447 GETTABLEKS                       R58 R58 K16 ["Util"]
      449 GETTABLEKS                       R58 R58 K72 ["Telemetry"]
      451 GETTABLEKS                       R58 R58 K73 ["TelemetryContext"]
      453 CALL                             R57 1 1
      454 GETIMPORT                        R58 K5 [require]
      456 GETTABLEKS                       R59 R0 K23 ["Src"]
      458 GETTABLEKS                       R59 R59 K16 ["Util"]
      460 GETTABLEKS                       R59 R59 K72 ["Telemetry"]
      462 GETTABLEKS                       R59 R59 K74 ["StartPageTelemetryEvent"]
      464 CALL                             R58 1 1
      465 GETIMPORT                        R59 K5 [require]
      467 GETTABLEKS                       R60 R0 K23 ["Src"]
      469 GETTABLEKS                       R60 R60 K16 ["Util"]
      471 GETTABLEKS                       R60 R60 K72 ["Telemetry"]
      473 GETTABLEKS                       R60 R60 K75 ["StudioSafetyUpsellClickedEvent"]
      475 CALL                             R59 1 1
      476 GETIMPORT                        R60 K5 [require]
      478 GETTABLEKS                       R61 R0 K23 ["Src"]
      480 GETTABLEKS                       R61 R61 K76 ["Contexts"]
      482 GETTABLEKS                       R61 R61 K77 ["ContextMenuActions"]
      484 CALL                             R60 1 1
      485 GETTABLEKS                       R61 R55 K78 ["StudioService"]
      487 GETTABLEKS                       R62 R55 K79 ["RbxAnalyticsService"]
      489 GETIMPORT                        R63 K5 [require]
      491 GETTABLEKS                       R64 R0 K23 ["Src"]
      493 GETTABLEKS                       R64 R64 K16 ["Util"]
      495 GETTABLEKS                       R64 R64 K80 ["Dialogs"]
      497 CALL                             R63 1 1
      498 GETIMPORT                        R64 K5 [require]
      500 GETTABLEKS                       R65 R0 K23 ["Src"]
      502 GETTABLEKS                       R65 R65 K81 ["Hooks"]
      504 GETTABLEKS                       R65 R65 K82 ["useUsername"]
      506 CALL                             R64 1 1
      507 GETIMPORT                        R65 K5 [require]
      509 GETTABLEKS                       R66 R0 K23 ["Src"]
      511 GETTABLEKS                       R66 R66 K81 ["Hooks"]
      513 GETTABLEKS                       R66 R66 K83 ["useShowVerifyAgeBanner"]
      515 CALL                             R65 1 1
      516 GETIMPORT                        R66 K5 [require]
      518 GETTABLEKS                       R67 R0 K23 ["Src"]
      520 GETTABLEKS                       R67 R67 K81 ["Hooks"]
      522 GETTABLEKS                       R67 R67 K84 ["useEstablishTrustDialog"]
      524 CALL                             R66 1 1
      525 GETIMPORT                        R67 K5 [require]
      527 GETTABLEKS                       R68 R0 K23 ["Src"]
      529 GETTABLEKS                       R68 R68 K44 ["SharedFlags"]
      531 GETTABLEKS                       R68 R68 K85 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      533 CALL                             R67 1 1
      534 CALL                             R67 0 1
      535 GETIMPORT                        R68 K5 [require]
      537 GETTABLEKS                       R69 R0 K23 ["Src"]
      539 GETTABLEKS                       R69 R69 K44 ["SharedFlags"]
      541 GETTABLEKS                       R69 R69 K86 ["getFFlagStartPageBuildGameClickTelemetry"]
      543 CALL                             R68 1 1
      544 CALL                             R68 0 1
      545 GETIMPORT                        R69 K5 [require]
      547 GETTABLEKS                       R70 R0 K23 ["Src"]
      549 GETTABLEKS                       R70 R70 K44 ["SharedFlags"]
      551 GETTABLEKS                       R70 R70 K87 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      553 CALL                             R69 1 1
      554 CALL                             R69 0 1
      555 GETIMPORT                        R70 K5 [require]
      557 GETTABLEKS                       R71 R0 K6 ["Packages"]
      559 GETTABLEKS                       R71 R71 K24 ["Foundation"]
      561 CALL                             R70 1 1
      562 GETTABLEKS                       R71 R70 K81 ["Hooks"]
      564 GETTABLEKS                       R71 R71 K88 ["useStyleTags"]
      566 GETTABLEKS                       R72 R70 K89 ["View"]
      568 GETTABLEKS                       R73 R70 K90 ["SystemBanner"]
      570 GETTABLEKS                       R74 R70 K91 ["Enums"]
      572 GETTABLEKS                       R74 R74 K92 ["AlertVariant"]
      574 GETTABLEKS                       R75 R70 K91 ["Enums"]
      576 GETTABLEKS                       R75 R75 K93 ["AlertSeverity"]
      578 GETTABLEKS                       R76 R70 K91 ["Enums"]
      580 GETTABLEKS                       R76 R76 K94 ["ButtonVariant"]
      582 MOVE                             R77 R44
      583 CALL                             R77 0 1
      584 MOVE                             R78 R45
      585 CALL                             R78 0 1
      586 DUPCLOSURE                       R79 K95 [PROTO_0]
      587 CAPTURE                          VAL R61
      588 DUPTABLE                         R80 K104 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      589 DUPTABLE                         R81 K105 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      590 NEWTABLE                         R82 0 10
      592 LOADK                            R83 K106 ["ConfigureExperience"]
      593 JUMPIFNOT                        R43 ; [+2]
      594 LOADK                            R84 K107 ["ViewPlaces"]
      595 JUMP                             ; [+1]
      596 LOADK                            R84 K108 [""]
      597 LOADK                            R85 K109 ["ConfigurePlace"]
      598 LOADK                            R86 K110 ["OpenPlace"]
      599 LOADK                            R87 K111 ["OpenACopy"]
      600 JUMPIF                           R69 ; [+2]
      601 LOADK                            R88 K112 ["PublicPrivateToggle"]
      602 JUMP                             ; [+1]
      603 LOADK                            R88 K108 [""]
      604 LOADK                            R89 K113 ["Archive"]
      605 JUMPIFNOT                        R41 ; [+2]
      606 LOADK                            R90 K114 ["DisableTeamCreate"]
      607 JUMP                             ; [+1]
      608 LOADK                            R90 K108 [""]
      609 JUMPIFNOT                        R42 ; [+2]
      610 LOADK                            R91 K115 ["SaveAs"]
      611 JUMP                             ; [+1]
      612 LOADK                            R91 K108 [""]
      613 LOADK                            R92 K116 ["RemoveRecent"]
      614 SETLIST                          R82 R83 10 [1]
      616 DUPCLOSURE                       R83 K117 [PROTO_2]
      617 CAPTURE                          VAL R57
      618 CAPTURE                          VAL R5
      619 CAPTURE                          VAL R63
      620 CAPTURE                          VAL R37
      621 CAPTURE                          VAL R36
      622 CAPTURE                          VAL R55
      623 CAPTURE                          VAL R11
      624 CAPTURE                          VAL R1
      625 CAPTURE                          VAL R17
      626 CAPTURE                          VAL R9
      627 CAPTURE                          VAL R28
      628 CAPTURE                          VAL R61
      629 CAPTURE                          VAL R27
      630 CAPTURE                          VAL R56
      631 CAPTURE                          VAL R67
      632 CAPTURE                          VAL R58
      633 CAPTURE                          VAL R68
      634 CAPTURE                          VAL R82
      635 DUPCLOSURE                       R84 K118 [PROTO_8]
      636 CAPTURE                          VAL R57
      637 CAPTURE                          VAL R37
      638 CAPTURE                          VAL R36
      639 CAPTURE                          VAL R55
      640 CAPTURE                          VAL R11
      641 CAPTURE                          VAL R1
      642 CAPTURE                          VAL R17
      643 CAPTURE                          VAL R9
      644 CAPTURE                          VAL R28
      645 CAPTURE                          VAL R61
      646 CAPTURE                          VAL R27
      647 CAPTURE                          VAL R67
      648 CAPTURE                          VAL R58
      649 DUPCLOSURE                       R85 K119 [PROTO_14]
      650 CAPTURE                          VAL R57
      651 CAPTURE                          VAL R37
      652 CAPTURE                          VAL R36
      653 CAPTURE                          VAL R55
      654 CAPTURE                          VAL R11
      655 CAPTURE                          VAL R1
      656 CAPTURE                          VAL R17
      657 CAPTURE                          VAL R9
      658 CAPTURE                          VAL R32
      659 CAPTURE                          VAL R58
      660 CAPTURE                          VAL R56
      661 CAPTURE                          VAL R28
      662 CAPTURE                          VAL R61
      663 CAPTURE                          VAL R31
      664 CAPTURE                          VAL R27
      665 DUPCLOSURE                       R86 K120 [PROTO_36]
      666 CAPTURE                          VAL R12
      667 CAPTURE                          VAL R2
      668 CAPTURE                          VAL R71
      669 CAPTURE                          VAL R4
      670 CAPTURE                          VAL R3
      671 CAPTURE                          VAL R40
      672 CAPTURE                          VAL R61
      673 CAPTURE                          VAL R29
      674 CAPTURE                          VAL R57
      675 CAPTURE                          VAL R11
      676 CAPTURE                          VAL R55
      677 CAPTURE                          VAL R56
      678 CAPTURE                          VAL R53
      679 CAPTURE                          VAL R34
      680 CAPTURE                          VAL R35
      681 CAPTURE                          VAL R66
      682 CAPTURE                          VAL R7
      683 CAPTURE                          VAL R58
      684 CAPTURE                          VAL R10
      685 CAPTURE                          VAL R64
      686 CAPTURE                          VAL R65
      687 CAPTURE                          VAL R59
      688 CAPTURE                          VAL R62
      689 CAPTURE                          VAL R30
      690 CAPTURE                          VAL R32
      691 CAPTURE                          VAL R25
      692 CAPTURE                          VAL R26
      693 CAPTURE                          VAL R33
      694 CAPTURE                          VAL R1
      695 CAPTURE                          VAL R14
      696 CAPTURE                          VAL R73
      697 CAPTURE                          VAL R74
      698 CAPTURE                          VAL R75
      699 CAPTURE                          VAL R76
      700 CAPTURE                          VAL R49
      701 CAPTURE                          VAL R46
      702 CAPTURE                          VAL R50
      703 CAPTURE                          VAL R39
      704 CAPTURE                          VAL R51
      705 CAPTURE                          VAL R38
      706 CAPTURE                          VAL R47
      707 CAPTURE                          VAL R48
      708 CAPTURE                          VAL R22
      709 CAPTURE                          VAL R77
      710 CAPTURE                          VAL R78
      711 CAPTURE                          VAL R16
      712 CAPTURE                          VAL R54
      713 CAPTURE                          VAL R21
      714 CAPTURE                          VAL R20
      715 CAPTURE                          VAL R72
      716 CAPTURE                          VAL R15
      717 CAPTURE                          VAL R60
      718 CAPTURE                          VAL R82
      719 CAPTURE                          VAL R18
      720 CAPTURE                          VAL R19
      721 CAPTURE                          VAL R83
      722 CAPTURE                          VAL R24
      723 CAPTURE                          VAL R84
      724 CAPTURE                          VAL R80
      725 CAPTURE                          VAL R23
      726 CAPTURE                          VAL R85
      727 CAPTURE                          VAL R81
      728 RETURN                           R86 1
