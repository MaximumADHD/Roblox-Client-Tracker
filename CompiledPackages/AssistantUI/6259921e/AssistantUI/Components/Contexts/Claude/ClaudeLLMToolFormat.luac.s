PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K3 [{"name", "description", "input_schema"}]
        7 GETTABLEKS                       R10 R6 K0 ["name"]
        9 SETTABLEKS                       R10 R9 K0 ["name"]
       11 GETTABLEKS                       R10 R6 K1 ["description"]
       13 SETTABLEKS                       R10 R9 K1 ["description"]
       15 DUPTABLE                         R10 K7 [{"type", "properties", "required"}]
       16 LOADK                            R11 K8 ["object"]
       17 SETTABLEKS                       R11 R10 K4 ["type"]
       19 GETTABLEKS                       R11 R6 K9 ["inputSchema"]
       21 GETTABLEKS                       R11 R11 K5 ["properties"]
       23 SETTABLEKS                       R11 R10 K5 ["properties"]
       25 GETTABLEKS                       R11 R6 K9 ["inputSchema"]
       27 GETTABLEKS                       R11 R11 K6 ["required"]
       29 SETTABLEKS                       R11 R10 K6 ["required"]
       31 SETTABLEKS                       R10 R9 K2 ["input_schema"]
       33 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K12 [table.insert]
       38 CALL                             R7 2 0
       39 FORGLOOP                         R2 2 ; [-34]
       41 RETURN                           R1 1

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
