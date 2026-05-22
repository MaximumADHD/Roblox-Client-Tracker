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
       12 JUMPIFNOT                        R2 ; [+48]
       13 DUPTABLE                         R2 K15 [{"IsGame", "Name", "CreatorName", "CreatorType", "CreatorTargetId", "Type", "Description", "Created", "Updated", "Audiences", "Id", "RootPlaceId"}]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["IsGame"]
       17 GETTABLEKS                       R3 R1 K0 ["name"]
       19 SETTABLEKS                       R3 R2 K4 ["Name"]
       21 GETTABLEKS                       R3 R1 K16 ["creatorName"]
       23 SETTABLEKS                       R3 R2 K5 ["CreatorName"]
       25 GETTABLEKS                       R3 R1 K17 ["creatorType"]
       27 SETTABLEKS                       R3 R2 K6 ["CreatorType"]
       29 GETTABLEKS                       R3 R1 K18 ["creatorTargetId"]
       31 SETTABLEKS                       R3 R2 K7 ["CreatorTargetId"]
       33 LOADK                            R3 K19 ["Experience"]
       34 SETTABLEKS                       R3 R2 K8 ["Type"]
       36 GETTABLEKS                       R3 R1 K20 ["description"]
       38 SETTABLEKS                       R3 R2 K9 ["Description"]
       40 GETTABLEKS                       R3 R1 K21 ["created"]
       42 SETTABLEKS                       R3 R2 K10 ["Created"]
       44 GETTABLEKS                       R3 R1 K22 ["updated"]
       46 SETTABLEKS                       R3 R2 K11 ["Updated"]
       48 GETTABLEKS                       R3 R1 K23 ["audiences"]
       50 SETTABLEKS                       R3 R2 K12 ["Audiences"]
       52 GETTABLEKS                       R3 R1 K1 ["id"]
       54 SETTABLEKS                       R3 R2 K13 ["Id"]
       56 GETTABLEKS                       R3 R1 K2 ["rootPlaceId"]
       58 SETTABLEKS                       R3 R2 K14 ["RootPlaceId"]
       60 RETURN                           R2 1
       61 GETTABLEKS                       R2 R1 K24 ["privacyType"]
       63 JUMPIFNOT                        R2 ; [+15]
       64 JUMPIFEQKS                       R2 K25 ["Public"] ; [+14]
       66 JUMPIFEQKS                       R2 K26 ["Private"] ; [+12]
       68 JUMPIFEQKS                       R2 K27 ["Draft"] ; [+10]
       70 GETIMPORT                        R3 K29 [error]
       72 LOADK                            R5 K30 ["Invalid value for privacyType: \"%*\""]
       73 MOVE                             R7 R2
       74 NAMECALL                         R5 R5 K31 ["format"]
       76 CALL                             R5 2 1
       77 MOVE                             R4 R5
       78 CALL                             R3 1 0
       79 DUPTABLE                         R3 K34 [{"IsGame", "Name", "CreatorName", "CreatorType", "CreatorTargetId", "Type", "Description", "Created", "Updated", "PrivacyType", "IsFriendsOnly", "Id", "RootPlaceId"}]
       80 LOADB                            R4 1
       81 SETTABLEKS                       R4 R3 K3 ["IsGame"]
       83 GETTABLEKS                       R4 R1 K0 ["name"]
       85 SETTABLEKS                       R4 R3 K4 ["Name"]
       87 GETTABLEKS                       R4 R1 K16 ["creatorName"]
       89 SETTABLEKS                       R4 R3 K5 ["CreatorName"]
       91 GETTABLEKS                       R4 R1 K17 ["creatorType"]
       93 SETTABLEKS                       R4 R3 K6 ["CreatorType"]
       95 GETTABLEKS                       R4 R1 K18 ["creatorTargetId"]
       97 SETTABLEKS                       R4 R3 K7 ["CreatorTargetId"]
       99 LOADK                            R4 K19 ["Experience"]
      100 SETTABLEKS                       R4 R3 K8 ["Type"]
      102 GETTABLEKS                       R4 R1 K20 ["description"]
      104 SETTABLEKS                       R4 R3 K9 ["Description"]
      106 GETTABLEKS                       R4 R1 K21 ["created"]
      108 SETTABLEKS                       R4 R3 K10 ["Created"]
      110 GETTABLEKS                       R4 R1 K22 ["updated"]
      112 SETTABLEKS                       R4 R3 K11 ["Updated"]
      114 SETTABLEKS                       R2 R3 K32 ["PrivacyType"]
      116 GETTABLEKS                       R4 R1 K35 ["isFriendsOnly"]
      118 SETTABLEKS                       R4 R3 K33 ["IsFriendsOnly"]
      120 GETTABLEKS                       R4 R1 K1 ["id"]
      122 SETTABLEKS                       R4 R3 K13 ["Id"]
      124 GETTABLEKS                       R4 R1 K2 ["rootPlaceId"]
      126 SETTABLEKS                       R4 R3 K14 ["RootPlaceId"]
      128 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 1
        9 DUPTABLE                         R3 K4 [{"games", "targetResults"}]
       10 SETTABLEKS                       R2 R3 K2 ["games"]
       12 GETTABLEKS                       R4 R1 K5 ["totalResults"]
       14 JUMPIF                           R4 ; [+1]
       15 LENGTH                           R4 R2
       16 SETTABLEKS                       R4 R3 K3 ["targetResults"]
       18 RETURN                           R3 1

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
       27 LOADK                            R6 K8 ["&surface=StudioStartPage&PageIndex=%*"]
       28 MOVE                             R8 R1
       29 NAMECALL                         R6 R6 K9 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 CONCAT                           R3 R4 R5
       34 GETUPVAL                         R4 3
       35 JUMPIFNOT                        R4 ; [+3]
       36 MOVE                             R4 R3
       37 LOADK                            R5 K10 ["&needsAssetOptions=true"]
       38 CONCAT                           R3 R4 R5
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R6 4
       41 MOVE                             R8 R3
       42 NAMECALL                         R6 R6 K11 ["get"]
       44 CALL                             R6 2 -1
       45 NAMECALL                         R4 R4 K12 ["parseJson"]
       47 CALL                             R4 -1 1
       48 DUPCLOSURE                       R6 K13 [PROTO_1]
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 NAMECALL                         R4 R4 K14 ["andThen"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

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
       84 DUPTABLE                         R12 K27 [{"isInternal", "loggingLevel"}]
       85 LOADB                            R13 1
       86 SETTABLEKS                       R13 R12 K25 ["isInternal"]
       88 SETTABLEKS                       R1 R12 K26 ["loggingLevel"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R0 K6 ["Src"]
       95 GETTABLEKS                       R13 R13 K7 ["SharedFlags"]
       97 GETTABLEKS                       R13 R13 K28 ["getFFlagLuaStartPageCoreContentStatus"]
       99 CALL                             R12 1 1
      100 CALL                             R12 0 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Src"]
      105 GETTABLEKS                       R14 R14 K7 ["SharedFlags"]
      107 GETTABLEKS                       R14 R14 K29 ["getFFlagStartPageEstablishTrustBanner"]
      109 CALL                             R13 1 1
      110 CALL                             R13 0 1
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R15 R0 K6 ["Src"]
      115 GETTABLEKS                       R15 R15 K7 ["SharedFlags"]
      117 GETTABLEKS                       R15 R15 K30 ["getFFlagLuaStartPageAudiencesReplacement"]
      119 CALL                             R14 1 1
      120 CALL                             R14 0 1
      121 MOVE                             R15 R9
      122 GETTABLEKS                       R16 R6 K31 ["validate"]
      124 CALL                             R15 1 1
      125 DUPCLOSURE                       R16 K32 [PROTO_2]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R14
      134 RETURN                           R16 1
