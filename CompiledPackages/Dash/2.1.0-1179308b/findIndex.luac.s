PROTO_0:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 MOVE                             R7 R1
        6 MOVE                             R8 R6
        7 MOVE                             R9 R5
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+1]
       10 RETURN                           R5 1
       11 FORGLOOP                         R2 2 [inext] ; [-7]
       13 LOADNIL                          R2
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
