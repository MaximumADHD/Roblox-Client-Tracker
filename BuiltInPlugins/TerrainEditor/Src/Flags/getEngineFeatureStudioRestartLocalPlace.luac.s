PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioRestartLocalPlace"]
        3 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
