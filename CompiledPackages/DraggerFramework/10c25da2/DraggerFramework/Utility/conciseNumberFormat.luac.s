PROTO_0:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.round]
        4 CALL                             R1 1 1
        5 SUB                              R3 R0 R1
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K5 [0.001]
       11 JUMPIFNOTLT                      R2 R3 ; [+7]
       13 GETIMPORT                        R2 K8 [string.format]
       15 LOADK                            R3 K9 ["%d"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 MULK                             R4 R0 K10 [10]
       20 FASTCALL1                        MATH_ROUND R4 ; [+2]
       21 GETIMPORT                        R3 K2 [math.round]
       23 CALL                             R3 1 1
       24 DIVK                             R2 R3 K10 [10]
       25 SUB                              R4 R0 R2
       26 FASTCALL1                        MATH_ABS R4 ; [+2]
       27 GETIMPORT                        R3 K4 [math.abs]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K5 [0.001]
       31 JUMPIFNOTLT                      R3 R4 ; [+7]
       33 GETIMPORT                        R3 K8 [string.format]
       35 LOADK                            R4 K11 ["%.1f"]
       36 MOVE                             R5 R2
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1
       39 MULK                             R5 R0 K12 [100]
       40 FASTCALL1                        MATH_ROUND R5 ; [+2]
       41 GETIMPORT                        R4 K2 [math.round]
       43 CALL                             R4 1 1
       44 DIVK                             R3 R4 K12 [100]
       45 SUB                              R5 R0 R3
       46 FASTCALL1                        MATH_ABS R5 ; [+2]
       47 GETIMPORT                        R4 K4 [math.abs]
       49 CALL                             R4 1 1
       50 LOADK                            R5 K5 [0.001]
       51 JUMPIFNOTLT                      R4 R5 ; [+7]
       53 GETIMPORT                        R4 K8 [string.format]
       55 LOADK                            R5 K13 ["%.2f"]
       56 MOVE                             R6 R3
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1
       59 GETIMPORT                        R4 K8 [string.format]
       61 LOADK                            R5 K14 ["%.3f"]
       62 MOVE                             R6 R0
       63 CALL                             R4 2 -1
       64 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
