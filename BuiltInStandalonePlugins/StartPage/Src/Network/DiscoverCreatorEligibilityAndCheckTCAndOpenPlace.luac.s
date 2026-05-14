PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["eligibilityByCreator"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+10]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["resolve"]
       14 DUPTABLE                         R3 K4 [{"eligible"}]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K3 ["eligible"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
       22 GETTABLEN                        R2 R3 1
       23 GETTABLEKS                       R3 R2 K5 ["userIsEligible"]
       25 JUMPIF                           R3 ; [+24]
       26 GETTABLEKS                       R3 R2 K6 ["displayText"]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETIMPORT                        R3 K9 [string.find]
       31 GETTABLEKS                       R4 R2 K6 ["displayText"]
       33 LOADK                            R5 K10 ["verified"]
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R3 ; [+3]
       36 GETUPVAL                         R3 2
       37 CALL                             R3 0 0
       38 JUMP                             ; [+2]
       39 GETUPVAL                         R3 3
       40 CALL                             R3 0 0
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K2 ["resolve"]
       44 DUPTABLE                         R4 K4 [{"eligible"}]
       45 LOADB                            R5 0
       46 SETTABLEKS                       R5 R4 K3 ["eligible"]
       48 CALL                             R3 1 -1
       49 RETURN                           R3 -1
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K2 ["resolve"]
       53 DUPTABLE                         R4 K4 [{"eligible"}]
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R4 K3 ["eligible"]
       57 CALL                             R3 1 -1
       58 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 DUPTABLE                         R1 K2 [{"eligible"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["eligible"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

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
        3 DUPTABLE                         R1 K2 [{"shouldBlock"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["shouldBlock"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R1 R0 K0 ["eligible"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 JUMPIF                           R1 ; [+9]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["resolve"]
       11 DUPTABLE                         R2 K3 [{"shouldBlock"}]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K2 ["shouldBlock"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 JUMPIFNOTEQ                      R2 R3 ; [+7]
       21 NEWTABLE                         R1 0 1
       23 GETUPVAL                         R2 2
       24 SETLIST                          R1 R2 1 [1]
       26 JUMP                             ; [+6]
       27 NEWTABLE                         R1 0 2
       29 GETUPVAL                         R2 2
       30 GETUPVAL                         R3 3
       31 SETLIST                          R1 R2 2 [1]
       33 NEWTABLE                         R2 0 0
       35 GETIMPORT                        R3 K5 [ipairs]
       37 MOVE                             R4 R1
       38 CALL                             R3 1 3
       39 FORGPREP_INEXT                   R3
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K6 ["composeUrl"]
       43 GETUPVAL                         R9 5
       44 GETTABLEKS                       R9 R9 K7 ["PLACE_SAFETY_STATUS_URL"]
       46 GETTABLEKS                       R9 R9 K8 ["Prefix"]
       48 GETUPVAL                         R10 5
       49 GETTABLEKS                       R10 R10 K7 ["PLACE_SAFETY_STATUS_URL"]
       51 GETTABLEKS                       R10 R10 K9 ["Url"]
       53 MOVE                             R11 R7
       54 CALL                             R10 1 -1
       55 CALL                             R8 -1 1
       56 GETUPVAL                         R9 6
       57 GETUPVAL                         R11 6
       58 MOVE                             R13 R8
       59 GETUPVAL                         R14 7
       60 NAMECALL                         R11 R11 K10 ["get"]
       62 CALL                             R11 3 -1
       63 NAMECALL                         R9 R9 K11 ["parseJson"]
       65 CALL                             R9 -1 1
       66 DUPCLOSURE                       R11 K12 [PROTO_2]
       67 CAPTURE                          UPVAL U8
       68 NAMECALL                         R9 R9 K13 ["andThen"]
       70 CALL                             R9 2 1
       71 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       73 MOVE                             R11 R2
       74 MOVE                             R12 R9
       75 GETIMPORT                        R10 K16 [table.insert]
       77 CALL                             R10 2 0
       78 FORGLOOP                         R3 2 [inext] ; [-39]
       80 GETUPVAL                         R3 9
       81 GETTABLEKS                       R3 R3 K17 ["all"]
       83 MOVE                             R4 R2
       84 CALL                             R3 1 1
       85 DUPCLOSURE                       R5 K18 [PROTO_3]
       86 NAMECALL                         R3 R3 K13 ["andThen"]
       88 CALL                             R3 2 1
       89 DUPCLOSURE                       R5 K19 [PROTO_4]
       90 CAPTURE                          UPVAL U1
       91 NAMECALL                         R3 R3 K20 ["catch"]
       93 CALL                             R3 2 -1
       94 RETURN                           R3 -1

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
       13 JUMPIFNOT                        R2 ; [+15]
       14 GETTABLEKS                       R2 R1 K1 ["Error"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["None"]
       19 JUMPIFEQ                         R2 R3 ; [+9]
       21 GETUPVAL                         R2 2
       22 MOVE                             R3 R1
       23 GETUPVAL                         R4 3
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R6 5
       26 GETUPVAL                         R7 6
       27 CALL                             R2 5 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 7
       30 GETUPVAL                         R4 8
       31 GETUPVAL                         R5 3
       32 GETUPVAL                         R7 9
       33 JUMPIFEQKB                       R7 TRUE ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 NAMECALL                         R2 R2 K3 ["openPlace"]
       39 CALL                             R2 4 0
       40 RETURN                           R0 0

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
       28 DUPTABLE                         R18 K10 [{"action", "userIds", "universeId"}]
       29 LOADN                            R19 1
       30 SETTABLEKS                       R19 R18 K7 ["action"]
       32 NEWTABLE                         R19 0 1
       34 MOVE                             R20 R0
       35 SETLIST                          R19 R20 1 [1]
       37 SETTABLEKS                       R19 R18 K8 ["userIds"]
       39 SETTABLEKS                       R1 R18 K9 ["universeId"]
       41 NAMECALL                         R16 R16 K11 ["JSONEncode"]
       43 CALL                             R16 2 1
       44 GETUPVAL                         R17 6
       45 NAMECALL                         R13 R13 K12 ["post"]
       47 CALL                             R13 4 1
       48 GETUPVAL                         R14 4
       49 MOVE                             R16 R13
       50 NAMECALL                         R14 R14 K13 ["parseJson"]
       52 CALL                             R14 2 1
       53 NEWCLOSURE                       R16 P0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 NAMECALL                         R14 R14 K14 ["andThen"]
       60 CALL                             R14 2 1
       61 DUPCLOSURE                       R16 K15 [PROTO_1]
       62 CAPTURE                          UPVAL U8
       63 NAMECALL                         R14 R14 K16 ["catch"]
       65 CALL                             R14 2 1
       66 NEWCLOSURE                       R17 P2
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R11
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U10
       77 NAMECALL                         R15 R14 K14 ["andThen"]
       79 CALL                             R15 2 1
       80 NEWCLOSURE                       R17 P3
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R10
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          VAL R11
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          UPVAL U5
       95 NAMECALL                         R15 R15 K14 ["andThen"]
       97 CALL                             R15 2 1
       98 NEWCLOSURE                       R17 P4
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U14
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R10
      109 NAMECALL                         R15 R15 K14 ["andThen"]
      111 CALL                             R15 2 1
      112 DUPCLOSURE                       R17 K17 [PROTO_8]
      113 NAMECALL                         R15 R15 K16 ["catch"]
      115 CALL                             R15 2 0
      116 RETURN                           R0 0

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
      124 DUPTABLE                         R15 K31 [{"isInternal", "loggingLevel", "retryAmount"}]
      125 LOADB                            R16 1
      126 SETTABLEKS                       R16 R15 K28 ["isInternal"]
      128 SETTABLEKS                       R1 R15 K29 ["loggingLevel"]
      130 LOADN                            R16 3
      131 SETTABLEKS                       R16 R15 K30 ["retryAmount"]
      133 CALL                             R14 1 1
      134 NEWTABLE                         R15 1 0
      136 LOADK                            R16 K32 ["application/json"]
      137 SETTABLEKS                       R16 R15 K33 ["Content-Type"]
      139 GETIMPORT                        R16 K35 [game]
      141 LOADK                            R18 K36 ["HttpService"]
      142 NAMECALL                         R16 R16 K37 ["GetService"]
      144 CALL                             R16 2 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K6 ["Src"]
      149 GETTABLEKS                       R18 R18 K19 ["Util"]
      151 GETTABLEKS                       R18 R18 K20 ["Services"]
      153 CALL                             R17 1 1
      154 GETTABLEKS                       R18 R17 K38 ["StartPageManager"]
      156 GETIMPORT                        R19 K5 [require]
      158 GETTABLEKS                       R20 R0 K6 ["Src"]
      160 GETTABLEKS                       R20 R20 K19 ["Util"]
      162 GETTABLEKS                       R20 R20 K39 ["showPlaceSafetyBlockedDialog"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K5 [require]
      167 GETTABLEKS                       R21 R0 K6 ["Src"]
      169 GETTABLEKS                       R21 R21 K19 ["Util"]
      171 GETTABLEKS                       R21 R21 K40 ["showCollabSafetyGateDialogAsync"]
      173 CALL                             R20 1 1
      174 MOVE                             R21 R10
      175 GETTABLEKS                       R22 R5 K41 ["validate"]
      177 CALL                             R21 1 1
      178 MOVE                             R22 R10
      179 GETTABLEKS                       R23 R6 K41 ["validate"]
      181 CALL                             R22 1 1
      182 MOVE                             R23 R10
      183 GETTABLEKS                       R24 R7 K41 ["validate"]
      185 CALL                             R23 1 1
      186 GETTABLEKS                       R24 R4 K19 ["Util"]
      188 GETTABLEKS                       R24 R24 K42 ["Promise"]
      190 DUPCLOSURE                       R25 K43 [PROTO_9]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R24
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R20
      207 RETURN                           R25 1
