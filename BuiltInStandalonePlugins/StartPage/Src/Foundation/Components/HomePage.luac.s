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
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialBannerClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
      109 GETUPVAL                         R29 13
      110 JUMPIFNOT                        R29 ; [+14]
      111 GETUPVAL                         R29 12
      112 JUMPIFNOT                        R29 ; [+12]
      113 GETUPVAL                         R30 19
      114 CALL                             R30 0 -1
      115 FASTCALL                         TABLE_UNPACK ; [+2]
      116 GETIMPORT                        R29 K8 [table.unpack]
      118 CALL                             R29 -1 5
      119 MOVE                             R24 R29
      120 MOVE                             R25 R30
      121 MOVE                             R26 R31
      122 MOVE                             R27 R32
      123 MOVE                             R28 R33
      124 JUMP                             ; [+10]
      125 GETUPVAL                         R29 12
      126 JUMPIFNOT                        R29 ; [+8]
      127 GETUPVAL                         R30 19
      128 CALL                             R30 0 -1
      129 FASTCALL                         TABLE_UNPACK ; [+2]
      130 GETIMPORT                        R29 K8 [table.unpack]
      132 CALL                             R29 -1 2
      133 MOVE                             R24 R29
      134 MOVE                             R27 R30
      135 NEWCLOSURE                       R29 P4
      136 CAPTURE                          VAL R10
      137 CAPTURE                          UPVAL U20
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          UPVAL U21
      140 GETUPVAL                         R30 15
      141 NEWCLOSURE                       R31 P5
      142 CAPTURE                          UPVAL U22
      143 CAPTURE                          VAL R11
      144 CAPTURE                          UPVAL U23
      145 CAPTURE                          UPVAL U24
      146 CAPTURE                          UPVAL U25
      147 NEWTABLE                         R32 0 1
      149 NAMECALL                         R33 R11 K9 ["getLocale"]
      151 CALL                             R33 1 -1
      152 SETLIST                          R32 R33 -1 [1]
      154 CALL                             R30 2 1
      155 GETUPVAL                         R32 26
      156 JUMPIFNOT                        R32 ; [+2]
      157 LOADN                            R31 24
      158 JUMP                             ; [+1]
      159 LOADN                            R31 14
      160 GETUPVAL                         R33 26
      161 JUMPIFNOT                        R33 ; [+2]
      162 LOADN                            R32 20
      163 JUMP                             ; [+1]
      164 LOADN                            R32 10
      165 GETUPVAL                         R34 27
      166 GETTABLEKS                       R33 R34 K10 ["createElement"]
      168 GETUPVAL                         R34 28
      169 NEWTABLE                         R35 4 0
      171 GETIMPORT                        R36 K14 [Enum.AutomaticSize.Y]
      173 SETTABLEKS                       R36 R35 K15 ["AutomaticCanvasSize"]
      175 GETIMPORT                        R36 K18 [UDim2.new]
      177 LOADN                            R37 1
      178 LOADN                            R38 0
      179 LOADN                            R39 0
      180 LOADN                            R40 0
      181 CALL                             R36 4 1
      182 SETTABLEKS                       R36 R35 K19 ["CanvasSize"]
      184 LOADN                            R36 0
      185 SETTABLEKS                       R36 R35 K20 ["ScrollBarThickness"]
      187 GETUPVAL                         R37 27
      188 GETTABLEKS                       R36 R37 K21 ["Tag"]
      190 SETTABLE                         R5 R35 R36
      191 DUPTABLE                         R36 K26 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "UnratedExperiencesBanner", "Content"}]
      192 GETUPVAL                         R38 12
      193 JUMPIFNOT                        R38 ; [+81]
      194 JUMPIFNOT                        R24 ; [+80]
      195 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      197 JUMPIF                           R38 ; [+77]
      198 GETUPVAL                         R38 27
      199 GETTABLEKS                       R37 R38 K10 ["createElement"]
      201 GETUPVAL                         R38 29
      202 DUPTABLE                         R39 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      203 GETUPVAL                         R41 30
      204 GETTABLEKS                       R40 R41 K35 ["Emphasis"]
      206 SETTABLEKS                       R40 R39 K28 ["variant"]
      208 GETUPVAL                         R41 31
      209 GETTABLEKS                       R40 R41 K36 ["Info"]
      211 SETTABLEKS                       R40 R39 K29 ["severity"]
      213 LOADK                            R42 K37 ["Plugin"]
      214 LOADK                            R43 K38 ["VerifyAgeBanner.Title"]
      215 NAMECALL                         R40 R11 K39 ["getText"]
      217 CALL                             R40 3 1
      218 SETTABLEKS                       R40 R39 K30 ["title"]
      220 LOADK                            R42 K37 ["Plugin"]
      221 LOADK                            R43 K40 ["VerifyAgeBanner.Body"]
      222 NAMECALL                         R40 R11 K39 ["getText"]
      224 CALL                             R40 3 1
      225 SETTABLEKS                       R40 R39 K31 ["description"]
      227 NEWTABLE                         R40 0 2
      229 DUPTABLE                         R41 K43 [{"text", "variant", "onActivated"}]
      230 LOADK                            R44 K37 ["Plugin"]
      231 LOADK                            R45 K44 ["VerifyAgeBanner.SecondaryAction"]
      232 NAMECALL                         R42 R11 K39 ["getText"]
      234 CALL                             R42 3 1
      235 SETTABLEKS                       R42 R41 K41 ["text"]
      237 GETUPVAL                         R43 32
      238 GETTABLEKS                       R42 R43 K45 ["Utility"]
      240 SETTABLEKS                       R42 R41 K28 ["variant"]
      242 NEWCLOSURE                       R42 P6
      243 CAPTURE                          UPVAL U10
      244 CAPTURE                          UPVAL U33
      245 CAPTURE                          VAL R29
      246 SETTABLEKS                       R42 R41 K42 ["onActivated"]
      248 DUPTABLE                         R42 K43 [{"text", "variant", "onActivated"}]
      249 LOADK                            R45 K37 ["Plugin"]
      250 LOADK                            R46 K46 ["VerifyAgeBanner.PrimaryAction"]
      251 NAMECALL                         R43 R11 K39 ["getText"]
      253 CALL                             R43 3 1
      254 SETTABLEKS                       R43 R42 K41 ["text"]
      256 GETUPVAL                         R44 32
      257 GETTABLEKS                       R43 R44 K47 ["Standard"]
      259 SETTABLEKS                       R43 R42 K28 ["variant"]
      261 NEWCLOSURE                       R43 P7
      262 CAPTURE                          UPVAL U10
      263 CAPTURE                          UPVAL U34
      264 CAPTURE                          VAL R29
      265 SETTABLEKS                       R43 R42 K42 ["onActivated"]
      267 SETLIST                          R40 R41 2 [1]
      269 SETTABLEKS                       R40 R39 K32 ["actions"]
      271 SETTABLEKS                       R27 R39 K33 ["onClose"]
      273 CALL                             R37 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R37
      276 SETTABLEKS                       R37 R36 K22 ["VerifyAgeAlertBanner"]
      278 GETUPVAL                         R38 13
      279 JUMPIFNOT                        R38 ; [+84]
      280 JUMPIFNOT                        R25 ; [+83]
      281 JUMPIF                           R24 ; [+82]
      282 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      284 JUMPIF                           R38 ; [+79]
      285 GETUPVAL                         R38 27
      286 GETTABLEKS                       R37 R38 K10 ["createElement"]
      288 GETUPVAL                         R38 29
      289 DUPTABLE                         R39 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      290 GETUPVAL                         R41 30
      291 GETTABLEKS                       R40 R41 K35 ["Emphasis"]
      293 SETTABLEKS                       R40 R39 K28 ["variant"]
      295 GETUPVAL                         R41 31
      296 GETTABLEKS                       R40 R41 K36 ["Info"]
      298 SETTABLEKS                       R40 R39 K29 ["severity"]
      300 LOADK                            R42 K23 ["EstablishTrustBanner"]
      301 LOADK                            R43 K48 ["Title"]
      302 NAMECALL                         R40 R11 K39 ["getText"]
      304 CALL                             R40 3 1
      305 SETTABLEKS                       R40 R39 K30 ["title"]
      307 LOADK                            R42 K23 ["EstablishTrustBanner"]
      308 LOADK                            R43 K49 ["Body"]
      309 NAMECALL                         R40 R11 K39 ["getText"]
      311 CALL                             R40 3 1
      312 SETTABLEKS                       R40 R39 K31 ["description"]
      314 NEWTABLE                         R40 0 2
      316 DUPTABLE                         R41 K43 [{"text", "variant", "onActivated"}]
      317 LOADK                            R44 K37 ["Plugin"]
      318 LOADK                            R45 K44 ["VerifyAgeBanner.SecondaryAction"]
      319 NAMECALL                         R42 R11 K39 ["getText"]
      321 CALL                             R42 3 1
      322 SETTABLEKS                       R42 R41 K41 ["text"]
      324 GETUPVAL                         R43 32
      325 GETTABLEKS                       R42 R43 K45 ["Utility"]
      327 SETTABLEKS                       R42 R41 K28 ["variant"]
      329 NEWCLOSURE                       R42 P8
      330 CAPTURE                          UPVAL U10
      331 CAPTURE                          UPVAL U35
      332 CAPTURE                          VAL R29
      333 SETTABLEKS                       R42 R41 K42 ["onActivated"]
      335 DUPTABLE                         R42 K43 [{"text", "variant", "onActivated"}]
      336 LOADK                            R45 K37 ["Plugin"]
      337 LOADK                            R46 K46 ["VerifyAgeBanner.PrimaryAction"]
      338 NAMECALL                         R43 R11 K39 ["getText"]
      340 CALL                             R43 3 1
      341 SETTABLEKS                       R43 R42 K41 ["text"]
      343 GETUPVAL                         R44 32
      344 GETTABLEKS                       R43 R44 K47 ["Standard"]
      346 SETTABLEKS                       R43 R42 K28 ["variant"]
      348 NEWCLOSURE                       R43 P9
      349 CAPTURE                          REF R26
      350 CAPTURE                          REF R18
      351 CAPTURE                          UPVAL U10
      352 CAPTURE                          UPVAL U36
      353 CAPTURE                          VAL R29
      354 SETTABLEKS                       R43 R42 K42 ["onActivated"]
      356 SETLIST                          R40 R41 2 [1]
      358 SETTABLEKS                       R40 R39 K32 ["actions"]
      360 SETTABLEKS                       R28 R39 K33 ["onClose"]
      362 CALL                             R37 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R37
      365 SETTABLEKS                       R37 R36 K23 ["EstablishTrustBanner"]
      367 JUMPIFNOT                        R6 ; [+95]
      368 JUMPIF                           R8 ; [+94]
      369 GETTABLEKS                       R38 R0 K27 ["hideBanner"]
      371 JUMPIF                           R38 ; [+91]
      372 GETUPVAL                         R38 27
      373 GETTABLEKS                       R37 R38 K10 ["createElement"]
      375 GETUPVAL                         R38 37
      376 DUPTABLE                         R39 K52 [{"tag", "LayoutOrder"}]
      377 LOADK                            R40 K53 ["padding-x-xxlarge padding-top-large auto-y size-full-0"]
      378 SETTABLEKS                       R40 R39 K50 ["tag"]
      380 MOVE                             R40 R22
      381 CALL                             R40 0 1
      382 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      384 GETUPVAL                         R41 27
      385 GETTABLEKS                       R40 R41 K10 ["createElement"]
      387 GETUPVAL                         R41 29
      388 DUPTABLE                         R42 K34 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      389 GETUPVAL                         R44 30
      390 GETTABLEKS                       R43 R44 K35 ["Emphasis"]
      392 SETTABLEKS                       R43 R42 K28 ["variant"]
      394 GETUPVAL                         R44 31
      395 GETTABLEKS                       R43 R44 K54 ["Error"]
      397 SETTABLEKS                       R43 R42 K29 ["severity"]
      399 LOADK                            R45 K37 ["Plugin"]
      400 LOADK                            R46 K55 ["UnratedExperiencesBanner.Title"]
      401 NAMECALL                         R43 R11 K39 ["getText"]
      403 CALL                             R43 3 1
      404 SETTABLEKS                       R43 R42 K30 ["title"]
      406 LOADK                            R45 K37 ["Plugin"]
      407 LOADK                            R46 K56 ["UnratedExperiencesBanner.Description"]
      408 NAMECALL                         R43 R11 K39 ["getText"]
      410 CALL                             R43 3 1
      411 SETTABLEKS                       R43 R42 K31 ["description"]
      413 NEWTABLE                         R43 0 2
      415 DUPTABLE                         R44 K43 [{"text", "variant", "onActivated"}]
      416 LOADK                            R47 K37 ["Plugin"]
      417 LOADK                            R48 K57 ["UnratedExperiencesBanner.PolicyDetailsAction"]
      418 NAMECALL                         R45 R11 K39 ["getText"]
      420 CALL                             R45 3 1
      421 SETTABLEKS                       R45 R44 K41 ["text"]
      423 GETUPVAL                         R46 32
      424 GETTABLEKS                       R45 R46 K45 ["Utility"]
      426 SETTABLEKS                       R45 R44 K28 ["variant"]
      428 DUPCLOSURE                       R45 K58 [PROTO_24]
      429 CAPTURE                          UPVAL U10
      430 CAPTURE                          UPVAL U38
      431 SETTABLEKS                       R45 R44 K42 ["onActivated"]
      433 DUPTABLE                         R45 K43 [{"text", "variant", "onActivated"}]
      434 LOADK                            R48 K37 ["Plugin"]
      435 LOADK                            R49 K59 ["UnratedExperiencesBanner.ViewExperiencesAction"]
      436 NAMECALL                         R46 R11 K39 ["getText"]
      438 CALL                             R46 3 1
      439 SETTABLEKS                       R46 R45 K41 ["text"]
      441 GETUPVAL                         R47 32
      442 GETTABLEKS                       R46 R47 K47 ["Standard"]
      444 SETTABLEKS                       R46 R45 K28 ["variant"]
      446 DUPCLOSURE                       R46 K60 [PROTO_25]
      447 CAPTURE                          UPVAL U10
      448 CAPTURE                          UPVAL U39
      449 SETTABLEKS                       R46 R45 K42 ["onActivated"]
      451 SETLIST                          R43 R44 2 [1]
      453 SETTABLEKS                       R43 R42 K32 ["actions"]
      455 NEWCLOSURE                       R43 P12
      456 CAPTURE                          VAL R9
      457 CAPTURE                          VAL R1
      458 SETTABLEKS                       R43 R42 K33 ["onClose"]
      460 CALL                             R40 2 -1
      461 CALL                             R37 -1 1
      462 JUMP                             ; [+1]
      463 LOADNIL                          R37
      464 SETTABLEKS                       R37 R36 K24 ["UnratedExperiencesBanner"]
      466 GETUPVAL                         R38 27
      467 GETTABLEKS                       R37 R38 K10 ["createElement"]
      469 GETUPVAL                         R38 37
      470 DUPTABLE                         R39 K61 [{"LayoutOrder", "tag"}]
      471 MOVE                             R40 R22
      472 CALL                             R40 0 1
      473 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      475 LOADK                            R40 K62 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      476 SETTABLEKS                       R40 R39 K50 ["tag"]
      478 DUPTABLE                         R40 K69 [{"Header", "TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
      479 GETUPVAL                         R42 27
      480 GETTABLEKS                       R41 R42 K10 ["createElement"]
      482 GETUPVAL                         R42 40
      483 DUPTABLE                         R43 K70 [{"title", "LayoutOrder"}]
      484 JUMPIFNOT                        R23 ; [+9]
      485 LOADK                            R46 K37 ["Plugin"]
      486 LOADK                            R47 K71 ["HomePage.WelcomeWithUsername"]
      487 DUPTABLE                         R48 K73 [{"username"}]
      488 SETTABLEKS                       R23 R48 K72 ["username"]
      490 NAMECALL                         R44 R11 K39 ["getText"]
      492 CALL                             R44 4 1
      493 JUMP                             ; [+5]
      494 LOADK                            R46 K37 ["Plugin"]
      495 LOADK                            R47 K74 ["HomePage.Welcome"]
      496 NAMECALL                         R44 R11 K39 ["getText"]
      498 CALL                             R44 3 1
      499 SETTABLEKS                       R44 R43 K30 ["title"]
      501 MOVE                             R44 R22
      502 CALL                             R44 0 1
      503 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      505 CALL                             R41 2 1
      506 SETTABLEKS                       R41 R40 K63 ["Header"]
      508 JUMPIFNOT                        R14 ; [+25]
      509 GETUPVAL                         R42 27
      510 GETTABLEKS                       R41 R42 K10 ["createElement"]
      512 GETUPVAL                         R42 37
      513 DUPTABLE                         R43 K61 [{"LayoutOrder", "tag"}]
      514 MOVE                             R44 R22
      515 CALL                             R44 0 1
      516 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      518 LOADK                            R44 K75 ["size-full-0 auto-y col padding-bottom-medium"]
      519 SETTABLEKS                       R44 R43 K50 ["tag"]
      521 GETUPVAL                         R45 27
      522 GETTABLEKS                       R44 R45 K10 ["createElement"]
      524 GETUPVAL                         R45 41
      525 DUPTABLE                         R46 K76 [{"onClose"}]
      526 NEWCLOSURE                       R47 P13
      527 CAPTURE                          VAL R15
      528 CAPTURE                          UPVAL U10
      529 SETTABLEKS                       R47 R46 K33 ["onClose"]
      531 CALL                             R44 2 -1
      532 CALL                             R41 -1 1
      533 JUMP                             ; [+1]
      534 LOADNIL                          R41
      535 SETTABLEKS                       R41 R40 K64 ["TutorialBanner"]
      537 GETTABLEKS                       R42 R0 K77 ["hideRecents"]
      539 JUMPIF                           R42 ; [+161]
      540 JUMPIFNOT                        R16 ; [+160]
      541 GETUPVAL                         R42 27
      542 GETTABLEKS                       R41 R42 K10 ["createElement"]
      544 GETUPVAL                         R42 42
      545 DUPTABLE                         R43 K79 [{"LayoutOrder", "tag", "testId"}]
      546 MOVE                             R44 R22
      547 CALL                             R44 0 1
      548 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      550 LOADK                            R44 K80 ["size-full-0 auto-y col gap-xsmall"]
      551 SETTABLEKS                       R44 R43 K50 ["tag"]
      553 LOADK                            R44 K81 ["--start-page-RecentExperiences-section"]
      554 SETTABLEKS                       R44 R43 K78 ["testId"]
      556 DUPTABLE                         R44 K82 [{"Header", "Content"}]
      557 GETUPVAL                         R46 27
      558 GETTABLEKS                       R45 R46 K10 ["createElement"]
      560 GETUPVAL                         R46 43
      561 DUPTABLE                         R47 K85 [{"title", "buttonText", "onButtonClick", "LayoutOrder"}]
      562 LOADK                            R50 K37 ["Plugin"]
      563 LOADK                            R51 K86 ["HomePage.MyRecentExperiences"]
      564 NAMECALL                         R48 R11 K39 ["getText"]
      566 CALL                             R48 3 1
      567 SETTABLEKS                       R48 R47 K30 ["title"]
      569 LOADK                            R50 K37 ["Plugin"]
      570 LOADK                            R51 K87 ["SeeAll"]
      571 NAMECALL                         R48 R11 K39 ["getText"]
      573 CALL                             R48 3 1
      574 SETTABLEKS                       R48 R47 K83 ["buttonText"]
      576 NEWCLOSURE                       R48 P14
      577 CAPTURE                          VAL R10
      578 CAPTURE                          UPVAL U16
      579 CAPTURE                          VAL R0
      580 SETTABLEKS                       R48 R47 K84 ["onButtonClick"]
      582 MOVE                             R48 R22
      583 CALL                             R48 0 1
      584 SETTABLEKS                       R48 R47 K51 ["LayoutOrder"]
      586 CALL                             R45 2 1
      587 SETTABLEKS                       R45 R44 K63 ["Header"]
      589 GETUPVAL                         R46 27
      590 GETTABLEKS                       R45 R46 K10 ["createElement"]
      592 GETUPVAL                         R47 44
      593 GETTABLEKS                       R46 R47 K88 ["Provider"]
      595 DUPTABLE                         R47 K90 [{"value"}]
      596 GETUPVAL                         R48 45
      597 SETTABLEKS                       R48 R47 K89 ["value"]
      599 GETUPVAL                         R49 27
      600 GETTABLEKS                       R48 R49 K10 ["createElement"]
      602 GETUPVAL                         R49 46
      603 DUPTABLE                         R50 K103 [{"Size", "DisplayComponent", "MaxCount", "PageSize", "ShowRecentAPIGames", "ShowRecentLocalFiles", "OnItemCountUpdated", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      604 GETIMPORT                        R51 K18 [UDim2.new]
      606 LOADN                            R52 1
      607 LOADN                            R53 0
      608 LOADN                            R54 0
      609 LOADN                            R55 99
      610 CALL                             R51 4 1
      611 SETTABLEKS                       R51 R50 K91 ["Size"]
      613 GETUPVAL                         R51 47
      614 SETTABLEKS                       R51 R50 K92 ["DisplayComponent"]
      616 LOADN                            R51 6
      617 SETTABLEKS                       R51 R50 K93 ["MaxCount"]
      619 LOADN                            R51 10
      620 SETTABLEKS                       R51 R50 K94 ["PageSize"]
      622 LOADB                            R51 1
      623 SETTABLEKS                       R51 R50 K95 ["ShowRecentAPIGames"]
      625 LOADB                            R51 1
      626 SETTABLEKS                       R51 R50 K96 ["ShowRecentLocalFiles"]
      628 SETTABLEKS                       R21 R50 K97 ["OnItemCountUpdated"]
      630 GETUPVAL                         R51 48
      631 SETTABLEKS                       R51 R50 K98 ["CellComponent"]
      633 GETIMPORT                        R51 K18 [UDim2.new]
      635 LOADN                            R52 0
      636 LOADN                            R53 224
      637 LOADN                            R54 0
      638 LOADN                            R55 92
      639 CALL                             R51 4 1
      640 SETTABLEKS                       R51 R50 K99 ["CellSize"]
      642 GETIMPORT                        R51 K18 [UDim2.new]
      644 LOADN                            R52 0
      645 LOADN                            R53 16
      646 LOADN                            R54 0
      647 LOADN                            R55 16
      648 CALL                             R51 4 1
      649 SETTABLEKS                       R51 R50 K100 ["CellPadding"]
      651 DUPTABLE                         R51 K113 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
      652 LOADK                            R52 K114 ["Recents"]
      653 SETTABLEKS                       R52 R51 K104 ["searchKey"]
      655 LOADK                            R52 K115 [""]
      656 SETTABLEKS                       R52 R51 K105 ["search"]
      658 LOADK                            R52 K116 ["User"]
      659 SETTABLEKS                       R52 R51 K106 ["creatorType"]
      661 GETUPVAL                         R53 5
      662 NAMECALL                         R53 R53 K117 ["GetUserId"]
      664 CALL                             R53 1 -1
      665 FASTCALL                         TOSTRING ; [+2]
      666 GETIMPORT                        R52 K119 [tostring]
      668 CALL                             R52 -1 1
      669 SETTABLEKS                       R52 R51 K107 ["creatorTargetId"]
      671 LOADB                            R52 0
      672 SETTABLEKS                       R52 R51 K108 ["isArchived"]
      674 LOADB                            R52 0
      675 SETTABLEKS                       R52 R51 K109 ["isTemplates"]
      677 LOADN                            R52 10
      678 SETTABLEKS                       R52 R51 K110 ["pageSize"]
      680 LOADB                            R52 1
      681 SETTABLEKS                       R52 R51 K111 ["getRecentLocalFiles"]
      683 LOADB                            R52 1
      684 SETTABLEKS                       R52 R51 K112 ["getRecentAPIGames"]
      686 SETTABLEKS                       R51 R50 K101 ["Query"]
      688 GETUPVAL                         R51 49
      689 SETTABLEKS                       R51 R50 K102 ["FetchItems"]
      691 MOVE                             R51 R22
      692 CALL                             R51 0 1
      693 SETTABLEKS                       R51 R50 K51 ["LayoutOrder"]
      695 CALL                             R48 2 -1
      696 CALL                             R45 -1 1
      697 SETTABLEKS                       R45 R44 K25 ["Content"]
      699 CALL                             R41 3 1
      700 JUMP                             ; [+1]
      701 LOADNIL                          R41
      702 SETTABLEKS                       R41 R40 K65 ["RecentExperiences"]
      704 GETUPVAL                         R42 27
      705 GETTABLEKS                       R41 R42 K10 ["createElement"]
      707 GETUPVAL                         R42 37
      708 DUPTABLE                         R43 K61 [{"LayoutOrder", "tag"}]
      709 MOVE                             R44 R22
      710 CALL                             R44 0 1
      711 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      713 LOADK                            R44 K120 ["size-full-0 auto-y col gap-large"]
      714 SETTABLEKS                       R44 R43 K50 ["tag"]
      716 DUPTABLE                         R44 K82 [{"Header", "Content"}]
      717 GETUPVAL                         R46 27
      718 GETTABLEKS                       R45 R46 K10 ["createElement"]
      720 GETUPVAL                         R46 43
      721 DUPTABLE                         R47 K121 [{"title", "description", "buttonText", "onButtonClick", "LayoutOrder"}]
      722 LOADK                            R50 K37 ["Plugin"]
      723 LOADK                            R51 K122 ["HomePage.Templates.Heading"]
      724 NAMECALL                         R48 R11 K39 ["getText"]
      726 CALL                             R48 3 1
      727 SETTABLEKS                       R48 R47 K30 ["title"]
      729 LOADK                            R50 K37 ["Plugin"]
      730 LOADK                            R51 K123 ["HomePage.Templates.Description"]
      731 NAMECALL                         R48 R11 K39 ["getText"]
      733 CALL                             R48 3 1
      734 SETTABLEKS                       R48 R47 K31 ["description"]
      736 LOADK                            R50 K37 ["Plugin"]
      737 LOADK                            R51 K87 ["SeeAll"]
      738 NAMECALL                         R48 R11 K39 ["getText"]
      740 CALL                             R48 3 1
      741 SETTABLEKS                       R48 R47 K83 ["buttonText"]
      743 NEWCLOSURE                       R48 P15
      744 CAPTURE                          VAL R10
      745 CAPTURE                          UPVAL U16
      746 CAPTURE                          VAL R0
      747 SETTABLEKS                       R48 R47 K84 ["onButtonClick"]
      749 MOVE                             R48 R22
      750 CALL                             R48 0 1
      751 SETTABLEKS                       R48 R47 K51 ["LayoutOrder"]
      753 CALL                             R45 2 1
      754 SETTABLEKS                       R45 R44 K63 ["Header"]
      756 GETUPVAL                         R46 27
      757 GETTABLEKS                       R45 R46 K10 ["createElement"]
      759 GETUPVAL                         R46 46
      760 DUPTABLE                         R47 K124 [{"Size", "DisplayComponent", "MaxCount", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      761 GETIMPORT                        R48 K18 [UDim2.new]
      763 LOADN                            R49 1
      764 LOADN                            R50 0
      765 LOADN                            R51 0
      766 LOADN                            R52 8
      767 CALL                             R48 4 1
      768 SETTABLEKS                       R48 R47 K91 ["Size"]
      770 GETUPVAL                         R48 47
      771 SETTABLEKS                       R48 R47 K92 ["DisplayComponent"]
      773 LOADN                            R48 6
      774 SETTABLEKS                       R48 R47 K93 ["MaxCount"]
      776 GETUPVAL                         R48 50
      777 SETTABLEKS                       R48 R47 K98 ["CellComponent"]
      779 GETIMPORT                        R48 K18 [UDim2.new]
      781 LOADN                            R49 0
      782 LOADN                            R50 225
      783 LOADN                            R51 0
      784 LOADN                            R52 252
      785 CALL                             R48 4 1
      786 SETTABLEKS                       R48 R47 K99 ["CellSize"]
      788 GETIMPORT                        R48 K18 [UDim2.new]
      790 LOADN                            R49 0
      791 LOADN                            R50 16
      792 LOADN                            R51 0
      793 LOADN                            R52 16
      794 CALL                             R48 4 1
      795 SETTABLEKS                       R48 R47 K100 ["CellPadding"]
      797 GETUPVAL                         R48 51
      798 SETTABLEKS                       R48 R47 K101 ["Query"]
      800 GETUPVAL                         R48 52
      801 SETTABLEKS                       R48 R47 K102 ["FetchItems"]
      803 MOVE                             R48 R22
      804 CALL                             R48 0 1
      805 SETTABLEKS                       R48 R47 K51 ["LayoutOrder"]
      807 CALL                             R45 2 1
      808 SETTABLEKS                       R45 R44 K25 ["Content"]
      810 CALL                             R41 3 1
      811 SETTABLEKS                       R41 R40 K66 ["Templates"]
      813 GETUPVAL                         R42 27
      814 GETTABLEKS                       R41 R42 K10 ["createElement"]
      816 GETUPVAL                         R42 37
      817 DUPTABLE                         R43 K61 [{"LayoutOrder", "tag"}]
      818 MOVE                             R44 R22
      819 CALL                             R44 0 1
      820 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      822 LOADK                            R44 K120 ["size-full-0 auto-y col gap-large"]
      823 SETTABLEKS                       R44 R43 K50 ["tag"]
      825 DUPTABLE                         R44 K82 [{"Header", "Content"}]
      826 GETUPVAL                         R46 27
      827 GETTABLEKS                       R45 R46 K10 ["createElement"]
      829 GETUPVAL                         R46 43
      830 DUPTABLE                         R47 K125 [{"title", "description", "LayoutOrder"}]
      831 LOADK                            R50 K37 ["Plugin"]
      832 LOADK                            R51 K126 ["HomePage.DiscoverStudio.Heading"]
      833 NAMECALL                         R48 R11 K39 ["getText"]
      835 CALL                             R48 3 1
      836 SETTABLEKS                       R48 R47 K30 ["title"]
      838 LOADK                            R50 K37 ["Plugin"]
      839 LOADK                            R51 K127 ["HomePage.DiscoverStudio.Description"]
      840 NAMECALL                         R48 R11 K39 ["getText"]
      842 CALL                             R48 3 1
      843 SETTABLEKS                       R48 R47 K31 ["description"]
      845 MOVE                             R48 R22
      846 CALL                             R48 0 1
      847 SETTABLEKS                       R48 R47 K51 ["LayoutOrder"]
      849 CALL                             R45 2 1
      850 SETTABLEKS                       R45 R44 K63 ["Header"]
      852 GETUPVAL                         R46 27
      853 GETTABLEKS                       R45 R46 K10 ["createElement"]
      855 GETUPVAL                         R46 46
      856 DUPTABLE                         R47 K128 [{"Size", "DisplayComponent", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems", "LayoutOrder"}]
      857 GETIMPORT                        R48 K18 [UDim2.new]
      859 LOADN                            R49 1
      860 LOADN                            R50 0
      861 LOADN                            R51 0
      862 MOVE                             R52 R31
      863 CALL                             R48 4 1
      864 SETTABLEKS                       R48 R47 K91 ["Size"]
      866 GETUPVAL                         R48 47
      867 SETTABLEKS                       R48 R47 K92 ["DisplayComponent"]
      869 GETUPVAL                         R48 53
      870 SETTABLEKS                       R48 R47 K98 ["CellComponent"]
      872 GETIMPORT                        R48 K18 [UDim2.new]
      874 LOADN                            R49 0
      875 LOADN                            R50 225
      876 LOADN                            R51 0
      877 MOVE                             R52 R32
      878 CALL                             R48 4 1
      879 SETTABLEKS                       R48 R47 K99 ["CellSize"]
      881 GETIMPORT                        R48 K18 [UDim2.new]
      883 LOADN                            R49 0
      884 LOADN                            R50 16
      885 LOADN                            R51 0
      886 LOADN                            R52 16
      887 CALL                             R48 4 1
      888 SETTABLEKS                       R48 R47 K100 ["CellPadding"]
      890 GETUPVAL                         R48 54
      891 SETTABLEKS                       R48 R47 K101 ["Query"]
      893 SETTABLEKS                       R30 R47 K102 ["FetchItems"]
      895 MOVE                             R48 R22
      896 CALL                             R48 0 1
      897 SETTABLEKS                       R48 R47 K51 ["LayoutOrder"]
      899 CALL                             R45 2 1
      900 SETTABLEKS                       R45 R44 K25 ["Content"]
      902 CALL                             R41 3 1
      903 SETTABLEKS                       R41 R40 K67 ["Momentum"]
      905 GETUPVAL                         R42 27
      906 GETTABLEKS                       R41 R42 K10 ["createElement"]
      908 GETUPVAL                         R42 42
      909 DUPTABLE                         R43 K129 [{"LayoutOrder", "Size"}]
      910 MOVE                             R44 R22
      911 CALL                             R44 0 1
      912 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      914 GETIMPORT                        R44 K18 [UDim2.new]
      916 LOADN                            R45 1
      917 LOADN                            R46 0
      918 LOADN                            R47 0
      919 LOADN                            R48 40
      920 CALL                             R44 4 1
      921 SETTABLEKS                       R44 R43 K91 ["Size"]
      923 CALL                             R41 2 1
      924 SETTABLEKS                       R41 R40 K68 ["Spacer"]
      926 CALL                             R37 3 1
      927 SETTABLEKS                       R37 R36 K25 ["Content"]
      929 CALL                             R33 3 -1
      930 CLOSEUPVALS                      R18
      931 RETURN                           R33 -1

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
      245 GETTABLEKS                       R35 R36 K48 ["getFStringAgeRestrictedLink"]
      247 CALL                             R34 1 1
      248 GETIMPORT                        R35 K5 [require]
      250 GETTABLEKS                       R38 R0 K23 ["Src"]
      252 GETTABLEKS                       R37 R38 K42 ["SharedFlags"]
      254 GETTABLEKS                       R36 R37 K49 ["getFStringUnratedExperiencesLink"]
      256 CALL                             R35 1 1
      257 GETIMPORT                        R36 K5 [require]
      259 GETTABLEKS                       R39 R0 K23 ["Src"]
      261 GETTABLEKS                       R38 R39 K42 ["SharedFlags"]
      263 GETTABLEKS                       R37 R38 K50 ["getFStringLuaStartPageVerifyAgeLink"]
      265 CALL                             R36 1 1
      266 GETIMPORT                        R37 K5 [require]
      268 GETTABLEKS                       R40 R0 K23 ["Src"]
      270 GETTABLEKS                       R39 R40 K42 ["SharedFlags"]
      272 GETTABLEKS                       R38 R39 K51 ["getFStringLuaStartPageFAEDevForumLink"]
      274 CALL                             R37 1 1
      275 GETIMPORT                        R38 K5 [require]
      277 GETTABLEKS                       R41 R0 K23 ["Src"]
      279 GETTABLEKS                       R40 R41 K42 ["SharedFlags"]
      281 GETTABLEKS                       R39 R40 K52 ["getFStringStartPageEstablishTrustDevForumLink"]
      283 CALL                             R38 1 1
      284 GETIMPORT                        R39 K5 [require]
      286 GETTABLEKS                       R42 R0 K23 ["Src"]
      288 GETTABLEKS                       R41 R42 K42 ["SharedFlags"]
      290 GETTABLEKS                       R40 R41 K53 ["getFStringStartPageVerifyParentalConsentLink"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K5 [require]
      295 GETTABLEKS                       R43 R0 K23 ["Src"]
      297 GETTABLEKS                       R42 R43 K42 ["SharedFlags"]
      299 GETTABLEKS                       R41 R42 K54 ["safeGetFastFlag"]
      301 CALL                             R40 1 1
      302 GETIMPORT                        R41 K5 [require]
      304 GETTABLEKS                       R44 R0 K23 ["Src"]
      306 GETTABLEKS                       R43 R44 K16 ["Util"]
      308 GETTABLEKS                       R42 R43 K55 ["Services"]
      310 CALL                             R41 1 1
      311 GETTABLEKS                       R42 R41 K56 ["StartPageManager"]
      313 GETIMPORT                        R43 K5 [require]
      315 GETTABLEKS                       R47 R0 K23 ["Src"]
      317 GETTABLEKS                       R46 R47 K16 ["Util"]
      319 GETTABLEKS                       R45 R46 K57 ["Telemetry"]
      321 GETTABLEKS                       R44 R45 K58 ["TelemetryContext"]
      323 CALL                             R43 1 1
      324 GETIMPORT                        R44 K5 [require]
      326 GETTABLEKS                       R48 R0 K23 ["Src"]
      328 GETTABLEKS                       R47 R48 K16 ["Util"]
      330 GETTABLEKS                       R46 R47 K57 ["Telemetry"]
      332 GETTABLEKS                       R45 R46 K59 ["StartPageTelemetryEvent"]
      334 CALL                             R44 1 1
      335 GETIMPORT                        R45 K5 [require]
      337 GETTABLEKS                       R49 R0 K23 ["Src"]
      339 GETTABLEKS                       R48 R49 K16 ["Util"]
      341 GETTABLEKS                       R47 R48 K57 ["Telemetry"]
      343 GETTABLEKS                       R46 R47 K60 ["StudioSafetyUpsellClickedEvent"]
      345 CALL                             R45 1 1
      346 GETIMPORT                        R46 K5 [require]
      348 GETTABLEKS                       R49 R0 K23 ["Src"]
      350 GETTABLEKS                       R48 R49 K61 ["Contexts"]
      352 GETTABLEKS                       R47 R48 K62 ["ContextMenuActions"]
      354 CALL                             R46 1 1
      355 GETTABLEKS                       R47 R41 K63 ["StudioService"]
      357 GETTABLEKS                       R48 R41 K64 ["RbxAnalyticsService"]
      359 GETIMPORT                        R49 K5 [require]
      361 GETTABLEKS                       R52 R0 K23 ["Src"]
      363 GETTABLEKS                       R51 R52 K16 ["Util"]
      365 GETTABLEKS                       R50 R51 K65 ["Dialogs"]
      367 CALL                             R49 1 1
      368 GETIMPORT                        R50 K5 [require]
      370 GETTABLEKS                       R53 R0 K23 ["Src"]
      372 GETTABLEKS                       R52 R53 K66 ["Hooks"]
      374 GETTABLEKS                       R51 R52 K67 ["useUsername"]
      376 CALL                             R50 1 1
      377 GETIMPORT                        R51 K5 [require]
      379 GETTABLEKS                       R54 R0 K23 ["Src"]
      381 GETTABLEKS                       R53 R54 K66 ["Hooks"]
      383 GETTABLEKS                       R52 R53 K68 ["useShowVerifyAgeBanner"]
      385 CALL                             R51 1 1
      386 GETIMPORT                        R52 K5 [require]
      388 GETTABLEKS                       R55 R0 K23 ["Src"]
      390 GETTABLEKS                       R54 R55 K66 ["Hooks"]
      392 GETTABLEKS                       R53 R54 K69 ["useEstablishTrustDialog"]
      394 CALL                             R52 1 1
      395 GETIMPORT                        R53 K5 [require]
      397 GETTABLEKS                       R56 R0 K23 ["Src"]
      399 GETTABLEKS                       R55 R56 K42 ["SharedFlags"]
      401 GETTABLEKS                       R54 R55 K70 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      403 CALL                             R53 1 1
      404 CALL                             R53 0 1
      405 GETIMPORT                        R54 K5 [require]
      407 GETTABLEKS                       R57 R0 K23 ["Src"]
      409 GETTABLEKS                       R56 R57 K42 ["SharedFlags"]
      411 GETTABLEKS                       R55 R56 K71 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      413 CALL                             R54 1 1
      414 CALL                             R54 0 1
      415 GETIMPORT                        R55 K5 [require]
      417 GETTABLEKS                       R57 R0 K6 ["Packages"]
      419 GETTABLEKS                       R56 R57 K24 ["Foundation"]
      421 CALL                             R55 1 1
      422 GETTABLEKS                       R57 R55 K66 ["Hooks"]
      424 GETTABLEKS                       R56 R57 K72 ["useStyleTags"]
      426 GETTABLEKS                       R57 R55 K73 ["View"]
      428 GETTABLEKS                       R58 R55 K74 ["SystemBanner"]
      430 GETTABLEKS                       R60 R55 K75 ["Enums"]
      432 GETTABLEKS                       R59 R60 K76 ["AlertVariant"]
      434 GETTABLEKS                       R61 R55 K75 ["Enums"]
      436 GETTABLEKS                       R60 R61 K77 ["AlertSeverity"]
      438 GETTABLEKS                       R62 R55 K75 ["Enums"]
      440 GETTABLEKS                       R61 R62 K78 ["ButtonVariant"]
      442 MOVE                             R62 R34
      443 CALL                             R62 0 1
      444 MOVE                             R63 R35
      445 CALL                             R63 0 1
      446 DUPCLOSURE                       R64 K79 [PROTO_0]
      447 CAPTURE                          VAL R47
      448 DUPTABLE                         R65 K84 [{"searchKey", "search", "isTemplates", "pageSize"}]
      449 LOADK                            R66 K85 ["Templates"]
      450 SETTABLEKS                       R66 R65 K80 ["searchKey"]
      452 LOADK                            R66 K86 ["All"]
      453 SETTABLEKS                       R66 R65 K81 ["search"]
      455 LOADB                            R66 1
      456 SETTABLEKS                       R66 R65 K82 ["isTemplates"]
      458 LOADN                            R66 30
      459 SETTABLEKS                       R66 R65 K83 ["pageSize"]
      461 DUPTABLE                         R66 K87 [{"searchKey", "pageSize"}]
      462 LOADK                            R67 K33 ["Network"]
      463 SETTABLEKS                       R67 R66 K80 ["searchKey"]
      465 LOADN                            R67 30
      466 SETTABLEKS                       R67 R66 K83 ["pageSize"]
      468 NEWTABLE                         R67 0 6
      470 LOADK                            R68 K88 ["ConfigureExperience"]
      471 LOADK                            R69 K89 ["ConfigurePlace"]
      472 LOADK                            R70 K90 ["OpenPlace"]
      473 JUMPIF                           R54 ; [+2]
      474 LOADK                            R71 K91 ["PublicPrivateToggle"]
      475 JUMP                             ; [+1]
      476 LOADK                            R71 K92 [""]
      477 LOADK                            R72 K93 ["Archive"]
      478 LOADK                            R73 K94 ["RemoveRecent"]
      479 SETLIST                          R67 R68 6 [1]
      481 DUPCLOSURE                       R68 K95 [PROTO_2]
      482 CAPTURE                          VAL R43
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R49
      485 CAPTURE                          VAL R1
      486 CAPTURE                          VAL R17
      487 CAPTURE                          VAL R9
      488 CAPTURE                          VAL R26
      489 CAPTURE                          VAL R47
      490 CAPTURE                          VAL R42
      491 CAPTURE                          VAL R53
      492 CAPTURE                          VAL R44
      493 CAPTURE                          VAL R67
      494 DUPCLOSURE                       R69 K96 [PROTO_6]
      495 CAPTURE                          VAL R43
      496 CAPTURE                          VAL R1
      497 CAPTURE                          VAL R17
      498 CAPTURE                          VAL R9
      499 CAPTURE                          VAL R26
      500 CAPTURE                          VAL R47
      501 CAPTURE                          VAL R53
      502 CAPTURE                          VAL R44
      503 DUPCLOSURE                       R70 K97 [PROTO_10]
      504 CAPTURE                          VAL R43
      505 CAPTURE                          VAL R1
      506 CAPTURE                          VAL R17
      507 CAPTURE                          VAL R9
      508 CAPTURE                          VAL R30
      509 CAPTURE                          VAL R44
      510 CAPTURE                          VAL R42
      511 CAPTURE                          VAL R26
      512 CAPTURE                          VAL R47
      513 CAPTURE                          VAL R29
      514 DUPCLOSURE                       R71 K98 [PROTO_30]
      515 CAPTURE                          VAL R12
      516 CAPTURE                          VAL R2
      517 CAPTURE                          VAL R56
      518 CAPTURE                          VAL R4
      519 CAPTURE                          VAL R3
      520 CAPTURE                          VAL R47
      521 CAPTURE                          VAL R27
      522 CAPTURE                          VAL R43
      523 CAPTURE                          VAL R11
      524 CAPTURE                          VAL R41
      525 CAPTURE                          VAL R42
      526 CAPTURE                          VAL R40
      527 CAPTURE                          VAL R32
      528 CAPTURE                          VAL R33
      529 CAPTURE                          VAL R52
      530 CAPTURE                          VAL R7
      531 CAPTURE                          VAL R44
      532 CAPTURE                          VAL R10
      533 CAPTURE                          VAL R50
      534 CAPTURE                          VAL R51
      535 CAPTURE                          VAL R45
      536 CAPTURE                          VAL R48
      537 CAPTURE                          VAL R28
      538 CAPTURE                          VAL R30
      539 CAPTURE                          VAL R24
      540 CAPTURE                          VAL R25
      541 CAPTURE                          VAL R31
      542 CAPTURE                          VAL R1
      543 CAPTURE                          VAL R14
      544 CAPTURE                          VAL R58
      545 CAPTURE                          VAL R59
      546 CAPTURE                          VAL R60
      547 CAPTURE                          VAL R61
      548 CAPTURE                          VAL R37
      549 CAPTURE                          VAL R36
      550 CAPTURE                          VAL R38
      551 CAPTURE                          VAL R39
      552 CAPTURE                          VAL R21
      553 CAPTURE                          VAL R62
      554 CAPTURE                          VAL R63
      555 CAPTURE                          VAL R16
      556 CAPTURE                          VAL R20
      557 CAPTURE                          VAL R57
      558 CAPTURE                          VAL R15
      559 CAPTURE                          VAL R46
      560 CAPTURE                          VAL R67
      561 CAPTURE                          VAL R18
      562 CAPTURE                          VAL R19
      563 CAPTURE                          VAL R68
      564 CAPTURE                          VAL R23
      565 CAPTURE                          VAL R69
      566 CAPTURE                          VAL R65
      567 CAPTURE                          VAL R22
      568 CAPTURE                          VAL R70
      569 CAPTURE                          VAL R66
      570 RETURN                           R71 1
