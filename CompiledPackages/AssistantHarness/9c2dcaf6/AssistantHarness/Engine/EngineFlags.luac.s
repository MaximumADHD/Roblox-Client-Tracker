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
       14 NEWTABLE                         R3 16 0
       16 DUPTABLE                         R4 K9 [{"__newindex"}]
       17 DUPCLOSURE                       R5 K10 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R4 K8 ["__newindex"]
       21 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       23 GETIMPORT                        R2 K12 [setmetatable]
       25 CALL                             R2 2 1
       26 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       28 LOADK                            R4 K14 ["DebugLogAssistantUI"]
       29 CALL                             R3 1 1
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K15 ["FFlagDebugLogAssistantUI"]
       33 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       35 LOADK                            R4 K16 ["AssistantCapToolResult"]
       36 CALL                             R3 1 1
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K17 ["FFlagAssistantCapToolResult"]
       40 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       42 LOADK                            R4 K18 ["AssistantMultiPlayerAgents"]
       43 CALL                             R3 1 1
       44 CALL                             R3 0 1
       45 SETTABLEKS                       R3 R2 K19 ["FFlagAssistantMultiPlayerAgents"]
       47 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       49 LOADK                            R4 K20 ["AssistantCompactOnInputTokenLimit"]
       50 CALL                             R3 1 1
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K21 ["FFlagAssistantCompactOnInputTokenLimit"]
       54 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       56 LOADK                            R4 K22 ["AssistantStopIfCanceledNonCompact"]
       57 CALL                             R3 1 1
       58 CALL                             R3 0 1
       59 SETTABLEKS                       R3 R2 K23 ["FFlagAssistantStopIfCanceledNonCompact"]
       61 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       63 LOADK                            R4 K24 ["AssistantMarkdownPlanMode3"]
       64 CALL                             R3 1 1
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K25 ["FFlagAssistantMarkdownPlanMode"]
       68 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       70 LOADK                            R4 K26 ["AssistantUseNewOpenAPIClients2"]
       71 CALL                             R3 1 1
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K27 ["FFlagAssistantUseNewOpenAPIClients"]
       75 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       77 LOADK                            R4 K28 ["AssistantDisableSafeEmptyTableJsonEncode"]
       78 CALL                             R3 1 1
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K29 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       82 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       84 LOADK                            R4 K30 ["AssistantACPServiceClearSessions"]
       85 CALL                             R3 1 1
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K31 ["FFlagAssistantACPServiceClearSessions"]
       89 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       91 LOADK                            R4 K32 ["AssistantPersistOnlyForDirtySession"]
       92 CALL                             R3 1 1
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K33 ["FFlagAssistantPersistOnlyForDirtySession"]
       96 GETTABLEKS                       R3 R1 K34 ["createGetFInt"]
       98 LOADK                            R4 K35 ["AssistantMaxToolResultChars"]
       99 LOADK                            R5 K36 [100000]
      100 CALL                             R3 2 1
      101 CALL                             R3 0 1
      102 SETTABLEKS                       R3 R2 K37 ["FIntAssistantMaxToolResultChars"]
      104 GETTABLEKS                       R3 R1 K34 ["createGetFInt"]
      106 LOADK                            R4 K38 ["ContextCompactionResponseHeadroom"]
      107 LOADK                            R5 K39 [40000]
      108 CALL                             R3 2 1
      109 CALL                             R3 0 1
      110 SETTABLEKS                       R3 R2 K40 ["FIntContextCompactionResponseHeadroom"]
      112 GETTABLEKS                       R3 R1 K34 ["createGetFInt"]
      114 LOADK                            R4 K41 ["ContextCompactionSummarizerTimeoutMs"]
      115 LOADN                            R5 30000
      116 CALL                             R3 2 1
      117 CALL                             R3 0 1
      118 SETTABLEKS                       R3 R2 K42 ["FIntContextCompactionSummarizerTimeoutMs"]
      120 GETTABLEKS                       R3 R1 K34 ["createGetFInt"]
      122 LOADK                            R4 K43 ["ContextCompactionSystemPromptEstimate"]
      123 LOADN                            R5 15000
      124 CALL                             R3 2 1
      125 CALL                             R3 0 1
      126 SETTABLEKS                       R3 R2 K44 ["FIntContextCompactionSystemPromptEstimate"]
      128 GETTABLEKS                       R3 R1 K34 ["createGetFInt"]
      130 LOADK                            R4 K45 ["ContextCompactionThresholdTokens"]
      131 LOADK                            R5 K46 [128000]
      132 CALL                             R3 2 1
      133 CALL                             R3 0 1
      134 SETTABLEKS                       R3 R2 K47 ["FIntContextCompactionThresholdTokens"]
      136 GETTABLEKS                       R3 R1 K48 ["createGetFString"]
      138 LOADK                            R4 K49 ["ContextCompactionModelName"]
      139 LOADK                            R5 K50 ["Assistant/glm47-flash-search-rl"]
      140 CALL                             R3 2 1
      141 CALL                             R3 0 1
      142 SETTABLEKS                       R3 R2 K51 ["FStringContextCompactionModelName"]
      144 RETURN                           R2 1
