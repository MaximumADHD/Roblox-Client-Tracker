PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["eligibilityByCreator"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+7]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["resolve"]
       14 DUPTABLE                         R3 K5 [{["eligible"] = False}]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
       19 GETTABLEN                        R2 R3 1
       20 GETTABLEKS                       R3 R2 K6 ["userIsEligible"]
       22 JUMPIF                           R3 ; [+21]
       23 GETTABLEKS                       R3 R2 K7 ["displayText"]
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETIMPORT                        R3 K10 [string.find]
       28 GETTABLEKS                       R4 R2 K7 ["displayText"]
       30 LOADK                            R5 K11 ["verified"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETUPVAL                         R3 2
       34 CALL                             R3 0 0
       35 JUMP                             ; [+2]
       36 GETUPVAL                         R3 3
       37 CALL                             R3 0 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K2 ["resolve"]
       41 DUPTABLE                         R4 K5 [{["eligible"] = False}]
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K2 ["resolve"]
       47 DUPTABLE                         R4 K13 [{["eligible"] = True}]
       48 CALL                             R3 1 -1
       49 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 DUPTABLE                         R1 K3 [{["eligible"] = False}]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_3:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K1 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 JUMPIFNOT                        R6 ; [+11]
        7 GETTABLEKS                       R7 R6 K2 ["placeSafetyStatus"]
        9 JUMPIFNOT                        R7 ; [+8]
       10 GETTABLEKS                       R7 R6 K2 ["placeSafetyStatus"]
       12 GETTABLEKS                       R7 R7 K3 ["userPlayabilityRestrictions"]
       14 JUMPIFNOTEQKS                    R7 K4 ["RestrictedForAll"] ; [+3]
       16 LOADB                            R1 1
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R2 2 [inext] ; [-13]
       20 DUPTABLE                         R2 K6 [{"shouldBlock"}]
       21 SETTABLEKS                       R1 R2 K5 ["shouldBlock"]
       23 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 DUPTABLE                         R1 K3 [{["shouldBlock"] = False}]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R1 R0 K0 ["eligible"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 JUMPIFNOTEQ                      R2 R3 ; [+7]
       10 NEWTABLE                         R1 0 1
       12 GETUPVAL                         R2 0
       13 SETLIST                          R1 R2 1 [1]
       15 JUMP                             ; [+6]
       16 NEWTABLE                         R1 0 2
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R3 1
       20 SETLIST                          R1 R2 2 [1]
       22 NEWTABLE                         R2 0 0
       24 GETIMPORT                        R3 K2 [ipairs]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 3
       28 FORGPREP_INEXT                   R3
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K3 ["composeUrl"]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K4 ["PLACE_SAFETY_STATUS_URL"]
       35 GETTABLEKS                       R9 R9 K5 ["Prefix"]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K4 ["PLACE_SAFETY_STATUS_URL"]
       40 GETTABLEKS                       R10 R10 K6 ["Url"]
       42 MOVE                             R11 R7
       43 CALL                             R10 1 -1
       44 CALL                             R8 -1 1
       45 GETUPVAL                         R9 4
       46 GETUPVAL                         R11 4
       47 MOVE                             R13 R8
       48 GETUPVAL                         R14 5
       49 NAMECALL                         R11 R11 K7 ["get"]
       51 CALL                             R11 3 -1
       52 NAMECALL                         R9 R9 K8 ["parseJson"]
       54 CALL                             R9 -1 1
       55 DUPCLOSURE                       R11 K9 [PROTO_2]
       56 CAPTURE                          UPVAL U6
       57 NAMECALL                         R9 R9 K10 ["andThen"]
       59 CALL                             R9 2 1
       60 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       62 MOVE                             R11 R2
       63 MOVE                             R12 R9
       64 GETIMPORT                        R10 K13 [table.insert]
       66 CALL                             R10 2 0
       67 FORGLOOP                         R3 2 [inext] ; [-39]
       69 GETUPVAL                         R3 7
       70 GETTABLEKS                       R3 R3 K14 ["all"]
       72 MOVE                             R4 R2
       73 CALL                             R3 1 1
       74 DUPCLOSURE                       R5 K15 [PROTO_3]
       75 NAMECALL                         R3 R3 K10 ["andThen"]
       77 CALL                             R3 2 1
       78 DUPCLOSURE                       R5 K16 [PROTO_4]
       79 CAPTURE                          UPVAL U8
       80 NAMECALL                         R3 R3 K17 ["catch"]
       82 CALL                             R3 2 -1
       83 RETURN                           R3 -1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["shouldBlock"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 GETUPVAL                         R6 6
       15 JUMPIFEQKB                       R6 TRUE ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NAMECALL                         R1 R1 K1 ["openPlace"]
       21 CALL                             R1 4 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace experienced an error: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R11 0
        1 GETTABLEKS                       R11 R11 K0 ["new"]
        3 CALL                             R11 0 1
        4 GETTABLEKS                       R12 R11 K1 ["composeUrl"]
        6 GETUPVAL                         R13 1
        7 GETTABLEKS                       R13 R13 K2 ["MULTI_CREATOR_ELIGIBILITY"]
        9 GETTABLEKS                       R13 R13 K3 ["Prefix"]
       11 GETUPVAL                         R14 1
       12 GETTABLEKS                       R14 R14 K2 ["MULTI_CREATOR_ELIGIBILITY"]
       14 GETTABLEKS                       R14 R14 K4 ["Url"]
       16 CALL                             R14 0 -1
       17 CALL                             R12 -1 1
       18 GETUPVAL                         R13 2
       19 MOVE                             R15 R12
       20 GETUPVAL                         R16 3
       21 DUPTABLE                         R18 K9 [{["action"] = 1, ["userIds"], ["universeId"]}]
       22 NEWTABLE                         R19 0 1
       24 MOVE                             R20 R0
       25 SETLIST                          R19 R20 1 [1]
       27 SETTABLEKS                       R19 R18 K7 ["userIds"]
       29 SETTABLEKS                       R1 R18 K8 ["universeId"]
       31 NAMECALL                         R16 R16 K10 ["JSONEncode"]
       33 CALL                             R16 2 1
       34 GETUPVAL                         R17 4
       35 NAMECALL                         R13 R13 K11 ["post"]
       37 CALL                             R13 4 1
       38 GETUPVAL                         R14 2
       39 MOVE                             R16 R13
       40 NAMECALL                         R14 R14 K12 ["parseJson"]
       42 CALL                             R14 2 1
       43 NEWCLOSURE                       R16 P0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 NAMECALL                         R14 R14 K13 ["andThen"]
       50 CALL                             R14 2 1
       51 DUPCLOSURE                       R16 K14 [PROTO_1]
       52 CAPTURE                          UPVAL U6
       53 NAMECALL                         R14 R14 K15 ["catch"]
       55 CALL                             R14 2 1
       56 NEWCLOSURE                       R17 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R11
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U6
       66 NAMECALL                         R15 R14 K13 ["andThen"]
       68 CALL                             R15 2 1
       69 NEWCLOSURE                       R17 P3
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R10
       77 NAMECALL                         R15 R15 K13 ["andThen"]
       79 CALL                             R15 2 1
       80 DUPCLOSURE                       R17 K16 [PROTO_7]
       81 NAMECALL                         R15 R15 K15 ["catch"]
       83 CALL                             R15 2 0
       84 RETURN                           R0 0

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
       30 GETTABLEKS                       R4 R4 K12 ["MultiGetCreatorEligibilityResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K11 ["Models"]
       39 GETTABLEKS                       R5 R5 K13 ["PlaceSafetyStatusResponse"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Network"]
       48 GETTABLEKS                       R6 R6 K15 ["Urls"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K16 ["Util"]
       57 GETTABLEKS                       R7 R7 K17 ["Services"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R6 R6 K18 ["Networking"]
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K6 ["Src"]
       66 GETTABLEKS                       R8 R8 K16 ["Util"]
       68 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R9 R0 K6 ["Src"]
       75 GETTABLEKS                       R9 R9 K16 ["Util"]
       77 GETTABLEKS                       R9 R9 K20 ["TypedPromise"]
       79 CALL                             R8 1 1
       80 GETTABLEKS                       R9 R2 K21 ["RobloxAPI"]
       82 GETTABLEKS                       R9 R9 K22 ["Url"]
       84 GETTABLEKS                       R10 R6 K23 ["new"]
       86 DUPTABLE                         R11 K29 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       87 SETTABLEKS                       R1 R11 K26 ["loggingLevel"]
       89 CALL                             R10 1 1
       90 NEWTABLE                         R11 1 0
       92 LOADK                            R12 K30 ["application/json"]
       93 SETTABLEKS                       R12 R11 K31 ["Content-Type"]
       95 GETIMPORT                        R12 K33 [game]
       97 LOADK                            R14 K34 ["HttpService"]
       98 NAMECALL                         R12 R12 K35 ["GetService"]
      100 CALL                             R12 2 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Src"]
      105 GETTABLEKS                       R14 R14 K16 ["Util"]
      107 GETTABLEKS                       R14 R14 K17 ["Services"]
      109 CALL                             R13 1 1
      110 GETTABLEKS                       R14 R13 K36 ["StartPageManager"]
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K6 ["Src"]
      116 GETTABLEKS                       R16 R16 K16 ["Util"]
      118 GETTABLEKS                       R16 R16 K37 ["showPlaceSafetyBlockedDialog"]
      120 CALL                             R15 1 1
      121 MOVE                             R16 R7
      122 GETTABLEKS                       R17 R3 K38 ["validate"]
      124 CALL                             R16 1 1
      125 MOVE                             R17 R7
      126 GETTABLEKS                       R18 R4 K38 ["validate"]
      128 CALL                             R17 1 1
      129 GETTABLEKS                       R18 R2 K16 ["Util"]
      131 GETTABLEKS                       R18 R18 K39 ["Promise"]
      133 DUPCLOSURE                       R19 K40 [PROTO_8]
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R14
      145 RETURN                           R19 1
