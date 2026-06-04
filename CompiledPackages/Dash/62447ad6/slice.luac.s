PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 ORK                              R4 R1 K0 [1]
        3 MOVE                             R5 R2
        4 JUMPIF                           R5 ; [+1]
        5 LENGTH                           R5 R0
        6 LOADN                            R6 0
        7 JUMPIFNOTLT                      R4 R6 ; [+3]
        9 LENGTH                           R6 R0
       10 ADD                              R4 R6 R4
       11 JUMPIFNOT                        R5 ; [+5]
       12 LOADN                            R6 0
       13 JUMPIFNOTLT                      R5 R6 ; [+3]
       15 LENGTH                           R6 R0
       16 ADD                              R5 R6 R5
       17 MOVE                             R8 R4
       18 MOVE                             R6 R5
       19 LOADN                            R7 1
       20 FORNPREP                         R6
       21 GETTABLE                         R11 R0 R8
       22 FASTCALL2                        TABLE_INSERT R3 R11 ; [+3]
       24 MOVE                             R10 R3
       25 GETUPVAL                         R9 0
       26 CALL                             R9 2 0
       27 FORNLOOP                         R6
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.insert]
        3 DUPCLOSURE                       R1 K3 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
