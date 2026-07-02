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
        6 GETUPVAL                         R1 0
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["resolve"]
       11 DUPTABLE                         R2 K4 [{["shouldBlock"] = False}]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 JUMPIFNOTEQ                      R2 R3 ; [+7]
       18 NEWTABLE                         R1 0 1
       20 GETUPVAL                         R2 2
       21 SETLIST                          R1 R2 1 [1]
       23 JUMP                             ; [+6]
       24 NEWTABLE                         R1 0 2
       26 GETUPVAL                         R2 2
       27 GETUPVAL                         R3 3
       28 SETLIST                          R1 R2 2 [1]
       30 NEWTABLE                         R2 0 0
       32 GETIMPORT                        R3 K6 [ipairs]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP_INEXT                   R3
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R8 R8 K7 ["composeUrl"]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K8 ["PLACE_SAFETY_STATUS_URL"]
       43 GETTABLEKS                       R9 R9 K9 ["Prefix"]
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R10 R10 K8 ["PLACE_SAFETY_STATUS_URL"]
       48 GETTABLEKS                       R10 R10 K10 ["Url"]
       50 MOVE                             R11 R7
       51 CALL                             R10 1 -1
       52 CALL                             R8 -1 1
       53 GETUPVAL                         R9 6
       54 GETUPVAL                         R11 6
       55 MOVE                             R13 R8
       56 GETUPVAL                         R14 7
       57 NAMECALL                         R11 R11 K11 ["get"]
       59 CALL                             R11 3 -1
       60 NAMECALL                         R9 R9 K12 ["parseJson"]
       62 CALL                             R9 -1 1
       63 DUPCLOSURE                       R11 K13 [PROTO_2]
       64 CAPTURE                          UPVAL U8
       65 NAMECALL                         R9 R9 K14 ["andThen"]
       67 CALL                             R9 2 1
       68 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       70 MOVE                             R11 R2
       71 MOVE                             R12 R9
       72 GETIMPORT                        R10 K17 [table.insert]
       74 CALL                             R10 2 0
       75 FORGLOOP                         R3 2 [inext] ; [-39]
       77 GETUPVAL                         R3 9
       78 GETTABLEKS                       R3 R3 K18 ["all"]
       80 MOVE                             R4 R2
       81 CALL                             R3 1 1
       82 DUPCLOSURE                       R5 K19 [PROTO_3]
       83 NAMECALL                         R3 R3 K14 ["andThen"]
       85 CALL                             R3 2 1
       86 DUPCLOSURE                       R5 K20 [PROTO_4]
       87 CAPTURE                          UPVAL U1
       88 NAMECALL                         R3 R3 K21 ["catch"]
       90 CALL                             R3 2 -1
       91 RETURN                           R3 -1

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
        2 LOADK                            R3 K2 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R12 0
        1 JUMPIF                           R12 ; [+1]
        2 GETUPVAL                         R12 1
        3 FASTCALL1                        ASSERT R12 ; [+2]
        4 GETIMPORT                        R11 K1 [assert]
        6 CALL                             R11 1 0
        7 GETUPVAL                         R11 2
        8 GETTABLEKS                       R11 R11 K2 ["new"]
       10 CALL                             R11 0 1
       11 GETTABLEKS                       R12 R11 K3 ["composeUrl"]
       13 GETUPVAL                         R13 3
       14 GETTABLEKS                       R13 R13 K4 ["MULTI_CREATOR_ELIGIBILITY"]
       16 GETTABLEKS                       R13 R13 K5 ["Prefix"]
       18 GETUPVAL                         R14 3
       19 GETTABLEKS                       R14 R14 K4 ["MULTI_CREATOR_ELIGIBILITY"]
       21 GETTABLEKS                       R14 R14 K6 ["Url"]
       23 CALL                             R14 0 -1
       24 CALL                             R12 -1 1
       25 GETUPVAL                         R13 4
       26 MOVE                             R15 R12
       27 GETUPVAL                         R16 5
       28 DUPTABLE                         R18 K11 [{["action"] = 1, ["userIds"], ["universeId"]}]
       29 NEWTABLE                         R19 0 1
       31 MOVE                             R20 R0
       32 SETLIST                          R19 R20 1 [1]
       34 SETTABLEKS                       R19 R18 K9 ["userIds"]
       36 SETTABLEKS                       R1 R18 K10 ["universeId"]
       38 NAMECALL                         R16 R16 K12 ["JSONEncode"]
       40 CALL                             R16 2 1
       41 GETUPVAL                         R17 6
       42 NAMECALL                         R13 R13 K13 ["post"]
       44 CALL                             R13 4 1
       45 GETUPVAL                         R14 4
       46 MOVE                             R16 R13
       47 NAMECALL                         R14 R14 K14 ["parseJson"]
       49 CALL                             R14 2 1
       50 NEWCLOSURE                       R16 P0
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 NAMECALL                         R14 R14 K15 ["andThen"]
       57 CALL                             R14 2 1
       58 DUPCLOSURE                       R16 K16 [PROTO_1]
       59 CAPTURE                          UPVAL U8
       60 NAMECALL                         R14 R14 K17 ["catch"]
       62 CALL                             R14 2 1
       63 NEWCLOSURE                       R17 P2
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R11
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U10
       74 NAMECALL                         R15 R14 K15 ["andThen"]
       76 CALL                             R15 2 1
       77 NEWCLOSURE                       R17 P3
       78 CAPTURE                          UPVAL U11
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 CAPTURE                          UPVAL U12
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R10
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          VAL R11
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U5
       92 NAMECALL                         R15 R15 K15 ["andThen"]
       94 CALL                             R15 2 1
       95 NEWCLOSURE                       R17 P4
       96 CAPTURE                          UPVAL U13
       97 CAPTURE                          UPVAL U14
       98 CAPTURE                          UPVAL U15
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R10
      106 NAMECALL                         R15 R15 K15 ["andThen"]
      108 CALL                             R15 2 1
      109 DUPCLOSURE                       R17 K18 [PROTO_8]
      110 NAMECALL                         R15 R15 K17 ["catch"]
      112 CALL                             R15 2 0
      113 RETURN                           R0 0

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
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R4 K10 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R5 R0 K11 ["Packages"]
       41 GETTABLEKS                       R5 R5 K12 ["Framework"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K5 [require]
       46 GETTABLEKS                       R6 R0 K6 ["Src"]
       48 GETTABLEKS                       R6 R6 K13 ["Models"]
       50 GETTABLEKS                       R6 R6 K14 ["MultiGetCreatorEligibilityResponse"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K13 ["Models"]
       59 GETTABLEKS                       R7 R7 K15 ["CanCollaborateResponse"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K6 ["Src"]
       66 GETTABLEKS                       R8 R8 K13 ["Models"]
       68 GETTABLEKS                       R8 R8 K16 ["PlaceSafetyStatusResponse"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R9 R0 K6 ["Src"]
       75 GETTABLEKS                       R9 R9 K17 ["Network"]
       77 GETTABLEKS                       R9 R9 K18 ["Urls"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K5 [require]
       82 GETTABLEKS                       R10 R0 K6 ["Src"]
       84 GETTABLEKS                       R10 R10 K19 ["Util"]
       86 GETTABLEKS                       R10 R10 K20 ["Services"]
       88 CALL                             R9 1 1
       89 GETTABLEKS                       R9 R9 K21 ["Networking"]
       91 GETIMPORT                        R10 K5 [require]
       93 GETTABLEKS                       R11 R0 K6 ["Src"]
       95 GETTABLEKS                       R11 R11 K19 ["Util"]
       97 GETTABLEKS                       R11 R11 K22 ["createResponseValidator"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K5 [require]
      102 GETTABLEKS                       R12 R0 K6 ["Src"]
      104 GETTABLEKS                       R12 R12 K19 ["Util"]
      106 GETTABLEKS                       R12 R12 K23 ["TypedPromise"]
      108 CALL                             R11 1 1
      109 GETIMPORT                        R12 K5 [require]
      111 GETTABLEKS                       R13 R0 K6 ["Src"]
      113 GETTABLEKS                       R13 R13 K13 ["Models"]
      115 GETTABLEKS                       R13 R13 K24 ["CanCollaborateError"]
      117 CALL                             R12 1 1
      118 GETTABLEKS                       R13 R4 K25 ["RobloxAPI"]
      120 GETTABLEKS                       R13 R13 K26 ["Url"]
      122 GETTABLEKS                       R14 R9 K27 ["new"]
      124 DUPTABLE                         R15 K33 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
      125 SETTABLEKS                       R1 R15 K30 ["loggingLevel"]
      127 CALL                             R14 1 1
      128 NEWTABLE                         R15 1 0
      130 LOADK                            R16 K34 ["application/json"]
      131 SETTABLEKS                       R16 R15 K35 ["Content-Type"]
      133 GETIMPORT                        R16 K37 [game]
      135 LOADK                            R18 K38 ["HttpService"]
      136 NAMECALL                         R16 R16 K39 ["GetService"]
      138 CALL                             R16 2 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K6 ["Src"]
      143 GETTABLEKS                       R18 R18 K19 ["Util"]
      145 GETTABLEKS                       R18 R18 K20 ["Services"]
      147 CALL                             R17 1 1
      148 GETTABLEKS                       R18 R17 K40 ["StartPageManager"]
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R20 R0 K6 ["Src"]
      154 GETTABLEKS                       R20 R20 K19 ["Util"]
      156 GETTABLEKS                       R20 R20 K41 ["showPlaceSafetyBlockedDialog"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K5 [require]
      161 GETTABLEKS                       R21 R0 K6 ["Src"]
      163 GETTABLEKS                       R21 R21 K19 ["Util"]
      165 GETTABLEKS                       R21 R21 K42 ["showCollabSafetyGateDialogAsync"]
      167 CALL                             R20 1 1
      168 MOVE                             R21 R10
      169 GETTABLEKS                       R22 R5 K43 ["validate"]
      171 CALL                             R21 1 1
      172 MOVE                             R22 R10
      173 GETTABLEKS                       R23 R6 K43 ["validate"]
      175 CALL                             R22 1 1
      176 MOVE                             R23 R10
      177 GETTABLEKS                       R24 R7 K43 ["validate"]
      179 CALL                             R23 1 1
      180 GETTABLEKS                       R24 R4 K19 ["Util"]
      182 GETTABLEKS                       R24 R24 K44 ["Promise"]
      184 DUPCLOSURE                       R25 K45 [PROTO_9]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R20
      201 RETURN                           R25 1
