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
       35 LOADK                            R4 K16 ["AssistantToolExistenceRefactor"]
       36 CALL                             R3 1 1
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K17 ["FFlagAssistantToolExistenceRefactor"]
       40 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       42 LOADK                            R4 K18 ["AssistantCapToolResult"]
       43 CALL                             R3 1 1
       44 CALL                             R3 0 1
       45 SETTABLEKS                       R3 R2 K19 ["FFlagAssistantCapToolResult"]
       47 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       49 LOADK                            R4 K20 ["AssistantMultiPlayerAgents"]
       50 CALL                             R3 1 1
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K21 ["FFlagAssistantMultiPlayerAgents"]
       54 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       56 LOADK                            R4 K22 ["AssistantCompactOnInputTokenLimit"]
       57 CALL                             R3 1 1
       58 CALL                             R3 0 1
       59 SETTABLEKS                       R3 R2 K23 ["FFlagAssistantCompactOnInputTokenLimit"]
       61 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       63 LOADK                            R4 K24 ["AssistantLogThinkingTokens"]
       64 CALL                             R3 1 1
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K25 ["FFlagAssistantLogThinkingTokens"]
       68 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       70 LOADK                            R4 K26 ["AssistantMarkdownPlanMode3"]
       71 CALL                             R3 1 1
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K27 ["FFlagAssistantMarkdownPlanMode"]
       75 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       77 LOADK                            R4 K28 ["AssistantSplitToolsAndWidgets4"]
       78 CALL                             R3 1 1
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K29 ["FFlagAssistantSplitToolsAndWidgets"]
       82 GETTABLEKS                       R3 R1 K30 ["createGetFInt"]
       84 LOADK                            R4 K31 ["AssistantMaxToolResultChars"]
       85 LOADK                            R5 K32 [100000]
       86 CALL                             R3 2 1
       87 CALL                             R3 0 1
       88 SETTABLEKS                       R3 R2 K33 ["FIntAssistantMaxToolResultChars"]
       90 GETTABLEKS                       R3 R1 K30 ["createGetFInt"]
       92 LOADK                            R4 K34 ["ContextCompactionResponseHeadroom"]
       93 LOADK                            R5 K35 [40000]
       94 CALL                             R3 2 1
       95 CALL                             R3 0 1
       96 SETTABLEKS                       R3 R2 K36 ["FIntContextCompactionResponseHeadroom"]
       98 GETTABLEKS                       R3 R1 K30 ["createGetFInt"]
      100 LOADK                            R4 K37 ["ContextCompactionSummarizerTimeoutMs"]
      101 LOADN                            R5 30000
      102 CALL                             R3 2 1
      103 CALL                             R3 0 1
      104 SETTABLEKS                       R3 R2 K38 ["FIntContextCompactionSummarizerTimeoutMs"]
      106 GETTABLEKS                       R3 R1 K30 ["createGetFInt"]
      108 LOADK                            R4 K39 ["ContextCompactionSystemPromptEstimate"]
      109 LOADN                            R5 15000
      110 CALL                             R3 2 1
      111 CALL                             R3 0 1
      112 SETTABLEKS                       R3 R2 K40 ["FIntContextCompactionSystemPromptEstimate"]
      114 GETTABLEKS                       R3 R1 K30 ["createGetFInt"]
      116 LOADK                            R4 K41 ["ContextCompactionThresholdTokens"]
      117 LOADK                            R5 K42 [128000]
      118 CALL                             R3 2 1
      119 CALL                             R3 0 1
      120 SETTABLEKS                       R3 R2 K43 ["FIntContextCompactionThresholdTokens"]
      122 GETTABLEKS                       R3 R1 K44 ["createGetFString"]
      124 LOADK                            R4 K45 ["ContextCompactionModelName"]
      125 LOADK                            R5 K46 ["Assistant/glm47-flash-search-rl"]
      126 CALL                             R3 2 1
      127 CALL                             R3 0 1
      128 SETTABLEKS                       R3 R2 K47 ["FStringContextCompactionModelName"]
      130 RETURN                           R2 1
