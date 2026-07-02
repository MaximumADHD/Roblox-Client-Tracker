PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["GroupMigrationStatus"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["GroupMigrationStatus"]
        5 GETTABLEKS                       R1 R1 K1 ["Status"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
