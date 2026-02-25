PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["components"]
        2 CALL                             R1 1 12
        3 LOADB                            R14 0
        4 JUMPIFNOTEQKN                    R1 K1 [0] ; [+8]
        6 LOADB                            R14 0
        7 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
        9 JUMPIFEQKN                       R3 K1 [0] ; [+2]
       11 LOADB                            R14 0 +1
       12 LOADB                            R14 1
       13 FASTCALL1                        ASSERT R14 ; [+2]
       14 GETIMPORT                        R13 K3 [assert]
       16 CALL                             R13 1 0
       17 GETIMPORT                        R13 K6 [CFrame.new]
       19 LOADN                            R14 0
       20 LOADN                            R15 0
       21 LOADN                            R16 0
       22 ADDK                             R18 R4 K7 [0.5]
       23 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       24 GETIMPORT                        R17 K10 [math.floor]
       26 CALL                             R17 1 1
       27 ADDK                             R19 R5 K7 [0.5]
       28 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       29 GETIMPORT                        R18 K10 [math.floor]
       31 CALL                             R18 1 1
       32 ADDK                             R20 R6 K7 [0.5]
       33 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       34 GETIMPORT                        R19 K10 [math.floor]
       36 CALL                             R19 1 1
       37 ADDK                             R21 R7 K7 [0.5]
       38 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       39 GETIMPORT                        R20 K10 [math.floor]
       41 CALL                             R20 1 1
       42 ADDK                             R22 R8 K7 [0.5]
       43 FASTCALL1                        MATH_FLOOR R22 ; [+2]
       44 GETIMPORT                        R21 K10 [math.floor]
       46 CALL                             R21 1 1
       47 ADDK                             R23 R9 K7 [0.5]
       48 FASTCALL1                        MATH_FLOOR R23 ; [+2]
       49 GETIMPORT                        R22 K10 [math.floor]
       51 CALL                             R22 1 1
       52 ADDK                             R24 R10 K7 [0.5]
       53 FASTCALL1                        MATH_FLOOR R24 ; [+2]
       54 GETIMPORT                        R23 K10 [math.floor]
       56 CALL                             R23 1 1
       57 ADDK                             R25 R11 K7 [0.5]
       58 FASTCALL1                        MATH_FLOOR R25 ; [+2]
       59 GETIMPORT                        R24 K10 [math.floor]
       61 CALL                             R24 1 1
       62 ADDK                             R26 R12 K7 [0.5]
       63 FASTCALL1                        MATH_FLOOR R26 ; [+2]
       64 GETIMPORT                        R25 K10 [math.floor]
       66 CALL                             R25 1 1
       67 CALL                             R13 12 -1
       68 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
