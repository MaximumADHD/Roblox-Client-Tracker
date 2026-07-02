PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.forEach called on %s"]
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
       31 LOADN                            R4 1
       32 JUMPIFNOTLE                      R4 R3 ; [+22]
       34 GETTABLE                         R5 R0 R4
       35 JUMPIFEQKNIL                     R2 ; [+8]
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 MOVE                             R8 R5
       40 MOVE                             R9 R4
       41 MOVE                             R10 R0
       42 CALL                             R6 4 0
       43 JUMP                             ; [+5]
       44 MOVE                             R6 R1
       45 MOVE                             R7 R5
       46 MOVE                             R8 R4
       47 MOVE                             R9 R0
       48 CALL                             R6 3 0
       49 LENGTH                           R6 R0
       50 JUMPIFNOTLT                      R6 R3 ; [+2]
       52 LENGTH                           R3 R0
       53 ADDK                             R4 R4 K11 [1]
       54 JUMPBACK                         ; [-23]
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
