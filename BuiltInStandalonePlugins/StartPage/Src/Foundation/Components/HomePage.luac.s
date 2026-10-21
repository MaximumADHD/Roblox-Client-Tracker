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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialBannerClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
      151 NEWTABLE                         R34 0 1
      153 NAMECALL                         R35 R11 K8 ["getLocale"]
      155 CALL                             R35 1 -1
      156 SETLIST                          R34 R35 -1 [1]
      158 CALL                             R32 2 1
      159 GETUPVAL                         R33 25
      160 GETTABLEKS                       R33 R33 K9 ["createElement"]
      162 GETUPVAL                         R34 26
      163 NEWTABLE                         R35 4 0
      165 GETIMPORT                        R36 K13 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R36 R35 K14 ["AutomaticCanvasSize"]
      169 GETIMPORT                        R36 K17 [UDim2.new]
      171 LOADN                            R37 1
      172 LOADN                            R38 0
      173 LOADN                            R39 0
      174 LOADN                            R40 0
      175 CALL                             R36 4 1
      176 SETTABLEKS                       R36 R35 K18 ["CanvasSize"]
      178 LOADN                            R36 0
      179 SETTABLEKS                       R36 R35 K19 ["ScrollBarThickness"]
      181 GETUPVAL                         R36 25
      182 GETTABLEKS                       R36 R36 K20 ["Tag"]
      184 SETTABLE                         R5 R35 R36
      185 DUPTABLE                         R36 K26 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "AgeReverificationBanner", "UnratedExperiencesBanner", "Content"}]
      186 GETUPVAL                         R38 13
      187 JUMPIFNOT                        R38 ; [+81]
      188 JUMPIFNOT                        R24 ; [+80]
      189 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      191 JUMPIF                           R38 ; [+77]
      192 GETUPVAL                         R37 25
      193 GETTABLEKS                       R37 R37 K9 ["createElement"]
      195 GETUPVAL                         R38 27
      196 DUPTABLE                         R39 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      197 GETUPVAL                         R40 28
      198 GETTABLEKS                       R40 R40 K35 ["Emphasis"]
      200 SETTABLEKS                       R40 R39 K28 ["variant"]
      202 GETUPVAL                         R40 29
      203 GETTABLEKS                       R40 R40 K36 ["Info"]
      205 SETTABLEKS                       R40 R39 K29 ["severity"]
      207 LOADK                            R42 K37 ["Plugin"]
      208 LOADK                            R43 K38 ["VerifyAgeBanner.Title"]
      209 NAMECALL                         R40 R11 K39 ["getText"]
      211 CALL                             R40 3 1
      212 SETTABLEKS                       R40 R39 K30 ["title"]
      214 LOADK                            R42 K37 ["Plugin"]
      215 LOADK                            R43 K40 ["VerifyAgeBanner.Body"]
      216 NAMECALL                         R40 R11 K39 ["getText"]
      218 CALL                             R40 3 1
      219 SETTABLEKS                       R40 R39 K31 ["description"]
      221 NEWTABLE                         R40 0 2
      223 DUPTABLE                         R41 K43 [{"text", "variant", "onActivated"}]
      224 LOADK                            R44 K37 ["Plugin"]
      225 LOADK                            R45 K44 ["VerifyAgeBanner.SecondaryAction"]
      226 NAMECALL                         R42 R11 K39 ["getText"]
      228 CALL                             R42 3 1
      229 SETTABLEKS                       R42 R41 K41 ["text"]
      231 GETUPVAL                         R42 30
      232 GETTABLEKS                       R42 R42 K45 ["Utility"]
      234 SETTABLEKS                       R42 R41 K28 ["variant"]
      236 NEWCLOSURE                       R42 P6
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          UPVAL U31
      239 CAPTURE                          VAL R31
      240 SETTABLEKS                       R42 R41 K42 ["onActivated"]
      242 DUPTABLE                         R42 K43 [{"text", "variant", "onActivated"}]
      243 LOADK                            R45 K37 ["Plugin"]
      244 LOADK                            R46 K46 ["VerifyAgeBanner.PrimaryAction"]
      245 NAMECALL                         R43 R11 K39 ["getText"]
      247 CALL                             R43 3 1
      248 SETTABLEKS                       R43 R42 K41 ["text"]
      250 GETUPVAL                         R43 30
      251 GETTABLEKS                       R43 R43 K47 ["Standard"]
      253 SETTABLEKS                       R43 R42 K28 ["variant"]
      255 NEWCLOSURE                       R43 P7
      256 CAPTURE                          UPVAL U11
      257 CAPTURE                          UPVAL U32
      258 CAPTURE                          VAL R31
      259 SETTABLEKS                       R43 R42 K42 ["onActivated"]
      261 SETLIST                          R40 R41 2 [1]
      263 SETTABLEKS                       R40 R39 K32 ["actions"]
      265 SETTABLEKS                       R28 R39 K33 ["onClose"]
      267 CALL                             R37 2 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R37
      270 SETTABLEKS                       R37 R36 K21 ["VerifyAgeAlertBanner"]
      272 GETUPVAL                         R38 14
      273 JUMPIFNOT                        R38 ; [+78]
      274 JUMPIFNOT                        R25 ; [+77]
      275 JUMPIF                           R24 ; [+76]
      276 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      278 JUMPIF                           R38 ; [+73]
      279 GETUPVAL                         R37 25
      280 GETTABLEKS                       R37 R37 K9 ["createElement"]
      282 GETUPVAL                         R38 27
      283 DUPTABLE                         R39 K48 [{"variant", "severity", "title", "actions", "onClose"}]
      284 GETUPVAL                         R40 28
      285 GETTABLEKS                       R40 R40 K47 ["Standard"]
      287 SETTABLEKS                       R40 R39 K28 ["variant"]
      289 GETUPVAL                         R40 29
      290 GETTABLEKS                       R40 R40 K49 ["Warning"]
      292 SETTABLEKS                       R40 R39 K29 ["severity"]
      294 LOADK                            R42 K22 ["EstablishTrustBanner"]
      295 LOADK                            R43 K50 ["Title"]
      296 NAMECALL                         R40 R11 K39 ["getText"]
      298 CALL                             R40 3 1
      299 SETTABLEKS                       R40 R39 K30 ["title"]
      301 NEWTABLE                         R40 0 2
      303 DUPTABLE                         R41 K43 [{"text", "variant", "onActivated"}]
      304 LOADK                            R44 K37 ["Plugin"]
      305 LOADK                            R45 K44 ["VerifyAgeBanner.SecondaryAction"]
      306 NAMECALL                         R42 R11 K39 ["getText"]
      308 CALL                             R42 3 1
      309 SETTABLEKS                       R42 R41 K41 ["text"]
      311 GETUPVAL                         R42 30
      312 GETTABLEKS                       R42 R42 K45 ["Utility"]
      314 SETTABLEKS                       R42 R41 K28 ["variant"]
      316 NEWCLOSURE                       R42 P8
      317 CAPTURE                          UPVAL U11
      318 CAPTURE                          UPVAL U33
      319 CAPTURE                          VAL R31
      320 SETTABLEKS                       R42 R41 K42 ["onActivated"]
      322 DUPTABLE                         R42 K43 [{"text", "variant", "onActivated"}]
      323 LOADK                            R45 K37 ["Plugin"]
      324 LOADK                            R46 K46 ["VerifyAgeBanner.PrimaryAction"]
      325 NAMECALL                         R43 R11 K39 ["getText"]
      327 CALL                             R43 3 1
      328 SETTABLEKS                       R43 R42 K41 ["text"]
      330 GETUPVAL                         R43 30
      331 GETTABLEKS                       R43 R43 K47 ["Standard"]
      333 SETTABLEKS                       R43 R42 K28 ["variant"]
      335 NEWCLOSURE                       R43 P9
      336 CAPTURE                          REF R26
      337 CAPTURE                          UPVAL U34
      338 CAPTURE                          REF R18
      339 CAPTURE                          UPVAL U11
      340 CAPTURE                          UPVAL U35
      341 CAPTURE                          VAL R31
      342 SETTABLEKS                       R43 R42 K42 ["onActivated"]
      344 SETLIST                          R40 R41 2 [1]
      346 SETTABLEKS                       R40 R39 K32 ["actions"]
      348 SETTABLEKS                       R29 R39 K33 ["onClose"]
      350 CALL                             R37 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R37
      353 SETTABLEKS                       R37 R36 K22 ["EstablishTrustBanner"]
      355 GETUPVAL                         R38 36
      356 JUMPIFNOT                        R38 ; [+78]
      357 JUMPIFNOT                        R27 ; [+77]
      358 JUMPIF                           R24 ; [+76]
      359 GETUPVAL                         R38 14
      360 JUMPIFNOT                        R38 ; [+1]
      361 JUMPIF                           R25 ; [+73]
      362 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      364 JUMPIF                           R38 ; [+70]
      365 GETUPVAL                         R37 25
      366 GETTABLEKS                       R37 R37 K9 ["createElement"]
      368 GETUPVAL                         R38 27
      369 DUPTABLE                         R39 K48 [{"variant", "severity", "title", "actions", "onClose"}]
      370 GETUPVAL                         R40 28
      371 GETTABLEKS                       R40 R40 K47 ["Standard"]
      373 SETTABLEKS                       R40 R39 K28 ["variant"]
      375 GETUPVAL                         R40 29
      376 GETTABLEKS                       R40 R40 K36 ["Info"]
      378 SETTABLEKS                       R40 R39 K29 ["severity"]
      380 LOADK                            R42 K23 ["AgeReverificationBanner"]
      381 LOADK                            R43 K50 ["Title"]
      382 NAMECALL                         R40 R11 K39 ["getText"]
      384 CALL                             R40 3 1
      385 SETTABLEKS                       R40 R39 K30 ["title"]
      387 NEWTABLE                         R40 0 2
      389 DUPTABLE                         R41 K43 [{"text", "variant", "onActivated"}]
      390 LOADK                            R44 K37 ["Plugin"]
      391 LOADK                            R45 K44 ["VerifyAgeBanner.SecondaryAction"]
      392 NAMECALL                         R42 R11 K39 ["getText"]
      394 CALL                             R42 3 1
      395 SETTABLEKS                       R42 R41 K41 ["text"]
      397 GETUPVAL                         R42 30
      398 GETTABLEKS                       R42 R42 K45 ["Utility"]
      400 SETTABLEKS                       R42 R41 K28 ["variant"]
      402 NEWCLOSURE                       R42 P10
      403 CAPTURE                          UPVAL U11
      404 CAPTURE                          UPVAL U37
      405 CAPTURE                          VAL R31
      406 SETTABLEKS                       R42 R41 K42 ["onActivated"]
      408 DUPTABLE                         R42 K43 [{"text", "variant", "onActivated"}]
      409 LOADK                            R45 K23 ["AgeReverificationBanner"]
      410 LOADK                            R46 K51 ["PrimaryAction"]
      411 NAMECALL                         R43 R11 K39 ["getText"]
      413 CALL                             R43 3 1
      414 SETTABLEKS                       R43 R42 K41 ["text"]
      416 GETUPVAL                         R43 30
      417 GETTABLEKS                       R43 R43 K47 ["Standard"]
      419 SETTABLEKS                       R43 R42 K28 ["variant"]
      421 NEWCLOSURE                       R43 P11
      422 CAPTURE                          UPVAL U11
      423 CAPTURE                          UPVAL U38
      424 CAPTURE                          VAL R31
      425 SETTABLEKS                       R43 R42 K42 ["onActivated"]
      427 SETLIST                          R40 R41 2 [1]
      429 SETTABLEKS                       R40 R39 K32 ["actions"]
      431 SETTABLEKS                       R30 R39 K33 ["onClose"]
      433 CALL                             R37 2 1
      434 JUMP                             ; [+1]
      435 LOADNIL                          R37
      436 SETTABLEKS                       R37 R36 K23 ["AgeReverificationBanner"]
      438 GETUPVAL                         R38 5
      439 JUMPIFNOT                        R38 ; [+93]
      440 JUMPIFNOT                        R6 ; [+92]
      441 JUMPIF                           R8 ; [+91]
      442 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      444 JUMPIF                           R38 ; [+88]
      445 GETUPVAL                         R37 25
      446 GETTABLEKS                       R37 R37 K9 ["createElement"]
      448 GETUPVAL                         R38 39
      449 DUPTABLE                         R39 K55 [{["tag"] = "size-full-0 auto-y padding-top-xxsmall", ["LayoutOrder"]}]
      450 MOVE                             R40 R22
      451 CALL                             R40 0 1
      452 SETTABLEKS                       R40 R39 K54 ["LayoutOrder"]
      454 GETUPVAL                         R40 25
      455 GETTABLEKS                       R40 R40 K9 ["createElement"]
      457 GETUPVAL                         R41 27
      458 DUPTABLE                         R42 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      459 GETUPVAL                         R43 28
      460 GETTABLEKS                       R43 R43 K35 ["Emphasis"]
      462 SETTABLEKS                       R43 R42 K28 ["variant"]
      464 GETUPVAL                         R43 29
      465 GETTABLEKS                       R43 R43 K56 ["Error"]
      467 SETTABLEKS                       R43 R42 K29 ["severity"]
      469 LOADK                            R45 K37 ["Plugin"]
      470 LOADK                            R46 K57 ["UnratedExperiencesBanner.Title"]
      471 NAMECALL                         R43 R11 K39 ["getText"]
      473 CALL                             R43 3 1
      474 SETTABLEKS                       R43 R42 K30 ["title"]
      476 LOADK                            R45 K37 ["Plugin"]
      477 LOADK                            R46 K58 ["UnratedExperiencesBanner.Description"]
      478 NAMECALL                         R43 R11 K39 ["getText"]
      480 CALL                             R43 3 1
      481 SETTABLEKS                       R43 R42 K31 ["description"]
      483 NEWTABLE                         R43 0 2
      485 DUPTABLE                         R44 K43 [{"text", "variant", "onActivated"}]
      486 LOADK                            R47 K37 ["Plugin"]
      487 LOADK                            R48 K59 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      488 NAMECALL                         R45 R11 K39 ["getText"]
      490 CALL                             R45 3 1
      491 SETTABLEKS                       R45 R44 K41 ["text"]
      493 GETUPVAL                         R45 30
      494 GETTABLEKS                       R45 R45 K45 ["Utility"]
      496 SETTABLEKS                       R45 R44 K28 ["variant"]
      498 DUPCLOSURE                       R45 K60 [PROTO_26]
      499 CAPTURE                          UPVAL U11
      500 CAPTURE                          UPVAL U40
      501 SETTABLEKS                       R45 R44 K42 ["onActivated"]
      503 DUPTABLE                         R45 K43 [{"text", "variant", "onActivated"}]
      504 LOADK                            R48 K37 ["Plugin"]
      505 LOADK                            R49 K61 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      506 NAMECALL                         R46 R11 K39 ["getText"]
      508 CALL                             R46 3 1
      509 SETTABLEKS                       R46 R45 K41 ["text"]
      511 GETUPVAL                         R46 30
      512 GETTABLEKS                       R46 R46 K47 ["Standard"]
      514 SETTABLEKS                       R46 R45 K28 ["variant"]
      516 DUPCLOSURE                       R46 K62 [PROTO_27]
      517 CAPTURE                          UPVAL U11
      518 CAPTURE                          UPVAL U41
      519 SETTABLEKS                       R46 R45 K42 ["onActivated"]
      521 SETLIST                          R43 R44 2 [1]
      523 SETTABLEKS                       R43 R42 K32 ["actions"]
      525 NEWCLOSURE                       R43 P14
      526 CAPTURE                          VAL R9
      527 CAPTURE                          VAL R1
      528 SETTABLEKS                       R43 R42 K33 ["onClose"]
      530 CALL                             R40 2 -1
      531 CALL                             R37 -1 1
      532 JUMP                             ; [+1]
      533 LOADNIL                          R37
      534 SETTABLEKS                       R37 R36 K24 ["UnratedExperiencesBanner"]
      536 GETUPVAL                         R37 25
      537 GETTABLEKS                       R37 R37 K9 ["createElement"]
      539 GETUPVAL                         R38 39
      540 DUPTABLE                         R39 K64 [{["LayoutOrder"], ["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small"}]
      541 MOVE                             R40 R22
      542 CALL                             R40 0 1
      543 SETTABLEKS                       R40 R39 K54 ["LayoutOrder"]
      545 DUPTABLE                         R40 K71 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      546 GETUPVAL                         R41 25
      547 GETTABLEKS                       R41 R41 K9 ["createElement"]
      549 GETUPVAL                         R42 42
      550 DUPTABLE                         R43 K72 [{"title", "LayoutOrder"}]
      551 JUMPIFNOT                        R23 ; [+9]
      552 LOADK                            R46 K37 ["Plugin"]
      553 LOADK                            R47 K73 ["HomePage.WelcomeWithUsername"]
      554 DUPTABLE                         R48 K75 [{"username"}]
      555 SETTABLEKS                       R23 R48 K74 ["username"]
      557 NAMECALL                         R44 R11 K39 ["getText"]
      559 CALL                             R44 4 1
      560 JUMP                             ; [+5]
      561 LOADK                            R46 K37 ["Plugin"]
      562 LOADK                            R47 K76 ["HomePage.Welcome"]
      563 NAMECALL                         R44 R11 K39 ["getText"]
      565 CALL                             R44 3 1
      566 SETTABLEKS                       R44 R43 K30 ["title"]
      568 MOVE                             R44 R22
      569 CALL                             R44 0 1
      570 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      572 CALL                             R41 2 1
      573 SETTABLEKS                       R41 R40 K65 ["Header"]
      575 GETUPVAL                         R42 43
      576 JUMPIFNOT                        R42 ; [+18]
      577 GETUPVAL                         R41 25
      578 GETTABLEKS                       R41 R41 K9 ["createElement"]
      580 GETUPVAL                         R42 39
      581 DUPTABLE                         R43 K78 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      582 MOVE                             R44 R22
      583 CALL                             R44 0 1
      584 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      586 GETUPVAL                         R44 25
      587 GETTABLEKS                       R44 R44 K9 ["createElement"]
      589 GETUPVAL                         R45 44
      590 NEWTABLE                         R46 0 0
      592 CALL                             R44 2 -1
      593 CALL                             R41 -1 1
      594 JUMP                             ; [+24]
      595 JUMPIFNOT                        R14 ; [+22]
      596 GETUPVAL                         R41 25
      597 GETTABLEKS                       R41 R41 K9 ["createElement"]
      599 GETUPVAL                         R42 39
      600 DUPTABLE                         R43 K78 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-bottom-medium"}]
      601 MOVE                             R44 R22
      602 CALL                             R44 0 1
      603 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      605 GETUPVAL                         R44 25
      606 GETTABLEKS                       R44 R44 K9 ["createElement"]
      608 GETUPVAL                         R45 45
      609 DUPTABLE                         R46 K79 [{"onClose"}]
      610 NEWCLOSURE                       R47 P15
      611 CAPTURE                          VAL R15
      612 CAPTURE                          UPVAL U11
      613 SETTABLEKS                       R47 R46 K33 ["onClose"]
      615 CALL                             R44 2 -1
      616 CALL                             R41 -1 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R41
      619 SETTABLEKS                       R41 R40 K66 ["TutorialBanner"]
      621 GETTABLEKS                       R42 R0 K80 ["hideRecents"]
      623 JUMPIF                           R42 ; [+119]
      624 JUMPIFNOT                        R16 ; [+118]
      625 GETUPVAL                         R41 25
      626 GETTABLEKS                       R41 R41 K9 ["createElement"]
      628 GETUPVAL                         R42 46
      629 DUPTABLE                         R43 K84 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "--start-page-RecentExperiences-section"}]
      630 MOVE                             R44 R22
      631 CALL                             R44 0 1
      632 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      634 DUPTABLE                         R44 K85 [{"Header", "Content"}]
      635 GETUPVAL                         R45 25
      636 GETTABLEKS                       R45 R45 K9 ["createElement"]
      638 GETUPVAL                         R46 47
      639 DUPTABLE                         R47 K88 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      640 LOADK                            R50 K37 ["Plugin"]
      641 LOADK                            R51 K89 ["HomePage.MyRecentExperiences"]
      642 NAMECALL                         R48 R11 K39 ["getText"]
      644 CALL                             R48 3 1
      645 SETTABLEKS                       R48 R47 K30 ["title"]
      647 LOADK                            R50 K37 ["Plugin"]
      648 LOADK                            R51 K90 ["SeeAll"]
      649 NAMECALL                         R48 R11 K39 ["getText"]
      651 CALL                             R48 3 1
      652 SETTABLEKS                       R48 R47 K86 ["buttonText"]
      654 NEWCLOSURE                       R48 P16
      655 CAPTURE                          VAL R10
      656 CAPTURE                          UPVAL U17
      657 CAPTURE                          VAL R0
      658 SETTABLEKS                       R48 R47 K87 ["onButtonClick"]
      660 MOVE                             R48 R22
      661 CALL                             R48 0 1
      662 SETTABLEKS                       R48 R47 K54 ["LayoutOrder"]
      664 CALL                             R45 2 1
      665 SETTABLEKS                       R45 R44 K65 ["Header"]
      667 GETUPVAL                         R45 25
      668 GETTABLEKS                       R45 R45 K9 ["createElement"]
      670 GETUPVAL                         R46 48
      671 GETTABLEKS                       R46 R46 K91 ["Provider"]
      673 DUPTABLE                         R47 K93 [{"value"}]
      674 GETUPVAL                         R48 49
      675 SETTABLEKS                       R48 R47 K92 ["value"]
      677 GETUPVAL                         R48 25
      678 GETTABLEKS                       R48 R48 K9 ["createElement"]
      680 GETUPVAL                         R49 50
      681 DUPTABLE                         R50 K109 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["PageSize"] = 10, ["ShowRecentAPIGames"] = True, ["ShowRecentLocalFiles"] = True, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      682 GETIMPORT                        R51 K17 [UDim2.new]
      684 LOADN                            R52 1
      685 LOADN                            R53 0
      686 LOADN                            R54 0
      687 LOADN                            R55 355
      688 CALL                             R51 4 1
      689 SETTABLEKS                       R51 R50 K94 ["Size"]
      691 GETUPVAL                         R51 51
      692 SETTABLEKS                       R51 R50 K95 ["DisplayComponent"]
      694 SETTABLEKS                       R21 R50 K103 ["OnItemCountUpdated"]
      696 GETUPVAL                         R51 52
      697 SETTABLEKS                       R51 R50 K104 ["CellComponent"]
      699 GETIMPORT                        R51 K17 [UDim2.new]
      701 LOADN                            R52 0
      702 LOADN                            R53 224
      703 LOADN                            R54 0
      704 LOADN                            R55 348
      705 CALL                             R51 4 1
      706 SETTABLEKS                       R51 R50 K105 ["CellSize"]
      708 GETIMPORT                        R51 K17 [UDim2.new]
      710 LOADN                            R52 0
      711 LOADN                            R53 16
      712 LOADN                            R54 0
      713 LOADN                            R55 16
      714 CALL                             R51 4 1
      715 SETTABLEKS                       R51 R50 K106 ["CellPadding"]
      717 DUPTABLE                         R51 K123 [{["searchKey"] = "Recents", ["search"] = "", ["creatorType"] = "User", ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["pageSize"] = 10, ["getRecentLocalFiles"] = True, ["getRecentAPIGames"] = True}]
      718 GETUPVAL                         R53 6
      719 NAMECALL                         R53 R53 K124 ["GetUserId"]
      721 CALL                             R53 1 -1
      722 FASTCALL                         TOSTRING ; [+2]
      723 GETIMPORT                        R52 K126 [tostring]
      725 CALL                             R52 -1 1
      726 SETTABLEKS                       R52 R51 K116 ["creatorTargetId"]
      728 SETTABLEKS                       R51 R50 K107 ["Query"]
      730 GETUPVAL                         R51 53
      731 SETTABLEKS                       R51 R50 K108 ["FetchItems"]
      733 MOVE                             R51 R22
      734 CALL                             R51 0 1
      735 SETTABLEKS                       R51 R50 K54 ["LayoutOrder"]
      737 CALL                             R48 2 -1
      738 CALL                             R45 -1 1
      739 SETTABLEKS                       R45 R44 K25 ["Content"]
      741 CALL                             R41 3 1
      742 JUMP                             ; [+1]
      743 LOADNIL                          R41
      744 SETTABLEKS                       R41 R40 K67 ["RecentExperiences"]
      746 GETUPVAL                         R41 25
      747 GETTABLEKS                       R41 R41 K9 ["createElement"]
      749 GETUPVAL                         R42 39
      750 DUPTABLE                         R43 K128 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      751 MOVE                             R44 R22
      752 CALL                             R44 0 1
      753 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      755 DUPTABLE                         R44 K85 [{"Header", "Content"}]
      756 GETUPVAL                         R45 25
      757 GETTABLEKS                       R45 R45 K9 ["createElement"]
      759 GETUPVAL                         R46 47
      760 DUPTABLE                         R47 K129 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      761 LOADK                            R50 K37 ["Plugin"]
      762 LOADK                            R51 K130 ["HomePage.Templates.Heading"]
      763 NAMECALL                         R48 R11 K39 ["getText"]
      765 CALL                             R48 3 1
      766 SETTABLEKS                       R48 R47 K30 ["title"]
      768 LOADK                            R50 K37 ["Plugin"]
      769 LOADK                            R51 K131 ["HomePage.Templates.Description"]
      770 NAMECALL                         R48 R11 K39 ["getText"]
      772 CALL                             R48 3 1
      773 SETTABLEKS                       R48 R47 K31 ["description"]
      775 LOADK                            R50 K37 ["Plugin"]
      776 LOADK                            R51 K90 ["SeeAll"]
      777 NAMECALL                         R48 R11 K39 ["getText"]
      779 CALL                             R48 3 1
      780 SETTABLEKS                       R48 R47 K86 ["buttonText"]
      782 NEWCLOSURE                       R48 P17
      783 CAPTURE                          VAL R10
      784 CAPTURE                          UPVAL U17
      785 CAPTURE                          VAL R0
      786 SETTABLEKS                       R48 R47 K87 ["onButtonClick"]
      788 MOVE                             R48 R22
      789 CALL                             R48 0 1
      790 SETTABLEKS                       R48 R47 K54 ["LayoutOrder"]
      792 CALL                             R45 2 1
      793 SETTABLEKS                       R45 R44 K65 ["Header"]
      795 GETUPVAL                         R45 25
      796 GETTABLEKS                       R45 R45 K9 ["createElement"]
      798 GETUPVAL                         R46 50
      799 DUPTABLE                         R47 K132 [{["Size"], ["DisplayComponent"], ["MaxCount"] = 6, ["CellComponent"], ["CellSize"], ["CellPadding"], ["Query"], ["FetchItems"], ["LayoutOrder"]}]
      800 GETIMPORT                        R48 K17 [UDim2.new]
      802 LOADN                            R49 1
      803 LOADN                            R50 0
      804 LOADN                            R51 0
      805 LOADN                            R52 264
      806 CALL                             R48 4 1
      807 SETTABLEKS                       R48 R47 K94 ["Size"]
      809 GETUPVAL                         R48 51
      810 SETTABLEKS                       R48 R47 K95 ["DisplayComponent"]
      812 GETUPVAL                         R48 54
      813 SETTABLEKS                       R48 R47 K104 ["CellComponent"]
      815 GETIMPORT                        R48 K17 [UDim2.new]
      817 LOADN                            R49 0
      818 LOADN                            R50 225
      819 LOADN                            R51 0
      820 LOADN                            R52 252
      821 CALL                             R48 4 1
      822 SETTABLEKS                       R48 R47 K105 ["CellSize"]
      824 GETIMPORT                        R48 K17 [UDim2.new]
      826 LOADN                            R49 0
      827 LOADN                            R50 16
      828 LOADN                            R51 0
      829 LOADN                            R52 16
      830 CALL                             R48 4 1
      831 SETTABLEKS                       R48 R47 K106 ["CellPadding"]
      833 GETUPVAL                         R48 55
      834 SETTABLEKS                       R48 R47 K107 ["Query"]
      836 GETUPVAL                         R48 56
      837 SETTABLEKS                       R48 R47 K108 ["FetchItems"]
      839 MOVE                             R48 R22
      840 CALL                             R48 0 1
      841 SETTABLEKS                       R48 R47 K54 ["LayoutOrder"]
      843 CALL                             R45 2 1
      844 SETTABLEKS                       R45 R44 K25 ["Content"]
      846 CALL                             R41 3 1
      847 SETTABLEKS                       R41 R40 K68 ["Templates"]
      849 GETUPVAL                         R41 25
      850 GETTABLEKS                       R41 R41 K9 ["createElement"]
      852 GETUPVAL                         R42 39
      853 DUPTABLE                         R43 K128 [{["LayoutOrder"], ["tag"] = "col gap-large size-full-0 auto-y"}]
      854 MOVE                             R44 R22
      855 CALL                             R44 0 1
      856 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      858 DUPTABLE                         R44 K85 [{"Header", "Content"}]
      859 GETUPVAL                         R45 25
      860 GETTABLEKS                       R45 R45 K9 ["createElement"]
      862 GETUPVAL                         R46 47
      863 DUPTABLE                         R47 K133 [{"title", "description", "LayoutOrder"}]
      864 LOADK                            R50 K37 ["Plugin"]
      865 LOADK                            R51 K134 ["HomePage.DiscoverStudio.Heading"]
      866 NAMECALL                         R48 R11 K39 ["getText"]
      868 CALL                             R48 3 1
      869 SETTABLEKS                       R48 R47 K30 ["title"]
      871 LOADK                            R50 K37 ["Plugin"]
      872 LOADK                            R51 K135 ["HomePage.DiscoverStudio.Description"]
      873 NAMECALL                         R48 R11 K39 ["getText"]
      875 CALL                             R48 3 1
      876 SETTABLEKS                       R48 R47 K31 ["description"]
      878 MOVE                             R48 R22
      879 CALL                             R48 0 1
      880 SETTABLEKS                       R48 R47 K54 ["LayoutOrder"]
      882 CALL                             R45 2 1
      883 SETTABLEKS                       R45 R44 K65 ["Header"]
      885 GETUPVAL                         R45 25
      886 GETTABLEKS                       R45 R45 K9 ["createElement"]
      888 GETUPVAL                         R46 50
      889 DUPTABLE                         R47 K136 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      890 GETIMPORT                        R48 K17 [UDim2.new]
      892 LOADN                            R49 1
      893 LOADN                            R50 0
      894 LOADN                            R51 0
      895 LOADN                            R52 280
      896 CALL                             R48 4 1
      897 SETTABLEKS                       R48 R47 K94 ["Size"]
      899 GETUPVAL                         R48 51
      900 SETTABLEKS                       R48 R47 K95 ["DisplayComponent"]
      902 GETUPVAL                         R48 57
      903 SETTABLEKS                       R48 R47 K104 ["CellComponent"]
      905 GETIMPORT                        R48 K17 [UDim2.new]
      907 LOADN                            R49 0
      908 LOADN                            R50 225
      909 LOADN                            R51 0
      910 LOADN                            R52 276
      911 CALL                             R48 4 1
      912 SETTABLEKS                       R48 R47 K105 ["CellSize"]
      914 GETIMPORT                        R48 K17 [UDim2.new]
      916 LOADN                            R49 0
      917 LOADN                            R50 16
      918 LOADN                            R51 0
      919 LOADN                            R52 16
      920 CALL                             R48 4 1
      921 SETTABLEKS                       R48 R47 K106 ["CellPadding"]
      923 GETUPVAL                         R48 58
      924 SETTABLEKS                       R48 R47 K107 ["Query"]
      926 SETTABLEKS                       R32 R47 K108 ["FetchItems"]
      928 MOVE                             R48 R22
      929 CALL                             R48 0 1
      930 SETTABLEKS                       R48 R47 K54 ["LayoutOrder"]
      932 CALL                             R45 2 1
      933 SETTABLEKS                       R45 R44 K25 ["Content"]
      935 CALL                             R41 3 1
      936 SETTABLEKS                       R41 R40 K69 ["Momentum"]
      938 GETUPVAL                         R41 25
      939 GETTABLEKS                       R41 R41 K9 ["createElement"]
      941 GETUPVAL                         R42 46
      942 DUPTABLE                         R43 K137 [{"LayoutOrder", "Size"}]
      943 MOVE                             R44 R22
      944 CALL                             R44 0 1
      945 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      947 GETIMPORT                        R44 K17 [UDim2.new]
      949 LOADN                            R45 1
      950 LOADN                            R46 0
      951 LOADN                            R47 0
      952 LOADN                            R48 40
      953 CALL                             R44 4 1
      954 SETTABLEKS                       R44 R43 K94 ["Size"]
      956 CALL                             R41 2 1
      957 SETTABLEKS                       R41 R40 K70 ["Spacer"]
      959 CALL                             R37 3 1
      960 SETTABLEKS                       R37 R36 K25 ["Content"]
      962 CALL                             R33 3 -1
      963 CLOSEUPVALS                      R18
      964 RETURN                           R33 -1

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
      198 GETTABLEKS                       R30 R30 K43 ["getFFlagLuaStartPageVerifyAgeBanner"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K5 [require]
      203 GETTABLEKS                       R31 R0 K23 ["Src"]
      205 GETTABLEKS                       R31 R31 K42 ["SharedFlags"]
      207 GETTABLEKS                       R31 R31 K44 ["getFFlagStartPageEstablishTrustBanner"]
      209 CALL                             R30 1 1
      210 CALL                             R30 0 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETTABLEKS                       R32 R0 K23 ["Src"]
      215 GETTABLEKS                       R32 R32 K42 ["SharedFlags"]
      217 GETTABLEKS                       R32 R32 K45 ["getFFlagStartPageFAEReverification"]
      219 CALL                             R31 1 1
      220 CALL                             R31 0 1
      221 GETIMPORT                        R32 K5 [require]
      223 GETTABLEKS                       R33 R0 K23 ["Src"]
      225 GETTABLEKS                       R33 R33 K42 ["SharedFlags"]
      227 GETTABLEKS                       R33 R33 K46 ["getFFlagStartPageTrustedConnectionShowUpsellDialog"]
      229 CALL                             R32 1 1
      230 CALL                             R32 0 1
      231 GETIMPORT                        R33 K5 [require]
      233 GETTABLEKS                       R34 R0 K23 ["Src"]
      235 GETTABLEKS                       R34 R34 K42 ["SharedFlags"]
      237 GETTABLEKS                       R34 R34 K47 ["getFFlagStartPageShowUnratedExperiencesBanner"]
      239 CALL                             R33 1 1
      240 CALL                             R33 0 1
      241 GETIMPORT                        R34 K5 [require]
      243 GETTABLEKS                       R35 R0 K23 ["Src"]
      245 GETTABLEKS                       R35 R35 K42 ["SharedFlags"]
      247 GETTABLEKS                       R35 R35 K48 ["getFFlagStartPageAllowDisableTeamCreate"]
      249 CALL                             R34 1 1
      250 CALL                             R34 0 1
      251 GETIMPORT                        R35 K5 [require]
      253 GETTABLEKS                       R36 R0 K23 ["Src"]
      255 GETTABLEKS                       R36 R36 K42 ["SharedFlags"]
      257 GETTABLEKS                       R36 R36 K49 ["getFFlagLuaStartPageViewPlacesDialog"]
      259 CALL                             R35 1 1
      260 CALL                             R35 0 1
      261 GETIMPORT                        R36 K5 [require]
      263 GETTABLEKS                       R37 R0 K23 ["Src"]
      265 GETTABLEKS                       R37 R37 K42 ["SharedFlags"]
      267 GETTABLEKS                       R37 R37 K50 ["getFStringAgeRestrictedLink"]
      269 CALL                             R36 1 1
      270 GETIMPORT                        R37 K5 [require]
      272 GETTABLEKS                       R38 R0 K23 ["Src"]
      274 GETTABLEKS                       R38 R38 K42 ["SharedFlags"]
      276 GETTABLEKS                       R38 R38 K51 ["getFStringUnratedExperiencesLink"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K23 ["Src"]
      283 GETTABLEKS                       R39 R39 K42 ["SharedFlags"]
      285 GETTABLEKS                       R39 R39 K52 ["getFStringLuaStartPageVerifyAgeLink"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K5 [require]
      290 GETTABLEKS                       R40 R0 K23 ["Src"]
      292 GETTABLEKS                       R40 R40 K42 ["SharedFlags"]
      294 GETTABLEKS                       R40 R40 K53 ["getFStringLuaStartPageCAEDevForumLink"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K5 [require]
      299 GETTABLEKS                       R41 R0 K23 ["Src"]
      301 GETTABLEKS                       R41 R41 K42 ["SharedFlags"]
      303 GETTABLEKS                       R41 R41 K54 ["getFStringReVerifyAgeLink"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K5 [require]
      308 GETTABLEKS                       R42 R0 K23 ["Src"]
      310 GETTABLEKS                       R42 R42 K42 ["SharedFlags"]
      312 GETTABLEKS                       R42 R42 K55 ["getFStringLuaStartPageFAEDevForumLink"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K5 [require]
      317 GETTABLEKS                       R43 R0 K23 ["Src"]
      319 GETTABLEKS                       R43 R43 K42 ["SharedFlags"]
      321 GETTABLEKS                       R43 R43 K56 ["getFStringStartPageEstablishTrustDevForumLink"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K5 [require]
      326 GETTABLEKS                       R44 R0 K23 ["Src"]
      328 GETTABLEKS                       R44 R44 K42 ["SharedFlags"]
      330 GETTABLEKS                       R44 R44 K57 ["getFStringStartPageImpactedExperiencesLink"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K5 [require]
      335 GETTABLEKS                       R45 R0 K6 ["Packages"]
      337 GETTABLEKS                       R45 R45 K58 ["SafeFlags"]
      339 CALL                             R44 1 1
      340 GETTABLEKS                       R45 R44 K59 ["createGetFFlag"]
      342 LOADK                            R46 K60 ["DebugShowStudioTour3"]
      343 CALL                             R45 1 1
      344 GETIMPORT                        R46 K5 [require]
      346 GETTABLEKS                       R47 R0 K23 ["Src"]
      348 GETTABLEKS                       R47 R47 K42 ["SharedFlags"]
      350 GETTABLEKS                       R47 R47 K61 ["getFFlagLuaStartPagePublishEligibilityBanner"]
      352 CALL                             R46 1 1
      353 CALL                             R46 0 1
      354 GETIMPORT                        R47 K5 [require]
      356 GETTABLEKS                       R48 R0 K23 ["Src"]
      358 GETTABLEKS                       R48 R48 K16 ["Util"]
      360 GETTABLEKS                       R48 R48 K62 ["Services"]
      362 CALL                             R47 1 1
      363 GETTABLEKS                       R48 R47 K63 ["StartPageManager"]
      365 GETIMPORT                        R49 K5 [require]
      367 GETTABLEKS                       R50 R0 K23 ["Src"]
      369 GETTABLEKS                       R50 R50 K16 ["Util"]
      371 GETTABLEKS                       R50 R50 K64 ["Telemetry"]
      373 GETTABLEKS                       R50 R50 K65 ["TelemetryContext"]
      375 CALL                             R49 1 1
      376 GETIMPORT                        R50 K5 [require]
      378 GETTABLEKS                       R51 R0 K23 ["Src"]
      380 GETTABLEKS                       R51 R51 K16 ["Util"]
      382 GETTABLEKS                       R51 R51 K64 ["Telemetry"]
      384 GETTABLEKS                       R51 R51 K66 ["StartPageTelemetryEvent"]
      386 CALL                             R50 1 1
      387 GETIMPORT                        R51 K5 [require]
      389 GETTABLEKS                       R52 R0 K23 ["Src"]
      391 GETTABLEKS                       R52 R52 K16 ["Util"]
      393 GETTABLEKS                       R52 R52 K64 ["Telemetry"]
      395 GETTABLEKS                       R52 R52 K67 ["StudioSafetyUpsellClickedEvent"]
      397 CALL                             R51 1 1
      398 GETIMPORT                        R52 K5 [require]
      400 GETTABLEKS                       R53 R0 K23 ["Src"]
      402 GETTABLEKS                       R53 R53 K68 ["Contexts"]
      404 GETTABLEKS                       R53 R53 K69 ["ContextMenuActions"]
      406 CALL                             R52 1 1
      407 GETTABLEKS                       R53 R47 K70 ["StudioService"]
      409 GETTABLEKS                       R54 R47 K71 ["RbxAnalyticsService"]
      411 GETIMPORT                        R55 K5 [require]
      413 GETTABLEKS                       R56 R0 K23 ["Src"]
      415 GETTABLEKS                       R56 R56 K16 ["Util"]
      417 GETTABLEKS                       R56 R56 K72 ["Dialogs"]
      419 CALL                             R55 1 1
      420 GETIMPORT                        R56 K5 [require]
      422 GETTABLEKS                       R57 R0 K23 ["Src"]
      424 GETTABLEKS                       R57 R57 K73 ["Hooks"]
      426 GETTABLEKS                       R57 R57 K74 ["useUsername"]
      428 CALL                             R56 1 1
      429 GETIMPORT                        R57 K5 [require]
      431 GETTABLEKS                       R58 R0 K23 ["Src"]
      433 GETTABLEKS                       R58 R58 K73 ["Hooks"]
      435 GETTABLEKS                       R58 R58 K75 ["useShowVerifyAgeBanner"]
      437 CALL                             R57 1 1
      438 GETIMPORT                        R58 K5 [require]
      440 GETTABLEKS                       R59 R0 K23 ["Src"]
      442 GETTABLEKS                       R59 R59 K73 ["Hooks"]
      444 GETTABLEKS                       R59 R59 K76 ["useEstablishTrustDialog"]
      446 CALL                             R58 1 1
      447 GETIMPORT                        R59 K5 [require]
      449 GETTABLEKS                       R60 R0 K23 ["Src"]
      451 GETTABLEKS                       R60 R60 K42 ["SharedFlags"]
      453 GETTABLEKS                       R60 R60 K77 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      455 CALL                             R59 1 1
      456 CALL                             R59 0 1
      457 GETIMPORT                        R60 K5 [require]
      459 GETTABLEKS                       R61 R0 K23 ["Src"]
      461 GETTABLEKS                       R61 R61 K42 ["SharedFlags"]
      463 GETTABLEKS                       R61 R61 K78 ["getFFlagStartPageBuildGameClickTelemetry"]
      465 CALL                             R60 1 1
      466 CALL                             R60 0 1
      467 GETIMPORT                        R61 K5 [require]
      469 GETTABLEKS                       R62 R0 K6 ["Packages"]
      471 GETTABLEKS                       R62 R62 K24 ["Foundation"]
      473 CALL                             R61 1 1
      474 GETTABLEKS                       R62 R61 K73 ["Hooks"]
      476 GETTABLEKS                       R62 R62 K79 ["useStyleTags"]
      478 GETTABLEKS                       R63 R61 K80 ["View"]
      480 GETTABLEKS                       R64 R61 K81 ["SystemBanner"]
      482 GETTABLEKS                       R65 R61 K82 ["Enums"]
      484 GETTABLEKS                       R65 R65 K83 ["AlertVariant"]
      486 GETTABLEKS                       R66 R61 K82 ["Enums"]
      488 GETTABLEKS                       R66 R66 K84 ["AlertSeverity"]
      490 GETTABLEKS                       R67 R61 K82 ["Enums"]
      492 GETTABLEKS                       R67 R67 K85 ["ButtonVariant"]
      494 MOVE                             R68 R36
      495 CALL                             R68 0 1
      496 MOVE                             R69 R37
      497 CALL                             R69 0 1
      498 DUPCLOSURE                       R70 K86 [PROTO_0]
      499 CAPTURE                          VAL R53
      500 DUPTABLE                         R71 K95 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 30}]
      501 DUPTABLE                         R72 K96 [{["searchKey"] = "Network", ["pageSize"] = 30}]
      502 NEWTABLE                         R73 0 9
      504 LOADK                            R74 K97 ["ConfigureExperience"]
      505 JUMPIFNOT                        R35 ; [+2]
      506 LOADK                            R75 K98 ["ViewPlaces"]
      507 JUMP                             ; [+1]
      508 LOADK                            R75 K99 [""]
      509 LOADK                            R76 K100 ["ConfigurePlace"]
      510 LOADK                            R77 K101 ["OpenPlace"]
      511 LOADK                            R78 K102 ["OpenACopy"]
      512 LOADK                            R79 K103 ["Archive"]
      513 JUMPIFNOT                        R34 ; [+2]
      514 LOADK                            R80 K104 ["DisableTeamCreate"]
      515 JUMP                             ; [+1]
      516 LOADK                            R80 K99 [""]
      517 LOADK                            R81 K105 ["SaveAs"]
      518 LOADK                            R82 K106 ["RemoveRecent"]
      519 SETLIST                          R73 R74 9 [1]
      521 DUPCLOSURE                       R74 K107 [PROTO_2]
      522 CAPTURE                          VAL R49
      523 CAPTURE                          VAL R5
      524 CAPTURE                          VAL R55
      525 CAPTURE                          VAL R47
      526 CAPTURE                          VAL R11
      527 CAPTURE                          VAL R1
      528 CAPTURE                          VAL R17
      529 CAPTURE                          VAL R9
      530 CAPTURE                          VAL R26
      531 CAPTURE                          VAL R53
      532 CAPTURE                          VAL R48
      533 CAPTURE                          VAL R59
      534 CAPTURE                          VAL R50
      535 CAPTURE                          VAL R60
      536 CAPTURE                          VAL R73
      537 DUPCLOSURE                       R75 K108 [PROTO_6]
      538 CAPTURE                          VAL R49
      539 CAPTURE                          VAL R47
      540 CAPTURE                          VAL R11
      541 CAPTURE                          VAL R1
      542 CAPTURE                          VAL R17
      543 CAPTURE                          VAL R9
      544 CAPTURE                          VAL R26
      545 CAPTURE                          VAL R53
      546 CAPTURE                          VAL R59
      547 CAPTURE                          VAL R50
      548 DUPCLOSURE                       R76 K109 [PROTO_10]
      549 CAPTURE                          VAL R49
      550 CAPTURE                          VAL R47
      551 CAPTURE                          VAL R11
      552 CAPTURE                          VAL R1
      553 CAPTURE                          VAL R17
      554 CAPTURE                          VAL R9
      555 CAPTURE                          VAL R50
      556 CAPTURE                          VAL R48
      557 CAPTURE                          VAL R26
      558 CAPTURE                          VAL R53
      559 DUPCLOSURE                       R77 K110 [PROTO_32]
      560 CAPTURE                          VAL R12
      561 CAPTURE                          VAL R2
      562 CAPTURE                          VAL R62
      563 CAPTURE                          VAL R4
      564 CAPTURE                          VAL R3
      565 CAPTURE                          VAL R33
      566 CAPTURE                          VAL R53
      567 CAPTURE                          VAL R27
      568 CAPTURE                          VAL R49
      569 CAPTURE                          VAL R11
      570 CAPTURE                          VAL R47
      571 CAPTURE                          VAL R48
      572 CAPTURE                          VAL R45
      573 CAPTURE                          VAL R29
      574 CAPTURE                          VAL R30
      575 CAPTURE                          VAL R58
      576 CAPTURE                          VAL R7
      577 CAPTURE                          VAL R50
      578 CAPTURE                          VAL R10
      579 CAPTURE                          VAL R56
      580 CAPTURE                          VAL R57
      581 CAPTURE                          VAL R51
      582 CAPTURE                          VAL R54
      583 CAPTURE                          VAL R28
      584 CAPTURE                          VAL R25
      585 CAPTURE                          VAL R1
      586 CAPTURE                          VAL R14
      587 CAPTURE                          VAL R64
      588 CAPTURE                          VAL R65
      589 CAPTURE                          VAL R66
      590 CAPTURE                          VAL R67
      591 CAPTURE                          VAL R41
      592 CAPTURE                          VAL R38
      593 CAPTURE                          VAL R42
      594 CAPTURE                          VAL R32
      595 CAPTURE                          VAL R43
      596 CAPTURE                          VAL R31
      597 CAPTURE                          VAL R39
      598 CAPTURE                          VAL R40
      599 CAPTURE                          VAL R22
      600 CAPTURE                          VAL R68
      601 CAPTURE                          VAL R69
      602 CAPTURE                          VAL R16
      603 CAPTURE                          VAL R46
      604 CAPTURE                          VAL R21
      605 CAPTURE                          VAL R20
      606 CAPTURE                          VAL R63
      607 CAPTURE                          VAL R15
      608 CAPTURE                          VAL R52
      609 CAPTURE                          VAL R73
      610 CAPTURE                          VAL R18
      611 CAPTURE                          VAL R19
      612 CAPTURE                          VAL R74
      613 CAPTURE                          VAL R24
      614 CAPTURE                          VAL R75
      615 CAPTURE                          VAL R71
      616 CAPTURE                          VAL R23
      617 CAPTURE                          VAL R76
      618 CAPTURE                          VAL R72
      619 RETURN                           R77 1
