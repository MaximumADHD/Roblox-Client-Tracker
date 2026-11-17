PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R2 R1 K1 ["SourceAssetId"]
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+2]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R1 K0 ["Parent"]
       11 JUMPBACK                         ; [-10]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
