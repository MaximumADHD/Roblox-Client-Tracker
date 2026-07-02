PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["universeEligibilities"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R3 R1 K0 ["universeEligibilities"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 FASTCALL1                        TONUMBER R6 ; [+3]
       15 MOVE                             R9 R6
       16 GETIMPORT                        R8 K2 [tonumber]
       18 CALL                             R8 1 1
       19 JUMPIFNOT                        R8 ; [+17]
       20 DUPTABLE                         R11 K6 [{"Id", "CoreContentSelectStatus", "CoreContentReasons"}]
       21 SETTABLEKS                       R8 R11 K3 ["Id"]
       23 GETTABLEKS                       R12 R7 K7 ["selectStatus"]
       25 SETTABLEKS                       R12 R11 K4 ["CoreContentSelectStatus"]
       27 GETTABLEKS                       R12 R7 K8 ["reasons"]
       29 SETTABLEKS                       R12 R11 K5 ["CoreContentReasons"]
       31 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       33 MOVE                             R10 R2
       34 GETIMPORT                        R9 K11 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R3 2 ; [-24]
       39 LENGTH                           R3 R2
       40 LOADN                            R4 0
       41 JUMPIFNOTLT                      R4 R3 ; [+6]
       43 GETUPVAL                         R3 1
       44 MOVE                             R5 R2
       45 NAMECALL                         R3 R3 K12 ["upsertItems"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverCoreContent experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K2 [{"universeIds"}]
        5 SETTABLEKS                       R0 R1 K1 ["universeIds"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["new"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R3 R2 K4 ["composeUrl"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
       16 GETTABLEKS                       R4 R4 K6 ["Prefix"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K5 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
       21 GETTABLEKS                       R5 R5 K7 ["Url"]
       23 CALL                             R5 0 -1
       24 CALL                             R3 -1 1
       25 GETUPVAL                         R4 2
       26 MOVE                             R6 R3
       27 GETUPVAL                         R7 3
       28 MOVE                             R9 R1
       29 NAMECALL                         R7 R7 K8 ["JSONEncode"]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 4
       33 NAMECALL                         R4 R4 K9 ["post"]
       35 CALL                             R4 4 1
       36 GETUPVAL                         R5 2
       37 MOVE                             R7 R4
       38 NAMECALL                         R5 R5 K10 ["parseJson"]
       40 CALL                             R5 2 1
       41 DUPCLOSURE                       R7 K11 [PROTO_0]
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 NAMECALL                         R5 R5 K12 ["andThen"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R7 K13 [PROTO_1]
       48 NAMECALL                         R5 R5 K14 ["catch"]
       50 CALL                             R5 2 0
       51 RETURN                           R0 0

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
       30 GETTABLEKS                       R4 R4 K12 ["BatchPublishEligibilityResponse"]
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
       87 GETTABLEKS                       R12 R12 K13 ["Network"]
       89 GETTABLEKS                       R12 R12 K34 ["GameCache"]
       91 CALL                             R11 1 1
       92 MOVE                             R12 R6
       93 GETTABLEKS                       R13 R3 K35 ["validate"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K36 [PROTO_2]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R11
      104 RETURN                           R13 1
