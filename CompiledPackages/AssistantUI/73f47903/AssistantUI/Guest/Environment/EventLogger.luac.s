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
        0 RETURN                           R0 0

PROTO_36:
        0 RETURN                           R0 0

PROTO_37:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 64 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K8 ["logUserMessageSent"]
       17 DUPCLOSURE                       R3 K9 [PROTO_1]
       18 SETTABLEKS                       R3 R2 K10 ["logAssistantMessageSent"]
       20 DUPCLOSURE                       R3 K11 [PROTO_2]
       21 SETTABLEKS                       R3 R2 K12 ["logApiKeyAdded"]
       23 DUPCLOSURE                       R3 K13 [PROTO_3]
       24 SETTABLEKS                       R3 R2 K14 ["logErrorEvent"]
       26 DUPCLOSURE                       R3 K15 [PROTO_4]
       27 SETTABLEKS                       R3 R2 K16 ["logExternalAPIError"]
       29 DUPCLOSURE                       R3 K17 [PROTO_5]
       30 SETTABLEKS                       R3 R2 K18 ["logThumbsUp"]
       32 DUPCLOSURE                       R3 K19 [PROTO_6]
       33 SETTABLEKS                       R3 R2 K20 ["logThumbsDown"]
       35 DUPCLOSURE                       R3 K21 [PROTO_7]
       36 SETTABLEKS                       R3 R2 K22 ["logInitialResponseLatency"]
       38 DUPCLOSURE                       R3 K23 [PROTO_8]
       39 SETTABLEKS                       R3 R2 K24 ["logMarkdownError"]
       41 DUPCLOSURE                       R3 K25 [PROTO_9]
       42 SETTABLEKS                       R3 R2 K26 ["logRetry"]
       44 DUPCLOSURE                       R3 K27 [PROTO_10]
       45 SETTABLEKS                       R3 R2 K28 ["logStopGeneration"]
       47 DUPCLOSURE                       R3 K29 [PROTO_11]
       48 SETTABLEKS                       R3 R2 K30 ["logToolStarted"]
       50 DUPCLOSURE                       R3 K31 [PROTO_12]
       51 SETTABLEKS                       R3 R2 K32 ["logToolEnded"]
       53 DUPCLOSURE                       R3 K33 [PROTO_13]
       54 SETTABLEKS                       R3 R2 K34 ["logToolConfirmationShown"]
       56 DUPCLOSURE                       R3 K35 [PROTO_14]
       57 SETTABLEKS                       R3 R2 K36 ["logToolConfirmationResult"]
       59 DUPCLOSURE                       R3 K37 [PROTO_15]
       60 SETTABLEKS                       R3 R2 K38 ["logRequestJourney"]
       62 DUPCLOSURE                       R3 K39 [PROTO_16]
       63 SETTABLEKS                       R3 R2 K40 ["logMeshGenActivated"]
       65 DUPCLOSURE                       R3 K41 [PROTO_17]
       66 SETTABLEKS                       R3 R2 K42 ["logMeshGenCompleted"]
       68 DUPCLOSURE                       R3 K43 [PROTO_18]
       69 SETTABLEKS                       R3 R2 K44 ["logMeshGenPublishedAssets"]
       71 DUPCLOSURE                       R3 K45 [PROTO_19]
       72 SETTABLEKS                       R3 R2 K46 ["logMeshGenMeshInserted"]
       74 DUPCLOSURE                       R3 K47 [PROTO_20]
       75 SETTABLEKS                       R3 R2 K48 ["logPrimitiveGen"]
       77 DUPCLOSURE                       R3 K49 [PROTO_21]
       78 SETTABLEKS                       R3 R2 K50 ["logGen3DSegmentationRefresh"]
       80 DUPCLOSURE                       R3 K51 [PROTO_22]
       81 SETTABLEKS                       R3 R2 K52 ["logGen3DInstanceDeleted"]
       83 DUPCLOSURE                       R3 K53 [PROTO_23]
       84 SETTABLEKS                       R3 R2 K54 ["logIntegrationEvent"]
       86 DUPCLOSURE                       R3 K55 [PROTO_24]
       87 SETTABLEKS                       R3 R2 K56 ["logExternalServerConnected"]
       89 DUPCLOSURE                       R3 K57 [PROTO_25]
       90 SETTABLEKS                       R3 R2 K58 ["logQuickSetupToggled"]
       92 DUPCLOSURE                       R3 K59 [PROTO_26]
       93 SETTABLEKS                       R3 R2 K60 ["logQuestionAnswerCompleted"]
       95 DUPCLOSURE                       R3 K61 [PROTO_27]
       96 SETTABLEKS                       R3 R2 K62 ["logPlanDecision"]
       98 DUPCLOSURE                       R3 K63 [PROTO_28]
       99 SETTABLEKS                       R3 R2 K64 ["logThreadCreated"]
      101 DUPCLOSURE                       R3 K65 [PROTO_29]
      102 SETTABLEKS                       R3 R2 K66 ["logThreadRenamed"]
      104 DUPCLOSURE                       R3 K67 [PROTO_30]
      105 SETTABLEKS                       R3 R2 K68 ["logThreadPinnedChanged"]
      107 DUPCLOSURE                       R3 K69 [PROTO_31]
      108 SETTABLEKS                       R3 R2 K70 ["logThreadDeleted"]
      110 DUPCLOSURE                       R3 K71 [PROTO_32]
      111 SETTABLEKS                       R3 R2 K72 ["logThreadDuplicated"]
      113 DUPCLOSURE                       R3 K73 [PROTO_33]
      114 SETTABLEKS                       R3 R2 K74 ["logThreadSwitched"]
      116 DUPCLOSURE                       R3 K75 [PROTO_34]
      117 SETTABLEKS                       R3 R2 K76 ["logPersistenceOperation"]
      119 DUPCLOSURE                       R3 K77 [PROTO_35]
      120 SETTABLEKS                       R3 R2 K78 ["logCompactionSuccess"]
      122 DUPCLOSURE                       R3 K79 [PROTO_36]
      123 SETTABLEKS                       R3 R2 K80 ["logCompactionFallback"]
      125 DUPCLOSURE                       R3 K81 [PROTO_37]
      126 SETTABLEKS                       R3 R2 K82 ["logUserSkillEvent"]
      128 RETURN                           R2 1
