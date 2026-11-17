PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K1 [{"__index"}]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [setmetatable]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1
