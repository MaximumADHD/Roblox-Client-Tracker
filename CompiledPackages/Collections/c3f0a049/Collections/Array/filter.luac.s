PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+30]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        9 GETIMPORT                        R3 K4 [error]
       11 GETIMPORT                        R4 K7 [string.format]
       13 LOADK                            R5 K8 ["Array.filter called on %s"]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K1 [typeof]
       18 CALL                             R6 1 1
       19 CALL                             R4 2 -1
       20 CALL                             R3 -1 0
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R3 K1 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFEQKS                       R3 K9 ["function"] ; [+5]
       28 GETIMPORT                        R3 K4 [error]
       30 LOADK                            R4 K10 ["callback is not a function"]
       31 CALL                             R3 1 0
       32 LENGTH                           R3 R0
       33 NEWTABLE                         R4 0 0
       35 LOADN                            R5 1
       36 JUMPIFNOTEQKNIL                  R2 ; [+18]
       38 LOADN                            R8 1
       39 MOVE                             R6 R3
       40 LOADN                            R7 1
       41 FORNPREP                         R6
       42 GETTABLE                         R9 R0 R8
       43 JUMPIFEQKNIL                     R9 ; [+9]
       45 MOVE                             R10 R1
       46 MOVE                             R11 R9
       47 MOVE                             R12 R8
       48 MOVE                             R13 R0
       49 CALL                             R10 3 1
       50 JUMPIFNOT                        R10 ; [+2]
       51 SETTABLE                         R9 R4 R5
       52 ADDK                             R5 R5 K11 [1]
       53 FORNLOOP                         R6
       54 RETURN                           R4 1
       55 LOADN                            R8 1
       56 MOVE                             R6 R3
       57 LOADN                            R7 1
       58 FORNPREP                         R6
       59 GETTABLE                         R9 R0 R8
       60 JUMPIFEQKNIL                     R9 ; [+10]
       62 MOVE                             R10 R1
       63 MOVE                             R11 R2
       64 MOVE                             R12 R9
       65 MOVE                             R13 R8
       66 MOVE                             R14 R0
       67 CALL                             R10 4 1
       68 JUMPIFNOT                        R10 ; [+2]
       69 SETTABLE                         R9 R4 R5
       70 ADDK                             R5 R5 K11 [1]
       71 FORNLOOP                         R6
       72 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R1 R2 K5 ["Parent"]
        9 GETTABLEKS                       R3 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["ES7Types"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 RETURN                           R4 1
