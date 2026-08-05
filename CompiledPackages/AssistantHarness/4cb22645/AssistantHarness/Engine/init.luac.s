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
       19 GETTABLEKS                       R3 R3 K6 ["ErrorTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["LLMFormattedToolTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["LLMProcessEvent"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["LLMRequest"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["ModelQuality"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["Providers"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R9 R9 K12 ["StreamTypes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R10 R10 K13 ["Util"]
       70 GETTABLEKS                       R10 R10 K14 ["StreamEventUtils"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K1 [require]
       75 GETIMPORT                        R11 K3 [script]
       77 GETTABLEKS                       R11 R11 K13 ["Util"]
       79 GETTABLEKS                       R11 R11 K15 ["TaskCollector"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K1 [require]
       84 GETIMPORT                        R12 K3 [script]
       86 GETTABLEKS                       R12 R12 K13 ["Util"]
       88 GETTABLEKS                       R12 R12 K16 ["Time"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K1 [require]
       93 GETIMPORT                        R13 K3 [script]
       95 GETTABLEKS                       R13 R13 K13 ["Util"]
       97 GETTABLEKS                       R13 R13 K17 ["Timer"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K1 [require]
      102 GETIMPORT                        R14 K3 [script]
      104 GETTABLEKS                       R14 R14 K13 ["Util"]
      106 GETTABLEKS                       R14 R14 K18 ["capToolResult"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K1 [require]
      111 GETIMPORT                        R15 K3 [script]
      113 GETTABLEKS                       R15 R15 K19 ["Compaction"]
      115 GETTABLEKS                       R15 R15 K20 ["CompactionSubagent"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K1 [require]
      120 GETIMPORT                        R16 K3 [script]
      122 GETTABLEKS                       R16 R16 K19 ["Compaction"]
      124 GETTABLEKS                       R16 R16 K21 ["compactThread"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K1 [require]
      129 GETIMPORT                        R17 K3 [script]
      131 GETTABLEKS                       R17 R17 K19 ["Compaction"]
      133 GETTABLEKS                       R17 R17 K22 ["CompactedStore"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K1 [require]
      138 GETIMPORT                        R18 K3 [script]
      140 GETTABLEKS                       R18 R18 K19 ["Compaction"]
      142 GETTABLEKS                       R18 R18 K23 ["estimateTokens"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K1 [require]
      147 GETIMPORT                        R19 K3 [script]
      149 GETTABLEKS                       R19 R19 K13 ["Util"]
      151 GETTABLEKS                       R19 R19 K24 ["truncateUtf8Safe"]
      153 CALL                             R18 1 1
      154 DUPTABLE                         R19 K25 [{"EngineEnv", "EngineFlags", "ErrorTypes", "LLMFormattedToolTypes", "LLMProcessEvent", "LLMRequest", "ModelQuality", "Providers", "StreamTypes", "StreamEventUtils", "TaskCollector", "Time", "Timer", "capToolResult", "CompactionSubagent", "compactThread", "CompactedStore", "estimateTokens", "truncateUtf8Safe"}]
      155 SETTABLEKS                       R0 R19 K4 ["EngineEnv"]
      157 SETTABLEKS                       R1 R19 K5 ["EngineFlags"]
      159 SETTABLEKS                       R2 R19 K6 ["ErrorTypes"]
      161 SETTABLEKS                       R3 R19 K7 ["LLMFormattedToolTypes"]
      163 SETTABLEKS                       R4 R19 K8 ["LLMProcessEvent"]
      165 SETTABLEKS                       R5 R19 K9 ["LLMRequest"]
      167 SETTABLEKS                       R6 R19 K10 ["ModelQuality"]
      169 SETTABLEKS                       R7 R19 K11 ["Providers"]
      171 SETTABLEKS                       R8 R19 K12 ["StreamTypes"]
      173 SETTABLEKS                       R9 R19 K14 ["StreamEventUtils"]
      175 SETTABLEKS                       R10 R19 K15 ["TaskCollector"]
      177 SETTABLEKS                       R11 R19 K16 ["Time"]
      179 SETTABLEKS                       R12 R19 K17 ["Timer"]
      181 SETTABLEKS                       R13 R19 K18 ["capToolResult"]
      183 SETTABLEKS                       R14 R19 K20 ["CompactionSubagent"]
      185 SETTABLEKS                       R15 R19 K21 ["compactThread"]
      187 SETTABLEKS                       R16 R19 K22 ["CompactedStore"]
      189 SETTABLEKS                       R17 R19 K23 ["estimateTokens"]
      191 SETTABLEKS                       R18 R19 K24 ["truncateUtf8Safe"]
      193 RETURN                           R19 1
