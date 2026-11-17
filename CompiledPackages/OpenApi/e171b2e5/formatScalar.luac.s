PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+22]
        7 MODK                             R1 R0 K3 [1]
        8 JUMPIFNOTEQKN                    R1 K4 [0] ; [+19]
       10 FASTCALL1                        MATH_ABS R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K7 [math.abs]
       14 CALL                             R1 1 1
       15 LOADK                            R2 K8 [9.223372036854776E+18]
       16 JUMPIFNOTLT                      R1 R2 ; [+11]
       18 JUMPIFNOTEQKN                    R0 K4 [0] ; [+3]
       20 LOADK                            R1 K9 ["0"]
       21 RETURN                           R1 1
       22 GETIMPORT                        R1 K12 [string.format]
       24 LOADK                            R2 K13 ["%.0f"]
       25 MOVE                             R3 R0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1
       28 FASTCALL1                        TOSTRING R0 ; [+3]
       29 MOVE                             R2 R0
       30 GETIMPORT                        R1 K15 [tostring]
       32 CALL                             R1 1 1
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
