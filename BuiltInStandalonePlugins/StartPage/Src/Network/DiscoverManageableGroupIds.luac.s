PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["groups"]
        5 JUMPIF                           R2 ; [+3]
        6 NEWTABLE                         R2 0 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R3 R1 K0 ["groups"]
       12 DUPCLOSURE                       R4 K1 [PROTO_0]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverManageableGroupIds experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["DiscoverManageableGroupIds is only available when FFlagStartPageEstablishTrustBanner is enabled"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["new"]
       10 CALL                             R0 0 1
       11 GETTABLEKS                       R1 R0 K4 ["composeUrl"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["CREATOR_GROUPS_SEARCH_URL"]
       16 GETTABLEKS                       R2 R2 K6 ["Prefix"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["CREATOR_GROUPS_SEARCH_URL"]
       21 GETTABLEKS                       R3 R3 K7 ["Url"]
       23 LOADK                            R4 K8 ["StudioStartPage"]
       24 CALL                             R3 1 -1
       25 CALL                             R1 -1 1
       26 GETUPVAL                         R2 3
       27 GETUPVAL                         R4 3
       28 MOVE                             R6 R1
       29 NAMECALL                         R4 R4 K9 ["get"]
       31 CALL                             R4 2 -1
       32 NAMECALL                         R2 R2 K10 ["parseJson"]
       34 CALL                             R2 -1 1
       35 DUPCLOSURE                       R4 K11 [PROTO_1]
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 NAMECALL                         R2 R2 K12 ["andThen"]
       40 CALL                             R2 2 1
       41 DUPCLOSURE                       R4 K13 [PROTO_2]
       42 NAMECALL                         R2 R2 K14 ["catch"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

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
       37 GETTABLEKS                       R6 R6 K13 ["Models"]
       39 GETTABLEKS                       R6 R6 K14 ["ApiArrayResponseGroupModel"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Network"]
       48 GETTABLEKS                       R7 R7 K16 ["Urls"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R8 K17 ["Util"]
       57 GETTABLEKS                       R8 R8 K18 ["Services"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R7 R7 K19 ["Networking"]
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Util"]
       68 GETTABLEKS                       R9 R9 K20 ["createResponseValidator"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K7 ["SharedFlags"]
       77 GETTABLEKS                       R10 R10 K21 ["getFFlagStartPageEstablishTrustBanner"]
       79 CALL                             R9 1 1
       80 CALL                             R9 0 1
       81 GETTABLEKS                       R10 R2 K22 ["RobloxAPI"]
       83 GETTABLEKS                       R10 R10 K23 ["Url"]
       85 GETTABLEKS                       R11 R7 K24 ["new"]
       87 DUPTABLE                         R12 K28 [{["isInternal"] = True, ["loggingLevel"]}]
       88 SETTABLEKS                       R1 R12 K27 ["loggingLevel"]
       90 CALL                             R11 1 1
       91 MOVE                             R12 R8
       92 GETTABLEKS                       R13 R5 K29 ["validate"]
       94 CALL                             R12 1 1
       95 DUPCLOSURE                       R13 K30 [PROTO_3]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R4
      102 RETURN                           R13 1
