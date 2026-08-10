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
       28 LOADK                            R4 K14 ["DebugLogAssistantUI"]
       29 CALL                             R3 1 1
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K15 ["FFlagDebugLogAssistantUI"]
       33 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       35 LOADK                            R4 K16 ["AssistantHarnessSplit3"]
       36 CALL                             R3 1 1
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K17 ["FFlagAssistantHarnessSplit"]
       40 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       42 LOADK                            R4 K18 ["AssistantHarnessSplitExp"]
       43 CALL                             R3 1 1
       44 CALL                             R3 0 1
       45 SETTABLEKS                       R3 R2 K19 ["FFlagAssistantHarnessSplitExp"]
       47 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       49 LOADK                            R4 K20 ["AssistantToolExistenceRefactor"]
       50 CALL                             R3 1 1
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K21 ["FFlagAssistantToolExistenceRefactor"]
       54 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       56 LOADK                            R4 K22 ["AssistantCapToolResult"]
       57 CALL                             R3 1 1
       58 CALL                             R3 0 1
       59 SETTABLEKS                       R3 R2 K23 ["FFlagAssistantCapToolResult"]
       61 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       63 LOADK                            R4 K24 ["AssistantMultiPlayerAgents"]
       64 CALL                             R3 1 1
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K25 ["FFlagAssistantMultiPlayerAgents"]
       68 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       70 LOADK                            R4 K26 ["AssistantCompactOnInputTokenLimit"]
       71 CALL                             R3 1 1
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K27 ["FFlagAssistantCompactOnInputTokenLimit"]
       75 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       77 LOADK                            R4 K28 ["AssistantStopIfCanceledNonCompact"]
       78 CALL                             R3 1 1
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K29 ["FFlagAssistantStopIfCanceledNonCompact"]
       82 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       84 LOADK                            R4 K30 ["AssistantLogThinkingTokens"]
       85 CALL                             R3 1 1
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K31 ["FFlagAssistantLogThinkingTokens"]
       89 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       91 LOADK                            R4 K32 ["AssistantMarkdownPlanMode3"]
       92 CALL                             R3 1 1
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K33 ["FFlagAssistantMarkdownPlanMode"]
       96 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       98 LOADK                            R4 K34 ["AssistantSplitToolsAndWidgets6"]
       99 CALL                             R3 1 1
      100 CALL                             R3 0 1
      101 SETTABLEKS                       R3 R2 K35 ["FFlagAssistantSplitToolsAndWidgets"]
      103 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
      105 LOADK                            R4 K36 ["AssistantUseNewOpenAPIClients2"]
      106 CALL                             R3 1 1
      107 CALL                             R3 0 1
      108 SETTABLEKS                       R3 R2 K37 ["FFlagAssistantUseNewOpenAPIClients"]
      110 GETTABLEKS                       R3 R1 K38 ["createGetFInt"]
      112 LOADK                            R4 K39 ["AssistantMaxToolResultChars"]
      113 LOADK                            R5 K40 [100000]
      114 CALL                             R3 2 1
      115 CALL                             R3 0 1
      116 SETTABLEKS                       R3 R2 K41 ["FIntAssistantMaxToolResultChars"]
      118 GETTABLEKS                       R3 R1 K38 ["createGetFInt"]
      120 LOADK                            R4 K42 ["ContextCompactionResponseHeadroom"]
      121 LOADK                            R5 K43 [40000]
      122 CALL                             R3 2 1
      123 CALL                             R3 0 1
      124 SETTABLEKS                       R3 R2 K44 ["FIntContextCompactionResponseHeadroom"]
      126 GETTABLEKS                       R3 R1 K38 ["createGetFInt"]
      128 LOADK                            R4 K45 ["ContextCompactionSummarizerTimeoutMs"]
      129 LOADN                            R5 30000
      130 CALL                             R3 2 1
      131 CALL                             R3 0 1
      132 SETTABLEKS                       R3 R2 K46 ["FIntContextCompactionSummarizerTimeoutMs"]
      134 GETTABLEKS                       R3 R1 K38 ["createGetFInt"]
      136 LOADK                            R4 K47 ["ContextCompactionSystemPromptEstimate"]
      137 LOADN                            R5 15000
      138 CALL                             R3 2 1
      139 CALL                             R3 0 1
      140 SETTABLEKS                       R3 R2 K48 ["FIntContextCompactionSystemPromptEstimate"]
      142 GETTABLEKS                       R3 R1 K38 ["createGetFInt"]
      144 LOADK                            R4 K49 ["ContextCompactionThresholdTokens"]
      145 LOADK                            R5 K50 [128000]
      146 CALL                             R3 2 1
      147 CALL                             R3 0 1
      148 SETTABLEKS                       R3 R2 K51 ["FIntContextCompactionThresholdTokens"]
      150 GETTABLEKS                       R3 R1 K52 ["createGetFString"]
      152 LOADK                            R4 K53 ["ContextCompactionModelName"]
      153 LOADK                            R5 K54 ["Assistant/glm47-flash-search-rl"]
      154 CALL                             R3 2 1
      155 CALL                             R3 0 1
      156 SETTABLEKS                       R3 R2 K55 ["FStringContextCompactionModelName"]
      158 RETURN                           R2 1
