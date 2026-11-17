PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+36]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["createRuntime"]
        8 CALL                             R2 0 -1
        9 CALL                             R1 -1 1
       10 GETTABLEKS                       R2 R1 K2 ["GameJoin"]
       12 GETTABLEKS                       R2 R2 K3 ["postV1TeamCreatePreemptive"]
       14 DUPTABLE                         R3 K5 [{"teamCreateRequest"}]
       15 DUPTABLE                         R4 K8 [{"gameJoinAttemptId", "placeId"}]
       16 GETUPVAL                         R5 3
       17 LOADB                            R7 0
       18 NAMECALL                         R5 R5 K9 ["GenerateGUID"]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K6 ["gameJoinAttemptId"]
       23 FASTCALL1                        TONUMBER R0 ; [+3]
       24 MOVE                             R6 R0
       25 GETIMPORT                        R5 K11 [tonumber]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K7 ["placeId"]
       30 SETTABLEKS                       R4 R3 K4 ["teamCreateRequest"]
       32 CALL                             R2 1 1
       33 DUPCLOSURE                       R4 K12 [PROTO_0]
       34 NAMECALL                         R2 R2 K13 ["send"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 3
       39 DUPTABLE                         R3 K8 [{"gameJoinAttemptId", "placeId"}]
       40 GETUPVAL                         R4 3
       41 LOADB                            R6 0
       42 NAMECALL                         R4 R4 K9 ["GenerateGUID"]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K6 ["gameJoinAttemptId"]
       47 FASTCALL1                        TONUMBER R0 ; [+3]
       48 MOVE                             R5 R0
       49 GETIMPORT                        R4 K11 [tonumber]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K7 ["placeId"]
       54 NAMECALL                         R1 R1 K14 ["JSONEncode"]
       56 CALL                             R1 2 1
       57 GETUPVAL                         R2 4
       58 GETTABLEKS                       R2 R2 K0 ["new"]
       60 CALL                             R2 0 1
       61 GETTABLEKS                       R3 R2 K15 ["composeUrl"]
       63 GETUPVAL                         R4 5
       64 GETTABLEKS                       R4 R4 K16 ["TEAMCREATE_PRELAUNCH"]
       66 GETTABLEKS                       R4 R4 K17 ["Prefix"]
       68 GETUPVAL                         R5 5
       69 GETTABLEKS                       R5 R5 K16 ["TEAMCREATE_PRELAUNCH"]
       71 GETTABLEKS                       R5 R5 K18 ["Url"]
       73 CALL                             R5 0 -1
       74 CALL                             R3 -1 1
       75 GETUPVAL                         R4 6
       76 MOVE                             R6 R3
       77 MOVE                             R7 R1
       78 GETUPVAL                         R8 7
       79 NAMECALL                         R4 R4 K19 ["post"]
       81 CALL                             R4 4 0
       82 RETURN                           R0 0

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
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPageOpenApiGameJoinClient"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K10 ["Packages"]
       38 GETTABLEKS                       R5 R5 K12 ["OpenApiGameJoinApiv1"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Packages"]
       45 GETTABLEKS                       R6 R6 K13 ["StudioOpenApi"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K14 ["RobloxAPI"]
       50 GETTABLEKS                       R6 R6 K15 ["Url"]
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R8 K16 ["Network"]
       58 GETTABLEKS                       R8 R8 K17 ["Urls"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K18 ["Util"]
       67 GETTABLEKS                       R9 R9 K19 ["Services"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R8 R8 K20 ["Networking"]
       72 GETTABLEKS                       R9 R8 K21 ["new"]
       74 DUPTABLE                         R10 K25 [{["isInternal"] = True, ["loggingLevel"]}]
       75 SETTABLEKS                       R1 R10 K24 ["loggingLevel"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K27 [game]
       80 LOADK                            R12 K28 ["HttpService"]
       81 NAMECALL                         R10 R10 K29 ["GetService"]
       83 CALL                             R10 2 1
       84 NEWTABLE                         R11 1 0
       86 LOADK                            R12 K30 ["application/json"]
       87 SETTABLEKS                       R12 R11 K31 ["Content-Type"]
       89 DUPCLOSURE                       R12 K32 [PROTO_1]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R11
       98 RETURN                           R12 1
