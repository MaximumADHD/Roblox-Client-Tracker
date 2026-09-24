PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R8 R1
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 JUMPIFNOT                        R8 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R7
       15 GETIMPORT                        R8 K4 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 [inext] ; [-12]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
