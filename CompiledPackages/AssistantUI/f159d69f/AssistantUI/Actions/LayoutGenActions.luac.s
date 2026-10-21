PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["layoutGeneration"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K8 [{"ok", "statusCode", "status", "currentStage", "scriptUrl", "errorMessage"}]
        8 GETTABLEKS                       R3 R1 K2 ["ok"]
       10 SETTABLEKS                       R3 R2 K2 ["ok"]
       12 GETTABLEKS                       R3 R1 K3 ["statusCode"]
       14 SETTABLEKS                       R3 R2 K3 ["statusCode"]
       16 GETTABLEKS                       R3 R1 K4 ["status"]
       18 SETTABLEKS                       R3 R2 K4 ["status"]
       20 GETTABLEKS                       R3 R1 K5 ["currentStage"]
       22 SETTABLEKS                       R3 R2 K5 ["currentStage"]
       24 GETTABLEKS                       R3 R1 K6 ["scriptUrl"]
       26 SETTABLEKS                       R3 R2 K6 ["scriptUrl"]
       28 GETTABLEKS                       R3 R1 K7 ["errorMessage"]
       30 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       32 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["imageGeneration"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K11 [{"ok", "statusCode", "status", "currentStage", "presignedUrl", "widthPx", "heightPx", "format", "errorMessage"}]
        8 GETTABLEKS                       R3 R1 K2 ["ok"]
       10 SETTABLEKS                       R3 R2 K2 ["ok"]
       12 GETTABLEKS                       R3 R1 K3 ["statusCode"]
       14 SETTABLEKS                       R3 R2 K3 ["statusCode"]
       16 GETTABLEKS                       R3 R1 K4 ["status"]
       18 SETTABLEKS                       R3 R2 K4 ["status"]
       20 GETTABLEKS                       R3 R1 K5 ["currentStage"]
       22 SETTABLEKS                       R3 R2 K5 ["currentStage"]
       24 GETTABLEKS                       R3 R1 K6 ["presignedUrl"]
       26 SETTABLEKS                       R3 R2 K6 ["presignedUrl"]
       28 GETTABLEKS                       R3 R1 K7 ["widthPx"]
       30 SETTABLEKS                       R3 R2 K7 ["widthPx"]
       32 GETTABLEKS                       R3 R1 K8 ["heightPx"]
       34 SETTABLEKS                       R3 R2 K8 ["heightPx"]
       36 GETTABLEKS                       R3 R1 K9 ["format"]
       38 SETTABLEKS                       R3 R2 K9 ["format"]
       40 GETTABLEKS                       R3 R1 K10 ["errorMessage"]
       42 SETTABLEKS                       R3 R2 K10 ["errorMessage"]
       44 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["http"]
        3 GETTABLEKS                       R1 R1 K1 ["requestAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K6 [{"Success", "StatusCode", "StatusMessage", "Body"}]
        8 GETTABLEKS                       R3 R1 K2 ["Success"]
       10 SETTABLEKS                       R3 R2 K2 ["Success"]
       12 GETTABLEKS                       R3 R1 K3 ["StatusCode"]
       14 SETTABLEKS                       R3 R2 K3 ["StatusCode"]
       16 GETTABLEKS                       R3 R1 K4 ["StatusMessage"]
       18 SETTABLEKS                       R3 R2 K4 ["StatusMessage"]
       20 GETTABLEKS                       R3 R1 K5 ["Body"]
       22 SETTABLEKS                       R3 R2 K5 ["Body"]
       24 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"layoutGeneration", "imageGeneration", "http", "executeLuau", "applyScriptSourceDirectly"}]
        1 DUPTABLE                         R2 K8 [{"startAsync", "getStatusAsync"}]
        2 GETTABLEKS                       R3 R0 K0 ["layoutGeneration"]
        4 GETTABLEKS                       R3 R3 K6 ["startAsync"]
        6 SETTABLEKS                       R3 R2 K6 ["startAsync"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R2 K7 ["getStatusAsync"]
       12 SETTABLEKS                       R2 R1 K0 ["layoutGeneration"]
       14 DUPTABLE                         R2 K8 [{"startAsync", "getStatusAsync"}]
       15 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
       17 GETTABLEKS                       R3 R3 K6 ["startAsync"]
       19 SETTABLEKS                       R3 R2 K6 ["startAsync"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K7 ["getStatusAsync"]
       25 SETTABLEKS                       R2 R1 K1 ["imageGeneration"]
       27 DUPTABLE                         R2 K10 [{"requestAsync"}]
       28 NEWCLOSURE                       R3 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R3 R2 K9 ["requestAsync"]
       32 SETTABLEKS                       R2 R1 K2 ["http"]
       34 GETTABLEKS                       R2 R0 K11 ["tools"]
       36 GETTABLEKS                       R2 R2 K3 ["executeLuau"]
       38 SETTABLEKS                       R2 R1 K3 ["executeLuau"]
       40 GETTABLEKS                       R2 R0 K11 ["tools"]
       42 GETTABLEKS                       R2 R2 K12 ["multiEdit"]
       44 GETTABLEKS                       R2 R2 K4 ["applyScriptSourceDirectly"]
       46 SETTABLEKS                       R2 R1 K4 ["applyScriptSourceDirectly"]
       48 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["generateTopDownMapAsync"]
        5 DUPTABLE                         R3 K5 [{"requestId", "textPrompt", "isometricImage"}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETTABLEKS                       R4 R0 K3 ["textPrompt"]
       12 SETTABLEKS                       R4 R3 K3 ["textPrompt"]
       14 GETTABLEKS                       R4 R0 K4 ["isometricImage"]
       16 SETTABLEKS                       R4 R3 K4 ["isometricImage"]
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["generateLayoutAsync"]
        5 DUPTABLE                         R3 K8 [{"requestId", "isometricImage", "topDownImage", "textPrompt", "boundingBoxCFrame", "boundingBoxSize"}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETTABLEKS                       R4 R0 K3 ["isometricImage"]
       12 SETTABLEKS                       R4 R3 K3 ["isometricImage"]
       14 GETTABLEKS                       R4 R0 K4 ["topDownImage"]
       16 SETTABLEKS                       R4 R3 K4 ["topDownImage"]
       18 GETTABLEKS                       R4 R0 K5 ["textPrompt"]
       20 SETTABLEKS                       R4 R3 K5 ["textPrompt"]
       22 GETTABLEKS                       R4 R0 K6 ["boundingBoxCFrame"]
       24 SETTABLEKS                       R4 R3 K6 ["boundingBoxCFrame"]
       26 GETTABLEKS                       R4 R0 K7 ["boundingBoxSize"]
       28 SETTABLEKS                       R4 R3 K7 ["boundingBoxSize"]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R1
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 2
       34 CALL                             R2 3 1
       35 DUPTABLE                         R3 K10 [{"layoutGenerationId"}]
       36 GETTABLEKS                       R4 R2 K9 ["layoutGenerationId"]
       38 SETTABLEKS                       R4 R3 K9 ["layoutGenerationId"]
       40 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["executeAndStoreScriptAsync"]
        5 DUPTABLE                         R3 K3 [{"requestId"}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R1
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 2
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R2 K3 [{"requestId"}]
        6 GETTABLEKS                       R3 R0 K2 ["requestId"]
        8 SETTABLEKS                       R3 R2 K2 ["requestId"]
       10 GETUPVAL                         R3 1
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["run"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["LayoutGenOps"]
        4 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        6 DUPTABLE                         R2 K3 [{"requestId"}]
        7 GETTABLEKS                       R3 R0 K2 ["requestId"]
        9 SETTABLEKS                       R3 R2 K2 ["requestId"]
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cancel"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R7 R2 K1 ["generateTopDownMap"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R7 R7 K2 ["Connect"]
       18 CALL                             R7 2 -1
       19 NAMECALL                         R5 R4 K3 ["Add"]
       21 CALL                             R5 -1 0
       22 GETTABLEKS                       R7 R2 K4 ["generateLayout"]
       24 NEWCLOSURE                       R9 P1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R7 R7 K2 ["Connect"]
       30 CALL                             R7 2 -1
       31 NAMECALL                         R5 R4 K3 ["Add"]
       33 CALL                             R5 -1 0
       34 GETTABLEKS                       R7 R2 K5 ["executeAndStoreScript"]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R7 R7 K2 ["Connect"]
       41 CALL                             R7 2 -1
       42 NAMECALL                         R5 R4 K3 ["Add"]
       44 CALL                             R5 -1 0
       45 GETTABLEKS                       R7 R2 K6 ["cancelGeneration"]
       47 NEWCLOSURE                       R9 P3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 NAMECALL                         R7 R7 K2 ["Connect"]
       53 CALL                             R7 2 -1
       54 NAMECALL                         R5 R4 K3 ["Add"]
       56 CALL                             R5 -1 0
       57 GETTABLEKS                       R5 R1 K7 ["Destroying"]
       59 NEWCLOSURE                       R7 P4
       60 CAPTURE                          VAL R4
       61 NAMECALL                         R5 R5 K8 ["Once"]
       63 CALL                             R5 2 0
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Gen3dCore"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Bridges"]
       35 GETTABLEKS                       R7 R7 K13 ["createLayoutGenBridge"]
       37 GETTABLEKS                       R7 R7 K14 ["LayoutGenBridgeTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Remotes"]
       44 GETTABLEKS                       R8 R8 K16 ["LayoutGenRemotes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K17 ["Util"]
       51 GETTABLEKS                       R9 R9 K18 ["createCancellableHandlers"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R4 K19 ["createGenerationSessions"]
       56 CALL                             R9 0 1
       57 DUPCLOSURE                       R10 K20 [PROTO_3]
       58 DUPCLOSURE                       R11 K21 [PROTO_4]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R10
       61 DUPCLOSURE                       R12 K22 [PROTO_5]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R9
       65 DUPCLOSURE                       R13 K23 [PROTO_6]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R14 K24 [PROTO_7]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R9
       72 DUPTABLE                         R15 K29 [{"generateTopDownMapAsync", "generateLayoutAsync", "executeAndStoreScriptAsync", "cancelGenerationAsync"}]
       73 DUPCLOSURE                       R16 K30 [PROTO_8]
       74 CAPTURE                          VAL R11
       75 SETTABLEKS                       R16 R15 K25 ["generateTopDownMapAsync"]
       77 DUPCLOSURE                       R16 K31 [PROTO_9]
       78 CAPTURE                          VAL R12
       79 SETTABLEKS                       R16 R15 K26 ["generateLayoutAsync"]
       81 DUPCLOSURE                       R16 K32 [PROTO_10]
       82 CAPTURE                          VAL R13
       83 SETTABLEKS                       R16 R15 K27 ["executeAndStoreScriptAsync"]
       85 DUPCLOSURE                       R16 K33 [PROTO_11]
       86 CAPTURE                          VAL R14
       87 SETTABLEKS                       R16 R15 K28 ["cancelGenerationAsync"]
       89 DUPCLOSURE                       R16 K34 [PROTO_19]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R9
       98 DUPTABLE                         R17 K37 [{"bridge", "connectRemotes"}]
       99 SETTABLEKS                       R15 R17 K35 ["bridge"]
      101 SETTABLEKS                       R16 R17 K36 ["connectRemotes"]
      103 RETURN                           R17 1
