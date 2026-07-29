MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["EngineEnv"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["EngineFlags"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["LLMFormattedToolTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["LLMProcessEvent"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["LLMRequest"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["ModelQuality"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["StreamTypes"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["Util"]
       56 GETTABLEKS                       R8 R8 K12 ["StreamEventUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R9 R9 K11 ["Util"]
       65 GETTABLEKS                       R9 R9 K13 ["TaskCollector"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K1 [require]
       70 GETIMPORT                        R10 K3 [script]
       72 GETTABLEKS                       R10 R10 K11 ["Util"]
       74 GETTABLEKS                       R10 R10 K14 ["Time"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K1 [require]
       79 GETIMPORT                        R11 K3 [script]
       81 GETTABLEKS                       R11 R11 K11 ["Util"]
       83 GETTABLEKS                       R11 R11 K15 ["Timer"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K1 [require]
       88 GETIMPORT                        R12 K3 [script]
       90 GETTABLEKS                       R12 R12 K11 ["Util"]
       92 GETTABLEKS                       R12 R12 K16 ["capToolResult"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K1 [require]
       97 GETIMPORT                        R13 K3 [script]
       99 GETTABLEKS                       R13 R13 K17 ["Compaction"]
      101 GETTABLEKS                       R13 R13 K18 ["CompactionSubagent"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K1 [require]
      106 GETIMPORT                        R14 K3 [script]
      108 GETTABLEKS                       R14 R14 K17 ["Compaction"]
      110 GETTABLEKS                       R14 R14 K19 ["compactThread"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K1 [require]
      115 GETIMPORT                        R15 K3 [script]
      117 GETTABLEKS                       R15 R15 K17 ["Compaction"]
      119 GETTABLEKS                       R15 R15 K20 ["CompactedStore"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K1 [require]
      124 GETIMPORT                        R16 K3 [script]
      126 GETTABLEKS                       R16 R16 K17 ["Compaction"]
      128 GETTABLEKS                       R16 R16 K21 ["estimateTokens"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K1 [require]
      133 GETIMPORT                        R17 K3 [script]
      135 GETTABLEKS                       R17 R17 K11 ["Util"]
      137 GETTABLEKS                       R17 R17 K22 ["truncateUtf8Safe"]
      139 CALL                             R16 1 1
      140 DUPTABLE                         R17 K23 [{"EngineEnv", "EngineFlags", "LLMFormattedToolTypes", "LLMProcessEvent", "LLMRequest", "ModelQuality", "StreamTypes", "StreamEventUtils", "TaskCollector", "Time", "Timer", "capToolResult", "CompactionSubagent", "compactThread", "CompactedStore", "estimateTokens", "truncateUtf8Safe"}]
      141 SETTABLEKS                       R0 R17 K4 ["EngineEnv"]
      143 SETTABLEKS                       R1 R17 K5 ["EngineFlags"]
      145 SETTABLEKS                       R2 R17 K6 ["LLMFormattedToolTypes"]
      147 SETTABLEKS                       R3 R17 K7 ["LLMProcessEvent"]
      149 SETTABLEKS                       R4 R17 K8 ["LLMRequest"]
      151 SETTABLEKS                       R5 R17 K9 ["ModelQuality"]
      153 SETTABLEKS                       R6 R17 K10 ["StreamTypes"]
      155 SETTABLEKS                       R7 R17 K12 ["StreamEventUtils"]
      157 SETTABLEKS                       R8 R17 K13 ["TaskCollector"]
      159 SETTABLEKS                       R9 R17 K14 ["Time"]
      161 SETTABLEKS                       R10 R17 K15 ["Timer"]
      163 SETTABLEKS                       R11 R17 K16 ["capToolResult"]
      165 SETTABLEKS                       R12 R17 K18 ["CompactionSubagent"]
      167 SETTABLEKS                       R13 R17 K19 ["compactThread"]
      169 SETTABLEKS                       R14 R17 K20 ["CompactedStore"]
      171 SETTABLEKS                       R15 R17 K21 ["estimateTokens"]
      173 SETTABLEKS                       R16 R17 K22 ["truncateUtf8Safe"]
      175 RETURN                           R17 1
