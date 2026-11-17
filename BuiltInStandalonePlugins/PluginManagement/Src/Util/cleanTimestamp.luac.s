PROTO_0:
        0 LOADK                            R3 K0 ["%."]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 LOADN                            R5 1
        6 SUBK                             R6 R1 K2 [1]
        7 NAMECALL                         R3 R0 K3 ["sub"]
        9 CALL                             R3 3 1
       10 LOADK                            R4 K4 ["Z"]
       11 CONCAT                           R2 R3 R4
       12 RETURN                           R2 1
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
