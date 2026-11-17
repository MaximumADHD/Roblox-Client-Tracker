PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K5 [{[1] = "function", ["name"], ["description"], ["parameters"]}]
        7 GETTABLEKS                       R10 R6 K2 ["name"]
        9 SETTABLEKS                       R10 R9 K2 ["name"]
       11 GETTABLEKS                       R10 R6 K3 ["description"]
       13 SETTABLEKS                       R10 R9 K3 ["description"]
       15 DUPTABLE                         R10 K9 [{[1] = "object", ["properties"], ["required"]}]
       16 GETTABLEKS                       R11 R6 K10 ["inputSchema"]
       18 GETTABLEKS                       R11 R11 K7 ["properties"]
       20 SETTABLEKS                       R11 R10 K7 ["properties"]
       22 GETTABLEKS                       R11 R6 K10 ["inputSchema"]
       24 GETTABLEKS                       R11 R11 K8 ["required"]
       26 SETTABLEKS                       R11 R10 K8 ["required"]
       28 SETTABLEKS                       R10 R9 K4 ["parameters"]
       30 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K13 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPTABLE                         R3 K10 [{"formatTools"}]
       16 SETTABLEKS                       R2 R3 K9 ["formatTools"]
       18 RETURN                           R3 1
