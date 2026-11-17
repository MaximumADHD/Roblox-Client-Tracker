PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
