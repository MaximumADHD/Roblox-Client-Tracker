PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Types"]
       17 CALL                             R2 1 1
       18 DUPTABLE                         R3 K34 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logIntegrationEvent", "getMessageGuid", "createMessageGuid"}]
       19 DUPCLOSURE                       R4 K35 [PROTO_0]
       20 SETTABLEKS                       R4 R3 K11 ["logUserMessageSent"]
       22 DUPCLOSURE                       R4 K36 [PROTO_1]
       23 SETTABLEKS                       R4 R3 K12 ["logAssistantMessageSent"]
       25 DUPCLOSURE                       R4 K37 [PROTO_2]
       26 SETTABLEKS                       R4 R3 K13 ["logApiKeyAdded"]
       28 DUPCLOSURE                       R4 K38 [PROTO_3]
       29 SETTABLEKS                       R4 R3 K14 ["logErrorEvent"]
       31 DUPCLOSURE                       R4 K39 [PROTO_4]
       32 SETTABLEKS                       R4 R3 K15 ["logExternalAPIError"]
       34 DUPCLOSURE                       R4 K40 [PROTO_5]
       35 SETTABLEKS                       R4 R3 K16 ["logThumbsUp"]
       37 DUPCLOSURE                       R4 K41 [PROTO_6]
       38 SETTABLEKS                       R4 R3 K17 ["logThumbsDown"]
       40 DUPCLOSURE                       R4 K42 [PROTO_7]
       41 SETTABLEKS                       R4 R3 K18 ["logInitialResponseLatency"]
       43 DUPCLOSURE                       R4 K43 [PROTO_8]
       44 SETTABLEKS                       R4 R3 K19 ["logMarkdownError"]
       46 DUPCLOSURE                       R4 K44 [PROTO_9]
       47 SETTABLEKS                       R4 R3 K20 ["logRetry"]
       49 DUPCLOSURE                       R4 K45 [PROTO_10]
       50 SETTABLEKS                       R4 R3 K21 ["logStopGeneration"]
       52 DUPCLOSURE                       R4 K46 [PROTO_11]
       53 SETTABLEKS                       R4 R3 K22 ["logToolStarted"]
       55 DUPCLOSURE                       R4 K47 [PROTO_12]
       56 SETTABLEKS                       R4 R3 K23 ["logToolEnded"]
       58 DUPCLOSURE                       R4 K48 [PROTO_13]
       59 SETTABLEKS                       R4 R3 K24 ["logToolConfirmationShown"]
       61 DUPCLOSURE                       R4 K49 [PROTO_14]
       62 SETTABLEKS                       R4 R3 K25 ["logToolConfirmationResult"]
       64 DUPCLOSURE                       R4 K50 [PROTO_15]
       65 SETTABLEKS                       R4 R3 K26 ["logRequestJourney"]
       67 DUPCLOSURE                       R4 K51 [PROTO_16]
       68 SETTABLEKS                       R4 R3 K27 ["logMeshGenActivated"]
       70 DUPCLOSURE                       R4 K52 [PROTO_17]
       71 SETTABLEKS                       R4 R3 K28 ["logMeshGenCompleted"]
       73 DUPCLOSURE                       R4 K53 [PROTO_18]
       74 SETTABLEKS                       R4 R3 K29 ["logMeshGenPublishedAssets"]
       76 DUPCLOSURE                       R4 K54 [PROTO_19]
       77 SETTABLEKS                       R4 R3 K30 ["logMeshGenMeshInserted"]
       79 DUPCLOSURE                       R4 K55 [PROTO_20]
       80 SETTABLEKS                       R4 R3 K31 ["logIntegrationEvent"]
       82 DUPCLOSURE                       R4 K56 [PROTO_21]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R4 R3 K32 ["getMessageGuid"]
       86 DUPCLOSURE                       R4 K57 [PROTO_22]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R4 R3 K33 ["createMessageGuid"]
       90 RETURN                           R3 1
