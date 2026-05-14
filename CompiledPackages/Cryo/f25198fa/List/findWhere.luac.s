PROTO_0:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 MOVE                             R5 R1
        5 GETTABLE                         R6 R0 R4
        6 MOVE                             R7 R4
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+1]
        9 RETURN                           R4 1
       10 FORNLOOP                         R2
       11 LOADNIL                          R2
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
