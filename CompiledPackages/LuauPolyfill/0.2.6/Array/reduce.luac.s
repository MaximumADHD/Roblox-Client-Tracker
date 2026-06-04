PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.reduce called on %s"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [typeof]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 CALL                             R3 -1 0
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K1 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFEQKS                       R3 K9 ["function"] ; [+5]
       26 GETIMPORT                        R3 K4 [error]
       28 LOADK                            R4 K10 ["callback is not a function"]
       29 CALL                             R3 1 0
       30 LENGTH                           R3 R0
       31 LOADNIL                          R4
       32 LOADN                            R5 1
       33 JUMPIFEQKNIL                     R2 ; [+3]
       35 MOVE                             R4 R2
       36 JUMP                             ; [+8]
       37 LOADN                            R5 2
       38 JUMPIFNOTEQKN                    R3 K11 [0] ; [+5]
       40 GETIMPORT                        R6 K4 [error]
       42 LOADK                            R7 K12 ["reduce of empty array with no initial value"]
       43 CALL                             R6 1 0
       44 GETTABLEN                        R4 R0 1
       45 MOVE                             R8 R5
       46 MOVE                             R6 R3
       47 LOADN                            R7 1
       48 FORNPREP                         R6
       49 GETTABLEN                        R9 R0 1
       50 JUMPIFEQKNIL                     R9 ; [+8]
       52 MOVE                             R9 R1
       53 MOVE                             R10 R4
       54 GETTABLE                         R11 R0 R8
       55 MOVE                             R12 R8
       56 MOVE                             R13 R0
       57 CALL                             R9 4 1
       58 MOVE                             R4 R9
       59 FORNLOOP                         R6
       60 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
