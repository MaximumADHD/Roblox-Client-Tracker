PROTO_0:
        0 MOVE                             R4 R1
        1 CALL                             R4 0 -1
        2 NAMECALL                         R2 R0 K0 ["SetActive"]
        4 CALL                             R2 -1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
