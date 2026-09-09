PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          REF R0
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          REF R0
        7 DUPTABLE                         R3 K2 [{"getIgnore", "setIgnore"}]
        8 SETTABLEKS                       R1 R3 K0 ["getIgnore"]
       10 SETTABLEKS                       R2 R3 K1 ["setIgnore"]
       12 CLOSEUPVALS                      R0
       13 RETURN                           R3 1
