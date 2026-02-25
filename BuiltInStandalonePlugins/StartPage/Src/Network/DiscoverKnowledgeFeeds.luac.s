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
       16 JUMPIFNOT                        R4 ; [+32]
       17 DUPTABLE                         R6 K7 [{"ContentId", "ImageUrl", "Name", "Description", "LaunchTutorialOnClick"}]
       18 LOADK                            R7 K8 ["Momentum/Tour"]
       19 SETTABLEKS                       R7 R6 K2 ["ContentId"]
       21 LOADK                            R7 K9 ["rbxasset://textures/StartPage/StudioTour.png"]
       22 SETTABLEKS                       R7 R6 K3 ["ImageUrl"]
       24 GETUPVAL                         R7 2
       25 LOADK                            R9 K10 ["DiscoverStudioPlaceholder"]
       26 LOADK                            R10 K11 ["StudioTour.Title"]
       27 NAMECALL                         R7 R7 K12 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K4 ["Name"]
       32 GETUPVAL                         R7 2
       33 LOADK                            R9 K10 ["DiscoverStudioPlaceholder"]
       34 LOADK                            R10 K13 ["StudioTour.Desc"]
       35 NAMECALL                         R7 R7 K12 ["getText"]
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K5 ["Description"]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K6 ["LaunchTutorialOnClick"]
       43 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K16 [table.insert]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 4
       50 GETUPVAL                         R6 5
       51 GETUPVAL                         R7 6
       52 MOVE                             R8 R3
       53 NAMECALL                         R4 R4 K17 ["setItemsForPage"]
       55 CALL                             R4 4 0
       56 GETUPVAL                         R4 4
       57 GETUPVAL                         R6 5
       58 LENGTH                           R7 R3
       59 NAMECALL                         R4 R4 K18 ["setTargetCount"]
       61 CALL                             R4 3 0
       62 MOVE                             R4 R3
       63 LOADNIL                          R5
       64 LOADNIL                          R6
       65 FORGPREP                         R4
       66 GETTABLEKS                       R9 R8 K19 ["CDNUrl"]
       68 JUMPIFNOT                        R9 ; [+6]
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R11 R8 K19 ["CDNUrl"]
       72 NAMECALL                         R9 R9 K20 ["generateTempUrlInContentProvider"]
       74 CALL                             R9 2 0
       75 FORGLOOP                         R4 2 ; [-10]
       77 RETURN                           R0 0

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
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["new"]
        3 CALL                             R6 0 1
        4 GETTABLEKS                       R7 R6 K1 ["composeUrl"]
        6 GETUPVAL                         R10 1
        7 GETTABLEKS                       R9 R10 K2 ["KNOWLEDGE_FEEDS_URL"]
        9 GETTABLEKS                       R8 R9 K3 ["Prefix"]
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R10 R11 K2 ["KNOWLEDGE_FEEDS_URL"]
       14 GETTABLEKS                       R9 R10 K4 ["Url"]
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
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R4 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R6 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R6 K10 ["Models"]
       30 GETTABLEKS                       R4 R5 K11 ["GetKnowledgeFeedsResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Packages"]
       37 GETTABLEKS                       R5 R6 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R8 K14 ["Network"]
       46 GETTABLEKS                       R6 R7 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Src"]
       53 GETTABLEKS                       R8 R9 K16 ["Util"]
       55 GETTABLEKS                       R7 R8 K17 ["Services"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R6 K18 ["StudioService"]
       60 GETTABLEKS                       R8 R6 K19 ["StartPageManager"]
       62 GETTABLEKS                       R9 R6 K20 ["Networking"]
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R13 R0 K6 ["Src"]
       68 GETTABLEKS                       R12 R13 K16 ["Util"]
       70 GETTABLEKS                       R11 R12 K21 ["createResponseValidator"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R14 R0 K6 ["Src"]
       77 GETTABLEKS                       R13 R14 K16 ["Util"]
       79 GETTABLEKS                       R12 R13 K22 ["convertKnowledgeFeedItems"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R9 K23 ["new"]
       84 DUPTABLE                         R13 K26 [{"isInternal", "loggingLevel"}]
       85 LOADB                            R14 1
       86 SETTABLEKS                       R14 R13 K24 ["isInternal"]
       88 SETTABLEKS                       R1 R13 K25 ["loggingLevel"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R17 R0 K6 ["Src"]
       95 GETTABLEKS                       R16 R17 K16 ["Util"]
       97 GETTABLEKS                       R15 R16 K27 ["Telemetry"]
       99 GETTABLEKS                       R14 R15 K28 ["TelemetryContext"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R15 R4 K29 ["RobloxAPI"]
      104 GETTABLEKS                       R14 R15 K30 ["Url"]
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R18 R0 K6 ["Src"]
      110 GETTABLEKS                       R17 R18 K14 ["Network"]
      112 GETTABLEKS                       R16 R17 K31 ["GameCache"]
      114 CALL                             R15 1 1
      115 MOVE                             R16 R10
      116 GETTABLEKS                       R17 R3 K32 ["validate"]
      118 CALL                             R16 1 1
      119 DUPCLOSURE                       R17 K33 [PROTO_0]
      120 CAPTURE                          VAL R8
      121 DUPCLOSURE                       R18 K34 [PROTO_3]
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R15
      130 RETURN                           R18 1
