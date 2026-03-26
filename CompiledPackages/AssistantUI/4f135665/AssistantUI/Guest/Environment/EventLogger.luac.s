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
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 RETURN                           R0 0

PROTO_26:
        0 RETURN                           R0 0

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getMessageGuid should not be called when FFlagAssistantPersistConversations is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["createMessageGuid should not be called when FFlagAssistantPersistConversations is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

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
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R5 R0 K11 ["Flags"]
       22 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantPersistConversations"]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K44 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logIntegrationEvent", "logExternalServerConnected", "logThreadCreated", "logThreadRenamed", "logThreadPinnedChanged", "logThreadDeleted", "logThreadDuplicated", "logThreadSwitched", "logPersistenceOperation", "getMessageGuid", "createMessageGuid"}]
       26 DUPCLOSURE                       R5 K45 [PROTO_0]
       27 SETTABLEKS                       R5 R4 K13 ["logUserMessageSent"]
       29 DUPCLOSURE                       R5 K46 [PROTO_1]
       30 SETTABLEKS                       R5 R4 K14 ["logAssistantMessageSent"]
       32 DUPCLOSURE                       R5 K47 [PROTO_2]
       33 SETTABLEKS                       R5 R4 K15 ["logApiKeyAdded"]
       35 DUPCLOSURE                       R5 K48 [PROTO_3]
       36 SETTABLEKS                       R5 R4 K16 ["logErrorEvent"]
       38 DUPCLOSURE                       R5 K49 [PROTO_4]
       39 SETTABLEKS                       R5 R4 K17 ["logExternalAPIError"]
       41 DUPCLOSURE                       R5 K50 [PROTO_5]
       42 SETTABLEKS                       R5 R4 K18 ["logThumbsUp"]
       44 DUPCLOSURE                       R5 K51 [PROTO_6]
       45 SETTABLEKS                       R5 R4 K19 ["logThumbsDown"]
       47 DUPCLOSURE                       R5 K52 [PROTO_7]
       48 SETTABLEKS                       R5 R4 K20 ["logInitialResponseLatency"]
       50 DUPCLOSURE                       R5 K53 [PROTO_8]
       51 SETTABLEKS                       R5 R4 K21 ["logMarkdownError"]
       53 DUPCLOSURE                       R5 K54 [PROTO_9]
       54 SETTABLEKS                       R5 R4 K22 ["logRetry"]
       56 DUPCLOSURE                       R5 K55 [PROTO_10]
       57 SETTABLEKS                       R5 R4 K23 ["logStopGeneration"]
       59 DUPCLOSURE                       R5 K56 [PROTO_11]
       60 SETTABLEKS                       R5 R4 K24 ["logToolStarted"]
       62 DUPCLOSURE                       R5 K57 [PROTO_12]
       63 SETTABLEKS                       R5 R4 K25 ["logToolEnded"]
       65 DUPCLOSURE                       R5 K58 [PROTO_13]
       66 SETTABLEKS                       R5 R4 K26 ["logToolConfirmationShown"]
       68 DUPCLOSURE                       R5 K59 [PROTO_14]
       69 SETTABLEKS                       R5 R4 K27 ["logToolConfirmationResult"]
       71 DUPCLOSURE                       R5 K60 [PROTO_15]
       72 SETTABLEKS                       R5 R4 K28 ["logRequestJourney"]
       74 DUPCLOSURE                       R5 K61 [PROTO_16]
       75 SETTABLEKS                       R5 R4 K29 ["logMeshGenActivated"]
       77 DUPCLOSURE                       R5 K62 [PROTO_17]
       78 SETTABLEKS                       R5 R4 K30 ["logMeshGenCompleted"]
       80 DUPCLOSURE                       R5 K63 [PROTO_18]
       81 SETTABLEKS                       R5 R4 K31 ["logMeshGenPublishedAssets"]
       83 DUPCLOSURE                       R5 K64 [PROTO_19]
       84 SETTABLEKS                       R5 R4 K32 ["logMeshGenMeshInserted"]
       86 DUPCLOSURE                       R5 K65 [PROTO_20]
       87 SETTABLEKS                       R5 R4 K33 ["logIntegrationEvent"]
       89 DUPCLOSURE                       R5 K66 [PROTO_21]
       90 SETTABLEKS                       R5 R4 K34 ["logExternalServerConnected"]
       92 DUPCLOSURE                       R5 K67 [PROTO_22]
       93 SETTABLEKS                       R5 R4 K35 ["logThreadCreated"]
       95 DUPCLOSURE                       R5 K68 [PROTO_23]
       96 SETTABLEKS                       R5 R4 K36 ["logThreadRenamed"]
       98 DUPCLOSURE                       R5 K69 [PROTO_24]
       99 SETTABLEKS                       R5 R4 K37 ["logThreadPinnedChanged"]
      101 DUPCLOSURE                       R5 K70 [PROTO_25]
      102 SETTABLEKS                       R5 R4 K38 ["logThreadDeleted"]
      104 DUPCLOSURE                       R5 K71 [PROTO_26]
      105 SETTABLEKS                       R5 R4 K39 ["logThreadDuplicated"]
      107 DUPCLOSURE                       R5 K72 [PROTO_27]
      108 SETTABLEKS                       R5 R4 K40 ["logThreadSwitched"]
      110 DUPCLOSURE                       R5 K73 [PROTO_28]
      111 SETTABLEKS                       R5 R4 K41 ["logPersistenceOperation"]
      113 DUPCLOSURE                       R5 K74 [PROTO_29]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R5 R4 K42 ["getMessageGuid"]
      118 DUPCLOSURE                       R5 K75 [PROTO_30]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R5 R4 K43 ["createMessageGuid"]
      123 RETURN                           R4 1
