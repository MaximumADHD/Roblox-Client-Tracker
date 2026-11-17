PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R4 0 1
        6 DUPTABLE                         R5 K2 [{"Id", "ReachStatus"}]
        7 GETUPVAL                         R6 2
        8 SETTABLEKS                       R6 R5 K0 ["Id"]
       10 DUPTABLE                         R6 K7 [{"chipStatus", "iconName", "translatedStatus", "variant"}]
       11 GETTABLEKS                       R7 R1 K3 ["chipStatus"]
       13 SETTABLEKS                       R7 R6 K3 ["chipStatus"]
       15 GETTABLEKS                       R7 R1 K4 ["iconName"]
       17 SETTABLEKS                       R7 R6 K4 ["iconName"]
       19 GETTABLEKS                       R7 R1 K5 ["translatedStatus"]
       21 SETTABLEKS                       R7 R6 K5 ["translatedStatus"]
       23 GETTABLEKS                       R7 R1 K6 ["variant"]
       25 SETTABLEKS                       R7 R6 K6 ["variant"]
       27 SETTABLEKS                       R6 R5 K1 ["ReachStatus"]
       29 SETLIST                          R4 R5 1 [1]
       31 NAMECALL                         R2 R2 K8 ["upsertItems"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverReachStatus experienced an error for universe %*: %*"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 CALL                             R1 0 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R7 K2 ["getItem"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+40]
       18 GETTABLEKS                       R8 R7 K3 ["ReachStatus"]
       20 JUMPIFNOTEQKNIL                  R8 ; [+37]
       22 GETTABLEKS                       R8 R1 K4 ["composeUrl"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K5 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
       27 GETTABLEKS                       R9 R9 K6 ["Prefix"]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K5 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
       32 GETTABLEKS                       R10 R10 K7 ["Url"]
       34 MOVE                             R11 R6
       35 CALL                             R10 1 -1
       36 CALL                             R8 -1 1
       37 GETUPVAL                         R9 3
       38 GETUPVAL                         R11 3
       39 MOVE                             R13 R8
       40 NAMECALL                         R11 R11 K8 ["get"]
       42 CALL                             R11 2 -1
       43 NAMECALL                         R9 R9 K9 ["parseJson"]
       45 CALL                             R9 -1 1
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R6
       50 NAMECALL                         R9 R9 K10 ["andThen"]
       52 CALL                             R9 2 1
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R6
       55 NAMECALL                         R9 R9 K11 ["catch"]
       57 CALL                             R9 2 0
       58 FORGLOOP                         R2 2 ; [-47]
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
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Models"]
       30 GETTABLEKS                       R4 R4 K12 ["UniverseReachStatusResponse"]
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
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K6 ["Src"]
       76 GETTABLEKS                       R10 R10 K13 ["Network"]
       78 GETTABLEKS                       R10 R10 K26 ["GameCache"]
       80 CALL                             R9 1 1
       81 MOVE                             R10 R6
       82 GETTABLEKS                       R11 R3 K27 ["validate"]
       84 CALL                             R10 1 1
       85 DUPCLOSURE                       R11 K28 [PROTO_2]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 RETURN                           R11 1
