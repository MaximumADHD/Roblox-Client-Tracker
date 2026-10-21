PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"Id", "IsBuildSealed"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["Id"]
        7 GETTABLEKS                       R3 R1 K3 ["provisionalRatingAllowed"]
        9 SETTABLEKS                       R3 R2 K1 ["IsBuildSealed"]
       11 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverBuildSealStatus failed for universe %*: %*"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getItem"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETTABLEKS                       R2 R1 K1 ["IsBuildSealed"]
        8 JUMPIFNOTEQKB                    R2 FALSE ; [+9]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["resolve"]
       13 DUPTABLE                         R3 K5 [{["Id"], ["IsBuildSealed"] = False}]
       14 SETTABLEKS                       R0 R3 K3 ["Id"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["new"]
       21 CALL                             R2 0 1
       22 GETTABLEKS                       R3 R2 K7 ["composeUrl"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K8 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
       27 GETTABLEKS                       R4 R4 K9 ["Prefix"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K8 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
       32 GETTABLEKS                       R5 R5 K10 ["Url"]
       34 MOVE                             R6 R0
       35 CALL                             R5 1 -1
       36 CALL                             R3 -1 1
       37 GETUPVAL                         R4 4
       38 GETUPVAL                         R6 4
       39 MOVE                             R8 R3
       40 NAMECALL                         R6 R6 K11 ["get"]
       42 CALL                             R6 2 -1
       43 NAMECALL                         R4 R4 K12 ["parseJson"]
       45 CALL                             R4 -1 1
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R4 R4 K13 ["andThen"]
       51 CALL                             R4 2 1
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R4 R4 K14 ["catch"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOT                        R6 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K2 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 LENGTH                           R2 R1
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+6]
       20 GETUPVAL                         R2 0
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K3 ["upsertItems"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 MOVE                             R8 R1
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R6
       13 CALL                             R9 1 -1
       14 FASTCALL                         TABLE_INSERT ; [+2]
       15 GETIMPORT                        R7 K3 [table.insert]
       17 CALL                             R7 -1 0
       18 FORGLOOP                         R2 2 ; [-9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["all"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R4 K5 [PROTO_3]
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R2 R2 K6 ["andThen"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

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
       30 GETTABLEKS                       R4 R4 K12 ["UniverseActivationEligibilityResponse"]
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
       66 GETTABLEKS                       R8 R2 K15 ["Util"]
       68 GETTABLEKS                       R8 R8 K21 ["Promise"]
       70 GETTABLEKS                       R9 R5 K22 ["new"]
       72 DUPTABLE                         R10 K28 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       73 SETTABLEKS                       R1 R10 K25 ["loggingLevel"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Src"]
       80 GETTABLEKS                       R11 R11 K13 ["Network"]
       82 GETTABLEKS                       R11 R11 K29 ["GameCache"]
       84 CALL                             R10 1 1
       85 MOVE                             R11 R6
       86 GETTABLEKS                       R12 R3 K30 ["validate"]
       88 CALL                             R11 1 1
       89 DUPCLOSURE                       R12 K31 [PROTO_2]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 DUPCLOSURE                       R13 K32 [PROTO_4]
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R10
      100 RETURN                           R13 1
