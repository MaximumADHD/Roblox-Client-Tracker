PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["new"]
        8 CALL                             R0 0 1
        9 GETTABLEKS                       R1 R0 K3 ["composeUrl"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["PINNED_EXPERIENCES"]
       14 GETTABLEKS                       R2 R2 K5 ["Prefix"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["PINNED_EXPERIENCES"]
       19 GETTABLEKS                       R3 R3 K6 ["Url"]
       21 CALL                             R3 0 -1
       22 CALL                             R1 -1 1
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 3
       25 MOVE                             R6 R1
       26 NAMECALL                         R4 R4 K7 ["get"]
       28 CALL                             R4 2 -1
       29 NAMECALL                         R2 R2 K8 ["parseJson"]
       31 CALL                             R2 -1 1
       32 GETUPVAL                         R4 4
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K9 ["validate"]
       36 CALL                             R4 1 -1
       37 NAMECALL                         R2 R2 K10 ["andThen"]
       39 CALL                             R2 -1 -1
       40 RETURN                           R2 -1

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
       28 GETTABLEKS                       R4 R4 K11 ["Network"]
       30 GETTABLEKS                       R4 R4 K12 ["Urls"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["Services"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R4 R4 K15 ["Networking"]
       44 GETIMPORT                        R5 K5 [require]
       46 GETTABLEKS                       R6 R0 K6 ["Src"]
       48 GETTABLEKS                       R6 R6 K13 ["Util"]
       50 GETTABLEKS                       R6 R6 K16 ["createResponseValidator"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K17 ["Models"]
       59 GETTABLEKS                       R7 R7 K18 ["ListPinnedExperiencesResponse"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K6 ["Src"]
       66 GETTABLEKS                       R8 R8 K7 ["SharedFlags"]
       68 GETTABLEKS                       R8 R8 K19 ["getFFlagLuaStartPageExperiencePinning"]
       70 CALL                             R7 1 1
       71 CALL                             R7 0 1
       72 GETTABLEKS                       R8 R2 K20 ["RobloxAPI"]
       74 GETTABLEKS                       R8 R8 K21 ["Url"]
       76 GETTABLEKS                       R9 R4 K22 ["new"]
       78 DUPTABLE                         R10 K26 [{["isInternal"] = True, ["loggingLevel"]}]
       79 SETTABLEKS                       R1 R10 K25 ["loggingLevel"]
       81 CALL                             R9 1 1
       82 DUPCLOSURE                       R10 K27 [PROTO_0]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 RETURN                           R10 1
