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
       74 LOADK                            R5 K28 ["AssistantUseLocalCas"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantUseLocalCas"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["AssistantUseNewOpenAPIClients2"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagAssistantUseNewOpenAPIClients"]
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
      137 LOADK                            R5 K46 ["SkipExternalToolsNoDebugMode"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagSkipExternalToolsNoDebugMode"]
      142 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      144 LOADK                            R5 K48 ["StudioAssistantCloseTooltip"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K49 ["FFlagStudioAssistantCloseTooltip"]
      149 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      151 LOADK                            R5 K51 ["AssistantAvatarAutoSetupIdleTimeoutMs"]
      152 LOADK                            R6 K52 [300000]
      153 CALL                             R4 2 1
      154 CALL                             R4 0 1
      155 SETTABLEKS                       R4 R3 K53 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      157 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      159 LOADK                            R5 K54 ["AssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      160 LOADK                            R6 K55 [25000000]
      161 CALL                             R4 2 1
      162 CALL                             R4 0 1
      163 SETTABLEKS                       R4 R3 K56 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
      165 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      167 LOADK                            R5 K57 ["AssistantDisconnectDelaySeconds"]
      168 LOADN                            R6 3
      169 CALL                             R4 2 1
      170 CALL                             R4 0 1
      171 SETTABLEKS                       R4 R3 K58 ["FIntAssistantDisconnectDelaySeconds"]
      173 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      175 LOADK                            R5 K59 ["AssistantExperimentReadyTimeoutSeconds"]
      176 LOADN                            R6 2
      177 CALL                             R4 2 1
      178 CALL                             R4 0 1
      179 SETTABLEKS                       R4 R3 K60 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      181 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      183 LOADK                            R5 K61 ["AssistantStudioNameCheckInterval"]
      184 LOADN                            R6 10
      185 CALL                             R4 2 1
      186 CALL                             R4 0 1
      187 SETTABLEKS                       R4 R3 K62 ["FIntAssistantStudioNameCheckInterval"]
      189 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      191 LOADK                            R5 K63 ["ConvAIAssistantMaxTokens"]
      192 LOADN                            R6 16000
      193 CALL                             R4 2 1
      194 CALL                             R4 0 1
      195 SETTABLEKS                       R4 R3 K64 ["FIntConvAIAssistantMaxTokens"]
      197 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      199 LOADK                            R5 K65 ["MarkdownErrorEventThrottlingHundredthPercent"]
      200 LOADN                            R6 10000
      201 CALL                             R4 2 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K66 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      205 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      207 LOADK                            R5 K67 ["MaterialGenerationServicePollLimit"]
      208 LOADN                            R6 5
      209 CALL                             R4 2 1
      210 CALL                             R4 0 1
      211 SETTABLEKS                       R4 R3 K68 ["FIntMaterialGenerationServicePollLimit"]
      213 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      215 LOADK                            R5 K69 ["MaterialGenerationServiceRePollDelaySeconds"]
      216 LOADN                            R6 10
      217 CALL                             R4 2 1
      218 CALL                             R4 0 1
      219 SETTABLEKS                       R4 R3 K70 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      221 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      223 LOADK                            R5 K71 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      224 LOADN                            R6 15000
      225 CALL                             R4 2 1
      226 CALL                             R4 0 1
      227 SETTABLEKS                       R4 R3 K72 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      229 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      231 LOADK                            R5 K73 ["UserMessageSentEventThrottlingHundredthPercent"]
      232 LOADN                            R6 10000
      233 CALL                             R4 2 1
      234 CALL                             R4 0 1
      235 SETTABLEKS                       R4 R3 K74 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      237 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      239 LOADK                            R5 K76 ["AssistantDisableContextCompactionKey"]
      240 LOADK                            R6 K77 ["DisableContextCompaction"]
      241 CALL                             R4 2 1
      242 CALL                             R4 0 1
      243 SETTABLEKS                       R4 R3 K78 ["FStringAssistantDisableContextCompactionKey"]
      245 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      247 LOADK                            R5 K79 ["AssistantDisabledToolsKey"]
      248 LOADK                            R6 K80 ["disabledTools"]
      249 CALL                             R4 2 1
      250 CALL                             R4 0 1
      251 SETTABLEKS                       R4 R3 K81 ["FStringAssistantDisabledToolsKey"]
      253 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      255 LOADK                            R5 K82 ["AssistantGroupNameKey"]
      256 LOADK                            R6 K83 ["GROUP_NAME"]
      257 CALL                             R4 2 1
      258 CALL                             R4 0 1
      259 SETTABLEKS                       R4 R3 K84 ["FStringAssistantGroupNameKey"]
      261 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      263 LOADK                            R5 K85 ["DebugAssistantStudioSystemMessage"]
      264 LOADK                            R6 K86 [""]
      265 CALL                             R4 2 1
      266 CALL                             R4 0 1
      267 SETTABLEKS                       R4 R3 K87 ["FStringDebugAssistantStudioSystemMessage"]
      269 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      271 LOADK                            R5 K88 ["DebugCASBaseUrlOverride"]
      272 LOADK                            R6 K86 [""]
      273 CALL                             R4 2 1
      274 CALL                             R4 0 1
      275 SETTABLEKS                       R4 R3 K89 ["FStringDebugCASBaseUrlOverride"]
      277 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      279 LOADK                            R5 K90 ["DebugRemoteACPExperimentSpecVersion"]
      280 LOADK                            R6 K86 [""]
      281 CALL                             R4 2 1
      282 CALL                             R4 0 1
      283 SETTABLEKS                       R4 R3 K91 ["FStringDebugRemoteACPExperimentSpecVersion"]
      285 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      287 LOADK                            R5 K92 ["DebugRemoteACPPlaceId"]
      288 LOADK                            R6 K86 [""]
      289 CALL                             R4 2 1
      290 CALL                             R4 0 1
      291 SETTABLEKS                       R4 R3 K93 ["FStringDebugRemoteACPPlaceId"]
      293 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      295 LOADK                            R5 K94 ["DebugRemoteACPUniverseId"]
      296 LOADK                            R6 K86 [""]
      297 CALL                             R4 2 1
      298 CALL                             R4 0 1
      299 SETTABLEKS                       R4 R3 K95 ["FStringDebugRemoteACPUniverseId"]
      301 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      303 LOADK                            R5 K96 ["MCPAssistantThinkingMode"]
      304 LOADK                            R6 K86 [""]
      305 CALL                             R4 2 1
      306 CALL                             R4 0 1
      307 SETTABLEKS                       R4 R3 K97 ["FStringMCPAssistantThinkingMode"]
      309 GETTABLEKS                       R4 R2 K75 ["createGetFString"]
      311 LOADK                            R5 K98 ["NewAssistantExperimentLayer"]
      312 LOADK                            R6 K99 ["Creator.Assistant.MCPAssistant.CreatorId"]
      313 CALL                             R4 2 1
      314 CALL                             R4 0 1
      315 SETTABLEKS                       R4 R3 K100 ["FStringNewAssistantExperimentLayer"]
      317 DUPTABLE                         R6 K102 [{"__index", "__newindex"}]
      318 GETTABLEKS                       R7 R1 K103 ["Flags"]
      320 SETTABLEKS                       R7 R6 K101 ["__index"]
      322 GETTABLEKS                       R7 R1 K103 ["Flags"]
      324 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      326 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      328 MOVE                             R5 R3
      329 GETIMPORT                        R4 K14 [setmetatable]
      331 CALL                             R4 2 1
      332 RETURN                           R4 1
