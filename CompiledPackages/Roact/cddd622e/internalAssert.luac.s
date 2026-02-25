PROTO_0:
        0 JUMPIF                           R0 ; [+7]
        1 GETIMPORT                        R2 K1 [error]
        3 MOVE                             R4 R1
        4 LOADK                            R5 K2 [" (This is probably a bug in Roact!)"]
        5 CONCAT                           R3 R4 R5
        6 LOADN                            R4 3
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
