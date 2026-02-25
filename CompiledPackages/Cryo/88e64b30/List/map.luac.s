PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 MOVE                             R6 R1
        7 GETTABLE                         R7 R0 R5
        8 MOVE                             R8 R5
        9 CALL                             R6 2 1
       10 SETTABLE                         R6 R2 R5
       11 FORNLOOP                         R3
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
