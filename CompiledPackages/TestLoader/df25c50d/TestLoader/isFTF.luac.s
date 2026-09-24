PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["FTFUtil"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 DUPCLOSURE                       R3 K7 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 RETURN                           R3 1
