PROTO_0:
        0 GETIMPORT                        R3 K2 [utf8.len]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 FASTCALL1                        TONUMBER R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K4 [tonumber]
        8 CALL                             R4 1 1
        9 FASTCALL1                        TYPEOF R4 ; [+3]
       10 MOVE                             R8 R4
       11 GETIMPORT                        R7 K6 [typeof]
       13 CALL                             R7 1 1
       14 JUMPIFEQKS                       R7 K7 ["number"] ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       20 LOADK                            R7 K8 ["startIndexStr should be a number"]
       21 GETIMPORT                        R5 K10 [assert]
       23 CALL                             R5 2 0
       24 ADD                              R5 R4 R3
       25 LOADN                            R6 0
       26 JUMPIFNOTLT                      R5 R6 ; [+2]
       28 LOADN                            R4 1
       29 JUMPIFNOTLT                      R3 R4 ; [+3]
       31 LOADK                            R5 K11 [""]
       32 RETURN                           R5 1
       33 ADDK                             R5 R3 K12 [1]
       34 JUMPIFEQKNIL                     R2 ; [+7]
       36 FASTCALL1                        TONUMBER R2 ; [+3]
       37 MOVE                             R7 R2
       38 GETIMPORT                        R6 K4 [tonumber]
       40 CALL                             R6 1 1
       41 MOVE                             R5 R6
       42 FASTCALL1                        TYPEOF R5 ; [+3]
       43 MOVE                             R9 R5
       44 GETIMPORT                        R8 K6 [typeof]
       46 CALL                             R8 1 1
       47 JUMPIFEQKS                       R8 K7 ["number"] ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       53 LOADK                            R8 K13 ["lastIndexStr should convert to number"]
       54 GETIMPORT                        R6 K10 [assert]
       56 CALL                             R6 2 0
       57 JUMPIFNOTLT                      R3 R5 ; [+2]
       59 ADDK                             R5 R3 K12 [1]
       60 GETIMPORT                        R6 K15 [utf8.offset]
       62 MOVE                             R7 R0
       63 MOVE                             R8 R4
       64 CALL                             R6 2 1
       65 GETIMPORT                        R8 K15 [utf8.offset]
       67 MOVE                             R9 R0
       68 MOVE                             R10 R5
       69 CALL                             R8 2 1
       70 SUBK                             R7 R8 K12 [1]
       71 FASTCALL3                        STRING_SUB R0 R6 R7
       73 MOVE                             R9 R0
       74 MOVE                             R10 R6
       75 MOVE                             R11 R7
       76 GETIMPORT                        R8 K18 [string.sub]
       78 CALL                             R8 3 1
       79 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
