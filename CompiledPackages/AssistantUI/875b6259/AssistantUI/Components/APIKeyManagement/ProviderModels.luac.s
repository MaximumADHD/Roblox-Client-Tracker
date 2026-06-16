PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
        3 GETTABLEKS                       R1 R1 K1 ["Claude"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 GETTABLEN                        R1 R2 1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       13 GETTABLEKS                       R1 R1 K2 ["Gemini"]
       15 JUMPIFNOTEQ                      R0 R1 ; [+4]
       17 GETUPVAL                         R2 2
       18 GETTABLEN                        R1 R2 1
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       23 GETTABLEKS                       R1 R1 K3 ["OpenAI"]
       25 JUMPIFNOTEQ                      R0 R1 ; [+4]
       27 GETUPVAL                         R2 3
       28 GETTABLEN                        R1 R2 1
       29 RETURN                           R1 1
       30 LOADNIL                          R1
       31 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
        6 GETTABLEKS                       R1 R1 K1 ["Studio"]
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [table.find]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       18 GETTABLEKS                       R1 R1 K5 ["Claude"]
       20 RETURN                           R1 1
       21 GETIMPORT                        R1 K4 [table.find]
       23 GETUPVAL                         R2 3
       24 MOVE                             R3 R0
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       30 GETTABLEKS                       R1 R1 K6 ["Gemini"]
       32 RETURN                           R1 1
       33 GETIMPORT                        R1 K4 [table.find]
       35 GETUPVAL                         R2 4
       36 MOVE                             R3 R0
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+6]
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       42 GETTABLEKS                       R1 R1 K7 ["OpenAI"]
       44 RETURN                           R1 1
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       48 GETTABLEKS                       R1 R1 K1 ["Studio"]
       50 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ANTHROPIC_PROVIDER_ENABLED"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
        8 GETTABLEKS                       R1 R1 K2 ["Claude"]
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["OPENAI_PROVIDER_ENABLED"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+7]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
       19 GETTABLEKS                       R1 R1 K4 ["OpenAI"]
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K5 ["GEMINI_PROVIDER_ENABLED"]
       25 JUMPIFNOTEQ                      R0 R1 ; [+7]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
       30 GETTABLEKS                       R1 R1 K6 ["Gemini"]
       32 RETURN                           R1 1
       33 LOADNIL                          R1
       34 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
        3 GETTABLEKS                       R1 R1 K1 ["Claude"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["ANTHROPIC_PROVIDER_ENABLED"]
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       14 GETTABLEKS                       R1 R1 K3 ["OpenAI"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+5]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["OPENAI_PROVIDER_ENABLED"]
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
       25 GETTABLEKS                       R1 R1 K5 ["Gemini"]
       27 JUMPIFNOTEQ                      R0 R1 ; [+5]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K6 ["GEMINI_PROVIDER_ENABLED"]
       32 RETURN                           R1 1
       33 LOADK                            R1 K7 [""]
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["parseModelsFromFString"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R4 K10 ["FStringMCPAssistantAnthropicModels"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Flags"]
       30 GETTABLEKS                       R5 R5 K11 ["FStringMCPAssistantGeminiModels"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Flags"]
       37 GETTABLEKS                       R6 R6 K12 ["FStringMCPAssistantOpenAIModels"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K13 ["DEFAULT_STUDIO_MODEL"]
       42 MOVE                             R7 R2
       43 MOVE                             R8 R3
       44 CALL                             R8 0 -1
       45 CALL                             R7 -1 1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R4
       48 CALL                             R9 0 -1
       49 CALL                             R8 -1 1
       50 MOVE                             R9 R2
       51 MOVE                             R10 R5
       52 CALL                             R10 0 -1
       53 CALL                             R9 -1 1
       54 DUPCLOSURE                       R10 K14 [PROTO_0]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 DUPCLOSURE                       R11 K15 [PROTO_1]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 DUPCLOSURE                       R12 K16 [PROTO_2]
       66 CAPTURE                          VAL R1
       67 DUPCLOSURE                       R13 K17 [PROTO_3]
       68 CAPTURE                          VAL R1
       69 DUPTABLE                         R14 K25 [{"claudeModels", "geminiModels", "openaiModels", "getFirstModelForProvider", "getProviderForModel", "getProviderForCheckboxSettingsKey", "getCheckboxSettingsKeyForProvider"}]
       70 SETTABLEKS                       R7 R14 K18 ["claudeModels"]
       72 SETTABLEKS                       R8 R14 K19 ["geminiModels"]
       74 SETTABLEKS                       R9 R14 K20 ["openaiModels"]
       76 SETTABLEKS                       R10 R14 K21 ["getFirstModelForProvider"]
       78 SETTABLEKS                       R11 R14 K22 ["getProviderForModel"]
       80 SETTABLEKS                       R12 R14 K23 ["getProviderForCheckboxSettingsKey"]
       82 SETTABLEKS                       R13 R14 K24 ["getCheckboxSettingsKeyForProvider"]
       84 RETURN                           R14 1
