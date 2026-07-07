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
       74 LOADK                            R5 K28 ["AssistantUseNewOpenAPIClients2"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K29 ["FFlagAssistantUseNewOpenAPIClients"]
       79 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       81 LOADK                            R5 K30 ["DebugAssistantForceCloseTooltip"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K31 ["FFlagDebugAssistantForceCloseTooltip"]
       86 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       88 LOADK                            R5 K32 ["FixTargetIsNotReachable"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K33 ["FFlagFixTargetIsNotReachable"]
       93 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
       95 LOADK                            R5 K34 ["GetOrCreateUniqueIdMethod2"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K35 ["FFlagGetOrCreateUniqueIdMethod"]
      100 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      102 LOADK                            R5 K36 ["IsLuobuBuild"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K37 ["FFlagIsLuobuBuild"]
      107 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      109 LOADK                            R5 K38 ["MaterialGeneratorCounterEnabled"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K39 ["FFlagMaterialGeneratorCounterEnabled"]
      114 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      116 LOADK                            R5 K40 ["MCPAssistantPlaceID"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K41 ["FFlagMCPAssistantPlaceID"]
      121 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      123 LOADK                            R5 K42 ["MCPAssistantTooManyRequestLog"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K43 ["FFlagMCPAssistantTooManyRequestLog"]
      128 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      130 LOADK                            R5 K44 ["SkipExternalToolsNoDebugMode"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K45 ["FFlagSkipExternalToolsNoDebugMode"]
      135 GETTABLEKS                       R4 R2 K15 ["createGetFFlag"]
      137 LOADK                            R5 K46 ["StudioAssistantCloseTooltip"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K47 ["FFlagStudioAssistantCloseTooltip"]
      142 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      144 LOADK                            R5 K49 ["AssistantDisconnectDelaySeconds"]
      145 LOADN                            R6 3
      146 CALL                             R4 2 1
      147 CALL                             R4 0 1
      148 SETTABLEKS                       R4 R3 K50 ["FIntAssistantDisconnectDelaySeconds"]
      150 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      152 LOADK                            R5 K51 ["AssistantStudioNameCheckInterval"]
      153 LOADN                            R6 10
      154 CALL                             R4 2 1
      155 CALL                             R4 0 1
      156 SETTABLEKS                       R4 R3 K52 ["FIntAssistantStudioNameCheckInterval"]
      158 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      160 LOADK                            R5 K53 ["ConvAIAssistantMaxTokens"]
      161 LOADN                            R6 16000
      162 CALL                             R4 2 1
      163 CALL                             R4 0 1
      164 SETTABLEKS                       R4 R3 K54 ["FIntConvAIAssistantMaxTokens"]
      166 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      168 LOADK                            R5 K55 ["MarkdownErrorEventThrottlingHundredthPercent"]
      169 LOADN                            R6 10000
      170 CALL                             R4 2 1
      171 CALL                             R4 0 1
      172 SETTABLEKS                       R4 R3 K56 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      174 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      176 LOADK                            R5 K57 ["MaterialGenerationServicePollLimit"]
      177 LOADN                            R6 5
      178 CALL                             R4 2 1
      179 CALL                             R4 0 1
      180 SETTABLEKS                       R4 R3 K58 ["FIntMaterialGenerationServicePollLimit"]
      182 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      184 LOADK                            R5 K59 ["MaterialGenerationServiceRePollDelaySeconds"]
      185 LOADN                            R6 10
      186 CALL                             R4 2 1
      187 CALL                             R4 0 1
      188 SETTABLEKS                       R4 R3 K60 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      190 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      192 LOADK                            R5 K61 ["MaterialGenerationServiceUploadHttpTimeoutMs"]
      193 LOADN                            R6 15000
      194 CALL                             R4 2 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K62 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      198 GETTABLEKS                       R4 R2 K48 ["createGetFInt"]
      200 LOADK                            R5 K63 ["UserMessageSentEventThrottlingHundredthPercent"]
      201 LOADN                            R6 10000
      202 CALL                             R4 2 1
      203 CALL                             R4 0 1
      204 SETTABLEKS                       R4 R3 K64 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      206 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      208 LOADK                            R5 K66 ["AssistantDisableContextCompactionKey"]
      209 LOADK                            R6 K67 ["DisableContextCompaction"]
      210 CALL                             R4 2 1
      211 CALL                             R4 0 1
      212 SETTABLEKS                       R4 R3 K68 ["FStringAssistantDisableContextCompactionKey"]
      214 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      216 LOADK                            R5 K69 ["AssistantDisabledToolsKey"]
      217 LOADK                            R6 K70 ["disabledTools"]
      218 CALL                             R4 2 1
      219 CALL                             R4 0 1
      220 SETTABLEKS                       R4 R3 K71 ["FStringAssistantDisabledToolsKey"]
      222 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      224 LOADK                            R5 K72 ["AssistantGroupNameKey"]
      225 LOADK                            R6 K73 ["GROUP_NAME"]
      226 CALL                             R4 2 1
      227 CALL                             R4 0 1
      228 SETTABLEKS                       R4 R3 K74 ["FStringAssistantGroupNameKey"]
      230 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      232 LOADK                            R5 K75 ["DebugAssistantStudioSystemMessage"]
      233 LOADK                            R6 K76 [""]
      234 CALL                             R4 2 1
      235 CALL                             R4 0 1
      236 SETTABLEKS                       R4 R3 K77 ["FStringDebugAssistantStudioSystemMessage"]
      238 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      240 LOADK                            R5 K78 ["MCPAssistantThinkingMode"]
      241 LOADK                            R6 K76 [""]
      242 CALL                             R4 2 1
      243 CALL                             R4 0 1
      244 SETTABLEKS                       R4 R3 K79 ["FStringMCPAssistantThinkingMode"]
      246 GETTABLEKS                       R4 R2 K65 ["createGetFString"]
      248 LOADK                            R5 K80 ["NewAssistantExperimentLayer"]
      249 LOADK                            R6 K81 ["Creator.Assistant.MCPAssistant.CreatorId"]
      250 CALL                             R4 2 1
      251 CALL                             R4 0 1
      252 SETTABLEKS                       R4 R3 K82 ["FStringNewAssistantExperimentLayer"]
      254 DUPTABLE                         R6 K84 [{"__index", "__newindex"}]
      255 GETTABLEKS                       R7 R1 K85 ["Flags"]
      257 SETTABLEKS                       R7 R6 K83 ["__index"]
      259 GETTABLEKS                       R7 R1 K85 ["Flags"]
      261 SETTABLEKS                       R7 R6 K10 ["__newindex"]
      263 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      265 MOVE                             R5 R3
      266 GETIMPORT                        R4 K14 [setmetatable]
      268 CALL                             R4 2 1
      269 RETURN                           R4 1
