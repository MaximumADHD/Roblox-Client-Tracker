PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 LOADNIL                          R8
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R10 R1
       10 GETIMPORT                        R9 K3 [typeof]
       12 CALL                             R9 1 1
       13 JUMPIFNOTEQKS                    R9 K4 ["function"] ; [+7]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R7
       17 MOVE                             R11 R6
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 JUMP                             ; [+1]
       21 GETTABLE                         R8 R7 R1
       22 JUMPIFEQKNIL                     R8 ; [+17]
       24 GETTABLE                         R9 R2 R8
       25 JUMPIFEQKNIL                     R9 ; [+8]
       27 GETTABLE                         R10 R2 R8
       28 FASTCALL2                        TABLE_INSERT R10 R7 ; [+3]
       30 MOVE                             R11 R7
       31 GETUPVAL                         R9 0
       32 CALL                             R9 2 0
       33 JUMP                             ; [+6]
       34 NEWTABLE                         R9 0 1
       36 MOVE                             R10 R7
       37 SETLIST                          R9 R10 1 [1]
       39 SETTABLE                         R9 R2 R8
       40 FORGLOOP                         R3 2 ; [-34]
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.insert]
        3 DUPCLOSURE                       R1 K3 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
