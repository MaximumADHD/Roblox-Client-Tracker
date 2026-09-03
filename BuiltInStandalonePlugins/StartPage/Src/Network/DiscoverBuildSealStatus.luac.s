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
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["getItem"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETTABLEKS                       R2 R1 K1 ["IsBuildSealed"]
       10 JUMPIFNOTEQKB                    R2 FALSE ; [+9]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["resolve"]
       15 DUPTABLE                         R3 K5 [{["Id"], ["IsBuildSealed"] = False}]
       16 SETTABLEKS                       R0 R3 K3 ["Id"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K6 ["new"]
       23 CALL                             R1 0 1
       24 GETTABLEKS                       R2 R1 K7 ["composeUrl"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K8 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
       29 GETTABLEKS                       R3 R3 K9 ["Prefix"]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K8 ["UNIVERSE_ACTIVATION_ELIGIBILITY"]
       34 GETTABLEKS                       R4 R4 K10 ["Url"]
       36 MOVE                             R5 R0
       37 CALL                             R4 1 -1
       38 CALL                             R2 -1 1
       39 GETUPVAL                         R3 5
       40 GETUPVAL                         R5 5
       41 MOVE                             R7 R2
       42 NAMECALL                         R5 R5 K11 ["get"]
       44 CALL                             R5 2 -1
       45 NAMECALL                         R3 R3 K12 ["parseJson"]
       47 CALL                             R3 -1 1
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R3 R3 K13 ["andThen"]
       53 CALL                             R3 2 1
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R3 R3 K14 ["catch"]
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1

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
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R4 K10 ["getFFlagStartPageBackfillRecentsFromCloud"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R5 R0 K11 ["Packages"]
       41 GETTABLEKS                       R5 R5 K12 ["Framework"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K5 [require]
       46 GETTABLEKS                       R6 R0 K6 ["Src"]
       48 GETTABLEKS                       R6 R6 K13 ["Models"]
       50 GETTABLEKS                       R6 R6 K14 ["UniverseActivationEligibilityResponse"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Network"]
       59 GETTABLEKS                       R7 R7 K16 ["Urls"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K6 ["Src"]
       66 GETTABLEKS                       R8 R8 K17 ["Util"]
       68 GETTABLEKS                       R8 R8 K18 ["Services"]
       70 CALL                             R7 1 1
       71 GETTABLEKS                       R7 R7 K19 ["Networking"]
       73 GETIMPORT                        R8 K5 [require]
       75 GETTABLEKS                       R9 R0 K6 ["Src"]
       77 GETTABLEKS                       R9 R9 K17 ["Util"]
       79 GETTABLEKS                       R9 R9 K20 ["createResponseValidator"]
       81 CALL                             R8 1 1
       82 GETTABLEKS                       R9 R4 K21 ["RobloxAPI"]
       84 GETTABLEKS                       R9 R9 K22 ["Url"]
       86 GETTABLEKS                       R10 R4 K17 ["Util"]
       88 GETTABLEKS                       R10 R10 K23 ["Promise"]
       90 GETTABLEKS                       R11 R7 K24 ["new"]
       92 DUPTABLE                         R12 K30 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       93 SETTABLEKS                       R1 R12 K27 ["loggingLevel"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K6 ["Src"]
      100 GETTABLEKS                       R13 R13 K15 ["Network"]
      102 GETTABLEKS                       R13 R13 K31 ["GameCache"]
      104 CALL                             R12 1 1
      105 MOVE                             R13 R8
      106 GETTABLEKS                       R14 R5 K32 ["validate"]
      108 CALL                             R13 1 1
      109 DUPCLOSURE                       R14 K33 [PROTO_2]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 DUPCLOSURE                       R15 K34 [PROTO_4]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R12
      122 RETURN                           R15 1
