PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K0 ["setSink"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          REF R1
       10 SETTABLEKS                       R2 R0 K1 ["log"]
       12 CLOSEUPVALS                      R1
       13 RETURN                           R0 1
