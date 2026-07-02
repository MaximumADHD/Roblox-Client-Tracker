PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["universeIds"]
        5 JUMPIFNOT                        R2 ; [+14]
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K2 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+8]
       13 LENGTH                           R4 R2
       14 LOADN                            R5 1
       15 JUMPIFLE                         R5 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1
       20 LOADB                            R3 0
       21 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverHomepageBannerExperienceUnrated experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 LOADB                            R1 0
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFEQKS                       R2 K3 ["number"] ; [+7]
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["DiscoverHomepageBannerExperienceUnrated: userId must be a number"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K7 ["composeUrl"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K8 ["HOMEPAGE_BANNER_EXPERIENCE_UNRATED_URL"]
       23 GETTABLEKS                       R3 R3 K9 ["Prefix"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K8 ["HOMEPAGE_BANNER_EXPERIENCE_UNRATED_URL"]
       28 GETTABLEKS                       R4 R4 K10 ["Url"]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 -1
       32 CALL                             R2 -1 1
       33 GETUPVAL                         R3 2
       34 GETUPVAL                         R5 2
       35 MOVE                             R7 R2
       36 NAMECALL                         R5 R5 K11 ["get"]
       38 CALL                             R5 2 -1
       39 NAMECALL                         R3 R3 K12 ["parseJson"]
       41 CALL                             R3 -1 1
       42 DUPCLOSURE                       R5 K13 [PROTO_0]
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R3 R3 K14 ["andThen"]
       46 CALL                             R3 2 1
       47 DUPCLOSURE                       R5 K15 [PROTO_1]
       48 NAMECALL                         R3 R3 K16 ["catch"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R4 K11 ["Models"]
       30 GETTABLEKS                       R4 R4 K12 ["GetUnratedExperiencesResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K15 ["Util"]
       48 GETTABLEKS                       R6 R6 K16 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K17 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Util"]
       59 GETTABLEKS                       R7 R7 K18 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R2 K19 ["RobloxAPI"]
       64 GETTABLEKS                       R7 R7 K20 ["Url"]
       66 GETTABLEKS                       R8 R5 K21 ["new"]
       68 DUPTABLE                         R9 K25 [{["isInternal"] = True, ["loggingLevel"]}]
       69 SETTABLEKS                       R1 R9 K24 ["loggingLevel"]
       71 CALL                             R8 1 1
       72 MOVE                             R9 R6
       73 GETTABLEKS                       R10 R3 K26 ["validate"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K27 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 RETURN                           R10 1
