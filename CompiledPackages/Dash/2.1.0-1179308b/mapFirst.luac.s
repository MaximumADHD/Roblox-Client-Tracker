PROTO_0:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 MOVE                             R7 R1
        6 MOVE                             R8 R6
        7 MOVE                             R9 R5
        8 CALL                             R7 2 1
        9 JUMPIFEQKNIL                     R7 ; [+2]
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 [inext] ; [-8]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
