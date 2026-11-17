PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        4 GETIMPORT                        R0 K4 [setmetatable]
        6 CALL                             R0 2 1
        7 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["lastReadContent"]
        2 GETTABLEKS                       R2 R0 K1 ["mockText"]
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 LOADK                            R1 K1 ["Mock text content"]
        6 SETTABLEKS                       R1 R0 K2 ["mockText"]
        8 DUPCLOSURE                       R1 K3 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K4 ["new"]
       12 DUPCLOSURE                       R1 K5 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K6 ["ReadTextContentAsync"]
       15 RETURN                           R0 1
