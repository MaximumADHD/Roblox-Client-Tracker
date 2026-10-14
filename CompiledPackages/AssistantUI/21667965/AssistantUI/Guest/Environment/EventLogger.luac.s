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

PROTO_38:
        0 RETURN                           R0 0

PROTO_39:
        0 RETURN                           R0 0

PROTO_40:
        0 RETURN                           R0 0

PROTO_41:
        0 RETURN                           R0 0

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
        0 RETURN                           R0 0

PROTO_44:
        0 RETURN                           R0 0

PROTO_45:
        0 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 64 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 SETTABLEKS                       R4 R3 K10 ["logUserMessageSent"]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 SETTABLEKS                       R4 R3 K12 ["logAssistantMessageSent"]
       27 DUPCLOSURE                       R4 K13 [PROTO_2]
       28 SETTABLEKS                       R4 R3 K14 ["logApiKeyAdded"]
       30 DUPCLOSURE                       R4 K15 [PROTO_3]
       31 SETTABLEKS                       R4 R3 K16 ["logErrorEvent"]
       33 DUPCLOSURE                       R4 K17 [PROTO_4]
       34 SETTABLEKS                       R4 R3 K18 ["logExternalAPIError"]
       36 DUPCLOSURE                       R4 K19 [PROTO_5]
       37 SETTABLEKS                       R4 R3 K20 ["logThumbsUp"]
       39 DUPCLOSURE                       R4 K21 [PROTO_6]
       40 SETTABLEKS                       R4 R3 K22 ["logThumbsDown"]
       42 DUPCLOSURE                       R4 K23 [PROTO_7]
       43 SETTABLEKS                       R4 R3 K24 ["logInitialResponseLatency"]
       45 DUPCLOSURE                       R4 K25 [PROTO_8]
       46 SETTABLEKS                       R4 R3 K26 ["logMarkdownError"]
       48 DUPCLOSURE                       R4 K27 [PROTO_9]
       49 SETTABLEKS                       R4 R3 K28 ["logRetry"]
       51 DUPCLOSURE                       R4 K29 [PROTO_10]
       52 SETTABLEKS                       R4 R3 K30 ["logStopGeneration"]
       54 DUPCLOSURE                       R4 K31 [PROTO_11]
       55 SETTABLEKS                       R4 R3 K32 ["logToolStarted"]
       57 DUPCLOSURE                       R4 K33 [PROTO_12]
       58 SETTABLEKS                       R4 R3 K34 ["logToolEnded"]
       60 DUPCLOSURE                       R4 K35 [PROTO_13]
       61 SETTABLEKS                       R4 R3 K36 ["logFailedToolInvocation"]
       63 DUPCLOSURE                       R4 K37 [PROTO_14]
       64 SETTABLEKS                       R4 R3 K38 ["logToolConfirmationShown"]
       66 DUPCLOSURE                       R4 K39 [PROTO_15]
       67 SETTABLEKS                       R4 R3 K40 ["logToolConfirmationResult"]
       69 DUPCLOSURE                       R4 K41 [PROTO_16]
       70 SETTABLEKS                       R4 R3 K42 ["logRequestJourney"]
       72 DUPCLOSURE                       R4 K43 [PROTO_17]
       73 SETTABLEKS                       R4 R3 K44 ["logMeshGenActivated"]
       75 DUPCLOSURE                       R4 K45 [PROTO_18]
       76 SETTABLEKS                       R4 R3 K46 ["logMeshGenCompleted"]
       78 DUPCLOSURE                       R4 K47 [PROTO_19]
       79 SETTABLEKS                       R4 R3 K48 ["logMeshGenPublishedAssets"]
       81 DUPCLOSURE                       R4 K49 [PROTO_20]
       82 SETTABLEKS                       R4 R3 K50 ["logMeshGenMeshInserted"]
       84 DUPCLOSURE                       R4 K51 [PROTO_21]
       85 SETTABLEKS                       R4 R3 K52 ["logPrimitiveGen"]
       87 DUPCLOSURE                       R4 K53 [PROTO_22]
       88 SETTABLEKS                       R4 R3 K54 ["logGen3DSegmentationRefresh"]
       90 DUPCLOSURE                       R4 K55 [PROTO_23]
       91 SETTABLEKS                       R4 R3 K56 ["logGen3DInstanceDeleted"]
       93 DUPCLOSURE                       R4 K57 [PROTO_24]
       94 SETTABLEKS                       R4 R3 K58 ["logGen3DImageImpression"]
       96 DUPCLOSURE                       R4 K59 [PROTO_25]
       97 SETTABLEKS                       R4 R3 K60 ["logGen3DImageAction"]
       99 DUPCLOSURE                       R4 K61 [PROTO_26]
      100 SETTABLEKS                       R4 R3 K62 ["logGen3DAssetPublished"]
      102 DUPCLOSURE                       R4 K63 [PROTO_27]
      103 SETTABLEKS                       R4 R3 K64 ["logTextureGenCompleted"]
      105 DUPCLOSURE                       R4 K65 [PROTO_28]
      106 SETTABLEKS                       R4 R3 K66 ["logIntegrationEvent"]
      108 DUPCLOSURE                       R4 K67 [PROTO_29]
      109 SETTABLEKS                       R4 R3 K68 ["logExternalServerConnected"]
      111 DUPCLOSURE                       R4 K69 [PROTO_30]
      112 SETTABLEKS                       R4 R3 K70 ["logMCPProxyTokenRead"]
      114 DUPCLOSURE                       R4 K71 [PROTO_31]
      115 SETTABLEKS                       R4 R3 K72 ["logMCPProxyAuthRejected"]
      117 DUPCLOSURE                       R4 K73 [PROTO_32]
      118 SETTABLEKS                       R4 R3 K74 ["logQuickSetupToggled"]
      120 DUPCLOSURE                       R4 K75 [PROTO_33]
      121 SETTABLEKS                       R4 R3 K76 ["logQuestionAnswerCompleted"]
      123 DUPCLOSURE                       R4 K77 [PROTO_34]
      124 SETTABLEKS                       R4 R3 K78 ["logPlanDecision"]
      126 DUPCLOSURE                       R4 K79 [PROTO_35]
      127 SETTABLEKS                       R4 R3 K80 ["logThreadCreated"]
      129 DUPCLOSURE                       R4 K81 [PROTO_36]
      130 SETTABLEKS                       R4 R3 K82 ["logThreadRenamed"]
      132 DUPCLOSURE                       R4 K83 [PROTO_37]
      133 SETTABLEKS                       R4 R3 K84 ["logThreadPinnedChanged"]
      135 DUPCLOSURE                       R4 K85 [PROTO_38]
      136 SETTABLEKS                       R4 R3 K86 ["logThreadDeleted"]
      138 DUPCLOSURE                       R4 K87 [PROTO_39]
      139 SETTABLEKS                       R4 R3 K88 ["logThreadDuplicated"]
      141 DUPCLOSURE                       R4 K89 [PROTO_40]
      142 SETTABLEKS                       R4 R3 K90 ["logThreadSwitched"]
      144 DUPCLOSURE                       R4 K91 [PROTO_41]
      145 SETTABLEKS                       R4 R3 K92 ["logPersistenceOperation"]
      147 DUPCLOSURE                       R4 K93 [PROTO_42]
      148 SETTABLEKS                       R4 R3 K94 ["logCompactionSuccess"]
      150 DUPCLOSURE                       R4 K95 [PROTO_43]
      151 SETTABLEKS                       R4 R3 K96 ["logCompactionFallback"]
      153 DUPCLOSURE                       R4 K97 [PROTO_44]
      154 SETTABLEKS                       R4 R3 K98 ["logUserSkillEvent"]
      156 DUPCLOSURE                       R4 K99 [PROTO_45]
      157 SETTABLEKS                       R4 R3 K100 ["logThinkingBlock"]
      159 RETURN                           R3 1
