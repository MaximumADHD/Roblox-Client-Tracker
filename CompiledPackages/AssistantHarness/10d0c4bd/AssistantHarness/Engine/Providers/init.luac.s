PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewOpenAPIClients"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["formatTools"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["formatTools"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["ClaudeLLMSystemMessage"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["ClaudeLLMToolFormat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Engine"]
       25 GETTABLEKS                       R4 R4 K9 ["EngineFlags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["GeminiLLMSystemMessage"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["GeminiLLMToolFormat"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K12 ["LLMSystemMessage"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K13 ["LLMToolFormat"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K14 ["OpenAILLMSystemMessage"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K15 ["OpenAILLMToolFormat"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K8 ["Engine"]
       74 GETTABLEKS                       R11 R11 K16 ["StreamTypes"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETIMPORT                        R12 K1 [script]
       81 GETTABLEKS                       R12 R12 K17 ["ToolNames"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K18 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 DUPTABLE                         R13 K21 [{"formatTools", "getSystemMessage"}]
       89 SETTABLEKS                       R12 R13 K19 ["formatTools"]
       91 DUPCLOSURE                       R14 K22 [PROTO_1]
       92 SETTABLEKS                       R14 R13 K20 ["getSystemMessage"]
       94 DUPTABLE                         R14 K27 [{"Studio", "Claude", "Gemini", "OpenAI"}]
       95 SETTABLEKS                       R13 R14 K23 ["Studio"]
       97 DUPTABLE                         R15 K21 [{"formatTools", "getSystemMessage"}]
       98 GETTABLEKS                       R16 R2 K19 ["formatTools"]
      100 SETTABLEKS                       R16 R15 K19 ["formatTools"]
      102 GETTABLEKS                       R16 R1 K20 ["getSystemMessage"]
      104 SETTABLEKS                       R16 R15 K20 ["getSystemMessage"]
      106 SETTABLEKS                       R15 R14 K24 ["Claude"]
      108 DUPTABLE                         R15 K21 [{"formatTools", "getSystemMessage"}]
      109 GETTABLEKS                       R16 R5 K19 ["formatTools"]
      111 SETTABLEKS                       R16 R15 K19 ["formatTools"]
      113 GETTABLEKS                       R16 R4 K20 ["getSystemMessage"]
      115 SETTABLEKS                       R16 R15 K20 ["getSystemMessage"]
      117 SETTABLEKS                       R15 R14 K25 ["Gemini"]
      119 DUPTABLE                         R15 K21 [{"formatTools", "getSystemMessage"}]
      120 GETTABLEKS                       R16 R9 K19 ["formatTools"]
      122 SETTABLEKS                       R16 R15 K19 ["formatTools"]
      124 GETTABLEKS                       R16 R8 K20 ["getSystemMessage"]
      126 SETTABLEKS                       R16 R15 K20 ["getSystemMessage"]
      128 SETTABLEKS                       R15 R14 K26 ["OpenAI"]
      130 DUPCLOSURE                       R15 K28 [PROTO_2]
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 DUPTABLE                         R16 K30 [{"get", "ClaudeLLMSystemMessage", "ClaudeLLMToolFormat", "GeminiLLMSystemMessage", "GeminiLLMToolFormat", "LLMSystemMessage", "LLMToolFormat", "OpenAILLMSystemMessage", "OpenAILLMToolFormat", "ToolNames"}]
      134 SETTABLEKS                       R15 R16 K29 ["get"]
      136 SETTABLEKS                       R1 R16 K6 ["ClaudeLLMSystemMessage"]
      138 SETTABLEKS                       R2 R16 K7 ["ClaudeLLMToolFormat"]
      140 SETTABLEKS                       R4 R16 K10 ["GeminiLLMSystemMessage"]
      142 SETTABLEKS                       R5 R16 K11 ["GeminiLLMToolFormat"]
      144 SETTABLEKS                       R6 R16 K12 ["LLMSystemMessage"]
      146 SETTABLEKS                       R7 R16 K13 ["LLMToolFormat"]
      148 SETTABLEKS                       R8 R16 K14 ["OpenAILLMSystemMessage"]
      150 SETTABLEKS                       R9 R16 K15 ["OpenAILLMToolFormat"]
      152 SETTABLEKS                       R11 R16 K17 ["ToolNames"]
      154 RETURN                           R16 1
