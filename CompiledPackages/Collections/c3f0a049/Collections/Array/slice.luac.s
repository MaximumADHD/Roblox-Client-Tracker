PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+13]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Array.slice called on %s"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [typeof]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 CALL                             R3 -1 0
       19 LENGTH                           R3 R0
       20 ORK                              R4 R1 K9 [1]
       21 LOADNIL                          R5
       22 JUMPIFEQKNIL                     R2 ; [+4]
       24 ADDK                             R6 R3 K9 [1]
       25 JUMPIFNOTLT                      R6 R2 ; [+3]
       27 ADDK                             R5 R3 K9 [1]
       28 JUMP                             ; [+1]
       29 MOVE                             R5 R2
       30 ADDK                             R6 R3 K9 [1]
       31 JUMPIFNOTLT                      R6 R4 ; [+4]
       33 NEWTABLE                         R6 0 0
       35 RETURN                           R6 1
       36 NEWTABLE                         R6 0 0
       38 LOADN                            R7 1
       39 JUMPIFNOTLT                      R4 R7 ; [+14]
       41 FASTCALL1                        MATH_ABS R4 ; [+3]
       42 MOVE                             R10 R4
       43 GETIMPORT                        R9 K12 [math.abs]
       45 CALL                             R9 1 1
       46 SUB                              R8 R3 R9
       47 FASTCALL2K                       MATH_MAX R8 K9 ; [+4]
       49 LOADK                            R9 K9 [1]
       50 GETIMPORT                        R7 K14 [math.max]
       52 CALL                             R7 2 1
       53 MOVE                             R4 R7
       54 LOADN                            R7 1
       55 JUMPIFNOTLT                      R5 R7 ; [+14]
       57 FASTCALL1                        MATH_ABS R5 ; [+3]
       58 MOVE                             R10 R5
       59 GETIMPORT                        R9 K12 [math.abs]
       61 CALL                             R9 1 1
       62 SUB                              R8 R3 R9
       63 FASTCALL2K                       MATH_MAX R8 K9 ; [+4]
       65 LOADK                            R9 K9 [1]
       66 GETIMPORT                        R7 K14 [math.max]
       68 CALL                             R7 2 1
       69 MOVE                             R5 R7
       70 MOVE                             R7 R4
       71 LOADN                            R8 1
       72 JUMPIFNOTLT                      R7 R5 ; [+6]
       74 GETTABLE                         R9 R0 R7
       75 SETTABLE                         R9 R6 R8
       76 ADDK                             R7 R7 K9 [1]
       77 ADDK                             R8 R8 K9 [1]
       78 JUMPBACK                         ; [-7]
       79 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
