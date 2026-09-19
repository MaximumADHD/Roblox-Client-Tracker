PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["seconds must be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 LOADN                            R2 0
       16 JUMPIFLT                         R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 FASTCALL1                        MATH_ABS R0 ; [+3]
       21 MOVE                             R3 R0
       22 GETIMPORT                        R2 K8 [math.abs]
       24 CALL                             R2 1 1
       25 DIVK                             R4 R2 K9 [60]
       26 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       27 GETIMPORT                        R3 K11 [math.floor]
       29 CALL                             R3 1 1
       30 FASTCALL1                        MATH_ROUND R2 ; [+3]
       31 MOVE                             R5 R2
       32 GETIMPORT                        R4 K13 [math.round]
       34 CALL                             R4 1 1
       35 MOVE                             R2 R4
       36 MODK                             R5 R2 K9 [60]
       37 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       38 GETIMPORT                        R4 K11 [math.floor]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K16 [string.format]
       43 LOADK                            R6 K17 ["%s%d:%02d"]
       44 JUMPIFNOT                        R1 ; [+2]
       45 LOADK                            R7 K18 ["-"]
       46 JUMP                             ; [+1]
       47 LOADK                            R7 K19 [""]
       48 MOVE                             R8 R3
       49 MOVE                             R9 R4
       50 CALL                             R5 4 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
