PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["universeId"]
        2 JUMPIFNOT                        R2 ; [+15]
        3 GETTABLEKS                       R2 R1 K1 ["ageRecommendationDetails"]
        5 JUMPIFNOT                        R2 ; [+12]
        6 GETTABLEKS                       R2 R1 K1 ["ageRecommendationDetails"]
        8 GETTABLEKS                       R2 R2 K2 ["ageRecommendationSummary"]
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETTABLEKS                       R2 R1 K1 ["ageRecommendationDetails"]
       13 GETTABLEKS                       R2 R2 K2 ["ageRecommendationSummary"]
       15 GETTABLEKS                       R2 R2 K3 ["ageRecommendation"]
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R1 K1 ["ageRecommendationDetails"]
       21 GETTABLEKS                       R2 R2 K2 ["ageRecommendationSummary"]
       23 GETTABLEKS                       R2 R2 K3 ["ageRecommendation"]
       25 GETTABLEKS                       R3 R2 K4 ["minimumAge"]
       27 JUMPIF                           R3 ; [+4]
       28 GETTABLEKS                       R3 R2 K5 ["contentMaturity"]
       30 JUMPIF                           R3 ; [+1]
       31 RETURN                           R0 0
       32 DUPTABLE                         R3 K9 [{"Id", "AgeRecommendation", "ContentMaturity"}]
       33 GETTABLEKS                       R4 R1 K0 ["universeId"]
       35 SETTABLEKS                       R4 R3 K6 ["Id"]
       37 GETTABLEKS                       R4 R2 K4 ["minimumAge"]
       39 SETTABLEKS                       R4 R3 K7 ["AgeRecommendation"]
       41 GETTABLEKS                       R4 R2 K5 ["contentMaturity"]
       43 SETTABLEKS                       R4 R3 K8 ["ContentMaturity"]
       45 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K0 ["ageRecommendationDetailsByUniverse"]
       10 DUPCLOSURE                       R4 K1 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K2 ["upsertItems"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverAgeRecommendations experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"universeIds"}]
        1 SETTABLEKS                       R0 R1 K0 ["universeIds"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["new"]
        6 CALL                             R2 0 1
        7 GETTABLEKS                       R3 R2 K3 ["composeUrl"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["MULTI_AGE_RECOMMENDATION"]
       12 GETTABLEKS                       R4 R4 K5 ["Prefix"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["MULTI_AGE_RECOMMENDATION"]
       17 GETTABLEKS                       R5 R5 K6 ["Url"]
       19 CALL                             R5 0 -1
       20 CALL                             R3 -1 1
       21 GETUPVAL                         R4 2
       22 MOVE                             R6 R3
       23 GETUPVAL                         R7 3
       24 MOVE                             R9 R1
       25 NAMECALL                         R7 R7 K7 ["JSONEncode"]
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 4
       29 NAMECALL                         R4 R4 K8 ["post"]
       31 CALL                             R4 4 1
       32 GETUPVAL                         R5 2
       33 MOVE                             R7 R4
       34 NAMECALL                         R5 R5 K9 ["parseJson"]
       36 CALL                             R5 2 1
       37 DUPCLOSURE                       R7 K10 [PROTO_1]
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 NAMECALL                         R5 R5 K11 ["andThen"]
       43 CALL                             R5 2 1
       44 DUPCLOSURE                       R7 K12 [PROTO_2]
       45 NAMECALL                         R5 R5 K13 ["catch"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Types"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Models"]
       37 GETTABLEKS                       R5 R5 K13 ["MultiGetAgeRecommendationResponse"]
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
       58 GETTABLEKS                       R6 R6 K18 ["Networking"]
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K16 ["Util"]
       66 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K9 ["Packages"]
       73 GETTABLEKS                       R9 R9 K20 ["Dash"]
       75 CALL                             R8 1 1
       76 GETTABLEKS                       R9 R8 K21 ["collectArray"]
       78 GETTABLEKS                       R10 R2 K22 ["RobloxAPI"]
       80 GETTABLEKS                       R10 R10 K23 ["Url"]
       82 GETTABLEKS                       R11 R6 K24 ["new"]
       84 DUPTABLE                         R12 K30 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       85 SETTABLEKS                       R1 R12 K27 ["loggingLevel"]
       87 CALL                             R11 1 1
       88 NEWTABLE                         R12 1 0
       90 LOADK                            R13 K31 ["application/json"]
       91 SETTABLEKS                       R13 R12 K32 ["Content-Type"]
       93 GETIMPORT                        R13 K34 [game]
       95 LOADK                            R15 K35 ["HttpService"]
       96 NAMECALL                         R13 R13 K36 ["GetService"]
       98 CALL                             R13 2 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R15 K14 ["Network"]
      105 GETTABLEKS                       R15 R15 K37 ["GameCache"]
      107 CALL                             R14 1 1
      108 MOVE                             R15 R7
      109 GETTABLEKS                       R16 R4 K38 ["validate"]
      111 CALL                             R15 1 1
      112 DUPCLOSURE                       R16 K39 [PROTO_3]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R14
      121 RETURN                           R16 1
