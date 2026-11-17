PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioModerationUXNewDeactivatedBackend"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K4 [game]
        7 LOADK                            R2 K5 ["StudioModerationUXNewDeactivatedBackend"]
        8 NAMECALL                         R0 R0 K6 ["GetFastFlag"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
