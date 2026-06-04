PROTO_0:
        0 JUMPIFNOT                        R1 ; [+4]
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETTABLEKS                       R2 R0 K0 ["onRightClick"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K0 ["onRightClick"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["selectInstances"]
        6 RETURN                           R0 1
