PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 CALL                             R8 1 1
        9 JUMPIFNOT                        R8 ; [+7]
       10 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K2 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 LENGTH                           R3 R2
       20 LENGTH                           R4 R0
       21 JUMPIFNOTEQ                      R3 R4 ; [+2]
       23 RETURN                           R0 1
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
