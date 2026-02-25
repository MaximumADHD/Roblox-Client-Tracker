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
        2 LOADK                            R3 K2 ["DiscoverTeamCreateStatus experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K2 [{"ids"}]
        5 SETTABLEKS                       R0 R1 K1 ["ids"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K3 ["MULTI_TEAM_CREATE_STATUS"]
       10 GETTABLEKS                       R3 R6 K4 ["Prefix"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K3 ["MULTI_TEAM_CREATE_STATUS"]
       15 GETTABLEKS                       R6 R7 K5 ["Url"]
       17 CALL                             R6 0 1
       18 MOVE                             R4 R6
       19 LOADK                            R5 K6 ["?"]
       20 CONCAT                           R2 R3 R5
       21 GETTABLEKS                       R3 R1 K1 ["ids"]
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R2
       27 LOADK                            R9 K7 ["ids="]
       28 MOVE                             R10 R7
       29 LOADK                            R11 K8 ["&"]
       30 CONCAT                           R2 R8 R11
       31 FORGLOOP                         R3 2 ; [-6]
       33 GETUPVAL                         R3 1
       34 MOVE                             R5 R2
       35 NAMECALL                         R3 R3 K9 ["get"]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 1
       39 MOVE                             R6 R3
       40 NAMECALL                         R4 R4 K10 ["parseJson"]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R6 2
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K11 ["validate"]
       47 CALL                             R6 1 -1
       48 NAMECALL                         R4 R4 K12 ["andThen"]
       50 CALL                             R4 -1 1
       51 DUPCLOSURE                       R6 K13 [PROTO_1]
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U5
       54 NAMECALL                         R4 R4 K12 ["andThen"]
       56 CALL                             R4 2 1
       57 DUPCLOSURE                       R6 K14 [PROTO_2]
       58 NAMECALL                         R4 R4 K15 ["catch"]
       60 CALL                             R4 2 0
       61 RETURN                           R0 0

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
       26 GETTABLEKS                       R6 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R6 K10 ["Models"]
       30 GETTABLEKS                       R4 R5 K11 ["MultiGetTeamCreateStatusResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R7 K12 ["Network"]
       39 GETTABLEKS                       R5 R6 K13 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K6 ["Src"]
       46 GETTABLEKS                       R8 R9 K14 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["Services"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R5 R6 K16 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R9 K14 ["Util"]
       59 GETTABLEKS                       R7 R8 K17 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R5 K18 ["new"]
       64 DUPTABLE                         R8 K21 [{"isInternal", "loggingLevel"}]
       65 LOADB                            R9 1
       66 SETTABLEKS                       R9 R8 K19 ["isInternal"]
       68 SETTABLEKS                       R1 R8 K20 ["loggingLevel"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R10 R0 K22 ["Packages"]
       75 GETTABLEKS                       R9 R10 K23 ["Dash"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R8 K24 ["collectArray"]
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K6 ["Src"]
       84 GETTABLEKS                       R12 R13 K12 ["Network"]
       86 GETTABLEKS                       R11 R12 K25 ["GameCache"]
       88 CALL                             R10 1 1
       89 DUPCLOSURE                       R11 K26 [PROTO_3]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 RETURN                           R11 1
