PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+7]
        2 DUPTABLE                         R2 K2 [{"currentSoundId", "isPlaying"}]
        3 LOADK                            R3 K3 [130761235]
        4 SETTABLEKS                       R3 R2 K0 ["currentSoundId"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K1 ["isPlaying"]
        9 MOVE                             R0 R2
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
