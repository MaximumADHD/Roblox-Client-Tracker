PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R2 R2 K1 ["creatorType"]
        4 GETIMPORT                        R3 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
