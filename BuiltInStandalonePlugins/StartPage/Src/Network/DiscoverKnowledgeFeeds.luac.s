PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["CDNUrl"]
        6 JUMPIFNOT                        R6 ; [+6]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R8 R5 K0 ["CDNUrl"]
       10 NAMECALL                         R6 R6 K1 ["generateTempUrlInContentProvider"]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-10]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["feedItems"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 GETUPVAL                         R5 2
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 3
       13 NAMECALL                         R4 R4 K1 ["isTutorialBannerClosed"]
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+23]
       17 DUPTABLE                         R6 K10 [{["ContentId"] = "Momentum/Tour", ["ImageUrl"] = "rbxasset://textures/StartPage/StudioTour.png", ["Name"], ["Description"], ["LaunchTutorialOnClick"] = True}]
       18 GETUPVAL                         R7 2
       19 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
       20 LOADK                            R10 K12 ["StudioTour.Title"]
       21 NAMECALL                         R7 R7 K13 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K6 ["Name"]
       26 GETUPVAL                         R7 2
       27 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
       28 LOADK                            R10 K14 ["StudioTour.Desc"]
       29 NAMECALL                         R7 R7 K13 ["getText"]
       31 CALL                             R7 3 1
       32 SETTABLEKS                       R7 R6 K7 ["Description"]
       34 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K17 [table.insert]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R4 4
       41 GETUPVAL                         R6 5
       42 GETUPVAL                         R7 6
       43 MOVE                             R8 R3
       44 NAMECALL                         R4 R4 K18 ["setItemsForPage"]
       46 CALL                             R4 4 0
       47 GETUPVAL                         R4 4
       48 GETUPVAL                         R6 5
       49 LENGTH                           R7 R3
       50 NAMECALL                         R4 R4 K19 ["setTargetCount"]
       52 CALL                             R4 3 0
       53 MOVE                             R4 R3
       54 LOADNIL                          R5
       55 LOADNIL                          R6
       56 FORGPREP                         R4
       57 GETTABLEKS                       R9 R8 K20 ["CDNUrl"]
       59 JUMPIFNOT                        R9 ; [+6]
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R11 R8 K20 ["CDNUrl"]
       63 NAMECALL                         R9 R9 K21 ["generateTempUrlInContentProvider"]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R4 2 ; [-10]
       68 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["GetKnowledgeFeeds failed. %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R1 R1 K4 ["setItemsForPage"]
       15 CALL                             R1 4 0
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R5 3
       19 LENGTH                           R4 R5
       20 NAMECALL                         R1 R1 K5 ["setTargetCount"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["new"]
        3 CALL                             R6 0 1
        4 GETTABLEKS                       R7 R6 K1 ["composeUrl"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R8 R8 K2 ["KNOWLEDGE_FEEDS_URL"]
        9 GETTABLEKS                       R8 R8 K3 ["Prefix"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K2 ["KNOWLEDGE_FEEDS_URL"]
       14 GETTABLEKS                       R9 R9 K4 ["Url"]
       16 CALL                             R9 0 -1
       17 CALL                             R7 -1 1
       18 NEWTABLE                         R8 2 0
       20 LOADK                            R9 K5 ["application/json"]
       21 SETTABLEKS                       R9 R8 K6 ["Content-Type"]
       23 GETUPVAL                         R10 2
       24 NAMECALL                         R10 R10 K7 ["GetUserId"]
       26 CALL                             R10 1 -1
       27 FASTCALL                         TOSTRING ; [+2]
       28 GETIMPORT                        R9 K9 [tostring]
       30 CALL                             R9 -1 1
       31 SETTABLEKS                       R9 R8 K10 ["robloxctx-authenticated-userid"]
       33 GETUPVAL                         R9 3
       34 MOVE                             R11 R7
       35 MOVE                             R12 R8
       36 NAMECALL                         R9 R9 K11 ["get"]
       38 CALL                             R9 3 1
       39 GETUPVAL                         R10 3
       40 MOVE                             R12 R9
       41 NAMECALL                         R10 R10 K12 ["parseJson"]
       43 CALL                             R10 2 1
       44 NEWCLOSURE                       R12 P0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 NAMECALL                         R10 R10 K13 ["andThen"]
       54 CALL                             R10 2 1
       55 NEWCLOSURE                       R12 P1
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 NAMECALL                         R10 R10 K14 ["catch"]
       62 CALL                             R10 2 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K10 ["Models"]
       30 GETTABLEKS                       R4 R4 K11 ["GetKnowledgeFeedsResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K12 ["Packages"]
       37 GETTABLEKS                       R5 R5 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Network"]
       46 GETTABLEKS                       R6 R6 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Src"]
       53 GETTABLEKS                       R7 R7 K16 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["Services"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R6 K18 ["StudioService"]
       60 GETTABLEKS                       R8 R6 K19 ["StartPageManager"]
       62 GETTABLEKS                       R9 R6 K20 ["Networking"]
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K6 ["Src"]
       68 GETTABLEKS                       R11 R11 K16 ["Util"]
       70 GETTABLEKS                       R11 R11 K21 ["createResponseValidator"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Src"]
       77 GETTABLEKS                       R12 R12 K16 ["Util"]
       79 GETTABLEKS                       R12 R12 K22 ["convertKnowledgeFeedItems"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R9 K23 ["new"]
       84 DUPTABLE                         R13 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       85 SETTABLEKS                       R1 R13 K26 ["loggingLevel"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K6 ["Src"]
       92 GETTABLEKS                       R14 R14 K16 ["Util"]
       94 GETTABLEKS                       R14 R14 K28 ["Telemetry"]
       96 GETTABLEKS                       R14 R14 K29 ["TelemetryContext"]
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R14 R4 K30 ["RobloxAPI"]
      101 GETTABLEKS                       R14 R14 K31 ["Url"]
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K6 ["Src"]
      107 GETTABLEKS                       R16 R16 K14 ["Network"]
      109 GETTABLEKS                       R16 R16 K32 ["GameCache"]
      111 CALL                             R15 1 1
      112 MOVE                             R16 R10
      113 GETTABLEKS                       R17 R3 K33 ["validate"]
      115 CALL                             R16 1 1
      116 DUPCLOSURE                       R17 K34 [PROTO_0]
      117 CAPTURE                          VAL R8
      118 DUPCLOSURE                       R18 K35 [PROTO_3]
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R15
      127 RETURN                           R18 1
