PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 LOADK                            R5 K0 ["BasePart"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+5]
        6 SETTABLEKS                       R1 R0 K2 ["Material"]
        8 ORK                              R3 R2 K3 [""]
        9 SETTABLEKS                       R3 R0 K4 ["MaterialVariant"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
