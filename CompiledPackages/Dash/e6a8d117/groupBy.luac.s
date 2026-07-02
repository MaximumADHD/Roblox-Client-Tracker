PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADNIL                          R8
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R10 R1
        9 GETIMPORT                        R9 K1 [typeof]
       11 CALL                             R9 1 1
       12 JUMPIFNOTEQKS                    R9 K2 ["function"] ; [+7]
       14 MOVE                             R9 R1
       15 MOVE                             R10 R7
       16 MOVE                             R11 R6
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 JUMP                             ; [+1]
       20 GETTABLE                         R8 R7 R1
       21 JUMPIFEQKNIL                     R8 ; [+17]
       23 GETTABLE                         R9 R2 R8
       24 JUMPIFEQKNIL                     R9 ; [+8]
       26 GETTABLE                         R10 R2 R8
       27 FASTCALL2                        TABLE_INSERT R10 R7 ; [+3]
       29 MOVE                             R11 R7
       30 GETUPVAL                         R9 0
       31 CALL                             R9 2 0
       32 JUMP                             ; [+6]
       33 NEWTABLE                         R9 0 1
       35 MOVE                             R10 R7
       36 SETLIST                          R9 R10 1 [1]
       38 SETTABLE                         R9 R2 R8
       39 FORGLOOP                         R3 2 ; [-34]
       41 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.insert]
        3 DUPCLOSURE                       R1 K3 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
