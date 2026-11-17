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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K2 [{"userId"}]
        5 SETTABLEKS                       R1 R3 K1 ["userId"]
        7 GETTABLEKS                       R4 R2 K3 ["composeUrl"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["TEAMCREATE_MEMBERSHIPS"]
       12 GETTABLEKS                       R5 R5 K5 ["Prefix"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["TEAMCREATE_MEMBERSHIPS"]
       17 GETTABLEKS                       R6 R6 K6 ["Url"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 -1
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R7 K11 [{["Method"] = "DELETE", ["Url"], ["Headers"], ["Body"]}]
       24 SETTABLEKS                       R4 R7 K6 ["Url"]
       26 GETUPVAL                         R8 3
       27 SETTABLEKS                       R8 R7 K9 ["Headers"]
       29 GETUPVAL                         R8 4
       30 MOVE                             R10 R3
       31 NAMECALL                         R8 R8 K12 ["JSONEncode"]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K10 ["Body"]
       36 NAMECALL                         R5 R5 K13 ["request"]
       38 CALL                             R5 2 1
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R5 R5 K14 ["andThen"]
       44 CALL                             R5 2 0
       45 RETURN                           R0 0

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
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Network"]
       37 GETTABLEKS                       R5 R5 K13 ["Urls"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Util"]
       46 GETTABLEKS                       R6 R6 K15 ["Services"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R5 R5 K16 ["Networking"]
       51 GETTABLEKS                       R6 R3 K17 ["RobloxAPI"]
       53 GETTABLEKS                       R6 R6 K18 ["Url"]
       55 GETTABLEKS                       R7 R5 K19 ["new"]
       57 DUPTABLE                         R8 K23 [{["isInternal"] = True, ["loggingLevel"]}]
       58 SETTABLEKS                       R1 R8 K22 ["loggingLevel"]
       60 CALL                             R7 1 1
       61 NEWTABLE                         R8 1 0
       63 LOADK                            R9 K24 ["application/json"]
       64 SETTABLEKS                       R9 R8 K25 ["Content-Type"]
       66 GETIMPORT                        R9 K27 [game]
       68 LOADK                            R11 K28 ["HttpService"]
       69 NAMECALL                         R9 R9 K29 ["GetService"]
       71 CALL                             R9 2 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Src"]
       76 GETTABLEKS                       R11 R11 K12 ["Network"]
       78 GETTABLEKS                       R11 R11 K30 ["GameCache"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K31 [PROTO_1]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 RETURN                           R11 1
