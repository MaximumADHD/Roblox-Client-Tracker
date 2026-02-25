PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["MeshName"]
        3 GETTABLEKS                       R4 R1 K0 ["MeshName"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R0 K1 ["Index"]
        9 GETTABLEKS                       R4 R1 K1 ["Index"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"MeshName", "Index", "__eq"}]
        1 SETTABLEKS                       R0 R3 K0 ["MeshName"]
        3 SETTABLEKS                       R1 R3 K1 ["Index"]
        5 DUPCLOSURE                       R4 K4 [PROTO_0]
        6 SETTABLEKS                       R4 R3 K2 ["__eq"]
        8 GETUPVAL                         R4 0
        9 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       11 GETIMPORT                        R2 K6 [setmetatable]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1
