PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Id", "IsTeamCreateEnabled"}]
        1 GETTABLEKS                       R3 R1 K3 ["id"]
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETTABLEKS                       R3 R1 K4 ["isEnabled"]
        7 SETTABLEKS                       R3 R2 K1 ["IsTeamCreateEnabled"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["data"]
        3 DUPCLOSURE                       R3 K1 [PROTO_0]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["upsertItems"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverTeamCreateStatus experienced an error: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K2 [{"ids"}]
        5 SETTABLEKS                       R0 R1 K1 ["ids"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["MULTI_TEAM_CREATE_STATUS"]
       10 GETTABLEKS                       R3 R3 K4 ["Prefix"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["MULTI_TEAM_CREATE_STATUS"]
       15 GETTABLEKS                       R4 R4 K5 ["Url"]
       17 CALL                             R4 0 1
       18 LOADK                            R5 K6 ["?"]
       19 CONCAT                           R2 R3 R5
       20 GETTABLEKS                       R3 R1 K1 ["ids"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 MOVE                             R8 R2
       26 LOADK                            R9 K7 ["ids="]
       27 MOVE                             R10 R7
       28 LOADK                            R11 K8 ["&"]
       29 CONCAT                           R2 R8 R11
       30 FORGLOOP                         R3 2 ; [-6]
       32 GETUPVAL                         R3 1
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K9 ["get"]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 1
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K10 ["parseJson"]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R6 2
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K11 ["validate"]
       46 CALL                             R6 1 -1
       47 NAMECALL                         R4 R4 K12 ["andThen"]
       49 CALL                             R4 -1 1
       50 DUPCLOSURE                       R6 K13 [PROTO_1]
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 NAMECALL                         R4 R4 K12 ["andThen"]
       55 CALL                             R4 2 1
       56 DUPCLOSURE                       R6 K14 [PROTO_2]
       57 NAMECALL                         R4 R4 K15 ["catch"]
       59 CALL                             R4 2 0
       60 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K10 ["Models"]
       30 GETTABLEKS                       R4 R4 K11 ["MultiGetTeamCreateStatusResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Network"]
       39 GETTABLEKS                       R5 R5 K13 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K14 ["Util"]
       59 GETTABLEKS                       R7 R7 K17 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R5 K18 ["new"]
       64 DUPTABLE                         R8 K22 [{["isInternal"] = True, ["loggingLevel"]}]
       65 SETTABLEKS                       R1 R8 K21 ["loggingLevel"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K23 ["Packages"]
       72 GETTABLEKS                       R9 R9 K24 ["Dash"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R8 K25 ["collectArray"]
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K6 ["Src"]
       81 GETTABLEKS                       R11 R11 K12 ["Network"]
       83 GETTABLEKS                       R11 R11 K26 ["GameCache"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K27 [PROTO_3]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 RETURN                           R11 1
