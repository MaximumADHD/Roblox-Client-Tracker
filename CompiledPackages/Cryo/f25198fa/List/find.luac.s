PROTO_0:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 JUMPIFNOTEQ                      R5 R1 ; [+2]
        7 RETURN                           R4 1
        8 FORNLOOP                         R2
        9 LOADNIL                          R2
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
