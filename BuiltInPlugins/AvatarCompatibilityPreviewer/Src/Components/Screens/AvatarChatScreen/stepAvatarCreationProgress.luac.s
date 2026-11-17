PROTO_0:
        0 SUB                              R6 R1 R0
        1 DIV                              R8 R2 R3
        2 FASTCALL2K                       MATH_MIN R8 K0 ; [+4]
        4 LOADK                            R9 K0 [1]
        5 GETIMPORT                        R7 K3 [math.min]
        7 CALL                             R7 2 1
        8 MUL                              R5 R6 R7
        9 ADD                              R4 R0 R5
       10 RETURN                           R4 1

PROTO_1:
        0 MULK                             R4 R1 K1 [0.05]
        1 DIVK                             R3 R4 K0 [18]
        2 ADD                              R2 R0 R3
        3 FASTCALL2K                       MATH_MIN R2 K1 ; [+5]
        5 MOVE                             R6 R2
        6 LOADK                            R7 K1 [0.05]
        7 GETIMPORT                        R5 K4 [math.min]
        9 CALL                             R5 2 1
       10 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K6 [math.max]
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["reportedProgress"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLE                      R2 R1 ; [+4]
        5 LOADK                            R1 K1 [0.99]
        6 LOADN                            R2 12
        7 RETURN                           R1 2
        8 GETTABLEKS                       R2 R0 K3 ["progressCeiling"]
       10 MULK                             R1 R2 K2 [0.9]
       11 FASTCALL2K                       MATH_MAX R1 K4 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K4 [0.05]
       15 GETIMPORT                        R2 K7 [math.max]
       17 CALL                             R2 2 1
       18 LOADN                            R3 45
       19 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["planPending"]
        2 JUMPIFNOT                        R3 ; [+18]
        3 MULK                             R6 R1 K2 [0.05]
        4 DIVK                             R5 R6 K1 [18]
        5 ADD                              R4 R0 R5
        6 FASTCALL2K                       MATH_MIN R4 K2 ; [+5]
        8 MOVE                             R8 R4
        9 LOADK                            R9 K2 [0.05]
       10 GETIMPORT                        R7 K5 [math.min]
       12 CALL                             R7 2 1
       13 FASTCALL2                        MATH_MAX R0 R7 ; [+4]
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K7 [math.max]
       18 CALL                             R5 2 1
       19 MOVE                             R3 R5
       20 RETURN                           R3 1
       21 GETTABLEKS                       R4 R2 K9 ["reportedProgress"]
       23 MULK                             R3 R4 K8 [0.9]
       24 GETTABLEKS                       R6 R2 K9 ["reportedProgress"]
       26 LOADN                            R7 1
       27 JUMPIFNOTLE                      R7 R6 ; [+4]
       29 LOADK                            R4 K10 [0.99]
       30 LOADN                            R5 12
       31 JUMP                             ; [+12]
       32 GETTABLEKS                       R7 R2 K11 ["progressCeiling"]
       34 MULK                             R6 R7 K8 [0.9]
       35 FASTCALL2K                       MATH_MAX R6 K2 ; [+5]
       37 MOVE                             R8 R6
       38 LOADK                            R9 K2 [0.05]
       39 GETIMPORT                        R7 K7 [math.max]
       41 CALL                             R7 2 1
       42 MOVE                             R4 R7
       43 LOADN                            R5 45
       44 SUB                              R8 R4 R0
       45 DIV                              R10 R1 R5
       46 FASTCALL2K                       MATH_MIN R10 K12 ; [+4]
       48 LOADK                            R11 K12 [1]
       49 GETIMPORT                        R9 K5 [math.min]
       51 CALL                             R9 2 1
       52 MUL                              R7 R8 R9
       53 ADD                              R6 R0 R7
       54 JUMPIFNOTLT                      R6 R3 ; [+12]
       56 MOVE                             R7 R6
       57 SUB                              R9 R3 R7
       58 DIVK                             R11 R1 K13 [10]
       59 FASTCALL2K                       MATH_MIN R11 K12 ; [+4]
       61 LOADK                            R12 K12 [1]
       62 GETIMPORT                        R10 K5 [math.min]
       64 CALL                             R10 2 1
       65 MUL                              R8 R9 R10
       66 ADD                              R6 R7 R8
       67 FASTCALL2                        MATH_MAX R0 R6 ; [+5]
       69 MOVE                             R8 R0
       70 MOVE                             R9 R6
       71 GETIMPORT                        R7 K7 [math.max]
       73 CALL                             R7 2 1
       74 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 RETURN                           R3 1
