PROTO_0:
        0 DUPTABLE                         R4 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 GETUPVAL                         R5 0
        4 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [setmetatable]
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["destroy"]
       12 RETURN                           R0 1
