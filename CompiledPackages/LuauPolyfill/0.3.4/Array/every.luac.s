PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.every called on %s"]
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
       31 LOADN                            R4 1
       32 JUMPIFNOTLE                      R4 R3 ; [+26]
       34 GETTABLE                         R5 R0 R4
       35 LOADNIL                          R6
       36 JUMPIFEQKNIL                     R5 ; [+20]
       38 JUMPIFEQKNIL                     R2 ; [+9]
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 MOVE                             R9 R5
       43 MOVE                             R10 R4
       44 MOVE                             R11 R0
       45 CALL                             R7 4 1
       46 MOVE                             R6 R7
       47 JUMP                             ; [+6]
       48 MOVE                             R7 R1
       49 MOVE                             R8 R5
       50 MOVE                             R9 R4
       51 MOVE                             R10 R0
       52 CALL                             R7 3 1
       53 MOVE                             R6 R7
       54 JUMPIF                           R6 ; [+2]
       55 LOADB                            R7 0
       56 RETURN                           R7 1
       57 ADDK                             R4 R4 K11 [1]
       58 JUMPBACK                         ; [-27]
       59 LOADB                            R5 1
       60 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
