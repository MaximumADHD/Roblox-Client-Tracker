PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 LOADN                            R3 1
        9 GETUPVAL                         R1 1
       10 LOADN                            R2 1
       11 FORNPREP                         R1
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLE                         R5 R6 R3
       16 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K1 [unpack]
       20 CALL                             R6 1 -1
       21 CALL                             R5 -1 -1
       22 SETLIST                          R4 R5 -1 [1]
       24 MOVE                             R0 R4
       25 FORNLOOP                         R1
       26 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K1 [unpack]
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
        9 RETURN                           R0 1
       10 NEWTABLE                         R2 0 0
       12 GETVARARGS                       R3 -1
       13 SETLIST                          R2 R3 -1 [1]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
