PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LENGTH                           R4 R0
        3 LOADN                            R2 1
        4 LOADN                            R3 -1
        5 FORNPREP                         R2
        6 GETTABLE                         R7 R0 R4
        7 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
        9 MOVE                             R6 R1
       10 GETUPVAL                         R5 0
       11 CALL                             R5 2 0
       12 FORNLOOP                         R2
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.insert]
        3 DUPCLOSURE                       R1 K3 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
