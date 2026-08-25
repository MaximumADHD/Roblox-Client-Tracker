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
       32 LOADK                            R5 K16 ["AssistantFixToolDisappear2"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K17 ["FFlagAssistantFixToolDisappear"]
       37 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       39 LOADK                            R5 K18 ["AssistantGetPlayStateFromMDI"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K19 ["FFlagAssistantGetPlayStateFromMDI"]
       44 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       46 LOADK                            R5 K20 ["AssistantLuaMaterialGenerator2"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K21 ["FFlagAssistantLuaMaterialGenerator"]
       51 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       53 LOADK                            R5 K22 ["AssistantMcpStudioIdRouting"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K23 ["FFlagAssistantMcpStudioIdRouting"]
       58 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       60 LOADK                            R5 K24 ["AssistantNotificationManager"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K25 ["FFlagAssistantNotificationManager"]
       65 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       67 LOADK                            R5 K26 ["AssistantQualityChangeWidgetTitle"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K27 ["FFlagAssistantQualityChangeWidgetTitle"]
       72 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       74 LOADK                            R5 K28 ["AssistantUseNewOpenAPIClients2"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantUseNewOpenAPIClients"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["AssistantDisableSafeEmptyTableJsonEncode"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
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
      144 LOADK                            R5 K48 ["SkipExternalToolsNoDebugMode"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K49 ["FFlagSkipExternalToolsNoDebugMode"]
      149 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      151 LOADK                            R5 K50 ["StudioAssistantCloseTooltip"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K51 ["FFlagStudioAssistantCloseTooltip"]
      156 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      158 LOADK                            R5 K53 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      159 LOADK                            R6 K54 [300000]
      160 CALL                             R4 2 1
      161 CALL                             R4 0 1
      162 SETTABLEKS                       R4 R3 K55 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      164 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      166 LOADK                            R5 K56 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      167 LOADK                            R6 K57 [25000000]
      168 CALL                             R4 2 1
      169 CALL                             R4 0 1
      170 SETTABLEKS                       R4 R3 K58 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      172 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      174 LOADK                            R5 K59 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      175 LOADN                            R6 30
      176 CALL                             R4 2 1
      177 CALL                             R4 0 1
      178 SETTABLEKS                       R4 R3 K60 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      180 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      182 LOADK                            R5 K61 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      183 LOADN                            R6 3
      184 CALL                             R4 2 1
      185 CALL                             R4 0 1
      186 SETTABLEKS                       R4 R3 K62 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      188 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      190 LOADK                            R5 K63 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      191 LOADN                            R6 8
      192 CALL                             R4 2 1
      193 CALL                             R4 0 1
      194 SETTABLEKS                       R4 R3 K64 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      196 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      198 LOADK                            R5 K65 ["AssistantCreditResetRefreshBufferSeconds"]
      199 LOADN                            R6 5
      200 CALL                             R4 2 1
      201 CALL                             R4 0 1
      202 SETTABLEKS                       R4 R3 K66 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      204 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      206 LOADK                            R5 K67 ["AssistantDisconnectDelaySeconds"]
      207 LOADN                            R6 3
      208 CALL                             R4 2 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K68 ["FIntAssistantDisconnectDelaySeconds"]
      212 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      214 LOADK                            R5 K69 ["AssistantExperimentReadyTimeoutSeconds"]
      215 LOADN                            R6 2
      216 CALL                             R4 2 1
      217 CALL                             R4 0 1
      218 SETTABLEKS                       R4 R3 K70 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      220 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      222 LOADK                            R5 K71 ["AssistantStudioNameCheckInterval"]
      223 LOADN                            R6 10
      224 CALL                             R4 2 1
      225 CALL                             R4 0 1
      226 SETTABLEKS                       R4 R3 K72 ["FIntAssistantStudioNameCheckInterval"]
      228 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      230 LOADK                            R5 K73 ["ConvAIAssistantMaxTokens"]
      231 LOADN                            R6 16000
      232 CALL                             R4 2 1
      233 CALL                             R4 0 1
      234 SETTABLEKS                       R4 R3 K74 ["FIntConvAIAssistantMaxTokens"]
      236 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      238 LOADK                            R5 K75 ["MarkdownErrorEventThrottlingHundredthPercent"]
      239 LOADN                            R6 10000
      240 CALL                             R4 2 1
      241 CALL                             R4 0 1
      242 SETTABLEKS                       R4 R3 K76 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      244 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      246 LOADK                            R5 K77 ["MaterialGenerationServicePollLimit"]
      247 LOADN                            R6 5
      248 CALL                             R4 2 1
      249 CALL                             R4 0 1
      250 SETTABLEKS                       R4 R3 K78 ["FIntMaterialGenerationServicePollLimit"]
      252 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      254 LOADK                            R5 K79 ["MaterialGenerationServiceRePollDelaySeconds"]
      255 LOADN                            R6 10
      256 CALL                             R4 2 1
      257 CALL                             R4 0 1
      258 SETTABLEKS                       R4 R3 K80 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      260 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      262 LOADK                            R5 K81 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      263 LOADN                            R6 15000
      264 CALL                             R4 2 1
      265 CALL                             R4 0 1
      266 SETTABLEKS                       R4 R3 K82 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      268 GETTABLEKS                       R4 R2 K52 ["createGetFInt"]
      270 LOADK                            R5 K83 ["UserMessageSentEventThrottlingHundredthPercent"]
      271 LOADN                            R6 10000
      272 CALL                             R4 2 1
      273 CALL                             R4 0 1
      274 SETTABLEKS                       R4 R3 K84 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      276 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      278 LOADK                            R5 K86 ["AssistantDisableContextCompactionKey"]
      279 LOADK                            R6 K87 ["DisableContextCompaction"]
      280 CALL                             R4 2 1
      281 CALL                             R4 0 1
      282 SETTABLEKS                       R4 R3 K88 ["FStringAssistantDisableContextCompactionKey"]
      284 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      286 LOADK                            R5 K89 ["AssistantDisabledToolsKey"]
      287 LOADK                            R6 K90 ["disabledTools"]
      288 CALL                             R4 2 1
      289 CALL                             R4 0 1
      290 SETTABLEKS                       R4 R3 K91 ["FStringAssistantDisabledToolsKey"]
      292 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      294 LOADK                            R5 K92 ["AssistantGroupNameKey"]
      295 LOADK                            R6 K93 ["GROUP_NAME"]
      296 CALL                             R4 2 1
      297 CALL                             R4 0 1
      298 SETTABLEKS                       R4 R3 K94 ["FStringAssistantGroupNameKey"]
      300 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      302 LOADK                            R5 K95 ["CreditMeteringServiceURLOverride"]
      303 LOADK                            R6 K96 [""]
      304 CALL                             R4 2 1
      305 CALL                             R4 0 1
      306 SETTABLEKS                       R4 R3 K97 ["FStringCreditMeteringServiceURLOverride"]
      308 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      310 LOADK                            R5 K98 ["CubeGenerationGatewayApiKey"]
      311 LOADK                            R6 K96 [""]
      312 CALL                             R4 2 1
      313 CALL                             R4 0 1
      314 SETTABLEKS                       R4 R3 K99 ["FStringCubeGenerationGatewayApiKey"]
      316 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      318 LOADK                            R5 K100 ["CubeGenerationGatewayBaseUrlOverride"]
      319 LOADK                            R6 K96 [""]
      320 CALL                             R4 2 1
      321 CALL                             R4 0 1
      322 SETTABLEKS                       R4 R3 K101 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      324 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      326 LOADK                            R5 K102 ["DebugAssistantStudioSystemMessage"]
      327 LOADK                            R6 K96 [""]
      328 CALL                             R4 2 1
      329 CALL                             R4 0 1
      330 SETTABLEKS                       R4 R3 K103 ["FStringDebugAssistantStudioSystemMessage"]
      332 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      334 LOADK                            R5 K104 ["DebugCASBaseUrlOverride"]
      335 LOADK                            R6 K96 [""]
      336 CALL                             R4 2 1
      337 CALL                             R4 0 1
      338 SETTABLEKS                       R4 R3 K105 ["FStringDebugCASBaseUrlOverride"]
      340 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      342 LOADK                            R5 K106 ["DebugRemoteACPExperimentSpecVersion"]
      343 LOADK                            R6 K96 [""]
      344 CALL                             R4 2 1
      345 CALL                             R4 0 1
      346 SETTABLEKS                       R4 R3 K107 ["FStringDebugRemoteACPExperimentSpecVersion"]
      348 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      350 LOADK                            R5 K108 ["DebugRemoteACPPlaceId"]
      351 LOADK                            R6 K96 [""]
      352 CALL                             R4 2 1
      353 CALL                             R4 0 1
      354 SETTABLEKS                       R4 R3 K109 ["FStringDebugRemoteACPPlaceId"]
      356 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      358 LOADK                            R5 K110 ["DebugRemoteACPUniverseId"]
      359 LOADK                            R6 K96 [""]
      360 CALL                             R4 2 1
      361 CALL                             R4 0 1
      362 SETTABLEKS                       R4 R3 K111 ["FStringDebugRemoteACPUniverseId"]
      364 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      366 LOADK                            R5 K112 ["MCPAssistantThinkingMode"]
      367 LOADK                            R6 K96 [""]
      368 CALL                             R4 2 1
      369 CALL                             R4 0 1
      370 SETTABLEKS                       R4 R3 K113 ["FStringMCPAssistantThinkingMode"]
      372 GETTABLEKS                       R4 R2 K85 ["createGetFString"]
      374 LOADK                            R5 K114 ["NewAssistantExperimentLayer"]
      375 LOADK                            R6 K115 ["Creator.Assistant.MCPAssistant.CreatorId"]
      376 CALL                             R4 2 1
      377 CALL                             R4 0 1
      378 SETTABLEKS                       R4 R3 K116 ["FStringNewAssistantExperimentLayer"]
      380 DUPTABLE                         R6 K118 [{"__index", "__newindex"}]
      381 GETTABLEKS                       R7 R1 K119 ["Flags"]
      383 SETTABLEKS                       R7 R6 K117 ["__index"]
      385 GETTABLEKS                       R7 R1 K119 ["Flags"]
      387 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      389 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      391 MOVE                             R5 R3
      392 GETIMPORT                        R4 K14 [setmetatable]
      394 CALL                             R4 2 1
      395 RETURN                           R4 1
