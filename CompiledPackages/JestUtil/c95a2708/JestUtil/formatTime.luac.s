PROTO_0:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+7]
        3 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.floor]
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 FASTCALL1                        MATH_CEIL R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.ceil]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R4 R0
        1 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K2 [math.max]
        6 CALL                             R3 2 1
        7 ORK                              R4 R2 K3 [" "]
        8 MOVE                             R10 R3
        9 NAMECALL                         R8 R4 K4 ["rep"]
       11 CALL                             R8 2 1
       12 MOVE                             R6 R8
       13 MOVE                             R7 R0
       14 CONCAT                           R5 R6 R7
       15 MINUS                            R7 R3
       16 NAMECALL                         R5 R5 K5 ["sub"]
       18 CALL                             R5 2 -1
       19 RETURN                           R5 -1

PROTO_2:
        0 ORK                              R3 R1 K0 [-3]
        1 ORK                              R4 R2 K1 [0]
        2 NEWTABLE                         R5 0 4
        4 LOADK                            R6 K2 ["n"]
        5 LOADK                            R7 K3 ["μ"]
        6 LOADK                            R8 K4 ["m"]
        7 LOADK                            R9 K5 [""]
        8 SETLIST                          R5 R6 4 [1]
       10 LOADN                            R8 0
       11 DIVK                             R13 R3 K7 [3]
       12 LOADN                            R14 0
       13 JUMPIFNOTLT                      R14 R13 ; [+8]
       15 FASTCALL1                        MATH_FLOOR R13 ; [+3]
       16 MOVE                             R15 R13
       17 GETIMPORT                        R14 K10 [math.floor]
       19 CALL                             R14 1 1
       20 MOVE                             R12 R14
       21 JUMP                             ; [+6]
       22 FASTCALL1                        MATH_CEIL R13 ; [+3]
       23 MOVE                             R15 R13
       24 GETIMPORT                        R14 K12 [math.ceil]
       26 CALL                             R14 1 1
       27 MOVE                             R12 R14
       28 LENGTH                           R13 R5
       29 ADD                              R11 R12 R13
       30 SUBK                             R10 R11 K6 [1]
       31 LENGTH                           R12 R5
       32 SUBK                             R11 R12 K6 [1]
       33 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       35 GETIMPORT                        R9 K14 [math.min]
       37 CALL                             R9 2 1
       38 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       40 GETIMPORT                        R7 K16 [math.max]
       42 CALL                             R7 2 1
       43 ADDK                             R6 R7 K6 [1]
       44 LOADK                            R7 K17 ["%s %ss"]
       45 FASTCALL1                        TOSTRING R0 ; [+3]
       46 MOVE                             R11 R0
       47 GETIMPORT                        R10 K19 [tostring]
       49 CALL                             R10 1 1
       50 LENGTH                           R12 R10
       51 FASTCALL2                        MATH_MAX R12 R4 ; [+4]
       53 MOVE                             R13 R4
       54 GETIMPORT                        R11 K16 [math.max]
       56 CALL                             R11 2 1
       57 LOADK                            R15 K20 [" "]
       58 MOVE                             R17 R11
       59 NAMECALL                         R15 R15 K21 ["rep"]
       61 CALL                             R15 2 1
       62 MOVE                             R13 R15
       63 MOVE                             R14 R10
       64 CONCAT                           R12 R13 R14
       65 MINUS                            R14 R11
       66 NAMECALL                         R12 R12 K22 ["sub"]
       68 CALL                             R12 2 1
       69 MOVE                             R9 R12
       70 GETTABLE                         R10 R5 R6
       71 NAMECALL                         R7 R7 K23 ["format"]
       73 CALL                             R7 3 -1
       74 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 SETTABLEKS                       R3 R0 K3 ["default"]
        8 RETURN                           R0 1
