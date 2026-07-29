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
       15 DUPTABLE                         R10 K8 [{["type"] = "object", ["properties"], ["required"]}]
       16 GETTABLEKS                       R11 R6 K9 ["inputSchema"]
       18 GETTABLEKS                       R11 R11 K6 ["properties"]
       20 SETTABLEKS                       R11 R10 K6 ["properties"]
       22 GETTABLEKS                       R11 R6 K9 ["inputSchema"]
       24 GETTABLEKS                       R11 R11 K7 ["required"]
       26 SETTABLEKS                       R11 R10 K7 ["required"]
       28 SETTABLEKS                       R10 R9 K2 ["input_schema"]
       30 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K12 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

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
