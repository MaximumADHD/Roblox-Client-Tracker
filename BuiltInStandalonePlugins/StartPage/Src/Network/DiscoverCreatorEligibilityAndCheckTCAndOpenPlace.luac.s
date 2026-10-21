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
       12 JUMPIF                           R1 ; [+12]
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R3 5
       15 GETUPVAL                         R4 6
       16 GETUPVAL                         R6 7
       17 JUMPIFEQKB                       R6 TRUE ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 NAMECALL                         R1 R1 K1 ["openPlace"]
       23 CALL                             R1 4 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 8
       26 JUMPIF                           R1 ; [+12]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 GETUPVAL                         R4 6
       30 GETUPVAL                         R6 7
       31 JUMPIFEQKB                       R6 TRUE ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 NAMECALL                         R1 R1 K1 ["openPlace"]
       37 CALL                             R1 4 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 9
       40 GETTABLEKS                       R1 R1 K2 ["composeUrl"]
       42 GETUPVAL                         R2 10
       43 GETTABLEKS                       R2 R2 K3 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
       45 GETTABLEKS                       R2 R2 K4 ["Prefix"]
       47 GETUPVAL                         R3 10
       48 GETTABLEKS                       R3 R3 K3 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
       50 GETTABLEKS                       R3 R3 K5 ["Url"]
       52 CALL                             R3 0 -1
       53 CALL                             R1 -1 1
       54 NEWTABLE                         R2 2 0
       56 LOADK                            R3 K6 ["application/json"]
       57 SETTABLEKS                       R3 R2 K7 ["Content-Type"]
       59 GETUPVAL                         R4 11
       60 FASTCALL1                        TOSTRING R4 ; [+2]
       61 GETIMPORT                        R3 K9 [tostring]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R3 R2 K10 ["robloxctx-authenticated-userid"]
       66 GETUPVAL                         R3 12
       67 MOVE                             R5 R1
       68 GETUPVAL                         R6 13
       69 DUPTABLE                         R8 K12 [{"universeId"}]
       70 GETUPVAL                         R9 6
       71 SETTABLEKS                       R9 R8 K11 ["universeId"]
       73 NAMECALL                         R6 R6 K13 ["JSONEncode"]
       75 CALL                             R6 2 1
       76 MOVE                             R7 R2
       77 NAMECALL                         R3 R3 K14 ["post"]
       79 CALL                             R3 4 1
       80 GETUPVAL                         R4 12
       81 MOVE                             R6 R3
       82 NAMECALL                         R4 R4 K15 ["parseJson"]
       84 CALL                             R4 2 -1
       85 RETURN                           R4 -1

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K0 ["CanCollaborate"]
        9 JUMPIFNOTEQKB                    R2 TRUE ; [+11]
       11 GETTABLEKS                       R2 R1 K1 ["Error"]
       13 JUMPIFNOT                        R2 ; [+16]
       14 GETTABLEKS                       R2 R1 K1 ["Error"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["None"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETUPVAL                         R2 2
       22 MOVE                             R3 R1
       23 GETUPVAL                         R4 3
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R6 5
       26 GETUPVAL                         R7 6
       27 GETUPVAL                         R8 7
       28 CALL                             R2 6 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 8
       31 GETUPVAL                         R4 4
       32 GETUPVAL                         R5 3
       33 GETUPVAL                         R7 9
       34 JUMPIFEQKB                       R7 TRUE ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 NAMECALL                         R2 R2 K3 ["openPlace"]
       40 CALL                             R2 4 0
       41 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace experienced an error: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
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
       73 CAPTURE                          VAL R6
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R10
       78 CAPTURE                          UPVAL U11
       79 CAPTURE                          VAL R11
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U3
       84 NAMECALL                         R15 R15 K13 ["andThen"]
       86 CALL                             R15 2 1
       87 NEWCLOSURE                       R17 P4
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          UPVAL U13
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R10
       98 NAMECALL                         R15 R15 K13 ["andThen"]
      100 CALL                             R15 2 1
      101 DUPCLOSURE                       R17 K16 [PROTO_8]
      102 NAMECALL                         R15 R15 K15 ["catch"]
      104 CALL                             R15 2 0
      105 RETURN                           R0 0

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
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Models"]
       40 GETTABLEKS                       R5 R5 K13 ["MultiGetCreatorEligibilityResponse"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Models"]
       49 GETTABLEKS                       R6 R6 K14 ["CanCollaborateResponse"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Models"]
       58 GETTABLEKS                       R7 R7 K15 ["PlaceSafetyStatusResponse"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K16 ["Network"]
       67 GETTABLEKS                       R8 R8 K17 ["Urls"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K18 ["Util"]
       76 GETTABLEKS                       R9 R9 K19 ["Services"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R8 R8 K20 ["Networking"]
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K6 ["Src"]
       85 GETTABLEKS                       R10 R10 K18 ["Util"]
       87 GETTABLEKS                       R10 R10 K21 ["createResponseValidator"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K6 ["Src"]
       94 GETTABLEKS                       R11 R11 K18 ["Util"]
       96 GETTABLEKS                       R11 R11 K22 ["TypedPromise"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K6 ["Src"]
      103 GETTABLEKS                       R12 R12 K12 ["Models"]
      105 GETTABLEKS                       R12 R12 K23 ["CanCollaborateError"]
      107 CALL                             R11 1 1
      108 GETTABLEKS                       R12 R3 K24 ["RobloxAPI"]
      110 GETTABLEKS                       R12 R12 K25 ["Url"]
      112 GETTABLEKS                       R13 R8 K26 ["new"]
      114 DUPTABLE                         R14 K32 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
      115 SETTABLEKS                       R1 R14 K29 ["loggingLevel"]
      117 CALL                             R13 1 1
      118 NEWTABLE                         R14 1 0
      120 LOADK                            R15 K33 ["application/json"]
      121 SETTABLEKS                       R15 R14 K34 ["Content-Type"]
      123 GETIMPORT                        R15 K36 [game]
      125 LOADK                            R17 K37 ["HttpService"]
      126 NAMECALL                         R15 R15 K38 ["GetService"]
      128 CALL                             R15 2 1
      129 GETIMPORT                        R16 K5 [require]
      131 GETTABLEKS                       R17 R0 K6 ["Src"]
      133 GETTABLEKS                       R17 R17 K18 ["Util"]
      135 GETTABLEKS                       R17 R17 K19 ["Services"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R17 R16 K39 ["StartPageManager"]
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K6 ["Src"]
      144 GETTABLEKS                       R19 R19 K18 ["Util"]
      146 GETTABLEKS                       R19 R19 K40 ["showPlaceSafetyBlockedDialog"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K6 ["Src"]
      153 GETTABLEKS                       R20 R20 K18 ["Util"]
      155 GETTABLEKS                       R20 R20 K41 ["showCollabSafetyGateDialogAsync"]
      157 CALL                             R19 1 1
      158 MOVE                             R20 R9
      159 GETTABLEKS                       R21 R4 K42 ["validate"]
      161 CALL                             R20 1 1
      162 MOVE                             R21 R9
      163 GETTABLEKS                       R22 R5 K42 ["validate"]
      165 CALL                             R21 1 1
      166 MOVE                             R22 R9
      167 GETTABLEKS                       R23 R6 K42 ["validate"]
      169 CALL                             R22 1 1
      170 GETTABLEKS                       R23 R3 K18 ["Util"]
      172 GETTABLEKS                       R23 R23 K43 ["Promise"]
      174 DUPCLOSURE                       R24 K44 [PROTO_9]
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R19
      190 RETURN                           R24 1
