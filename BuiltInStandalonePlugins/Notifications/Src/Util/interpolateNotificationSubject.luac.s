PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 JUMPIFNOT                        R1 ; [+6]
        2 LOADK                            R4 K0 ["{(.-)}"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R0 K1 ["gsub"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1
        8 RETURN                           R0 1
        9 LOADK                            R2 K2 [""]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
