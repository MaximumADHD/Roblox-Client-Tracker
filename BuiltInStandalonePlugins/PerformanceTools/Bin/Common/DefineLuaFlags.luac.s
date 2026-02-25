PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RIDE11263EnableFeature"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RIDE11263EnableFeature"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPCLOSURE                       R0 K4 [PROTO_1]
        9 DUPTABLE                         R1 K6 [{"GetFFlagRIDE11263EnableFeature"}]
       10 DUPCLOSURE                       R2 K7 [PROTO_2]
       11 SETTABLEKS                       R2 R1 K5 ["GetFFlagRIDE11263EnableFeature"]
       13 RETURN                           R1 1
