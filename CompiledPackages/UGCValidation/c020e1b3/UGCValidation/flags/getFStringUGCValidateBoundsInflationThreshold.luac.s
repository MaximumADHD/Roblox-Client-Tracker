PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateBoundsInflationThreshold"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidateBoundsInflationThreshold"]
        4 LOADK                            R3 K3 ["0.03"]
        5 NAMECALL                         R0 R0 K4 ["DefineFastString"]
        7 CALL                             R0 3 0
        8 DUPCLOSURE                       R0 K5 [PROTO_0]
        9 RETURN                           R0 1
