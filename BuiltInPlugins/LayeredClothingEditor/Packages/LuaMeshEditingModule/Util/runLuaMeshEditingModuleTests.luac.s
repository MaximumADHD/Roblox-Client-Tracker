PROTO_0:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["TestBootstrap"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K1 ["GetChildren"]
        6 CALL                             R2 1 1
        7 MOVE                             R5 R2
        8 GETVARARGS                       R6 -1
        9 NAMECALL                         R3 R1 K2 ["run"]
       11 CALL                             R3 -1 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPCLOSURE                       R1 K3 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
