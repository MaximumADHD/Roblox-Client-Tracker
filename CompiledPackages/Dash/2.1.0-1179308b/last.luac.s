PROTO_0:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 -1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R5 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 MOVE                             R6 R1
        9 MOVE                             R7 R5
       10 MOVE                             R8 R4
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R5 1
       14 FORNLOOP                         R2
       15 LOADNIL                          R2
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
