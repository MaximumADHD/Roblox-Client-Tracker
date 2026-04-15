PROTO_0:
        0 PREPVARARGS                      3
        1 LENGTH                           R3 R0
        2 JUMPIFNOTLT                      R3 R1 ; [+28]
        4 LOADK                            R4 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        6 GETIMPORT                        R3 K2 [select]
        8 GETVARARGS                       R5 -1
        9 CALL                             R3 -1 1
       10 LOADN                            R6 1
       11 MOVE                             R4 R3
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 FASTCALL1                        SELECT_VARARG R6 ; [+4]
       15 GETIMPORT                        R7 K2 [select]
       17 MOVE                             R8 R6
       18 GETVARARGS                       R9 -1
       19 CALL                             R7 -1 1
       20 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R7
       24 GETIMPORT                        R8 K5 [table.insert]
       26 CALL                             R8 2 0
       27 FORNLOOP                         R4
       28 NEWTABLE                         R4 0 0
       30 RETURN                           R4 1
       31 LENGTH                           R3 R0
       32 LOADN                            R4 1
       33 JUMPIFNOTLT                      R1 R4 ; [+14]
       35 FASTCALL1                        MATH_ABS R1 ; [+3]
       36 MOVE                             R7 R1
       37 GETIMPORT                        R6 K8 [math.abs]
       39 CALL                             R6 1 1
       40 SUB                              R5 R3 R6
       41 FASTCALL2K                       MATH_MAX R5 K9 ; [+4]
       43 LOADK                            R6 K9 [1]
       44 GETIMPORT                        R4 K11 [math.max]
       46 CALL                             R4 2 1
       47 MOVE                             R1 R4
       48 NEWTABLE                         R4 0 0
       50 OR                               R5 R2 R3
       51 LOADN                            R6 0
       52 JUMPIFNOTLT                      R6 R5 ; [+32]
       54 LOADN                            R10 0
       55 SUBK                             R11 R5 K9 [1]
       56 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       58 GETIMPORT                        R9 K11 [math.max]
       60 CALL                             R9 2 1
       61 ADD                              R8 R1 R9
       62 FASTCALL2                        MATH_MIN R3 R8 ; [+4]
       64 MOVE                             R7 R3
       65 GETIMPORT                        R6 K13 [math.min]
       67 CALL                             R6 2 1
       68 MOVE                             R9 R1
       69 MOVE                             R7 R6
       70 LOADN                            R8 1
       71 FORNPREP                         R7
       72 GETIMPORT                        R10 K15 [table.remove]
       74 MOVE                             R11 R0
       75 MOVE                             R12 R1
       76 CALL                             R10 2 1
       77 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       79 MOVE                             R12 R4
       80 MOVE                             R13 R10
       81 GETIMPORT                        R11 K5 [table.insert]
       83 CALL                             R11 2 0
       84 FORNLOOP                         R7
       85 LOADK                            R7 K0 ["#"]
       86 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       87 GETIMPORT                        R6 K2 [select]
       89 GETVARARGS                       R8 -1
       90 CALL                             R6 -1 1
       91 MOVE                             R9 R6
       92 LOADN                            R7 1
       93 LOADN                            R8 255
       94 FORNPREP                         R7
       95 FASTCALL1                        SELECT_VARARG R9 ; [+4]
       96 GETIMPORT                        R10 K2 [select]
       98 MOVE                             R11 R9
       99 GETVARARGS                       R12 -1
      100 CALL                             R10 -1 1
      101 FASTCALL3                        TABLE_INSERT R0 R1 R10
      103 MOVE                             R12 R0
      104 MOVE                             R13 R1
      105 MOVE                             R14 R10
      106 GETIMPORT                        R11 K5 [table.insert]
      108 CALL                             R11 3 0
      109 FORNLOOP                         R7
      110 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
