PROTO_0:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["__"]
        4 CALL                             R1 2 1
        5 LENGTH                           R3 R1
        6 JUMPIFEQKN                       R3 K4 [2] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["isMaterialVariantByIdentifier"]
        4 GETGLOBAL                        R0 K1 ["isMaterialVariantByIdentifier"]
        6 RETURN                           R0 1
