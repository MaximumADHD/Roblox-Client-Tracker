PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["eligibilityByCreator"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K0 ["eligibilityByCreator"]
       14 GETTABLEN                        R2 R3 1
       15 GETTABLEKS                       R3 R2 K2 ["userIsEligible"]
       17 JUMPIF                           R3 ; [+16]
       18 GETTABLEKS                       R3 R2 K3 ["displayText"]
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETIMPORT                        R3 K6 [string.find]
       23 GETTABLEKS                       R4 R2 K3 ["displayText"]
       25 LOADK                            R5 K7 ["verified"]
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETUPVAL                         R3 1
       29 CALL                             R3 0 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 2
       32 CALL                             R3 0 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R5 4
       36 GETUPVAL                         R6 5
       37 GETUPVAL                         R8 6
       38 JUMPIFEQKB                       R8 TRUE ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 NAMECALL                         R3 R3 K8 ["openPlace"]
       44 CALL                             R3 4 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverCreatorEligibilityAndOpenPlace experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["new"]
        3 CALL                             R6 0 1
        4 GETTABLEKS                       R7 R6 K1 ["composeUrl"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R8 R8 K2 ["MULTI_CREATOR_ELIGIBILITY"]
        9 GETTABLEKS                       R8 R8 K3 ["Prefix"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K2 ["MULTI_CREATOR_ELIGIBILITY"]
       14 GETTABLEKS                       R9 R9 K4 ["Url"]
       16 CALL                             R9 0 -1
       17 CALL                             R7 -1 1
       18 GETUPVAL                         R8 2
       19 MOVE                             R10 R7
       20 GETUPVAL                         R11 3
       21 DUPTABLE                         R13 K9 [{["action"] = 1, ["userIds"], ["universeId"]}]
       22 NEWTABLE                         R14 0 1
       24 MOVE                             R15 R0
       25 SETLIST                          R14 R15 1 [1]
       27 SETTABLEKS                       R14 R13 K7 ["userIds"]
       29 SETTABLEKS                       R1 R13 K8 ["universeId"]
       31 NAMECALL                         R11 R11 K10 ["JSONEncode"]
       33 CALL                             R11 2 1
       34 GETUPVAL                         R12 4
       35 NAMECALL                         R8 R8 K11 ["post"]
       37 CALL                             R8 4 1
       38 GETUPVAL                         R9 2
       39 MOVE                             R11 R8
       40 NAMECALL                         R9 R9 K12 ["parseJson"]
       42 CALL                             R9 2 1
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 NAMECALL                         R9 R9 K13 ["andThen"]
       53 CALL                             R9 2 1
       54 DUPCLOSURE                       R11 K14 [PROTO_1]
       55 NAMECALL                         R9 R9 K15 ["catch"]
       57 CALL                             R9 2 0
       58 RETURN                           R0 0

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
       68 DUPTABLE                         R9 K27 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       69 SETTABLEKS                       R1 R9 K24 ["loggingLevel"]
       71 CALL                             R8 1 1
       72 NEWTABLE                         R9 1 0
       74 LOADK                            R10 K28 ["application/json"]
       75 SETTABLEKS                       R10 R9 K29 ["Content-Type"]
       77 GETIMPORT                        R10 K31 [game]
       79 LOADK                            R12 K32 ["HttpService"]
       80 NAMECALL                         R10 R10 K33 ["GetService"]
       82 CALL                             R10 2 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Src"]
       87 GETTABLEKS                       R12 R12 K15 ["Util"]
       89 GETTABLEKS                       R12 R12 K16 ["Services"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K34 ["StartPageManager"]
       94 MOVE                             R13 R6
       95 GETTABLEKS                       R14 R3 K35 ["validate"]
       97 CALL                             R13 1 1
       98 DUPCLOSURE                       R14 K36 [PROTO_2]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R12
      106 RETURN                           R14 1
