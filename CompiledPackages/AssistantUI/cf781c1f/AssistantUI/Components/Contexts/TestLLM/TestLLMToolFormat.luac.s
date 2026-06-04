PROTO_0:
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
       25 DUPCLOSURE                       R3 K12 [PROTO_0]
       26 DUPTABLE                         R4 K14 [{"formatTools"}]
       27 SETTABLEKS                       R3 R4 K13 ["formatTools"]
       29 RETURN                           R4 1
