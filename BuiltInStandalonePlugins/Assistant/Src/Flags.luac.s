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
      109 LOADK                            R5 K39 ["AssistantMcpStudioIdRouting"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K40 ["FFlagAssistantMcpStudioIdRouting"]
      114 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      116 LOADK                            R5 K41 ["AssistantQualityChangeWidgetTitle"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K42 ["FFlagAssistantQualityChangeWidgetTitle"]
      121 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      123 LOADK                            R5 K43 ["AssistantResetMcpSessionOnPlaceClose"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K44 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
      128 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      130 LOADK                            R5 K45 ["AssistantRetryMessageLoadWithSmallerLimit"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K46 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
      135 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      137 LOADK                            R5 K47 ["AssistantStartMcpServerWithoutUI"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K48 ["FFlagAssistantStartMcpServerWithoutUI"]
      142 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      144 LOADK                            R5 K49 ["AssistantUseNewOpenAPIClients2"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K50 ["FFlagAssistantUseNewOpenAPIClients"]
      149 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      151 LOADK                            R5 K51 ["DebugAssistantCreditMeteringLogging"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K52 ["FFlagDebugAssistantCreditMeteringLogging"]
      156 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      158 LOADK                            R5 K53 ["DebugAssistantForceCloseTooltip"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K54 ["FFlagDebugAssistantForceCloseTooltip"]
      163 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      165 LOADK                            R5 K55 ["FixTargetIsNotReachable"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K56 ["FFlagFixTargetIsNotReachable"]
      170 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      172 LOADK                            R5 K57 ["IsLuobuBuild"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K58 ["FFlagIsLuobuBuild"]
      177 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      179 LOADK                            R5 K59 ["MaterialGeneratorCounterEnabled"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K60 ["FFlagMaterialGeneratorCounterEnabled"]
      184 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      186 LOADK                            R5 K61 ["MCPAssistantPlaceID"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K62 ["FFlagMCPAssistantPlaceID"]
      191 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      193 LOADK                            R5 K63 ["MCPAssistantTooManyRequestLog"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K64 ["FFlagMCPAssistantTooManyRequestLog"]
      198 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      200 LOADK                            R5 K65 ["SendApplicationFieldFromAssistant"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K66 ["FFlagSendApplicationFieldFromAssistant"]
      205 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      207 LOADK                            R5 K67 ["SkipExternalToolsNoDebugMode"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K68 ["FFlagSkipExternalToolsNoDebugMode"]
      212 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      214 LOADK                            R5 K69 ["StudioAssistantCloseTooltip"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K70 ["FFlagStudioAssistantCloseTooltip"]
      219 GETTABLEKS                       R4 R2 K20 ["createGetFFlag"]
      221 LOADK                            R5 K71 ["StudioDialogManagerSuppression"]
      222 CALL                             R4 1 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K72 ["FFlagStudioDialogManagerSuppression"]
      226 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      228 LOADK                            R5 K74 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      229 LOADK                            R6 K75 [300000]
      230 CALL                             R4 2 1
      231 CALL                             R4 0 1
      232 SETTABLEKS                       R4 R3 K76 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      234 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      236 LOADK                            R5 K77 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      237 LOADK                            R6 K78 [25000000]
      238 CALL                             R4 2 1
      239 CALL                             R4 0 1
      240 SETTABLEKS                       R4 R3 K79 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      242 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      244 LOADK                            R5 K80 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      245 LOADN                            R6 30
      246 CALL                             R4 2 1
      247 CALL                             R4 0 1
      248 SETTABLEKS                       R4 R3 K81 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      250 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      252 LOADK                            R5 K82 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      253 LOADN                            R6 3
      254 CALL                             R4 2 1
      255 CALL                             R4 0 1
      256 SETTABLEKS                       R4 R3 K83 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      258 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      260 LOADK                            R5 K84 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      261 LOADN                            R6 8
      262 CALL                             R4 2 1
      263 CALL                             R4 0 1
      264 SETTABLEKS                       R4 R3 K85 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      266 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      268 LOADK                            R5 K86 ["AssistantCreditResetRefreshBufferSeconds"]
      269 LOADN                            R6 5
      270 CALL                             R4 2 1
      271 CALL                             R4 0 1
      272 SETTABLEKS                       R4 R3 K87 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      274 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      276 LOADK                            R5 K88 ["AssistantDisconnectDelaySeconds"]
      277 LOADN                            R6 3
      278 CALL                             R4 2 1
      279 CALL                             R4 0 1
      280 SETTABLEKS                       R4 R3 K89 ["FIntAssistantDisconnectDelaySeconds"]
      282 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      284 LOADK                            R5 K90 ["AssistantExperimentReadyTimeoutSeconds"]
      285 LOADN                            R6 2
      286 CALL                             R4 2 1
      287 CALL                             R4 0 1
      288 SETTABLEKS                       R4 R3 K91 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      290 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      292 LOADK                            R5 K92 ["AssistantLLMNotificationGapRecoverySeconds"]
      293 LOADN                            R6 20
      294 CALL                             R4 2 1
      295 CALL                             R4 0 1
      296 SETTABLEKS                       R4 R3 K93 ["FIntAssistantLLMNotificationGapRecoverySeconds"]
      298 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      300 LOADK                            R5 K94 ["AssistantStudioNameCheckInterval"]
      301 LOADN                            R6 10
      302 CALL                             R4 2 1
      303 CALL                             R4 0 1
      304 SETTABLEKS                       R4 R3 K95 ["FIntAssistantStudioNameCheckInterval"]
      306 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      308 LOADK                            R5 K96 ["ConvAIAssistantMaxTokens"]
      309 LOADN                            R6 16000
      310 CALL                             R4 2 1
      311 CALL                             R4 0 1
      312 SETTABLEKS                       R4 R3 K97 ["FIntConvAIAssistantMaxTokens"]
      314 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      316 LOADK                            R5 K98 ["MarkdownErrorEventThrottlingHundredthPercent"]
      317 LOADN                            R6 10000
      318 CALL                             R4 2 1
      319 CALL                             R4 0 1
      320 SETTABLEKS                       R4 R3 K99 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      322 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      324 LOADK                            R5 K100 ["MaterialGenerationServicePollLimit"]
      325 LOADN                            R6 5
      326 CALL                             R4 2 1
      327 CALL                             R4 0 1
      328 SETTABLEKS                       R4 R3 K101 ["FIntMaterialGenerationServicePollLimit"]
      330 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      332 LOADK                            R5 K102 ["MaterialGenerationServiceRePollDelaySeconds"]
      333 LOADN                            R6 10
      334 CALL                             R4 2 1
      335 CALL                             R4 0 1
      336 SETTABLEKS                       R4 R3 K103 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      338 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      340 LOADK                            R5 K104 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      341 LOADN                            R6 15000
      342 CALL                             R4 2 1
      343 CALL                             R4 0 1
      344 SETTABLEKS                       R4 R3 K105 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      346 GETTABLEKS                       R4 R2 K73 ["createGetFInt"]
      348 LOADK                            R5 K106 ["UserMessageSentEventThrottlingHundredthPercent"]
      349 LOADN                            R6 10000
      350 CALL                             R4 2 1
      351 CALL                             R4 0 1
      352 SETTABLEKS                       R4 R3 K107 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      354 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      356 LOADK                            R5 K109 ["AssistantDisableContextCompactionKey"]
      357 LOADK                            R6 K110 ["DisableContextCompaction"]
      358 CALL                             R4 2 1
      359 CALL                             R4 0 1
      360 SETTABLEKS                       R4 R3 K111 ["FStringAssistantDisableContextCompactionKey"]
      362 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      364 LOADK                            R5 K112 ["AssistantDisabledToolsKey"]
      365 LOADK                            R6 K113 ["disabledTools"]
      366 CALL                             R4 2 1
      367 CALL                             R4 0 1
      368 SETTABLEKS                       R4 R3 K114 ["FStringAssistantDisabledToolsKey"]
      370 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      372 LOADK                            R5 K115 ["AssistantGroupNameKey"]
      373 LOADK                            R6 K116 ["GROUP_NAME"]
      374 CALL                             R4 2 1
      375 CALL                             R4 0 1
      376 SETTABLEKS                       R4 R3 K117 ["FStringAssistantGroupNameKey"]
      378 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      380 LOADK                            R5 K118 ["CubeGenerationGatewayApiKey"]
      381 LOADK                            R6 K119 [""]
      382 CALL                             R4 2 1
      383 CALL                             R4 0 1
      384 SETTABLEKS                       R4 R3 K120 ["FStringCubeGenerationGatewayApiKey"]
      386 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      388 LOADK                            R5 K121 ["CubeGenerationGatewayBaseUrlOverride"]
      389 LOADK                            R6 K119 [""]
      390 CALL                             R4 2 1
      391 CALL                             R4 0 1
      392 SETTABLEKS                       R4 R3 K122 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      394 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      396 LOADK                            R5 K123 ["CubeGenerationGatewaySceneAdminOptions"]
      397 LOADK                            R6 K119 [""]
      398 CALL                             R4 2 1
      399 CALL                             R4 0 1
      400 SETTABLEKS                       R4 R3 K124 ["FStringCubeGenerationGatewaySceneAdminOptions"]
      402 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      404 LOADK                            R5 K125 ["DebugAssistantStudioSystemMessage"]
      405 LOADK                            R6 K119 [""]
      406 CALL                             R4 2 1
      407 CALL                             R4 0 1
      408 SETTABLEKS                       R4 R3 K126 ["FStringDebugAssistantStudioSystemMessage"]
      410 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      412 LOADK                            R5 K127 ["DebugCASBaseUrlOverride"]
      413 LOADK                            R6 K119 [""]
      414 CALL                             R4 2 1
      415 CALL                             R4 0 1
      416 SETTABLEKS                       R4 R3 K128 ["FStringDebugCASBaseUrlOverride"]
      418 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      420 LOADK                            R5 K129 ["DebugLogAssistantUILogLevel"]
      421 LOADK                            R6 K130 ["Debug"]
      422 CALL                             R4 2 1
      423 CALL                             R4 0 1
      424 SETTABLEKS                       R4 R3 K131 ["FStringDebugLogAssistantUILogLevel"]
      426 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      428 LOADK                            R5 K132 ["DebugRemoteACPExperimentSpecVersion"]
      429 LOADK                            R6 K119 [""]
      430 CALL                             R4 2 1
      431 CALL                             R4 0 1
      432 SETTABLEKS                       R4 R3 K133 ["FStringDebugRemoteACPExperimentSpecVersion"]
      434 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      436 LOADK                            R5 K134 ["DebugRemoteACPPlaceId"]
      437 LOADK                            R6 K119 [""]
      438 CALL                             R4 2 1
      439 CALL                             R4 0 1
      440 SETTABLEKS                       R4 R3 K135 ["FStringDebugRemoteACPPlaceId"]
      442 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      444 LOADK                            R5 K136 ["DebugRemoteACPUniverseId"]
      445 LOADK                            R6 K119 [""]
      446 CALL                             R4 2 1
      447 CALL                             R4 0 1
      448 SETTABLEKS                       R4 R3 K137 ["FStringDebugRemoteACPUniverseId"]
      450 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      452 LOADK                            R5 K138 ["MCPAssistantThinkingMode"]
      453 LOADK                            R6 K119 [""]
      454 CALL                             R4 2 1
      455 CALL                             R4 0 1
      456 SETTABLEKS                       R4 R3 K139 ["FStringMCPAssistantThinkingMode"]
      458 GETTABLEKS                       R4 R2 K108 ["createGetFString"]
      460 LOADK                            R5 K140 ["NewAssistantExperimentLayer"]
      461 LOADK                            R6 K141 ["Creator.Assistant.MCPAssistant.CreatorId"]
      462 CALL                             R4 2 1
      463 CALL                             R4 0 1
      464 SETTABLEKS                       R4 R3 K142 ["FStringNewAssistantExperimentLayer"]
      466 DUPTABLE                         R6 K144 [{"__index", "__newindex"}]
      467 GETTABLEKS                       R7 R1 K145 ["Flags"]
      469 SETTABLEKS                       R7 R6 K143 ["__index"]
      471 GETTABLEKS                       R7 R1 K145 ["Flags"]
      473 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      475 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      477 MOVE                             R5 R3
      478 GETIMPORT                        R4 K14 [setmetatable]
      480 CALL                             R4 2 1
      481 RETURN                           R4 1
