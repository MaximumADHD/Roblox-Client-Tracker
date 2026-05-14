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
       16 LOADK                            R5 K11 ["Array.every called on %s"]
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
       37 JUMPIFNOTLE                      R4 R3 ; [+26]
       39 GETTABLE                         R5 R0 R4
       40 LOADNIL                          R6
       41 JUMPIFEQKNIL                     R5 ; [+20]
       43 JUMPIFEQKNIL                     R2 ; [+9]
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R5
       48 MOVE                             R10 R4
       49 MOVE                             R11 R0
       50 CALL                             R7 4 1
       51 MOVE                             R6 R7
       52 JUMP                             ; [+6]
       53 MOVE                             R7 R1
       54 MOVE                             R8 R5
       55 MOVE                             R9 R4
       56 MOVE                             R10 R0
       57 CALL                             R7 3 1
       58 MOVE                             R6 R7
       59 JUMPIF                           R6 ; [+2]
       60 LOADB                            R7 0
       61 RETURN                           R7 1
       62 ADDK                             R4 R4 K14 [1]
       63 JUMPBACK                         ; [-27]
       64 LOADB                            R5 1
       65 RETURN                           R5 1

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
