PROTO_0:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+30]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["table"] ; [+13]
       12 GETIMPORT                        R3 K7 [error]
       14 GETIMPORT                        R4 K10 [string.format]
       16 LOADK                            R5 K11 ["Array.forEach called on %s"]
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
       36 LOADN                            R4 1
       37 JUMPIFNOTLE                      R4 R3 ; [+22]
       39 GETTABLE                         R5 R0 R4
       40 JUMPIFEQKNIL                     R2 ; [+8]
       42 MOVE                             R6 R1
       43 MOVE                             R7 R2
       44 MOVE                             R8 R5
       45 MOVE                             R9 R4
       46 MOVE                             R10 R0
       47 CALL                             R6 4 0
       48 JUMP                             ; [+5]
       49 MOVE                             R6 R1
       50 MOVE                             R7 R5
       51 MOVE                             R8 R4
       52 MOVE                             R9 R0
       53 CALL                             R6 3 0
       54 LENGTH                           R6 R0
       55 JUMPIFNOTLT                      R6 R3 ; [+2]
       57 LENGTH                           R3 R0
       58 ADDK                             R4 R4 K14 [1]
       59 JUMPBACK                         ; [-23]
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
