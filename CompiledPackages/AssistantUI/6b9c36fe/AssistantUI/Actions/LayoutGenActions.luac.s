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
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["environment"]
        4 DUPTABLE                         R2 K7 [{"layoutGeneration", "imageGeneration", "http", "executeLuau", "applyScriptSourceDirectly"}]
        5 DUPTABLE                         R3 K10 [{"startAsync", "getStatusAsync"}]
        6 GETTABLEKS                       R4 R1 K2 ["layoutGeneration"]
        8 GETTABLEKS                       R4 R4 K8 ["startAsync"]
       10 SETTABLEKS                       R4 R3 K8 ["startAsync"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R4 R3 K9 ["getStatusAsync"]
       16 SETTABLEKS                       R3 R2 K2 ["layoutGeneration"]
       18 DUPTABLE                         R3 K10 [{"startAsync", "getStatusAsync"}]
       19 GETTABLEKS                       R4 R1 K3 ["imageGeneration"]
       21 GETTABLEKS                       R4 R4 K8 ["startAsync"]
       23 SETTABLEKS                       R4 R3 K8 ["startAsync"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K9 ["getStatusAsync"]
       29 SETTABLEKS                       R3 R2 K3 ["imageGeneration"]
       31 DUPTABLE                         R3 K12 [{"requestAsync"}]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K11 ["requestAsync"]
       36 SETTABLEKS                       R3 R2 K4 ["http"]
       38 GETTABLEKS                       R3 R1 K13 ["tools"]
       40 GETTABLEKS                       R3 R3 K5 ["executeLuau"]
       42 SETTABLEKS                       R3 R2 K5 ["executeLuau"]
       44 GETTABLEKS                       R3 R1 K13 ["tools"]
       46 GETTABLEKS                       R3 R3 K14 ["multiEdit"]
       48 GETTABLEKS                       R3 R3 K6 ["applyScriptSourceDirectly"]
       50 SETTABLEKS                       R3 R2 K6 ["applyScriptSourceDirectly"]
       52 RETURN                           R2 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R3 K3 [{"requestId"}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bridges"]
       18 GETTABLEKS                       R3 R3 K9 ["createLayoutGenBridge"]
       20 GETTABLEKS                       R3 R3 K10 ["LayoutGenBridgeTypes"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["createGenerationSessions"]
       25 CALL                             R3 0 1
       26 DUPCLOSURE                       R4 K12 [PROTO_3]
       27 DUPCLOSURE                       R5 K13 [PROTO_4]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 DUPCLOSURE                       R6 K14 [PROTO_5]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R7 K15 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R8 K16 [PROTO_7]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 DUPTABLE                         R9 K21 [{"generateTopDownMapAsync", "generateLayoutAsync", "executeAndStoreScriptAsync", "cancelGenerationAsync"}]
       42 SETTABLEKS                       R5 R9 K17 ["generateTopDownMapAsync"]
       44 SETTABLEKS                       R6 R9 K18 ["generateLayoutAsync"]
       46 SETTABLEKS                       R7 R9 K19 ["executeAndStoreScriptAsync"]
       48 SETTABLEKS                       R8 R9 K20 ["cancelGenerationAsync"]
       50 DUPTABLE                         R10 K23 [{"bridge"}]
       51 SETTABLEKS                       R9 R10 K22 ["bridge"]
       53 RETURN                           R10 1
