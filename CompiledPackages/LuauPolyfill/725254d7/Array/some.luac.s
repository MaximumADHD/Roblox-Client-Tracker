PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.some called on %s"]
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
       30 MOVE                             R3 R0
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 JUMPIFEQKNIL                     R2 ; [+13]
       36 JUMPIFEQKNIL                     R7 ; [+21]
       38 MOVE                             R8 R1
       39 MOVE                             R9 R2
       40 MOVE                             R10 R7
       41 MOVE                             R11 R6
       42 MOVE                             R12 R0
       43 CALL                             R8 4 1
       44 JUMPIFNOT                        R8 ; [+13]
       45 LOADB                            R8 1
       46 RETURN                           R8 1
       47 JUMP                             ; [+10]
       48 JUMPIFEQKNIL                     R7 ; [+9]
       50 MOVE                             R8 R1
       51 MOVE                             R9 R7
       52 MOVE                             R10 R6
       53 MOVE                             R11 R0
       54 CALL                             R8 3 1
       55 JUMPIFNOT                        R8 ; [+2]
       56 LOADB                            R8 1
       57 RETURN                           R8 1
       58 FORGLOOP                         R3 2 ; [-25]
       60 LOADB                            R3 0
       61 RETURN                           R3 1

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
