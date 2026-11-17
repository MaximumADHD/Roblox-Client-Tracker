PROTO_0:
        0 MOVE                             R2 R0
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R1 K1 [pcall]
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R2 1
        7 LOADNIL                          R3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["wrap"]
        6 RETURN                           R0 1
