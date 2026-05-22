PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K4 [{"type", "name", "description", "parameters"}]
        7 LOADK                            R10 K5 ["function"]
        8 SETTABLEKS                       R10 R9 K0 ["type"]
       10 GETTABLEKS                       R10 R6 K1 ["name"]
       12 SETTABLEKS                       R10 R9 K1 ["name"]
       14 GETTABLEKS                       R10 R6 K2 ["description"]
       16 SETTABLEKS                       R10 R9 K2 ["description"]
       18 DUPTABLE                         R10 K8 [{"type", "properties", "required"}]
       19 LOADK                            R11 K9 ["object"]
       20 SETTABLEKS                       R11 R10 K0 ["type"]
       22 GETTABLEKS                       R11 R6 K10 ["inputSchema"]
       24 GETTABLEKS                       R11 R11 K6 ["properties"]
       26 SETTABLEKS                       R11 R10 K6 ["properties"]
       28 GETTABLEKS                       R11 R6 K10 ["inputSchema"]
       30 GETTABLEKS                       R11 R11 K7 ["required"]
       32 SETTABLEKS                       R11 R10 K7 ["required"]
       34 SETTABLEKS                       R10 R9 K3 ["parameters"]
       36 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K13 [table.insert]
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 2 ; [-37]
       44 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWTABLE                         R9 2 0
        8 LOADK                            R10 K0 ["function"]
        9 SETTABLEKS                       R10 R9 K1 ["type"]
       11 DUPTABLE                         R10 K5 [{"name", "description", "parameters"}]
       12 GETTABLEKS                       R11 R6 K2 ["name"]
       14 SETTABLEKS                       R11 R10 K2 ["name"]
       16 GETTABLEKS                       R11 R6 K3 ["description"]
       18 SETTABLEKS                       R11 R10 K3 ["description"]
       20 DUPTABLE                         R11 K8 [{"type", "properties", "required"}]
       21 LOADK                            R12 K9 ["object"]
       22 SETTABLEKS                       R12 R11 K1 ["type"]
       24 GETTABLEKS                       R12 R6 K10 ["inputSchema"]
       26 GETTABLEKS                       R12 R12 K6 ["properties"]
       28 SETTABLEKS                       R12 R11 K6 ["properties"]
       30 GETTABLEKS                       R12 R6 K10 ["inputSchema"]
       32 GETTABLEKS                       R12 R12 K7 ["required"]
       34 SETTABLEKS                       R12 R11 K7 ["required"]
       36 SETTABLEKS                       R11 R10 K4 ["parameters"]
       38 SETTABLEKS                       R10 R9 K0 ["function"]
       40 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K13 [table.insert]
       45 CALL                             R7 2 0
       46 FORGLOOP                         R2 2 ; [-41]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R2 K9 ["LLMFormattedToolTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["ModelContextProtocol"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["OpenAI"]
       33 GETTABLEKS                       R4 R4 K13 ["OpenAIRequestTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Flags"]
       40 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantNewOpenAIAdapter"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K16 [PROTO_0]
       44 DUPCLOSURE                       R6 K17 [PROTO_1]
       45 DUPTABLE                         R7 K19 [{"formatTools"}]
       46 MOVE                             R9 R4
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+2]
       49 MOVE                             R8 R5
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R6
       52 SETTABLEKS                       R8 R7 K18 ["formatTools"]
       54 RETURN                           R7 1
