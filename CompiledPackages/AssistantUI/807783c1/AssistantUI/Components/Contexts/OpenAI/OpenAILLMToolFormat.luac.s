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
       36 DUPCLOSURE                       R4 K14 [PROTO_0]
       37 DUPTABLE                         R5 K16 [{"formatTools"}]
       38 SETTABLEKS                       R4 R5 K15 ["formatTools"]
       40 RETURN                           R5 1
