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
       13 LOADK                            R5 K8 ["Array.flatMap called on %s"]
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
       32 GETUPVAL                         R3 1
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R0
       35 MOVE                             R6 R1
       36 MOVE                             R7 R2
       37 CALL                             R4 3 -1
       38 CALL                             R3 -1 -1
       39 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R2 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R1 K8 ["flat"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R1 K9 ["map"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R6 R2 K10 ["ES7Types"]
       27 CALL                             R5 1 1
       28 DUPCLOSURE                       R6 K11 [PROTO_0]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R6 1
