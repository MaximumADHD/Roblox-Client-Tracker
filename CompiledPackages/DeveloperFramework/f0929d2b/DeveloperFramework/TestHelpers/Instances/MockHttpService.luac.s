PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_index"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_index"]
        4 GETUPVAL                         R2 0
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_index"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_index"]
        5 GETTABLEKS                       R2 R0 K0 ["_index"]
        7 FASTCALL1                        TOSTRING R2 ; [+2]
        8 GETIMPORT                        R1 K3 [tostring]
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GenerateGUID"]
       12 RETURN                           R0 1
