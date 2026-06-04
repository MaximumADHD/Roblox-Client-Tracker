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
        0 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["createMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
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
       20 GETTABLEKS                       R4 R0 K11 ["Flags"]
       22 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantMultipleChatPersistence"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 64 0
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 SETTABLEKS                       R5 R4 K14 ["logUserMessageSent"]
       30 DUPCLOSURE                       R5 K15 [PROTO_1]
       31 SETTABLEKS                       R5 R4 K16 ["logAssistantMessageSent"]
       33 DUPCLOSURE                       R5 K17 [PROTO_2]
       34 SETTABLEKS                       R5 R4 K18 ["logApiKeyAdded"]
       36 DUPCLOSURE                       R5 K19 [PROTO_3]
       37 SETTABLEKS                       R5 R4 K20 ["logErrorEvent"]
       39 DUPCLOSURE                       R5 K21 [PROTO_4]
       40 SETTABLEKS                       R5 R4 K22 ["logExternalAPIError"]
       42 DUPCLOSURE                       R5 K23 [PROTO_5]
       43 SETTABLEKS                       R5 R4 K24 ["logThumbsUp"]
       45 DUPCLOSURE                       R5 K25 [PROTO_6]
       46 SETTABLEKS                       R5 R4 K26 ["logThumbsDown"]
       48 DUPCLOSURE                       R5 K27 [PROTO_7]
       49 SETTABLEKS                       R5 R4 K28 ["logInitialResponseLatency"]
       51 DUPCLOSURE                       R5 K29 [PROTO_8]
       52 SETTABLEKS                       R5 R4 K30 ["logMarkdownError"]
       54 DUPCLOSURE                       R5 K31 [PROTO_9]
       55 SETTABLEKS                       R5 R4 K32 ["logRetry"]
       57 DUPCLOSURE                       R5 K33 [PROTO_10]
       58 SETTABLEKS                       R5 R4 K34 ["logStopGeneration"]
       60 DUPCLOSURE                       R5 K35 [PROTO_11]
       61 SETTABLEKS                       R5 R4 K36 ["logToolStarted"]
       63 DUPCLOSURE                       R5 K37 [PROTO_12]
       64 SETTABLEKS                       R5 R4 K38 ["logToolEnded"]
       66 DUPCLOSURE                       R5 K39 [PROTO_13]
       67 SETTABLEKS                       R5 R4 K40 ["logToolConfirmationShown"]
       69 DUPCLOSURE                       R5 K41 [PROTO_14]
       70 SETTABLEKS                       R5 R4 K42 ["logToolConfirmationResult"]
       72 DUPCLOSURE                       R5 K43 [PROTO_15]
       73 SETTABLEKS                       R5 R4 K44 ["logRequestJourney"]
       75 DUPCLOSURE                       R5 K45 [PROTO_16]
       76 SETTABLEKS                       R5 R4 K46 ["logMeshGenActivated"]
       78 DUPCLOSURE                       R5 K47 [PROTO_17]
       79 SETTABLEKS                       R5 R4 K48 ["logMeshGenCompleted"]
       81 DUPCLOSURE                       R5 K49 [PROTO_18]
       82 SETTABLEKS                       R5 R4 K50 ["logMeshGenPublishedAssets"]
       84 DUPCLOSURE                       R5 K51 [PROTO_19]
       85 SETTABLEKS                       R5 R4 K52 ["logMeshGenMeshInserted"]
       87 DUPCLOSURE                       R5 K53 [PROTO_20]
       88 SETTABLEKS                       R5 R4 K54 ["logPrimitiveGen"]
       90 DUPCLOSURE                       R5 K55 [PROTO_21]
       91 SETTABLEKS                       R5 R4 K56 ["logIntegrationEvent"]
       93 DUPCLOSURE                       R5 K57 [PROTO_22]
       94 SETTABLEKS                       R5 R4 K58 ["logExternalServerConnected"]
       96 DUPCLOSURE                       R5 K59 [PROTO_23]
       97 SETTABLEKS                       R5 R4 K60 ["logQuickSetupToggled"]
       99 DUPCLOSURE                       R5 K61 [PROTO_24]
      100 SETTABLEKS                       R5 R4 K62 ["logQuestionAnswerCompleted"]
      102 DUPCLOSURE                       R5 K63 [PROTO_25]
      103 SETTABLEKS                       R5 R4 K64 ["logPlanDecision"]
      105 DUPCLOSURE                       R5 K65 [PROTO_26]
      106 SETTABLEKS                       R5 R4 K66 ["logThreadCreated"]
      108 DUPCLOSURE                       R5 K67 [PROTO_27]
      109 SETTABLEKS                       R5 R4 K68 ["logThreadRenamed"]
      111 DUPCLOSURE                       R5 K69 [PROTO_28]
      112 SETTABLEKS                       R5 R4 K70 ["logThreadPinnedChanged"]
      114 DUPCLOSURE                       R5 K71 [PROTO_29]
      115 SETTABLEKS                       R5 R4 K72 ["logThreadDeleted"]
      117 DUPCLOSURE                       R5 K73 [PROTO_30]
      118 SETTABLEKS                       R5 R4 K74 ["logThreadDuplicated"]
      120 DUPCLOSURE                       R5 K75 [PROTO_31]
      121 SETTABLEKS                       R5 R4 K76 ["logThreadSwitched"]
      123 DUPCLOSURE                       R5 K77 [PROTO_32]
      124 SETTABLEKS                       R5 R4 K78 ["logPersistenceOperation"]
      126 DUPCLOSURE                       R5 K79 [PROTO_33]
      127 SETTABLEKS                       R5 R4 K80 ["logCompactionSuccess"]
      129 DUPCLOSURE                       R5 K81 [PROTO_34]
      130 SETTABLEKS                       R5 R4 K82 ["logCompactionFallback"]
      132 DUPCLOSURE                       R5 K83 [PROTO_35]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R5 R4 K84 ["getMessageGuid"]
      137 DUPCLOSURE                       R5 K85 [PROTO_36]
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R1
      140 SETTABLEKS                       R5 R4 K86 ["createMessageGuid"]
      142 RETURN                           R4 1
