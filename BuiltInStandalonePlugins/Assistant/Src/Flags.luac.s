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
       30 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       32 LOADK                            R5 K16 ["AssistantAdvertiseStandaloneDataModel"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K17 ["FFlagAssistantAdvertiseStandaloneDataModel"]
       37 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       39 LOADK                            R5 K18 ["AssistantBuildName"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K19 ["FFlagAssistantBuildName"]
       44 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       46 LOADK                            R5 K20 ["AssistantDisableSafeEmptyTableJsonEncode"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K21 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       51 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       53 LOADK                            R5 K22 ["AssistantExternalMCPRetryOnStartFailure"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K23 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       58 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       60 LOADK                            R5 K24 ["AssistantFixToolDisappear2"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K25 ["FFlagAssistantFixToolDisappear"]
       65 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       67 LOADK                            R5 K26 ["AssistantLLMNotificationGapRecovery"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K27 ["FFlagAssistantLLMNotificationGapRecovery"]
       72 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       74 LOADK                            R5 K28 ["AssistantMcpStudioIdRouting"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantMcpStudioIdRouting"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["AssistantQualityChangeWidgetTitle"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagAssistantQualityChangeWidgetTitle"]
       86 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       88 LOADK                            R5 K32 ["AssistantResetMcpSessionOnPlaceClose"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K33 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
       93 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       95 LOADK                            R5 K34 ["AssistantRetryMessageLoadWithSmallerLimit"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K35 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
      100 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      102 LOADK                            R5 K36 ["AssistantStartMcpServerWithoutUI"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K37 ["FFlagAssistantStartMcpServerWithoutUI"]
      107 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      109 LOADK                            R5 K38 ["AssistantUseNewOpenAPIClients2"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K39 ["FFlagAssistantUseNewOpenAPIClients"]
      114 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      116 LOADK                            R5 K40 ["DebugAssistantCreditMeteringLogging"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K41 ["FFlagDebugAssistantCreditMeteringLogging"]
      121 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      123 LOADK                            R5 K42 ["DebugAssistantForceCloseTooltip"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K43 ["FFlagDebugAssistantForceCloseTooltip"]
      128 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      130 LOADK                            R5 K44 ["FixTargetIsNotReachable"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K45 ["FFlagFixTargetIsNotReachable"]
      135 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      137 LOADK                            R5 K46 ["GetOrCreateUniqueIdMethod2"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagGetOrCreateUniqueIdMethod"]
      142 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      144 LOADK                            R5 K48 ["IsLuobuBuild"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K49 ["FFlagIsLuobuBuild"]
      149 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      151 LOADK                            R5 K50 ["MaterialGeneratorCounterEnabled"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K51 ["FFlagMaterialGeneratorCounterEnabled"]
      156 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      158 LOADK                            R5 K52 ["MCPAssistantPlaceID"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K53 ["FFlagMCPAssistantPlaceID"]
      163 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      165 LOADK                            R5 K54 ["MCPAssistantTooManyRequestLog"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K55 ["FFlagMCPAssistantTooManyRequestLog"]
      170 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      172 LOADK                            R5 K56 ["SendApplicationFieldFromAssistant"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K57 ["FFlagSendApplicationFieldFromAssistant"]
      177 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      179 LOADK                            R5 K58 ["SkipExternalToolsNoDebugMode"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K59 ["FFlagSkipExternalToolsNoDebugMode"]
      184 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      186 LOADK                            R5 K60 ["StudioAssistantCloseTooltip"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K61 ["FFlagStudioAssistantCloseTooltip"]
      191 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      193 LOADK                            R5 K62 ["StudioDialogManagerSuppression"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K63 ["FFlagStudioDialogManagerSuppression"]
      198 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      200 LOADK                            R5 K65 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      201 LOADK                            R6 K66 [300000]
      202 CALL                             R4 2 1
      203 CALL                             R4 0 1
      204 SETTABLEKS                       R4 R3 K67 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      206 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      208 LOADK                            R5 K68 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      209 LOADK                            R6 K69 [25000000]
      210 CALL                             R4 2 1
      211 CALL                             R4 0 1
      212 SETTABLEKS                       R4 R3 K70 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      214 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      216 LOADK                            R5 K71 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      217 LOADN                            R6 30
      218 CALL                             R4 2 1
      219 CALL                             R4 0 1
      220 SETTABLEKS                       R4 R3 K72 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      222 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      224 LOADK                            R5 K73 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      225 LOADN                            R6 3
      226 CALL                             R4 2 1
      227 CALL                             R4 0 1
      228 SETTABLEKS                       R4 R3 K74 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      230 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      232 LOADK                            R5 K75 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      233 LOADN                            R6 8
      234 CALL                             R4 2 1
      235 CALL                             R4 0 1
      236 SETTABLEKS                       R4 R3 K76 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      238 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      240 LOADK                            R5 K77 ["AssistantCreditResetRefreshBufferSeconds"]
      241 LOADN                            R6 5
      242 CALL                             R4 2 1
      243 CALL                             R4 0 1
      244 SETTABLEKS                       R4 R3 K78 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      246 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      248 LOADK                            R5 K79 ["AssistantDisconnectDelaySeconds"]
      249 LOADN                            R6 3
      250 CALL                             R4 2 1
      251 CALL                             R4 0 1
      252 SETTABLEKS                       R4 R3 K80 ["FIntAssistantDisconnectDelaySeconds"]
      254 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      256 LOADK                            R5 K81 ["AssistantExperimentReadyTimeoutSeconds"]
      257 LOADN                            R6 2
      258 CALL                             R4 2 1
      259 CALL                             R4 0 1
      260 SETTABLEKS                       R4 R3 K82 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      262 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      264 LOADK                            R5 K83 ["AssistantLLMNotificationGapRecoverySeconds"]
      265 LOADN                            R6 20
      266 CALL                             R4 2 1
      267 CALL                             R4 0 1
      268 SETTABLEKS                       R4 R3 K84 ["FIntAssistantLLMNotificationGapRecoverySeconds"]
      270 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      272 LOADK                            R5 K85 ["AssistantStudioNameCheckInterval"]
      273 LOADN                            R6 10
      274 CALL                             R4 2 1
      275 CALL                             R4 0 1
      276 SETTABLEKS                       R4 R3 K86 ["FIntAssistantStudioNameCheckInterval"]
      278 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      280 LOADK                            R5 K87 ["ConvAIAssistantMaxTokens"]
      281 LOADN                            R6 16000
      282 CALL                             R4 2 1
      283 CALL                             R4 0 1
      284 SETTABLEKS                       R4 R3 K88 ["FIntConvAIAssistantMaxTokens"]
      286 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      288 LOADK                            R5 K89 ["MarkdownErrorEventThrottlingHundredthPercent"]
      289 LOADN                            R6 10000
      290 CALL                             R4 2 1
      291 CALL                             R4 0 1
      292 SETTABLEKS                       R4 R3 K90 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      294 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      296 LOADK                            R5 K91 ["MaterialGenerationServicePollLimit"]
      297 LOADN                            R6 5
      298 CALL                             R4 2 1
      299 CALL                             R4 0 1
      300 SETTABLEKS                       R4 R3 K92 ["FIntMaterialGenerationServicePollLimit"]
      302 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      304 LOADK                            R5 K93 ["MaterialGenerationServiceRePollDelaySeconds"]
      305 LOADN                            R6 10
      306 CALL                             R4 2 1
      307 CALL                             R4 0 1
      308 SETTABLEKS                       R4 R3 K94 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      310 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      312 LOADK                            R5 K95 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      313 LOADN                            R6 15000
      314 CALL                             R4 2 1
      315 CALL                             R4 0 1
      316 SETTABLEKS                       R4 R3 K96 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      318 GETTABLEKS                       R4 R2 K64 ["createGetFInt"]
      320 LOADK                            R5 K97 ["UserMessageSentEventThrottlingHundredthPercent"]
      321 LOADN                            R6 10000
      322 CALL                             R4 2 1
      323 CALL                             R4 0 1
      324 SETTABLEKS                       R4 R3 K98 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      326 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      328 LOADK                            R5 K100 ["AssistantDisableContextCompactionKey"]
      329 LOADK                            R6 K101 ["DisableContextCompaction"]
      330 CALL                             R4 2 1
      331 CALL                             R4 0 1
      332 SETTABLEKS                       R4 R3 K102 ["FStringAssistantDisableContextCompactionKey"]
      334 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      336 LOADK                            R5 K103 ["AssistantDisabledToolsKey"]
      337 LOADK                            R6 K104 ["disabledTools"]
      338 CALL                             R4 2 1
      339 CALL                             R4 0 1
      340 SETTABLEKS                       R4 R3 K105 ["FStringAssistantDisabledToolsKey"]
      342 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      344 LOADK                            R5 K106 ["AssistantGroupNameKey"]
      345 LOADK                            R6 K107 ["GROUP_NAME"]
      346 CALL                             R4 2 1
      347 CALL                             R4 0 1
      348 SETTABLEKS                       R4 R3 K108 ["FStringAssistantGroupNameKey"]
      350 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      352 LOADK                            R5 K109 ["CubeGenerationGatewayApiKey"]
      353 LOADK                            R6 K110 [""]
      354 CALL                             R4 2 1
      355 CALL                             R4 0 1
      356 SETTABLEKS                       R4 R3 K111 ["FStringCubeGenerationGatewayApiKey"]
      358 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      360 LOADK                            R5 K112 ["CubeGenerationGatewayBaseUrlOverride"]
      361 LOADK                            R6 K110 [""]
      362 CALL                             R4 2 1
      363 CALL                             R4 0 1
      364 SETTABLEKS                       R4 R3 K113 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      366 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      368 LOADK                            R5 K114 ["DebugAssistantStudioSystemMessage"]
      369 LOADK                            R6 K110 [""]
      370 CALL                             R4 2 1
      371 CALL                             R4 0 1
      372 SETTABLEKS                       R4 R3 K115 ["FStringDebugAssistantStudioSystemMessage"]
      374 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      376 LOADK                            R5 K116 ["DebugCASBaseUrlOverride"]
      377 LOADK                            R6 K110 [""]
      378 CALL                             R4 2 1
      379 CALL                             R4 0 1
      380 SETTABLEKS                       R4 R3 K117 ["FStringDebugCASBaseUrlOverride"]
      382 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      384 LOADK                            R5 K118 ["DebugLogAssistantUILogLevel"]
      385 LOADK                            R6 K119 ["Debug"]
      386 CALL                             R4 2 1
      387 CALL                             R4 0 1
      388 SETTABLEKS                       R4 R3 K120 ["FStringDebugLogAssistantUILogLevel"]
      390 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      392 LOADK                            R5 K121 ["DebugRemoteACPExperimentSpecVersion"]
      393 LOADK                            R6 K110 [""]
      394 CALL                             R4 2 1
      395 CALL                             R4 0 1
      396 SETTABLEKS                       R4 R3 K122 ["FStringDebugRemoteACPExperimentSpecVersion"]
      398 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      400 LOADK                            R5 K123 ["DebugRemoteACPPlaceId"]
      401 LOADK                            R6 K110 [""]
      402 CALL                             R4 2 1
      403 CALL                             R4 0 1
      404 SETTABLEKS                       R4 R3 K124 ["FStringDebugRemoteACPPlaceId"]
      406 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      408 LOADK                            R5 K125 ["DebugRemoteACPUniverseId"]
      409 LOADK                            R6 K110 [""]
      410 CALL                             R4 2 1
      411 CALL                             R4 0 1
      412 SETTABLEKS                       R4 R3 K126 ["FStringDebugRemoteACPUniverseId"]
      414 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      416 LOADK                            R5 K127 ["MCPAssistantThinkingMode"]
      417 LOADK                            R6 K110 [""]
      418 CALL                             R4 2 1
      419 CALL                             R4 0 1
      420 SETTABLEKS                       R4 R3 K128 ["FStringMCPAssistantThinkingMode"]
      422 GETTABLEKS                       R4 R2 K99 ["createGetFString"]
      424 LOADK                            R5 K129 ["NewAssistantExperimentLayer"]
      425 LOADK                            R6 K130 ["Creator.Assistant.MCPAssistant.CreatorId"]
      426 CALL                             R4 2 1
      427 CALL                             R4 0 1
      428 SETTABLEKS                       R4 R3 K131 ["FStringNewAssistantExperimentLayer"]
      430 DUPTABLE                         R6 K133 [{"__index", "__newindex"}]
      431 GETTABLEKS                       R7 R1 K134 ["Flags"]
      433 SETTABLEKS                       R7 R6 K132 ["__index"]
      435 GETTABLEKS                       R7 R1 K134 ["Flags"]
      437 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      439 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      441 MOVE                             R5 R3
      442 GETIMPORT                        R4 K14 [setmetatable]
      444 CALL                             R4 2 1
      445 RETURN                           R4 1
