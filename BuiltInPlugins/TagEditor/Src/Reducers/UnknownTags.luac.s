PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R1 K0 ["type"]
        7 JUMPIFNOTEQKS                    R2 K1 ["SetUnknownTags"] ; [+4]
        9 GETTABLEKS                       R2 R1 K2 ["data"]
       11 RETURN                           R2 1
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
