PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+6]
        7 GETIMPORT                        R1 K4 [table.isfrozen]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 1
       13 GETIMPORT                        R1 K6 [pairs]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 3
       17 FORGPREP_NEXT                    R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K1 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+4]
       25 GETUPVAL                         R6 0
       26 MOVE                             R7 R5
       27 CALL                             R6 1 0
       28 FORGLOOP                         R1 2 ; [-11]
       30 GETIMPORT                        R1 K8 [table.freeze]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
