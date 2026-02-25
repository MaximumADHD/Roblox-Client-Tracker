PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 SUBK                             R4 R0 K0 [1]
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 DIV                              R9 R6 R0
        7 MULK                             R8 R9 K2 [3.14159265358979]
        8 MULK                             R7 R8 K1 [2]
        9 JUMPIFNOTEQKS                    R2 K3 ["x"] ; [+25]
       11 LOADN                            R11 0
       12 FASTCALL1                        MATH_COS R7 ; [+3]
       13 MOVE                             R14 R7
       14 GETIMPORT                        R13 K6 [math.cos]
       16 CALL                             R13 1 1
       17 MUL                              R12 R13 R1
       18 FASTCALL1                        MATH_SIN R7 ; [+3]
       19 MOVE                             R15 R7
       20 GETIMPORT                        R14 K8 [math.sin]
       22 CALL                             R14 1 1
       23 MUL                              R13 R14 R1
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R10 K11 [Vector3.new]
       27 CALL                             R10 3 1
       28 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       30 MOVE                             R9 R3
       31 GETIMPORT                        R8 K14 [table.insert]
       33 CALL                             R8 2 0
       34 JUMP                             ; [+49]
       35 JUMPIFNOTEQKS                    R2 K15 ["y"] ; [+25]
       37 FASTCALL1                        MATH_COS R7 ; [+3]
       38 MOVE                             R13 R7
       39 GETIMPORT                        R12 K6 [math.cos]
       41 CALL                             R12 1 1
       42 MUL                              R11 R12 R1
       43 LOADN                            R12 0
       44 FASTCALL1                        MATH_SIN R7 ; [+3]
       45 MOVE                             R15 R7
       46 GETIMPORT                        R14 K8 [math.sin]
       48 CALL                             R14 1 1
       49 MUL                              R13 R14 R1
       50 FASTCALL                         VECTOR ; [+2]
       51 GETIMPORT                        R10 K11 [Vector3.new]
       53 CALL                             R10 3 1
       54 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       56 MOVE                             R9 R3
       57 GETIMPORT                        R8 K14 [table.insert]
       59 CALL                             R8 2 0
       60 JUMP                             ; [+23]
       61 FASTCALL1                        MATH_COS R7 ; [+3]
       62 MOVE                             R13 R7
       63 GETIMPORT                        R12 K6 [math.cos]
       65 CALL                             R12 1 1
       66 MUL                              R11 R12 R1
       67 FASTCALL1                        MATH_SIN R7 ; [+3]
       68 MOVE                             R14 R7
       69 GETIMPORT                        R13 K8 [math.sin]
       71 CALL                             R13 1 1
       72 MUL                              R12 R13 R1
       73 LOADN                            R13 0
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R10 K11 [Vector3.new]
       77 CALL                             R10 3 1
       78 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       80 MOVE                             R9 R3
       81 GETIMPORT                        R8 K14 [table.insert]
       83 CALL                             R8 2 0
       84 FORNLOOP                         R4
       85 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
