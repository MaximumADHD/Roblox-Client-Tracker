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
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K2 ["Id"]
       10 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       12 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
       20 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       22 GETUPVAL                         R9 3
       23 GETUPVAL                         R10 4
       24 GETUPVAL                         R11 5
       25 CALL                             R1 10 0
       26 JUMP                             ; [+10]
       27 GETTABLEKS                       R1 R0 K6 ["FilePath"]
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R3 R0 K6 ["FilePath"]
       33 LOADB                            R4 0
       34 NAMECALL                         R1 R1 K7 ["openLocalFile"]
       36 CALL                             R1 3 0
       37 GETUPVAL                         R1 7
       38 JUMPIFNOT                        R1 ; [+27]
       39 GETUPVAL                         R1 8
       40 GETUPVAL                         R3 9
       41 DUPTABLE                         R4 K16 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_recent_sort", ["name"], ["isBuildGame"]}]
       42 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       44 JUMPIFNOT                        R6 ; [+2]
       45 LOADK                            R5 K17 ["published"]
       46 JUMP                             ; [+6]
       47 GETTABLEKS                       R6 R0 K6 ["FilePath"]
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADK                            R5 K18 ["local_file"]
       51 JUMP                             ; [+1]
       52 LOADK                            R5 K19 ["unknown"]
       53 SETTABLEKS                       R5 R4 K14 ["name"]
       55 GETUPVAL                         R6 10
       56 JUMPIFNOT                        R6 ; [+3]
       57 GETTABLEKS                       R5 R0 K20 ["IsBuildSealed"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R5
       61 SETTABLEKS                       R5 R4 K15 ["isBuildGame"]
       63 NAMECALL                         R1 R1 K21 ["log"]
       65 CALL                             R1 3 0
       66 RETURN                           R0 0

PROTO_2:
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
       23 GETUPVAL                         R8 7
       24 MOVE                             R9 R0
       25 DUPTABLE                         R10 K12 [{["ImageSize"], ["OnClick"], ["IsPrivacyVisible"] = True, ["IsDateModifiedVisible"] = True, ["IsDropdownMenuVisible"] = True, ["IsCreatorNameVisible"] = True, ["KebabMenu"]}]
       26 GETIMPORT                        R11 K15 [UDim2.new]
       28 LOADN                            R12 0
       29 LOADN                            R13 200
       30 LOADN                            R14 0
       31 LOADN                            R15 200
       32 CALL                             R11 4 1
       33 SETTABLEKS                       R11 R10 K4 ["ImageSize"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U13
       47 SETTABLEKS                       R11 R10 K5 ["OnClick"]
       49 GETUPVAL                         R11 14
       50 SETTABLEKS                       R11 R10 K11 ["KebabMenu"]
       52 CALL                             R8 2 -1
       53 CALL                             R6 -1 -1
       54 RETURN                           R6 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K2 ["Id"]
       10 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       12 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       14 DUPCLOSURE                       R6 K3 [PROTO_3]
       15 DUPCLOSURE                       R7 K4 [PROTO_4]
       16 GETTABLEKS                       R8 R0 K5 ["IsTeamCreateEnabled"]
       18 GETUPVAL                         R9 2
       19 GETUPVAL                         R10 3
       20 GETUPVAL                         R11 4
       21 CALL                             R1 10 0
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETUPVAL                         R1 6
       25 GETUPVAL                         R3 7
       26 DUPTABLE                         R4 K13 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_template_sort", ["name"]}]
       27 GETTABLEKS                       R5 R0 K14 ["Name"]
       29 JUMPIF                           R5 ; [+2]
       30 GETTABLEKS                       R5 R0 K2 ["Id"]
       32 SETTABLEKS                       R5 R4 K12 ["name"]
       34 NAMECALL                         R1 R1 K15 ["log"]
       36 CALL                             R1 3 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getDialogManager"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K0 ["use"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["getActionsBridge"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["createElement"]
       19 GETUPVAL                         R6 4
       20 GETUPVAL                         R7 5
       21 MOVE                             R8 R0
       22 DUPTABLE                         R9 K6 [{"ImageSize", "OnClick"}]
       23 GETIMPORT                        R10 K9 [UDim2.new]
       25 LOADN                            R11 0
       26 LOADN                            R12 200
       27 LOADN                            R13 0
       28 LOADN                            R14 200
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K4 ["ImageSize"]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U9
       41 SETTABLEKS                       R10 R9 K5 ["OnClick"]
       43 CALL                             R7 2 -1
       44 CALL                             R5 -1 -1
       45 RETURN                           R5 -1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K7 [{[1] = "interaction", ["telemetrySubtype"] = "knowledge_feed", ["action"], ["name"], ["link"]}]
        3 GETTABLEKS                       R6 R0 K8 ["Link"]
        5 JUMPIFNOT                        R6 ; [+2]
        6 LOADK                            R5 K9 ["open_link"]
        7 JUMP                             ; [+6]
        8 GETTABLEKS                       R6 R0 K10 ["RootPlaceId"]
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADK                            R5 K11 ["open_place"]
       12 JUMP                             ; [+1]
       13 LOADK                            R5 K12 ["launch_tutorial"]
       14 SETTABLEKS                       R5 R4 K4 ["action"]
       16 GETTABLEKS                       R5 R0 K13 ["Name"]
       18 SETTABLEKS                       R5 R4 K5 ["name"]
       20 GETTABLEKS                       R5 R0 K8 ["Link"]
       22 SETTABLEKS                       R5 R4 K6 ["link"]
       24 NAMECALL                         R1 R1 K14 ["log"]
       26 CALL                             R1 3 0
       27 GETTABLEKS                       R1 R0 K8 ["Link"]
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R3 R0 K8 ["Link"]
       33 NAMECALL                         R1 R1 K15 ["openLink"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R1 R0 K10 ["RootPlaceId"]
       39 JUMPIFNOT                        R1 ; [+21]
       40 GETUPVAL                         R1 3
       41 GETUPVAL                         R2 4
       42 NAMECALL                         R2 R2 K16 ["GetUserId"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R0 K17 ["UniverseId"]
       47 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
       49 GETTABLEKS                       R5 R0 K10 ["RootPlaceId"]
       51 DUPCLOSURE                       R6 K18 [PROTO_7]
       52 DUPCLOSURE                       R7 K19 [PROTO_8]
       53 GETTABLEKS                       R8 R0 K20 ["IsTeamCreateEnabled"]
       55 GETUPVAL                         R9 5
       56 GETUPVAL                         R10 6
       57 GETUPVAL                         R11 7
       58 LOADB                            R12 0
       59 CALL                             R1 11 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R1 R0 K21 ["LaunchTutorialOnClick"]
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R1 2
       65 NAMECALL                         R1 R1 K22 ["startTutorial"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getDialogManager"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K0 ["use"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["getActionsBridge"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["createElement"]
       19 GETUPVAL                         R6 4
       20 GETUPVAL                         R7 5
       21 MOVE                             R8 R0
       22 DUPTABLE                         R9 K10 [{["ImageSize"], ["IsDescriptionVisible"] = True, ["IsDifficultyVisible"] = True, ["IsCategoriesVisible"] = True, ["OnClick"]}]
       23 GETIMPORT                        R10 K13 [UDim2.new]
       25 LOADN                            R11 0
       26 LOADN                            R12 200
       27 LOADN                            R13 0
       28 LOADN                            R14 161
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K4 ["ImageSize"]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R10 R9 K9 ["OnClick"]
       43 CALL                             R7 2 -1
       44 CALL                             R5 -1 -1
       45 RETURN                           R5 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["get"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 1
        9 GETVARARGS                       R4 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialBannerClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
       76 GETUPVAL                         R18 13
       77 NEWCLOSURE                       R19 P3
       78 CAPTURE                          VAL R17
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 CAPTURE                          UPVAL U14
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R12
       85 CALL                             R18 1 1
       86 GETUPVAL                         R19 15
       87 CALL                             R19 0 1
       88 GETUPVAL                         R20 16
       89 CALL                             R20 0 1
       90 GETUPVAL                         R21 13
       91 NEWCLOSURE                       R22 P4
       92 CAPTURE                          UPVAL U17
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U18
       95 NEWTABLE                         R23 0 1
       97 NAMECALL                         R24 R11 K5 ["getLocale"]
       99 CALL                             R24 1 -1
      100 SETLIST                          R23 R24 -1 [1]
      102 CALL                             R21 2 1
      103 GETUPVAL                         R22 19
      104 GETTABLEKS                       R22 R22 K6 ["createElement"]
      106 GETUPVAL                         R23 20
      107 NEWTABLE                         R24 4 0
      109 GETIMPORT                        R25 K10 [Enum.AutomaticSize.Y]
      111 SETTABLEKS                       R25 R24 K11 ["AutomaticCanvasSize"]
      113 GETIMPORT                        R25 K14 [UDim2.new]
      115 LOADN                            R26 1
      116 LOADN                            R27 0
      117 LOADN                            R28 0
      118 LOADN                            R29 0
      119 CALL                             R25 4 1
      120 SETTABLEKS                       R25 R24 K15 ["CanvasSize"]
      122 LOADN                            R25 0
      123 SETTABLEKS                       R25 R24 K16 ["ScrollBarThickness"]
      125 GETUPVAL                         R25 19
      126 GETTABLEKS                       R25 R25 K17 ["Tag"]
      128 SETTABLE                         R5 R24 R25
      129 DUPTABLE                         R25 K20 [{"UnratedExperiencesBanner", "Content"}]
      130 GETUPVAL                         R27 5
      131 JUMPIFNOT                        R27 ; [+93]
      132 JUMPIFNOT                        R6 ; [+92]
      133 JUMPIF                           R8 ; [+91]
      134 GETTABLEKS                       R27 R0 K21 ["hideBanner"]
      136 JUMPIF                           R27 ; [+88]
      137 GETUPVAL                         R26 19
      138 GETTABLEKS                       R26 R26 K6 ["createElement"]
      140 GETUPVAL                         R27 21
      141 DUPTABLE                         R28 K25 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      142 MOVE                             R29 R19
      143 CALL                             R29 0 1
      144 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      146 GETUPVAL                         R29 19
      147 GETTABLEKS                       R29 R29 K6 ["createElement"]
      149 GETUPVAL                         R30 22
      150 DUPTABLE                         R31 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      151 GETUPVAL                         R32 23
      152 GETTABLEKS                       R32 R32 K33 ["Emphasis"]
      154 SETTABLEKS                       R32 R31 K26 ["variant"]
      156 GETUPVAL                         R32 24
      157 GETTABLEKS                       R32 R32 K34 ["Error"]
      159 SETTABLEKS                       R32 R31 K27 ["severity"]
      161 LOADK                            R34 K35 ["Plugin"]
      162 LOADK                            R35 K36 ["UnratedExperiencesBanner.Title"]
      163 NAMECALL                         R32 R11 K37 ["getText"]
      165 CALL                             R32 3 1
      166 SETTABLEKS                       R32 R31 K28 ["title"]
      168 LOADK                            R34 K35 ["Plugin"]
      169 LOADK                            R35 K38 ["UnratedExperiencesBanner.Description"]
      170 NAMECALL                         R32 R11 K37 ["getText"]
      172 CALL                             R32 3 1
      173 SETTABLEKS                       R32 R31 K29 ["description"]
      175 NEWTABLE                         R32 0 2
      177 DUPTABLE                         R33 K41 [{"text", "variant", "onActivated"}]
      178 LOADK                            R36 K35 ["Plugin"]
      179 LOADK                            R37 K42 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      180 NAMECALL                         R34 R11 K37 ["getText"]
      182 CALL                             R34 3 1
      183 SETTABLEKS                       R34 R33 K39 ["text"]
      185 GETUPVAL                         R34 25
      186 GETTABLEKS                       R34 R34 K43 ["Utility"]
      188 SETTABLEKS                       R34 R33 K26 ["variant"]
      190 DUPCLOSURE                       R34 K44 [PROTO_19]
      191 CAPTURE                          UPVAL U11
      192 CAPTURE                          UPVAL U26
      193 SETTABLEKS                       R34 R33 K40 ["onActivated"]
      195 DUPTABLE                         R34 K41 [{"text", "variant", "onActivated"}]
      196 LOADK                            R37 K35 ["Plugin"]
      197 LOADK                            R38 K45 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      198 NAMECALL                         R35 R11 K37 ["getText"]
      200 CALL                             R35 3 1
      201 SETTABLEKS                       R35 R34 K39 ["text"]
      203 GETUPVAL                         R35 25
      204 GETTABLEKS                       R35 R35 K46 ["Standard"]
      206 SETTABLEKS                       R35 R34 K26 ["variant"]
      208 DUPCLOSURE                       R35 K47 [PROTO_20]
      209 CAPTURE                          UPVAL U11
      210 CAPTURE                          UPVAL U27
      211 SETTABLEKS                       R35 R34 K40 ["onActivated"]
      213 SETLIST                          R32 R33 2 [1]
      215 SETTABLEKS                       R32 R31 K30 ["actions"]
      217 NEWCLOSURE                       R32 P7
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R1
      220 SETTABLEKS                       R32 R31 K31 ["onClose"]
      222 CALL                             R29 2 -1
      223 CALL                             R26 -1 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R26
      226 SETTABLEKS                       R26 R25 K18 ["UnratedExperiencesBanner"]
      228 GETUPVAL                         R26 19
      229 GETTABLEKS                       R26 R26 K6 ["createElement"]
      231 GETUPVAL                         R27 21
      232 DUPTABLE                         R28 K49 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      233 MOVE                             R29 R19
      234 CALL                             R29 0 1
      235 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      237 DUPTABLE                         R29 K56 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      238 GETUPVAL                         R30 19
      239 GETTABLEKS                       R30 R30 K6 ["createElement"]
      241 GETUPVAL                         R31 28
      242 DUPTABLE                         R32 K57 [{"title", "LayoutOrder"}]
      243 JUMPIFNOT                        R20 ; [+9]
      244 LOADK                            R35 K35 ["Plugin"]
      245 LOADK                            R36 K58 ["HomePage.WelcomeWithUsername"]
      246 DUPTABLE                         R37 K60 [{"username"}]
      247 SETTABLEKS                       R20 R37 K59 ["username"]
      249 NAMECALL                         R33 R11 K37 ["getText"]
      251 CALL                             R33 4 1
      252 JUMP                             ; [+5]
      253 LOADK                            R35 K35 ["Plugin"]
      254 LOADK                            R36 K61 ["HomePage.Welcome"]
      255 NAMECALL                         R33 R11 K37 ["getText"]
      257 CALL                             R33 3 1
      258 SETTABLEKS                       R33 R32 K28 ["title"]
      260 MOVE                             R33 R19
      261 CALL                             R33 0 1
      262 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      264 CALL                             R30 2 1
      265 SETTABLEKS                       R30 R29 K50 ["Header"]
      267 GETUPVAL                         R31 29
      268 JUMPIFNOT                        R31 ; [+18]
      269 GETUPVAL                         R30 19
      270 GETTABLEKS                       R30 R30 K6 ["createElement"]
      272 GETUPVAL                         R31 21
      273 DUPTABLE                         R32 K63 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      274 MOVE                             R33 R19
      275 CALL                             R33 0 1
      276 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      278 GETUPVAL                         R33 19
      279 GETTABLEKS                       R33 R33 K6 ["createElement"]
      281 GETUPVAL                         R34 30
      282 NEWTABLE                         R35 0 0
      284 CALL                             R33 2 -1
      285 CALL                             R30 -1 1
      286 JUMP                             ; [+24]
      287 JUMPIFNOT                        R14 ; [+22]
      288 GETUPVAL                         R30 19
      289 GETTABLEKS                       R30 R30 K6 ["createElement"]
      291 GETUPVAL                         R31 21
      292 DUPTABLE                         R32 K63 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      293 MOVE                             R33 R19
      294 CALL                             R33 0 1
      295 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      297 GETUPVAL                         R33 19
      298 GETTABLEKS                       R33 R33 K6 ["createElement"]
      300 GETUPVAL                         R34 31
      301 DUPTABLE                         R35 K64 [{"onClose"}]
      302 NEWCLOSURE                       R36 P8
      303 CAPTURE                          VAL R15
      304 CAPTURE                          UPVAL U11
      305 SETTABLEKS                       R36 R35 K31 ["onClose"]
      307 CALL                             R33 2 -1
      308 CALL                             R30 -1 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R30
      311 SETTABLEKS                       R30 R29 K51 ["TutorialBanner"]
      313 GETTABLEKS                       R31 R0 K65 ["hideRecents"]
      315 JUMPIF                           R31 ; [+119]
      316 JUMPIFNOT                        R16 ; [+118]
      317 GETUPVAL                         R30 19
      318 GETTABLEKS                       R30 R30 K6 ["createElement"]
      320 GETUPVAL                         R31 32
      321 DUPTABLE                         R32 K69 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      322 MOVE                             R33 R19
      323 CALL                             R33 0 1
      324 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      326 DUPTABLE                         R33 K70 [{"Header", "Content"}]
      327 GETUPVAL                         R34 19
      328 GETTABLEKS                       R34 R34 K6 ["createElement"]
      330 GETUPVAL                         R35 33
      331 DUPTABLE                         R36 K73 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      332 LOADK                            R39 K35 ["Plugin"]
      333 LOADK                            R40 K74 ["HomePage.MyRecentExperiences"]
      334 NAMECALL                         R37 R11 K37 ["getText"]
      336 CALL                             R37 3 1
      337 SETTABLEKS                       R37 R36 K28 ["title"]
      339 LOADK                            R39 K35 ["Plugin"]
      340 LOADK                            R40 K75 ["SeeAll"]
      341 NAMECALL                         R37 R11 K37 ["getText"]
      343 CALL                             R37 3 1
      344 SETTABLEKS                       R37 R36 K71 ["buttonText"]
      346 NEWCLOSURE                       R37 P9
      347 CAPTURE                          VAL R10
      348 CAPTURE                          UPVAL U14
      349 CAPTURE                          VAL R0
      350 SETTABLEKS                       R37 R36 K72 ["onButtonClick"]
      352 MOVE                             R37 R19
      353 CALL                             R37 0 1
      354 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K50 ["Header"]
      359 GETUPVAL                         R34 19
      360 GETTABLEKS                       R34 R34 K6 ["createElement"]
      362 GETUPVAL                         R35 34
      363 GETTABLEKS                       R35 R35 K76 ["Provider"]
      365 DUPTABLE                         R36 K78 [{"value"}]
      366 GETUPVAL                         R37 35
      367 SETTABLEKS                       R37 R36 K77 ["value"]
      369 GETUPVAL                         R37 19
      370 GETTABLEKS                       R37 R37 K6 ["createElement"]
      372 GETUPVAL                         R38 36
      373 DUPTABLE                         R39 K94 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      374 GETIMPORT                        R40 K14 [UDim2.new]
      376 LOADN                            R41 1
      377 LOADN                            R42 0
      378 LOADN                            R43 0
      379 LOADN                            R44 355
      380 CALL                             R40 4 1
      381 SETTABLEKS                       R40 R39 K79 ["Size"]
      383 GETUPVAL                         R40 37
      384 SETTABLEKS                       R40 R39 K80 ["DisplayComponent"]
      386 SETTABLEKS                       R18 R39 K88 ["OnItemCountUpdated"]
      388 GETUPVAL                         R40 38
      389 SETTABLEKS                       R40 R39 K89 ["CellComponent"]
      391 GETIMPORT                        R40 K14 [UDim2.new]
      393 LOADN                            R41 0
      394 LOADN                            R42 224
      395 LOADN                            R43 0
      396 LOADN                            R44 348
      397 CALL                             R40 4 1
      398 SETTABLEKS                       R40 R39 K90 ["CellSize"]
      400 GETIMPORT                        R40 K14 [UDim2.new]
      402 LOADN                            R41 0
      403 LOADN                            R42 16
      404 LOADN                            R43 0
      405 LOADN                            R44 16
      406 CALL                             R40 4 1
      407 SETTABLEKS                       R40 R39 K91 ["CellPadding"]
      409 DUPTABLE                         R40 K108 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      410 GETUPVAL                         R42 6
      411 NAMECALL                         R42 R42 K109 ["GetUserId"]
      413 CALL                             R42 1 -1
      414 FASTCALL                         TOSTRING ; [+2]
      415 GETIMPORT                        R41 K111 [tostring]
      417 CALL                             R41 -1 1
      418 SETTABLEKS                       R41 R40 K101 ["creatorTargetId"]
      420 SETTABLEKS                       R40 R39 K92 ["Query"]
      422 GETUPVAL                         R40 39
      423 SETTABLEKS                       R40 R39 K93 ["FetchItems"]
      425 MOVE                             R40 R19
      426 CALL                             R40 0 1
      427 SETTABLEKS                       R40 R39 K24 ["LayoutOrder"]
      429 CALL                             R37 2 -1
      430 CALL                             R34 -1 1
      431 SETTABLEKS                       R34 R33 K19 ["Content"]
      433 CALL                             R30 3 1
      434 JUMP                             ; [+1]
      435 LOADNIL                          R30
      436 SETTABLEKS                       R30 R29 K52 ["RecentExperiences"]
      438 GETUPVAL                         R30 19
      439 GETTABLEKS                       R30 R30 K6 ["createElement"]
      441 GETUPVAL                         R31 21
      442 DUPTABLE                         R32 K113 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      443 MOVE                             R33 R19
      444 CALL                             R33 0 1
      445 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      447 DUPTABLE                         R33 K70 [{"Header", "Content"}]
      448 GETUPVAL                         R34 19
      449 GETTABLEKS                       R34 R34 K6 ["createElement"]
      451 GETUPVAL                         R35 33
      452 DUPTABLE                         R36 K114 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      453 LOADK                            R39 K35 ["Plugin"]
      454 LOADK                            R40 K115 ["HomePage.Templates.Heading"]
      455 NAMECALL                         R37 R11 K37 ["getText"]
      457 CALL                             R37 3 1
      458 SETTABLEKS                       R37 R36 K28 ["title"]
      460 LOADK                            R39 K35 ["Plugin"]
      461 LOADK                            R40 K116 ["HomePage.Templates.Description"]
      462 NAMECALL                         R37 R11 K37 ["getText"]
      464 CALL                             R37 3 1
      465 SETTABLEKS                       R37 R36 K29 ["description"]
      467 LOADK                            R39 K35 ["Plugin"]
      468 LOADK                            R40 K75 ["SeeAll"]
      469 NAMECALL                         R37 R11 K37 ["getText"]
      471 CALL                             R37 3 1
      472 SETTABLEKS                       R37 R36 K71 ["buttonText"]
      474 NEWCLOSURE                       R37 P10
      475 CAPTURE                          VAL R10
      476 CAPTURE                          UPVAL U14
      477 CAPTURE                          VAL R0
      478 SETTABLEKS                       R37 R36 K72 ["onButtonClick"]
      480 MOVE                             R37 R19
      481 CALL                             R37 0 1
      482 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      484 CALL                             R34 2 1
      485 SETTABLEKS                       R34 R33 K50 ["Header"]
      487 GETUPVAL                         R34 19
      488 GETTABLEKS                       R34 R34 K6 ["createElement"]
      490 GETUPVAL                         R35 36
      491 DUPTABLE                         R36 K117 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      492 GETIMPORT                        R37 K14 [UDim2.new]
      494 LOADN                            R38 1
      495 LOADN                            R39 0
      496 LOADN                            R40 0
      497 LOADN                            R41 264
      498 CALL                             R37 4 1
      499 SETTABLEKS                       R37 R36 K79 ["Size"]
      501 GETUPVAL                         R37 37
      502 SETTABLEKS                       R37 R36 K80 ["DisplayComponent"]
      504 GETUPVAL                         R37 40
      505 SETTABLEKS                       R37 R36 K89 ["CellComponent"]
      507 GETIMPORT                        R37 K14 [UDim2.new]
      509 LOADN                            R38 0
      510 LOADN                            R39 225
      511 LOADN                            R40 0
      512 LOADN                            R41 252
      513 CALL                             R37 4 1
      514 SETTABLEKS                       R37 R36 K90 ["CellSize"]
      516 GETIMPORT                        R37 K14 [UDim2.new]
      518 LOADN                            R38 0
      519 LOADN                            R39 16
      520 LOADN                            R40 0
      521 LOADN                            R41 16
      522 CALL                             R37 4 1
      523 SETTABLEKS                       R37 R36 K91 ["CellPadding"]
      525 GETUPVAL                         R37 41
      526 SETTABLEKS                       R37 R36 K92 ["Query"]
      528 GETUPVAL                         R37 42
      529 SETTABLEKS                       R37 R36 K93 ["FetchItems"]
      531 MOVE                             R37 R19
      532 CALL                             R37 0 1
      533 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      535 CALL                             R34 2 1
      536 SETTABLEKS                       R34 R33 K19 ["Content"]
      538 CALL                             R30 3 1
      539 SETTABLEKS                       R30 R29 K53 ["Templates"]
      541 GETUPVAL                         R30 19
      542 GETTABLEKS                       R30 R30 K6 ["createElement"]
      544 GETUPVAL                         R31 21
      545 DUPTABLE                         R32 K113 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      546 MOVE                             R33 R19
      547 CALL                             R33 0 1
      548 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      550 DUPTABLE                         R33 K70 [{"Header", "Content"}]
      551 GETUPVAL                         R34 19
      552 GETTABLEKS                       R34 R34 K6 ["createElement"]
      554 GETUPVAL                         R35 33
      555 DUPTABLE                         R36 K118 [{"title", "description", "LayoutOrder"}]
      556 LOADK                            R39 K35 ["Plugin"]
      557 LOADK                            R40 K119 ["HomePage.DiscoverStudio.Heading"]
      558 NAMECALL                         R37 R11 K37 ["getText"]
      560 CALL                             R37 3 1
      561 SETTABLEKS                       R37 R36 K28 ["title"]
      563 LOADK                            R39 K35 ["Plugin"]
      564 LOADK                            R40 K120 ["HomePage.DiscoverStudio.Description"]
      565 NAMECALL                         R37 R11 K37 ["getText"]
      567 CALL                             R37 3 1
      568 SETTABLEKS                       R37 R36 K29 ["description"]
      570 MOVE                             R37 R19
      571 CALL                             R37 0 1
      572 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      574 CALL                             R34 2 1
      575 SETTABLEKS                       R34 R33 K50 ["Header"]
      577 GETUPVAL                         R34 19
      578 GETTABLEKS                       R34 R34 K6 ["createElement"]
      580 GETUPVAL                         R35 36
      581 DUPTABLE                         R36 K121 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      582 GETIMPORT                        R37 K14 [UDim2.new]
      584 LOADN                            R38 1
      585 LOADN                            R39 0
      586 LOADN                            R40 0
      587 LOADN                            R41 280
      588 CALL                             R37 4 1
      589 SETTABLEKS                       R37 R36 K79 ["Size"]
      591 GETUPVAL                         R37 37
      592 SETTABLEKS                       R37 R36 K80 ["DisplayComponent"]
      594 GETUPVAL                         R37 43
      595 SETTABLEKS                       R37 R36 K89 ["CellComponent"]
      597 GETIMPORT                        R37 K14 [UDim2.new]
      599 LOADN                            R38 0
      600 LOADN                            R39 225
      601 LOADN                            R40 0
      602 LOADN                            R41 276
      603 CALL                             R37 4 1
      604 SETTABLEKS                       R37 R36 K90 ["CellSize"]
      606 GETIMPORT                        R37 K14 [UDim2.new]
      608 LOADN                            R38 0
      609 LOADN                            R39 16
      610 LOADN                            R40 0
      611 LOADN                            R41 16
      612 CALL                             R37 4 1
      613 SETTABLEKS                       R37 R36 K91 ["CellPadding"]
      615 GETUPVAL                         R37 44
      616 SETTABLEKS                       R37 R36 K92 ["Query"]
      618 SETTABLEKS                       R21 R36 K93 ["FetchItems"]
      620 MOVE                             R37 R19
      621 CALL                             R37 0 1
      622 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      624 CALL                             R34 2 1
      625 SETTABLEKS                       R34 R33 K19 ["Content"]
      627 CALL                             R30 3 1
      628 SETTABLEKS                       R30 R29 K54 ["Momentum"]
      630 GETUPVAL                         R30 19
      631 GETTABLEKS                       R30 R30 K6 ["createElement"]
      633 GETUPVAL                         R31 32
      634 DUPTABLE                         R32 K122 [{"LayoutOrder", "Size"}]
      635 MOVE                             R33 R19
      636 CALL                             R33 0 1
      637 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      639 GETIMPORT                        R33 K14 [UDim2.new]
      641 LOADN                            R34 1
      642 LOADN                            R35 0
      643 LOADN                            R36 0
      644 LOADN                            R37 40
      645 CALL                             R33 4 1
      646 SETTABLEKS                       R33 R32 K79 ["Size"]
      648 CALL                             R30 2 1
      649 SETTABLEKS                       R30 R29 K55 ["Spacer"]
      651 CALL                             R26 3 1
      652 SETTABLEKS                       R26 R25 K19 ["Content"]
      654 CALL                             R22 3 -1
      655 RETURN                           R22 -1

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
      171 GETTABLEKS                       R27 R27 K38 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K5 [require]
      176 GETTABLEKS                       R28 R0 K23 ["Src"]
      178 GETTABLEKS                       R28 R28 K34 ["Network"]
      180 GETTABLEKS                       R28 R28 K39 ["DiscoverHomepageBannerExperienceUnrated"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K5 [require]
      185 GETTABLEKS                       R29 R0 K23 ["Src"]
      187 GETTABLEKS                       R29 R29 K40 ["Resources"]
      189 GETTABLEKS                       R29 R29 K41 ["PlaceholderMomentumContent"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R30 R0 K23 ["Src"]
      196 GETTABLEKS                       R30 R30 K42 ["SharedFlags"]
      198 GETTABLEKS                       R30 R30 K43 ["getFFlagStartPageShowUnratedExperiencesBanner"]
      200 CALL                             R29 1 1
      201 CALL                             R29 0 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETTABLEKS                       R31 R0 K23 ["Src"]
      206 GETTABLEKS                       R31 R31 K42 ["SharedFlags"]
      208 GETTABLEKS                       R31 R31 K44 ["getFFlagStartPageAllowDisableTeamCreate"]
      210 CALL                             R30 1 1
      211 CALL                             R30 0 1
      212 GETIMPORT                        R31 K5 [require]
      214 GETTABLEKS                       R32 R0 K23 ["Src"]
      216 GETTABLEKS                       R32 R32 K42 ["SharedFlags"]
      218 GETTABLEKS                       R32 R32 K45 ["getFFlagLuaStartPageViewPlacesDialog"]
      220 CALL                             R31 1 1
      221 CALL                             R31 0 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K23 ["Src"]
      226 GETTABLEKS                       R33 R33 K42 ["SharedFlags"]
      228 GETTABLEKS                       R33 R33 K46 ["getFStringAgeRestrictedLink"]
      230 CALL                             R32 1 1
      231 GETIMPORT                        R33 K5 [require]
      233 GETTABLEKS                       R34 R0 K23 ["Src"]
      235 GETTABLEKS                       R34 R34 K42 ["SharedFlags"]
      237 GETTABLEKS                       R34 R34 K47 ["getFStringUnratedExperiencesLink"]
      239 CALL                             R33 1 1
      240 GETIMPORT                        R34 K5 [require]
      242 GETTABLEKS                       R35 R0 K6 ["Packages"]
      244 GETTABLEKS                       R35 R35 K48 ["SafeFlags"]
      246 CALL                             R34 1 1
      247 GETTABLEKS                       R35 R34 K49 ["createGetFFlag"]
      249 LOADK                            R36 K50 ["DebugShowStudioTour3"]
      250 CALL                             R35 1 1
      251 GETIMPORT                        R36 K5 [require]
      253 GETTABLEKS                       R37 R0 K23 ["Src"]
      255 GETTABLEKS                       R37 R37 K42 ["SharedFlags"]
      257 GETTABLEKS                       R37 R37 K51 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      259 CALL                             R36 1 1
      260 CALL                             R36 0 1
      261 GETIMPORT                        R37 K5 [require]
      263 GETTABLEKS                       R38 R0 K23 ["Src"]
      265 GETTABLEKS                       R38 R38 K16 ["Util"]
      267 GETTABLEKS                       R38 R38 K52 ["Services"]
      269 CALL                             R37 1 1
      270 GETTABLEKS                       R38 R37 K53 ["StartPageManager"]
      272 GETIMPORT                        R39 K5 [require]
      274 GETTABLEKS                       R40 R0 K23 ["Src"]
      276 GETTABLEKS                       R40 R40 K16 ["Util"]
      278 GETTABLEKS                       R40 R40 K54 ["Telemetry"]
      280 GETTABLEKS                       R40 R40 K55 ["TelemetryContext"]
      282 CALL                             R39 1 1
      283 GETIMPORT                        R40 K5 [require]
      285 GETTABLEKS                       R41 R0 K23 ["Src"]
      287 GETTABLEKS                       R41 R41 K16 ["Util"]
      289 GETTABLEKS                       R41 R41 K54 ["Telemetry"]
      291 GETTABLEKS                       R41 R41 K56 ["StartPageTelemetryEvent"]
      293 CALL                             R40 1 1
      294 GETIMPORT                        R41 K5 [require]
      296 GETTABLEKS                       R42 R0 K23 ["Src"]
      298 GETTABLEKS                       R42 R42 K57 ["Contexts"]
      300 GETTABLEKS                       R42 R42 K58 ["ContextMenuActions"]
      302 CALL                             R41 1 1
      303 GETTABLEKS                       R42 R37 K59 ["StudioService"]
      305 GETIMPORT                        R43 K5 [require]
      307 GETTABLEKS                       R44 R0 K23 ["Src"]
      309 GETTABLEKS                       R44 R44 K16 ["Util"]
      311 GETTABLEKS                       R44 R44 K60 ["Dialogs"]
      313 CALL                             R43 1 1
      314 GETIMPORT                        R44 K5 [require]
      316 GETTABLEKS                       R45 R0 K23 ["Src"]
      318 GETTABLEKS                       R45 R45 K61 ["Hooks"]
      320 GETTABLEKS                       R45 R45 K62 ["useUsername"]
      322 CALL                             R44 1 1
      323 GETIMPORT                        R45 K5 [require]
      325 GETTABLEKS                       R46 R0 K23 ["Src"]
      327 GETTABLEKS                       R46 R46 K42 ["SharedFlags"]
      329 GETTABLEKS                       R46 R46 K63 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      331 CALL                             R45 1 1
      332 CALL                             R45 0 1
      333 GETIMPORT                        R46 K5 [require]
      335 GETTABLEKS                       R47 R0 K23 ["Src"]
      337 GETTABLEKS                       R47 R47 K42 ["SharedFlags"]
      339 GETTABLEKS                       R47 R47 K64 ["getFFlagStartPageBuildGameClickTelemetry"]
      341 CALL                             R46 1 1
      342 CALL                             R46 0 1
      343 GETIMPORT                        R47 K5 [require]
      345 GETTABLEKS                       R48 R0 K6 ["Packages"]
      347 GETTABLEKS                       R48 R48 K24 ["Foundation"]
      349 CALL                             R47 1 1
      350 GETTABLEKS                       R48 R47 K61 ["Hooks"]
      352 GETTABLEKS                       R48 R48 K65 ["useStyleTags"]
      354 GETTABLEKS                       R49 R47 K66 ["View"]
      356 GETTABLEKS                       R50 R47 K67 ["SystemBanner"]
      358 GETTABLEKS                       R51 R47 K68 ["Enums"]
      360 GETTABLEKS                       R51 R51 K69 ["AlertVariant"]
      362 GETTABLEKS                       R52 R47 K68 ["Enums"]
      364 GETTABLEKS                       R52 R52 K70 ["AlertSeverity"]
      366 GETTABLEKS                       R53 R47 K68 ["Enums"]
      368 GETTABLEKS                       R53 R53 K71 ["ButtonVariant"]
      370 MOVE                             R54 R32
      371 CALL                             R54 0 1
      372 MOVE                             R55 R33
      373 CALL                             R55 0 1
      374 DUPCLOSURE                       R56 K72 [PROTO_0]
      375 CAPTURE                          VAL R42
      376 DUPTABLE                         R57 K81 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      377 DUPTABLE                         R58 K82 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      378 NEWTABLE                         R59 0 9
      380 LOADK                            R60 K83 ["ConfigureExperience"]
      381 JUMPIFNOT                        R31 ; [+2]
      382 LOADK                            R61 K84 ["ViewPlaces"]
      383 JUMP                             ; [+1]
      384 LOADK                            R61 K85 [""]
      385 LOADK                            R62 K86 ["ConfigurePlace"]
      386 LOADK                            R63 K87 ["OpenPlace"]
      387 LOADK                            R64 K88 ["OpenACopy"]
      388 LOADK                            R65 K89 ["Archive"]
      389 JUMPIFNOT                        R30 ; [+2]
      390 LOADK                            R66 K90 ["DisableTeamCreate"]
      391 JUMP                             ; [+1]
      392 LOADK                            R66 K85 [""]
      393 LOADK                            R67 K91 ["SaveAs"]
      394 LOADK                            R68 K92 ["RemoveRecent"]
      395 SETLIST                          R59 R60 9 [1]
      397 DUPCLOSURE                       R60 K93 [PROTO_2]
      398 CAPTURE                          VAL R39
      399 CAPTURE                          VAL R5
      400 CAPTURE                          VAL R43
      401 CAPTURE                          VAL R37
      402 CAPTURE                          VAL R11
      403 CAPTURE                          VAL R1
      404 CAPTURE                          VAL R17
      405 CAPTURE                          VAL R9
      406 CAPTURE                          VAL R26
      407 CAPTURE                          VAL R42
      408 CAPTURE                          VAL R38
      409 CAPTURE                          VAL R45
      410 CAPTURE                          VAL R40
      411 CAPTURE                          VAL R46
      412 CAPTURE                          VAL R59
      413 DUPCLOSURE                       R61 K94 [PROTO_6]
      414 CAPTURE                          VAL R39
      415 CAPTURE                          VAL R37
      416 CAPTURE                          VAL R11
      417 CAPTURE                          VAL R1
      418 CAPTURE                          VAL R17
      419 CAPTURE                          VAL R9
      420 CAPTURE                          VAL R26
      421 CAPTURE                          VAL R42
      422 CAPTURE                          VAL R45
      423 CAPTURE                          VAL R40
      424 DUPCLOSURE                       R62 K95 [PROTO_10]
      425 CAPTURE                          VAL R39
      426 CAPTURE                          VAL R37
      427 CAPTURE                          VAL R11
      428 CAPTURE                          VAL R1
      429 CAPTURE                          VAL R17
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R40
      432 CAPTURE                          VAL R38
      433 CAPTURE                          VAL R26
      434 CAPTURE                          VAL R42
      435 DUPCLOSURE                       R63 K96 [PROTO_25]
      436 CAPTURE                          VAL R12
      437 CAPTURE                          VAL R2
      438 CAPTURE                          VAL R48
      439 CAPTURE                          VAL R4
      440 CAPTURE                          VAL R3
      441 CAPTURE                          VAL R29
      442 CAPTURE                          VAL R42
      443 CAPTURE                          VAL R27
      444 CAPTURE                          VAL R39
      445 CAPTURE                          VAL R11
      446 CAPTURE                          VAL R37
      447 CAPTURE                          VAL R38
      448 CAPTURE                          VAL R35
      449 CAPTURE                          VAL R7
      450 CAPTURE                          VAL R40
      451 CAPTURE                          VAL R10
      452 CAPTURE                          VAL R44
      453 CAPTURE                          VAL R28
      454 CAPTURE                          VAL R25
      455 CAPTURE                          VAL R1
      456 CAPTURE                          VAL R14
      457 CAPTURE                          VAL R22
      458 CAPTURE                          VAL R50
      459 CAPTURE                          VAL R51
      460 CAPTURE                          VAL R52
      461 CAPTURE                          VAL R53
      462 CAPTURE                          VAL R54
      463 CAPTURE                          VAL R55
      464 CAPTURE                          VAL R16
      465 CAPTURE                          VAL R36
      466 CAPTURE                          VAL R21
      467 CAPTURE                          VAL R20
      468 CAPTURE                          VAL R49
      469 CAPTURE                          VAL R15
      470 CAPTURE                          VAL R41
      471 CAPTURE                          VAL R59
      472 CAPTURE                          VAL R18
      473 CAPTURE                          VAL R19
      474 CAPTURE                          VAL R60
      475 CAPTURE                          VAL R24
      476 CAPTURE                          VAL R61
      477 CAPTURE                          VAL R57
      478 CAPTURE                          VAL R23
      479 CAPTURE                          VAL R62
      480 CAPTURE                          VAL R58
      481 RETURN                           R63 1
