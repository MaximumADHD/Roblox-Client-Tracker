PROTO_0:
        0 GETIMPORT                        R2 K1 [script]
        2 LOADK                            R4 K2 ["Plugin"]
        3 NAMECALL                         R2 R2 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R2 2 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R2 K4 ["GetPluginComponent"]
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPTABLE                         R3 K1 [{"__index"}]
        4 DUPCLOSURE                       R4 K2 [PROTO_0]
        5 SETTABLEKS                       R4 R3 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [setmetatable]
       12 CALL                             R1 2 0
       13 RETURN                           R0 1
