PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Id", "IsImpacted"}]
        1 GETTABLEKS                       R3 R1 K3 ["UniverseId"]
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETTABLEKS                       R3 R1 K1 ["IsImpacted"]
        7 SETTABLEKS                       R3 R2 K1 ["IsImpacted"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["Results"]
        6 DUPCLOSURE                       R4 K1 [PROTO_0]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverImpactedStatus batch failed (size %*): %*"]
        3 GETUPVAL                         R6 0
        4 LENGTH                           R5 R6
        5 MOVE                             R6 R0
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 NEWTABLE                         R1 0 0
       13 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"universeIds"}]
        1 SETTABLEKS                       R1 R2 K0 ["universeIds"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R5 0
        5 MOVE                             R7 R0
        6 GETUPVAL                         R8 1
        7 MOVE                             R10 R2
        8 NAMECALL                         R8 R8 K2 ["JSONEncode"]
       10 CALL                             R8 2 1
       11 GETUPVAL                         R9 2
       12 NAMECALL                         R5 R5 K3 ["post"]
       14 CALL                             R5 4 -1
       15 NAMECALL                         R3 R3 K4 ["parseJson"]
       17 CALL                             R3 -1 1
       18 DUPCLOSURE                       R5 K5 [PROTO_1]
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R3 R3 K6 ["andThen"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R3 R3 K7 ["catch"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       12 MOVE                             R13 R1
       13 MOVE                             R14 R11
       14 GETIMPORT                        R12 K2 [table.insert]
       16 CALL                             R12 2 0
       17 FORGLOOP                         R7 2 ; [-8]
       19 FORGLOOP                         R2 2 ; [-14]
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["DiscoverImpactedStatus is only available when FFlagStartPageEstablishTrustBanner is enabled"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["new"]
       14 CALL                             R1 0 1
       15 GETTABLEKS                       R2 R1 K5 ["composeUrl"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K6 ["ARE_UNIVERSES_IMPACTED"]
       20 GETTABLEKS                       R3 R3 K7 ["Prefix"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K6 ["ARE_UNIVERSES_IMPACTED"]
       25 GETTABLEKS                       R4 R4 K8 ["Url"]
       27 CALL                             R4 0 -1
       28 CALL                             R2 -1 1
       29 NEWTABLE                         R3 0 0
       31 LOADN                            R6 1
       32 LENGTH                           R4 R0
       33 GETUPVAL                         R5 3
       34 FORNPREP                         R4
       35 GETUPVAL                         R10 3
       36 ADD                              R9 R6 R10
       37 SUBK                             R8 R9 K9 [1]
       38 LENGTH                           R9 R0
       39 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       41 GETIMPORT                        R7 K12 [math.min]
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K15 [table.move]
       46 MOVE                             R9 R0
       47 MOVE                             R10 R6
       48 MOVE                             R11 R7
       49 LOADN                            R12 1
       50 NEWTABLE                         R13 0 0
       52 CALL                             R8 5 1
       53 MOVE                             R10 R3
       54 GETUPVAL                         R11 4
       55 MOVE                             R12 R2
       56 MOVE                             R13 R8
       57 CALL                             R11 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R9 K17 [table.insert]
       61 CALL                             R9 -1 0
       62 FORNLOOP                         R4
       63 GETUPVAL                         R4 5
       64 GETTABLEKS                       R4 R4 K18 ["all"]
       66 MOVE                             R5 R3
       67 CALL                             R4 1 1
       68 DUPCLOSURE                       R6 K19 [PROTO_4]
       69 NAMECALL                         R4 R4 K20 ["andThen"]
       71 CALL                             R4 2 -1
       72 RETURN                           R4 -1

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
       23 GETTABLEKS                       R3 R3 K9 ["getFIntStartPageImpactedStatusAPIBatchSize"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K10 ["Packages"]
       38 GETTABLEKS                       R5 R5 K12 ["Dash"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K13 ["collectArray"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R8 K15 ["Models"]
       56 GETTABLEKS                       R8 R8 K16 ["AreUniversesImpactedModel"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Network"]
       65 GETTABLEKS                       R9 R9 K18 ["Urls"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K6 ["Src"]
       72 GETTABLEKS                       R10 R10 K19 ["Util"]
       74 GETTABLEKS                       R10 R10 K20 ["Services"]
       76 CALL                             R9 1 1
       77 GETTABLEKS                       R9 R9 K21 ["Networking"]
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K6 ["Src"]
       83 GETTABLEKS                       R11 R11 K19 ["Util"]
       85 GETTABLEKS                       R11 R11 K22 ["createResponseValidator"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K6 ["Src"]
       92 GETTABLEKS                       R12 R12 K7 ["SharedFlags"]
       94 GETTABLEKS                       R12 R12 K23 ["getFFlagStartPageEstablishTrustBanner"]
       96 CALL                             R11 1 1
       97 CALL                             R11 0 1
       98 GETTABLEKS                       R12 R3 K24 ["RobloxAPI"]
      100 GETTABLEKS                       R12 R12 K25 ["Url"]
      102 GETTABLEKS                       R13 R3 K19 ["Util"]
      104 GETTABLEKS                       R13 R13 K26 ["Promise"]
      106 GETIMPORT                        R14 K28 [game]
      108 LOADK                            R16 K29 ["HttpService"]
      109 NAMECALL                         R14 R14 K30 ["GetService"]
      111 CALL                             R14 2 1
      112 GETTABLEKS                       R15 R9 K31 ["new"]
      114 DUPTABLE                         R16 K34 [{"isInternal", "loggingLevel"}]
      115 LOADB                            R17 1
      116 SETTABLEKS                       R17 R16 K32 ["isInternal"]
      118 SETTABLEKS                       R1 R16 K33 ["loggingLevel"]
      120 CALL                             R15 1 1
      121 MOVE                             R16 R10
      122 GETTABLEKS                       R17 R7 K35 ["validate"]
      124 CALL                             R16 1 1
      125 NEWTABLE                         R17 1 0
      127 LOADK                            R18 K36 ["application/json"]
      128 SETTABLEKS                       R18 R17 K37 ["Content-Type"]
      130 DUPCLOSURE                       R18 K38 [PROTO_3]
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R5
      136 DUPCLOSURE                       R19 K39 [PROTO_5]
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R13
      143 RETURN                           R19 1
