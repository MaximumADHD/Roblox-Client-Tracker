PROTO_0:
        0 LOADK                            R3 K0 ["%."]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADN                            R7 1
        6 SUBK                             R8 R1 K2 [1]
        7 NAMECALL                         R5 R0 K3 ["sub"]
        9 CALL                             R5 3 1
       10 MOVE                             R3 R5
       11 LOADK                            R4 K4 ["Z"]
       12 CONCAT                           R2 R3 R4
       13 RETURN                           R2 1
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
