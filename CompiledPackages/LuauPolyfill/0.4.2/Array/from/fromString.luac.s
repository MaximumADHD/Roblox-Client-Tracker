PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LENGTH                           R4 R0
        3 GETIMPORT                        R5 K2 [table.create]
        5 MOVE                             R6 R4
        6 CALL                             R5 1 1
        7 MOVE                             R3 R5
        8 JUMPIFNOT                        R1 ; [+34]
        9 LOADN                            R7 1
       10 MOVE                             R5 R4
       11 LOADN                            R6 1
       12 FORNPREP                         R5
       13 JUMPIFEQKNIL                     R2 ; [+15]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 FASTCALL3                        STRING_SUB R0 R7 R7
       19 MOVE                             R11 R0
       20 MOVE                             R12 R7
       21 MOVE                             R13 R7
       22 GETIMPORT                        R10 K5 [string.sub]
       24 CALL                             R10 3 1
       25 MOVE                             R11 R7
       26 CALL                             R8 3 1
       27 SETTABLE                         R8 R3 R7
       28 JUMP                             ; [+12]
       29 MOVE                             R8 R1
       30 FASTCALL3                        STRING_SUB R0 R7 R7
       32 MOVE                             R10 R0
       33 MOVE                             R11 R7
       34 MOVE                             R12 R7
       35 GETIMPORT                        R9 K5 [string.sub]
       37 CALL                             R9 3 1
       38 MOVE                             R10 R7
       39 CALL                             R8 2 1
       40 SETTABLE                         R8 R3 R7
       41 FORNLOOP                         R5
       42 RETURN                           R3 1
       43 LOADN                            R7 1
       44 MOVE                             R5 R4
       45 LOADN                            R6 1
       46 FORNPREP                         R5
       47 FASTCALL3                        STRING_SUB R0 R7 R7
       49 MOVE                             R9 R0
       50 MOVE                             R10 R7
       51 MOVE                             R11 R7
       52 GETIMPORT                        R8 K5 [string.sub]
       54 CALL                             R8 3 1
       55 SETTABLE                         R8 R3 R7
       56 FORNLOOP                         R5
       57 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
