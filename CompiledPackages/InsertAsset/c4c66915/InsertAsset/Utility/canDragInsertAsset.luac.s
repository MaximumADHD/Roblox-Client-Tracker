PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.Place]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K5 [Enum.AssetType.Plugin]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
