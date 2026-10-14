PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+19]
        7 GETIMPORT                        R1 K4 [table.isfrozen]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R1 K6 [table.freeze]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 MOVE                             R1 R0
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETUPVAL                         R6 0
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R1 2 ; [-4]
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
