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
       13 LOADK                            R5 K8 ["Array.every called on %s"]
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
       33 LOADN                            R4 1
       34 JUMPIFNOTLE                      R4 R3 ; [+26]
       36 GETTABLE                         R5 R0 R4
       37 LOADNIL                          R6
       38 JUMPIFEQKNIL                     R5 ; [+20]
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R2
       44 MOVE                             R9 R5
       45 MOVE                             R10 R4
       46 MOVE                             R11 R0
       47 CALL                             R7 4 1
       48 MOVE                             R6 R7
       49 JUMP                             ; [+6]
       50 MOVE                             R7 R1
       51 MOVE                             R8 R5
       52 MOVE                             R9 R4
       53 MOVE                             R10 R0
       54 CALL                             R7 3 1
       55 MOVE                             R6 R7
       56 JUMPIF                           R6 ; [+2]
       57 LOADB                            R7 0
       58 RETURN                           R7 1
       59 ADDK                             R4 R4 K11 [1]
       60 JUMPBACK                         ; [-27]
       61 LOADB                            R5 1
       62 RETURN                           R5 1

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
