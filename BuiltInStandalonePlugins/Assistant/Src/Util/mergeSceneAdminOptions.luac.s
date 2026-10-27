PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+8]
        7 FASTCALL1                        TYPEOF R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+2]
       14 RETURN                           R2 1
       15 LOADNIL                          R3
       16 RETURN                           R3 1

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
       13 GETIMPORT                        R4 K2 [pcall]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CALL                             R4 1 2
       19 JUMPIFNOT                        R4 ; [+9]
       20 FASTCALL1                        TYPEOF R5 ; [+3]
       21 MOVE                             R7 R5
       22 GETIMPORT                        R6 K4 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+3]
       27 MOVE                             R3 R5
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 GETIMPORT                        R5 K2 [pcall]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R2
       35 CALL                             R5 1 2
       36 JUMPIFNOT                        R5 ; [+9]
       37 FASTCALL1                        TYPEOF R6 ; [+3]
       38 MOVE                             R8 R6
       39 GETIMPORT                        R7 K4 [typeof]
       41 CALL                             R7 1 1
       42 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+3]
       44 MOVE                             R4 R6
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 JUMPIFEQKNIL                     R3 ; [+3]
       49 JUMPIFNOTEQKNIL                  R4 ; [+2]
       51 RETURN                           R0 1
       52 MOVE                             R5 R3
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 FORGPREP                         R5
       56 SETTABLE                         R9 R4 R8
       57 FORGLOOP                         R5 2 ; [-2]
       59 GETUPVAL                         R5 0
       60 MOVE                             R7 R4
       61 NAMECALL                         R5 R5 K6 ["JSONEncode"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1

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
