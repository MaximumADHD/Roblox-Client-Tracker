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
       18 NEWTABLE                         R4 32 0
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
       53 LOADK                            R5 K22 ["AssistantNotificationManager"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K23 ["FFlagAssistantNotificationManager"]
       58 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       60 LOADK                            R5 K24 ["AssistantQualityChangeWidgetTitle"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K25 ["FFlagAssistantQualityChangeWidgetTitle"]
       65 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       67 LOADK                            R5 K26 ["AssistantToolCallPayloadTelemetry"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K27 ["FFlagAssistantToolCallPayloadTelemetry"]
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
      151 LOADK                            R5 K51 ["AssistantDisconnectDelaySeconds"]
      152 LOADN                            R6 3
      153 CALL                             R4 2 1
      154 CALL                             R4 0 1
      155 SETTABLEKS                       R4 R3 K52 ["FIntAssistantDisconnectDelaySeconds"]
      157 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      159 LOADK                            R5 K53 ["AssistantExperimentReadyTimeoutSeconds"]
      160 LOADN                            R6 2
      161 CALL                             R4 2 1
      162 CALL                             R4 0 1
      163 SETTABLEKS                       R4 R3 K54 ["FIntAssistantExperimentReadyTimeoutSeconds"]
      165 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      167 LOADK                            R5 K55 ["AssistantStudioNameCheckInterval"]
      168 LOADN                            R6 10
      169 CALL                             R4 2 1
      170 CALL                             R4 0 1
      171 SETTABLEKS                       R4 R3 K56 ["FIntAssistantStudioNameCheckInterval"]
      173 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      175 LOADK                            R5 K57 ["ConvAIAssistantMaxTokens"]
      176 LOADN                            R6 16000
      177 CALL                             R4 2 1
      178 CALL                             R4 0 1
      179 SETTABLEKS                       R4 R3 K58 ["FIntConvAIAssistantMaxTokens"]
      181 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      183 LOADK                            R5 K59 ["MarkdownErrorEventThrottlingHundredthPercent"]
      184 LOADN                            R6 10000
      185 CALL                             R4 2 1
      186 CALL                             R4 0 1
      187 SETTABLEKS                       R4 R3 K60 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      189 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      191 LOADK                            R5 K61 ["MaterialGenerationServicePollLimit"]
      192 LOADN                            R6 5
      193 CALL                             R4 2 1
      194 CALL                             R4 0 1
      195 SETTABLEKS                       R4 R3 K62 ["FIntMaterialGenerationServicePollLimit"]
      197 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      199 LOADK                            R5 K63 ["MaterialGenerationServiceRePollDelaySeconds"]
      200 LOADN                            R6 10
      201 CALL                             R4 2 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K64 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      205 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      207 LOADK                            R5 K65 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      208 LOADN                            R6 15000
      209 CALL                             R4 2 1
      210 CALL                             R4 0 1
      211 SETTABLEKS                       R4 R3 K66 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      213 GETTABLEKS                       R4 R2 K50 ["createGetFInt"]
      215 LOADK                            R5 K67 ["UserMessageSentEventThrottlingHundredthPercent"]
      216 LOADN                            R6 10000
      217 CALL                             R4 2 1
      218 CALL                             R4 0 1
      219 SETTABLEKS                       R4 R3 K68 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      221 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      223 LOADK                            R5 K70 ["AssistantDisableContextCompactionKey"]
      224 LOADK                            R6 K71 ["DisableContextCompaction"]
      225 CALL                             R4 2 1
      226 CALL                             R4 0 1
      227 SETTABLEKS                       R4 R3 K72 ["FStringAssistantDisableContextCompactionKey"]
      229 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      231 LOADK                            R5 K73 ["AssistantDisabledToolsKey"]
      232 LOADK                            R6 K74 ["disabledTools"]
      233 CALL                             R4 2 1
      234 CALL                             R4 0 1
      235 SETTABLEKS                       R4 R3 K75 ["FStringAssistantDisabledToolsKey"]
      237 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      239 LOADK                            R5 K76 ["AssistantGroupNameKey"]
      240 LOADK                            R6 K77 ["GROUP_NAME"]
      241 CALL                             R4 2 1
      242 CALL                             R4 0 1
      243 SETTABLEKS                       R4 R3 K78 ["FStringAssistantGroupNameKey"]
      245 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      247 LOADK                            R5 K79 ["DebugAssistantStudioSystemMessage"]
      248 LOADK                            R6 K80 [""]
      249 CALL                             R4 2 1
      250 CALL                             R4 0 1
      251 SETTABLEKS                       R4 R3 K81 ["FStringDebugAssistantStudioSystemMessage"]
      253 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      255 LOADK                            R5 K82 ["MCPAssistantThinkingMode"]
      256 LOADK                            R6 K80 [""]
      257 CALL                             R4 2 1
      258 CALL                             R4 0 1
      259 SETTABLEKS                       R4 R3 K83 ["FStringMCPAssistantThinkingMode"]
      261 GETTABLEKS                       R4 R2 K69 ["createGetFString"]
      263 LOADK                            R5 K84 ["NewAssistantExperimentLayer"]
      264 LOADK                            R6 K85 ["Creator.Assistant.MCPAssistant.CreatorId"]
      265 CALL                             R4 2 1
      266 CALL                             R4 0 1
      267 SETTABLEKS                       R4 R3 K86 ["FStringNewAssistantExperimentLayer"]
      269 DUPTABLE                         R6 K88 [{"__index", "__newindex"}]
      270 GETTABLEKS                       R7 R1 K89 ["Flags"]
      272 SETTABLEKS                       R7 R6 K87 ["__index"]
      274 GETTABLEKS                       R7 R1 K89 ["Flags"]
      276 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      278 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      280 MOVE                             R5 R3
      281 GETIMPORT                        R4 K14 [setmetatable]
      283 CALL                             R4 2 1
      284 RETURN                           R4 1
