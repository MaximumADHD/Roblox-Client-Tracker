PROTO_0:
        0 GETUPVAL                         R1 0
        1 ADDK                             R0 R1 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 SUBK                             R1 R0 K0 [1]
        2 JUMP                             ; [+1]
        3 LOADN                            R1 255
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
