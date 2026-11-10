PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetClassIcon"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["getClassIcon"]
       13 RETURN                           R1 1
