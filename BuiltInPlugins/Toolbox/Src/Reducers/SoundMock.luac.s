PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+1]
        2 DUPTABLE                         R2 K4 [{[1] = 130761235, ["isPlaying"] = True}]
        3 MOVE                             R0 R2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
