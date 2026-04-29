PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+10]
        7 MOVE                             R1 R0
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
       11 GETIMPORT                        R3 K4 [unpack]
       13 CALL                             R3 1 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 2
       17 MOVE                             R2 R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
