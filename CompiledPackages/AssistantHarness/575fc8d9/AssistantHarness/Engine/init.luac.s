MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Compaction"]
        7 GETTABLEKS                       R1 R1 K5 ["CompactedStore"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Compaction"]
       16 GETTABLEKS                       R2 R2 K6 ["CompactionSubagent"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K7 ["EngineEnv"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [require]
       28 GETIMPORT                        R4 K3 [script]
       30 GETTABLEKS                       R4 R4 K8 ["EngineFlags"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K1 [require]
       35 GETIMPORT                        R5 K3 [script]
       37 GETTABLEKS                       R5 R5 K9 ["ErrorTypes"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K1 [require]
       42 GETIMPORT                        R6 K3 [script]
       44 GETTABLEKS                       R6 R6 K10 ["LLMFormattedToolTypes"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K1 [require]
       49 GETIMPORT                        R7 K3 [script]
       51 GETTABLEKS                       R7 R7 K11 ["LLMProcessEvent"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K1 [require]
       56 GETIMPORT                        R8 K3 [script]
       58 GETTABLEKS                       R8 R8 K12 ["LLMRequest"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K1 [require]
       63 GETIMPORT                        R9 K3 [script]
       65 GETTABLEKS                       R9 R9 K13 ["ModelQuality"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K1 [require]
       70 GETIMPORT                        R10 K3 [script]
       72 GETTABLEKS                       R10 R10 K14 ["Providers"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K1 [require]
       77 GETIMPORT                        R11 K3 [script]
       79 GETTABLEKS                       R11 R11 K15 ["Util"]
       81 GETTABLEKS                       R11 R11 K16 ["StreamEventUtils"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K1 [require]
       86 GETIMPORT                        R12 K3 [script]
       88 GETTABLEKS                       R12 R12 K17 ["StreamTypes"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K1 [require]
       93 GETIMPORT                        R13 K3 [script]
       95 GETTABLEKS                       R13 R13 K15 ["Util"]
       97 GETTABLEKS                       R13 R13 K18 ["TaskCollector"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K1 [require]
      102 GETIMPORT                        R14 K3 [script]
      104 GETTABLEKS                       R14 R14 K15 ["Util"]
      106 GETTABLEKS                       R14 R14 K19 ["Time"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K1 [require]
      111 GETIMPORT                        R15 K3 [script]
      113 GETTABLEKS                       R15 R15 K15 ["Util"]
      115 GETTABLEKS                       R15 R15 K20 ["Timer"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K1 [require]
      120 GETIMPORT                        R16 K3 [script]
      122 GETTABLEKS                       R16 R16 K15 ["Util"]
      124 GETTABLEKS                       R16 R16 K21 ["capToolResult"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K1 [require]
      129 GETIMPORT                        R17 K3 [script]
      131 GETTABLEKS                       R17 R17 K4 ["Compaction"]
      133 GETTABLEKS                       R17 R17 K22 ["compactThread"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K1 [require]
      138 GETIMPORT                        R18 K3 [script]
      140 GETTABLEKS                       R18 R18 K4 ["Compaction"]
      142 GETTABLEKS                       R18 R18 K23 ["estimateTokens"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K1 [require]
      147 GETIMPORT                        R19 K3 [script]
      149 GETTABLEKS                       R19 R19 K15 ["Util"]
      151 GETTABLEKS                       R19 R19 K24 ["normalizeToolInput"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K1 [require]
      156 GETIMPORT                        R20 K3 [script]
      158 GETTABLEKS                       R20 R20 K15 ["Util"]
      160 GETTABLEKS                       R20 R20 K25 ["truncateUtf8Safe"]
      162 CALL                             R19 1 1
      163 DUPTABLE                         R20 K26 [{"EngineEnv", "EngineFlags", "ErrorTypes", "LLMFormattedToolTypes", "LLMProcessEvent", "LLMRequest", "ModelQuality", "Providers", "StreamTypes", "StreamEventUtils", "TaskCollector", "Time", "Timer", "capToolResult", "CompactionSubagent", "compactThread", "CompactedStore", "estimateTokens", "normalizeToolInput", "truncateUtf8Safe"}]
      164 SETTABLEKS                       R2 R20 K7 ["EngineEnv"]
      166 SETTABLEKS                       R3 R20 K8 ["EngineFlags"]
      168 SETTABLEKS                       R4 R20 K9 ["ErrorTypes"]
      170 SETTABLEKS                       R5 R20 K10 ["LLMFormattedToolTypes"]
      172 SETTABLEKS                       R6 R20 K11 ["LLMProcessEvent"]
      174 SETTABLEKS                       R7 R20 K12 ["LLMRequest"]
      176 SETTABLEKS                       R8 R20 K13 ["ModelQuality"]
      178 SETTABLEKS                       R9 R20 K14 ["Providers"]
      180 SETTABLEKS                       R11 R20 K17 ["StreamTypes"]
      182 SETTABLEKS                       R10 R20 K16 ["StreamEventUtils"]
      184 SETTABLEKS                       R12 R20 K18 ["TaskCollector"]
      186 SETTABLEKS                       R13 R20 K19 ["Time"]
      188 SETTABLEKS                       R14 R20 K20 ["Timer"]
      190 SETTABLEKS                       R15 R20 K21 ["capToolResult"]
      192 SETTABLEKS                       R1 R20 K6 ["CompactionSubagent"]
      194 SETTABLEKS                       R16 R20 K22 ["compactThread"]
      196 SETTABLEKS                       R0 R20 K5 ["CompactedStore"]
      198 SETTABLEKS                       R17 R20 K23 ["estimateTokens"]
      200 SETTABLEKS                       R18 R20 K24 ["normalizeToolInput"]
      202 SETTABLEKS                       R19 R20 K25 ["truncateUtf8Safe"]
      204 RETURN                           R20 1
