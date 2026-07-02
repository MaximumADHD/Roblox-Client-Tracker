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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["composeUrl"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["UNIVERSE_CONFIGURATION"]
        9 GETTABLEKS                       R4 R4 K3 ["Prefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["UNIVERSE_CONFIGURATION"]
       14 GETTABLEKS                       R5 R5 K4 ["Url"]
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
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K12 ["Network"]
       67 GETTABLEKS                       R9 R9 K24 ["GameCache"]
       69 CALL                             R8 1 1
       70 NEWTABLE                         R9 1 0
       72 LOADK                            R10 K25 ["application/json"]
       73 SETTABLEKS                       R10 R9 K26 ["Content-Type"]
       75 GETIMPORT                        R10 K28 [game]
       77 LOADK                            R12 K29 ["HttpService"]
       78 NAMECALL                         R10 R10 K30 ["GetService"]
       80 CALL                             R10 2 1
       81 DUPCLOSURE                       R11 K31 [PROTO_2]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R8
       88 RETURN                           R11 1
