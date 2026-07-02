PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"Id", "IsTeamCreateEnabled"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["IsTeamCreateEnabled"]
        8 NAMECALL                         R0 R0 K3 ["upsertItem"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["ChangeTeamCreateEnabled experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 DUPTABLE                         R2 K3 [{"isEnabled"}]
        6 SETTABLEKS                       R1 R2 K2 ["isEnabled"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["new"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R3 K5 ["composeUrl"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["TEAMCREATE_CHANGE_ENABLED"]
       17 GETTABLEKS                       R5 R5 K7 ["Prefix"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K6 ["TEAMCREATE_CHANGE_ENABLED"]
       22 GETTABLEKS                       R6 R6 K8 ["Url"]
       24 MOVE                             R7 R0
       25 CALL                             R6 1 -1
       26 CALL                             R4 -1 1
       27 GETUPVAL                         R5 3
       28 MOVE                             R7 R4
       29 GETUPVAL                         R8 4
       30 MOVE                             R10 R2
       31 NAMECALL                         R8 R8 K9 ["JSONEncode"]
       33 CALL                             R8 2 1
       34 GETUPVAL                         R9 5
       35 NAMECALL                         R5 R5 K10 ["post"]
       37 CALL                             R5 4 1
       38 GETUPVAL                         R6 3
       39 MOVE                             R8 R5
       40 NAMECALL                         R6 R6 K11 ["parseJson"]
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 NAMECALL                         R6 R6 K12 ["andThen"]
       49 CALL                             R6 2 1
       50 DUPCLOSURE                       R8 K13 [PROTO_1]
       51 NAMECALL                         R6 R6 K14 ["catch"]
       53 CALL                             R6 2 0
       54 RETURN                           R0 0

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
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagStartPageAllowDisableTeamCreate"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Network"]
       40 GETTABLEKS                       R5 R5 K13 ["Urls"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["Services"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R5 R5 K16 ["Networking"]
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K12 ["Network"]
       60 GETTABLEKS                       R7 R7 K17 ["GameCache"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R3 K18 ["RobloxAPI"]
       65 GETTABLEKS                       R7 R7 K19 ["Url"]
       67 GETTABLEKS                       R8 R5 K20 ["new"]
       69 DUPTABLE                         R9 K26 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       70 SETTABLEKS                       R1 R9 K23 ["loggingLevel"]
       72 CALL                             R8 1 1
       73 NEWTABLE                         R9 1 0
       75 LOADK                            R10 K27 ["application/json"]
       76 SETTABLEKS                       R10 R9 K28 ["Content-Type"]
       78 GETIMPORT                        R10 K30 [game]
       80 LOADK                            R12 K31 ["HttpService"]
       81 NAMECALL                         R10 R10 K32 ["GetService"]
       83 CALL                             R10 2 1
       84 DUPCLOSURE                       R11 K33 [PROTO_2]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 RETURN                           R11 1
