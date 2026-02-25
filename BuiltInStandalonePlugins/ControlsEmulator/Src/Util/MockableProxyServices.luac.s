PROTO_0:
        0 GETIMPORT                        R1 K1 [wait]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [game]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetService"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"game", "waitProxy", "settingsProxy"}]
        2 GETIMPORT                        R1 K4 [game]
        4 SETTABLEKS                       R1 R0 K0 ["game"]
        6 DUPCLOSURE                       R1 K5 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K1 ["waitProxy"]
        9 DUPCLOSURE                       R1 K6 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K2 ["settingsProxy"]
       12 DUPTABLE                         R3 K8 [{"__index"}]
       13 DUPCLOSURE                       R4 K9 [PROTO_2]
       14 SETTABLEKS                       R4 R3 K7 ["__index"]
       16 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K11 [setmetatable]
       21 CALL                             R1 2 0
       22 RETURN                           R0 1
