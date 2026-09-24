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
       32 LOADK                            R5 K16 ["AssistantBuildName"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K17 ["FFlagAssistantBuildName"]
       37 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       39 LOADK                            R5 K18 ["AssistantDisableSafeEmptyTableJsonEncode"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K19 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       44 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       46 LOADK                            R5 K20 ["AssistantFixToolDisappear2"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K21 ["FFlagAssistantFixToolDisappear"]
       51 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       53 LOADK                            R5 K22 ["AssistantMcpStudioIdRouting"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K23 ["FFlagAssistantMcpStudioIdRouting"]
       58 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       60 LOADK                            R5 K24 ["AssistantQualityChangeWidgetTitle"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K25 ["FFlagAssistantQualityChangeWidgetTitle"]
       65 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       67 LOADK                            R5 K26 ["AssistantRetryMessageLoadWithSmallerLimit"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K27 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
       72 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       74 LOADK                            R5 K28 ["AssistantStartMcpServerWithoutUI"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantStartMcpServerWithoutUI"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["AssistantUseNewOpenAPIClients2"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagAssistantUseNewOpenAPIClients"]
       86 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       88 LOADK                            R5 K32 ["DebugAssistantCreditMeteringLogging"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K33 ["FFlagDebugAssistantCreditMeteringLogging"]
       93 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       95 LOADK                            R5 K34 ["DebugAssistantForceCloseTooltip"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K35 ["FFlagDebugAssistantForceCloseTooltip"]
      100 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      102 LOADK                            R5 K36 ["FixTargetIsNotReachable"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K37 ["FFlagFixTargetIsNotReachable"]
      107 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      109 LOADK                            R5 K38 ["GetOrCreateUniqueIdMethod2"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K39 ["FFlagGetOrCreateUniqueIdMethod"]
      114 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      116 LOADK                            R5 K40 ["IsLuobuBuild"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K41 ["FFlagIsLuobuBuild"]
      121 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      123 LOADK                            R5 K42 ["MaterialGeneratorCounterEnabled"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K43 ["FFlagMaterialGeneratorCounterEnabled"]
      128 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      130 LOADK                            R5 K44 ["MCPAssistantPlaceID"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K45 ["FFlagMCPAssistantPlaceID"]
      135 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      137 LOADK                            R5 K46 ["MCPAssistantTooManyRequestLog"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagMCPAssistantTooManyRequestLog"]
      142 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      144 LOADK                            R5 K48 ["SendApplicationFieldFromAssistant"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K49 ["FFlagSendApplicationFieldFromAssistant"]
      149 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      151 LOADK                            R5 K50 ["SkipExternalToolsNoDebugMode"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K51 ["FFlagSkipExternalToolsNoDebugMode"]
      156 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      158 LOADK                            R5 K52 ["StudioAssistantCloseTooltip"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K53 ["FFlagStudioAssistantCloseTooltip"]
      163 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      165 LOADK                            R5 K54 ["StudioDialogManagerSuppression"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K55 ["FFlagStudioDialogManagerSuppression"]
      170 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      172 LOADK                            R5 K57 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      173 LOADK                            R6 K58 [300000]
      174 CALL                             R4 2 1
      175 CALL                             R4 0 1
      176 SETTABLEKS                       R4 R3 K59 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      178 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      180 LOADK                            R5 K60 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      181 LOADK                            R6 K61 [25000000]
      182 CALL                             R4 2 1
      183 CALL                             R4 0 1
      184 SETTABLEKS                       R4 R3 K62 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      186 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      188 LOADK                            R5 K63 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      189 LOADN                            R6 30
      190 CALL                             R4 2 1
      191 CALL                             R4 0 1
      192 SETTABLEKS                       R4 R3 K64 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      194 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      196 LOADK                            R5 K65 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      197 LOADN                            R6 3
      198 CALL                             R4 2 1
      199 CALL                             R4 0 1
      200 SETTABLEKS                       R4 R3 K66 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      202 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      204 LOADK                            R5 K67 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      205 LOADN                            R6 8
      206 CALL                             R4 2 1
      207 CALL                             R4 0 1
      208 SETTABLEKS                       R4 R3 K68 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      210 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      212 LOADK                            R5 K69 ["AssistantCreditResetRefreshBufferSeconds"]
      213 LOADN                            R6 5
      214 CALL                             R4 2 1
      215 CALL                             R4 0 1
      216 SETTABLEKS                       R4 R3 K70 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      218 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      220 LOADK                            R5 K71 ["AssistantDisconnectDelaySeconds"]
      221 LOADN                            R6 3
      222 CALL                             R4 2 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K72 ["FIntAssistantDisconnectDelaySeconds"]
      226 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      228 LOADK                            R5 K73 ["AssistantExperimentReadyTimeoutSeconds"]
      229 LOADN                            R6 2
      230 CALL                             R4 2 1
      231 CALL                             R4 0 1
      232 SETTABLEKS                       R4 R3 K74 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      234 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      236 LOADK                            R5 K75 ["AssistantStudioNameCheckInterval"]
      237 LOADN                            R6 10
      238 CALL                             R4 2 1
      239 CALL                             R4 0 1
      240 SETTABLEKS                       R4 R3 K76 ["FIntAssistantStudioNameCheckInterval"]
      242 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      244 LOADK                            R5 K77 ["ConvAIAssistantMaxTokens"]
      245 LOADN                            R6 16000
      246 CALL                             R4 2 1
      247 CALL                             R4 0 1
      248 SETTABLEKS                       R4 R3 K78 ["FIntConvAIAssistantMaxTokens"]
      250 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      252 LOADK                            R5 K79 ["MarkdownErrorEventThrottlingHundredthPercent"]
      253 LOADN                            R6 10000
      254 CALL                             R4 2 1
      255 CALL                             R4 0 1
      256 SETTABLEKS                       R4 R3 K80 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      258 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      260 LOADK                            R5 K81 ["MaterialGenerationServicePollLimit"]
      261 LOADN                            R6 5
      262 CALL                             R4 2 1
      263 CALL                             R4 0 1
      264 SETTABLEKS                       R4 R3 K82 ["FIntMaterialGenerationServicePollLimit"]
      266 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      268 LOADK                            R5 K83 ["MaterialGenerationServiceRePollDelaySeconds"]
      269 LOADN                            R6 10
      270 CALL                             R4 2 1
      271 CALL                             R4 0 1
      272 SETTABLEKS                       R4 R3 K84 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      274 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      276 LOADK                            R5 K85 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      277 LOADN                            R6 15000
      278 CALL                             R4 2 1
      279 CALL                             R4 0 1
      280 SETTABLEKS                       R4 R3 K86 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      282 GETTABLEKS                       R4 R2 K56 ["createGetFInt"]
      284 LOADK                            R5 K87 ["UserMessageSentEventThrottlingHundredthPercent"]
      285 LOADN                            R6 10000
      286 CALL                             R4 2 1
      287 CALL                             R4 0 1
      288 SETTABLEKS                       R4 R3 K88 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      290 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      292 LOADK                            R5 K90 ["AssistantDisableContextCompactionKey"]
      293 LOADK                            R6 K91 ["DisableContextCompaction"]
      294 CALL                             R4 2 1
      295 CALL                             R4 0 1
      296 SETTABLEKS                       R4 R3 K92 ["FStringAssistantDisableContextCompactionKey"]
      298 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      300 LOADK                            R5 K93 ["AssistantDisabledToolsKey"]
      301 LOADK                            R6 K94 ["disabledTools"]
      302 CALL                             R4 2 1
      303 CALL                             R4 0 1
      304 SETTABLEKS                       R4 R3 K95 ["FStringAssistantDisabledToolsKey"]
      306 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      308 LOADK                            R5 K96 ["AssistantGroupNameKey"]
      309 LOADK                            R6 K97 ["GROUP_NAME"]
      310 CALL                             R4 2 1
      311 CALL                             R4 0 1
      312 SETTABLEKS                       R4 R3 K98 ["FStringAssistantGroupNameKey"]
      314 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      316 LOADK                            R5 K99 ["CreditMeteringServiceURLOverride"]
      317 LOADK                            R6 K100 [""]
      318 CALL                             R4 2 1
      319 CALL                             R4 0 1
      320 SETTABLEKS                       R4 R3 K101 ["FStringCreditMeteringServiceURLOverride"]
      322 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      324 LOADK                            R5 K102 ["CubeGenerationGatewayApiKey"]
      325 LOADK                            R6 K100 [""]
      326 CALL                             R4 2 1
      327 CALL                             R4 0 1
      328 SETTABLEKS                       R4 R3 K103 ["FStringCubeGenerationGatewayApiKey"]
      330 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      332 LOADK                            R5 K104 ["CubeGenerationGatewayBaseUrlOverride"]
      333 LOADK                            R6 K100 [""]
      334 CALL                             R4 2 1
      335 CALL                             R4 0 1
      336 SETTABLEKS                       R4 R3 K105 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      338 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      340 LOADK                            R5 K106 ["DebugAssistantStudioSystemMessage"]
      341 LOADK                            R6 K100 [""]
      342 CALL                             R4 2 1
      343 CALL                             R4 0 1
      344 SETTABLEKS                       R4 R3 K107 ["FStringDebugAssistantStudioSystemMessage"]
      346 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      348 LOADK                            R5 K108 ["DebugCASBaseUrlOverride"]
      349 LOADK                            R6 K100 [""]
      350 CALL                             R4 2 1
      351 CALL                             R4 0 1
      352 SETTABLEKS                       R4 R3 K109 ["FStringDebugCASBaseUrlOverride"]
      354 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      356 LOADK                            R5 K110 ["DebugRemoteACPExperimentSpecVersion"]
      357 LOADK                            R6 K100 [""]
      358 CALL                             R4 2 1
      359 CALL                             R4 0 1
      360 SETTABLEKS                       R4 R3 K111 ["FStringDebugRemoteACPExperimentSpecVersion"]
      362 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      364 LOADK                            R5 K112 ["DebugRemoteACPPlaceId"]
      365 LOADK                            R6 K100 [""]
      366 CALL                             R4 2 1
      367 CALL                             R4 0 1
      368 SETTABLEKS                       R4 R3 K113 ["FStringDebugRemoteACPPlaceId"]
      370 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      372 LOADK                            R5 K114 ["DebugRemoteACPUniverseId"]
      373 LOADK                            R6 K100 [""]
      374 CALL                             R4 2 1
      375 CALL                             R4 0 1
      376 SETTABLEKS                       R4 R3 K115 ["FStringDebugRemoteACPUniverseId"]
      378 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      380 LOADK                            R5 K116 ["MCPAssistantThinkingMode"]
      381 LOADK                            R6 K100 [""]
      382 CALL                             R4 2 1
      383 CALL                             R4 0 1
      384 SETTABLEKS                       R4 R3 K117 ["FStringMCPAssistantThinkingMode"]
      386 GETTABLEKS                       R4 R2 K89 ["createGetFString"]
      388 LOADK                            R5 K118 ["NewAssistantExperimentLayer"]
      389 LOADK                            R6 K119 ["Creator.Assistant.MCPAssistant.CreatorId"]
      390 CALL                             R4 2 1
      391 CALL                             R4 0 1
      392 SETTABLEKS                       R4 R3 K120 ["FStringNewAssistantExperimentLayer"]
      394 DUPTABLE                         R6 K122 [{"__index", "__newindex"}]
      395 GETTABLEKS                       R7 R1 K123 ["Flags"]
      397 SETTABLEKS                       R7 R6 K121 ["__index"]
      399 GETTABLEKS                       R7 R1 K123 ["Flags"]
      401 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      403 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      405 MOVE                             R5 R3
      406 GETIMPORT                        R4 K14 [setmetatable]
      408 CALL                             R4 2 1
      409 RETURN                           R4 1
