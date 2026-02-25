PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R2 R3 K1 ["creatorId"]
        4 GETTABLEKS                       R4 R0 K0 ["GameOwnerMetadata"]
        6 GETTABLEKS                       R3 R4 K2 ["creatorType"]
        8 LOADB                            R4 0
        9 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
       11 JUMPIFNOTEQ                      R3 R5 ; [+5]
       13 JUMPIFEQ                         R2 R1 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
