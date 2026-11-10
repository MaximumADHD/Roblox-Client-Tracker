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
      103 NEWTABLE                         R22 0 1
      105 DUPTABLE                         R23 K9 [{"text", "variant", "onActivated"}]
      106 LOADK                            R26 K10 ["Plugin"]
      107 LOADK                            R27 K11 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      108 NAMECALL                         R24 R11 K12 ["getText"]
      110 CALL                             R24 3 1
      111 SETTABLEKS                       R24 R23 K6 ["text"]
      113 GETUPVAL                         R24 19
      114 GETTABLEKS                       R24 R24 K13 ["Standard"]
      116 SETTABLEKS                       R24 R23 K7 ["variant"]
      118 DUPCLOSURE                       R24 K14 [PROTO_19]
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U20
      121 SETTABLEKS                       R24 R23 K8 ["onActivated"]
      123 SETLIST                          R22 R23 1 [1]
      125 GETUPVAL                         R23 21
      126 CALL                             R23 0 1
      127 JUMPIF                           R23 ; [+25]
      128 LOADN                            R25 1
      129 DUPTABLE                         R26 K9 [{"text", "variant", "onActivated"}]
      130 LOADK                            R29 K10 ["Plugin"]
      131 LOADK                            R30 K15 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      132 NAMECALL                         R27 R11 K12 ["getText"]
      134 CALL                             R27 3 1
      135 SETTABLEKS                       R27 R26 K6 ["text"]
      137 GETUPVAL                         R27 19
      138 GETTABLEKS                       R27 R27 K16 ["Utility"]
      140 SETTABLEKS                       R27 R26 K7 ["variant"]
      142 DUPCLOSURE                       R27 K17 [PROTO_20]
      143 CAPTURE                          UPVAL U11
      144 CAPTURE                          UPVAL U22
      145 SETTABLEKS                       R27 R26 K8 ["onActivated"]
      147 FASTCALL3                        TABLE_INSERT R22 R25 R26
      149 MOVE                             R24 R22
      150 GETIMPORT                        R23 K20 [table.insert]
      152 CALL                             R23 3 0
      153 GETUPVAL                         R23 23
      154 GETTABLEKS                       R23 R23 K21 ["createElement"]
      156 GETUPVAL                         R24 24
      157 NEWTABLE                         R25 4 0
      159 GETIMPORT                        R26 K25 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R26 R25 K26 ["AutomaticCanvasSize"]
      163 GETIMPORT                        R26 K29 [UDim2.new]
      165 LOADN                            R27 1
      166 LOADN                            R28 0
      167 LOADN                            R29 0
      168 LOADN                            R30 0
      169 CALL                             R26 4 1
      170 SETTABLEKS                       R26 R25 K30 ["CanvasSize"]
      172 LOADN                            R26 0
      173 SETTABLEKS                       R26 R25 K31 ["ScrollBarThickness"]
      175 GETUPVAL                         R26 23
      176 GETTABLEKS                       R26 R26 K32 ["Tag"]
      178 SETTABLE                         R5 R25 R26
      179 DUPTABLE                         R26 K35 [{"UnratedExperiencesBanner", "Content"}]
      180 GETUPVAL                         R28 5
      181 JUMPIFNOT                        R28 ; [+53]
      182 JUMPIFNOT                        R6 ; [+52]
      183 JUMPIF                           R8 ; [+51]
      184 GETTABLEKS                       R28 R0 K36 ["hideBanner"]
      186 JUMPIF                           R28 ; [+48]
      187 GETUPVAL                         R27 23
      188 GETTABLEKS                       R27 R27 K21 ["createElement"]
      190 GETUPVAL                         R28 25
      191 DUPTABLE                         R29 K40 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      192 MOVE                             R30 R19
      193 CALL                             R30 0 1
      194 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      196 GETUPVAL                         R30 23
      197 GETTABLEKS                       R30 R30 K21 ["createElement"]
      199 GETUPVAL                         R31 26
      200 DUPTABLE                         R32 K46 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      201 GETUPVAL                         R33 27
      202 GETTABLEKS                       R33 R33 K47 ["Emphasis"]
      204 SETTABLEKS                       R33 R32 K7 ["variant"]
      206 GETUPVAL                         R33 28
      207 GETTABLEKS                       R33 R33 K48 ["Error"]
      209 SETTABLEKS                       R33 R32 K41 ["severity"]
      211 LOADK                            R35 K10 ["Plugin"]
      212 LOADK                            R36 K49 ["UnratedExperiencesBanner.Title"]
      213 NAMECALL                         R33 R11 K12 ["getText"]
      215 CALL                             R33 3 1
      216 SETTABLEKS                       R33 R32 K42 ["title"]
      218 LOADK                            R35 K10 ["Plugin"]
      219 LOADK                            R36 K50 ["UnratedExperiencesBanner.Description"]
      220 NAMECALL                         R33 R11 K12 ["getText"]
      222 CALL                             R33 3 1
      223 SETTABLEKS                       R33 R32 K43 ["description"]
      225 SETTABLEKS                       R22 R32 K44 ["actions"]
      227 NEWCLOSURE                       R33 P7
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R1
      230 SETTABLEKS                       R33 R32 K45 ["onClose"]
      232 CALL                             R30 2 -1
      233 CALL                             R27 -1 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R27
      236 SETTABLEKS                       R27 R26 K33 ["UnratedExperiencesBanner"]
      238 GETUPVAL                         R27 23
      239 GETTABLEKS                       R27 R27 K21 ["createElement"]
      241 GETUPVAL                         R28 25
      242 DUPTABLE                         R29 K52 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      243 MOVE                             R30 R19
      244 CALL                             R30 0 1
      245 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      247 DUPTABLE                         R30 K59 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      248 GETUPVAL                         R31 23
      249 GETTABLEKS                       R31 R31 K21 ["createElement"]
      251 GETUPVAL                         R32 29
      252 DUPTABLE                         R33 K60 [{"title", "LayoutOrder"}]
      253 JUMPIFNOT                        R20 ; [+9]
      254 LOADK                            R36 K10 ["Plugin"]
      255 LOADK                            R37 K61 ["HomePage.WelcomeWithUsername"]
      256 DUPTABLE                         R38 K63 [{"username"}]
      257 SETTABLEKS                       R20 R38 K62 ["username"]
      259 NAMECALL                         R34 R11 K12 ["getText"]
      261 CALL                             R34 4 1
      262 JUMP                             ; [+5]
      263 LOADK                            R36 K10 ["Plugin"]
      264 LOADK                            R37 K64 ["HomePage.Welcome"]
      265 NAMECALL                         R34 R11 K12 ["getText"]
      267 CALL                             R34 3 1
      268 SETTABLEKS                       R34 R33 K42 ["title"]
      270 MOVE                             R34 R19
      271 CALL                             R34 0 1
      272 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      274 CALL                             R31 2 1
      275 SETTABLEKS                       R31 R30 K53 ["Header"]
      277 GETUPVAL                         R32 30
      278 JUMPIFNOT                        R32 ; [+18]
      279 GETUPVAL                         R31 23
      280 GETTABLEKS                       R31 R31 K21 ["createElement"]
      282 GETUPVAL                         R32 25
      283 DUPTABLE                         R33 K66 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      284 MOVE                             R34 R19
      285 CALL                             R34 0 1
      286 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      288 GETUPVAL                         R34 23
      289 GETTABLEKS                       R34 R34 K21 ["createElement"]
      291 GETUPVAL                         R35 31
      292 NEWTABLE                         R36 0 0
      294 CALL                             R34 2 -1
      295 CALL                             R31 -1 1
      296 JUMP                             ; [+24]
      297 JUMPIFNOT                        R14 ; [+22]
      298 GETUPVAL                         R31 23
      299 GETTABLEKS                       R31 R31 K21 ["createElement"]
      301 GETUPVAL                         R32 25
      302 DUPTABLE                         R33 K66 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      303 MOVE                             R34 R19
      304 CALL                             R34 0 1
      305 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      307 GETUPVAL                         R34 23
      308 GETTABLEKS                       R34 R34 K21 ["createElement"]
      310 GETUPVAL                         R35 32
      311 DUPTABLE                         R36 K67 [{"onClose"}]
      312 NEWCLOSURE                       R37 P8
      313 CAPTURE                          VAL R15
      314 CAPTURE                          UPVAL U11
      315 SETTABLEKS                       R37 R36 K45 ["onClose"]
      317 CALL                             R34 2 -1
      318 CALL                             R31 -1 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R31
      321 SETTABLEKS                       R31 R30 K54 ["TutorialBanner"]
      323 GETTABLEKS                       R32 R0 K68 ["hideRecents"]
      325 JUMPIF                           R32 ; [+122]
      326 JUMPIFNOT                        R16 ; [+121]
      327 GETUPVAL                         R31 23
      328 GETTABLEKS                       R31 R31 K21 ["createElement"]
      330 GETUPVAL                         R32 33
      331 DUPTABLE                         R33 K72 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      332 MOVE                             R34 R19
      333 CALL                             R34 0 1
      334 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      336 DUPTABLE                         R34 K73 [{"Header", "Content"}]
      337 GETUPVAL                         R35 23
      338 GETTABLEKS                       R35 R35 K21 ["createElement"]
      340 GETUPVAL                         R36 34
      341 DUPTABLE                         R37 K76 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      342 LOADK                            R40 K10 ["Plugin"]
      343 LOADK                            R41 K77 ["HomePage.MyRecentExperiences"]
      344 NAMECALL                         R38 R11 K12 ["getText"]
      346 CALL                             R38 3 1
      347 SETTABLEKS                       R38 R37 K42 ["title"]
      349 LOADK                            R40 K10 ["Plugin"]
      350 LOADK                            R41 K78 ["SeeAll"]
      351 NAMECALL                         R38 R11 K12 ["getText"]
      353 CALL                             R38 3 1
      354 SETTABLEKS                       R38 R37 K74 ["buttonText"]
      356 NEWCLOSURE                       R38 P9
      357 CAPTURE                          VAL R10
      358 CAPTURE                          UPVAL U14
      359 CAPTURE                          VAL R0
      360 SETTABLEKS                       R38 R37 K75 ["onButtonClick"]
      362 MOVE                             R38 R19
      363 CALL                             R38 0 1
      364 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      366 CALL                             R35 2 1
      367 SETTABLEKS                       R35 R34 K53 ["Header"]
      369 GETUPVAL                         R35 23
      370 GETTABLEKS                       R35 R35 K21 ["createElement"]
      372 GETUPVAL                         R36 35
      373 GETTABLEKS                       R36 R36 K79 ["Provider"]
      375 DUPTABLE                         R37 K81 [{"value"}]
      376 GETUPVAL                         R38 36
      377 SETTABLEKS                       R38 R37 K80 ["value"]
      379 GETUPVAL                         R38 23
      380 GETTABLEKS                       R38 R38 K21 ["createElement"]
      382 GETUPVAL                         R39 37
      383 DUPTABLE                         R40 K96 [{["Size"], ["DisplayComponent"], ["MaxCount"], ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      384 GETIMPORT                        R41 K29 [UDim2.new]
      386 LOADN                            R42 1
      387 LOADN                            R43 0
      388 LOADN                            R44 0
      389 LOADN                            R45 355
      390 CALL                             R41 4 1
      391 SETTABLEKS                       R41 R40 K82 ["Size"]
      393 GETUPVAL                         R41 38
      394 SETTABLEKS                       R41 R40 K83 ["DisplayComponent"]
      396 GETUPVAL                         R41 39
      397 SETTABLEKS                       R41 R40 K84 ["MaxCount"]
      399 SETTABLEKS                       R18 R40 K90 ["OnItemCountUpdated"]
      401 GETUPVAL                         R41 40
      402 SETTABLEKS                       R41 R40 K91 ["CellComponent"]
      404 GETIMPORT                        R41 K29 [UDim2.new]
      406 LOADN                            R42 0
      407 LOADN                            R43 224
      408 LOADN                            R44 0
      409 LOADN                            R45 348
      410 CALL                             R41 4 1
      411 SETTABLEKS                       R41 R40 K92 ["CellSize"]
      413 GETIMPORT                        R41 K29 [UDim2.new]
      415 LOADN                            R42 0
      416 LOADN                            R43 16
      417 LOADN                            R44 0
      418 LOADN                            R45 16
      419 CALL                             R41 4 1
      420 SETTABLEKS                       R41 R40 K93 ["CellPadding"]
      422 DUPTABLE                         R41 K110 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      423 GETUPVAL                         R43 6
      424 NAMECALL                         R43 R43 K111 ["GetUserId"]
      426 CALL                             R43 1 -1
      427 FASTCALL                         TOSTRING ; [+2]
      428 GETIMPORT                        R42 K113 [tostring]
      430 CALL                             R42 -1 1
      431 SETTABLEKS                       R42 R41 K103 ["creatorTargetId"]
      433 SETTABLEKS                       R41 R40 K94 ["Query"]
      435 GETUPVAL                         R41 41
      436 SETTABLEKS                       R41 R40 K95 ["FetchItems"]
      438 MOVE                             R41 R19
      439 CALL                             R41 0 1
      440 SETTABLEKS                       R41 R40 K39 ["LayoutOrder"]
      442 CALL                             R38 2 -1
      443 CALL                             R35 -1 1
      444 SETTABLEKS                       R35 R34 K34 ["Content"]
      446 CALL                             R31 3 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R31
      449 SETTABLEKS                       R31 R30 K55 ["RecentExperiences"]
      451 GETUPVAL                         R31 23
      452 GETTABLEKS                       R31 R31 K21 ["createElement"]
      454 GETUPVAL                         R32 25
      455 DUPTABLE                         R33 K115 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      456 MOVE                             R34 R19
      457 CALL                             R34 0 1
      458 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      460 DUPTABLE                         R34 K73 [{"Header", "Content"}]
      461 GETUPVAL                         R35 23
      462 GETTABLEKS                       R35 R35 K21 ["createElement"]
      464 GETUPVAL                         R36 34
      465 DUPTABLE                         R37 K116 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      466 LOADK                            R40 K10 ["Plugin"]
      467 LOADK                            R41 K117 ["HomePage.Templates.Heading"]
      468 NAMECALL                         R38 R11 K12 ["getText"]
      470 CALL                             R38 3 1
      471 SETTABLEKS                       R38 R37 K42 ["title"]
      473 LOADK                            R40 K10 ["Plugin"]
      474 LOADK                            R41 K118 ["HomePage.Templates.Description"]
      475 NAMECALL                         R38 R11 K12 ["getText"]
      477 CALL                             R38 3 1
      478 SETTABLEKS                       R38 R37 K43 ["description"]
      480 LOADK                            R40 K10 ["Plugin"]
      481 LOADK                            R41 K78 ["SeeAll"]
      482 NAMECALL                         R38 R11 K12 ["getText"]
      484 CALL                             R38 3 1
      485 SETTABLEKS                       R38 R37 K74 ["buttonText"]
      487 NEWCLOSURE                       R38 P10
      488 CAPTURE                          VAL R10
      489 CAPTURE                          UPVAL U14
      490 CAPTURE                          VAL R0
      491 SETTABLEKS                       R38 R37 K75 ["onButtonClick"]
      493 MOVE                             R38 R19
      494 CALL                             R38 0 1
      495 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      497 CALL                             R35 2 1
      498 SETTABLEKS                       R35 R34 K53 ["Header"]
      500 GETUPVAL                         R35 23
      501 GETTABLEKS                       R35 R35 K21 ["createElement"]
      503 GETUPVAL                         R36 37
      504 DUPTABLE                         R37 K119 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      505 GETIMPORT                        R38 K29 [UDim2.new]
      507 LOADN                            R39 1
      508 LOADN                            R40 0
      509 LOADN                            R41 0
      510 LOADN                            R42 264
      511 CALL                             R38 4 1
      512 SETTABLEKS                       R38 R37 K82 ["Size"]
      514 GETUPVAL                         R38 38
      515 SETTABLEKS                       R38 R37 K83 ["DisplayComponent"]
      517 GETUPVAL                         R38 39
      518 SETTABLEKS                       R38 R37 K84 ["MaxCount"]
      520 GETUPVAL                         R38 42
      521 SETTABLEKS                       R38 R37 K91 ["CellComponent"]
      523 GETIMPORT                        R38 K29 [UDim2.new]
      525 LOADN                            R39 0
      526 LOADN                            R40 225
      527 LOADN                            R41 0
      528 LOADN                            R42 252
      529 CALL                             R38 4 1
      530 SETTABLEKS                       R38 R37 K92 ["CellSize"]
      532 GETIMPORT                        R38 K29 [UDim2.new]
      534 LOADN                            R39 0
      535 LOADN                            R40 16
      536 LOADN                            R41 0
      537 LOADN                            R42 16
      538 CALL                             R38 4 1
      539 SETTABLEKS                       R38 R37 K93 ["CellPadding"]
      541 GETUPVAL                         R38 43
      542 SETTABLEKS                       R38 R37 K94 ["Query"]
      544 GETUPVAL                         R38 44
      545 SETTABLEKS                       R38 R37 K95 ["FetchItems"]
      547 MOVE                             R38 R19
      548 CALL                             R38 0 1
      549 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      551 CALL                             R35 2 1
      552 SETTABLEKS                       R35 R34 K34 ["Content"]
      554 CALL                             R31 3 1
      555 SETTABLEKS                       R31 R30 K56 ["Templates"]
      557 GETUPVAL                         R31 23
      558 GETTABLEKS                       R31 R31 K21 ["createElement"]
      560 GETUPVAL                         R32 25
      561 DUPTABLE                         R33 K115 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      562 MOVE                             R34 R19
      563 CALL                             R34 0 1
      564 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      566 DUPTABLE                         R34 K73 [{"Header", "Content"}]
      567 GETUPVAL                         R35 23
      568 GETTABLEKS                       R35 R35 K21 ["createElement"]
      570 GETUPVAL                         R36 34
      571 DUPTABLE                         R37 K120 [{"title", "description", "LayoutOrder"}]
      572 LOADK                            R40 K10 ["Plugin"]
      573 LOADK                            R41 K121 ["HomePage.DiscoverStudio.Heading"]
      574 NAMECALL                         R38 R11 K12 ["getText"]
      576 CALL                             R38 3 1
      577 SETTABLEKS                       R38 R37 K42 ["title"]
      579 LOADK                            R40 K10 ["Plugin"]
      580 LOADK                            R41 K122 ["HomePage.DiscoverStudio.Description"]
      581 NAMECALL                         R38 R11 K12 ["getText"]
      583 CALL                             R38 3 1
      584 SETTABLEKS                       R38 R37 K43 ["description"]
      586 MOVE                             R38 R19
      587 CALL                             R38 0 1
      588 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      590 CALL                             R35 2 1
      591 SETTABLEKS                       R35 R34 K53 ["Header"]
      593 GETUPVAL                         R35 23
      594 GETTABLEKS                       R35 R35 K21 ["createElement"]
      596 GETUPVAL                         R36 37
      597 DUPTABLE                         R37 K123 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      598 GETIMPORT                        R38 K29 [UDim2.new]
      600 LOADN                            R39 1
      601 LOADN                            R40 0
      602 LOADN                            R41 0
      603 LOADN                            R42 280
      604 CALL                             R38 4 1
      605 SETTABLEKS                       R38 R37 K82 ["Size"]
      607 GETUPVAL                         R38 38
      608 SETTABLEKS                       R38 R37 K83 ["DisplayComponent"]
      610 GETUPVAL                         R38 45
      611 SETTABLEKS                       R38 R37 K91 ["CellComponent"]
      613 GETIMPORT                        R38 K29 [UDim2.new]
      615 LOADN                            R39 0
      616 LOADN                            R40 225
      617 LOADN                            R41 0
      618 LOADN                            R42 276
      619 CALL                             R38 4 1
      620 SETTABLEKS                       R38 R37 K92 ["CellSize"]
      622 GETIMPORT                        R38 K29 [UDim2.new]
      624 LOADN                            R39 0
      625 LOADN                            R40 16
      626 LOADN                            R41 0
      627 LOADN                            R42 16
      628 CALL                             R38 4 1
      629 SETTABLEKS                       R38 R37 K93 ["CellPadding"]
      631 GETUPVAL                         R38 46
      632 SETTABLEKS                       R38 R37 K94 ["Query"]
      634 SETTABLEKS                       R21 R37 K95 ["FetchItems"]
      636 MOVE                             R38 R19
      637 CALL                             R38 0 1
      638 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      640 CALL                             R35 2 1
      641 SETTABLEKS                       R35 R34 K34 ["Content"]
      643 CALL                             R31 3 1
      644 SETTABLEKS                       R31 R30 K57 ["Momentum"]
      646 GETUPVAL                         R31 23
      647 GETTABLEKS                       R31 R31 K21 ["createElement"]
      649 GETUPVAL                         R32 33
      650 DUPTABLE                         R33 K124 [{"LayoutOrder", "Size"}]
      651 MOVE                             R34 R19
      652 CALL                             R34 0 1
      653 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      655 GETIMPORT                        R34 K29 [UDim2.new]
      657 LOADN                            R35 1
      658 LOADN                            R36 0
      659 LOADN                            R37 0
      660 LOADN                            R38 40
      661 CALL                             R34 4 1
      662 SETTABLEKS                       R34 R33 K82 ["Size"]
      664 CALL                             R31 2 1
      665 SETTABLEKS                       R31 R30 K58 ["Spacer"]
      667 CALL                             R27 3 1
      668 SETTABLEKS                       R27 R26 K34 ["Content"]
      670 CALL                             R23 3 -1
      671 RETURN                           R23 -1

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
      242 GETTABLEKS                       R35 R0 K23 ["Src"]
      244 GETTABLEKS                       R35 R35 K42 ["SharedFlags"]
      246 GETTABLEKS                       R35 R35 K48 ["getFFlagIsLuobuBuild"]
      248 CALL                             R34 1 1
      249 GETIMPORT                        R35 K5 [require]
      251 GETTABLEKS                       R36 R0 K6 ["Packages"]
      253 GETTABLEKS                       R36 R36 K49 ["SafeFlags"]
      255 CALL                             R35 1 1
      256 GETTABLEKS                       R36 R35 K50 ["createGetFFlag"]
      258 LOADK                            R37 K51 ["DebugShowStudioTour3"]
      259 CALL                             R36 1 1
      260 GETIMPORT                        R37 K5 [require]
      262 GETTABLEKS                       R38 R0 K23 ["Src"]
      264 GETTABLEKS                       R38 R38 K42 ["SharedFlags"]
      266 GETTABLEKS                       R38 R38 K52 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      268 CALL                             R37 1 1
      269 CALL                             R37 0 1
      270 GETIMPORT                        R38 K5 [require]
      272 GETTABLEKS                       R39 R0 K23 ["Src"]
      274 GETTABLEKS                       R39 R39 K16 ["Util"]
      276 GETTABLEKS                       R39 R39 K53 ["Services"]
      278 CALL                             R38 1 1
      279 GETTABLEKS                       R39 R38 K54 ["StartPageManager"]
      281 GETIMPORT                        R40 K5 [require]
      283 GETTABLEKS                       R41 R0 K23 ["Src"]
      285 GETTABLEKS                       R41 R41 K16 ["Util"]
      287 GETTABLEKS                       R41 R41 K55 ["Telemetry"]
      289 GETTABLEKS                       R41 R41 K56 ["TelemetryContext"]
      291 CALL                             R40 1 1
      292 GETIMPORT                        R41 K5 [require]
      294 GETTABLEKS                       R42 R0 K23 ["Src"]
      296 GETTABLEKS                       R42 R42 K16 ["Util"]
      298 GETTABLEKS                       R42 R42 K55 ["Telemetry"]
      300 GETTABLEKS                       R42 R42 K57 ["StartPageTelemetryEvent"]
      302 CALL                             R41 1 1
      303 GETIMPORT                        R42 K5 [require]
      305 GETTABLEKS                       R43 R0 K23 ["Src"]
      307 GETTABLEKS                       R43 R43 K58 ["Contexts"]
      309 GETTABLEKS                       R43 R43 K59 ["ContextMenuActions"]
      311 CALL                             R42 1 1
      312 GETTABLEKS                       R43 R38 K60 ["StudioService"]
      314 GETIMPORT                        R44 K5 [require]
      316 GETTABLEKS                       R45 R0 K23 ["Src"]
      318 GETTABLEKS                       R45 R45 K16 ["Util"]
      320 GETTABLEKS                       R45 R45 K61 ["Dialogs"]
      322 CALL                             R44 1 1
      323 GETIMPORT                        R45 K5 [require]
      325 GETTABLEKS                       R46 R0 K23 ["Src"]
      327 GETTABLEKS                       R46 R46 K62 ["Hooks"]
      329 GETTABLEKS                       R46 R46 K63 ["useUsername"]
      331 CALL                             R45 1 1
      332 GETIMPORT                        R46 K5 [require]
      334 GETTABLEKS                       R47 R0 K23 ["Src"]
      336 GETTABLEKS                       R47 R47 K42 ["SharedFlags"]
      338 GETTABLEKS                       R47 R47 K64 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      340 CALL                             R46 1 1
      341 CALL                             R46 0 1
      342 GETIMPORT                        R47 K5 [require]
      344 GETTABLEKS                       R48 R0 K23 ["Src"]
      346 GETTABLEKS                       R48 R48 K42 ["SharedFlags"]
      348 GETTABLEKS                       R48 R48 K65 ["getFFlagStartPageBuildGameClickTelemetry"]
      350 CALL                             R47 1 1
      351 CALL                             R47 0 1
      352 GETIMPORT                        R48 K5 [require]
      354 GETTABLEKS                       R49 R0 K23 ["Src"]
      356 GETTABLEKS                       R49 R49 K42 ["SharedFlags"]
      358 GETTABLEKS                       R49 R49 K66 ["getFIntLuaStartPageHomeCarouselMaxCount"]
      360 CALL                             R48 1 1
      361 CALL                             R48 0 1
      362 GETIMPORT                        R49 K5 [require]
      364 GETTABLEKS                       R50 R0 K6 ["Packages"]
      366 GETTABLEKS                       R50 R50 K24 ["Foundation"]
      368 CALL                             R49 1 1
      369 GETTABLEKS                       R50 R49 K62 ["Hooks"]
      371 GETTABLEKS                       R50 R50 K67 ["useStyleTags"]
      373 GETTABLEKS                       R51 R49 K68 ["View"]
      375 GETTABLEKS                       R52 R49 K69 ["SystemBanner"]
      377 GETTABLEKS                       R53 R49 K70 ["Enums"]
      379 GETTABLEKS                       R53 R53 K71 ["AlertVariant"]
      381 GETTABLEKS                       R54 R49 K70 ["Enums"]
      383 GETTABLEKS                       R54 R54 K72 ["AlertSeverity"]
      385 GETTABLEKS                       R55 R49 K70 ["Enums"]
      387 GETTABLEKS                       R55 R55 K73 ["ButtonVariant"]
      389 MOVE                             R56 R32
      390 CALL                             R56 0 1
      391 MOVE                             R57 R33
      392 CALL                             R57 0 1
      393 DUPCLOSURE                       R58 K74 [PROTO_0]
      394 CAPTURE                          VAL R43
      395 DUPTABLE                         R59 K83 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      396 DUPTABLE                         R60 K84 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      397 NEWTABLE                         R61 0 9
      399 LOADK                            R62 K85 ["ConfigureExperience"]
      400 JUMPIFNOT                        R31 ; [+2]
      401 LOADK                            R63 K86 ["ViewPlaces"]
      402 JUMP                             ; [+1]
      403 LOADK                            R63 K87 [""]
      404 LOADK                            R64 K88 ["ConfigurePlace"]
      405 LOADK                            R65 K89 ["OpenPlace"]
      406 LOADK                            R66 K90 ["OpenACopy"]
      407 LOADK                            R67 K91 ["Archive"]
      408 JUMPIFNOT                        R30 ; [+2]
      409 LOADK                            R68 K92 ["DisableTeamCreate"]
      410 JUMP                             ; [+1]
      411 LOADK                            R68 K87 [""]
      412 LOADK                            R69 K93 ["SaveAs"]
      413 LOADK                            R70 K94 ["RemoveRecent"]
      414 SETLIST                          R61 R62 9 [1]
      416 DUPCLOSURE                       R62 K95 [PROTO_2]
      417 CAPTURE                          VAL R40
      418 CAPTURE                          VAL R5
      419 CAPTURE                          VAL R44
      420 CAPTURE                          VAL R38
      421 CAPTURE                          VAL R11
      422 CAPTURE                          VAL R1
      423 CAPTURE                          VAL R17
      424 CAPTURE                          VAL R9
      425 CAPTURE                          VAL R26
      426 CAPTURE                          VAL R43
      427 CAPTURE                          VAL R39
      428 CAPTURE                          VAL R46
      429 CAPTURE                          VAL R41
      430 CAPTURE                          VAL R47
      431 CAPTURE                          VAL R61
      432 DUPCLOSURE                       R63 K96 [PROTO_6]
      433 CAPTURE                          VAL R40
      434 CAPTURE                          VAL R38
      435 CAPTURE                          VAL R11
      436 CAPTURE                          VAL R1
      437 CAPTURE                          VAL R17
      438 CAPTURE                          VAL R9
      439 CAPTURE                          VAL R26
      440 CAPTURE                          VAL R43
      441 CAPTURE                          VAL R46
      442 CAPTURE                          VAL R41
      443 DUPCLOSURE                       R64 K97 [PROTO_10]
      444 CAPTURE                          VAL R40
      445 CAPTURE                          VAL R38
      446 CAPTURE                          VAL R11
      447 CAPTURE                          VAL R1
      448 CAPTURE                          VAL R17
      449 CAPTURE                          VAL R9
      450 CAPTURE                          VAL R41
      451 CAPTURE                          VAL R39
      452 CAPTURE                          VAL R26
      453 CAPTURE                          VAL R43
      454 DUPCLOSURE                       R65 K98 [PROTO_25]
      455 CAPTURE                          VAL R12
      456 CAPTURE                          VAL R2
      457 CAPTURE                          VAL R50
      458 CAPTURE                          VAL R4
      459 CAPTURE                          VAL R3
      460 CAPTURE                          VAL R29
      461 CAPTURE                          VAL R43
      462 CAPTURE                          VAL R27
      463 CAPTURE                          VAL R40
      464 CAPTURE                          VAL R11
      465 CAPTURE                          VAL R38
      466 CAPTURE                          VAL R39
      467 CAPTURE                          VAL R36
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R41
      470 CAPTURE                          VAL R10
      471 CAPTURE                          VAL R45
      472 CAPTURE                          VAL R28
      473 CAPTURE                          VAL R25
      474 CAPTURE                          VAL R55
      475 CAPTURE                          VAL R57
      476 CAPTURE                          VAL R34
      477 CAPTURE                          VAL R56
      478 CAPTURE                          VAL R1
      479 CAPTURE                          VAL R14
      480 CAPTURE                          VAL R22
      481 CAPTURE                          VAL R52
      482 CAPTURE                          VAL R53
      483 CAPTURE                          VAL R54
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R37
      486 CAPTURE                          VAL R21
      487 CAPTURE                          VAL R20
      488 CAPTURE                          VAL R51
      489 CAPTURE                          VAL R15
      490 CAPTURE                          VAL R42
      491 CAPTURE                          VAL R61
      492 CAPTURE                          VAL R18
      493 CAPTURE                          VAL R19
      494 CAPTURE                          VAL R48
      495 CAPTURE                          VAL R62
      496 CAPTURE                          VAL R24
      497 CAPTURE                          VAL R63
      498 CAPTURE                          VAL R59
      499 CAPTURE                          VAL R23
      500 CAPTURE                          VAL R64
      501 CAPTURE                          VAL R60
      502 RETURN                           R65 1
