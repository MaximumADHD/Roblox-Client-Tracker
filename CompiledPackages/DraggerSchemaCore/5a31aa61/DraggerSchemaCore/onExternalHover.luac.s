PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["onInstanceHovered"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
