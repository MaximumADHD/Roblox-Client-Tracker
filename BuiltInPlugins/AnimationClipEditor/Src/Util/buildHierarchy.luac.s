PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+12]
        6 GETIMPORT                        R4 K1 [ipairs]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 3
       10 FORGPREP_INEXT                   R4
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R8
       13 MOVE                             R11 R1
       14 CALL                             R9 2 1
       15 SETTABLE                         R9 R2 R8
       16 FORGLOOP                         R4 2 [inext] ; [-6]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
