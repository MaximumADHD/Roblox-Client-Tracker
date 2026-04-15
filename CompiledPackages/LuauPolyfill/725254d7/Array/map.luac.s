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
       16 LOADK                            R5 K11 ["Array.map called on %s"]
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
       39 JUMPIFNOTLE                      R5 R3 ; [+24]
       41 GETTABLE                         R6 R0 R5
       42 JUMPIFEQKNIL                     R6 ; [+19]
       44 LOADNIL                          R7
       45 JUMPIFEQKNIL                     R2 ; [+9]
       47 MOVE                             R8 R1
       48 MOVE                             R9 R2
       49 MOVE                             R10 R6
       50 MOVE                             R11 R5
       51 MOVE                             R12 R0
       52 CALL                             R8 4 1
       53 MOVE                             R7 R8
       54 JUMP                             ; [+6]
       55 MOVE                             R8 R1
       56 MOVE                             R9 R6
       57 MOVE                             R10 R5
       58 MOVE                             R11 R0
       59 CALL                             R8 3 1
       60 MOVE                             R7 R8
       61 SETTABLE                         R7 R4 R5
       62 ADDK                             R5 R5 K14 [1]
       63 JUMPBACK                         ; [-25]
       64 RETURN                           R4 1

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
