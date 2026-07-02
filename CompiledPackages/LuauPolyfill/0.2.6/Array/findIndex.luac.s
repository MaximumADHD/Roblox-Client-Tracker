PROTO_0:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 MOVE                             R6 R1
        6 MOVE                             R7 R5
        7 MOVE                             R8 R4
        8 MOVE                             R9 R0
        9 CALL                             R6 3 1
       10 JUMPIFNOT                        R6 ; [+1]
       11 RETURN                           R4 1
       12 FORNLOOP                         R2
       13 LOADN                            R2 -1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
