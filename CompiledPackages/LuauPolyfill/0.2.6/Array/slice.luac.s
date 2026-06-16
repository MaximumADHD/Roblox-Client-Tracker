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
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 LOADN                            R1 1
       23 JUMPIFEQKNIL                     R2 ; [+4]
       25 ADDK                             R4 R3 K9 [1]
       26 JUMPIFNOTLT                      R4 R2 ; [+2]
       28 ADDK                             R2 R3 K9 [1]
       29 ADDK                             R4 R3 K9 [1]
       30 JUMPIFNOTLT                      R4 R1 ; [+4]
       32 NEWTABLE                         R4 0 0
       34 RETURN                           R4 1
       35 NEWTABLE                         R4 0 0
       37 LOADN                            R5 1
       38 JUMPIFNOTLT                      R1 R5 ; [+14]
       40 FASTCALL1                        MATH_ABS R1 ; [+3]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K12 [math.abs]
       44 CALL                             R7 1 1
       45 SUB                              R6 R3 R7
       46 FASTCALL2K                       MATH_MAX R6 K9 ; [+4]
       48 LOADK                            R7 K9 [1]
       49 GETIMPORT                        R5 K14 [math.max]
       51 CALL                             R5 2 1
       52 MOVE                             R1 R5
       53 LOADN                            R5 1
       54 JUMPIFNOTLT                      R2 R5 ; [+14]
       56 FASTCALL1                        MATH_ABS R2 ; [+3]
       57 MOVE                             R8 R2
       58 GETIMPORT                        R7 K12 [math.abs]
       60 CALL                             R7 1 1
       61 SUB                              R6 R3 R7
       62 FASTCALL2K                       MATH_MAX R6 K9 ; [+4]
       64 LOADK                            R7 K9 [1]
       65 GETIMPORT                        R5 K14 [math.max]
       67 CALL                             R5 2 1
       68 MOVE                             R2 R5
       69 MOVE                             R5 R1
       70 LOADN                            R6 1
       71 JUMPIFNOTLT                      R5 R2 ; [+6]
       73 GETTABLE                         R7 R0 R5
       74 SETTABLE                         R7 R4 R6
       75 ADDK                             R5 R5 K9 [1]
       76 ADDK                             R6 R6 K9 [1]
       77 JUMPBACK                         ; [-7]
       78 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
