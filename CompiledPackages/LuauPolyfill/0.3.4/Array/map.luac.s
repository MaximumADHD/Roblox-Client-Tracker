PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.map called on %s"]
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
       30 LENGTH                           R3 R0
       31 NEWTABLE                         R4 0 0
       33 LOADN                            R5 1
       34 JUMPIFNOTLE                      R5 R3 ; [+24]
       36 GETTABLE                         R6 R0 R5
       37 JUMPIFEQKNIL                     R6 ; [+19]
       39 LOADNIL                          R7
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 MOVE                             R8 R1
       43 MOVE                             R9 R2
       44 MOVE                             R10 R6
       45 MOVE                             R11 R5
       46 MOVE                             R12 R0
       47 CALL                             R8 4 1
       48 MOVE                             R7 R8
       49 JUMP                             ; [+6]
       50 MOVE                             R8 R1
       51 MOVE                             R9 R6
       52 MOVE                             R10 R5
       53 MOVE                             R11 R0
       54 CALL                             R8 3 1
       55 MOVE                             R7 R8
       56 SETTABLE                         R7 R4 R5
       57 ADDK                             R5 R5 K11 [1]
       58 JUMPBACK                         ; [-25]
       59 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
