PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UseNewShapecasts"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 DUPCLOSURE                       R2 K3 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1
