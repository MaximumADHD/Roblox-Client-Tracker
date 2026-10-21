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
       37 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       39 LOADK                            R5 K19 ["AssistantAdvertiseStandaloneDataModel"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K20 ["FFlagAssistantAdvertiseStandaloneDataModel"]
       44 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       46 LOADK                            R5 K21 ["AssistantBuildName"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K22 ["FFlagAssistantBuildName"]
       51 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       53 LOADK                            R5 K23 ["AssistantDisableSafeEmptyTableJsonEncode"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K24 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       58 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       60 LOADK                            R5 K25 ["AssistantExternalMCPRetryOnStartFailure"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K26 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       65 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       67 LOADK                            R5 K27 ["AssistantFixToolDisappear2"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K28 ["FFlagAssistantFixToolDisappear"]
       72 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       74 LOADK                            R5 K29 ["AssistantLLMNotificationGapRecovery"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K30 ["FFlagAssistantLLMNotificationGapRecovery"]
       79 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       81 LOADK                            R5 K31 ["AssistantLogStudioSessionId"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K32 ["FFlagAssistantLogStudioSessionId"]
       86 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       88 LOADK                            R5 K33 ["AssistantGen3dAsyncAssetUpload"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K34 ["FFlagAssistantGen3dAsyncAssetUpload"]
       93 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
       95 LOADK                            R5 K35 ["AssistantMcpStudioIdRouting"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K36 ["FFlagAssistantMcpStudioIdRouting"]
      100 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      102 LOADK                            R5 K37 ["AssistantQualityChangeWidgetTitle"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K38 ["FFlagAssistantQualityChangeWidgetTitle"]
      107 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      109 LOADK                            R5 K39 ["AssistantResetMcpSessionOnPlaceClose"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K40 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
      114 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      116 LOADK                            R5 K41 ["AssistantRetryMessageLoadWithSmallerLimit"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K42 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
      121 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      123 LOADK                            R5 K43 ["AssistantStartMcpServerWithoutUI"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K44 ["FFlagAssistantStartMcpServerWithoutUI"]
      128 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      130 LOADK                            R5 K45 ["AssistantUseNewOpenAPIClients2"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K46 ["FFlagAssistantUseNewOpenAPIClients"]
      135 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      137 LOADK                            R5 K47 ["DebugAssistantCreditMeteringLogging"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K48 ["FFlagDebugAssistantCreditMeteringLogging"]
      142 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      144 LOADK                            R5 K49 ["DebugAssistantForceCloseTooltip"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K50 ["FFlagDebugAssistantForceCloseTooltip"]
      149 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      151 LOADK                            R5 K51 ["FixTargetIsNotReachable"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K52 ["FFlagFixTargetIsNotReachable"]
      156 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      158 LOADK                            R5 K53 ["GetOrCreateUniqueIdMethod2"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K54 ["FFlagGetOrCreateUniqueIdMethod"]
      163 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      165 LOADK                            R5 K55 ["IsLuobuBuild"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K56 ["FFlagIsLuobuBuild"]
      170 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      172 LOADK                            R5 K57 ["MaterialGeneratorCounterEnabled"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K58 ["FFlagMaterialGeneratorCounterEnabled"]
      177 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      179 LOADK                            R5 K59 ["MCPAssistantPlaceID"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K60 ["FFlagMCPAssistantPlaceID"]
      184 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      186 LOADK                            R5 K61 ["MCPAssistantTooManyRequestLog"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K62 ["FFlagMCPAssistantTooManyRequestLog"]
      191 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      193 LOADK                            R5 K63 ["SendApplicationFieldFromAssistant"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K64 ["FFlagSendApplicationFieldFromAssistant"]
      198 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      200 LOADK                            R5 K65 ["SkipExternalToolsNoDebugMode"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K66 ["FFlagSkipExternalToolsNoDebugMode"]
      205 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      207 LOADK                            R5 K67 ["StudioAssistantCloseTooltip"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K68 ["FFlagStudioAssistantCloseTooltip"]
      212 GETTABLEKS                       R4 R2 K18 ["createGetFFlag"]
      214 LOADK                            R5 K69 ["StudioDialogManagerSuppression"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K70 ["FFlagStudioDialogManagerSuppression"]
      219 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      221 LOADK                            R5 K72 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      222 LOADK                            R6 K73 [300000]
      223 CALL                             R4 2 1
      224 CALL                             R4 0 1
      225 SETTABLEKS                       R4 R3 K74 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      227 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      229 LOADK                            R5 K75 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      230 LOADK                            R6 K76 [25000000]
      231 CALL                             R4 2 1
      232 CALL                             R4 0 1
      233 SETTABLEKS                       R4 R3 K77 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      235 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      237 LOADK                            R5 K78 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      238 LOADN                            R6 30
      239 CALL                             R4 2 1
      240 CALL                             R4 0 1
      241 SETTABLEKS                       R4 R3 K79 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      243 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      245 LOADK                            R5 K80 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      246 LOADN                            R6 3
      247 CALL                             R4 2 1
      248 CALL                             R4 0 1
      249 SETTABLEKS                       R4 R3 K81 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      251 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      253 LOADK                            R5 K82 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      254 LOADN                            R6 8
      255 CALL                             R4 2 1
      256 CALL                             R4 0 1
      257 SETTABLEKS                       R4 R3 K83 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      259 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      261 LOADK                            R5 K84 ["AssistantCreditResetRefreshBufferSeconds"]
      262 LOADN                            R6 5
      263 CALL                             R4 2 1
      264 CALL                             R4 0 1
      265 SETTABLEKS                       R4 R3 K85 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      267 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      269 LOADK                            R5 K86 ["AssistantDisconnectDelaySeconds"]
      270 LOADN                            R6 3
      271 CALL                             R4 2 1
      272 CALL                             R4 0 1
      273 SETTABLEKS                       R4 R3 K87 ["FIntAssistantDisconnectDelaySeconds"]
      275 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      277 LOADK                            R5 K88 ["AssistantExperimentReadyTimeoutSeconds"]
      278 LOADN                            R6 2
      279 CALL                             R4 2 1
      280 CALL                             R4 0 1
      281 SETTABLEKS                       R4 R3 K89 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      283 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      285 LOADK                            R5 K90 ["AssistantLLMNotificationGapRecoverySeconds"]
      286 LOADN                            R6 20
      287 CALL                             R4 2 1
      288 CALL                             R4 0 1
      289 SETTABLEKS                       R4 R3 K91 ["FIntAssistantLLMNotificationGapRecoverySeconds"]
      291 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      293 LOADK                            R5 K92 ["AssistantStudioNameCheckInterval"]
      294 LOADN                            R6 10
      295 CALL                             R4 2 1
      296 CALL                             R4 0 1
      297 SETTABLEKS                       R4 R3 K93 ["FIntAssistantStudioNameCheckInterval"]
      299 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      301 LOADK                            R5 K94 ["ConvAIAssistantMaxTokens"]
      302 LOADN                            R6 16000
      303 CALL                             R4 2 1
      304 CALL                             R4 0 1
      305 SETTABLEKS                       R4 R3 K95 ["FIntConvAIAssistantMaxTokens"]
      307 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      309 LOADK                            R5 K96 ["MarkdownErrorEventThrottlingHundredthPercent"]
      310 LOADN                            R6 10000
      311 CALL                             R4 2 1
      312 CALL                             R4 0 1
      313 SETTABLEKS                       R4 R3 K97 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      315 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      317 LOADK                            R5 K98 ["MaterialGenerationServicePollLimit"]
      318 LOADN                            R6 5
      319 CALL                             R4 2 1
      320 CALL                             R4 0 1
      321 SETTABLEKS                       R4 R3 K99 ["FIntMaterialGenerationServicePollLimit"]
      323 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      325 LOADK                            R5 K100 ["MaterialGenerationServiceRePollDelaySeconds"]
      326 LOADN                            R6 10
      327 CALL                             R4 2 1
      328 CALL                             R4 0 1
      329 SETTABLEKS                       R4 R3 K101 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      331 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      333 LOADK                            R5 K102 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      334 LOADN                            R6 15000
      335 CALL                             R4 2 1
      336 CALL                             R4 0 1
      337 SETTABLEKS                       R4 R3 K103 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      339 GETTABLEKS                       R4 R2 K71 ["createGetFInt"]
      341 LOADK                            R5 K104 ["UserMessageSentEventThrottlingHundredthPercent"]
      342 LOADN                            R6 10000
      343 CALL                             R4 2 1
      344 CALL                             R4 0 1
      345 SETTABLEKS                       R4 R3 K105 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      347 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      349 LOADK                            R5 K107 ["AssistantDisableContextCompactionKey"]
      350 LOADK                            R6 K108 ["DisableContextCompaction"]
      351 CALL                             R4 2 1
      352 CALL                             R4 0 1
      353 SETTABLEKS                       R4 R3 K109 ["FStringAssistantDisableContextCompactionKey"]
      355 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      357 LOADK                            R5 K110 ["AssistantDisabledToolsKey"]
      358 LOADK                            R6 K111 ["disabledTools"]
      359 CALL                             R4 2 1
      360 CALL                             R4 0 1
      361 SETTABLEKS                       R4 R3 K112 ["FStringAssistantDisabledToolsKey"]
      363 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      365 LOADK                            R5 K113 ["AssistantGroupNameKey"]
      366 LOADK                            R6 K114 ["GROUP_NAME"]
      367 CALL                             R4 2 1
      368 CALL                             R4 0 1
      369 SETTABLEKS                       R4 R3 K115 ["FStringAssistantGroupNameKey"]
      371 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      373 LOADK                            R5 K116 ["CubeGenerationGatewayApiKey"]
      374 LOADK                            R6 K117 [""]
      375 CALL                             R4 2 1
      376 CALL                             R4 0 1
      377 SETTABLEKS                       R4 R3 K118 ["FStringCubeGenerationGatewayApiKey"]
      379 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      381 LOADK                            R5 K119 ["CubeGenerationGatewayBaseUrlOverride"]
      382 LOADK                            R6 K117 [""]
      383 CALL                             R4 2 1
      384 CALL                             R4 0 1
      385 SETTABLEKS                       R4 R3 K120 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      387 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      389 LOADK                            R5 K121 ["DebugAssistantStudioSystemMessage"]
      390 LOADK                            R6 K117 [""]
      391 CALL                             R4 2 1
      392 CALL                             R4 0 1
      393 SETTABLEKS                       R4 R3 K122 ["FStringDebugAssistantStudioSystemMessage"]
      395 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      397 LOADK                            R5 K123 ["DebugCASBaseUrlOverride"]
      398 LOADK                            R6 K117 [""]
      399 CALL                             R4 2 1
      400 CALL                             R4 0 1
      401 SETTABLEKS                       R4 R3 K124 ["FStringDebugCASBaseUrlOverride"]
      403 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      405 LOADK                            R5 K125 ["DebugLogAssistantUILogLevel"]
      406 LOADK                            R6 K126 ["Debug"]
      407 CALL                             R4 2 1
      408 CALL                             R4 0 1
      409 SETTABLEKS                       R4 R3 K127 ["FStringDebugLogAssistantUILogLevel"]
      411 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      413 LOADK                            R5 K128 ["DebugRemoteACPExperimentSpecVersion"]
      414 LOADK                            R6 K117 [""]
      415 CALL                             R4 2 1
      416 CALL                             R4 0 1
      417 SETTABLEKS                       R4 R3 K129 ["FStringDebugRemoteACPExperimentSpecVersion"]
      419 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      421 LOADK                            R5 K130 ["DebugRemoteACPPlaceId"]
      422 LOADK                            R6 K117 [""]
      423 CALL                             R4 2 1
      424 CALL                             R4 0 1
      425 SETTABLEKS                       R4 R3 K131 ["FStringDebugRemoteACPPlaceId"]
      427 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      429 LOADK                            R5 K132 ["DebugRemoteACPUniverseId"]
      430 LOADK                            R6 K117 [""]
      431 CALL                             R4 2 1
      432 CALL                             R4 0 1
      433 SETTABLEKS                       R4 R3 K133 ["FStringDebugRemoteACPUniverseId"]
      435 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      437 LOADK                            R5 K134 ["MCPAssistantThinkingMode"]
      438 LOADK                            R6 K117 [""]
      439 CALL                             R4 2 1
      440 CALL                             R4 0 1
      441 SETTABLEKS                       R4 R3 K135 ["FStringMCPAssistantThinkingMode"]
      443 GETTABLEKS                       R4 R2 K106 ["createGetFString"]
      445 LOADK                            R5 K136 ["NewAssistantExperimentLayer"]
      446 LOADK                            R6 K137 ["Creator.Assistant.MCPAssistant.CreatorId"]
      447 CALL                             R4 2 1
      448 CALL                             R4 0 1
      449 SETTABLEKS                       R4 R3 K138 ["FStringNewAssistantExperimentLayer"]
      451 DUPTABLE                         R6 K140 [{"__index", "__newindex"}]
      452 GETTABLEKS                       R7 R1 K141 ["Flags"]
      454 SETTABLEKS                       R7 R6 K139 ["__index"]
      456 GETTABLEKS                       R7 R1 K141 ["Flags"]
      458 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      460 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      462 MOVE                             R5 R3
      463 GETIMPORT                        R4 K14 [setmetatable]
      465 CALL                             R4 2 1
      466 RETURN                           R4 1
