PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GameJoin"]
        3 GETTABLEKS                       R0 R0 K1 ["postV1TeamCreatePreemptiveAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 DUPTABLE                         R1 K2 [{"gameJoinAttemptId", "placeId"}]
        3 GETUPVAL                         R2 1
        4 LOADB                            R4 0
        5 NAMECALL                         R2 R2 K3 ["GenerateGUID"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["gameJoinAttemptId"]
       10 SETTABLEKS                       R0 R1 K1 ["placeId"]
       12 GETIMPORT                        R2 K6 [task.spawn]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 DUPTABLE                         R3 K2 [{"gameJoinAttemptId", "placeId"}]
       21 GETUPVAL                         R4 1
       22 LOADB                            R6 0
       23 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K0 ["gameJoinAttemptId"]
       28 FASTCALL1                        TONUMBER R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K8 [tonumber]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K1 ["placeId"]
       35 NAMECALL                         R1 R1 K9 ["JSONEncode"]
       37 CALL                             R1 2 1
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K10 ["new"]
       41 CALL                             R2 0 1
       42 GETTABLEKS                       R3 R2 K11 ["composeUrl"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K12 ["TEAMCREATE_PRELAUNCH"]
       47 GETTABLEKS                       R4 R4 K13 ["Prefix"]
       49 GETUPVAL                         R5 4
       50 GETTABLEKS                       R5 R5 K12 ["TEAMCREATE_PRELAUNCH"]
       52 GETTABLEKS                       R5 R5 K14 ["Url"]
       54 CALL                             R5 0 -1
       55 CALL                             R3 -1 1
       56 GETUPVAL                         R4 5
       57 MOVE                             R6 R3
       58 MOVE                             R7 R1
       59 GETUPVAL                         R8 6
       60 NAMECALL                         R4 R4 K15 ["post"]
       62 CALL                             R4 4 0
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
       41 GETTABLEKS                       R5 R3 K13 ["RobloxAPI"]
       43 GETTABLEKS                       R5 R5 K14 ["Url"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Network"]
       51 GETTABLEKS                       R7 R7 K16 ["Urls"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Util"]
       60 GETTABLEKS                       R8 R8 K18 ["Services"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R7 R7 K19 ["Networking"]
       65 GETTABLEKS                       R8 R7 K20 ["new"]
       67 DUPTABLE                         R9 K23 [{"isInternal", "loggingLevel"}]
       68 LOADB                            R10 1
       69 SETTABLEKS                       R10 R9 K21 ["isInternal"]
       71 SETTABLEKS                       R1 R9 K22 ["loggingLevel"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K25 [game]
       76 LOADK                            R11 K26 ["HttpService"]
       77 NAMECALL                         R9 R9 K27 ["GetService"]
       79 CALL                             R9 2 1
       80 NEWTABLE                         R10 1 0
       82 LOADK                            R11 K28 ["application/json"]
       83 SETTABLEKS                       R11 R10 K29 ["Content-Type"]
       85 DUPCLOSURE                       R11 K30 [PROTO_1]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R10
       93 RETURN                           R11 1
