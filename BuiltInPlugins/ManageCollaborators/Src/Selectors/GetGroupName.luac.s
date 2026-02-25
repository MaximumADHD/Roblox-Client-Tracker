PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["GroupMetadata"]
        2 GETTABLEKS                       R2 R3 K1 ["NewGroupMetadata"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["GroupMetadata"]
        7 GETTABLEKS                       R2 R3 K2 ["CurrentGroupMetadata"]
        9 GETTABLE                         R3 R2 R1
       10 GETTABLEKS                       R4 R3 K3 ["Name"]
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
