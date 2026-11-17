PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+8]
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+2]
       15 RETURN                           R2 1
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_2:
        0 JUMPIFEQKS                       R1 K0 [""] ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 FASTPCALL                        pcall 1 ; [+2]
       17 GETIMPORT                        R4 K2 [pcall]
       19 CALL                             R4 1 2
       20 JUMPIFNOT                        R4 ; [+9]
       21 FASTCALL1                        TYPEOF R5 ; [+3]
       22 MOVE                             R7 R5
       23 GETIMPORT                        R6 K4 [typeof]
       25 CALL                             R6 1 1
       26 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+3]
       28 MOVE                             R3 R5
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R2
       34 FASTPCALL                        pcall 1 ; [+2]
       35 GETIMPORT                        R5 K2 [pcall]
       37 CALL                             R5 1 2
       38 JUMPIFNOT                        R5 ; [+9]
       39 FASTCALL1                        TYPEOF R6 ; [+3]
       40 MOVE                             R8 R6
       41 GETIMPORT                        R7 K4 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+3]
       46 MOVE                             R4 R6
       47 JUMP                             ; [+1]
       48 LOADNIL                          R4
       49 JUMPIFEQKNIL                     R3 ; [+3]
       51 JUMPIFNOTEQKNIL                  R4 ; [+2]
       53 RETURN                           R0 1
       54 MOVE                             R5 R3
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 SETTABLE                         R9 R4 R8
       59 FORGLOOP                         R5 2 ; [-2]
       61 GETUPVAL                         R5 0
       62 MOVE                             R7 R4
       63 NAMECALL                         R5 R5 K6 ["JSONEncode"]
       65 CALL                             R5 2 -1
       66 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1
