PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.filter called on %s"]
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
       31 NEWTABLE                         R4 0 0
       33 LOADN                            R5 1
       34 JUMPIFNOTEQKNIL                  R2 ; [+18]
       36 LOADN                            R8 1
       37 MOVE                             R6 R3
       38 LOADN                            R7 1
       39 FORNPREP                         R6
       40 GETTABLE                         R9 R0 R8
       41 JUMPIFEQKNIL                     R9 ; [+9]
       43 MOVE                             R10 R1
       44 MOVE                             R11 R9
       45 MOVE                             R12 R8
       46 MOVE                             R13 R0
       47 CALL                             R10 3 1
       48 JUMPIFNOT                        R10 ; [+2]
       49 SETTABLE                         R9 R4 R5
       50 ADDK                             R5 R5 K11 [1]
       51 FORNLOOP                         R6
       52 RETURN                           R4 1
       53 LOADN                            R8 1
       54 MOVE                             R6 R3
       55 LOADN                            R7 1
       56 FORNPREP                         R6
       57 GETTABLE                         R9 R0 R8
       58 JUMPIFEQKNIL                     R9 ; [+10]
       60 MOVE                             R10 R1
       61 MOVE                             R11 R2
       62 MOVE                             R12 R9
       63 MOVE                             R13 R8
       64 MOVE                             R14 R0
       65 CALL                             R10 4 1
       66 JUMPIFNOT                        R10 ; [+2]
       67 SETTABLE                         R9 R4 R5
       68 ADDK                             R5 R5 K11 [1]
       69 FORNLOOP                         R6
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
