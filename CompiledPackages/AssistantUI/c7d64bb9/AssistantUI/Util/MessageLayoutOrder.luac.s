PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADN                            R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K0 ["getNextLayoutOrder"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          REF R1
       10 SETTABLEKS                       R2 R0 K1 ["reset"]
       12 CLOSEUPVALS                      R1
       13 RETURN                           R0 1
