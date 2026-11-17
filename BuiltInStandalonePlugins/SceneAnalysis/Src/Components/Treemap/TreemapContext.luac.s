PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["selectFromTreemap"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["clear"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K0 ["original"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 4 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R3 R2 K0 ["selectNodeFromTreemap"]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R3 R2 K1 ["clearSelectedNodes"]
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R3 R2 K2 ["rightClickNode"]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
