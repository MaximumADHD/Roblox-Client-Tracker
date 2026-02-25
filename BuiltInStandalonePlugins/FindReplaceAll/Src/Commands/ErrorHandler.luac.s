PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R2 1
        6 LOADNIL                          R3
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["wrap"]
        6 RETURN                           R0 1
