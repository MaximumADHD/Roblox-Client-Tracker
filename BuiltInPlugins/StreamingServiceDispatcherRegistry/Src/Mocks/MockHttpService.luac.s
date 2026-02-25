PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["decoded"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["decoded"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["JSONDecode"]
       12 RETURN                           R0 1
