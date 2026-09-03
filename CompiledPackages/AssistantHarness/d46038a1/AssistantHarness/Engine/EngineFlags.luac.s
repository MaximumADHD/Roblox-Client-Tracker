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
       35 LOADK                            R4 K16 ["AssistantHarnessSplit4"]
       36 CALL                             R3 1 1
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K17 ["FFlagAssistantHarnessSplit"]
       40 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       42 LOADK                            R4 K18 ["AssistantHarnessSplitExp2"]
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
       84 LOADK                            R4 K30 ["AssistantMarkdownPlanMode3"]
       85 CALL                             R3 1 1
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K31 ["FFlagAssistantMarkdownPlanMode"]
       89 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       91 LOADK                            R4 K32 ["AssistantUseNewOpenAPIClients2"]
       92 CALL                             R3 1 1
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K33 ["FFlagAssistantUseNewOpenAPIClients"]
       96 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
       98 LOADK                            R4 K34 ["AssistantDisableSafeEmptyTableJsonEncode"]
       99 CALL                             R3 1 1
      100 CALL                             R3 0 1
      101 SETTABLEKS                       R3 R2 K35 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
      103 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
      105 LOADK                            R4 K36 ["AssistantACPServiceClearSessions"]
      106 CALL                             R3 1 1
      107 CALL                             R3 0 1
      108 SETTABLEKS                       R3 R2 K37 ["FFlagAssistantACPServiceClearSessions"]
      110 GETTABLEKS                       R3 R1 K13 ["createGetFFlag"]
      112 LOADK                            R4 K38 ["AssistantPersistOnlyForDirtySession"]
      113 CALL                             R3 1 1
      114 CALL                             R3 0 1
      115 SETTABLEKS                       R3 R2 K39 ["FFlagAssistantPersistOnlyForDirtySession"]
      117 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      119 LOADK                            R4 K41 ["AssistantMaxToolResultChars"]
      120 LOADK                            R5 K42 [100000]
      121 CALL                             R3 2 1
      122 CALL                             R3 0 1
      123 SETTABLEKS                       R3 R2 K43 ["FIntAssistantMaxToolResultChars"]
      125 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      127 LOADK                            R4 K44 ["ContextCompactionResponseHeadroom"]
      128 LOADK                            R5 K45 [40000]
      129 CALL                             R3 2 1
      130 CALL                             R3 0 1
      131 SETTABLEKS                       R3 R2 K46 ["FIntContextCompactionResponseHeadroom"]
      133 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      135 LOADK                            R4 K47 ["ContextCompactionSummarizerTimeoutMs"]
      136 LOADN                            R5 30000
      137 CALL                             R3 2 1
      138 CALL                             R3 0 1
      139 SETTABLEKS                       R3 R2 K48 ["FIntContextCompactionSummarizerTimeoutMs"]
      141 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      143 LOADK                            R4 K49 ["ContextCompactionSystemPromptEstimate"]
      144 LOADN                            R5 15000
      145 CALL                             R3 2 1
      146 CALL                             R3 0 1
      147 SETTABLEKS                       R3 R2 K50 ["FIntContextCompactionSystemPromptEstimate"]
      149 GETTABLEKS                       R3 R1 K40 ["createGetFInt"]
      151 LOADK                            R4 K51 ["ContextCompactionThresholdTokens"]
      152 LOADK                            R5 K52 [128000]
      153 CALL                             R3 2 1
      154 CALL                             R3 0 1
      155 SETTABLEKS                       R3 R2 K53 ["FIntContextCompactionThresholdTokens"]
      157 GETTABLEKS                       R3 R1 K54 ["createGetFString"]
      159 LOADK                            R4 K55 ["ContextCompactionModelName"]
      160 LOADK                            R5 K56 ["Assistant/glm47-flash-search-rl"]
      161 CALL                             R3 2 1
      162 CALL                             R3 0 1
      163 SETTABLEKS                       R3 R2 K57 ["FStringContextCompactionModelName"]
      165 RETURN                           R2 1
