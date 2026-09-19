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
       20 DUPTABLE                         R11 K9 [{["type"] = "object", ["properties"], ["required"]}]
       21 GETTABLEKS                       R12 R6 K10 ["inputSchema"]
       23 GETTABLEKS                       R12 R12 K7 ["properties"]
       25 SETTABLEKS                       R12 R11 K7 ["properties"]
       27 GETTABLEKS                       R12 R6 K10 ["inputSchema"]
       29 GETTABLEKS                       R12 R12 K8 ["required"]
       31 SETTABLEKS                       R12 R11 K8 ["required"]
       33 SETTABLEKS                       R11 R10 K4 ["parameters"]
       35 SETTABLEKS                       R10 R9 K0 ["function"]
       37 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       39 MOVE                             R8 R1
       40 GETIMPORT                        R7 K13 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R2 2 ; [-38]
       45 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPTABLE                         R4 K11 [{"formatTools"}]
       23 SETTABLEKS                       R3 R4 K10 ["formatTools"]
       25 RETURN                           R4 1
