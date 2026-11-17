PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LogEvent"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["LogCounter"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K7 [{"success", "failureReason", "model", "cameraSource"}]
        6 GETTABLEKS                       R5 R0 K3 ["success"]
        8 SETTABLEKS                       R5 R4 K3 ["success"]
       10 GETTABLEKS                       R5 R0 K4 ["failureReason"]
       12 SETTABLEKS                       R5 R4 K4 ["failureReason"]
       14 GETTABLEKS                       R5 R0 K5 ["model"]
       16 SETTABLEKS                       R5 R4 K5 ["model"]
       18 GETTABLEKS                       R5 R0 K6 ["cameraSource"]
       20 SETTABLEKS                       R5 R4 K6 ["cameraSource"]
       22 SETTABLEKS                       R4 R3 K1 ["customFields"]
       24 LOADN                            R4 1
       25 CALL                             R1 3 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K8 ["logEvent"]
       29 GETUPVAL                         R2 2
       30 DUPTABLE                         R3 K10 [{"customFields", "standardizedFields"}]
       31 DUPTABLE                         R4 K22 [{"timestampMilliseconds", "requestId", "generationId", "success", "errorMessage", "failureReason", "surface", "isManualRun", "conversationId", "model", "cameraSource", "hasPrompt", "hasHintImage", "isMultiMesh", "durationMilliseconds"}]
       32 GETIMPORT                        R5 K25 [DateTime.now]
       34 CALL                             R5 0 1
       35 GETTABLEKS                       R5 R5 K26 ["UnixTimestampMillis"]
       37 SETTABLEKS                       R5 R4 K11 ["timestampMilliseconds"]
       39 GETTABLEKS                       R5 R0 K12 ["requestId"]
       41 SETTABLEKS                       R5 R4 K12 ["requestId"]
       43 GETTABLEKS                       R5 R0 K13 ["generationId"]
       45 SETTABLEKS                       R5 R4 K13 ["generationId"]
       47 GETTABLEKS                       R5 R0 K3 ["success"]
       49 SETTABLEKS                       R5 R4 K3 ["success"]
       51 GETTABLEKS                       R5 R0 K14 ["errorMessage"]
       53 SETTABLEKS                       R5 R4 K14 ["errorMessage"]
       55 GETTABLEKS                       R5 R0 K4 ["failureReason"]
       57 SETTABLEKS                       R5 R4 K4 ["failureReason"]
       59 GETTABLEKS                       R5 R0 K15 ["surface"]
       61 SETTABLEKS                       R5 R4 K15 ["surface"]
       63 GETTABLEKS                       R5 R0 K16 ["isManualRun"]
       65 SETTABLEKS                       R5 R4 K16 ["isManualRun"]
       67 GETTABLEKS                       R5 R0 K17 ["conversationId"]
       69 SETTABLEKS                       R5 R4 K17 ["conversationId"]
       71 GETTABLEKS                       R5 R0 K5 ["model"]
       73 SETTABLEKS                       R5 R4 K5 ["model"]
       75 GETTABLEKS                       R5 R0 K6 ["cameraSource"]
       77 SETTABLEKS                       R5 R4 K6 ["cameraSource"]
       79 GETTABLEKS                       R5 R0 K18 ["hasPrompt"]
       81 SETTABLEKS                       R5 R4 K18 ["hasPrompt"]
       83 GETTABLEKS                       R5 R0 K19 ["hasHintImage"]
       85 SETTABLEKS                       R5 R4 K19 ["hasHintImage"]
       87 GETTABLEKS                       R5 R0 K20 ["isMultiMesh"]
       89 SETTABLEKS                       R5 R4 K20 ["isMultiMesh"]
       91 GETTABLEKS                       R5 R0 K21 ["durationMilliseconds"]
       93 SETTABLEKS                       R5 R4 K21 ["durationMilliseconds"]
       95 SETTABLEKS                       R4 R3 K1 ["customFields"]
       97 GETUPVAL                         R4 3
       98 SETTABLEKS                       R4 R3 K9 ["standardizedFields"]
      100 CALL                             R1 2 0
      101 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K6 [{"success", "failureReason", "requestSource"}]
        6 GETTABLEKS                       R5 R0 K3 ["success"]
        8 SETTABLEKS                       R5 R4 K3 ["success"]
       10 GETTABLEKS                       R5 R0 K4 ["failureReason"]
       12 SETTABLEKS                       R5 R4 K4 ["failureReason"]
       14 GETTABLEKS                       R5 R0 K5 ["requestSource"]
       16 SETTABLEKS                       R5 R4 K5 ["requestSource"]
       18 SETTABLEKS                       R4 R3 K1 ["customFields"]
       20 LOADN                            R4 1
       21 CALL                             R1 3 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K7 ["logEvent"]
       25 GETUPVAL                         R2 2
       26 DUPTABLE                         R3 K9 [{"customFields", "standardizedFields"}]
       27 DUPTABLE                         R4 K15 [{"timestampMilliseconds", "requestId", "jobId", "requestSource", "success", "errorMessage", "failureReason", "durationMilliseconds"}]
       28 GETIMPORT                        R5 K18 [DateTime.now]
       30 CALL                             R5 0 1
       31 GETTABLEKS                       R5 R5 K19 ["UnixTimestampMillis"]
       33 SETTABLEKS                       R5 R4 K10 ["timestampMilliseconds"]
       35 GETTABLEKS                       R5 R0 K11 ["requestId"]
       37 SETTABLEKS                       R5 R4 K11 ["requestId"]
       39 GETTABLEKS                       R5 R0 K12 ["jobId"]
       41 SETTABLEKS                       R5 R4 K12 ["jobId"]
       43 GETTABLEKS                       R5 R0 K5 ["requestSource"]
       45 SETTABLEKS                       R5 R4 K5 ["requestSource"]
       47 GETTABLEKS                       R5 R0 K3 ["success"]
       49 SETTABLEKS                       R5 R4 K3 ["success"]
       51 GETTABLEKS                       R5 R0 K13 ["errorMessage"]
       53 SETTABLEKS                       R5 R4 K13 ["errorMessage"]
       55 GETTABLEKS                       R5 R0 K4 ["failureReason"]
       57 SETTABLEKS                       R5 R4 K4 ["failureReason"]
       59 GETTABLEKS                       R5 R0 K14 ["durationMilliseconds"]
       61 SETTABLEKS                       R5 R4 K14 ["durationMilliseconds"]
       63 SETTABLEKS                       R4 R3 K1 ["customFields"]
       65 GETUPVAL                         R4 3
       66 SETTABLEKS                       R4 R3 K8 ["standardizedFields"]
       68 CALL                             R1 2 0
       69 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K2 [{"logTextureGenCompleted", "logSceneGenCompleted"}]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 SETTABLEKS                       R3 R2 K0 ["logTextureGenCompleted"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R3 R2 K1 ["logSceneGenCompleted"]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 0 4
       22 LOADK                            R4 K12 ["addPlaceId"]
       23 LOADK                            R5 K13 ["addUniverseId"]
       24 LOADK                            R6 K14 ["addPlaceInstanceId"]
       25 LOADK                            R7 K15 ["addSessionInfo"]
       26 SETLIST                          R3 R4 4 [1]
       28 GETIMPORT                        R4 K18 [table.freeze]
       30 DUPTABLE                         R5 K27 [{["eventName"] = "StudioAssistantGen3DTextureGenCompleted", ["backends"], ["description"] = "Fired once per texture generation request (success, failure, or cancel) with the model and camera source used.", ["lastUpdated"], ["throttlingPercentage"] = 10000}]
       31 NEWTABLE                         R6 0 2
       33 LOADK                            R7 K28 ["EventIngest"]
       34 LOADK                            R8 K29 ["Points"]
       35 SETLIST                          R6 R7 2 [1]
       37 SETTABLEKS                       R6 R5 K21 ["backends"]
       39 NEWTABLE                         R6 0 3
       41 LOADN                            R7 26
       42 LOADN                            R8 10
       43 LOADN                            R9 1
       44 SETLIST                          R6 R7 3 [1]
       46 SETTABLEKS                       R6 R5 K24 ["lastUpdated"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K18 [table.freeze]
       51 DUPTABLE                         R6 K32 [{["eventName"] = "StudioAssistantGen3DTextureGenCompletedCount", ["backends"], ["description"] = "Count of texture generation requests, labelled by success, failureReason, model, and cameraSource.", ["lastUpdated"]}]
       52 NEWTABLE                         R7 0 1
       54 LOADK                            R8 K33 ["RobloxTelemetryCounter"]
       55 SETLIST                          R7 R8 1 [1]
       57 SETTABLEKS                       R7 R6 K21 ["backends"]
       59 NEWTABLE                         R7 0 3
       61 LOADN                            R8 26
       62 LOADN                            R9 10
       63 LOADN                            R10 1
       64 SETLIST                          R7 R8 3 [1]
       66 SETTABLEKS                       R7 R6 K24 ["lastUpdated"]
       68 CALL                             R5 1 1
       69 GETIMPORT                        R6 K18 [table.freeze]
       71 DUPTABLE                         R7 K36 [{["eventName"] = "StudioAssistantGen3DSceneGenCompleted", ["backends"], ["description"] = "Fired once per scene generation request (success, failure, or cancel). requestId equals the tool call id for Assistant and MCP requests, jobId is the gateway job id, and requestSource is Assistant, MCP, or Gen3dPanel.", ["lastUpdated"], ["throttlingPercentage"] = 10000}]
       72 NEWTABLE                         R8 0 2
       74 LOADK                            R9 K28 ["EventIngest"]
       75 LOADK                            R10 K29 ["Points"]
       76 SETLIST                          R8 R9 2 [1]
       78 SETTABLEKS                       R8 R7 K21 ["backends"]
       80 NEWTABLE                         R8 0 3
       82 LOADN                            R9 26
       83 LOADN                            R10 11
       84 LOADN                            R11 6
       85 SETLIST                          R8 R9 3 [1]
       87 SETTABLEKS                       R8 R7 K24 ["lastUpdated"]
       89 CALL                             R6 1 1
       90 GETIMPORT                        R7 K18 [table.freeze]
       92 DUPTABLE                         R8 K39 [{["eventName"] = "StudioAssistantGen3DSceneGenCompletedCount", ["backends"], ["description"] = "Count of scene generation requests, labelled by success, failureReason, and requestSource.", ["lastUpdated"]}]
       93 NEWTABLE                         R9 0 1
       95 LOADK                            R10 K33 ["RobloxTelemetryCounter"]
       96 SETLIST                          R9 R10 1 [1]
       98 SETTABLEKS                       R9 R8 K21 ["backends"]
      100 NEWTABLE                         R9 0 3
      102 LOADN                            R10 26
      103 LOADN                            R11 11
      104 LOADN                            R12 6
      105 SETLIST                          R9 R10 3 [1]
      107 SETTABLEKS                       R9 R8 K24 ["lastUpdated"]
      109 CALL                             R7 1 1
      110 DUPTABLE                         R8 K42 [{"logEvent", "logCounter"}]
      111 DUPCLOSURE                       R9 K43 [PROTO_0]
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R9 R8 K40 ["logEvent"]
      115 DUPCLOSURE                       R9 K44 [PROTO_1]
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R9 R8 K41 ["logCounter"]
      119 DUPCLOSURE                       R9 K45 [PROTO_4]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R6
      126 RETURN                           R9 1
