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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Util"]
       21 GETTABLEKS                       R4 R4 K9 ["parseModelsFromFString"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R2 K10 ["DEFAULT_STUDIO_MODEL"]
       26 MOVE                             R5 R3
       27 GETTABLEKS                       R6 R1 K11 ["FStringMCPAssistantAnthropicModels"]
       29 CALL                             R5 1 1
       30 MOVE                             R6 R3
       31 GETTABLEKS                       R7 R1 K12 ["FStringMCPAssistantGeminiModels"]
       33 CALL                             R6 1 1
       34 MOVE                             R7 R3
       35 GETTABLEKS                       R8 R1 K13 ["FStringMCPAssistantOpenAIModels"]
       37 CALL                             R7 1 1
       38 DUPCLOSURE                       R8 K14 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 DUPCLOSURE                       R9 K15 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 DUPCLOSURE                       R10 K16 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R11 K17 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 DUPTABLE                         R12 K25 [{"claudeModels", "geminiModels", "openaiModels", "getFirstModelForProvider", "getProviderForModel", "getProviderForCheckboxSettingsKey", "getCheckboxSettingsKeyForProvider"}]
       54 SETTABLEKS                       R5 R12 K18 ["claudeModels"]
       56 SETTABLEKS                       R6 R12 K19 ["geminiModels"]
       58 SETTABLEKS                       R7 R12 K20 ["openaiModels"]
       60 SETTABLEKS                       R8 R12 K21 ["getFirstModelForProvider"]
       62 SETTABLEKS                       R9 R12 K22 ["getProviderForModel"]
       64 SETTABLEKS                       R10 R12 K23 ["getProviderForCheckboxSettingsKey"]
       66 SETTABLEKS                       R11 R12 K24 ["getCheckboxSettingsKeyForProvider"]
       68 RETURN                           R12 1
