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
       30 GETIMPORT                        R3 K12 [ipairs]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 3
       34 FORGPREP_INEXT                   R3
       35 JUMPIFEQKNIL                     R2 ; [+13]
       37 JUMPIFEQKNIL                     R7 ; [+21]
       39 MOVE                             R8 R1
       40 MOVE                             R9 R2
       41 MOVE                             R10 R7
       42 MOVE                             R11 R6
       43 MOVE                             R12 R0
       44 CALL                             R8 4 1
       45 JUMPIFNOT                        R8 ; [+13]
       46 LOADB                            R8 1
       47 RETURN                           R8 1
       48 JUMP                             ; [+10]
       49 JUMPIFEQKNIL                     R7 ; [+9]
       51 MOVE                             R8 R1
       52 MOVE                             R9 R7
       53 MOVE                             R10 R6
       54 MOVE                             R11 R0
       55 CALL                             R8 3 1
       56 JUMPIFNOT                        R8 ; [+2]
       57 LOADB                            R8 1
       58 RETURN                           R8 1
       59 FORGLOOP                         R3 2 [inext] ; [-25]
       61 LOADB                            R3 0
       62 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
