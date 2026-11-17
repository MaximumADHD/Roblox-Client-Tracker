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
       26 JUMP                             ; [+7]
       27 GETTABLEKS                       R1 R0 K6 ["FilePath"]
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R2 R0 K6 ["FilePath"]
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 7
       35 JUMPIFNOT                        R1 ; [+27]
       36 GETUPVAL                         R1 8
       37 GETUPVAL                         R3 9
       38 DUPTABLE                         R4 K15 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "home_recent_sort", ["name"], ["isBuildGame"]}]
       39 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       41 JUMPIFNOT                        R6 ; [+2]
       42 LOADK                            R5 K16 ["published"]
       43 JUMP                             ; [+6]
       44 GETTABLEKS                       R6 R0 K6 ["FilePath"]
       46 JUMPIFNOT                        R6 ; [+2]
       47 LOADK                            R5 K17 ["local_file"]
       48 JUMP                             ; [+1]
       49 LOADK                            R5 K18 ["unknown"]
       50 SETTABLEKS                       R5 R4 K13 ["name"]
       52 GETUPVAL                         R6 10
       53 JUMPIFNOT                        R6 ; [+3]
       54 GETTABLEKS                       R5 R0 K19 ["IsBuildSealed"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K14 ["isBuildGame"]
       60 NAMECALL                         R1 R1 K20 ["log"]
       62 CALL                             R1 3 0
       63 RETURN                           R0 0

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
       90 GETUPVAL                         R21 17
       91 CALL                             R21 0 1
       92 GETUPVAL                         R22 13
       93 NEWCLOSURE                       R23 P4
       94 CAPTURE                          UPVAL U18
       95 CAPTURE                          VAL R11
       96 CAPTURE                          UPVAL U19
       97 NEWTABLE                         R24 0 1
       99 NAMECALL                         R25 R11 K5 ["getLocale"]
      101 CALL                             R25 1 -1
      102 SETLIST                          R24 R25 -1 [1]
      104 CALL                             R22 2 1
      105 NEWTABLE                         R23 0 1
      107 DUPTABLE                         R24 K9 [{"text", "variant", "onActivated"}]
      108 LOADK                            R27 K10 ["Plugin"]
      109 LOADK                            R28 K11 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      110 NAMECALL                         R25 R11 K12 ["getText"]
      112 CALL                             R25 3 1
      113 SETTABLEKS                       R25 R24 K6 ["text"]
      115 GETUPVAL                         R25 20
      116 GETTABLEKS                       R25 R25 K13 ["Standard"]
      118 SETTABLEKS                       R25 R24 K7 ["variant"]
      120 DUPCLOSURE                       R25 K14 [PROTO_19]
      121 CAPTURE                          UPVAL U11
      122 CAPTURE                          UPVAL U21
      123 SETTABLEKS                       R25 R24 K8 ["onActivated"]
      125 SETLIST                          R23 R24 1 [1]
      127 GETUPVAL                         R24 22
      128 CALL                             R24 0 1
      129 JUMPIF                           R24 ; [+25]
      130 LOADN                            R26 1
      131 DUPTABLE                         R27 K9 [{"text", "variant", "onActivated"}]
      132 LOADK                            R30 K10 ["Plugin"]
      133 LOADK                            R31 K15 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      134 NAMECALL                         R28 R11 K12 ["getText"]
      136 CALL                             R28 3 1
      137 SETTABLEKS                       R28 R27 K6 ["text"]
      139 GETUPVAL                         R28 20
      140 GETTABLEKS                       R28 R28 K16 ["Utility"]
      142 SETTABLEKS                       R28 R27 K7 ["variant"]
      144 DUPCLOSURE                       R28 K17 [PROTO_20]
      145 CAPTURE                          UPVAL U11
      146 CAPTURE                          UPVAL U23
      147 SETTABLEKS                       R28 R27 K8 ["onActivated"]
      149 FASTCALL3                        TABLE_INSERT R23 R26 R27
      151 MOVE                             R25 R23
      152 GETIMPORT                        R24 K20 [table.insert]
      154 CALL                             R24 3 0
      155 GETUPVAL                         R24 24
      156 GETTABLEKS                       R24 R24 K21 ["createElement"]
      158 GETUPVAL                         R25 25
      159 NEWTABLE                         R26 4 0
      161 GETIMPORT                        R27 K25 [Enum.AutomaticSize.Y]
      163 SETTABLEKS                       R27 R26 K26 ["AutomaticCanvasSize"]
      165 GETIMPORT                        R27 K29 [UDim2.new]
      167 LOADN                            R28 1
      168 LOADN                            R29 0
      169 LOADN                            R30 0
      170 LOADN                            R31 0
      171 CALL                             R27 4 1
      172 SETTABLEKS                       R27 R26 K30 ["CanvasSize"]
      174 LOADN                            R27 0
      175 SETTABLEKS                       R27 R26 K31 ["ScrollBarThickness"]
      177 GETUPVAL                         R27 24
      178 GETTABLEKS                       R27 R27 K32 ["Tag"]
      180 SETTABLE                         R5 R26 R27
      181 DUPTABLE                         R27 K35 [{"UnratedExperiencesBanner", "Content"}]
      182 GETUPVAL                         R29 5
      183 JUMPIFNOT                        R29 ; [+53]
      184 JUMPIFNOT                        R6 ; [+52]
      185 JUMPIF                           R8 ; [+51]
      186 GETTABLEKS                       R29 R0 K36 ["hideBanner"]
      188 JUMPIF                           R29 ; [+48]
      189 GETUPVAL                         R28 24
      190 GETTABLEKS                       R28 R28 K21 ["createElement"]
      192 GETUPVAL                         R29 26
      193 DUPTABLE                         R30 K40 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      194 MOVE                             R31 R19
      195 CALL                             R31 0 1
      196 SETTABLEKS                       R31 R30 K39 ["LayoutOrder"]
      198 GETUPVAL                         R31 24
      199 GETTABLEKS                       R31 R31 K21 ["createElement"]
      201 GETUPVAL                         R32 27
      202 DUPTABLE                         R33 K46 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      203 GETUPVAL                         R34 28
      204 GETTABLEKS                       R34 R34 K47 ["Emphasis"]
      206 SETTABLEKS                       R34 R33 K7 ["variant"]
      208 GETUPVAL                         R34 29
      209 GETTABLEKS                       R34 R34 K48 ["Error"]
      211 SETTABLEKS                       R34 R33 K41 ["severity"]
      213 LOADK                            R36 K10 ["Plugin"]
      214 LOADK                            R37 K49 ["UnratedExperiencesBanner.Title"]
      215 NAMECALL                         R34 R11 K12 ["getText"]
      217 CALL                             R34 3 1
      218 SETTABLEKS                       R34 R33 K42 ["title"]
      220 LOADK                            R36 K10 ["Plugin"]
      221 LOADK                            R37 K50 ["UnratedExperiencesBanner.Description"]
      222 NAMECALL                         R34 R11 K12 ["getText"]
      224 CALL                             R34 3 1
      225 SETTABLEKS                       R34 R33 K43 ["description"]
      227 SETTABLEKS                       R23 R33 K44 ["actions"]
      229 NEWCLOSURE                       R34 P7
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R1
      232 SETTABLEKS                       R34 R33 K45 ["onClose"]
      234 CALL                             R31 2 -1
      235 CALL                             R28 -1 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R28
      238 SETTABLEKS                       R28 R27 K33 ["UnratedExperiencesBanner"]
      240 GETUPVAL                         R28 24
      241 GETTABLEKS                       R28 R28 K21 ["createElement"]
      243 GETUPVAL                         R29 26
      244 DUPTABLE                         R30 K52 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      245 MOVE                             R31 R19
      246 CALL                             R31 0 1
      247 SETTABLEKS                       R31 R30 K39 ["LayoutOrder"]
      249 DUPTABLE                         R31 K59 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      250 GETUPVAL                         R32 24
      251 GETTABLEKS                       R32 R32 K21 ["createElement"]
      253 GETUPVAL                         R33 30
      254 DUPTABLE                         R34 K61 [{"title", "trailing", "LayoutOrder"}]
      255 JUMPIFNOT                        R20 ; [+9]
      256 LOADK                            R37 K10 ["Plugin"]
      257 LOADK                            R38 K62 ["HomePage.WelcomeWithUsername"]
      258 DUPTABLE                         R39 K64 [{"username"}]
      259 SETTABLEKS                       R20 R39 K63 ["username"]
      261 NAMECALL                         R35 R11 K12 ["getText"]
      263 CALL                             R35 4 1
      264 JUMP                             ; [+5]
      265 LOADK                            R37 K10 ["Plugin"]
      266 LOADK                            R38 K65 ["HomePage.Welcome"]
      267 NAMECALL                         R35 R11 K12 ["getText"]
      269 CALL                             R35 3 1
      270 SETTABLEKS                       R35 R34 K42 ["title"]
      272 SETTABLEKS                       R21 R34 K60 ["trailing"]
      274 MOVE                             R35 R19
      275 CALL                             R35 0 1
      276 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K53 ["Header"]
      281 GETUPVAL                         R33 31
      282 JUMPIFNOT                        R33 ; [+18]
      283 GETUPVAL                         R32 24
      284 GETTABLEKS                       R32 R32 K21 ["createElement"]
      286 GETUPVAL                         R33 26
      287 DUPTABLE                         R34 K67 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      288 MOVE                             R35 R19
      289 CALL                             R35 0 1
      290 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      292 GETUPVAL                         R35 24
      293 GETTABLEKS                       R35 R35 K21 ["createElement"]
      295 GETUPVAL                         R36 32
      296 NEWTABLE                         R37 0 0
      298 CALL                             R35 2 -1
      299 CALL                             R32 -1 1
      300 JUMP                             ; [+24]
      301 JUMPIFNOT                        R14 ; [+22]
      302 GETUPVAL                         R32 24
      303 GETTABLEKS                       R32 R32 K21 ["createElement"]
      305 GETUPVAL                         R33 26
      306 DUPTABLE                         R34 K67 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      307 MOVE                             R35 R19
      308 CALL                             R35 0 1
      309 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      311 GETUPVAL                         R35 24
      312 GETTABLEKS                       R35 R35 K21 ["createElement"]
      314 GETUPVAL                         R36 33
      315 DUPTABLE                         R37 K68 [{"onClose"}]
      316 NEWCLOSURE                       R38 P8
      317 CAPTURE                          VAL R15
      318 CAPTURE                          UPVAL U11
      319 SETTABLEKS                       R38 R37 K45 ["onClose"]
      321 CALL                             R35 2 -1
      322 CALL                             R32 -1 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R32
      325 SETTABLEKS                       R32 R31 K54 ["TutorialBanner"]
      327 GETTABLEKS                       R33 R0 K69 ["hideRecents"]
      329 JUMPIF                           R33 ; [+122]
      330 JUMPIFNOT                        R16 ; [+121]
      331 GETUPVAL                         R32 24
      332 GETTABLEKS                       R32 R32 K21 ["createElement"]
      334 GETUPVAL                         R33 34
      335 DUPTABLE                         R34 K73 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      336 MOVE                             R35 R19
      337 CALL                             R35 0 1
      338 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      340 DUPTABLE                         R35 K74 [{"Header", "Content"}]
      341 GETUPVAL                         R36 24
      342 GETTABLEKS                       R36 R36 K21 ["createElement"]
      344 GETUPVAL                         R37 35
      345 DUPTABLE                         R38 K77 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      346 LOADK                            R41 K10 ["Plugin"]
      347 LOADK                            R42 K78 ["HomePage.MyRecentExperiences"]
      348 NAMECALL                         R39 R11 K12 ["getText"]
      350 CALL                             R39 3 1
      351 SETTABLEKS                       R39 R38 K42 ["title"]
      353 LOADK                            R41 K10 ["Plugin"]
      354 LOADK                            R42 K79 ["SeeAll"]
      355 NAMECALL                         R39 R11 K12 ["getText"]
      357 CALL                             R39 3 1
      358 SETTABLEKS                       R39 R38 K75 ["buttonText"]
      360 NEWCLOSURE                       R39 P9
      361 CAPTURE                          VAL R10
      362 CAPTURE                          UPVAL U14
      363 CAPTURE                          VAL R0
      364 SETTABLEKS                       R39 R38 K76 ["onButtonClick"]
      366 MOVE                             R39 R19
      367 CALL                             R39 0 1
      368 SETTABLEKS                       R39 R38 K39 ["LayoutOrder"]
      370 CALL                             R36 2 1
      371 SETTABLEKS                       R36 R35 K53 ["Header"]
      373 GETUPVAL                         R36 24
      374 GETTABLEKS                       R36 R36 K21 ["createElement"]
      376 GETUPVAL                         R37 36
      377 GETTABLEKS                       R37 R37 K80 ["Provider"]
      379 DUPTABLE                         R38 K82 [{"value"}]
      380 GETUPVAL                         R39 37
      381 SETTABLEKS                       R39 R38 K81 ["value"]
      383 GETUPVAL                         R39 24
      384 GETTABLEKS                       R39 R39 K21 ["createElement"]
      386 GETUPVAL                         R40 38
      387 DUPTABLE                         R41 K97 [{["Size"], ["DisplayComponent"], ["MaxCount"], ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      388 GETIMPORT                        R42 K29 [UDim2.new]
      390 LOADN                            R43 1
      391 LOADN                            R44 0
      392 LOADN                            R45 0
      393 LOADN                            R46 355
      394 CALL                             R42 4 1
      395 SETTABLEKS                       R42 R41 K83 ["Size"]
      397 GETUPVAL                         R42 39
      398 SETTABLEKS                       R42 R41 K84 ["DisplayComponent"]
      400 GETUPVAL                         R42 40
      401 SETTABLEKS                       R42 R41 K85 ["MaxCount"]
      403 SETTABLEKS                       R18 R41 K91 ["OnItemCountUpdated"]
      405 GETUPVAL                         R42 41
      406 SETTABLEKS                       R42 R41 K92 ["CellComponent"]
      408 GETIMPORT                        R42 K29 [UDim2.new]
      410 LOADN                            R43 0
      411 LOADN                            R44 224
      412 LOADN                            R45 0
      413 LOADN                            R46 348
      414 CALL                             R42 4 1
      415 SETTABLEKS                       R42 R41 K93 ["CellSize"]
      417 GETIMPORT                        R42 K29 [UDim2.new]
      419 LOADN                            R43 0
      420 LOADN                            R44 16
      421 LOADN                            R45 0
      422 LOADN                            R46 16
      423 CALL                             R42 4 1
      424 SETTABLEKS                       R42 R41 K94 ["CellPadding"]
      426 DUPTABLE                         R42 K111 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      427 GETUPVAL                         R44 6
      428 NAMECALL                         R44 R44 K112 ["GetUserId"]
      430 CALL                             R44 1 -1
      431 FASTCALL                         TOSTRING ; [+2]
      432 GETIMPORT                        R43 K114 [tostring]
      434 CALL                             R43 -1 1
      435 SETTABLEKS                       R43 R42 K104 ["creatorTargetId"]
      437 SETTABLEKS                       R42 R41 K95 ["Query"]
      439 GETUPVAL                         R42 42
      440 SETTABLEKS                       R42 R41 K96 ["FetchItems"]
      442 MOVE                             R42 R19
      443 CALL                             R42 0 1
      444 SETTABLEKS                       R42 R41 K39 ["LayoutOrder"]
      446 CALL                             R39 2 -1
      447 CALL                             R36 -1 1
      448 SETTABLEKS                       R36 R35 K34 ["Content"]
      450 CALL                             R32 3 1
      451 JUMP                             ; [+1]
      452 LOADNIL                          R32
      453 SETTABLEKS                       R32 R31 K55 ["RecentExperiences"]
      455 GETUPVAL                         R32 24
      456 GETTABLEKS                       R32 R32 K21 ["createElement"]
      458 GETUPVAL                         R33 26
      459 DUPTABLE                         R34 K116 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      460 MOVE                             R35 R19
      461 CALL                             R35 0 1
      462 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      464 DUPTABLE                         R35 K74 [{"Header", "Content"}]
      465 GETUPVAL                         R36 24
      466 GETTABLEKS                       R36 R36 K21 ["createElement"]
      468 GETUPVAL                         R37 35
      469 DUPTABLE                         R38 K117 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      470 LOADK                            R41 K10 ["Plugin"]
      471 LOADK                            R42 K118 ["HomePage.Templates.Heading"]
      472 NAMECALL                         R39 R11 K12 ["getText"]
      474 CALL                             R39 3 1
      475 SETTABLEKS                       R39 R38 K42 ["title"]
      477 LOADK                            R41 K10 ["Plugin"]
      478 LOADK                            R42 K119 ["HomePage.Templates.Description"]
      479 NAMECALL                         R39 R11 K12 ["getText"]
      481 CALL                             R39 3 1
      482 SETTABLEKS                       R39 R38 K43 ["description"]
      484 LOADK                            R41 K10 ["Plugin"]
      485 LOADK                            R42 K79 ["SeeAll"]
      486 NAMECALL                         R39 R11 K12 ["getText"]
      488 CALL                             R39 3 1
      489 SETTABLEKS                       R39 R38 K75 ["buttonText"]
      491 NEWCLOSURE                       R39 P10
      492 CAPTURE                          VAL R10
      493 CAPTURE                          UPVAL U14
      494 CAPTURE                          VAL R0
      495 SETTABLEKS                       R39 R38 K76 ["onButtonClick"]
      497 MOVE                             R39 R19
      498 CALL                             R39 0 1
      499 SETTABLEKS                       R39 R38 K39 ["LayoutOrder"]
      501 CALL                             R36 2 1
      502 SETTABLEKS                       R36 R35 K53 ["Header"]
      504 GETUPVAL                         R36 24
      505 GETTABLEKS                       R36 R36 K21 ["createElement"]
      507 GETUPVAL                         R37 38
      508 DUPTABLE                         R38 K120 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      509 GETIMPORT                        R39 K29 [UDim2.new]
      511 LOADN                            R40 1
      512 LOADN                            R41 0
      513 LOADN                            R42 0
      514 LOADN                            R43 264
      515 CALL                             R39 4 1
      516 SETTABLEKS                       R39 R38 K83 ["Size"]
      518 GETUPVAL                         R39 39
      519 SETTABLEKS                       R39 R38 K84 ["DisplayComponent"]
      521 GETUPVAL                         R39 40
      522 SETTABLEKS                       R39 R38 K85 ["MaxCount"]
      524 GETUPVAL                         R39 43
      525 SETTABLEKS                       R39 R38 K92 ["CellComponent"]
      527 GETIMPORT                        R39 K29 [UDim2.new]
      529 LOADN                            R40 0
      530 LOADN                            R41 225
      531 LOADN                            R42 0
      532 LOADN                            R43 252
      533 CALL                             R39 4 1
      534 SETTABLEKS                       R39 R38 K93 ["CellSize"]
      536 GETIMPORT                        R39 K29 [UDim2.new]
      538 LOADN                            R40 0
      539 LOADN                            R41 16
      540 LOADN                            R42 0
      541 LOADN                            R43 16
      542 CALL                             R39 4 1
      543 SETTABLEKS                       R39 R38 K94 ["CellPadding"]
      545 GETUPVAL                         R39 44
      546 SETTABLEKS                       R39 R38 K95 ["Query"]
      548 GETUPVAL                         R39 45
      549 SETTABLEKS                       R39 R38 K96 ["FetchItems"]
      551 MOVE                             R39 R19
      552 CALL                             R39 0 1
      553 SETTABLEKS                       R39 R38 K39 ["LayoutOrder"]
      555 CALL                             R36 2 1
      556 SETTABLEKS                       R36 R35 K34 ["Content"]
      558 CALL                             R32 3 1
      559 SETTABLEKS                       R32 R31 K56 ["Templates"]
      561 GETUPVAL                         R32 24
      562 GETTABLEKS                       R32 R32 K21 ["createElement"]
      564 GETUPVAL                         R33 26
      565 DUPTABLE                         R34 K116 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      566 MOVE                             R35 R19
      567 CALL                             R35 0 1
      568 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      570 DUPTABLE                         R35 K74 [{"Header", "Content"}]
      571 GETUPVAL                         R36 24
      572 GETTABLEKS                       R36 R36 K21 ["createElement"]
      574 GETUPVAL                         R37 35
      575 DUPTABLE                         R38 K121 [{"title", "description", "LayoutOrder"}]
      576 LOADK                            R41 K10 ["Plugin"]
      577 LOADK                            R42 K122 ["HomePage.DiscoverStudio.Heading"]
      578 NAMECALL                         R39 R11 K12 ["getText"]
      580 CALL                             R39 3 1
      581 SETTABLEKS                       R39 R38 K42 ["title"]
      583 LOADK                            R41 K10 ["Plugin"]
      584 LOADK                            R42 K123 ["HomePage.DiscoverStudio.Description"]
      585 NAMECALL                         R39 R11 K12 ["getText"]
      587 CALL                             R39 3 1
      588 SETTABLEKS                       R39 R38 K43 ["description"]
      590 MOVE                             R39 R19
      591 CALL                             R39 0 1
      592 SETTABLEKS                       R39 R38 K39 ["LayoutOrder"]
      594 CALL                             R36 2 1
      595 SETTABLEKS                       R36 R35 K53 ["Header"]
      597 GETUPVAL                         R36 24
      598 GETTABLEKS                       R36 R36 K21 ["createElement"]
      600 GETUPVAL                         R37 38
      601 DUPTABLE                         R38 K124 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      602 GETIMPORT                        R39 K29 [UDim2.new]
      604 LOADN                            R40 1
      605 LOADN                            R41 0
      606 LOADN                            R42 0
      607 LOADN                            R43 280
      608 CALL                             R39 4 1
      609 SETTABLEKS                       R39 R38 K83 ["Size"]
      611 GETUPVAL                         R39 39
      612 SETTABLEKS                       R39 R38 K84 ["DisplayComponent"]
      614 GETUPVAL                         R39 46
      615 SETTABLEKS                       R39 R38 K92 ["CellComponent"]
      617 GETIMPORT                        R39 K29 [UDim2.new]
      619 LOADN                            R40 0
      620 LOADN                            R41 225
      621 LOADN                            R42 0
      622 LOADN                            R43 276
      623 CALL                             R39 4 1
      624 SETTABLEKS                       R39 R38 K93 ["CellSize"]
      626 GETIMPORT                        R39 K29 [UDim2.new]
      628 LOADN                            R40 0
      629 LOADN                            R41 16
      630 LOADN                            R42 0
      631 LOADN                            R43 16
      632 CALL                             R39 4 1
      633 SETTABLEKS                       R39 R38 K94 ["CellPadding"]
      635 GETUPVAL                         R39 47
      636 SETTABLEKS                       R39 R38 K95 ["Query"]
      638 SETTABLEKS                       R22 R38 K96 ["FetchItems"]
      640 MOVE                             R39 R19
      641 CALL                             R39 0 1
      642 SETTABLEKS                       R39 R38 K39 ["LayoutOrder"]
      644 CALL                             R36 2 1
      645 SETTABLEKS                       R36 R35 K34 ["Content"]
      647 CALL                             R32 3 1
      648 SETTABLEKS                       R32 R31 K57 ["Momentum"]
      650 GETUPVAL                         R32 24
      651 GETTABLEKS                       R32 R32 K21 ["createElement"]
      653 GETUPVAL                         R33 34
      654 DUPTABLE                         R34 K125 [{"LayoutOrder", "Size"}]
      655 MOVE                             R35 R19
      656 CALL                             R35 0 1
      657 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      659 GETIMPORT                        R35 K29 [UDim2.new]
      661 LOADN                            R36 1
      662 LOADN                            R37 0
      663 LOADN                            R38 0
      664 LOADN                            R39 40
      665 CALL                             R35 4 1
      666 SETTABLEKS                       R35 R34 K83 ["Size"]
      668 CALL                             R32 2 1
      669 SETTABLEKS                       R32 R31 K58 ["Spacer"]
      671 CALL                             R28 3 1
      672 SETTABLEKS                       R28 R27 K34 ["Content"]
      674 CALL                             R24 3 -1
      675 RETURN                           R24 -1

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
      279 GETIMPORT                        R39 K5 [require]
      281 GETTABLEKS                       R40 R0 K23 ["Src"]
      283 GETTABLEKS                       R40 R40 K16 ["Util"]
      285 GETTABLEKS                       R40 R40 K54 ["openLocalFile"]
      287 CALL                             R39 1 1
      288 GETTABLEKS                       R40 R38 K55 ["StartPageManager"]
      290 GETIMPORT                        R41 K5 [require]
      292 GETTABLEKS                       R42 R0 K23 ["Src"]
      294 GETTABLEKS                       R42 R42 K16 ["Util"]
      296 GETTABLEKS                       R42 R42 K56 ["Telemetry"]
      298 GETTABLEKS                       R42 R42 K57 ["TelemetryContext"]
      300 CALL                             R41 1 1
      301 GETIMPORT                        R42 K5 [require]
      303 GETTABLEKS                       R43 R0 K23 ["Src"]
      305 GETTABLEKS                       R43 R43 K16 ["Util"]
      307 GETTABLEKS                       R43 R43 K56 ["Telemetry"]
      309 GETTABLEKS                       R43 R43 K58 ["StartPageTelemetryEvent"]
      311 CALL                             R42 1 1
      312 GETIMPORT                        R43 K5 [require]
      314 GETTABLEKS                       R44 R0 K23 ["Src"]
      316 GETTABLEKS                       R44 R44 K59 ["Contexts"]
      318 GETTABLEKS                       R44 R44 K60 ["ContextMenuActions"]
      320 CALL                             R43 1 1
      321 GETTABLEKS                       R44 R38 K61 ["StudioService"]
      323 GETIMPORT                        R45 K5 [require]
      325 GETTABLEKS                       R46 R0 K23 ["Src"]
      327 GETTABLEKS                       R46 R46 K16 ["Util"]
      329 GETTABLEKS                       R46 R46 K62 ["Dialogs"]
      331 CALL                             R45 1 1
      332 GETIMPORT                        R46 K5 [require]
      334 GETTABLEKS                       R47 R0 K23 ["Src"]
      336 GETTABLEKS                       R47 R47 K63 ["Hooks"]
      338 GETTABLEKS                       R47 R47 K64 ["useUsername"]
      340 CALL                             R46 1 1
      341 GETIMPORT                        R47 K5 [require]
      343 GETTABLEKS                       R48 R0 K23 ["Src"]
      345 GETTABLEKS                       R48 R48 K63 ["Hooks"]
      347 GETTABLEKS                       R48 R48 K65 ["useChannelSwitcherDropdown"]
      349 CALL                             R47 1 1
      350 GETIMPORT                        R48 K5 [require]
      352 GETTABLEKS                       R49 R0 K23 ["Src"]
      354 GETTABLEKS                       R49 R49 K42 ["SharedFlags"]
      356 GETTABLEKS                       R49 R49 K66 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      358 CALL                             R48 1 1
      359 CALL                             R48 0 1
      360 GETIMPORT                        R49 K5 [require]
      362 GETTABLEKS                       R50 R0 K23 ["Src"]
      364 GETTABLEKS                       R50 R50 K42 ["SharedFlags"]
      366 GETTABLEKS                       R50 R50 K67 ["getFFlagStartPageBuildGameClickTelemetry"]
      368 CALL                             R49 1 1
      369 CALL                             R49 0 1
      370 GETIMPORT                        R50 K5 [require]
      372 GETTABLEKS                       R51 R0 K23 ["Src"]
      374 GETTABLEKS                       R51 R51 K42 ["SharedFlags"]
      376 GETTABLEKS                       R51 R51 K68 ["getFIntLuaStartPageHomeCarouselMaxCount"]
      378 CALL                             R50 1 1
      379 CALL                             R50 0 1
      380 GETIMPORT                        R51 K5 [require]
      382 GETTABLEKS                       R52 R0 K6 ["Packages"]
      384 GETTABLEKS                       R52 R52 K24 ["Foundation"]
      386 CALL                             R51 1 1
      387 GETTABLEKS                       R52 R51 K63 ["Hooks"]
      389 GETTABLEKS                       R52 R52 K69 ["useStyleTags"]
      391 GETTABLEKS                       R53 R51 K70 ["View"]
      393 GETTABLEKS                       R54 R51 K71 ["SystemBanner"]
      395 GETTABLEKS                       R55 R51 K72 ["Enums"]
      397 GETTABLEKS                       R55 R55 K73 ["AlertVariant"]
      399 GETTABLEKS                       R56 R51 K72 ["Enums"]
      401 GETTABLEKS                       R56 R56 K74 ["AlertSeverity"]
      403 GETTABLEKS                       R57 R51 K72 ["Enums"]
      405 GETTABLEKS                       R57 R57 K75 ["ButtonVariant"]
      407 MOVE                             R58 R32
      408 CALL                             R58 0 1
      409 MOVE                             R59 R33
      410 CALL                             R59 0 1
      411 DUPCLOSURE                       R60 K76 [PROTO_0]
      412 CAPTURE                          VAL R44
      413 DUPTABLE                         R61 K85 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      414 DUPTABLE                         R62 K86 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      415 NEWTABLE                         R63 0 9
      417 LOADK                            R64 K87 ["ConfigureExperience"]
      418 JUMPIFNOT                        R31 ; [+2]
      419 LOADK                            R65 K88 ["ViewPlaces"]
      420 JUMP                             ; [+1]
      421 LOADK                            R65 K89 [""]
      422 LOADK                            R66 K90 ["ConfigurePlace"]
      423 LOADK                            R67 K91 ["OpenPlace"]
      424 LOADK                            R68 K92 ["OpenACopy"]
      425 LOADK                            R69 K93 ["Archive"]
      426 JUMPIFNOT                        R30 ; [+2]
      427 LOADK                            R70 K94 ["DisableTeamCreate"]
      428 JUMP                             ; [+1]
      429 LOADK                            R70 K89 [""]
      430 LOADK                            R71 K95 ["SaveAs"]
      431 LOADK                            R72 K96 ["RemoveRecent"]
      432 SETLIST                          R63 R64 9 [1]
      434 DUPCLOSURE                       R64 K97 [PROTO_2]
      435 CAPTURE                          VAL R41
      436 CAPTURE                          VAL R5
      437 CAPTURE                          VAL R45
      438 CAPTURE                          VAL R38
      439 CAPTURE                          VAL R11
      440 CAPTURE                          VAL R1
      441 CAPTURE                          VAL R17
      442 CAPTURE                          VAL R9
      443 CAPTURE                          VAL R26
      444 CAPTURE                          VAL R44
      445 CAPTURE                          VAL R39
      446 CAPTURE                          VAL R48
      447 CAPTURE                          VAL R42
      448 CAPTURE                          VAL R49
      449 CAPTURE                          VAL R63
      450 DUPCLOSURE                       R65 K98 [PROTO_6]
      451 CAPTURE                          VAL R41
      452 CAPTURE                          VAL R38
      453 CAPTURE                          VAL R11
      454 CAPTURE                          VAL R1
      455 CAPTURE                          VAL R17
      456 CAPTURE                          VAL R9
      457 CAPTURE                          VAL R26
      458 CAPTURE                          VAL R44
      459 CAPTURE                          VAL R48
      460 CAPTURE                          VAL R42
      461 DUPCLOSURE                       R66 K99 [PROTO_10]
      462 CAPTURE                          VAL R41
      463 CAPTURE                          VAL R38
      464 CAPTURE                          VAL R11
      465 CAPTURE                          VAL R1
      466 CAPTURE                          VAL R17
      467 CAPTURE                          VAL R9
      468 CAPTURE                          VAL R42
      469 CAPTURE                          VAL R40
      470 CAPTURE                          VAL R26
      471 CAPTURE                          VAL R44
      472 DUPCLOSURE                       R67 K100 [PROTO_25]
      473 CAPTURE                          VAL R12
      474 CAPTURE                          VAL R2
      475 CAPTURE                          VAL R52
      476 CAPTURE                          VAL R4
      477 CAPTURE                          VAL R3
      478 CAPTURE                          VAL R29
      479 CAPTURE                          VAL R44
      480 CAPTURE                          VAL R27
      481 CAPTURE                          VAL R41
      482 CAPTURE                          VAL R11
      483 CAPTURE                          VAL R38
      484 CAPTURE                          VAL R40
      485 CAPTURE                          VAL R36
      486 CAPTURE                          VAL R7
      487 CAPTURE                          VAL R42
      488 CAPTURE                          VAL R10
      489 CAPTURE                          VAL R46
      490 CAPTURE                          VAL R47
      491 CAPTURE                          VAL R28
      492 CAPTURE                          VAL R25
      493 CAPTURE                          VAL R57
      494 CAPTURE                          VAL R59
      495 CAPTURE                          VAL R34
      496 CAPTURE                          VAL R58
      497 CAPTURE                          VAL R1
      498 CAPTURE                          VAL R14
      499 CAPTURE                          VAL R22
      500 CAPTURE                          VAL R54
      501 CAPTURE                          VAL R55
      502 CAPTURE                          VAL R56
      503 CAPTURE                          VAL R16
      504 CAPTURE                          VAL R37
      505 CAPTURE                          VAL R21
      506 CAPTURE                          VAL R20
      507 CAPTURE                          VAL R53
      508 CAPTURE                          VAL R15
      509 CAPTURE                          VAL R43
      510 CAPTURE                          VAL R63
      511 CAPTURE                          VAL R18
      512 CAPTURE                          VAL R19
      513 CAPTURE                          VAL R50
      514 CAPTURE                          VAL R64
      515 CAPTURE                          VAL R24
      516 CAPTURE                          VAL R65
      517 CAPTURE                          VAL R61
      518 CAPTURE                          VAL R23
      519 CAPTURE                          VAL R66
      520 CAPTURE                          VAL R62
      521 RETURN                           R67 1
