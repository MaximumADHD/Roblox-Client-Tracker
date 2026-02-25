PROTO_0:
        0 NEWTABLE                         R2 2 0
        2 SETTABLEKS                       R0 R2 K0 ["arg"]
        4 SETTABLEKS                       R1 R2 K1 ["Status"]
        6 GETUPVAL                         R5 0
        7 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [setmetatable]
       12 CALL                             R3 2 0
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["arg"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GetArg"]
       12 RETURN                           R0 1
