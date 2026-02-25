PROTO_0:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 255
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 MOVE                             R6 R1
        6 MOVE                             R7 R5
        7 MOVE                             R8 R4
        8 CALL                             R6 2 1
        9 JUMPIFEQKNIL                     R6 ; [+2]
       11 RETURN                           R6 1
       12 FORNLOOP                         R2
       13 LOADNIL                          R2
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
