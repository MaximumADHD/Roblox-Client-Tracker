PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+23]
        7 GETIMPORT                        R1 K4 [table.clone]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL1                        TYPEOF R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+5]
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R6
       24 CALL                             R7 1 1
       25 SETTABLE                         R7 R1 R5
       26 FORGLOOP                         R2 2 ; [-12]
       28 RETURN                           R1 1
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
