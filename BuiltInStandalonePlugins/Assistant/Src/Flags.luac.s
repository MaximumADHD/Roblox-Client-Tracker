PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["trackFlag"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 FASTCALL3                        RAWSET R0 R1 R2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 GETIMPORT                        R3 K2 [rawset]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["FlagUtils"]
       16 GETTABLEKS                       R2 R2 K9 ["TestableFlags"]
       18 NEWTABLE                         R4 64 0
       20 DUPTABLE                         R5 K11 [{"__newindex"}]
       21 DUPCLOSURE                       R6 K12 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R6 R5 K10 ["__newindex"]
       25 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       27 GETIMPORT                        R3 K14 [setmetatable]
       29 CALL                             R3 2 1
       30 GETTABLEKS                       R4 R2 K15 ["createGetEngineFeature"]
       32 LOADK                            R5 K16 ["StudioAssetUploadAndInsertEnabled"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K17 ["EngineFeatureStudioAssetUploadAndInsertEnabled"]
       37 GETTABLEKS                       R4 R2 K15 ["createGetEngineFeature"]
       39 LOADK                            R5 K18 ["StudioAssistantPermissions"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K19 ["EngineFeatureStudioAssistantPermissions"]
       44 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       46 LOADK                            R5 K21 ["AssistantAdvertiseStandaloneDataModel"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K22 ["FFlagAssistantAdvertiseStandaloneDataModel"]
       51 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       53 LOADK                            R5 K23 ["AssistantAnimationGenEnableExternalMCP"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K24 ["FFlagAssistantAnimationGenEnableExternalMCP"]
       58 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       60 LOADK                            R5 K25 ["AssistantBuildName"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K26 ["FFlagAssistantBuildName"]
       65 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       67 LOADK                            R5 K27 ["AssistantDisableSafeEmptyTableJsonEncode"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K28 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       72 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       74 LOADK                            R5 K29 ["AssistantExternalMCPRetryOnStartFailure"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K30 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       79 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       81 LOADK                            R5 K31 ["AssistantFixToolDisappear2"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K32 ["FFlagAssistantFixToolDisappear"]
       86 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       88 LOADK                            R5 K33 ["AssistantLLMNotificationGapRecovery"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K34 ["FFlagAssistantLLMNotificationGapRecovery"]
       93 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
       95 LOADK                            R5 K35 ["AssistantLogStudioSessionId"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K36 ["FFlagAssistantLogStudioSessionId"]
      100 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      102 LOADK                            R5 K37 ["AssistantGen3dAsyncAssetUpload"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K38 ["FFlagAssistantGen3dAsyncAssetUpload"]
      107 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      109 LOADK                            R5 K39 ["AssistantMcpCaptureAllToolCalls"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K40 ["FFlagAssistantMcpCaptureAllToolCalls"]
      114 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      116 LOADK                            R5 K41 ["AssistantMcpCaptureUpload"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K42 ["FFlagAssistantMcpCaptureUpload"]
      121 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      123 LOADK                            R5 K43 ["AssistantMcpStudioIdRouting"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K44 ["FFlagAssistantMcpStudioIdRouting"]
      128 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      130 LOADK                            R5 K45 ["AssistantQualityChangeWidgetTitle"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K46 ["FFlagAssistantQualityChangeWidgetTitle"]
      135 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      137 LOADK                            R5 K47 ["AssistantResetMcpSessionOnPlaceClose"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K48 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
      142 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      144 LOADK                            R5 K49 ["AssistantRetryMessageLoadWithSmallerLimit"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K50 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
      149 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      151 LOADK                            R5 K51 ["AssistantStartMcpServerWithoutUI"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K52 ["FFlagAssistantStartMcpServerWithoutUI"]
      156 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      158 LOADK                            R5 K53 ["AssistantUseNewOpenAPIClients2"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K54 ["FFlagAssistantUseNewOpenAPIClients"]
      163 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      165 LOADK                            R5 K55 ["DebugAssistantCreditMeteringLogging"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K56 ["FFlagDebugAssistantCreditMeteringLogging"]
      170 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      172 LOADK                            R5 K57 ["DebugAssistantForceCloseTooltip"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K58 ["FFlagDebugAssistantForceCloseTooltip"]
      177 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      179 LOADK                            R5 K59 ["FixTargetIsNotReachable"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K60 ["FFlagFixTargetIsNotReachable"]
      184 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      186 LOADK                            R5 K61 ["IsLuobuBuild"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K62 ["FFlagIsLuobuBuild"]
      191 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      193 LOADK                            R5 K63 ["MaterialGeneratorCounterEnabled"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K64 ["FFlagMaterialGeneratorCounterEnabled"]
      198 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      200 LOADK                            R5 K65 ["MCPAssistantPlaceID"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K66 ["FFlagMCPAssistantPlaceID"]
      205 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      207 LOADK                            R5 K67 ["MCPAssistantTooManyRequestLog"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K68 ["FFlagMCPAssistantTooManyRequestLog"]
      212 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      214 LOADK                            R5 K69 ["SendApplicationFieldFromAssistant"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K70 ["FFlagSendApplicationFieldFromAssistant"]
      219 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      221 LOADK                            R5 K71 ["SkipExternalToolsNoDebugMode"]
      222 CALL                             R4 1 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K72 ["FFlagSkipExternalToolsNoDebugMode"]
      226 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      228 LOADK                            R5 K73 ["StudioAssistantCloseTooltip"]
      229 CALL                             R4 1 1
      230 CALL                             R4 0 1
      231 SETTABLEKS                       R4 R3 K74 ["FFlagStudioAssistantCloseTooltip"]
      233 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      235 LOADK                            R5 K75 ["StudioDialogManagerSuppression"]
      236 CALL                             R4 1 1
      237 CALL                             R4 0 1
      238 SETTABLEKS                       R4 R3 K76 ["FFlagStudioDialogManagerSuppression"]
      240 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      242 LOADK                            R5 K78 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      243 LOADK                            R6 K79 [300000]
      244 CALL                             R4 2 1
      245 CALL                             R4 0 1
      246 SETTABLEKS                       R4 R3 K80 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      248 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      250 LOADK                            R5 K81 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      251 LOADK                            R6 K82 [25000000]
      252 CALL                             R4 2 1
      253 CALL                             R4 0 1
      254 SETTABLEKS                       R4 R3 K83 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      256 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      258 LOADK                            R5 K84 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      259 LOADN                            R6 30
      260 CALL                             R4 2 1
      261 CALL                             R4 0 1
      262 SETTABLEKS                       R4 R3 K85 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      264 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      266 LOADK                            R5 K86 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      267 LOADN                            R6 3
      268 CALL                             R4 2 1
      269 CALL                             R4 0 1
      270 SETTABLEKS                       R4 R3 K87 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      272 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      274 LOADK                            R5 K88 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      275 LOADN                            R6 8
      276 CALL                             R4 2 1
      277 CALL                             R4 0 1
      278 SETTABLEKS                       R4 R3 K89 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      280 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      282 LOADK                            R5 K90 ["AssistantCreditResetRefreshBufferSeconds"]
      283 LOADN                            R6 5
      284 CALL                             R4 2 1
      285 CALL                             R4 0 1
      286 SETTABLEKS                       R4 R3 K91 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      288 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      290 LOADK                            R5 K92 ["AssistantDisconnectDelaySeconds"]
      291 LOADN                            R6 3
      292 CALL                             R4 2 1
      293 CALL                             R4 0 1
      294 SETTABLEKS                       R4 R3 K93 ["FIntAssistantDisconnectDelaySeconds"]
      296 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      298 LOADK                            R5 K94 ["AssistantExperimentReadyTimeoutSeconds"]
      299 LOADN                            R6 2
      300 CALL                             R4 2 1
      301 CALL                             R4 0 1
      302 SETTABLEKS                       R4 R3 K95 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      304 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      306 LOADK                            R5 K96 ["AssistantLLMNotificationGapRecoverySeconds"]
      307 LOADN                            R6 20
      308 CALL                             R4 2 1
      309 CALL                             R4 0 1
      310 SETTABLEKS                       R4 R3 K97 ["FIntAssistantLLMNotificationGapRecoverySeconds"]
      312 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      314 LOADK                            R5 K98 ["AssistantMcpCaptureBufferMinutes"]
      315 LOADN                            R6 30
      316 CALL                             R4 2 1
      317 CALL                             R4 0 1
      318 SETTABLEKS                       R4 R3 K99 ["FIntAssistantMcpCaptureBufferMinutes"]
      320 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      322 LOADK                            R5 K100 ["AssistantMcpCaptureIntervalSeconds"]
      323 LOADN                            R6 5
      324 CALL                             R4 2 1
      325 CALL                             R4 0 1
      326 SETTABLEKS                       R4 R3 K101 ["FIntAssistantMcpCaptureIntervalSeconds"]
      328 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      330 LOADK                            R5 K102 ["AssistantStudioNameCheckInterval"]
      331 LOADN                            R6 10
      332 CALL                             R4 2 1
      333 CALL                             R4 0 1
      334 SETTABLEKS                       R4 R3 K103 ["FIntAssistantStudioNameCheckInterval"]
      336 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      338 LOADK                            R5 K104 ["ConvAIAssistantMaxTokens"]
      339 LOADN                            R6 16000
      340 CALL                             R4 2 1
      341 CALL                             R4 0 1
      342 SETTABLEKS                       R4 R3 K105 ["FIntConvAIAssistantMaxTokens"]
      344 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      346 LOADK                            R5 K106 ["MarkdownErrorEventThrottlingHundredthPercent"]
      347 LOADN                            R6 10000
      348 CALL                             R4 2 1
      349 CALL                             R4 0 1
      350 SETTABLEKS                       R4 R3 K107 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      352 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      354 LOADK                            R5 K108 ["MaterialGenerationServicePollLimit"]
      355 LOADN                            R6 5
      356 CALL                             R4 2 1
      357 CALL                             R4 0 1
      358 SETTABLEKS                       R4 R3 K109 ["FIntMaterialGenerationServicePollLimit"]
      360 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      362 LOADK                            R5 K110 ["MaterialGenerationServiceRePollDelaySeconds"]
      363 LOADN                            R6 10
      364 CALL                             R4 2 1
      365 CALL                             R4 0 1
      366 SETTABLEKS                       R4 R3 K111 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      368 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      370 LOADK                            R5 K112 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      371 LOADN                            R6 15000
      372 CALL                             R4 2 1
      373 CALL                             R4 0 1
      374 SETTABLEKS                       R4 R3 K113 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      376 GETTABLEKS                       R4 R2 K77 ["createGetFInt"]
      378 LOADK                            R5 K114 ["UserMessageSentEventThrottlingHundredthPercent"]
      379 LOADN                            R6 10000
      380 CALL                             R4 2 1
      381 CALL                             R4 0 1
      382 SETTABLEKS                       R4 R3 K115 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      384 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      386 LOADK                            R5 K117 ["AssistantDisableContextCompactionKey"]
      387 LOADK                            R6 K118 ["DisableContextCompaction"]
      388 CALL                             R4 2 1
      389 CALL                             R4 0 1
      390 SETTABLEKS                       R4 R3 K119 ["FStringAssistantDisableContextCompactionKey"]
      392 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      394 LOADK                            R5 K120 ["AssistantDisabledToolsKey"]
      395 LOADK                            R6 K121 ["disabledTools"]
      396 CALL                             R4 2 1
      397 CALL                             R4 0 1
      398 SETTABLEKS                       R4 R3 K122 ["FStringAssistantDisabledToolsKey"]
      400 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      402 LOADK                            R5 K123 ["AssistantGroupNameKey"]
      403 LOADK                            R6 K124 ["GROUP_NAME"]
      404 CALL                             R4 2 1
      405 CALL                             R4 0 1
      406 SETTABLEKS                       R4 R3 K125 ["FStringAssistantGroupNameKey"]
      408 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      410 LOADK                            R5 K126 ["CubeGenerationGatewayApiKey"]
      411 LOADK                            R6 K127 [""]
      412 CALL                             R4 2 1
      413 CALL                             R4 0 1
      414 SETTABLEKS                       R4 R3 K128 ["FStringCubeGenerationGatewayApiKey"]
      416 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      418 LOADK                            R5 K129 ["CubeGenerationGatewayBaseUrlOverride"]
      419 LOADK                            R6 K127 [""]
      420 CALL                             R4 2 1
      421 CALL                             R4 0 1
      422 SETTABLEKS                       R4 R3 K130 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      424 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      426 LOADK                            R5 K131 ["CubeGenerationGatewaySceneAdminOptions"]
      427 LOADK                            R6 K127 [""]
      428 CALL                             R4 2 1
      429 CALL                             R4 0 1
      430 SETTABLEKS                       R4 R3 K132 ["FStringCubeGenerationGatewaySceneAdminOptions"]
      432 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      434 LOADK                            R5 K133 ["DebugAssistantStudioSystemMessage"]
      435 LOADK                            R6 K127 [""]
      436 CALL                             R4 2 1
      437 CALL                             R4 0 1
      438 SETTABLEKS                       R4 R3 K134 ["FStringDebugAssistantStudioSystemMessage"]
      440 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      442 LOADK                            R5 K135 ["DebugAssistantMcpCaptureUrlOverride"]
      443 LOADK                            R6 K127 [""]
      444 CALL                             R4 2 1
      445 CALL                             R4 0 1
      446 SETTABLEKS                       R4 R3 K136 ["FStringDebugAssistantMcpCaptureUrlOverride"]
      448 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      450 LOADK                            R5 K137 ["DebugCASBaseUrlOverride"]
      451 LOADK                            R6 K127 [""]
      452 CALL                             R4 2 1
      453 CALL                             R4 0 1
      454 SETTABLEKS                       R4 R3 K138 ["FStringDebugCASBaseUrlOverride"]
      456 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      458 LOADK                            R5 K139 ["DebugLogAssistantUILogLevel"]
      459 LOADK                            R6 K140 ["Debug"]
      460 CALL                             R4 2 1
      461 CALL                             R4 0 1
      462 SETTABLEKS                       R4 R3 K141 ["FStringDebugLogAssistantUILogLevel"]
      464 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      466 LOADK                            R5 K142 ["DebugRemoteACPExperimentSpecVersion"]
      467 LOADK                            R6 K127 [""]
      468 CALL                             R4 2 1
      469 CALL                             R4 0 1
      470 SETTABLEKS                       R4 R3 K143 ["FStringDebugRemoteACPExperimentSpecVersion"]
      472 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      474 LOADK                            R5 K144 ["DebugRemoteACPPlaceId"]
      475 LOADK                            R6 K127 [""]
      476 CALL                             R4 2 1
      477 CALL                             R4 0 1
      478 SETTABLEKS                       R4 R3 K145 ["FStringDebugRemoteACPPlaceId"]
      480 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      482 LOADK                            R5 K146 ["DebugRemoteACPUniverseId"]
      483 LOADK                            R6 K127 [""]
      484 CALL                             R4 2 1
      485 CALL                             R4 0 1
      486 SETTABLEKS                       R4 R3 K147 ["FStringDebugRemoteACPUniverseId"]
      488 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      490 LOADK                            R5 K148 ["MCPAssistantThinkingMode"]
      491 LOADK                            R6 K127 [""]
      492 CALL                             R4 2 1
      493 CALL                             R4 0 1
      494 SETTABLEKS                       R4 R3 K149 ["FStringMCPAssistantThinkingMode"]
      496 GETTABLEKS                       R4 R2 K116 ["createGetFString"]
      498 LOADK                            R5 K150 ["NewAssistantExperimentLayer"]
      499 LOADK                            R6 K151 ["Creator.Assistant.MCPAssistant.CreatorId"]
      500 CALL                             R4 2 1
      501 CALL                             R4 0 1
      502 SETTABLEKS                       R4 R3 K152 ["FStringNewAssistantExperimentLayer"]
      504 DUPTABLE                         R6 K154 [{"__index", "__newindex"}]
      505 GETTABLEKS                       R7 R1 K155 ["Flags"]
      507 SETTABLEKS                       R7 R6 K153 ["__index"]
      509 GETTABLEKS                       R7 R1 K155 ["Flags"]
      511 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      513 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      515 MOVE                             R5 R3
      516 GETIMPORT                        R4 K14 [setmetatable]
      518 CALL                             R4 2 1
      519 RETURN                           R4 1
