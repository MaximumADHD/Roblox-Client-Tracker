PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["rootPlaceId"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K3 ["privacyType"]
       13 JUMPIFNOT                        R2 ; [+15]
       14 JUMPIFEQKS                       R2 K4 ["Public"] ; [+14]
       16 JUMPIFEQKS                       R2 K5 ["Private"] ; [+12]
       18 JUMPIFEQKS                       R2 K6 ["Draft"] ; [+10]
       20 GETIMPORT                        R3 K8 [error]
       22 LOADK                            R5 K9 ["Invalid value for privacyType: \"%*\""]
       23 MOVE                             R7 R2
       24 NAMECALL                         R5 R5 K10 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 CALL                             R3 1 0
       29 DUPTABLE                         R3 K24 [{"IsGame", "Name", "CreatorName", "CreatorType", "CreatorTargetId", "Type", "Description", "Created", "Updated", "PrivacyType", "IsFriendsOnly", "Id", "RootPlaceId"}]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K11 ["IsGame"]
       33 GETTABLEKS                       R4 R1 K0 ["name"]
       35 SETTABLEKS                       R4 R3 K12 ["Name"]
       37 GETTABLEKS                       R4 R1 K25 ["creatorName"]
       39 SETTABLEKS                       R4 R3 K13 ["CreatorName"]
       41 GETTABLEKS                       R4 R1 K26 ["creatorType"]
       43 SETTABLEKS                       R4 R3 K14 ["CreatorType"]
       45 GETTABLEKS                       R4 R1 K27 ["creatorTargetId"]
       47 SETTABLEKS                       R4 R3 K15 ["CreatorTargetId"]
       49 LOADK                            R4 K28 ["Experience"]
       50 SETTABLEKS                       R4 R3 K16 ["Type"]
       52 GETTABLEKS                       R4 R1 K29 ["description"]
       54 SETTABLEKS                       R4 R3 K17 ["Description"]
       56 GETTABLEKS                       R4 R1 K30 ["created"]
       58 SETTABLEKS                       R4 R3 K18 ["Created"]
       60 GETTABLEKS                       R4 R1 K31 ["updated"]
       62 SETTABLEKS                       R4 R3 K19 ["Updated"]
       64 SETTABLEKS                       R2 R3 K20 ["PrivacyType"]
       66 GETTABLEKS                       R4 R1 K32 ["isFriendsOnly"]
       68 SETTABLEKS                       R4 R3 K21 ["IsFriendsOnly"]
       70 GETTABLEKS                       R4 R1 K1 ["id"]
       72 SETTABLEKS                       R4 R3 K22 ["Id"]
       74 GETTABLEKS                       R4 R1 K2 ["rootPlaceId"]
       76 SETTABLEKS                       R4 R3 K23 ["RootPlaceId"]
       78 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_0]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R3 K4 [{"games", "targetResults"}]
        9 SETTABLEKS                       R2 R3 K2 ["games"]
       11 GETTABLEKS                       R4 R1 K5 ["totalResults"]
       13 JUMPIF                           R4 ; [+1]
       14 LENGTH                           R4 R2
       15 SETTABLEKS                       R4 R3 K3 ["targetResults"]
       17 RETURN                           R3 1

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
       51 NAMECALL                         R4 R4 K14 ["andThen"]
       53 CALL                             R4 2 -1
       54 RETURN                           R4 -1

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
      111 MOVE                             R14 R9
      112 GETTABLEKS                       R15 R6 K30 ["validate"]
      114 CALL                             R14 1 1
      115 DUPCLOSURE                       R15 K31 [PROTO_2]
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R4
      123 RETURN                           R15 1
