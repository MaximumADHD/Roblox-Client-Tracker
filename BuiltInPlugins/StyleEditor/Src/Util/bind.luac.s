PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        4 GETIMPORT                        R1 K1 [unpack]
        6 CALL                             R1 1 1
        7 GETVARARGS                       R2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Expecting a valid function for argument 'func'"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K4 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFEQKS                       R4 K5 ["table"] ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       21 LOADK                            R4 K6 ["Expecting a valid array for argument 'args'"]
       22 GETIMPORT                        R2 K2 [assert]
       24 CALL                             R2 2 0
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
