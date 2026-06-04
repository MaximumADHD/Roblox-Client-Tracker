PROTO_0:
        0 GETIMPORT                        R3 K2 [utf8.len]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 2
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 LOADK                            R7 K3 ["string `%s` has an invalid byte at position %s"]
        9 MOVE                             R9 R0
       10 FASTCALL1                        TOSTRING R4 ; [+3]
       11 MOVE                             R11 R4
       12 GETIMPORT                        R10 K5 [tostring]
       14 CALL                             R10 1 1
       15 NAMECALL                         R7 R7 K6 ["format"]
       17 CALL                             R7 3 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 -1 0
       22 FASTCALL1                        TONUMBER R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K10 [tonumber]
       26 CALL                             R5 1 1
       27 FASTCALL1                        TYPEOF R5 ; [+3]
       28 MOVE                             R9 R5
       29 GETIMPORT                        R8 K12 [typeof]
       31 CALL                             R8 1 1
       32 JUMPIFEQKS                       R8 K13 ["number"] ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 FASTCALL2K                       ASSERT R7 K14 ; [+4]
       38 LOADK                            R8 K14 ["startIndexStr should be a number"]
       39 GETIMPORT                        R6 K8 [assert]
       41 CALL                             R6 2 0
       42 ADD                              R6 R5 R3
       43 LOADN                            R7 0
       44 JUMPIFNOTLT                      R6 R7 ; [+2]
       46 LOADN                            R5 1
       47 JUMPIFNOTLT                      R3 R5 ; [+3]
       49 LOADK                            R6 K15 [""]
       50 RETURN                           R6 1
       51 ADDK                             R6 R3 K16 [1]
       52 JUMPIFEQKNIL                     R2 ; [+7]
       54 FASTCALL1                        TONUMBER R2 ; [+3]
       55 MOVE                             R8 R2
       56 GETIMPORT                        R7 K10 [tonumber]
       58 CALL                             R7 1 1
       59 ORK                              R6 R7 K17 [NaN]
       60 FASTCALL1                        TYPEOF R6 ; [+3]
       61 MOVE                             R10 R6
       62 GETIMPORT                        R9 K12 [typeof]
       64 CALL                             R9 1 1
       65 JUMPIFEQKS                       R9 K13 ["number"] ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 FASTCALL2K                       ASSERT R8 K18 ; [+4]
       71 LOADK                            R9 K18 ["lastIndexStr should convert to number"]
       72 GETIMPORT                        R7 K8 [assert]
       74 CALL                             R7 2 0
       75 JUMPIFNOTLT                      R3 R6 ; [+2]
       77 ADDK                             R6 R3 K16 [1]
       78 GETIMPORT                        R7 K20 [utf8.offset]
       80 MOVE                             R8 R0
       81 MOVE                             R9 R5
       82 CALL                             R7 2 1
       83 GETIMPORT                        R9 K20 [utf8.offset]
       85 MOVE                             R10 R0
       86 MOVE                             R11 R6
       87 CALL                             R9 2 1
       88 SUBK                             R8 R9 K16 [1]
       89 FASTCALL3                        STRING_SUB R0 R7 R8
       91 MOVE                             R10 R0
       92 MOVE                             R11 R7
       93 MOVE                             R12 R8
       94 GETIMPORT                        R9 K23 [string.sub]
       96 CALL                             R9 3 1
       97 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
