PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["deleteItem"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K2 [{"userId"}]
        5 SETTABLEKS                       R1 R3 K1 ["userId"]
        7 GETTABLEKS                       R4 R2 K3 ["composeUrl"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K4 ["TEAMCREATE_MEMBERSHIPS"]
       12 GETTABLEKS                       R5 R6 K5 ["Prefix"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K4 ["TEAMCREATE_MEMBERSHIPS"]
       17 GETTABLEKS                       R6 R7 K6 ["Url"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 -1
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R7 K10 [{"Method", "Url", "Headers", "Body"}]
       24 LOADK                            R8 K11 ["DELETE"]
       25 SETTABLEKS                       R8 R7 K7 ["Method"]
       27 SETTABLEKS                       R4 R7 K6 ["Url"]
       29 GETUPVAL                         R8 3
       30 SETTABLEKS                       R8 R7 K8 ["Headers"]
       32 GETUPVAL                         R8 4
       33 MOVE                             R10 R3
       34 NAMECALL                         R8 R8 K12 ["JSONEncode"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K9 ["Body"]
       39 NAMECALL                         R5 R5 K13 ["request"]
       41 CALL                             R5 2 1
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R5 R5 K14 ["andThen"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R4 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Packages"]
       28 GETTABLEKS                       R4 R5 K11 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R7 R0 K6 ["Src"]
       35 GETTABLEKS                       R6 R7 K12 ["Network"]
       37 GETTABLEKS                       R5 R6 K13 ["Urls"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R9 R0 K6 ["Src"]
       44 GETTABLEKS                       R8 R9 K14 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["Services"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R5 R6 K16 ["Networking"]
       51 GETTABLEKS                       R7 R3 K17 ["RobloxAPI"]
       53 GETTABLEKS                       R6 R7 K18 ["Url"]
       55 GETTABLEKS                       R7 R5 K19 ["new"]
       57 DUPTABLE                         R8 K22 [{"isInternal", "loggingLevel"}]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K20 ["isInternal"]
       61 SETTABLEKS                       R1 R8 K21 ["loggingLevel"]
       63 CALL                             R7 1 1
       64 NEWTABLE                         R8 1 0
       66 LOADK                            R9 K23 ["application/json"]
       67 SETTABLEKS                       R9 R8 K24 ["Content-Type"]
       69 GETIMPORT                        R9 K26 [game]
       71 LOADK                            R11 K27 ["HttpService"]
       72 NAMECALL                         R9 R9 K28 ["GetService"]
       74 CALL                             R9 2 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R12 R13 K12 ["Network"]
       81 GETTABLEKS                       R11 R12 K29 ["GameCache"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K30 [PROTO_1]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 RETURN                           R11 1
