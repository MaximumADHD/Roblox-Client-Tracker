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
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["TestableFlags"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R3 32 0
       16 DUPTABLE                         R4 K9 [{"__newindex"}]
       17 DUPCLOSURE                       R5 K10 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R4 K8 ["__newindex"]
       21 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       23 GETIMPORT                        R2 K12 [setmetatable]
       25 CALL                             R2 2 1
       26 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       28 LOADK                            R4 K14 ["AddCompactionFallbackMessages"]
       29 CALL                             R3 1 1
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K15 ["FFlagAddCompactionFallbackMessages"]
       33 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       35 LOADK                            R4 K16 ["AssistantACPServiceClearSessions"]
       36 CALL                             R3 1 1
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K17 ["FFlagAssistantACPServiceClearSessions"]
       40 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       42 LOADK                            R4 K18 ["AssistantCapToolResult2"]
       43 CALL                             R3 1 1
       44 CALL                             R3 0 1
       45 SETTABLEKS                       R3 R2 K19 ["FFlagAssistantCapToolResult"]
       47 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       49 LOADK                            R4 K20 ["AssistantCompactOnInputTokenLimit"]
       50 CALL                             R3 1 1
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K21 ["FFlagAssistantCompactOnInputTokenLimit"]
       54 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       56 LOADK                            R4 K22 ["AssistantCreditMeteringTelemetry2"]
       57 CALL                             R3 1 1
       58 CALL                             R3 0 1
       59 SETTABLEKS                       R3 R2 K23 ["FFlagAssistantCreditMeteringTelemetry"]
       61 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       63 LOADK                            R4 K24 ["AssistantDisableSafeEmptyTableJsonEncode"]
       64 CALL                             R3 1 1
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K25 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       68 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       70 LOADK                            R4 K26 ["AssistantMultiPlayerAgents"]
       71 CALL                             R3 1 1
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K27 ["FFlagAssistantMultiPlayerAgents"]
       75 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       77 LOADK                            R4 K28 ["AssistantNormalizeStudioToolNames"]
       78 CALL                             R3 1 1
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K29 ["FFlagAssistantNormalizeStudioToolNames"]
       82 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       84 LOADK                            R4 K30 ["AssistantPersistOnlyForDirtySession"]
       85 CALL                             R3 1 1
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K31 ["FFlagAssistantPersistOnlyForDirtySession"]
       89 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       91 LOADK                            R4 K32 ["AssistantStopIfCanceledNonCompact"]
       92 CALL                             R3 1 1
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K33 ["FFlagAssistantStopIfCanceledNonCompact"]
       96 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       98 LOADK                            R4 K34 ["AssistantUseLLMErrorDetail"]
       99 CALL                             R3 1 1
      100 CALL                             R3 0 1
      101 SETTABLEKS                       R3 R2 K35 ["FFlagAssistantUseLLMErrorDetail"]
      103 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
      105 LOADK                            R4 K36 ["AssistantUseNewOpenAPIClients2"]
      106 CALL                             R3 1 1
      107 CALL                             R3 0 1
      108 SETTABLEKS                       R3 R2 K37 ["FFlagAssistantUseNewOpenAPIClients"]
      110 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
      112 LOADK                            R4 K38 ["DebugLogAssistantUI"]
      113 CALL                             R3 1 1
      114 CALL                             R3 0 1
      115 SETTABLEKS                       R3 R2 K39 ["FFlagDebugLogAssistantUI"]
      117 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      119 LOADK                            R4 K41 ["AssistantMaxToolResultChars"]
      120 LOADK                            R5 K42 [100000]
      121 CALL                             R3 2 1
      122 CALL                             R3 0 1
      123 SETTABLEKS                       R3 R2 K43 ["FIntAssistantMaxToolResultChars"]
      125 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      127 LOADK                            R4 K44 ["ContextCompactionFallbackMaxTranscriptChars"]
      128 LOADK                            R5 K45 [70000]
      129 CALL                             R3 2 1
      130 CALL                             R3 0 1
      131 SETTABLEKS                       R3 R2 K46 ["FIntContextCompactionFallbackMaxTranscriptChars"]
      133 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      135 LOADK                            R4 K47 ["ContextCompactionFallbackPromptCount"]
      136 LOADN                            R5 2
      137 CALL                             R3 2 1
      138 CALL                             R3 0 1
      139 SETTABLEKS                       R3 R2 K48 ["FIntContextCompactionFallbackPromptCount"]
      141 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      143 LOADK                            R4 K49 ["ContextCompactionResponseHeadroom"]
      144 LOADK                            R5 K50 [40000]
      145 CALL                             R3 2 1
      146 CALL                             R3 0 1
      147 SETTABLEKS                       R3 R2 K51 ["FIntContextCompactionResponseHeadroom"]
      149 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      151 LOADK                            R4 K52 ["ContextCompactionSummarizerTimeoutMs"]
      152 LOADN                            R5 30000
      153 CALL                             R3 2 1
      154 CALL                             R3 0 1
      155 SETTABLEKS                       R3 R2 K53 ["FIntContextCompactionSummarizerTimeoutMs"]
      157 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      159 LOADK                            R4 K54 ["ContextCompactionSystemPromptEstimate"]
      160 LOADN                            R5 15000
      161 CALL                             R3 2 1
      162 CALL                             R3 0 1
      163 SETTABLEKS                       R3 R2 K55 ["FIntContextCompactionSystemPromptEstimate"]
      165 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      167 LOADK                            R4 K56 ["ContextCompactionThresholdTokens"]
      168 LOADK                            R5 K57 [128000]
      169 CALL                             R3 2 1
      170 CALL                             R3 0 1
      171 SETTABLEKS                       R3 R2 K58 ["FIntContextCompactionThresholdTokens"]
      173 GETTABLEKS                       R3 R1 K59 ["createGetFString"]
      175 LOADK                            R4 K60 ["AssistantCapToolResultExemptTools"]
      176 LOADK                            R5 K61 [""]
      177 CALL                             R3 2 1
      178 CALL                             R3 0 1
      179 SETTABLEKS                       R3 R2 K62 ["FStringAssistantCapToolResultExemptTools"]
      181 GETTABLEKS                       R3 R1 K59 ["createGetFString"]
      183 LOADK                            R4 K63 ["ContextCompactionModelName"]
      184 LOADK                            R5 K64 ["Assistant/glm47-flash-search-rl"]
      185 CALL                             R3 2 1
      186 CALL                             R3 0 1
      187 SETTABLEKS                       R3 R2 K65 ["FStringContextCompactionModelName"]
      189 RETURN                           R2 1
