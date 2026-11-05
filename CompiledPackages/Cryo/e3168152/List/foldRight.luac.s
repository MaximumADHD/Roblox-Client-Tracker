PROTO_0:
        0 MOVE                             R3 R2
        1 LENGTH                           R6 R0
        2 LOADN                            R4 1
        3 LOADN                            R5 -1
        4 FORNPREP                         R4
        5 MOVE                             R7 R1
        6 MOVE                             R8 R3
        7 GETTABLE                         R9 R0 R6
        8 MOVE                             R10 R6
        9 CALL                             R7 3 1
       10 MOVE                             R3 R7
       11 FORNLOOP                         R4
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
