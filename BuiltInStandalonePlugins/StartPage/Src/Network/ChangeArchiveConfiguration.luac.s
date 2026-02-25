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
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["ChargeArchiveConfiguration experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["composeUrl"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["UNIVERSE_CONFIGURATION"]
        9 GETTABLEKS                       R4 R5 K3 ["Prefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["UNIVERSE_CONFIGURATION"]
       14 GETTABLEKS                       R5 R6 K4 ["Url"]
       16 MOVE                             R6 R0
       17 CALL                             R5 1 -1
       18 CALL                             R3 -1 1
       19 DUPTABLE                         R4 K6 [{"isArchived"}]
       20 SETTABLEKS                       R1 R4 K5 ["isArchived"]
       22 GETUPVAL                         R5 2
       23 MOVE                             R7 R3
       24 GETUPVAL                         R8 3
       25 MOVE                             R10 R4
       26 NAMECALL                         R8 R8 K7 ["JSONEncode"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 4
       30 NAMECALL                         R5 R5 K8 ["patch"]
       32 CALL                             R5 4 1
       33 GETUPVAL                         R6 2
       34 MOVE                             R8 R5
       35 NAMECALL                         R6 R6 K9 ["parseJson"]
       37 CALL                             R6 2 1
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R6 R6 K10 ["andThen"]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R8 K11 [PROTO_1]
       45 NAMECALL                         R6 R6 K12 ["catch"]
       47 CALL                             R6 2 0
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
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K6 ["Src"]
       68 GETTABLEKS                       R10 R11 K12 ["Network"]
       70 GETTABLEKS                       R9 R10 K23 ["GameCache"]
       72 CALL                             R8 1 1
       73 NEWTABLE                         R9 1 0
       75 LOADK                            R10 K24 ["application/json"]
       76 SETTABLEKS                       R10 R9 K25 ["Content-Type"]
       78 GETIMPORT                        R10 K27 [game]
       80 LOADK                            R12 K28 ["HttpService"]
       81 NAMECALL                         R10 R10 K29 ["GetService"]
       83 CALL                             R10 2 1
       84 DUPCLOSURE                       R11 K30 [PROTO_2]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 RETURN                           R11 1
