PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R9 R0 K0 ["mockAssetId"]
        2 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 LOADN                            R1 57
        6 SETTABLEKS                       R1 R0 K1 ["mockAssetId"]
        8 DUPCLOSURE                       R1 K2 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K3 ["new"]
       12 DUPCLOSURE                       R1 K4 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K5 ["CreateAssetAndWaitForAssetId"]
       15 RETURN                           R0 1
