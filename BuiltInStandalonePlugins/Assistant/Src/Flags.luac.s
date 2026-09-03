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
       39 LOADK                            R5 K18 ["AssistantFixToolDisappear2"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K19 ["FFlagAssistantFixToolDisappear"]
       44 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       46 LOADK                            R5 K20 ["AssistantGetPlayStateFromMDI"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K21 ["FFlagAssistantGetPlayStateFromMDI"]
       51 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       53 LOADK                            R5 K22 ["AssistantLuaMaterialGenerator2"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K23 ["FFlagAssistantLuaMaterialGenerator"]
       58 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       60 LOADK                            R5 K24 ["AssistantMcpStudioIdRouting"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K25 ["FFlagAssistantMcpStudioIdRouting"]
       65 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       67 LOADK                            R5 K26 ["AssistantNotificationManager"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K27 ["FFlagAssistantNotificationManager"]
       72 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       74 LOADK                            R5 K28 ["AssistantQualityChangeWidgetTitle"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantQualityChangeWidgetTitle"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["AssistantRetryMessageLoadWithSmallerLimit"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
       86 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       88 LOADK                            R5 K32 ["AssistantUseNewOpenAPIClients2"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K33 ["FFlagAssistantUseNewOpenAPIClients"]
       93 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       95 LOADK                            R5 K34 ["AssistantDisableSafeEmptyTableJsonEncode"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K35 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
      100 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      102 LOADK                            R5 K36 ["DebugAssistantCreditMeteringLogging"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K37 ["FFlagDebugAssistantCreditMeteringLogging"]
      107 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      109 LOADK                            R5 K38 ["DebugAssistantForceCloseTooltip"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K39 ["FFlagDebugAssistantForceCloseTooltip"]
      114 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      116 LOADK                            R5 K40 ["FixTargetIsNotReachable"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K41 ["FFlagFixTargetIsNotReachable"]
      121 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      123 LOADK                            R5 K42 ["GetOrCreateUniqueIdMethod2"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K43 ["FFlagGetOrCreateUniqueIdMethod"]
      128 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      130 LOADK                            R5 K44 ["IsLuobuBuild"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K45 ["FFlagIsLuobuBuild"]
      135 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      137 LOADK                            R5 K46 ["MaterialGeneratorCounterEnabled"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagMaterialGeneratorCounterEnabled"]
      142 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      144 LOADK                            R5 K48 ["MCPAssistantPlaceID"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K49 ["FFlagMCPAssistantPlaceID"]
      149 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      151 LOADK                            R5 K50 ["MCPAssistantTooManyRequestLog"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K51 ["FFlagMCPAssistantTooManyRequestLog"]
      156 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      158 LOADK                            R5 K52 ["SendApplicationFieldFromAssistant"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K53 ["FFlagSendApplicationFieldFromAssistant"]
      163 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      165 LOADK                            R5 K54 ["SkipExternalToolsNoDebugMode"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K55 ["FFlagSkipExternalToolsNoDebugMode"]
      170 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      172 LOADK                            R5 K56 ["StudioAssistantCloseTooltip"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K57 ["FFlagStudioAssistantCloseTooltip"]
      177 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      179 LOADK                            R5 K59 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      180 LOADK                            R6 K60 [300000]
      181 CALL                             R4 2 1
      182 CALL                             R4 0 1
      183 SETTABLEKS                       R4 R3 K61 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      185 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      187 LOADK                            R5 K62 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      188 LOADK                            R6 K63 [25000000]
      189 CALL                             R4 2 1
      190 CALL                             R4 0 1
      191 SETTABLEKS                       R4 R3 K64 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      193 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      195 LOADK                            R5 K65 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      196 LOADN                            R6 30
      197 CALL                             R4 2 1
      198 CALL                             R4 0 1
      199 SETTABLEKS                       R4 R3 K66 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      201 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      203 LOADK                            R5 K67 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      204 LOADN                            R6 3
      205 CALL                             R4 2 1
      206 CALL                             R4 0 1
      207 SETTABLEKS                       R4 R3 K68 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      209 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      211 LOADK                            R5 K69 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      212 LOADN                            R6 8
      213 CALL                             R4 2 1
      214 CALL                             R4 0 1
      215 SETTABLEKS                       R4 R3 K70 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      217 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      219 LOADK                            R5 K71 ["AssistantCreditResetRefreshBufferSeconds"]
      220 LOADN                            R6 5
      221 CALL                             R4 2 1
      222 CALL                             R4 0 1
      223 SETTABLEKS                       R4 R3 K72 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      225 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      227 LOADK                            R5 K73 ["AssistantDisconnectDelaySeconds"]
      228 LOADN                            R6 3
      229 CALL                             R4 2 1
      230 CALL                             R4 0 1
      231 SETTABLEKS                       R4 R3 K74 ["FIntAssistantDisconnectDelaySeconds"]
      233 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      235 LOADK                            R5 K75 ["AssistantExperimentReadyTimeoutSeconds"]
      236 LOADN                            R6 2
      237 CALL                             R4 2 1
      238 CALL                             R4 0 1
      239 SETTABLEKS                       R4 R3 K76 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      241 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      243 LOADK                            R5 K77 ["AssistantStudioNameCheckInterval"]
      244 LOADN                            R6 10
      245 CALL                             R4 2 1
      246 CALL                             R4 0 1
      247 SETTABLEKS                       R4 R3 K78 ["FIntAssistantStudioNameCheckInterval"]
      249 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      251 LOADK                            R5 K79 ["ConvAIAssistantMaxTokens"]
      252 LOADN                            R6 16000
      253 CALL                             R4 2 1
      254 CALL                             R4 0 1
      255 SETTABLEKS                       R4 R3 K80 ["FIntConvAIAssistantMaxTokens"]
      257 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      259 LOADK                            R5 K81 ["MarkdownErrorEventThrottlingHundredthPercent"]
      260 LOADN                            R6 10000
      261 CALL                             R4 2 1
      262 CALL                             R4 0 1
      263 SETTABLEKS                       R4 R3 K82 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      265 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      267 LOADK                            R5 K83 ["MaterialGenerationServicePollLimit"]
      268 LOADN                            R6 5
      269 CALL                             R4 2 1
      270 CALL                             R4 0 1
      271 SETTABLEKS                       R4 R3 K84 ["FIntMaterialGenerationServicePollLimit"]
      273 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      275 LOADK                            R5 K85 ["MaterialGenerationServiceRePollDelaySeconds"]
      276 LOADN                            R6 10
      277 CALL                             R4 2 1
      278 CALL                             R4 0 1
      279 SETTABLEKS                       R4 R3 K86 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      281 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      283 LOADK                            R5 K87 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      284 LOADN                            R6 15000
      285 CALL                             R4 2 1
      286 CALL                             R4 0 1
      287 SETTABLEKS                       R4 R3 K88 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      289 GETTABLEKS                       R4 R2 K58 ["createGetFInt"]
      291 LOADK                            R5 K89 ["UserMessageSentEventThrottlingHundredthPercent"]
      292 LOADN                            R6 10000
      293 CALL                             R4 2 1
      294 CALL                             R4 0 1
      295 SETTABLEKS                       R4 R3 K90 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      297 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      299 LOADK                            R5 K92 ["AssistantDisableContextCompactionKey"]
      300 LOADK                            R6 K93 ["DisableContextCompaction"]
      301 CALL                             R4 2 1
      302 CALL                             R4 0 1
      303 SETTABLEKS                       R4 R3 K94 ["FStringAssistantDisableContextCompactionKey"]
      305 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      307 LOADK                            R5 K95 ["AssistantDisabledToolsKey"]
      308 LOADK                            R6 K96 ["disabledTools"]
      309 CALL                             R4 2 1
      310 CALL                             R4 0 1
      311 SETTABLEKS                       R4 R3 K97 ["FStringAssistantDisabledToolsKey"]
      313 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      315 LOADK                            R5 K98 ["AssistantGroupNameKey"]
      316 LOADK                            R6 K99 ["GROUP_NAME"]
      317 CALL                             R4 2 1
      318 CALL                             R4 0 1
      319 SETTABLEKS                       R4 R3 K100 ["FStringAssistantGroupNameKey"]
      321 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      323 LOADK                            R5 K101 ["CreditMeteringServiceURLOverride"]
      324 LOADK                            R6 K102 [""]
      325 CALL                             R4 2 1
      326 CALL                             R4 0 1
      327 SETTABLEKS                       R4 R3 K103 ["FStringCreditMeteringServiceURLOverride"]
      329 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      331 LOADK                            R5 K104 ["CubeGenerationGatewayApiKey"]
      332 LOADK                            R6 K102 [""]
      333 CALL                             R4 2 1
      334 CALL                             R4 0 1
      335 SETTABLEKS                       R4 R3 K105 ["FStringCubeGenerationGatewayApiKey"]
      337 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      339 LOADK                            R5 K106 ["CubeGenerationGatewayBaseUrlOverride"]
      340 LOADK                            R6 K102 [""]
      341 CALL                             R4 2 1
      342 CALL                             R4 0 1
      343 SETTABLEKS                       R4 R3 K107 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      345 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      347 LOADK                            R5 K108 ["DebugAssistantStudioSystemMessage"]
      348 LOADK                            R6 K102 [""]
      349 CALL                             R4 2 1
      350 CALL                             R4 0 1
      351 SETTABLEKS                       R4 R3 K109 ["FStringDebugAssistantStudioSystemMessage"]
      353 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      355 LOADK                            R5 K110 ["DebugCASBaseUrlOverride"]
      356 LOADK                            R6 K102 [""]
      357 CALL                             R4 2 1
      358 CALL                             R4 0 1
      359 SETTABLEKS                       R4 R3 K111 ["FStringDebugCASBaseUrlOverride"]
      361 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      363 LOADK                            R5 K112 ["DebugRemoteACPExperimentSpecVersion"]
      364 LOADK                            R6 K102 [""]
      365 CALL                             R4 2 1
      366 CALL                             R4 0 1
      367 SETTABLEKS                       R4 R3 K113 ["FStringDebugRemoteACPExperimentSpecVersion"]
      369 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      371 LOADK                            R5 K114 ["DebugRemoteACPPlaceId"]
      372 LOADK                            R6 K102 [""]
      373 CALL                             R4 2 1
      374 CALL                             R4 0 1
      375 SETTABLEKS                       R4 R3 K115 ["FStringDebugRemoteACPPlaceId"]
      377 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      379 LOADK                            R5 K116 ["DebugRemoteACPUniverseId"]
      380 LOADK                            R6 K102 [""]
      381 CALL                             R4 2 1
      382 CALL                             R4 0 1
      383 SETTABLEKS                       R4 R3 K117 ["FStringDebugRemoteACPUniverseId"]
      385 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      387 LOADK                            R5 K118 ["MCPAssistantThinkingMode"]
      388 LOADK                            R6 K102 [""]
      389 CALL                             R4 2 1
      390 CALL                             R4 0 1
      391 SETTABLEKS                       R4 R3 K119 ["FStringMCPAssistantThinkingMode"]
      393 GETTABLEKS                       R4 R2 K91 ["createGetFString"]
      395 LOADK                            R5 K120 ["NewAssistantExperimentLayer"]
      396 LOADK                            R6 K121 ["Creator.Assistant.MCPAssistant.CreatorId"]
      397 CALL                             R4 2 1
      398 CALL                             R4 0 1
      399 SETTABLEKS                       R4 R3 K122 ["FStringNewAssistantExperimentLayer"]
      401 DUPTABLE                         R6 K124 [{"__index", "__newindex"}]
      402 GETTABLEKS                       R7 R1 K125 ["Flags"]
      404 SETTABLEKS                       R7 R6 K123 ["__index"]
      406 GETTABLEKS                       R7 R1 K125 ["Flags"]
      408 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      410 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      412 MOVE                             R5 R3
      413 GETIMPORT                        R4 K14 [setmetatable]
      415 CALL                             R4 2 1
      416 RETURN                           R4 1
