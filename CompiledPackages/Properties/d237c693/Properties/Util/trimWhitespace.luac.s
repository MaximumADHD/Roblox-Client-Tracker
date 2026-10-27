PROTO_0:
        0 LOADK                            R4 K1 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K2 ["match"]
        3 CALL                             R2 2 1
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
