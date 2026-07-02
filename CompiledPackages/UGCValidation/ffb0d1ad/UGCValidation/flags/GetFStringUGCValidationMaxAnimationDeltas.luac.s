PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidationMaxAnimationDeltas"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["asString"]
        3 CALL                             R1 0 -1
        4 FASTCALL                         TONUMBER ; [+2]
        5 GETIMPORT                        R0 K2 [tonumber]
        7 CALL                             R0 -1 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationMaxAnimationDeltas"]
        4 LOADK                            R3 K3 ["1.5"]
        5 NAMECALL                         R0 R0 K4 ["DefineFastString"]
        7 CALL                             R0 3 0
        8 NEWTABLE                         R0 2 0
       10 DUPCLOSURE                       R1 K5 [PROTO_0]
       11 SETTABLEKS                       R1 R0 K6 ["asString"]
       13 DUPCLOSURE                       R1 K7 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K8 ["asNumber"]
       17 RETURN                           R0 1
