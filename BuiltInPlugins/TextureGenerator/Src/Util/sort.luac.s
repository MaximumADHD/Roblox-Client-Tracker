PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R6
        5 MOVE                             R8 R0
        6 CALL                             R7 1 1
        7 MOVE                             R8 R6
        8 MOVE                             R9 R1
        9 CALL                             R8 1 1
       10 JUMPIFEQ                         R7 R8 ; [+49]
       12 FASTCALL1                        TYPEOF R7 ; [+3]
       13 MOVE                             R10 R7
       14 GETIMPORT                        R9 K1 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFNOTEQKS                    R9 K2 ["boolean"] ; [+17]
       19 FASTCALL1                        TYPEOF R8 ; [+3]
       20 MOVE                             R12 R8
       21 GETIMPORT                        R11 K1 [typeof]
       23 CALL                             R11 1 1
       24 JUMPIFEQKS                       R11 K2 ["boolean"] ; [+2]
       26 LOADB                            R10 0 +1
       27 LOADB                            R10 1
       28 FASTCALL2K                       ASSERT R10 K3 ; [+4]
       30 LOADK                            R11 K3 ["keyA == bool, keyB is not"]
       31 GETIMPORT                        R9 K5 [assert]
       33 CALL                             R9 2 0
       34 RETURN                           R8 1
       35 FASTCALL1                        TYPEOF R7 ; [+3]
       36 MOVE                             R12 R7
       37 GETIMPORT                        R11 K1 [typeof]
       39 CALL                             R11 1 1
       40 FASTCALL1                        TYPEOF R8 ; [+3]
       41 MOVE                             R13 R8
       42 GETIMPORT                        R12 K1 [typeof]
       44 CALL                             R12 1 1
       45 JUMPIFEQ                         R11 R12 ; [+2]
       47 LOADB                            R10 0 +1
       48 LOADB                            R10 1
       49 FASTCALL2K                       ASSERT R10 K6 ; [+4]
       51 LOADK                            R11 K6 ["typeof(keyA) ~= typeof(keyB)"]
       52 GETIMPORT                        R9 K5 [assert]
       54 CALL                             R9 2 0
       55 JUMPIFLT                         R7 R8 ; [+2]
       57 LOADB                            R9 0 +1
       58 LOADB                            R9 1
       59 RETURN                           R9 1
       60 FORGLOOP                         R2 2 ; [-57]
       62 LOADB                            R2 0
       63 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [table.clone]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETVARARGS                       R3 -1
        8 SETLIST                          R2 R3 -1 [1]
       10 GETIMPORT                        R3 K4 [table.sort]
       12 MOVE                             R4 R1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R3 2 0
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
