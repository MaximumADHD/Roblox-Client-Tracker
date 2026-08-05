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
        2 LOADK                            R3 K2 ["DiscoverBuildSealStatus failed for universe %*: %*"]
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R0
        5 NAMECALL                         R3 R3 K3 ["format"]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["composeUrl"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
        9 GETTABLEKS                       R3 R3 K3 ["Prefix"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
       14 GETTABLEKS                       R4 R4 K4 ["Url"]
       16 MOVE                             R5 R0
       17 CALL                             R4 1 -1
       18 CALL                             R2 -1 1
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R5 2
       21 MOVE                             R7 R2
       22 NAMECALL                         R5 R5 K5 ["get"]
       24 CALL                             R5 2 -1
       25 NAMECALL                         R3 R3 K6 ["parseJson"]
       27 CALL                             R3 -1 1
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R3 R3 K7 ["andThen"]
       33 CALL                             R3 2 1
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R3 R3 K8 ["catch"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1

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
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 LENGTH                           R1 R0
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        8 RETURN                           R0 0
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 MOVE                             R8 R1
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R6
       18 CALL                             R9 1 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R7 K5 [table.insert]
       22 CALL                             R7 -1 0
       23 FORGLOOP                         R2 2 ; [-9]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K6 ["all"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 DUPCLOSURE                       R4 K7 [PROTO_3]
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R2 R2 K8 ["andThen"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

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
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagStartPageAddBuildSealBadge"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Models"]
       40 GETTABLEKS                       R5 R5 K13 ["UniverseActivationEligibilityResponse"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Network"]
       49 GETTABLEKS                       R6 R6 K15 ["Urls"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K16 ["Util"]
       58 GETTABLEKS                       R7 R7 K17 ["Services"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R6 R6 K18 ["Networking"]
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K16 ["Util"]
       69 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R3 K20 ["RobloxAPI"]
       74 GETTABLEKS                       R8 R8 K21 ["Url"]
       76 GETTABLEKS                       R9 R3 K16 ["Util"]
       78 GETTABLEKS                       R9 R9 K22 ["Promise"]
       80 GETTABLEKS                       R10 R6 K23 ["new"]
       82 DUPTABLE                         R11 K29 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       83 SETTABLEKS                       R1 R11 K26 ["loggingLevel"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K6 ["Src"]
       90 GETTABLEKS                       R12 R12 K14 ["Network"]
       92 GETTABLEKS                       R12 R12 K30 ["GameCache"]
       94 CALL                             R11 1 1
       95 MOVE                             R12 R7
       96 GETTABLEKS                       R13 R4 K31 ["validate"]
       98 CALL                             R12 1 1
       99 DUPCLOSURE                       R13 K32 [PROTO_2]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R14 K33 [PROTO_4]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R11
      109 RETURN                           R14 1
