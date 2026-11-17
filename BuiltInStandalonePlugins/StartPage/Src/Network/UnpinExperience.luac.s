PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [204] ; [+2]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["reject"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R2 R1 K3 ["composeUrl"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["PINNED_EXPERIENCE"]
       14 GETTABLEKS                       R3 R3 K5 ["Prefix"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["PINNED_EXPERIENCE"]
       19 GETTABLEKS                       R4 R4 K6 ["Url"]
       21 MOVE                             R5 R0
       22 CALL                             R4 1 -1
       23 CALL                             R2 -1 1
       24 GETUPVAL                         R3 3
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K7 ["delete"]
       28 CALL                             R3 2 1
       29 DUPCLOSURE                       R5 K8 [PROTO_0]
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R3 R3 K9 ["catch"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K12 ["TypedPromise"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K11 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K7 ["SharedFlags"]
       59 GETTABLEKS                       R7 R7 K17 ["getFFlagLuaStartPageExperiencePinning"]
       61 CALL                             R6 1 1
       62 CALL                             R6 0 1
       63 GETTABLEKS                       R7 R2 K18 ["RobloxAPI"]
       65 GETTABLEKS                       R7 R7 K19 ["Url"]
       67 GETTABLEKS                       R8 R5 K20 ["new"]
       69 DUPTABLE                         R9 K24 [{["isInternal"] = True, ["loggingLevel"]}]
       70 SETTABLEKS                       R1 R9 K23 ["loggingLevel"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K25 [PROTO_1]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R3
       79 RETURN                           R9 1
