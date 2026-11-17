PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 LENGTH                           R2 R0
       15 LENGTH                           R3 R1
       16 JUMPIFEQ                         R2 R3 ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K3 [pairs]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 3
       24 FORGPREP_NEXT                    R2
       25 FASTCALL1                        TYPEOF R6 ; [+3]
       26 MOVE                             R8 R6
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 GETTABLE                         R9 R0 R5
       31 FASTCALL1                        TYPEOF R9 ; [+2]
       32 GETIMPORT                        R8 K1 [typeof]
       34 CALL                             R8 1 1
       35 JUMPIFEQ                         R7 R8 ; [+3]
       37 LOADB                            R7 0
       38 RETURN                           R7 1
       39 FORGLOOP                         R2 2 ; [-15]
       41 GETIMPORT                        R2 K3 [pairs]
       43 MOVE                             R3 R0
       44 CALL                             R2 1 3
       45 FORGPREP_NEXT                    R2
       46 FASTCALL1                        TYPEOF R6 ; [+3]
       47 MOVE                             R8 R6
       48 GETIMPORT                        R7 K1 [typeof]
       50 CALL                             R7 1 1
       51 GETTABLE                         R9 R1 R5
       52 FASTCALL1                        TYPEOF R9 ; [+2]
       53 GETIMPORT                        R8 K1 [typeof]
       55 CALL                             R8 1 1
       56 JUMPIFEQ                         R7 R8 ; [+3]
       58 LOADB                            R7 0
       59 RETURN                           R7 1
       60 FASTCALL1                        TYPEOF R6 ; [+3]
       61 MOVE                             R8 R6
       62 GETIMPORT                        R7 K1 [typeof]
       64 CALL                             R7 1 1
       65 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+9]
       67 GETUPVAL                         R7 0
       68 MOVE                             R8 R6
       69 GETTABLE                         R9 R1 R5
       70 CALL                             R7 2 1
       71 JUMPIF                           R7 ; [+8]
       72 LOADB                            R7 0
       73 RETURN                           R7 1
       74 JUMP                             ; [+5]
       75 GETTABLE                         R7 R1 R5
       76 JUMPIFEQ                         R6 R7 ; [+3]
       78 LOADB                            R7 0
       79 RETURN                           R7 1
       80 FORGLOOP                         R2 2 ; [-35]
       82 LOADB                            R2 1
       83 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
