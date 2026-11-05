PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R0 R5
        7 SETTABLE                         R6 R2 R5
        8 FORNLOOP                         R3
        9 GETIMPORT                        R3 K2 [table.sort]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
