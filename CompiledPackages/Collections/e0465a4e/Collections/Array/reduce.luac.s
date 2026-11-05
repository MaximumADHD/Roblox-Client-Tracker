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
       13 LOADK                            R5 K8 ["Array.reduce called on %s"]
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
       33 LOADNIL                          R4
       34 LOADN                            R5 1
       35 JUMPIFEQKNIL                     R2 ; [+3]
       37 MOVE                             R4 R2
       38 JUMP                             ; [+8]
       39 LOADN                            R5 2
       40 JUMPIFNOTEQKN                    R3 K11 [0] ; [+5]
       42 GETIMPORT                        R6 K4 [error]
       44 LOADK                            R7 K12 ["reduce of empty array with no initial value"]
       45 CALL                             R6 1 0
       46 GETTABLEN                        R4 R0 1
       47 MOVE                             R8 R5
       48 MOVE                             R6 R3
       49 LOADN                            R7 1
       50 FORNPREP                         R6
       51 MOVE                             R9 R1
       52 MOVE                             R10 R4
       53 GETTABLE                         R11 R0 R8
       54 MOVE                             R12 R8
       55 MOVE                             R13 R0
       56 CALL                             R9 4 1
       57 MOVE                             R4 R9
       58 FORNLOOP                         R6
       59 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R2 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["ES7Types"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 RETURN                           R4 1
