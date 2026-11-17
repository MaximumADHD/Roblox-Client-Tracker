PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetEngineFeature"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

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
