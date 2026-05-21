PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 LOADN                            R6 1
        4 LENGTH                           R4 R0
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 MOVE                             R7 R1
        8 GETTABLE                         R8 R0 R6
        9 MOVE                             R9 R6
       10 CALL                             R7 2 1
       11 JUMPIFEQKNIL                     R7 ; [+3]
       13 SETTABLE                         R7 R2 R3
       14 ADDK                             R3 R3 K0 [1]
       15 FORNLOOP                         R4
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
