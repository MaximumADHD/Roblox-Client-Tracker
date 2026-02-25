PROTO_0:
        0 DUPTABLE                         R0 K1 [{"order"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["order"]
        4 GETUPVAL                         R3 0
        5 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K3 [setmetatable]
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["order"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["order"]
        5 GETTABLEKS                       R1 R0 K1 ["order"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["getNextOrder"]
       12 RETURN                           R0 1
