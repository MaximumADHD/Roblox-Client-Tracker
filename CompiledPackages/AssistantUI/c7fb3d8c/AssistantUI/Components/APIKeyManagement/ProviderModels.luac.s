PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Claude"] ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEN                        R1 R2 1
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKS                    R0 K1 ["Gemini"] ; [+4]
        7 GETUPVAL                         R2 1
        8 GETTABLEN                        R1 R2 1
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R0 K2 ["OpenAI"] ; [+4]
       12 GETUPVAL                         R2 2
       13 GETTABLEN                        R1 R2 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADK                            R1 K0 ["Studio"]
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K3 [table.find]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADK                            R1 K4 ["Claude"]
       12 RETURN                           R1 1
       13 GETIMPORT                        R1 K3 [table.find]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADK                            R1 K5 ["Gemini"]
       20 RETURN                           R1 1
       21 GETIMPORT                        R1 K3 [table.find]
       23 GETUPVAL                         R2 3
       24 MOVE                             R3 R0
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+2]
       27 LOADK                            R1 K6 ["OpenAI"]
       28 RETURN                           R1 1
       29 LOADK                            R1 K0 ["Studio"]
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ANTHROPIC_PROVIDER_ENABLED"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Claude"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["OPENAI_PROVIDER_ENABLED"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K3 ["OpenAI"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["GEMINI_PROVIDER_ENABLED"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+3]
       19 LOADK                            R1 K5 ["Gemini"]
       20 RETURN                           R1 1
       21 LOADNIL                          R1
       22 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["Claude"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["ANTHROPIC_PROVIDER_ENABLED"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K2 ["OpenAI"] ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["OPENAI_PROVIDER_ENABLED"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K4 ["Gemini"] ; [+5]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K5 ["GEMINI_PROVIDER_ENABLED"]
       17 RETURN                           R1 1
       18 LOADK                            R1 K6 [""]
       19 RETURN                           R1 1

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
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["parseModelsFromFString"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FStringMCPAssistantAnthropicModels"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Flags"]
       30 GETTABLEKS                       R5 R6 K11 ["FStringMCPAssistantGeminiModels"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Flags"]
       37 GETTABLEKS                       R6 R7 K12 ["FStringMCPAssistantOpenAIModels"]
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
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 DUPCLOSURE                       R11 K15 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 DUPCLOSURE                       R12 K16 [PROTO_2]
       64 CAPTURE                          VAL R1
       65 DUPCLOSURE                       R13 K17 [PROTO_3]
       66 CAPTURE                          VAL R1
       67 DUPTABLE                         R14 K25 [{"claudeModels", "geminiModels", "openaiModels", "getFirstModelForProvider", "getProviderForModel", "getProviderForCheckboxSettingsKey", "getCheckboxSettingsKeyForProvider"}]
       68 SETTABLEKS                       R7 R14 K18 ["claudeModels"]
       70 SETTABLEKS                       R8 R14 K19 ["geminiModels"]
       72 SETTABLEKS                       R9 R14 K20 ["openaiModels"]
       74 SETTABLEKS                       R10 R14 K21 ["getFirstModelForProvider"]
       76 SETTABLEKS                       R11 R14 K22 ["getProviderForModel"]
       78 SETTABLEKS                       R12 R14 K23 ["getProviderForCheckboxSettingsKey"]
       80 SETTABLEKS                       R13 R14 K24 ["getCheckboxSettingsKeyForProvider"]
       82 RETURN                           R14 1
