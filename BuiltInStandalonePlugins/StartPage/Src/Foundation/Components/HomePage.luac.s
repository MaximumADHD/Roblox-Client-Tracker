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
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K2 ["Id"]
       10 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K3 ["showVerifyAge"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K4 ["showAgeRestricted"]
       18 CALL                             R1 5 0
       19 JUMP                             ; [+10]
       20 GETTABLEKS                       R1 R0 K5 ["FilePath"]
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R3 R0 K5 ["FilePath"]
       26 LOADB                            R4 0
       27 NAMECALL                         R1 R1 K6 ["openLocalFile"]
       29 CALL                             R1 3 0
       30 GETUPVAL                         R1 4
       31 JUMPIFNOT                        R1 ; [+28]
       32 GETUPVAL                         R1 5
       33 GETUPVAL                         R3 6
       34 DUPTABLE                         R4 K11 [{"telemetryType", "telemetrySubtype", "action", "name"}]
       35 LOADK                            R5 K12 ["interaction"]
       36 SETTABLEKS                       R5 R4 K7 ["telemetryType"]
       38 LOADK                            R5 K13 ["place_open"]
       39 SETTABLEKS                       R5 R4 K8 ["telemetrySubtype"]
       41 LOADK                            R5 K14 ["home_recent_sort"]
       42 SETTABLEKS                       R5 R4 K9 ["action"]
       44 GETTABLEKS                       R6 R0 K0 ["RootPlaceId"]
       46 JUMPIFNOT                        R6 ; [+2]
       47 LOADK                            R5 K15 ["published"]
       48 JUMP                             ; [+6]
       49 GETTABLEKS                       R6 R0 K5 ["FilePath"]
       51 JUMPIFNOT                        R6 ; [+2]
       52 LOADK                            R5 K16 ["local_file"]
       53 JUMP                             ; [+1]
       54 LOADK                            R5 K17 ["unknown"]
       55 SETTABLEKS                       R5 R4 K10 ["name"]
       57 NAMECALL                         R1 R1 K18 ["log"]
       59 CALL                             R1 3 0
       60 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 4
       11 GETUPVAL                         R5 5
       12 MOVE                             R6 R0
       13 DUPTABLE                         R7 K9 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
       14 GETIMPORT                        R8 K12 [UDim2.new]
       16 LOADN                            R9 0
       17 LOADN                            R10 200
       18 LOADN                            R11 0
       19 LOADN                            R12 200
       20 CALL                             R8 4 1
       21 SETTABLEKS                       R8 R7 K2 ["ImageSize"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U10
       31 SETTABLEKS                       R8 R7 K3 ["OnClick"]
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K4 ["IsPrivacyVisible"]
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K5 ["IsDateModifiedVisible"]
       39 LOADB                            R8 1
       40 SETTABLEKS                       R8 R7 K6 ["IsDropdownMenuVisible"]
       42 LOADB                            R8 1
       43 SETTABLEKS                       R8 R7 K7 ["IsCreatorNameVisible"]
       45 GETUPVAL                         R8 11
       46 SETTABLEKS                       R8 R7 K8 ["KebabMenu"]
       48 CALL                             R5 2 -1
       49 CALL                             R3 -1 -1
       50 RETURN                           R3 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K2 ["Id"]
       10 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       12 DUPCLOSURE                       R5 K3 [PROTO_3]
       13 DUPCLOSURE                       R6 K4 [PROTO_4]
       14 CALL                             R1 5 0
       15 GETUPVAL                         R1 2
       16 JUMPIFNOT                        R1 ; [+22]
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R3 4
       19 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action", "name"}]
       20 LOADK                            R5 K10 ["interaction"]
       21 SETTABLEKS                       R5 R4 K5 ["telemetryType"]
       23 LOADK                            R5 K11 ["place_open"]
       24 SETTABLEKS                       R5 R4 K6 ["telemetrySubtype"]
       26 LOADK                            R5 K12 ["home_template_sort"]
       27 SETTABLEKS                       R5 R4 K7 ["action"]
       29 GETTABLEKS                       R5 R0 K13 ["Name"]
       31 JUMPIF                           R5 ; [+2]
       32 GETTABLEKS                       R5 R0 K2 ["Id"]
       34 SETTABLEKS                       R5 R4 K8 ["name"]
       36 NAMECALL                         R1 R1 K14 ["log"]
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K4 [{"ImageSize", "OnClick"}]
       11 GETIMPORT                        R7 K7 [UDim2.new]
       13 LOADN                            R8 0
       14 LOADN                            R9 200
       15 LOADN                            R10 0
       16 LOADN                            R11 200
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K2 ["ImageSize"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U7
       26 SETTABLEKS                       R7 R6 K3 ["OnClick"]
       28 CALL                             R4 2 -1
       29 CALL                             R2 -1 -1
       30 RETURN                           R2 -1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
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
       81 JUMPIFNOT                        R1 ; [+18]
       82 GETUPVAL                         R1 4
       83 GETUPVAL                         R2 5
       84 NAMECALL                         R2 R2 K17 ["GetUserId"]
       86 CALL                             R2 1 1
       87 GETTABLEKS                       R3 R0 K18 ["UniverseId"]
       89 GETTABLEKS                       R4 R0 K10 ["RootPlaceId"]
       91 DUPCLOSURE                       R5 K19 [PROTO_7]
       92 DUPCLOSURE                       R6 K20 [PROTO_8]
       93 GETUPVAL                         R8 6
       94 JUMPIFNOT                        R8 ; [+2]
       95 LOADB                            R7 0
       96 JUMP                             ; [+1]
       97 LOADB                            R7 1
       98 CALL                             R1 6 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R1 R0 K21 ["LaunchTutorialOnClick"]
      102 JUMPIFNOT                        R1 ; [+4]
      103 GETUPVAL                         R1 3
      104 NAMECALL                         R1 R1 K22 ["startTutorial"]
      106 CALL                             R1 1 0
      107 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K7 [{"ImageSize", "IsDescriptionVisible", "IsDifficultyVisible", "IsCategoriesVisible", "OnClick"}]
       11 GETIMPORT                        R7 K10 [UDim2.new]
       13 LOADN                            R8 0
       14 LOADN                            R9 200
       15 LOADN                            R10 0
       16 LOADN                            R11 161
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K2 ["ImageSize"]
       20 LOADB                            R7 1
       21 SETTABLEKS                       R7 R6 K3 ["IsDescriptionVisible"]
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K4 ["IsDifficultyVisible"]
       26 LOADB                            R7 1
       27 SETTABLEKS                       R7 R6 K5 ["IsCategoriesVisible"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 SETTABLEKS                       R7 R6 K6 ["OnClick"]
       39 CALL                             R4 2 -1
       40 CALL                             R2 -1 -1
       41 RETURN                           R2 -1

PROTO_11:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 JUMP                             ; [+6]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 CALL                             R2 0 -1
        8 NAMECALL                         R0 R0 K0 ["openLink"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 4
       12 LOADK                            R1 K1 ["start_page_establish_trust"]
       13 LOADK                            R2 K2 ["start"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

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

PROTO_31:
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
      285 JUMPIFNOT                        R40 ; [+84]
      286 JUMPIFNOT                        R25 ; [+83]
      287 JUMPIF                           R24 ; [+82]
      288 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      290 JUMPIF                           R40 ; [+79]
      291 GETUPVAL                         R40 27
      292 GETTABLEKS                       R39 R40 K10 ["createElement"]
      294 GETUPVAL                         R40 29
      295 DUPTABLE                         R41 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      296 GETUPVAL                         R43 30
      297 GETTABLEKS                       R42 R43 K36 ["Emphasis"]
      299 SETTABLEKS                       R42 R41 K29 ["variant"]
      301 GETUPVAL                         R43 31
      302 GETTABLEKS                       R42 R43 K37 ["Info"]
      304 SETTABLEKS                       R42 R41 K30 ["severity"]
      306 LOADK                            R44 K23 ["EstablishTrustBanner"]
      307 LOADK                            R45 K49 ["Title"]
      308 NAMECALL                         R42 R11 K40 ["getText"]
      310 CALL                             R42 3 1
      311 SETTABLEKS                       R42 R41 K31 ["title"]
      313 LOADK                            R44 K23 ["EstablishTrustBanner"]
      314 LOADK                            R45 K50 ["Body"]
      315 NAMECALL                         R42 R11 K40 ["getText"]
      317 CALL                             R42 3 1
      318 SETTABLEKS                       R42 R41 K32 ["description"]
      320 NEWTABLE                         R42 0 2
      322 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      323 LOADK                            R46 K38 ["Plugin"]
      324 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      325 NAMECALL                         R44 R11 K40 ["getText"]
      327 CALL                             R44 3 1
      328 SETTABLEKS                       R44 R43 K42 ["text"]
      330 GETUPVAL                         R45 32
      331 GETTABLEKS                       R44 R45 K46 ["Utility"]
      333 SETTABLEKS                       R44 R43 K29 ["variant"]
      335 NEWCLOSURE                       R44 P8
      336 CAPTURE                          UPVAL U10
      337 CAPTURE                          UPVAL U35
      338 CAPTURE                          VAL R31
      339 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      341 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      342 LOADK                            R47 K38 ["Plugin"]
      343 LOADK                            R48 K47 ["VerifyAgeBanner.PrimaryAction"]
      344 NAMECALL                         R45 R11 K40 ["getText"]
      346 CALL                             R45 3 1
      347 SETTABLEKS                       R45 R44 K42 ["text"]
      349 GETUPVAL                         R46 32
      350 GETTABLEKS                       R45 R46 K48 ["Standard"]
      352 SETTABLEKS                       R45 R44 K29 ["variant"]
      354 NEWCLOSURE                       R45 P9
      355 CAPTURE                          REF R26
      356 CAPTURE                          REF R18
      357 CAPTURE                          UPVAL U10
      358 CAPTURE                          UPVAL U36
      359 CAPTURE                          VAL R31
      360 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      362 SETLIST                          R42 R43 2 [1]
      364 SETTABLEKS                       R42 R41 K33 ["actions"]
      366 SETTABLEKS                       R29 R41 K34 ["onClose"]
      368 CALL                             R39 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R39
      371 SETTABLEKS                       R39 R38 K23 ["EstablishTrustBanner"]
      373 GETUPVAL                         R40 37
      374 JUMPIFNOT                        R40 ; [+78]
      375 JUMPIFNOT                        R27 ; [+77]
      376 JUMPIF                           R24 ; [+76]
      377 GETUPVAL                         R40 13
      378 JUMPIFNOT                        R40 ; [+1]
      379 JUMPIF                           R25 ; [+73]
      380 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      382 JUMPIF                           R40 ; [+70]
      383 GETUPVAL                         R40 27
      384 GETTABLEKS                       R39 R40 K10 ["createElement"]
      386 GETUPVAL                         R40 29
      387 DUPTABLE                         R41 K51 [{"variant", "severity", "title", "actions", "onClose"}]
      388 GETUPVAL                         R43 30
      389 GETTABLEKS                       R42 R43 K48 ["Standard"]
      391 SETTABLEKS                       R42 R41 K29 ["variant"]
      393 GETUPVAL                         R43 31
      394 GETTABLEKS                       R42 R43 K37 ["Info"]
      396 SETTABLEKS                       R42 R41 K30 ["severity"]
      398 LOADK                            R44 K24 ["AgeReverificationBanner"]
      399 LOADK                            R45 K49 ["Title"]
      400 NAMECALL                         R42 R11 K40 ["getText"]
      402 CALL                             R42 3 1
      403 SETTABLEKS                       R42 R41 K31 ["title"]
      405 NEWTABLE                         R42 0 2
      407 DUPTABLE                         R43 K44 [{"text", "variant", "onActivated"}]
      408 LOADK                            R46 K38 ["Plugin"]
      409 LOADK                            R47 K45 ["VerifyAgeBanner.SecondaryAction"]
      410 NAMECALL                         R44 R11 K40 ["getText"]
      412 CALL                             R44 3 1
      413 SETTABLEKS                       R44 R43 K42 ["text"]
      415 GETUPVAL                         R45 32
      416 GETTABLEKS                       R44 R45 K46 ["Utility"]
      418 SETTABLEKS                       R44 R43 K29 ["variant"]
      420 NEWCLOSURE                       R44 P10
      421 CAPTURE                          UPVAL U10
      422 CAPTURE                          UPVAL U38
      423 CAPTURE                          VAL R31
      424 SETTABLEKS                       R44 R43 K43 ["onActivated"]
      426 DUPTABLE                         R44 K44 [{"text", "variant", "onActivated"}]
      427 LOADK                            R47 K24 ["AgeReverificationBanner"]
      428 LOADK                            R48 K52 ["PrimaryAction"]
      429 NAMECALL                         R45 R11 K40 ["getText"]
      431 CALL                             R45 3 1
      432 SETTABLEKS                       R45 R44 K42 ["text"]
      434 GETUPVAL                         R46 32
      435 GETTABLEKS                       R45 R46 K48 ["Standard"]
      437 SETTABLEKS                       R45 R44 K29 ["variant"]
      439 NEWCLOSURE                       R45 P11
      440 CAPTURE                          UPVAL U10
      441 CAPTURE                          UPVAL U39
      442 CAPTURE                          VAL R31
      443 SETTABLEKS                       R45 R44 K43 ["onActivated"]
      445 SETLIST                          R42 R43 2 [1]
      447 SETTABLEKS                       R42 R41 K33 ["actions"]
      449 SETTABLEKS                       R30 R41 K34 ["onClose"]
      451 CALL                             R39 2 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R39
      454 SETTABLEKS                       R39 R38 K24 ["AgeReverificationBanner"]
      456 JUMPIFNOT                        R6 ; [+95]
      457 JUMPIF                           R8 ; [+94]
      458 GETTABLEKS                       R40 R0 K28 ["hideBanner"]
      460 JUMPIF                           R40 ; [+91]
      461 GETUPVAL                         R40 27
      462 GETTABLEKS                       R39 R40 K10 ["createElement"]
      464 GETUPVAL                         R40 40
      465 DUPTABLE                         R41 K55 [{"tag", "LayoutOrder"}]
      466 LOADK                            R42 K56 ["padding-x-xxlarge padding-top-large auto-y size-full-0"]
      467 SETTABLEKS                       R42 R41 K53 ["tag"]
      469 MOVE                             R42 R22
      470 CALL                             R42 0 1
      471 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      473 GETUPVAL                         R43 27
      474 GETTABLEKS                       R42 R43 K10 ["createElement"]
      476 GETUPVAL                         R43 29
      477 DUPTABLE                         R44 K35 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      478 GETUPVAL                         R46 30
      479 GETTABLEKS                       R45 R46 K36 ["Emphasis"]
      481 SETTABLEKS                       R45 R44 K29 ["variant"]
      483 GETUPVAL                         R46 31
      484 GETTABLEKS                       R45 R46 K57 ["Error"]
      486 SETTABLEKS                       R45 R44 K30 ["severity"]
      488 LOADK                            R47 K38 ["Plugin"]
      489 LOADK                            R48 K58 ["UnratedExperiencesBanner.Title"]
      490 NAMECALL                         R45 R11 K40 ["getText"]
      492 CALL                             R45 3 1
      493 SETTABLEKS                       R45 R44 K31 ["title"]
      495 LOADK                            R47 K38 ["Plugin"]
      496 LOADK                            R48 K59 ["UnratedExperiencesBanner.Description"]
      497 NAMECALL                         R45 R11 K40 ["getText"]
      499 CALL                             R45 3 1
      500 SETTABLEKS                       R45 R44 K32 ["description"]
      502 NEWTABLE                         R45 0 2
      504 DUPTABLE                         R46 K44 [{"text", "variant", "onActivated"}]
      505 LOADK                            R49 K38 ["Plugin"]
      506 LOADK                            R50 K60 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      507 NAMECALL                         R47 R11 K40 ["getText"]
      509 CALL                             R47 3 1
      510 SETTABLEKS                       R47 R46 K42 ["text"]
      512 GETUPVAL                         R48 32
      513 GETTABLEKS                       R47 R48 K46 ["Utility"]
      515 SETTABLEKS                       R47 R46 K29 ["variant"]
      517 DUPCLOSURE                       R47 K61 [PROTO_26]
      518 CAPTURE                          UPVAL U10
      519 CAPTURE                          UPVAL U41
      520 SETTABLEKS                       R47 R46 K43 ["onActivated"]
      522 DUPTABLE                         R47 K44 [{"text", "variant", "onActivated"}]
      523 LOADK                            R50 K38 ["Plugin"]
      524 LOADK                            R51 K62 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      525 NAMECALL                         R48 R11 K40 ["getText"]
      527 CALL                             R48 3 1
      528 SETTABLEKS                       R48 R47 K42 ["text"]
      530 GETUPVAL                         R49 32
      531 GETTABLEKS                       R48 R49 K48 ["Standard"]
      533 SETTABLEKS                       R48 R47 K29 ["variant"]
      535 DUPCLOSURE                       R48 K63 [PROTO_27]
      536 CAPTURE                          UPVAL U10
      537 CAPTURE                          UPVAL U42
      538 SETTABLEKS                       R48 R47 K43 ["onActivated"]
      540 SETLIST                          R45 R46 2 [1]
      542 SETTABLEKS                       R45 R44 K33 ["actions"]
      544 NEWCLOSURE                       R45 P14
      545 CAPTURE                          VAL R9
      546 CAPTURE                          VAL R1
      547 SETTABLEKS                       R45 R44 K34 ["onClose"]
      549 CALL                             R42 2 -1
      550 CALL                             R39 -1 1
      551 JUMP                             ; [+1]
      552 LOADNIL                          R39
      553 SETTABLEKS                       R39 R38 K25 ["UnratedExperiencesBanner"]
      555 GETUPVAL                         R40 27
      556 GETTABLEKS                       R39 R40 K10 ["createElement"]
      558 GETUPVAL                         R40 40
      559 DUPTABLE                         R41 K64 [{"LayoutOrder", "tag"}]
      560 MOVE                             R42 R22
      561 CALL                             R42 0 1
      562 SETTABLEKS                       R42 R41 K54 ["LayoutOrder"]
      564 LOADK                            R42 K65 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      565 SETTABLEKS                       R42 R41 K53 ["tag"]
      567 DUPTABLE                         R42 K72 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      568 GETUPVAL                         R44 27
      569 GETTABLEKS                       R43 R44 K10 ["createElement"]
      571 GETUPVAL                         R44 43
      572 DUPTABLE                         R45 K73 [{"title", "LayoutOrder"}]
      573 JUMPIFNOT                        R23 ; [+9]
      574 LOADK                            R48 K38 ["Plugin"]
      575 LOADK                            R49 K74 ["HomePage.WelcomeWithUsername"]
      576 DUPTABLE                         R50 K76 [{"username"}]
      577 SETTABLEKS                       R23 R50 K75 ["username"]
      579 NAMECALL                         R46 R11 K40 ["getText"]
      581 CALL                             R46 4 1
      582 JUMP                             ; [+5]
      583 LOADK                            R48 K38 ["Plugin"]
      584 LOADK                            R49 K77 ["HomePage.Welcome"]
      585 NAMECALL                         R46 R11 K40 ["getText"]
      587 CALL                             R46 3 1
      588 SETTABLEKS                       R46 R45 K31 ["title"]
      590 MOVE                             R46 R22
      591 CALL                             R46 0 1
      592 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      594 CALL                             R43 2 1
      595 SETTABLEKS                       R43 R42 K66 ["Header"]
      597 JUMPIFNOT                        R14 ; [+25]
      598 GETUPVAL                         R44 27
      599 GETTABLEKS                       R43 R44 K10 ["createElement"]
      601 GETUPVAL                         R44 40
      602 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      603 MOVE                             R46 R22
      604 CALL                             R46 0 1
      605 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      607 LOADK                            R46 K78 ["size-full-0 auto-y col padding-bottom-medium"]
      608 SETTABLEKS                       R46 R45 K53 ["tag"]
      610 GETUPVAL                         R47 27
      611 GETTABLEKS                       R46 R47 K10 ["createElement"]
      613 GETUPVAL                         R47 44
      614 DUPTABLE                         R48 K79 [{"onClose"}]
      615 NEWCLOSURE                       R49 P15
      616 CAPTURE                          VAL R15
      617 CAPTURE                          UPVAL U10
      618 SETTABLEKS                       R49 R48 K34 ["onClose"]
      620 CALL                             R46 2 -1
      621 CALL                             R43 -1 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R43
      624 SETTABLEKS                       R43 R42 K67 ["TutorialBanner"]
      626 GETTABLEKS                       R44 R0 K80 ["hideRecents"]
      628 JUMPIF                           R44 ; [+161]
      629 JUMPIFNOT                        R16 ; [+160]
      630 GETUPVAL                         R44 27
      631 GETTABLEKS                       R43 R44 K10 ["createElement"]
      633 GETUPVAL                         R44 45
      634 DUPTABLE                         R45 K82 [{"LayoutOrder", "tag", "testId"}]
      635 MOVE                             R46 R22
      636 CALL                             R46 0 1
      637 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      639 LOADK                            R46 K83 ["size-full-0 auto-y col gap-xsmall"]
      640 SETTABLEKS                       R46 R45 K53 ["tag"]
      642 LOADK                            R46 K84 ["--start-page-RecentExperiences-section"]
      643 SETTABLEKS                       R46 R45 K81 ["testId"]
      645 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      646 GETUPVAL                         R48 27
      647 GETTABLEKS                       R47 R48 K10 ["createElement"]
      649 GETUPVAL                         R48 46
      650 DUPTABLE                         R49 K88 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      651 LOADK                            R52 K38 ["Plugin"]
      652 LOADK                            R53 K89 ["HomePage.MyRecentExperiences"]
      653 NAMECALL                         R50 R11 K40 ["getText"]
      655 CALL                             R50 3 1
      656 SETTABLEKS                       R50 R49 K31 ["title"]
      658 LOADK                            R52 K38 ["Plugin"]
      659 LOADK                            R53 K90 ["SeeAll"]
      660 NAMECALL                         R50 R11 K40 ["getText"]
      662 CALL                             R50 3 1
      663 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      665 NEWCLOSURE                       R50 P16
      666 CAPTURE                          VAL R10
      667 CAPTURE                          UPVAL U16
      668 CAPTURE                          VAL R0
      669 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      671 MOVE                             R50 R22
      672 CALL                             R50 0 1
      673 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      675 CALL                             R47 2 1
      676 SETTABLEKS                       R47 R46 K66 ["Header"]
      678 GETUPVAL                         R48 27
      679 GETTABLEKS                       R47 R48 K10 ["createElement"]
      681 GETUPVAL                         R49 47
      682 GETTABLEKS                       R48 R49 K91 ["Provider"]
      684 DUPTABLE                         R49 K93 [{"value"}]
      685 GETUPVAL                         R50 48
      686 SETTABLEKS                       R50 R49 K92 ["value"]
      688 GETUPVAL                         R51 27
      689 GETTABLEKS                       R50 R51 K10 ["createElement"]
      691 GETUPVAL                         R51 49
      692 DUPTABLE                         R52 K106 [{"Size", "DisplayComponent", "MaxCount", "PageSize", "ShowRecentAPIGames", "ShowRecentLocalFiles", "OnItemCountUpdated", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      693 GETIMPORT                        R53 K18 [UDim2.new]
      695 LOADN                            R54 1
      696 LOADN                            R55 0
      697 LOADN                            R56 0
      698 LOADN                            R57 99
      699 CALL                             R53 4 1
      700 SETTABLEKS                       R53 R52 K94 ["Size"]
      702 GETUPVAL                         R53 50
      703 SETTABLEKS                       R53 R52 K95 ["DisplayComponent"]
      705 LOADN                            R53 6
      706 SETTABLEKS                       R53 R52 K96 ["MaxCount"]
      708 LOADN                            R53 10
      709 SETTABLEKS                       R53 R52 K97 ["PageSize"]
      711 LOADB                            R53 1
      712 SETTABLEKS                       R53 R52 K98 ["ShowRecentAPIGames"]
      714 LOADB                            R53 1
      715 SETTABLEKS                       R53 R52 K99 ["ShowRecentLocalFiles"]
      717 SETTABLEKS                       R21 R52 K100 ["OnItemCountUpdated"]
      719 GETUPVAL                         R53 51
      720 SETTABLEKS                       R53 R52 K101 ["CellComponent"]
      722 GETIMPORT                        R53 K18 [UDim2.new]
      724 LOADN                            R54 0
      725 LOADN                            R55 224
      726 LOADN                            R56 0
      727 LOADN                            R57 92
      728 CALL                             R53 4 1
      729 SETTABLEKS                       R53 R52 K102 ["CellSize"]
      731 GETIMPORT                        R53 K18 [UDim2.new]
      733 LOADN                            R54 0
      734 LOADN                            R55 16
      735 LOADN                            R56 0
      736 LOADN                            R57 16
      737 CALL                             R53 4 1
      738 SETTABLEKS                       R53 R52 K103 ["CellPadding"]
      740 DUPTABLE                         R53 K116 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
      741 LOADK                            R54 K117 ["Recents"]
      742 SETTABLEKS                       R54 R53 K107 ["searchKey"]
      744 LOADK                            R54 K118 [""]
      745 SETTABLEKS                       R54 R53 K108 ["search"]
      747 LOADK                            R54 K119 ["User"]
      748 SETTABLEKS                       R54 R53 K109 ["creatorType"]
      750 GETUPVAL                         R55 5
      751 NAMECALL                         R55 R55 K120 ["GetUserId"]
      753 CALL                             R55 1 -1
      754 FASTCALL                         TOSTRING ; [+2]
      755 GETIMPORT                        R54 K122 [tostring]
      757 CALL                             R54 -1 1
      758 SETTABLEKS                       R54 R53 K110 ["creatorTargetId"]
      760 LOADB                            R54 0
      761 SETTABLEKS                       R54 R53 K111 ["isArchived"]
      763 LOADB                            R54 0
      764 SETTABLEKS                       R54 R53 K112 ["isTemplates"]
      766 LOADN                            R54 10
      767 SETTABLEKS                       R54 R53 K113 ["pageSize"]
      769 LOADB                            R54 1
      770 SETTABLEKS                       R54 R53 K114 ["getRecentLocalFiles"]
      772 LOADB                            R54 1
      773 SETTABLEKS                       R54 R53 K115 ["getRecentAPIGames"]
      775 SETTABLEKS                       R53 R52 K104 ["Query"]
      777 GETUPVAL                         R53 52
      778 SETTABLEKS                       R53 R52 K105 ["FetchItems"]
      780 MOVE                             R53 R22
      781 CALL                             R53 0 1
      782 SETTABLEKS                       R53 R52 K54 ["LayoutOrder"]
      784 CALL                             R50 2 -1
      785 CALL                             R47 -1 1
      786 SETTABLEKS                       R47 R46 K26 ["Content"]
      788 CALL                             R43 3 1
      789 JUMP                             ; [+1]
      790 LOADNIL                          R43
      791 SETTABLEKS                       R43 R42 K68 ["RecentExperiences"]
      793 GETUPVAL                         R44 27
      794 GETTABLEKS                       R43 R44 K10 ["createElement"]
      796 GETUPVAL                         R44 40
      797 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      798 MOVE                             R46 R22
      799 CALL                             R46 0 1
      800 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      802 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      803 SETTABLEKS                       R46 R45 K53 ["tag"]
      805 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      806 GETUPVAL                         R48 27
      807 GETTABLEKS                       R47 R48 K10 ["createElement"]
      809 GETUPVAL                         R48 46
      810 DUPTABLE                         R49 K124 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      811 LOADK                            R52 K38 ["Plugin"]
      812 LOADK                            R53 K125 ["HomePage.Templates.Heading"]
      813 NAMECALL                         R50 R11 K40 ["getText"]
      815 CALL                             R50 3 1
      816 SETTABLEKS                       R50 R49 K31 ["title"]
      818 LOADK                            R52 K38 ["Plugin"]
      819 LOADK                            R53 K126 ["HomePage.Templates.Description"]
      820 NAMECALL                         R50 R11 K40 ["getText"]
      822 CALL                             R50 3 1
      823 SETTABLEKS                       R50 R49 K32 ["description"]
      825 LOADK                            R52 K38 ["Plugin"]
      826 LOADK                            R53 K90 ["SeeAll"]
      827 NAMECALL                         R50 R11 K40 ["getText"]
      829 CALL                             R50 3 1
      830 SETTABLEKS                       R50 R49 K86 ["buttonText"]
      832 NEWCLOSURE                       R50 P17
      833 CAPTURE                          VAL R10
      834 CAPTURE                          UPVAL U16
      835 CAPTURE                          VAL R0
      836 SETTABLEKS                       R50 R49 K87 ["onButtonClick"]
      838 MOVE                             R50 R22
      839 CALL                             R50 0 1
      840 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      842 CALL                             R47 2 1
      843 SETTABLEKS                       R47 R46 K66 ["Header"]
      845 GETUPVAL                         R48 27
      846 GETTABLEKS                       R47 R48 K10 ["createElement"]
      848 GETUPVAL                         R48 49
      849 DUPTABLE                         R49 K127 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      850 GETIMPORT                        R50 K18 [UDim2.new]
      852 LOADN                            R51 1
      853 LOADN                            R52 0
      854 LOADN                            R53 0
      855 LOADN                            R54 8
      856 CALL                             R50 4 1
      857 SETTABLEKS                       R50 R49 K94 ["Size"]
      859 GETUPVAL                         R50 50
      860 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      862 LOADN                            R50 6
      863 SETTABLEKS                       R50 R49 K96 ["MaxCount"]
      865 GETUPVAL                         R50 53
      866 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      868 GETIMPORT                        R50 K18 [UDim2.new]
      870 LOADN                            R51 0
      871 LOADN                            R52 225
      872 LOADN                            R53 0
      873 LOADN                            R54 252
      874 CALL                             R50 4 1
      875 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      877 GETIMPORT                        R50 K18 [UDim2.new]
      879 LOADN                            R51 0
      880 LOADN                            R52 16
      881 LOADN                            R53 0
      882 LOADN                            R54 16
      883 CALL                             R50 4 1
      884 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      886 GETUPVAL                         R50 54
      887 SETTABLEKS                       R50 R49 K104 ["Query"]
      889 GETUPVAL                         R50 55
      890 SETTABLEKS                       R50 R49 K105 ["FetchItems"]
      892 MOVE                             R50 R22
      893 CALL                             R50 0 1
      894 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      896 CALL                             R47 2 1
      897 SETTABLEKS                       R47 R46 K26 ["Content"]
      899 CALL                             R43 3 1
      900 SETTABLEKS                       R43 R42 K69 ["Templates"]
      902 GETUPVAL                         R44 27
      903 GETTABLEKS                       R43 R44 K10 ["createElement"]
      905 GETUPVAL                         R44 40
      906 DUPTABLE                         R45 K64 [{"LayoutOrder", "tag"}]
      907 MOVE                             R46 R22
      908 CALL                             R46 0 1
      909 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
      911 LOADK                            R46 K123 ["size-full-0 auto-y col gap-large"]
      912 SETTABLEKS                       R46 R45 K53 ["tag"]
      914 DUPTABLE                         R46 K85 [{"Header", "Content"}]
      915 GETUPVAL                         R48 27
      916 GETTABLEKS                       R47 R48 K10 ["createElement"]
      918 GETUPVAL                         R48 46
      919 DUPTABLE                         R49 K128 [{"title", "description", "LayoutOrder"}]
      920 LOADK                            R52 K38 ["Plugin"]
      921 LOADK                            R53 K129 ["HomePage.DiscoverStudio.Heading"]
      922 NAMECALL                         R50 R11 K40 ["getText"]
      924 CALL                             R50 3 1
      925 SETTABLEKS                       R50 R49 K31 ["title"]
      927 LOADK                            R52 K38 ["Plugin"]
      928 LOADK                            R53 K130 ["HomePage.DiscoverStudio.Description"]
      929 NAMECALL                         R50 R11 K40 ["getText"]
      931 CALL                             R50 3 1
      932 SETTABLEKS                       R50 R49 K32 ["description"]
      934 MOVE                             R50 R22
      935 CALL                             R50 0 1
      936 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      938 CALL                             R47 2 1
      939 SETTABLEKS                       R47 R46 K66 ["Header"]
      941 GETUPVAL                         R48 27
      942 GETTABLEKS                       R47 R48 K10 ["createElement"]
      944 GETUPVAL                         R48 49
      945 DUPTABLE                         R49 K131 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      946 GETIMPORT                        R50 K18 [UDim2.new]
      948 LOADN                            R51 1
      949 LOADN                            R52 0
      950 LOADN                            R53 0
      951 MOVE                             R54 R33
      952 CALL                             R50 4 1
      953 SETTABLEKS                       R50 R49 K94 ["Size"]
      955 GETUPVAL                         R50 50
      956 SETTABLEKS                       R50 R49 K95 ["DisplayComponent"]
      958 GETUPVAL                         R50 56
      959 SETTABLEKS                       R50 R49 K101 ["CellComponent"]
      961 GETIMPORT                        R50 K18 [UDim2.new]
      963 LOADN                            R51 0
      964 LOADN                            R52 225
      965 LOADN                            R53 0
      966 MOVE                             R54 R34
      967 CALL                             R50 4 1
      968 SETTABLEKS                       R50 R49 K102 ["CellSize"]
      970 GETIMPORT                        R50 K18 [UDim2.new]
      972 LOADN                            R51 0
      973 LOADN                            R52 16
      974 LOADN                            R53 0
      975 LOADN                            R54 16
      976 CALL                             R50 4 1
      977 SETTABLEKS                       R50 R49 K103 ["CellPadding"]
      979 GETUPVAL                         R50 57
      980 SETTABLEKS                       R50 R49 K104 ["Query"]
      982 SETTABLEKS                       R32 R49 K105 ["FetchItems"]
      984 MOVE                             R50 R22
      985 CALL                             R50 0 1
      986 SETTABLEKS                       R50 R49 K54 ["LayoutOrder"]
      988 CALL                             R47 2 1
      989 SETTABLEKS                       R47 R46 K26 ["Content"]
      991 CALL                             R43 3 1
      992 SETTABLEKS                       R43 R42 K70 ["Momentum"]
      994 GETUPVAL                         R44 27
      995 GETTABLEKS                       R43 R44 K10 ["createElement"]
      997 GETUPVAL                         R44 45
      998 DUPTABLE                         R45 K132 [{"LayoutOrder", "Size"}]
      999 MOVE                             R46 R22
     1000 CALL                             R46 0 1
     1001 SETTABLEKS                       R46 R45 K54 ["LayoutOrder"]
     1003 GETIMPORT                        R46 K18 [UDim2.new]
     1005 LOADN                            R47 1
     1006 LOADN                            R48 0
     1007 LOADN                            R49 0
     1008 LOADN                            R50 40
     1009 CALL                             R46 4 1
     1010 SETTABLEKS                       R46 R45 K94 ["Size"]
     1012 CALL                             R43 2 1
     1013 SETTABLEKS                       R43 R42 K71 ["Spacer"]
     1015 CALL                             R39 3 1
     1016 SETTABLEKS                       R39 R38 K26 ["Content"]
     1018 CALL                             R35 3 -1
     1019 CLOSEUPVALS                      R18
     1020 RETURN                           R35 -1

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
      178 GETTABLEKS                       R28 R29 K39 ["DiscoverHomepageBannerExperienceUnrated"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K5 [require]
      183 GETTABLEKS                       R31 R0 K23 ["Src"]
      185 GETTABLEKS                       R30 R31 K40 ["Resources"]
      187 GETTABLEKS                       R29 R30 K41 ["PlaceholderMomentumContent"]
      189 CALL                             R28 1 1
      190 GETIMPORT                        R29 K5 [require]
      192 GETTABLEKS                       R32 R0 K23 ["Src"]
      194 GETTABLEKS                       R31 R32 K42 ["SharedFlags"]
      196 GETTABLEKS                       R30 R31 K43 ["getFFlagEnableKnowledgeTutorials2"]
      198 CALL                             R29 1 1
      199 CALL                             R29 0 1
      200 GETIMPORT                        R30 K5 [require]
      202 GETTABLEKS                       R33 R0 K23 ["Src"]
      204 GETTABLEKS                       R32 R33 K42 ["SharedFlags"]
      206 GETTABLEKS                       R31 R32 K44 ["getFFlagEnableKnowledgeFeeds"]
      208 CALL                             R30 1 1
      209 CALL                             R30 0 1
      210 GETIMPORT                        R31 K5 [require]
      212 GETTABLEKS                       R34 R0 K23 ["Src"]
      214 GETTABLEKS                       R33 R34 K42 ["SharedFlags"]
      216 GETTABLEKS                       R32 R33 K45 ["getFFlagLuaStartPageTutorialInfoTile"]
      218 CALL                             R31 1 1
      219 CALL                             R31 0 1
      220 GETIMPORT                        R32 K5 [require]
      222 GETTABLEKS                       R35 R0 K23 ["Src"]
      224 GETTABLEKS                       R34 R35 K42 ["SharedFlags"]
      226 GETTABLEKS                       R33 R34 K46 ["getFFlagLuaStartPageVerifyAgeBanner"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R36 R0 K23 ["Src"]
      233 GETTABLEKS                       R35 R36 K42 ["SharedFlags"]
      235 GETTABLEKS                       R34 R35 K47 ["getFFlagStartPageEstablishTrustBanner"]
      237 CALL                             R33 1 1
      238 CALL                             R33 0 1
      239 GETIMPORT                        R34 K5 [require]
      241 GETTABLEKS                       R37 R0 K23 ["Src"]
      243 GETTABLEKS                       R36 R37 K42 ["SharedFlags"]
      245 GETTABLEKS                       R35 R36 K48 ["getFFlagStartPageFAEReverification"]
      247 CALL                             R34 1 1
      248 CALL                             R34 0 1
      249 GETIMPORT                        R35 K5 [require]
      251 GETTABLEKS                       R38 R0 K23 ["Src"]
      253 GETTABLEKS                       R37 R38 K42 ["SharedFlags"]
      255 GETTABLEKS                       R36 R37 K49 ["getFStringAgeRestrictedLink"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K5 [require]
      260 GETTABLEKS                       R39 R0 K23 ["Src"]
      262 GETTABLEKS                       R38 R39 K42 ["SharedFlags"]
      264 GETTABLEKS                       R37 R38 K50 ["getFStringUnratedExperiencesLink"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETTABLEKS                       R40 R0 K23 ["Src"]
      271 GETTABLEKS                       R39 R40 K42 ["SharedFlags"]
      273 GETTABLEKS                       R38 R39 K51 ["getFStringLuaStartPageVerifyAgeLink"]
      275 CALL                             R37 1 1
      276 GETIMPORT                        R38 K5 [require]
      278 GETTABLEKS                       R41 R0 K23 ["Src"]
      280 GETTABLEKS                       R40 R41 K42 ["SharedFlags"]
      282 GETTABLEKS                       R39 R40 K52 ["getFStringLuaStartPageCAEDevForumLink"]
      284 CALL                             R38 1 1
      285 GETIMPORT                        R39 K5 [require]
      287 GETTABLEKS                       R42 R0 K23 ["Src"]
      289 GETTABLEKS                       R41 R42 K42 ["SharedFlags"]
      291 GETTABLEKS                       R40 R41 K53 ["getFStringReVerifyAgeLink"]
      293 CALL                             R39 1 1
      294 GETIMPORT                        R40 K5 [require]
      296 GETTABLEKS                       R43 R0 K23 ["Src"]
      298 GETTABLEKS                       R42 R43 K42 ["SharedFlags"]
      300 GETTABLEKS                       R41 R42 K54 ["getFStringLuaStartPageFAEDevForumLink"]
      302 CALL                             R40 1 1
      303 GETIMPORT                        R41 K5 [require]
      305 GETTABLEKS                       R44 R0 K23 ["Src"]
      307 GETTABLEKS                       R43 R44 K42 ["SharedFlags"]
      309 GETTABLEKS                       R42 R43 K55 ["getFStringStartPageEstablishTrustDevForumLink"]
      311 CALL                             R41 1 1
      312 GETIMPORT                        R42 K5 [require]
      314 GETTABLEKS                       R45 R0 K23 ["Src"]
      316 GETTABLEKS                       R44 R45 K42 ["SharedFlags"]
      318 GETTABLEKS                       R43 R44 K56 ["getFStringStartPageVerifyParentalConsentLink"]
      320 CALL                             R42 1 1
      321 GETIMPORT                        R43 K5 [require]
      323 GETTABLEKS                       R46 R0 K23 ["Src"]
      325 GETTABLEKS                       R45 R46 K42 ["SharedFlags"]
      327 GETTABLEKS                       R44 R45 K57 ["safeGetFastFlag"]
      329 CALL                             R43 1 1
      330 GETIMPORT                        R44 K5 [require]
      332 GETTABLEKS                       R47 R0 K23 ["Src"]
      334 GETTABLEKS                       R46 R47 K16 ["Util"]
      336 GETTABLEKS                       R45 R46 K58 ["Services"]
      338 CALL                             R44 1 1
      339 GETTABLEKS                       R45 R44 K59 ["StartPageManager"]
      341 GETIMPORT                        R46 K5 [require]
      343 GETTABLEKS                       R50 R0 K23 ["Src"]
      345 GETTABLEKS                       R49 R50 K16 ["Util"]
      347 GETTABLEKS                       R48 R49 K60 ["Telemetry"]
      349 GETTABLEKS                       R47 R48 K61 ["TelemetryContext"]
      351 CALL                             R46 1 1
      352 GETIMPORT                        R47 K5 [require]
      354 GETTABLEKS                       R51 R0 K23 ["Src"]
      356 GETTABLEKS                       R50 R51 K16 ["Util"]
      358 GETTABLEKS                       R49 R50 K60 ["Telemetry"]
      360 GETTABLEKS                       R48 R49 K62 ["StartPageTelemetryEvent"]
      362 CALL                             R47 1 1
      363 GETIMPORT                        R48 K5 [require]
      365 GETTABLEKS                       R52 R0 K23 ["Src"]
      367 GETTABLEKS                       R51 R52 K16 ["Util"]
      369 GETTABLEKS                       R50 R51 K60 ["Telemetry"]
      371 GETTABLEKS                       R49 R50 K63 ["StudioSafetyUpsellClickedEvent"]
      373 CALL                             R48 1 1
      374 GETIMPORT                        R49 K5 [require]
      376 GETTABLEKS                       R52 R0 K23 ["Src"]
      378 GETTABLEKS                       R51 R52 K64 ["Contexts"]
      380 GETTABLEKS                       R50 R51 K65 ["ContextMenuActions"]
      382 CALL                             R49 1 1
      383 GETTABLEKS                       R50 R44 K66 ["StudioService"]
      385 GETTABLEKS                       R51 R44 K67 ["RbxAnalyticsService"]
      387 GETIMPORT                        R52 K5 [require]
      389 GETTABLEKS                       R55 R0 K23 ["Src"]
      391 GETTABLEKS                       R54 R55 K16 ["Util"]
      393 GETTABLEKS                       R53 R54 K68 ["Dialogs"]
      395 CALL                             R52 1 1
      396 GETIMPORT                        R53 K5 [require]
      398 GETTABLEKS                       R56 R0 K23 ["Src"]
      400 GETTABLEKS                       R55 R56 K69 ["Hooks"]
      402 GETTABLEKS                       R54 R55 K70 ["useUsername"]
      404 CALL                             R53 1 1
      405 GETIMPORT                        R54 K5 [require]
      407 GETTABLEKS                       R57 R0 K23 ["Src"]
      409 GETTABLEKS                       R56 R57 K69 ["Hooks"]
      411 GETTABLEKS                       R55 R56 K71 ["useShowVerifyAgeBanner"]
      413 CALL                             R54 1 1
      414 GETIMPORT                        R55 K5 [require]
      416 GETTABLEKS                       R58 R0 K23 ["Src"]
      418 GETTABLEKS                       R57 R58 K69 ["Hooks"]
      420 GETTABLEKS                       R56 R57 K72 ["useEstablishTrustDialog"]
      422 CALL                             R55 1 1
      423 GETIMPORT                        R56 K5 [require]
      425 GETTABLEKS                       R59 R0 K23 ["Src"]
      427 GETTABLEKS                       R58 R59 K42 ["SharedFlags"]
      429 GETTABLEKS                       R57 R58 K73 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      431 CALL                             R56 1 1
      432 CALL                             R56 0 1
      433 GETIMPORT                        R57 K5 [require]
      435 GETTABLEKS                       R60 R0 K23 ["Src"]
      437 GETTABLEKS                       R59 R60 K42 ["SharedFlags"]
      439 GETTABLEKS                       R58 R59 K74 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      441 CALL                             R57 1 1
      442 CALL                             R57 0 1
      443 GETIMPORT                        R58 K5 [require]
      445 GETTABLEKS                       R60 R0 K6 ["Packages"]
      447 GETTABLEKS                       R59 R60 K24 ["Foundation"]
      449 CALL                             R58 1 1
      450 GETTABLEKS                       R60 R58 K69 ["Hooks"]
      452 GETTABLEKS                       R59 R60 K75 ["useStyleTags"]
      454 GETTABLEKS                       R60 R58 K76 ["View"]
      456 GETTABLEKS                       R61 R58 K77 ["SystemBanner"]
      458 GETTABLEKS                       R63 R58 K78 ["Enums"]
      460 GETTABLEKS                       R62 R63 K79 ["AlertVariant"]
      462 GETTABLEKS                       R64 R58 K78 ["Enums"]
      464 GETTABLEKS                       R63 R64 K80 ["AlertSeverity"]
      466 GETTABLEKS                       R65 R58 K78 ["Enums"]
      468 GETTABLEKS                       R64 R65 K81 ["ButtonVariant"]
      470 MOVE                             R65 R35
      471 CALL                             R65 0 1
      472 MOVE                             R66 R36
      473 CALL                             R66 0 1
      474 DUPCLOSURE                       R67 K82 [PROTO_0]
      475 CAPTURE                          VAL R50
      476 DUPTABLE                         R68 K87 [{"searchKey", "search", "isTemplates", "pageSize"}]
      477 LOADK                            R69 K88 ["Templates"]
      478 SETTABLEKS                       R69 R68 K83 ["searchKey"]
      480 LOADK                            R69 K89 ["All"]
      481 SETTABLEKS                       R69 R68 K84 ["search"]
      483 LOADB                            R69 1
      484 SETTABLEKS                       R69 R68 K85 ["isTemplates"]
      486 LOADN                            R69 30
      487 SETTABLEKS                       R69 R68 K86 ["pageSize"]
      489 DUPTABLE                         R69 K90 [{"searchKey", "pageSize"}]
      490 LOADK                            R70 K33 ["Network"]
      491 SETTABLEKS                       R70 R69 K83 ["searchKey"]
      493 LOADN                            R70 30
      494 SETTABLEKS                       R70 R69 K86 ["pageSize"]
      496 NEWTABLE                         R70 0 6
      498 LOADK                            R71 K91 ["ConfigureExperience"]
      499 LOADK                            R72 K92 ["ConfigurePlace"]
      500 LOADK                            R73 K93 ["OpenPlace"]
      501 JUMPIF                           R57 ; [+2]
      502 LOADK                            R74 K94 ["PublicPrivateToggle"]
      503 JUMP                             ; [+1]
      504 LOADK                            R74 K95 [""]
      505 LOADK                            R75 K96 ["Archive"]
      506 LOADK                            R76 K97 ["RemoveRecent"]
      507 SETLIST                          R70 R71 6 [1]
      509 DUPCLOSURE                       R71 K98 [PROTO_2]
      510 CAPTURE                          VAL R46
      511 CAPTURE                          VAL R5
      512 CAPTURE                          VAL R52
      513 CAPTURE                          VAL R1
      514 CAPTURE                          VAL R17
      515 CAPTURE                          VAL R9
      516 CAPTURE                          VAL R26
      517 CAPTURE                          VAL R50
      518 CAPTURE                          VAL R45
      519 CAPTURE                          VAL R56
      520 CAPTURE                          VAL R47
      521 CAPTURE                          VAL R70
      522 DUPCLOSURE                       R72 K99 [PROTO_6]
      523 CAPTURE                          VAL R46
      524 CAPTURE                          VAL R1
      525 CAPTURE                          VAL R17
      526 CAPTURE                          VAL R9
      527 CAPTURE                          VAL R26
      528 CAPTURE                          VAL R50
      529 CAPTURE                          VAL R56
      530 CAPTURE                          VAL R47
      531 DUPCLOSURE                       R73 K100 [PROTO_10]
      532 CAPTURE                          VAL R46
      533 CAPTURE                          VAL R1
      534 CAPTURE                          VAL R17
      535 CAPTURE                          VAL R9
      536 CAPTURE                          VAL R30
      537 CAPTURE                          VAL R47
      538 CAPTURE                          VAL R45
      539 CAPTURE                          VAL R26
      540 CAPTURE                          VAL R50
      541 CAPTURE                          VAL R29
      542 DUPCLOSURE                       R74 K101 [PROTO_32]
      543 CAPTURE                          VAL R12
      544 CAPTURE                          VAL R2
      545 CAPTURE                          VAL R59
      546 CAPTURE                          VAL R4
      547 CAPTURE                          VAL R3
      548 CAPTURE                          VAL R50
      549 CAPTURE                          VAL R27
      550 CAPTURE                          VAL R46
      551 CAPTURE                          VAL R11
      552 CAPTURE                          VAL R44
      553 CAPTURE                          VAL R45
      554 CAPTURE                          VAL R43
      555 CAPTURE                          VAL R32
      556 CAPTURE                          VAL R33
      557 CAPTURE                          VAL R55
      558 CAPTURE                          VAL R7
      559 CAPTURE                          VAL R47
      560 CAPTURE                          VAL R10
      561 CAPTURE                          VAL R53
      562 CAPTURE                          VAL R54
      563 CAPTURE                          VAL R48
      564 CAPTURE                          VAL R51
      565 CAPTURE                          VAL R28
      566 CAPTURE                          VAL R30
      567 CAPTURE                          VAL R24
      568 CAPTURE                          VAL R25
      569 CAPTURE                          VAL R31
      570 CAPTURE                          VAL R1
      571 CAPTURE                          VAL R14
      572 CAPTURE                          VAL R61
      573 CAPTURE                          VAL R62
      574 CAPTURE                          VAL R63
      575 CAPTURE                          VAL R64
      576 CAPTURE                          VAL R40
      577 CAPTURE                          VAL R37
      578 CAPTURE                          VAL R41
      579 CAPTURE                          VAL R42
      580 CAPTURE                          VAL R34
      581 CAPTURE                          VAL R38
      582 CAPTURE                          VAL R39
      583 CAPTURE                          VAL R21
      584 CAPTURE                          VAL R65
      585 CAPTURE                          VAL R66
      586 CAPTURE                          VAL R16
      587 CAPTURE                          VAL R20
      588 CAPTURE                          VAL R60
      589 CAPTURE                          VAL R15
      590 CAPTURE                          VAL R49
      591 CAPTURE                          VAL R70
      592 CAPTURE                          VAL R18
      593 CAPTURE                          VAL R19
      594 CAPTURE                          VAL R71
      595 CAPTURE                          VAL R23
      596 CAPTURE                          VAL R72
      597 CAPTURE                          VAL R68
      598 CAPTURE                          VAL R22
      599 CAPTURE                          VAL R73
      600 CAPTURE                          VAL R69
      601 RETURN                           R74 1
