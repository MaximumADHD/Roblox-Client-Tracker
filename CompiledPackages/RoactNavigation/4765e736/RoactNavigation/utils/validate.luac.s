PROTO_0:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+8]
        2 GETIMPORT                        R1 K1 [error]
        4 GETIMPORT                        R2 K4 [string.format]
        6 GETVARARGS                       R3 -1
        7 CALL                             R2 -1 1
        8 LOADN                            R3 3
        9 CALL                             R1 2 0
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
