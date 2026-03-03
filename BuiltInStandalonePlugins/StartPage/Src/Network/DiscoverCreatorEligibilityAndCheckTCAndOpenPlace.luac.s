PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["eligibilityByCreator"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+6]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K2 ["resolve"]
       14 CALL                             R2 0 -1
       15 RETURN                           R2 -1
       16 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
       18 GETTABLEN                        R2 R3 1
       19 GETTABLEKS                       R3 R2 K3 ["userIsEligible"]
       21 JUMPIF                           R3 ; [+20]
       22 GETTABLEKS                       R3 R2 K4 ["displayText"]
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETIMPORT                        R3 K7 [string.find]
       27 GETTABLEKS                       R4 R2 K4 ["displayText"]
       29 LOADK                            R5 K8 ["verified"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+3]
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 0
       34 JUMP                             ; [+2]
       35 GETUPVAL                         R3 3
       36 CALL                             R3 0 0
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K2 ["resolve"]
       40 CALL                             R3 0 -1
       41 RETURN                           R3 -1
       42 GETUPVAL                         R3 4
       43 JUMPIF                           R3 ; [+16]
       44 GETUPVAL                         R3 5
       45 GETUPVAL                         R5 6
       46 GETUPVAL                         R6 7
       47 GETUPVAL                         R8 8
       48 JUMPIFEQKB                       R8 TRUE ; [+2]
       50 LOADB                            R7 0 +1
       51 LOADB                            R7 1
       52 NAMECALL                         R3 R3 K9 ["openPlace"]
       54 CALL                             R3 4 0
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K2 ["resolve"]
       58 CALL                             R3 0 -1
       59 RETURN                           R3 -1
       60 GETUPVAL                         R4 9
       61 GETTABLEKS                       R3 R4 K10 ["composeUrl"]
       63 GETUPVAL                         R6 10
       64 GETTABLEKS                       R5 R6 K11 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
       66 GETTABLEKS                       R4 R5 K12 ["Prefix"]
       68 GETUPVAL                         R7 10
       69 GETTABLEKS                       R6 R7 K11 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
       71 GETTABLEKS                       R5 R6 K13 ["Url"]
       73 CALL                             R5 0 -1
       74 CALL                             R3 -1 1
       75 NEWTABLE                         R4 2 0
       77 LOADK                            R5 K14 ["application/json"]
       78 SETTABLEKS                       R5 R4 K15 ["Content-Type"]
       80 GETUPVAL                         R6 11
       81 FASTCALL1                        TOSTRING R6 ; [+2]
       82 GETIMPORT                        R5 K17 [tostring]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R5 R4 K18 ["robloxctx-authenticated-userid"]
       87 GETUPVAL                         R5 12
       88 MOVE                             R7 R3
       89 GETUPVAL                         R8 13
       90 DUPTABLE                         R10 K20 [{"universeId"}]
       91 GETUPVAL                         R11 7
       92 SETTABLEKS                       R11 R10 K19 ["universeId"]
       94 NAMECALL                         R8 R8 K21 ["JSONEncode"]
       96 CALL                             R8 2 1
       97 MOVE                             R9 R4
       98 NAMECALL                         R5 R5 K22 ["post"]
      100 CALL                             R5 4 1
      101 GETUPVAL                         R6 12
      102 MOVE                             R8 R5
      103 NAMECALL                         R6 R6 K23 ["parseJson"]
      105 CALL                             R6 2 -1
      106 RETURN                           R6 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K0 ["CanCollaborate"]
        9 JUMPIFNOTEQKB                    R2 TRUE ; [+16]
       11 GETTABLEKS                       R2 R1 K1 ["Error"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 2
       17 GETUPVAL                         R5 3
       18 GETUPVAL                         R7 4
       19 JUMPIFEQKB                       R7 TRUE ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 NAMECALL                         R2 R2 K2 ["openPlace"]
       25 CALL                             R2 4 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R9 R10 K0 ["new"]
        3 CALL                             R9 0 1
        4 GETTABLEKS                       R10 R9 K1 ["composeUrl"]
        6 GETUPVAL                         R13 1
        7 GETTABLEKS                       R12 R13 K2 ["MULTI_CREATOR_ELIGIBILITY"]
        9 GETTABLEKS                       R11 R12 K3 ["Prefix"]
       11 GETUPVAL                         R14 1
       12 GETTABLEKS                       R13 R14 K2 ["MULTI_CREATOR_ELIGIBILITY"]
       14 GETTABLEKS                       R12 R13 K4 ["Url"]
       16 CALL                             R12 0 -1
       17 CALL                             R10 -1 1
       18 GETUPVAL                         R11 2
       19 MOVE                             R13 R10
       20 GETUPVAL                         R14 3
       21 DUPTABLE                         R16 K8 [{"action", "userIds", "universeId"}]
       22 LOADN                            R17 1
       23 SETTABLEKS                       R17 R16 K5 ["action"]
       25 NEWTABLE                         R17 0 1
       27 MOVE                             R18 R0
       28 SETLIST                          R17 R18 1 [1]
       30 SETTABLEKS                       R17 R16 K6 ["userIds"]
       32 SETTABLEKS                       R1 R16 K7 ["universeId"]
       34 NAMECALL                         R14 R14 K9 ["JSONEncode"]
       36 CALL                             R14 2 1
       37 GETUPVAL                         R15 4
       38 NAMECALL                         R11 R11 K10 ["post"]
       40 CALL                             R11 4 1
       41 GETUPVAL                         R12 2
       42 MOVE                             R14 R11
       43 NAMECALL                         R12 R12 K11 ["parseJson"]
       45 CALL                             R12 2 1
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R9
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 NAMECALL                         R12 R12 K12 ["andThen"]
       63 CALL                             R12 2 1
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R8
       70 NAMECALL                         R12 R12 K12 ["andThen"]
       72 CALL                             R12 2 1
       73 DUPCLOSURE                       R14 K13 [PROTO_2]
       74 NAMECALL                         R12 R12 K14 ["catch"]
       76 CALL                             R12 2 0
       77 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R6 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R6 K11 ["Models"]
       30 GETTABLEKS                       R4 R5 K12 ["MultiGetCreatorEligibilityResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R7 K11 ["Models"]
       39 GETTABLEKS                       R5 R6 K13 ["CanCollaborateResponse"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Src"]
       46 GETTABLEKS                       R7 R8 K14 ["Network"]
       48 GETTABLEKS                       R6 R7 K15 ["Urls"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Src"]
       55 GETTABLEKS                       R9 R10 K16 ["Util"]
       57 GETTABLEKS                       R8 R9 K17 ["Services"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R6 R7 K18 ["Networking"]
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R10 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R10 K16 ["Util"]
       68 GETTABLEKS                       R8 R9 K19 ["createResponseValidator"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R11 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R11 K16 ["Util"]
       77 GETTABLEKS                       R9 R10 K20 ["TypedPromise"]
       79 CALL                             R8 1 1
       80 GETTABLEKS                       R10 R2 K21 ["RobloxAPI"]
       82 GETTABLEKS                       R9 R10 K22 ["Url"]
       84 GETTABLEKS                       R10 R6 K23 ["new"]
       86 DUPTABLE                         R11 K27 [{"isInternal", "loggingLevel", "retryAmount"}]
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K24 ["isInternal"]
       90 SETTABLEKS                       R1 R11 K25 ["loggingLevel"]
       92 LOADN                            R12 3
       93 SETTABLEKS                       R12 R11 K26 ["retryAmount"]
       95 CALL                             R10 1 1
       96 NEWTABLE                         R11 1 0
       98 LOADK                            R12 K28 ["application/json"]
       99 SETTABLEKS                       R12 R11 K29 ["Content-Type"]
      101 GETIMPORT                        R12 K31 [game]
      103 LOADK                            R14 K32 ["HttpService"]
      104 NAMECALL                         R12 R12 K33 ["GetService"]
      106 CALL                             R12 2 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R16 R0 K6 ["Src"]
      111 GETTABLEKS                       R15 R16 K16 ["Util"]
      113 GETTABLEKS                       R14 R15 K17 ["Services"]
      115 CALL                             R13 1 1
      116 GETTABLEKS                       R14 R13 K34 ["StartPageManager"]
      118 MOVE                             R15 R7
      119 GETTABLEKS                       R16 R3 K35 ["validate"]
      121 CALL                             R15 1 1
      122 MOVE                             R16 R7
      123 GETTABLEKS                       R17 R4 K35 ["validate"]
      125 CALL                             R16 1 1
      126 DUPCLOSURE                       R17 K36 [PROTO_3]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R16
      136 RETURN                           R17 1
