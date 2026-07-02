PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAnimationGraphEditor"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAnimationGraphEditor"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 NEWTABLE                         R0 1 0
       10 DUPCLOSURE                       R1 K4 [PROTO_0]
       11 SETTABLEKS                       R1 R0 K5 ["getFFlagEnableAnimationGraphEditor"]
       13 RETURN                           R0 1
