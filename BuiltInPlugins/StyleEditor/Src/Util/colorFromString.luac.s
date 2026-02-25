PROTO_0:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 LOADN                            R4 0
        7 LOADN                            R5 255
        8 FASTCALL3                        MATH_CLAMP R1 R4 R5
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [math.clamp]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 GETIMPORT                        R2 K7 [Color3.fromRGB]
       17 MOVE                             R3 R1
       18 MOVE                             R4 R1
       19 MOVE                             R5 R1
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1
       22 LOADK                            R4 K8 ["%s+"]
       23 LOADK                            R5 K9 [""]
       24 NAMECALL                         R2 R0 K10 ["gsub"]
       26 CALL                             R2 3 1
       27 LOADK                            R4 K11 [","]
       28 NAMECALL                         R2 R2 K12 ["split"]
       30 CALL                             R2 2 1
       31 LENGTH                           R3 R2
       32 JUMPIFNOTEQKN                    R3 K13 [3] ; [+23]
       34 GETTABLEN                        R4 R2 1
       35 FASTCALL1                        TONUMBER R4 ; [+2]
       36 GETIMPORT                        R3 K1 [tonumber]
       38 CALL                             R3 1 1
       39 GETTABLEN                        R5 R2 2
       40 FASTCALL1                        TONUMBER R5 ; [+2]
       41 GETIMPORT                        R4 K1 [tonumber]
       43 CALL                             R4 1 1
       44 GETTABLEN                        R6 R2 3
       45 FASTCALL1                        TONUMBER R6 ; [+2]
       46 GETIMPORT                        R5 K1 [tonumber]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K7 [Color3.fromRGB]
       51 MOVE                             R7 R3
       52 MOVE                             R8 R4
       53 MOVE                             R9 R5
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1
       56 GETIMPORT                        R3 K15 [pcall]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          VAL R0
       60 CALL                             R3 1 2
       61 JUMPIFNOT                        R3 ; [+2]
       62 JUMPIFNOT                        R4 ; [+1]
       63 RETURN                           R4 1
       64 LOADNIL                          R5
       65 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
