PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findInstance"]
        3 GETTABLEKS                       R3 R0 K1 ["path"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADK                            R5 K2 ["LuaSourceContainer"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R1 K4 ["initArgs"]
       15 GETTABLEKS                       R3 R3 K5 ["environment"]
       17 GETTABLEKS                       R4 R3 K6 ["openScriptAsync"]
       19 MOVE                             R5 R2
       20 GETTABLEKS                       R6 R0 K7 ["startLine"]
       22 GETTABLEKS                       R7 R0 K8 ["endLine"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ToolUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bridges"]
       18 GETTABLEKS                       R3 R3 K9 ["createReadFileBridge"]
       20 GETTABLEKS                       R3 R3 K10 ["ReadFileBridgeTypes"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 DUPTABLE                         R4 K13 [{"openScriptAsync"}]
       26 SETTABLEKS                       R3 R4 K12 ["openScriptAsync"]
       28 DUPTABLE                         R5 K15 [{"bridge"}]
       29 SETTABLEKS                       R4 R5 K14 ["bridge"]
       31 RETURN                           R5 1
