PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioModerationUXNewDeactivatedBackend"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K4 [game]
        6 LOADK                            R2 K5 ["StudioModerationUXNewDeactivatedBackend"]
        7 NAMECALL                         R0 R0 K6 ["GetFastFlag"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
