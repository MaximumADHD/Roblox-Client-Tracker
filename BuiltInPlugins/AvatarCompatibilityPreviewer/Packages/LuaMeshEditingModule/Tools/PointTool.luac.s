PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R2 K7 ["VertexToolBase"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["MeshEditingContexts"]
       18 GETTABLEKS                       R3 R3 K9 ["MeshEditingContextBase"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R4 2 0
       23 FASTCALL2                        SETMETATABLE R4 R1 ; [+4]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R3 K11 [setmetatable]
       28 CALL                             R3 2 1
       29 SETTABLEKS                       R3 R3 K12 ["__index"]
       31 DUPCLOSURE                       R4 K13 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K14 ["new"]
       36 RETURN                           R3 1
