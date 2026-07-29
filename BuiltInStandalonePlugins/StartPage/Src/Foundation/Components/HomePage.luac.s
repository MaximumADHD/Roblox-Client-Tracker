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
       59 JUMPIFNOT                        R1 ; [+19]
       60 GETUPVAL                         R1 11
       61 GETUPVAL                         R3 12
       62 DUPTABLE                         R4 K15 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_recent_sort", ["name"]}]
       63 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 LOADK                            R5 K16 ["published"]
       67 JUMP                             ; [+6]
       68 GETTABLEKS                       R6 R0 K6 ["FilePath"]
       70 JUMPIFNOT                        R6 ; [+2]
       71 LOADK                            R5 K17 ["local_file"]
       72 JUMP                             ; [+1]
       73 LOADK                            R5 K18 ["unknown"]
       74 SETTABLEKS                       R5 R4 K14 ["name"]
       76 NAMECALL                         R1 R1 K19 ["log"]
       78 CALL                             R1 3 0
       79 RETURN                           R0 0

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
       59 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       61 GETUPVAL                         R11 16
       62 SETTABLEKS                       R11 R10 K11 ["KebabMenu"]
       64 CALL                             R8 2 -1
       65 CALL                             R6 -1 -1
       66 CLOSEUPVALS                      R3
       67 RETURN                           R6 -1

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
      164 LOADN                            R33 280
      165 JUMP                             ; [+1]
      166 LOADN                            R33 270
      167 GETUPVAL                         R35 27
      168 JUMPIFNOT                        R35 ; [+2]
      169 LOADN                            R34 276
      170 JUMP                             ; [+1]
      171 LOADN                            R34 266
      172 GETUPVAL                         R35 28
      173 GETTABLEKS                       R35 R35 K10 ["createElement"]
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
      194 GETUPVAL                         R38 28
      195 GETTABLEKS                       R38 R38 K21 ["Tag"]
      197 SETTABLE                         R5 R37 R38
      198 DUPTABLE                         R38 K27 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "AgeReverificationBanner", "UnratedExperiencesBanner", "Content"}]
      199 GETUPVAL                         R40 13
      200 JUMPIFNOT                        R40 ; [+81]
      201 JUMPIFNOT                        R24 ; [+80]
      202 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      204 JUMPIF                           R40 ; [+77]
      205 GETUPVAL                         R39 28
      206 GETTABLEKS                       R39 R39 K10 ["createElement"]
      208 GETUPVAL                         R40 30
      209 DUPTABLE                         R41 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      210 GETUPVAL                         R42 31
      211 GETTABLEKS                       R42 R42 K36 ["Emphasis"]
      213 SETTABLEKS                       R42 R41 K29 ["variant"]
      215 GETUPVAL                         R42 32
      216 GETTABLEKS                       R42 R42 K37 ["Info"]
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
      244 GETUPVAL                         R44 33
      245 GETTABLEKS                       R44 R44 K46 ["Utility"]
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
      263 GETUPVAL                         R45 33
      264 GETTABLEKS                       R45 R45 K48 ["Standard"]
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
      292 GETUPVAL                         R39 28
      293 GETTABLEKS                       R39 R39 K10 ["createElement"]
      295 GETUPVAL                         R40 30
      296 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      297 GETUPVAL                         R42 31
      298 GETTABLEKS                       R42 R42 K48 ["Standard"]
      300 SETTABLEKS                       R42 R41 K29 ["variant"]
      302 GETUPVAL                         R42 32
      303 GETTABLEKS                       R42 R42 K50 ["Warning"]
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
      324 GETUPVAL                         R44 33
      325 GETTABLEKS                       R44 R44 K46 ["Utility"]
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
      343 GETUPVAL                         R45 33
      344 GETTABLEKS                       R45 R45 K48 ["Standard"]
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
      378 GETUPVAL                         R39 28
      379 GETTABLEKS                       R39 R39 K10 ["createElement"]
      381 GETUPVAL                         R40 30
      382 DUPTABLE                         R41 K49 [{"variant", "severity", "title", "actions", "onClose"}]
      383 GETUPVAL                         R42 31
      384 GETTABLEKS                       R42 R42 K48 ["Standard"]
      386 SETTABLEKS                       R42 R41 K29 ["variant"]
      388 GETUPVAL                         R42 32
      389 GETTABLEKS                       R42 R42 K37 ["Info"]
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
      410 GETUPVAL                         R44 33
      411 GETTABLEKS                       R44 R44 K46 ["Utility"]
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
      429 GETUPVAL                         R45 33
      430 GETTABLEKS                       R45 R45 K48 ["Standard"]
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
      452 JUMPIFNOT                        R40 ; [+93]
      453 JUMPIFNOT                        R6 ; [+92]
      454 JUMPIF                           R8 ; [+91]
      455 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      457 JUMPIF                           R40 ; [+88]
      458 GETUPVAL                         R39 28
      459 GETTABLEKS                       R39 R39 K10 ["createElement"]
      461 GETUPVAL                         R40 42
      462 DUPTABLE                         R41 K56 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      463 MOVE                             R42 R22
      464 CALL                             R42 0 1
      465 SETTABLEKS                       R42 R41 K55 ["LayoutOrder"]
      467 GETUPVAL                         R42 28
      468 GETTABLEKS                       R42 R42 K10 ["createElement"]
      470 GETUPVAL                         R43 30
      471 DUPTABLE                         R44 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      472 GETUPVAL                         R45 31
      473 GETTABLEKS                       R45 R45 K36 ["Emphasis"]
      475 SETTABLEKS                       R45 R44 K29 ["variant"]
      477 GETUPVAL                         R45 32
      478 GETTABLEKS                       R45 R45 K57 ["Error"]
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
      506 GETUPVAL                         R47 33
      507 GETTABLEKS                       R47 R47 K46 ["Utility"]
      509 SETTABLEKS                       R47 R46 K29 ["variant"]
      511 DUPCLOSURE                       R47 K61 [PROTO_30]
      512 CAPTURE                          UPVAL U11
      513 CAPTURE                          UPVAL U43
      514 SETTABLEKS                       R47 R46 K43 ["onActivated"]
      516 DUPTABLE                         R47 K44 [{"text", "variant", "onActivated"}]
      517 LOADK                            R50 K38 ["Plugin"]
      518 LOADK                            R51 K62 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      519 NAMECALL                         R48 R11 K40 ["getText"]
      521 CALL                             R48 3 1
      522 SETTABLEKS                       R48 R47 K42 ["text"]
      524 GETUPVAL                         R48 33
      525 GETTABLEKS                       R48 R48 K48 ["Standard"]
      527 SETTABLEKS                       R48 R47 K29 ["variant"]
      529 DUPCLOSURE                       R48 K63 [PROTO_31]
      530 CAPTURE                          UPVAL U11
      531 CAPTURE                          UPVAL U44
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
      549 GETUPVAL                         R39 28
      550 GETTABLEKS                       R39 R39 K10 ["createElement"]
      552 GETUPVAL                         R40 42
      553 DUPTABLE                         R41 K65 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      554 MOVE                             R42 R22
      555 CALL                             R42 0 1
      556 SETTABLEKS                       R42 R41 K55 ["LayoutOrder"]
      558 DUPTABLE                         R42 K72 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      559 GETUPVAL                         R43 28
      560 GETTABLEKS                       R43 R43 K10 ["createElement"]
      562 GETUPVAL                         R44 45
      563 DUPTABLE                         R45 K73 [{"title", "LayoutOrder"}]
      564 JUMPIFNOT                        R23 ; [+9]
      565 LOADK                            R48 K38 ["Plugin"]
      566 LOADK                            R49 K74 ["HomePage.WelcomeWithUsername"]
      567 DUPTABLE                         R50 K76 [{"username"}]
      568 SETTABLEKS                       R23 R50 K75 ["username"]
      570 NAMECALL                         R46 R11 K40 ["getText"]
      572 CALL                             R46 4 1
      573 JUMP                             ; [+5]
      574 LOADK                            R48 K38 ["Plugin"]
      575 LOADK                            R49 K77 ["HomePage.Welcome"]
      576 NAMECALL                         R46 R11 K40 ["getText"]
      578 CALL                             R46 3 1
      579 SETTABLEKS                       R46 R45 K31 ["title"]
      581 MOVE                             R46 R22
      582 CALL                             R46 0 1
      583 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      585 CALL                             R43 2 1
      586 SETTABLEKS                       R43 R42 K66 ["Header"]
      588 GETUPVAL                         R44 46
      589 JUMPIFNOT                        R44 ; [+18]
      590 GETUPVAL                         R43 28
      591 GETTABLEKS                       R43 R43 K10 ["createElement"]
      593 GETUPVAL                         R44 42
      594 DUPTABLE                         R45 K79 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      595 MOVE                             R46 R22
      596 CALL                             R46 0 1
      597 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      599 GETUPVAL                         R46 28
      600 GETTABLEKS                       R46 R46 K10 ["createElement"]
      602 GETUPVAL                         R47 47
      603 NEWTABLE                         R48 0 0
      605 CALL                             R46 2 -1
      606 CALL                             R43 -1 1
      607 JUMP                             ; [+24]
      608 JUMPIFNOT                        R14 ; [+22]
      609 GETUPVAL                         R43 28
      610 GETTABLEKS                       R43 R43 K10 ["createElement"]
      612 GETUPVAL                         R44 42
      613 DUPTABLE                         R45 K79 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      614 MOVE                             R46 R22
      615 CALL                             R46 0 1
      616 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      618 GETUPVAL                         R46 28
      619 GETTABLEKS                       R46 R46 K10 ["createElement"]
      621 GETUPVAL                         R47 48
      622 DUPTABLE                         R48 K80 [{"onClose"}]
      623 NEWCLOSURE                       R49 P15
      624 CAPTURE                          VAL R15
      625 CAPTURE                          UPVAL U11
      626 SETTABLEKS                       R49 R48 K34 ["onClose"]
      628 CALL                             R46 2 -1
      629 CALL                             R43 -1 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R43
      632 SETTABLEKS                       R43 R42 K67 ["TutorialBanner"]
      634 GETTABLEKS                       R44 R0 K81 ["hideRecents"]
      636 JUMPIF                           R44 ; [+119]
      637 JUMPIFNOT                        R16 ; [+118]
      638 GETUPVAL                         R43 28
      639 GETTABLEKS                       R43 R43 K10 ["createElement"]
      641 GETUPVAL                         R44 49
      642 DUPTABLE                         R45 K85 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      643 MOVE                             R46 R22
      644 CALL                             R46 0 1
      645 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      647 DUPTABLE                         R46 K86 [{"Header", "Content"}]
      648 GETUPVAL                         R47 28
      649 GETTABLEKS                       R47 R47 K10 ["createElement"]
      651 GETUPVAL                         R48 50
      652 DUPTABLE                         R49 K89 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      653 LOADK                            R52 K38 ["Plugin"]
      654 LOADK                            R53 K90 ["HomePage.MyRecentExperiences"]
      655 NAMECALL                         R50 R11 K40 ["getText"]
      657 CALL                             R50 3 1
      658 SETTABLEKS                       R50 R49 K31 ["title"]
      660 LOADK                            R52 K38 ["Plugin"]
      661 LOADK                            R53 K91 ["SeeAll"]
      662 NAMECALL                         R50 R11 K40 ["getText"]
      664 CALL                             R50 3 1
      665 SETTABLEKS                       R50 R49 K87 ["buttonText"]
      667 NEWCLOSURE                       R50 P16
      668 CAPTURE                          VAL R10
      669 CAPTURE                          UPVAL U17
      670 CAPTURE                          VAL R0
      671 SETTABLEKS                       R50 R49 K88 ["onButtonClick"]
      673 MOVE                             R50 R22
      674 CALL                             R50 0 1
      675 SETTABLEKS                       R50 R49 K55 ["LayoutOrder"]
      677 CALL                             R47 2 1
      678 SETTABLEKS                       R47 R46 K66 ["Header"]
      680 GETUPVAL                         R47 28
      681 GETTABLEKS                       R47 R47 K10 ["createElement"]
      683 GETUPVAL                         R48 51
      684 GETTABLEKS                       R48 R48 K92 ["Provider"]
      686 DUPTABLE                         R49 K94 [{"value"}]
      687 GETUPVAL                         R50 52
      688 SETTABLEKS                       R50 R49 K93 ["value"]
      690 GETUPVAL                         R50 28
      691 GETTABLEKS                       R50 R50 K10 ["createElement"]
      693 GETUPVAL                         R51 53
      694 DUPTABLE                         R52 K110 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      695 GETIMPORT                        R53 K18 [UDim2.new]
      697 LOADN                            R54 1
      698 LOADN                            R55 0
      699 LOADN                            R56 0
      700 LOADN                            R57 355
      701 CALL                             R53 4 1
      702 SETTABLEKS                       R53 R52 K95 ["Size"]
      704 GETUPVAL                         R53 54
      705 SETTABLEKS                       R53 R52 K96 ["DisplayComponent"]
      707 SETTABLEKS                       R21 R52 K104 ["OnItemCountUpdated"]
      709 GETUPVAL                         R53 55
      710 SETTABLEKS                       R53 R52 K105 ["CellComponent"]
      712 GETIMPORT                        R53 K18 [UDim2.new]
      714 LOADN                            R54 0
      715 LOADN                            R55 224
      716 LOADN                            R56 0
      717 LOADN                            R57 348
      718 CALL                             R53 4 1
      719 SETTABLEKS                       R53 R52 K106 ["CellSize"]
      721 GETIMPORT                        R53 K18 [UDim2.new]
      723 LOADN                            R54 0
      724 LOADN                            R55 16
      725 LOADN                            R56 0
      726 LOADN                            R57 16
      727 CALL                             R53 4 1
      728 SETTABLEKS                       R53 R52 K107 ["CellPadding"]
      730 DUPTABLE                         R53 K124 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      731 GETUPVAL                         R55 6
      732 NAMECALL                         R55 R55 K125 ["GetUserId"]
      734 CALL                             R55 1 -1
      735 FASTCALL                         TOSTRING ; [+2]
      736 GETIMPORT                        R54 K127 [tostring]
      738 CALL                             R54 -1 1
      739 SETTABLEKS                       R54 R53 K117 ["creatorTargetId"]
      741 SETTABLEKS                       R53 R52 K108 ["Query"]
      743 GETUPVAL                         R53 56
      744 SETTABLEKS                       R53 R52 K109 ["FetchItems"]
      746 MOVE                             R53 R22
      747 CALL                             R53 0 1
      748 SETTABLEKS                       R53 R52 K55 ["LayoutOrder"]
      750 CALL                             R50 2 -1
      751 CALL                             R47 -1 1
      752 SETTABLEKS                       R47 R46 K26 ["Content"]
      754 CALL                             R43 3 1
      755 JUMP                             ; [+1]
      756 LOADNIL                          R43
      757 SETTABLEKS                       R43 R42 K68 ["RecentExperiences"]
      759 GETUPVAL                         R43 28
      760 GETTABLEKS                       R43 R43 K10 ["createElement"]
      762 GETUPVAL                         R44 42
      763 DUPTABLE                         R45 K129 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      764 MOVE                             R46 R22
      765 CALL                             R46 0 1
      766 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      768 DUPTABLE                         R46 K86 [{"Header", "Content"}]
      769 GETUPVAL                         R47 28
      770 GETTABLEKS                       R47 R47 K10 ["createElement"]
      772 GETUPVAL                         R48 50
      773 DUPTABLE                         R49 K130 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      774 LOADK                            R52 K38 ["Plugin"]
      775 LOADK                            R53 K131 ["HomePage.Templates.Heading"]
      776 NAMECALL                         R50 R11 K40 ["getText"]
      778 CALL                             R50 3 1
      779 SETTABLEKS                       R50 R49 K31 ["title"]
      781 LOADK                            R52 K38 ["Plugin"]
      782 LOADK                            R53 K132 ["HomePage.Templates.Description"]
      783 NAMECALL                         R50 R11 K40 ["getText"]
      785 CALL                             R50 3 1
      786 SETTABLEKS                       R50 R49 K32 ["description"]
      788 LOADK                            R52 K38 ["Plugin"]
      789 LOADK                            R53 K91 ["SeeAll"]
      790 NAMECALL                         R50 R11 K40 ["getText"]
      792 CALL                             R50 3 1
      793 SETTABLEKS                       R50 R49 K87 ["buttonText"]
      795 NEWCLOSURE                       R50 P17
      796 CAPTURE                          VAL R10
      797 CAPTURE                          UPVAL U17
      798 CAPTURE                          VAL R0
      799 SETTABLEKS                       R50 R49 K88 ["onButtonClick"]
      801 MOVE                             R50 R22
      802 CALL                             R50 0 1
      803 SETTABLEKS                       R50 R49 K55 ["LayoutOrder"]
      805 CALL                             R47 2 1
      806 SETTABLEKS                       R47 R46 K66 ["Header"]
      808 GETUPVAL                         R47 28
      809 GETTABLEKS                       R47 R47 K10 ["createElement"]
      811 GETUPVAL                         R48 53
      812 DUPTABLE                         R49 K133 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      813 GETIMPORT                        R50 K18 [UDim2.new]
      815 LOADN                            R51 1
      816 LOADN                            R52 0
      817 LOADN                            R53 0
      818 LOADN                            R54 264
      819 CALL                             R50 4 1
      820 SETTABLEKS                       R50 R49 K95 ["Size"]
      822 GETUPVAL                         R50 54
      823 SETTABLEKS                       R50 R49 K96 ["DisplayComponent"]
      825 GETUPVAL                         R50 57
      826 SETTABLEKS                       R50 R49 K105 ["CellComponent"]
      828 GETIMPORT                        R50 K18 [UDim2.new]
      830 LOADN                            R51 0
      831 LOADN                            R52 225
      832 LOADN                            R53 0
      833 LOADN                            R54 252
      834 CALL                             R50 4 1
      835 SETTABLEKS                       R50 R49 K106 ["CellSize"]
      837 GETIMPORT                        R50 K18 [UDim2.new]
      839 LOADN                            R51 0
      840 LOADN                            R52 16
      841 LOADN                            R53 0
      842 LOADN                            R54 16
      843 CALL                             R50 4 1
      844 SETTABLEKS                       R50 R49 K107 ["CellPadding"]
      846 GETUPVAL                         R50 58
      847 SETTABLEKS                       R50 R49 K108 ["Query"]
      849 GETUPVAL                         R50 59
      850 SETTABLEKS                       R50 R49 K109 ["FetchItems"]
      852 MOVE                             R50 R22
      853 CALL                             R50 0 1
      854 SETTABLEKS                       R50 R49 K55 ["LayoutOrder"]
      856 CALL                             R47 2 1
      857 SETTABLEKS                       R47 R46 K26 ["Content"]
      859 CALL                             R43 3 1
      860 SETTABLEKS                       R43 R42 K69 ["Templates"]
      862 GETUPVAL                         R43 28
      863 GETTABLEKS                       R43 R43 K10 ["createElement"]
      865 GETUPVAL                         R44 42
      866 DUPTABLE                         R45 K129 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      867 MOVE                             R46 R22
      868 CALL                             R46 0 1
      869 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      871 DUPTABLE                         R46 K86 [{"Header", "Content"}]
      872 GETUPVAL                         R47 28
      873 GETTABLEKS                       R47 R47 K10 ["createElement"]
      875 GETUPVAL                         R48 50
      876 DUPTABLE                         R49 K134 [{"title", "description", "LayoutOrder"}]
      877 LOADK                            R52 K38 ["Plugin"]
      878 LOADK                            R53 K135 ["HomePage.DiscoverStudio.Heading"]
      879 NAMECALL                         R50 R11 K40 ["getText"]
      881 CALL                             R50 3 1
      882 SETTABLEKS                       R50 R49 K31 ["title"]
      884 LOADK                            R52 K38 ["Plugin"]
      885 LOADK                            R53 K136 ["HomePage.DiscoverStudio.Description"]
      886 NAMECALL                         R50 R11 K40 ["getText"]
      888 CALL                             R50 3 1
      889 SETTABLEKS                       R50 R49 K32 ["description"]
      891 MOVE                             R50 R22
      892 CALL                             R50 0 1
      893 SETTABLEKS                       R50 R49 K55 ["LayoutOrder"]
      895 CALL                             R47 2 1
      896 SETTABLEKS                       R47 R46 K66 ["Header"]
      898 GETUPVAL                         R47 28
      899 GETTABLEKS                       R47 R47 K10 ["createElement"]
      901 GETUPVAL                         R48 53
      902 DUPTABLE                         R49 K137 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      903 GETIMPORT                        R50 K18 [UDim2.new]
      905 LOADN                            R51 1
      906 LOADN                            R52 0
      907 LOADN                            R53 0
      908 MOVE                             R54 R33
      909 CALL                             R50 4 1
      910 SETTABLEKS                       R50 R49 K95 ["Size"]
      912 GETUPVAL                         R50 54
      913 SETTABLEKS                       R50 R49 K96 ["DisplayComponent"]
      915 GETUPVAL                         R50 60
      916 SETTABLEKS                       R50 R49 K105 ["CellComponent"]
      918 GETIMPORT                        R50 K18 [UDim2.new]
      920 LOADN                            R51 0
      921 LOADN                            R52 225
      922 LOADN                            R53 0
      923 MOVE                             R54 R34
      924 CALL                             R50 4 1
      925 SETTABLEKS                       R50 R49 K106 ["CellSize"]
      927 GETIMPORT                        R50 K18 [UDim2.new]
      929 LOADN                            R51 0
      930 LOADN                            R52 16
      931 LOADN                            R53 0
      932 LOADN                            R54 16
      933 CALL                             R50 4 1
      934 SETTABLEKS                       R50 R49 K107 ["CellPadding"]
      936 GETUPVAL                         R50 61
      937 SETTABLEKS                       R50 R49 K108 ["Query"]
      939 SETTABLEKS                       R32 R49 K109 ["FetchItems"]
      941 MOVE                             R50 R22
      942 CALL                             R50 0 1
      943 SETTABLEKS                       R50 R49 K55 ["LayoutOrder"]
      945 CALL                             R47 2 1
      946 SETTABLEKS                       R47 R46 K26 ["Content"]
      948 CALL                             R43 3 1
      949 SETTABLEKS                       R43 R42 K70 ["Momentum"]
      951 GETUPVAL                         R43 28
      952 GETTABLEKS                       R43 R43 K10 ["createElement"]
      954 GETUPVAL                         R44 49
      955 DUPTABLE                         R45 K138 [{"LayoutOrder", "Size"}]
      956 MOVE                             R46 R22
      957 CALL                             R46 0 1
      958 SETTABLEKS                       R46 R45 K55 ["LayoutOrder"]
      960 GETIMPORT                        R46 K18 [UDim2.new]
      962 LOADN                            R47 1
      963 LOADN                            R48 0
      964 LOADN                            R49 0
      965 LOADN                            R50 40
      966 CALL                             R46 4 1
      967 SETTABLEKS                       R46 R45 K95 ["Size"]
      969 CALL                             R43 2 1
      970 SETTABLEKS                       R43 R42 K71 ["Spacer"]
      972 CALL                             R39 3 1
      973 SETTABLEKS                       R39 R38 K26 ["Content"]
      975 CALL                             R35 3 -1
      976 CLOSEUPVALS                      R18
      977 RETURN                           R35 -1

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
      413 GETTABLEKS                       R53 R0 K23 ["Src"]
      415 GETTABLEKS                       R53 R53 K44 ["SharedFlags"]
      417 GETTABLEKS                       R53 R53 K66 ["safeGetFastFlag"]
      419 CALL                             R52 1 1
      420 GETIMPORT                        R53 K5 [require]
      422 GETTABLEKS                       R54 R0 K23 ["Src"]
      424 GETTABLEKS                       R54 R54 K44 ["SharedFlags"]
      426 GETTABLEKS                       R54 R54 K67 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      428 CALL                             R53 1 1
      429 CALL                             R53 0 1
      430 GETIMPORT                        R54 K5 [require]
      432 GETTABLEKS                       R55 R0 K23 ["Src"]
      434 GETTABLEKS                       R55 R55 K16 ["Util"]
      436 GETTABLEKS                       R55 R55 K68 ["Services"]
      438 CALL                             R54 1 1
      439 GETTABLEKS                       R55 R54 K69 ["StartPageManager"]
      441 GETIMPORT                        R56 K5 [require]
      443 GETTABLEKS                       R57 R0 K23 ["Src"]
      445 GETTABLEKS                       R57 R57 K16 ["Util"]
      447 GETTABLEKS                       R57 R57 K70 ["Telemetry"]
      449 GETTABLEKS                       R57 R57 K71 ["TelemetryContext"]
      451 CALL                             R56 1 1
      452 GETIMPORT                        R57 K5 [require]
      454 GETTABLEKS                       R58 R0 K23 ["Src"]
      456 GETTABLEKS                       R58 R58 K16 ["Util"]
      458 GETTABLEKS                       R58 R58 K70 ["Telemetry"]
      460 GETTABLEKS                       R58 R58 K72 ["StartPageTelemetryEvent"]
      462 CALL                             R57 1 1
      463 GETIMPORT                        R58 K5 [require]
      465 GETTABLEKS                       R59 R0 K23 ["Src"]
      467 GETTABLEKS                       R59 R59 K16 ["Util"]
      469 GETTABLEKS                       R59 R59 K70 ["Telemetry"]
      471 GETTABLEKS                       R59 R59 K73 ["StudioSafetyUpsellClickedEvent"]
      473 CALL                             R58 1 1
      474 GETIMPORT                        R59 K5 [require]
      476 GETTABLEKS                       R60 R0 K23 ["Src"]
      478 GETTABLEKS                       R60 R60 K74 ["Contexts"]
      480 GETTABLEKS                       R60 R60 K75 ["ContextMenuActions"]
      482 CALL                             R59 1 1
      483 GETTABLEKS                       R60 R54 K76 ["StudioService"]
      485 GETTABLEKS                       R61 R54 K77 ["RbxAnalyticsService"]
      487 GETIMPORT                        R62 K5 [require]
      489 GETTABLEKS                       R63 R0 K23 ["Src"]
      491 GETTABLEKS                       R63 R63 K16 ["Util"]
      493 GETTABLEKS                       R63 R63 K78 ["Dialogs"]
      495 CALL                             R62 1 1
      496 GETIMPORT                        R63 K5 [require]
      498 GETTABLEKS                       R64 R0 K23 ["Src"]
      500 GETTABLEKS                       R64 R64 K79 ["Hooks"]
      502 GETTABLEKS                       R64 R64 K80 ["useUsername"]
      504 CALL                             R63 1 1
      505 GETIMPORT                        R64 K5 [require]
      507 GETTABLEKS                       R65 R0 K23 ["Src"]
      509 GETTABLEKS                       R65 R65 K79 ["Hooks"]
      511 GETTABLEKS                       R65 R65 K81 ["useShowVerifyAgeBanner"]
      513 CALL                             R64 1 1
      514 GETIMPORT                        R65 K5 [require]
      516 GETTABLEKS                       R66 R0 K23 ["Src"]
      518 GETTABLEKS                       R66 R66 K79 ["Hooks"]
      520 GETTABLEKS                       R66 R66 K82 ["useEstablishTrustDialog"]
      522 CALL                             R65 1 1
      523 GETIMPORT                        R66 K5 [require]
      525 GETTABLEKS                       R67 R0 K23 ["Src"]
      527 GETTABLEKS                       R67 R67 K44 ["SharedFlags"]
      529 GETTABLEKS                       R67 R67 K83 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      531 CALL                             R66 1 1
      532 CALL                             R66 0 1
      533 GETIMPORT                        R67 K5 [require]
      535 GETTABLEKS                       R68 R0 K23 ["Src"]
      537 GETTABLEKS                       R68 R68 K44 ["SharedFlags"]
      539 GETTABLEKS                       R68 R68 K84 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      541 CALL                             R67 1 1
      542 CALL                             R67 0 1
      543 GETIMPORT                        R68 K5 [require]
      545 GETTABLEKS                       R69 R0 K6 ["Packages"]
      547 GETTABLEKS                       R69 R69 K24 ["Foundation"]
      549 CALL                             R68 1 1
      550 GETTABLEKS                       R69 R68 K79 ["Hooks"]
      552 GETTABLEKS                       R69 R69 K85 ["useStyleTags"]
      554 GETTABLEKS                       R70 R68 K86 ["View"]
      556 GETTABLEKS                       R71 R68 K87 ["SystemBanner"]
      558 GETTABLEKS                       R72 R68 K88 ["Enums"]
      560 GETTABLEKS                       R72 R72 K89 ["AlertVariant"]
      562 GETTABLEKS                       R73 R68 K88 ["Enums"]
      564 GETTABLEKS                       R73 R73 K90 ["AlertSeverity"]
      566 GETTABLEKS                       R74 R68 K88 ["Enums"]
      568 GETTABLEKS                       R74 R74 K91 ["ButtonVariant"]
      570 MOVE                             R75 R44
      571 CALL                             R75 0 1
      572 MOVE                             R76 R45
      573 CALL                             R76 0 1
      574 DUPCLOSURE                       R77 K92 [PROTO_0]
      575 CAPTURE                          VAL R60
      576 DUPTABLE                         R78 K101 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      577 DUPTABLE                         R79 K102 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      578 NEWTABLE                         R80 0 10
      580 LOADK                            R81 K103 ["ConfigureExperience"]
      581 JUMPIFNOT                        R43 ; [+2]
      582 LOADK                            R82 K104 ["ViewPlaces"]
      583 JUMP                             ; [+1]
      584 LOADK                            R82 K105 [""]
      585 LOADK                            R83 K106 ["ConfigurePlace"]
      586 LOADK                            R84 K107 ["OpenPlace"]
      587 LOADK                            R85 K108 ["OpenACopy"]
      588 JUMPIF                           R67 ; [+2]
      589 LOADK                            R86 K109 ["PublicPrivateToggle"]
      590 JUMP                             ; [+1]
      591 LOADK                            R86 K105 [""]
      592 LOADK                            R87 K110 ["Archive"]
      593 JUMPIFNOT                        R41 ; [+2]
      594 LOADK                            R88 K111 ["DisableTeamCreate"]
      595 JUMP                             ; [+1]
      596 LOADK                            R88 K105 [""]
      597 JUMPIFNOT                        R42 ; [+2]
      598 LOADK                            R89 K112 ["SaveAs"]
      599 JUMP                             ; [+1]
      600 LOADK                            R89 K105 [""]
      601 LOADK                            R90 K113 ["RemoveRecent"]
      602 SETLIST                          R80 R81 10 [1]
      604 DUPCLOSURE                       R81 K114 [PROTO_2]
      605 CAPTURE                          VAL R56
      606 CAPTURE                          VAL R5
      607 CAPTURE                          VAL R62
      608 CAPTURE                          VAL R37
      609 CAPTURE                          VAL R36
      610 CAPTURE                          VAL R54
      611 CAPTURE                          VAL R11
      612 CAPTURE                          VAL R1
      613 CAPTURE                          VAL R17
      614 CAPTURE                          VAL R9
      615 CAPTURE                          VAL R28
      616 CAPTURE                          VAL R60
      617 CAPTURE                          VAL R27
      618 CAPTURE                          VAL R55
      619 CAPTURE                          VAL R66
      620 CAPTURE                          VAL R57
      621 CAPTURE                          VAL R80
      622 DUPCLOSURE                       R82 K115 [PROTO_8]
      623 CAPTURE                          VAL R56
      624 CAPTURE                          VAL R37
      625 CAPTURE                          VAL R36
      626 CAPTURE                          VAL R54
      627 CAPTURE                          VAL R11
      628 CAPTURE                          VAL R1
      629 CAPTURE                          VAL R17
      630 CAPTURE                          VAL R9
      631 CAPTURE                          VAL R28
      632 CAPTURE                          VAL R60
      633 CAPTURE                          VAL R27
      634 CAPTURE                          VAL R66
      635 CAPTURE                          VAL R57
      636 DUPCLOSURE                       R83 K116 [PROTO_14]
      637 CAPTURE                          VAL R56
      638 CAPTURE                          VAL R37
      639 CAPTURE                          VAL R36
      640 CAPTURE                          VAL R54
      641 CAPTURE                          VAL R11
      642 CAPTURE                          VAL R1
      643 CAPTURE                          VAL R17
      644 CAPTURE                          VAL R9
      645 CAPTURE                          VAL R32
      646 CAPTURE                          VAL R57
      647 CAPTURE                          VAL R55
      648 CAPTURE                          VAL R28
      649 CAPTURE                          VAL R60
      650 CAPTURE                          VAL R31
      651 CAPTURE                          VAL R27
      652 DUPCLOSURE                       R84 K117 [PROTO_36]
      653 CAPTURE                          VAL R12
      654 CAPTURE                          VAL R2
      655 CAPTURE                          VAL R69
      656 CAPTURE                          VAL R4
      657 CAPTURE                          VAL R3
      658 CAPTURE                          VAL R40
      659 CAPTURE                          VAL R60
      660 CAPTURE                          VAL R29
      661 CAPTURE                          VAL R56
      662 CAPTURE                          VAL R11
      663 CAPTURE                          VAL R54
      664 CAPTURE                          VAL R55
      665 CAPTURE                          VAL R52
      666 CAPTURE                          VAL R34
      667 CAPTURE                          VAL R35
      668 CAPTURE                          VAL R65
      669 CAPTURE                          VAL R7
      670 CAPTURE                          VAL R57
      671 CAPTURE                          VAL R10
      672 CAPTURE                          VAL R63
      673 CAPTURE                          VAL R64
      674 CAPTURE                          VAL R58
      675 CAPTURE                          VAL R61
      676 CAPTURE                          VAL R30
      677 CAPTURE                          VAL R32
      678 CAPTURE                          VAL R25
      679 CAPTURE                          VAL R26
      680 CAPTURE                          VAL R33
      681 CAPTURE                          VAL R1
      682 CAPTURE                          VAL R14
      683 CAPTURE                          VAL R71
      684 CAPTURE                          VAL R72
      685 CAPTURE                          VAL R73
      686 CAPTURE                          VAL R74
      687 CAPTURE                          VAL R49
      688 CAPTURE                          VAL R46
      689 CAPTURE                          VAL R50
      690 CAPTURE                          VAL R39
      691 CAPTURE                          VAL R51
      692 CAPTURE                          VAL R38
      693 CAPTURE                          VAL R47
      694 CAPTURE                          VAL R48
      695 CAPTURE                          VAL R22
      696 CAPTURE                          VAL R75
      697 CAPTURE                          VAL R76
      698 CAPTURE                          VAL R16
      699 CAPTURE                          VAL R53
      700 CAPTURE                          VAL R21
      701 CAPTURE                          VAL R20
      702 CAPTURE                          VAL R70
      703 CAPTURE                          VAL R15
      704 CAPTURE                          VAL R59
      705 CAPTURE                          VAL R80
      706 CAPTURE                          VAL R18
      707 CAPTURE                          VAL R19
      708 CAPTURE                          VAL R81
      709 CAPTURE                          VAL R24
      710 CAPTURE                          VAL R82
      711 CAPTURE                          VAL R78
      712 CAPTURE                          VAL R23
      713 CAPTURE                          VAL R83
      714 CAPTURE                          VAL R79
      715 RETURN                           R84 1
