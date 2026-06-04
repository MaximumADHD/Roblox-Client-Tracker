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
       13 LOADK                            R5 K8 ["Array.map called on %s"]
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
       36 JUMPIFNOTLE                      R5 R3 ; [+24]
       38 GETTABLE                         R6 R0 R5
       39 JUMPIFEQKNIL                     R6 ; [+19]
       41 LOADNIL                          R7
       42 JUMPIFEQKNIL                     R2 ; [+9]
       44 MOVE                             R8 R1
       45 MOVE                             R9 R2
       46 MOVE                             R10 R6
       47 MOVE                             R11 R5
       48 MOVE                             R12 R0
       49 CALL                             R8 4 1
       50 MOVE                             R7 R8
       51 JUMP                             ; [+6]
       52 MOVE                             R8 R1
       53 MOVE                             R9 R6
       54 MOVE                             R10 R5
       55 MOVE                             R11 R0
       56 CALL                             R8 3 1
       57 MOVE                             R7 R8
       58 SETTABLE                         R7 R4 R5
       59 ADDK                             R5 R5 K11 [1]
       60 JUMPBACK                         ; [-25]
       61 RETURN                           R4 1

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
