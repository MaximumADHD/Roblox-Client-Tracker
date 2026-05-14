PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 MOVE                             R10 R6
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R7
       15 GETIMPORT                        R8 K2 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-13]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
