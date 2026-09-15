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
       74 LOADK                            R5 K28 ["AssistantUseNewOpenAPIClients2"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantUseNewOpenAPIClients"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["DebugAssistantCreditMeteringLogging"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagDebugAssistantCreditMeteringLogging"]
       86 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       88 LOADK                            R5 K32 ["DebugAssistantForceCloseTooltip"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K33 ["FFlagDebugAssistantForceCloseTooltip"]
       93 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       95 LOADK                            R5 K34 ["FixTargetIsNotReachable"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K35 ["FFlagFixTargetIsNotReachable"]
      100 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      102 LOADK                            R5 K36 ["GetOrCreateUniqueIdMethod2"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K37 ["FFlagGetOrCreateUniqueIdMethod"]
      107 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      109 LOADK                            R5 K38 ["IsLuobuBuild"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K39 ["FFlagIsLuobuBuild"]
      114 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      116 LOADK                            R5 K40 ["MaterialGeneratorCounterEnabled"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K41 ["FFlagMaterialGeneratorCounterEnabled"]
      121 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      123 LOADK                            R5 K42 ["MCPAssistantPlaceID"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K43 ["FFlagMCPAssistantPlaceID"]
      128 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      130 LOADK                            R5 K44 ["MCPAssistantTooManyRequestLog"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K45 ["FFlagMCPAssistantTooManyRequestLog"]
      135 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      137 LOADK                            R5 K46 ["SendApplicationFieldFromAssistant"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagSendApplicationFieldFromAssistant"]
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
      156 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      158 LOADK                            R5 K52 ["StudioDialogManagerSuppression"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K53 ["FFlagStudioDialogManagerSuppression"]
      163 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      165 LOADK                            R5 K55 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      166 LOADK                            R6 K56 [300000]
      167 CALL                             R4 2 1
      168 CALL                             R4 0 1
      169 SETTABLEKS                       R4 R3 K57 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      171 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      173 LOADK                            R5 K58 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      174 LOADK                            R6 K59 [25000000]
      175 CALL                             R4 2 1
      176 CALL                             R4 0 1
      177 SETTABLEKS                       R4 R3 K60 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      179 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      181 LOADK                            R5 K61 ["AssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      182 LOADN                            R6 30
      183 CALL                             R4 2 1
      184 CALL                             R4 0 1
      185 SETTABLEKS                       R4 R3 K62 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
      187 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      189 LOADK                            R5 K63 ["AssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      190 LOADN                            R6 3
      191 CALL                             R4 2 1
      192 CALL                             R4 0 1
      193 SETTABLEKS                       R4 R3 K64 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
      195 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      197 LOADK                            R5 K65 ["AssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      198 LOADN                            R6 8
      199 CALL                             R4 2 1
      200 CALL                             R4 0 1
      201 SETTABLEKS                       R4 R3 K66 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
      203 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      205 LOADK                            R5 K67 ["AssistantCreditResetRefreshBufferSeconds"]
      206 LOADN                            R6 5
      207 CALL                             R4 2 1
      208 CALL                             R4 0 1
      209 SETTABLEKS                       R4 R3 K68 ["FIntAssistantCreditResetRefreshBufferSeconds"]
      211 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      213 LOADK                            R5 K69 ["AssistantDisconnectDelaySeconds"]
      214 LOADN                            R6 3
      215 CALL                             R4 2 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K70 ["FIntAssistantDisconnectDelaySeconds"]
      219 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      221 LOADK                            R5 K71 ["AssistantExperimentReadyTimeoutSeconds"]
      222 LOADN                            R6 2
      223 CALL                             R4 2 1
      224 CALL                             R4 0 1
      225 SETTABLEKS                       R4 R3 K72 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      227 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      229 LOADK                            R5 K73 ["AssistantStudioNameCheckInterval"]
      230 LOADN                            R6 10
      231 CALL                             R4 2 1
      232 CALL                             R4 0 1
      233 SETTABLEKS                       R4 R3 K74 ["FIntAssistantStudioNameCheckInterval"]
      235 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      237 LOADK                            R5 K75 ["ConvAIAssistantMaxTokens"]
      238 LOADN                            R6 16000
      239 CALL                             R4 2 1
      240 CALL                             R4 0 1
      241 SETTABLEKS                       R4 R3 K76 ["FIntConvAIAssistantMaxTokens"]
      243 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      245 LOADK                            R5 K77 ["MarkdownErrorEventThrottlingHundredthPercent"]
      246 LOADN                            R6 10000
      247 CALL                             R4 2 1
      248 CALL                             R4 0 1
      249 SETTABLEKS                       R4 R3 K78 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      251 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      253 LOADK                            R5 K79 ["MaterialGenerationServicePollLimit"]
      254 LOADN                            R6 5
      255 CALL                             R4 2 1
      256 CALL                             R4 0 1
      257 SETTABLEKS                       R4 R3 K80 ["FIntMaterialGenerationServicePollLimit"]
      259 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      261 LOADK                            R5 K81 ["MaterialGenerationServiceRePollDelaySeconds"]
      262 LOADN                            R6 10
      263 CALL                             R4 2 1
      264 CALL                             R4 0 1
      265 SETTABLEKS                       R4 R3 K82 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      267 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      269 LOADK                            R5 K83 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      270 LOADN                            R6 15000
      271 CALL                             R4 2 1
      272 CALL                             R4 0 1
      273 SETTABLEKS                       R4 R3 K84 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      275 GETTABLEKS                       R4 R2 K54 ["createGetFInt"]
      277 LOADK                            R5 K85 ["UserMessageSentEventThrottlingHundredthPercent"]
      278 LOADN                            R6 10000
      279 CALL                             R4 2 1
      280 CALL                             R4 0 1
      281 SETTABLEKS                       R4 R3 K86 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      283 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      285 LOADK                            R5 K88 ["AssistantDisableContextCompactionKey"]
      286 LOADK                            R6 K89 ["DisableContextCompaction"]
      287 CALL                             R4 2 1
      288 CALL                             R4 0 1
      289 SETTABLEKS                       R4 R3 K90 ["FStringAssistantDisableContextCompactionKey"]
      291 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      293 LOADK                            R5 K91 ["AssistantDisabledToolsKey"]
      294 LOADK                            R6 K92 ["disabledTools"]
      295 CALL                             R4 2 1
      296 CALL                             R4 0 1
      297 SETTABLEKS                       R4 R3 K93 ["FStringAssistantDisabledToolsKey"]
      299 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      301 LOADK                            R5 K94 ["AssistantGroupNameKey"]
      302 LOADK                            R6 K95 ["GROUP_NAME"]
      303 CALL                             R4 2 1
      304 CALL                             R4 0 1
      305 SETTABLEKS                       R4 R3 K96 ["FStringAssistantGroupNameKey"]
      307 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      309 LOADK                            R5 K97 ["CreditMeteringServiceURLOverride"]
      310 LOADK                            R6 K98 [""]
      311 CALL                             R4 2 1
      312 CALL                             R4 0 1
      313 SETTABLEKS                       R4 R3 K99 ["FStringCreditMeteringServiceURLOverride"]
      315 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      317 LOADK                            R5 K100 ["CubeGenerationGatewayApiKey"]
      318 LOADK                            R6 K98 [""]
      319 CALL                             R4 2 1
      320 CALL                             R4 0 1
      321 SETTABLEKS                       R4 R3 K101 ["FStringCubeGenerationGatewayApiKey"]
      323 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      325 LOADK                            R5 K102 ["CubeGenerationGatewayBaseUrlOverride"]
      326 LOADK                            R6 K98 [""]
      327 CALL                             R4 2 1
      328 CALL                             R4 0 1
      329 SETTABLEKS                       R4 R3 K103 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      331 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      333 LOADK                            R5 K104 ["DebugAssistantStudioSystemMessage"]
      334 LOADK                            R6 K98 [""]
      335 CALL                             R4 2 1
      336 CALL                             R4 0 1
      337 SETTABLEKS                       R4 R3 K105 ["FStringDebugAssistantStudioSystemMessage"]
      339 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      341 LOADK                            R5 K106 ["DebugCASBaseUrlOverride"]
      342 LOADK                            R6 K98 [""]
      343 CALL                             R4 2 1
      344 CALL                             R4 0 1
      345 SETTABLEKS                       R4 R3 K107 ["FStringDebugCASBaseUrlOverride"]
      347 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      349 LOADK                            R5 K108 ["DebugRemoteACPExperimentSpecVersion"]
      350 LOADK                            R6 K98 [""]
      351 CALL                             R4 2 1
      352 CALL                             R4 0 1
      353 SETTABLEKS                       R4 R3 K109 ["FStringDebugRemoteACPExperimentSpecVersion"]
      355 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      357 LOADK                            R5 K110 ["DebugRemoteACPPlaceId"]
      358 LOADK                            R6 K98 [""]
      359 CALL                             R4 2 1
      360 CALL                             R4 0 1
      361 SETTABLEKS                       R4 R3 K111 ["FStringDebugRemoteACPPlaceId"]
      363 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      365 LOADK                            R5 K112 ["DebugRemoteACPUniverseId"]
      366 LOADK                            R6 K98 [""]
      367 CALL                             R4 2 1
      368 CALL                             R4 0 1
      369 SETTABLEKS                       R4 R3 K113 ["FStringDebugRemoteACPUniverseId"]
      371 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      373 LOADK                            R5 K114 ["MCPAssistantThinkingMode"]
      374 LOADK                            R6 K98 [""]
      375 CALL                             R4 2 1
      376 CALL                             R4 0 1
      377 SETTABLEKS                       R4 R3 K115 ["FStringMCPAssistantThinkingMode"]
      379 GETTABLEKS                       R4 R2 K87 ["createGetFString"]
      381 LOADK                            R5 K116 ["NewAssistantExperimentLayer"]
      382 LOADK                            R6 K117 ["Creator.Assistant.MCPAssistant.CreatorId"]
      383 CALL                             R4 2 1
      384 CALL                             R4 0 1
      385 SETTABLEKS                       R4 R3 K118 ["FStringNewAssistantExperimentLayer"]
      387 DUPTABLE                         R6 K120 [{"__index", "__newindex"}]
      388 GETTABLEKS                       R7 R1 K121 ["Flags"]
      390 SETTABLEKS                       R7 R6 K119 ["__index"]
      392 GETTABLEKS                       R7 R1 K121 ["Flags"]
      394 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      396 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      398 MOVE                             R5 R3
      399 GETIMPORT                        R4 K14 [setmetatable]
      401 CALL                             R4 2 1
      402 RETURN                           R4 1
