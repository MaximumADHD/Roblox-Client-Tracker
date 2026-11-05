PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 LOADN                            R6 1
        4 LENGTH                           R4 R0
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETTABLE                         R7 R0 R6
        8 JUMPIFEQ                         R7 R1 ; [+4]
       10 GETTABLE                         R7 R0 R6
       11 SETTABLE                         R7 R2 R3
       12 ADDK                             R3 R3 K0 [1]
       13 FORNLOOP                         R4
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
