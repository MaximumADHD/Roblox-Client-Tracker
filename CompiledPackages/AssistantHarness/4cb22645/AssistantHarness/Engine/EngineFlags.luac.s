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
       35 LOADK                            R4 K16 ["AssistantHarnessSplit"]
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
       77 LOADK                            R4 K28 ["AssistantLogThinkingTokens"]
       78 CALL                             R3 1 1
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R2 K29 ["FFlagAssistantLogThinkingTokens"]
       82 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       84 LOADK                            R4 K30 ["AssistantMarkdownPlanMode3"]
       85 CALL                             R3 1 1
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K31 ["FFlagAssistantMarkdownPlanMode"]
       89 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       91 LOADK                            R4 K32 ["AssistantSplitToolsAndWidgets5"]
       92 CALL                             R3 1 1
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K33 ["FFlagAssistantSplitToolsAndWidgets"]
       96 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       98 LOADK                            R4 K34 ["AssistantUseNewOpenAPIClients2"]
       99 CALL                             R3 1 1
      100 CALL                             R3 0 1
      101 SETTABLEKS                       R3 R2 K35 ["FFlagAssistantUseNewOpenAPIClients"]
      103 GETTABLEKS                       R3 R1 K36 ["createGetFInt"]
      105 LOADK                            R4 K37 ["AssistantMaxToolResultChars"]
      106 LOADK                            R5 K38 [100000]
      107 CALL                             R3 2 1
      108 CALL                             R3 0 1
      109 SETTABLEKS                       R3 R2 K39 ["FIntAssistantMaxToolResultChars"]
      111 GETTABLEKS                       R3 R1 K36 ["createGetFInt"]
      113 LOADK                            R4 K40 ["ContextCompactionResponseHeadroom"]
      114 LOADK                            R5 K41 [40000]
      115 CALL                             R3 2 1
      116 CALL                             R3 0 1
      117 SETTABLEKS                       R3 R2 K42 ["FIntContextCompactionResponseHeadroom"]
      119 GETTABLEKS                       R3 R1 K36 ["createGetFInt"]
      121 LOADK                            R4 K43 ["ContextCompactionSummarizerTimeoutMs"]
      122 LOADN                            R5 30000
      123 CALL                             R3 2 1
      124 CALL                             R3 0 1
      125 SETTABLEKS                       R3 R2 K44 ["FIntContextCompactionSummarizerTimeoutMs"]
      127 GETTABLEKS                       R3 R1 K36 ["createGetFInt"]
      129 LOADK                            R4 K45 ["ContextCompactionSystemPromptEstimate"]
      130 LOADN                            R5 15000
      131 CALL                             R3 2 1
      132 CALL                             R3 0 1
      133 SETTABLEKS                       R3 R2 K46 ["FIntContextCompactionSystemPromptEstimate"]
      135 GETTABLEKS                       R3 R1 K36 ["createGetFInt"]
      137 LOADK                            R4 K47 ["ContextCompactionThresholdTokens"]
      138 LOADK                            R5 K48 [128000]
      139 CALL                             R3 2 1
      140 CALL                             R3 0 1
      141 SETTABLEKS                       R3 R2 K49 ["FIntContextCompactionThresholdTokens"]
      143 GETTABLEKS                       R3 R1 K50 ["createGetFString"]
      145 LOADK                            R4 K51 ["ContextCompactionModelName"]
      146 LOADK                            R5 K52 ["Assistant/glm47-flash-search-rl"]
      147 CALL                             R3 2 1
      148 CALL                             R3 0 1
      149 SETTABLEKS                       R3 R2 K53 ["FStringContextCompactionModelName"]
      151 GETTABLEKS                       R3 R1 K50 ["createGetFString"]
      153 LOADK                            R4 K54 ["PrimGenMCPToolName"]
      154 LOADK                            R5 K55 ["generate_procedural_model"]
      155 CALL                             R3 2 1
      156 CALL                             R3 0 1
      157 SETTABLEKS                       R3 R2 K56 ["FStringPrimGenMCPToolName"]
      159 RETURN                           R2 1
