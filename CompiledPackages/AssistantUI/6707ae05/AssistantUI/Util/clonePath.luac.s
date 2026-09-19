PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Root must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 LOADB                            R2 1
       16 GETIMPORT                        R3 K7 [table.clone]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 MOVE                             R4 R3
       21 LOADNIL                          R5
       22 JUMPIFNOT                        R1 ; [+17]
       23 MOVE                             R6 R1
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLE                         R11 R4 R10
       28 JUMPIF                           R11 ; [+3]
       29 LOADB                            R2 0
       30 MOVE                             R5 R10
       31 RETURN                           R2 4
       32 GETIMPORT                        R11 K7 [table.clone]
       34 GETTABLE                         R12 R4 R10
       35 CALL                             R11 1 1
       36 SETTABLE                         R11 R4 R10
       37 GETTABLE                         R4 R4 R10
       38 FORGLOOP                         R6 2 ; [-12]
       40 RETURN                           R2 4

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
