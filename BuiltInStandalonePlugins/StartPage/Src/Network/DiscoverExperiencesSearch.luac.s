PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["rootPlaceId"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 JUMPIFNOT                        R2 ; [+50]
       13 DUPTABLE                         R2 K18 [{["IsGame"] = True, ["Name"], ["CreatorName"], ["CreatorType"], ["CreatorTargetId"], ["Type"] = "Experience", ["Description"], ["Created"], ["Updated"], ["Audiences"], ["ReachStatus"], ["Id"], ["RootPlaceId"]}]
       14 GETTABLEKS                       R3 R1 K0 ["name"]
       16 SETTABLEKS                       R3 R2 K5 ["Name"]
       18 GETTABLEKS                       R3 R1 K19 ["creatorName"]
       20 SETTABLEKS                       R3 R2 K6 ["CreatorName"]
       22 GETTABLEKS                       R3 R1 K20 ["creatorType"]
       24 SETTABLEKS                       R3 R2 K7 ["CreatorType"]
       26 GETTABLEKS                       R3 R1 K21 ["creatorTargetId"]
       28 SETTABLEKS                       R3 R2 K8 ["CreatorTargetId"]
       30 GETTABLEKS                       R3 R1 K22 ["description"]
       32 SETTABLEKS                       R3 R2 K11 ["Description"]
       34 GETTABLEKS                       R3 R1 K23 ["created"]
       36 SETTABLEKS                       R3 R2 K12 ["Created"]
       38 GETTABLEKS                       R3 R1 K24 ["updated"]
       40 SETTABLEKS                       R3 R2 K13 ["Updated"]
       42 GETTABLEKS                       R3 R1 K25 ["audiences"]
       44 SETTABLEKS                       R3 R2 K14 ["Audiences"]
       46 GETUPVAL                         R4 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 GETTABLEKS                       R3 R1 K26 ["reachStatus"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K15 ["ReachStatus"]
       54 GETTABLEKS                       R3 R1 K1 ["id"]
       56 SETTABLEKS                       R3 R2 K16 ["Id"]
       58 GETTABLEKS                       R3 R1 K2 ["rootPlaceId"]
       60 SETTABLEKS                       R3 R2 K17 ["RootPlaceId"]
       62 RETURN                           R2 1
       63 GETTABLEKS                       R2 R1 K27 ["privacyType"]
       65 JUMPIFNOT                        R2 ; [+14]
       66 JUMPIFEQKS                       R2 K28 ["Public"] ; [+13]
       68 JUMPIFEQKS                       R2 K29 ["Private"] ; [+11]
       70 JUMPIFEQKS                       R2 K30 ["Draft"] ; [+9]
       72 GETIMPORT                        R3 K32 [error]
       74 LOADK                            R4 K33 ["Invalid value for privacyType: \"%*\""]
       75 MOVE                             R6 R2
       76 NAMECALL                         R4 R4 K34 ["format"]
       78 CALL                             R4 2 1
       79 CALL                             R3 1 0
       80 DUPTABLE                         R3 K37 [{["IsGame"] = True, ["Name"], ["CreatorName"], ["CreatorType"], ["CreatorTargetId"], ["Type"] = "Experience", ["Description"], ["Created"], ["Updated"], ["PrivacyType"], ["IsFriendsOnly"], ["ReachStatus"], ["Id"], ["RootPlaceId"]}]
       81 GETTABLEKS                       R4 R1 K0 ["name"]
       83 SETTABLEKS                       R4 R3 K5 ["Name"]
       85 GETTABLEKS                       R4 R1 K19 ["creatorName"]
       87 SETTABLEKS                       R4 R3 K6 ["CreatorName"]
       89 GETTABLEKS                       R4 R1 K20 ["creatorType"]
       91 SETTABLEKS                       R4 R3 K7 ["CreatorType"]
       93 GETTABLEKS                       R4 R1 K21 ["creatorTargetId"]
       95 SETTABLEKS                       R4 R3 K8 ["CreatorTargetId"]
       97 GETTABLEKS                       R4 R1 K22 ["description"]
       99 SETTABLEKS                       R4 R3 K11 ["Description"]
      101 GETTABLEKS                       R4 R1 K23 ["created"]
      103 SETTABLEKS                       R4 R3 K12 ["Created"]
      105 GETTABLEKS                       R4 R1 K24 ["updated"]
      107 SETTABLEKS                       R4 R3 K13 ["Updated"]
      109 SETTABLEKS                       R2 R3 K35 ["PrivacyType"]
      111 GETTABLEKS                       R4 R1 K38 ["isFriendsOnly"]
      113 SETTABLEKS                       R4 R3 K36 ["IsFriendsOnly"]
      115 GETUPVAL                         R5 1
      116 JUMPIFNOT                        R5 ; [+3]
      117 GETTABLEKS                       R4 R1 K26 ["reachStatus"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R4
      121 SETTABLEKS                       R4 R3 K15 ["ReachStatus"]
      123 GETTABLEKS                       R4 R1 K1 ["id"]
      125 SETTABLEKS                       R4 R3 K16 ["Id"]
      127 GETTABLEKS                       R4 R1 K2 ["rootPlaceId"]
      129 SETTABLEKS                       R4 R3 K17 ["RootPlaceId"]
      131 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 2 1
       10 DUPTABLE                         R3 K4 [{"games", "targetResults"}]
       11 SETTABLEKS                       R2 R3 K2 ["games"]
       13 GETTABLEKS                       R4 R1 K5 ["totalResults"]
       15 JUMPIF                           R4 ; [+1]
       16 LENGTH                           R4 R2
       17 SETTABLEKS                       R4 R3 K3 ["targetResults"]
       19 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["DiscoverExperiencesSearch is only available when FFlagStartPageEstablishTrustBanner is enabled"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["new"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R6 R2 K4 ["composeUrl"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K5 ["EXPERIENCES_SEARCH_URL"]
       16 GETTABLEKS                       R7 R7 K6 ["Prefix"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["EXPERIENCES_SEARCH_URL"]
       21 GETTABLEKS                       R8 R8 K7 ["Url"]
       23 CALL                             R8 0 1
       24 MOVE                             R9 R0
       25 CALL                             R6 3 1
       26 MOVE                             R4 R6
       27 LOADK                            R5 K8 ["&surface=StudioStartPage&PageIndex=%*"]
       28 MOVE                             R7 R1
       29 NAMECALL                         R5 R5 K9 ["format"]
       31 CALL                             R5 2 1
       32 CONCAT                           R3 R4 R5
       33 GETUPVAL                         R4 3
       34 JUMPIFNOT                        R4 ; [+3]
       35 MOVE                             R4 R3
       36 LOADK                            R5 K10 ["&needsAssetOptions=true"]
       37 CONCAT                           R3 R4 R5
       38 GETUPVAL                         R4 4
       39 JUMPIFNOT                        R4 ; [+3]
       40 MOVE                             R4 R3
       41 LOADK                            R5 K11 ["&needsReachStatus=true"]
       42 CONCAT                           R3 R4 R5
       43 GETUPVAL                         R4 5
       44 GETUPVAL                         R6 5
       45 MOVE                             R8 R3
       46 NAMECALL                         R6 R6 K12 ["get"]
       48 CALL                             R6 2 -1
       49 NAMECALL                         R4 R4 K13 ["parseJson"]
       51 CALL                             R4 -1 1
       52 DUPCLOSURE                       R6 K14 [PROTO_1]
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U4
       57 NAMECALL                         R4 R4 K15 ["andThen"]
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1

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
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["collectArray"]
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R7 K14 ["Models"]
       46 GETTABLEKS                       R7 R7 K15 ["SearchUniversesResponse"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Src"]
       53 GETTABLEKS                       R8 R8 K16 ["Network"]
       55 GETTABLEKS                       R8 R8 K17 ["Urls"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Src"]
       62 GETTABLEKS                       R9 R9 K18 ["Util"]
       64 GETTABLEKS                       R9 R9 K19 ["Services"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R8 R8 K20 ["Networking"]
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Util"]
       75 GETTABLEKS                       R10 R10 K21 ["createResponseValidator"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R2 K22 ["RobloxAPI"]
       80 GETTABLEKS                       R10 R10 K23 ["Url"]
       82 GETTABLEKS                       R11 R8 K24 ["new"]
       84 DUPTABLE                         R12 K28 [{["isInternal"] = True, ["loggingLevel"]}]
       85 SETTABLEKS                       R1 R12 K27 ["loggingLevel"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K7 ["SharedFlags"]
       94 GETTABLEKS                       R13 R13 K29 ["getFFlagLuaStartPageCoreContentStatus"]
       96 CALL                             R12 1 1
       97 CALL                             R12 0 1
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K6 ["Src"]
      102 GETTABLEKS                       R14 R14 K7 ["SharedFlags"]
      104 GETTABLEKS                       R14 R14 K30 ["getFFlagLuaStartPageReachStatus"]
      106 CALL                             R13 1 1
      107 CALL                             R13 0 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K6 ["Src"]
      112 GETTABLEKS                       R15 R15 K7 ["SharedFlags"]
      114 GETTABLEKS                       R15 R15 K31 ["getFFlagStartPageEstablishTrustBanner"]
      116 CALL                             R14 1 1
      117 CALL                             R14 0 1
      118 GETIMPORT                        R15 K5 [require]
      120 GETTABLEKS                       R16 R0 K6 ["Src"]
      122 GETTABLEKS                       R16 R16 K7 ["SharedFlags"]
      124 GETTABLEKS                       R16 R16 K32 ["getFFlagLuaStartPageAudiencesReplacement"]
      126 CALL                             R15 1 1
      127 CALL                             R15 0 1
      128 MOVE                             R16 R9
      129 GETTABLEKS                       R17 R6 K33 ["validate"]
      131 CALL                             R16 1 1
      132 DUPCLOSURE                       R17 K34 [PROTO_2]
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R15
      142 RETURN                           R17 1
