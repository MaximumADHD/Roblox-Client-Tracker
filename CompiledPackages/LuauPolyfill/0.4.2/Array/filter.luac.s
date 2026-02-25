PROTO_0:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+30]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["table"] ; [+13]
       12 GETIMPORT                        R3 K7 [error]
       14 GETIMPORT                        R4 K10 [string.format]
       16 LOADK                            R5 K11 ["Array.filter called on %s"]
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K4 [typeof]
       21 CALL                             R6 1 1
       22 CALL                             R4 2 -1
       23 CALL                             R3 -1 0
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K4 [typeof]
       28 CALL                             R3 1 1
       29 JUMPIFEQKS                       R3 K12 ["function"] ; [+5]
       31 GETIMPORT                        R3 K7 [error]
       33 LOADK                            R4 K13 ["callback is not a function"]
       34 CALL                             R3 1 0
       35 LENGTH                           R3 R0
       36 NEWTABLE                         R4 0 0
       38 LOADN                            R5 1
       39 JUMPIFNOTEQKNIL                  R2 ; [+18]
       41 LOADN                            R8 1
       42 MOVE                             R6 R3
       43 LOADN                            R7 1
       44 FORNPREP                         R6
       45 GETTABLE                         R9 R0 R8
       46 JUMPIFEQKNIL                     R9 ; [+9]
       48 MOVE                             R10 R1
       49 MOVE                             R11 R9
       50 MOVE                             R12 R8
       51 MOVE                             R13 R0
       52 CALL                             R10 3 1
       53 JUMPIFNOT                        R10 ; [+2]
       54 SETTABLE                         R9 R4 R5
       55 ADDK                             R5 R5 K14 [1]
       56 FORNLOOP                         R6
       57 RETURN                           R4 1
       58 LOADN                            R8 1
       59 MOVE                             R6 R3
       60 LOADN                            R7 1
       61 FORNPREP                         R6
       62 GETTABLE                         R9 R0 R8
       63 JUMPIFEQKNIL                     R9 ; [+10]
       65 MOVE                             R10 R1
       66 MOVE                             R11 R2
       67 MOVE                             R12 R9
       68 MOVE                             R13 R8
       69 MOVE                             R14 R0
       70 CALL                             R10 4 1
       71 JUMPIFNOT                        R10 ; [+2]
       72 SETTABLE                         R9 R4 R5
       73 ADDK                             R5 R5 K14 [1]
       74 FORNLOOP                         R6
       75 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
