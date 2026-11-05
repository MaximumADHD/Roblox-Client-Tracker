PROTO_0:
        0 NAMECALL                         R6 R1 K0 ["len"]
        2 CALL                             R6 1 1
        3 MINUS                            R5 R6
        4 NAMECALL                         R3 R0 K1 ["sub"]
        6 CALL                             R3 2 1
        7 JUMPIFEQ                         R3 R1 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
