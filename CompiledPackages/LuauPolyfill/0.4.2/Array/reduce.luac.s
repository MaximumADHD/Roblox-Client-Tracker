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
       16 LOADK                            R5 K11 ["Array.reduce called on %s"]
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
       36 LOADNIL                          R4
       37 LOADN                            R5 1
       38 JUMPIFEQKNIL                     R2 ; [+3]
       40 MOVE                             R4 R2
       41 JUMP                             ; [+8]
       42 LOADN                            R5 2
       43 JUMPIFNOTEQKN                    R3 K14 [0] ; [+5]
       45 GETIMPORT                        R6 K7 [error]
       47 LOADK                            R7 K15 ["reduce of empty array with no initial value"]
       48 CALL                             R6 1 0
       49 GETTABLEN                        R4 R0 1
       50 MOVE                             R8 R5
       51 MOVE                             R6 R3
       52 LOADN                            R7 1
       53 FORNPREP                         R6
       54 MOVE                             R9 R1
       55 MOVE                             R10 R4
       56 GETTABLE                         R11 R0 R8
       57 MOVE                             R12 R8
       58 MOVE                             R13 R0
       59 CALL                             R9 4 1
       60 MOVE                             R4 R9
       61 FORNLOOP                         R6
       62 RETURN                           R4 1

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
