PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LENGTH                           R2 R0
        3 ADDK                             R3 R2 K0 [1]
        4 LOADN                            R6 1
        5 MOVE                             R4 R2
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 SUB                              R8 R3 R6
        9 GETTABLE                         R7 R0 R8
       10 SETTABLE                         R7 R1 R6
       11 FORNLOOP                         R4
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
