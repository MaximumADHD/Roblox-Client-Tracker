PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["Connect"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Connect"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["Connect"]
        5 RETURN                           R0 1
