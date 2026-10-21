PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 ADD                              R14 R4 R8
        4 ADD                              R13 R14 R12
        5 LOADNIL                          R14
        6 LOADNIL                          R15
        7 LOADNIL                          R16
        8 LOADNIL                          R17
        9 LOADN                            R18 0
       10 JUMPIFNOTLT                      R18 R13 ; [+15]
       12 ADDK                             R20 R13 K2 [1]
       13 FASTCALL1                        MATH_SQRT R20 ; [+2]
       14 GETIMPORT                        R19 K5 [math.sqrt]
       16 CALL                             R19 1 1
       17 MULK                             R18 R19 K1 [2]
       18 MULK                             R17 R18 K6 [0.25]
       19 SUB                              R19 R11 R9
       20 DIV                              R14 R19 R18
       21 SUB                              R19 R6 R10
       22 DIV                              R15 R19 R18
       23 SUB                              R19 R7 R5
       24 DIV                              R16 R19 R18
       25 JUMP                             ; [+56]
       26 JUMPIFNOTLT                      R8 R4 ; [+20]
       28 JUMPIFNOTLT                      R12 R4 ; [+18]
       30 LOADN                            R23 1
       31 ADD                              R22 R23 R4
       32 SUB                              R21 R22 R8
       33 SUB                              R20 R21 R12
       34 FASTCALL1                        MATH_SQRT R20 ; [+2]
       35 GETIMPORT                        R19 K5 [math.sqrt]
       37 CALL                             R19 1 1
       38 MULK                             R18 R19 K1 [2]
       39 SUB                              R19 R11 R9
       40 DIV                              R17 R19 R18
       41 MULK                             R14 R18 K6 [0.25]
       42 ADD                              R19 R5 R7
       43 DIV                              R15 R19 R18
       44 ADD                              R19 R6 R10
       45 DIV                              R16 R19 R18
       46 JUMP                             ; [+35]
       47 JUMPIFNOTLT                      R12 R8 ; [+18]
       49 LOADN                            R23 1
       50 ADD                              R22 R23 R8
       51 SUB                              R21 R22 R4
       52 SUB                              R20 R21 R12
       53 FASTCALL1                        MATH_SQRT R20 ; [+2]
       54 GETIMPORT                        R19 K5 [math.sqrt]
       56 CALL                             R19 1 1
       57 MULK                             R18 R19 K1 [2]
       58 SUB                              R19 R6 R10
       59 DIV                              R17 R19 R18
       60 ADD                              R19 R5 R7
       61 DIV                              R14 R19 R18
       62 MULK                             R15 R18 K6 [0.25]
       63 ADD                              R19 R9 R11
       64 DIV                              R16 R19 R18
       65 JUMP                             ; [+16]
       66 LOADN                            R23 1
       67 ADD                              R22 R23 R12
       68 SUB                              R21 R22 R4
       69 SUB                              R20 R21 R8
       70 FASTCALL1                        MATH_SQRT R20 ; [+2]
       71 GETIMPORT                        R19 K5 [math.sqrt]
       73 CALL                             R19 1 1
       74 MULK                             R18 R19 K1 [2]
       75 SUB                              R19 R7 R5
       76 DIV                              R17 R19 R18
       77 ADD                              R19 R6 R10
       78 DIV                              R14 R19 R18
       79 ADD                              R19 R9 R11
       80 DIV                              R15 R19 R18
       81 MULK                             R16 R18 K6 [0.25]
       82 MUL                              R22 R14 R14
       83 MUL                              R23 R15 R15
       84 ADD                              R21 R22 R23
       85 MUL                              R22 R16 R16
       86 ADD                              R20 R21 R22
       87 MUL                              R21 R17 R17
       88 ADD                              R19 R20 R21
       89 FASTCALL1                        MATH_SQRT R19 ; [+2]
       90 GETIMPORT                        R18 K5 [math.sqrt]
       92 CALL                             R18 1 1
       93 LOADK                            R19 K7 [1E-09]
       94 JUMPIFNOTLT                      R18 R19 ; [+6]
       96 LOADN                            R19 0
       97 LOADN                            R20 0
       98 LOADN                            R21 0
       99 LOADN                            R22 1
      100 RETURN                           R19 4
      101 DIV                              R19 R14 R18
      102 DIV                              R20 R15 R18
      103 DIV                              R21 R16 R18
      104 DIV                              R22 R17 R18
      105 RETURN                           R19 4

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 4
        5 DUPTABLE                         R6 K3 [{"pos", "rot"}]
        6 NEWTABLE                         R7 0 3
        8 GETTABLEKS                       R8 R1 K4 ["X"]
       10 GETTABLEKS                       R9 R1 K5 ["Y"]
       12 GETTABLEKS                       R10 R1 K6 ["Z"]
       14 SETLIST                          R7 R8 3 [1]
       16 SETTABLEKS                       R7 R6 K1 ["pos"]
       18 NEWTABLE                         R7 0 4
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 MOVE                             R11 R5
       24 SETLIST                          R7 R8 4 [1]
       26 SETTABLEKS                       R7 R6 K2 ["rot"]
       28 RETURN                           R6 1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 MOVE                             R4 R2
        5 JUMPIFNOT                        R4 ; [+4]
        6 LOADK                            R6 K1 ["BasePart"]
        7 NAMECALL                         R4 R2 K2 ["IsA"]
        9 CALL                             R4 2 1
       10 LOADK                            R6 K3 ["missing BasePart "]
       11 MOVE                             R7 R1
       12 CONCAT                           R5 R6 R7
       13 FASTCALL2                        ASSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_29:
        0 NEWTABLE                         R2 4 0
        2 NEWTABLE                         R3 32 0
        4 JUMPIFNOTEQKS                    R1 K0 ["R15"] ; [+291]
        6 LOADK                            R7 K1 ["LeftHand"]
        7 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
        9 CALL                             R5 2 1
       10 MOVE                             R7 R5
       11 JUMPIFNOT                        R7 ; [+4]
       12 LOADK                            R9 K3 ["BasePart"]
       13 NAMECALL                         R7 R5 K4 ["IsA"]
       15 CALL                             R7 2 1
       16 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       18 LOADK                            R8 K5 ["missing BasePart LeftHand"]
       19 GETIMPORT                        R6 K7 [assert]
       21 CALL                             R6 2 0
       22 MOVE                             R4 R5
       23 LOADK                            R8 K8 ["RightHand"]
       24 NAMECALL                         R6 R0 K2 ["FindFirstChild"]
       26 CALL                             R6 2 1
       27 MOVE                             R8 R6
       28 JUMPIFNOT                        R8 ; [+4]
       29 LOADK                            R10 K3 ["BasePart"]
       30 NAMECALL                         R8 R6 K4 ["IsA"]
       32 CALL                             R8 2 1
       33 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       35 LOADK                            R9 K9 ["missing BasePart RightHand"]
       36 GETIMPORT                        R7 K7 [assert]
       38 CALL                             R7 2 0
       39 MOVE                             R5 R6
       40 LOADK                            R9 K10 ["LeftFoot"]
       41 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
       43 CALL                             R7 2 1
       44 MOVE                             R9 R7
       45 JUMPIFNOT                        R9 ; [+4]
       46 LOADK                            R11 K3 ["BasePart"]
       47 NAMECALL                         R9 R7 K4 ["IsA"]
       49 CALL                             R9 2 1
       50 FASTCALL2K                       ASSERT R9 K11 ; [+4]
       52 LOADK                            R10 K11 ["missing BasePart LeftFoot"]
       53 GETIMPORT                        R8 K7 [assert]
       55 CALL                             R8 2 0
       56 MOVE                             R6 R7
       57 LOADK                            R10 K12 ["RightFoot"]
       58 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
       60 CALL                             R8 2 1
       61 MOVE                             R10 R8
       62 JUMPIFNOT                        R10 ; [+4]
       63 LOADK                            R12 K3 ["BasePart"]
       64 NAMECALL                         R10 R8 K4 ["IsA"]
       66 CALL                             R10 2 1
       67 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       69 LOADK                            R11 K13 ["missing BasePart RightFoot"]
       70 GETIMPORT                        R9 K7 [assert]
       72 CALL                             R9 2 0
       73 MOVE                             R7 R8
       74 NEWCLOSURE                       R8 P0
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R8 R2 K14 ["left_hand"]
       78 NEWCLOSURE                       R8 P1
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R8 R2 K15 ["right_hand"]
       82 NEWCLOSURE                       R8 P2
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R8 R2 K16 ["left_foot"]
       86 NEWCLOSURE                       R8 P3
       87 CAPTURE                          VAL R7
       88 SETTABLEKS                       R8 R2 K17 ["right_foot"]
       90 LOADK                            R11 K18 ["LowerTorso"]
       91 NAMECALL                         R9 R0 K2 ["FindFirstChild"]
       93 CALL                             R9 2 1
       94 MOVE                             R11 R9
       95 JUMPIFNOT                        R11 ; [+4]
       96 LOADK                            R13 K3 ["BasePart"]
       97 NAMECALL                         R11 R9 K4 ["IsA"]
       99 CALL                             R11 2 1
      100 FASTCALL2K                       ASSERT R11 K19 ; [+4]
      102 LOADK                            R12 K19 ["missing BasePart LowerTorso"]
      103 GETIMPORT                        R10 K7 [assert]
      105 CALL                             R10 2 0
      106 MOVE                             R8 R9
      107 LOADK                            R12 K20 ["LeftUpperArm"]
      108 NAMECALL                         R10 R0 K2 ["FindFirstChild"]
      110 CALL                             R10 2 1
      111 MOVE                             R12 R10
      112 JUMPIFNOT                        R12 ; [+4]
      113 LOADK                            R14 K3 ["BasePart"]
      114 NAMECALL                         R12 R10 K4 ["IsA"]
      116 CALL                             R12 2 1
      117 FASTCALL2K                       ASSERT R12 K21 ; [+4]
      119 LOADK                            R13 K21 ["missing BasePart LeftUpperArm"]
      120 GETIMPORT                        R11 K7 [assert]
      122 CALL                             R11 2 0
      123 MOVE                             R9 R10
      124 LOADK                            R13 K22 ["LeftLowerArm"]
      125 NAMECALL                         R11 R0 K2 ["FindFirstChild"]
      127 CALL                             R11 2 1
      128 MOVE                             R13 R11
      129 JUMPIFNOT                        R13 ; [+4]
      130 LOADK                            R15 K3 ["BasePart"]
      131 NAMECALL                         R13 R11 K4 ["IsA"]
      133 CALL                             R13 2 1
      134 FASTCALL2K                       ASSERT R13 K23 ; [+4]
      136 LOADK                            R14 K23 ["missing BasePart LeftLowerArm"]
      137 GETIMPORT                        R12 K7 [assert]
      139 CALL                             R12 2 0
      140 MOVE                             R10 R11
      141 LOADK                            R14 K24 ["RightUpperArm"]
      142 NAMECALL                         R12 R0 K2 ["FindFirstChild"]
      144 CALL                             R12 2 1
      145 MOVE                             R14 R12
      146 JUMPIFNOT                        R14 ; [+4]
      147 LOADK                            R16 K3 ["BasePart"]
      148 NAMECALL                         R14 R12 K4 ["IsA"]
      150 CALL                             R14 2 1
      151 FASTCALL2K                       ASSERT R14 K25 ; [+4]
      153 LOADK                            R15 K25 ["missing BasePart RightUpperArm"]
      154 GETIMPORT                        R13 K7 [assert]
      156 CALL                             R13 2 0
      157 MOVE                             R11 R12
      158 LOADK                            R15 K26 ["RightLowerArm"]
      159 NAMECALL                         R13 R0 K2 ["FindFirstChild"]
      161 CALL                             R13 2 1
      162 MOVE                             R15 R13
      163 JUMPIFNOT                        R15 ; [+4]
      164 LOADK                            R17 K3 ["BasePart"]
      165 NAMECALL                         R15 R13 K4 ["IsA"]
      167 CALL                             R15 2 1
      168 FASTCALL2K                       ASSERT R15 K27 ; [+4]
      170 LOADK                            R16 K27 ["missing BasePart RightLowerArm"]
      171 GETIMPORT                        R14 K7 [assert]
      173 CALL                             R14 2 0
      174 MOVE                             R12 R13
      175 LOADK                            R16 K28 ["LeftUpperLeg"]
      176 NAMECALL                         R14 R0 K2 ["FindFirstChild"]
      178 CALL                             R14 2 1
      179 MOVE                             R16 R14
      180 JUMPIFNOT                        R16 ; [+4]
      181 LOADK                            R18 K3 ["BasePart"]
      182 NAMECALL                         R16 R14 K4 ["IsA"]
      184 CALL                             R16 2 1
      185 FASTCALL2K                       ASSERT R16 K29 ; [+4]
      187 LOADK                            R17 K29 ["missing BasePart LeftUpperLeg"]
      188 GETIMPORT                        R15 K7 [assert]
      190 CALL                             R15 2 0
      191 MOVE                             R13 R14
      192 LOADK                            R17 K30 ["LeftLowerLeg"]
      193 NAMECALL                         R15 R0 K2 ["FindFirstChild"]
      195 CALL                             R15 2 1
      196 MOVE                             R17 R15
      197 JUMPIFNOT                        R17 ; [+4]
      198 LOADK                            R19 K3 ["BasePart"]
      199 NAMECALL                         R17 R15 K4 ["IsA"]
      201 CALL                             R17 2 1
      202 FASTCALL2K                       ASSERT R17 K31 ; [+4]
      204 LOADK                            R18 K31 ["missing BasePart LeftLowerLeg"]
      205 GETIMPORT                        R16 K7 [assert]
      207 CALL                             R16 2 0
      208 MOVE                             R14 R15
      209 LOADK                            R18 K32 ["RightUpperLeg"]
      210 NAMECALL                         R16 R0 K2 ["FindFirstChild"]
      212 CALL                             R16 2 1
      213 MOVE                             R18 R16
      214 JUMPIFNOT                        R18 ; [+4]
      215 LOADK                            R20 K3 ["BasePart"]
      216 NAMECALL                         R18 R16 K4 ["IsA"]
      218 CALL                             R18 2 1
      219 FASTCALL2K                       ASSERT R18 K33 ; [+4]
      221 LOADK                            R19 K33 ["missing BasePart RightUpperLeg"]
      222 GETIMPORT                        R17 K7 [assert]
      224 CALL                             R17 2 0
      225 MOVE                             R15 R16
      226 LOADK                            R19 K34 ["RightLowerLeg"]
      227 NAMECALL                         R17 R0 K2 ["FindFirstChild"]
      229 CALL                             R17 2 1
      230 MOVE                             R19 R17
      231 JUMPIFNOT                        R19 ; [+4]
      232 LOADK                            R21 K3 ["BasePart"]
      233 NAMECALL                         R19 R17 K4 ["IsA"]
      235 CALL                             R19 2 1
      236 FASTCALL2K                       ASSERT R19 K35 ; [+4]
      238 LOADK                            R20 K35 ["missing BasePart RightLowerLeg"]
      239 GETIMPORT                        R18 K7 [assert]
      241 CALL                             R18 2 0
      242 MOVE                             R16 R17
      243 NEWCLOSURE                       R17 P4
      244 CAPTURE                          VAL R8
      245 SETTABLEKS                       R17 R3 K36 ["lower_torso"]
      247 NEWCLOSURE                       R17 P5
      248 CAPTURE                          VAL R9
      249 SETTABLEKS                       R17 R3 K37 ["left_upper_arm"]
      251 NEWCLOSURE                       R17 P6
      252 CAPTURE                          VAL R10
      253 SETTABLEKS                       R17 R3 K38 ["left_lower_arm"]
      255 NEWCLOSURE                       R17 P7
      256 CAPTURE                          VAL R4
      257 SETTABLEKS                       R17 R3 K14 ["left_hand"]
      259 NEWCLOSURE                       R17 P8
      260 CAPTURE                          VAL R11
      261 SETTABLEKS                       R17 R3 K39 ["right_upper_arm"]
      263 NEWCLOSURE                       R17 P9
      264 CAPTURE                          VAL R12
      265 SETTABLEKS                       R17 R3 K40 ["right_lower_arm"]
      267 NEWCLOSURE                       R17 P10
      268 CAPTURE                          VAL R5
      269 SETTABLEKS                       R17 R3 K15 ["right_hand"]
      271 NEWCLOSURE                       R17 P11
      272 CAPTURE                          VAL R13
      273 SETTABLEKS                       R17 R3 K41 ["left_upper_leg"]
      275 NEWCLOSURE                       R17 P12
      276 CAPTURE                          VAL R14
      277 SETTABLEKS                       R17 R3 K42 ["left_lower_leg"]
      279 NEWCLOSURE                       R17 P13
      280 CAPTURE                          VAL R6
      281 SETTABLEKS                       R17 R3 K16 ["left_foot"]
      283 NEWCLOSURE                       R17 P14
      284 CAPTURE                          VAL R15
      285 SETTABLEKS                       R17 R3 K43 ["right_upper_leg"]
      287 NEWCLOSURE                       R17 P15
      288 CAPTURE                          VAL R16
      289 SETTABLEKS                       R17 R3 K44 ["right_lower_leg"]
      291 NEWCLOSURE                       R17 P16
      292 CAPTURE                          VAL R7
      293 SETTABLEKS                       R17 R3 K17 ["right_foot"]
      295 RETURN                           R2 2
      296 LOADK                            R7 K45 ["Left Arm"]
      297 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
      299 CALL                             R5 2 1
      300 MOVE                             R7 R5
      301 JUMPIFNOT                        R7 ; [+4]
      302 LOADK                            R9 K3 ["BasePart"]
      303 NAMECALL                         R7 R5 K4 ["IsA"]
      305 CALL                             R7 2 1
      306 FASTCALL2K                       ASSERT R7 K46 ; [+4]
      308 LOADK                            R8 K46 ["missing BasePart Left Arm"]
      309 GETIMPORT                        R6 K7 [assert]
      311 CALL                             R6 2 0
      312 MOVE                             R4 R5
      313 LOADK                            R8 K47 ["Right Arm"]
      314 NAMECALL                         R6 R0 K2 ["FindFirstChild"]
      316 CALL                             R6 2 1
      317 MOVE                             R8 R6
      318 JUMPIFNOT                        R8 ; [+4]
      319 LOADK                            R10 K3 ["BasePart"]
      320 NAMECALL                         R8 R6 K4 ["IsA"]
      322 CALL                             R8 2 1
      323 FASTCALL2K                       ASSERT R8 K48 ; [+4]
      325 LOADK                            R9 K48 ["missing BasePart Right Arm"]
      326 GETIMPORT                        R7 K7 [assert]
      328 CALL                             R7 2 0
      329 MOVE                             R5 R6
      330 LOADK                            R9 K49 ["Left Leg"]
      331 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
      333 CALL                             R7 2 1
      334 MOVE                             R9 R7
      335 JUMPIFNOT                        R9 ; [+4]
      336 LOADK                            R11 K3 ["BasePart"]
      337 NAMECALL                         R9 R7 K4 ["IsA"]
      339 CALL                             R9 2 1
      340 FASTCALL2K                       ASSERT R9 K50 ; [+4]
      342 LOADK                            R10 K50 ["missing BasePart Left Leg"]
      343 GETIMPORT                        R8 K7 [assert]
      345 CALL                             R8 2 0
      346 MOVE                             R6 R7
      347 LOADK                            R10 K51 ["Right Leg"]
      348 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
      350 CALL                             R8 2 1
      351 MOVE                             R10 R8
      352 JUMPIFNOT                        R10 ; [+4]
      353 LOADK                            R12 K3 ["BasePart"]
      354 NAMECALL                         R10 R8 K4 ["IsA"]
      356 CALL                             R10 2 1
      357 FASTCALL2K                       ASSERT R10 K52 ; [+4]
      359 LOADK                            R11 K52 ["missing BasePart Right Leg"]
      360 GETIMPORT                        R9 K7 [assert]
      362 CALL                             R9 2 0
      363 MOVE                             R7 R8
      364 LOADK                            R11 K53 ["Torso"]
      365 NAMECALL                         R9 R0 K2 ["FindFirstChild"]
      367 CALL                             R9 2 1
      368 MOVE                             R11 R9
      369 JUMPIFNOT                        R11 ; [+4]
      370 LOADK                            R13 K3 ["BasePart"]
      371 NAMECALL                         R11 R9 K4 ["IsA"]
      373 CALL                             R11 2 1
      374 FASTCALL2K                       ASSERT R11 K54 ; [+4]
      376 LOADK                            R12 K54 ["missing BasePart Torso"]
      377 GETIMPORT                        R10 K7 [assert]
      379 CALL                             R10 2 0
      380 MOVE                             R8 R9
      381 NEWCLOSURE                       R9 P17
      382 CAPTURE                          VAL R4
      383 CAPTURE                          UPVAL U0
      384 SETTABLEKS                       R9 R2 K14 ["left_hand"]
      386 NEWCLOSURE                       R9 P18
      387 CAPTURE                          VAL R5
      388 CAPTURE                          UPVAL U0
      389 SETTABLEKS                       R9 R2 K15 ["right_hand"]
      391 NEWCLOSURE                       R9 P19
      392 CAPTURE                          VAL R6
      393 CAPTURE                          UPVAL U0
      394 SETTABLEKS                       R9 R2 K16 ["left_foot"]
      396 NEWCLOSURE                       R9 P20
      397 CAPTURE                          VAL R7
      398 CAPTURE                          UPVAL U0
      399 SETTABLEKS                       R9 R2 K17 ["right_foot"]
      401 NEWCLOSURE                       R9 P21
      402 CAPTURE                          VAL R8
      403 SETTABLEKS                       R9 R3 K55 ["torso"]
      405 NEWCLOSURE                       R9 P22
      406 CAPTURE                          VAL R4
      407 SETTABLEKS                       R9 R3 K56 ["left_arm"]
      409 NEWCLOSURE                       R9 P23
      410 CAPTURE                          VAL R5
      411 SETTABLEKS                       R9 R3 K57 ["right_arm"]
      413 NEWCLOSURE                       R9 P24
      414 CAPTURE                          VAL R6
      415 SETTABLEKS                       R9 R3 K58 ["left_leg"]
      417 NEWCLOSURE                       R9 P25
      418 CAPTURE                          VAL R7
      419 SETTABLEKS                       R9 R3 K59 ["right_leg"]
      421 RETURN                           R2 2

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadAnimation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["R6"] ; [+4]
        3 GETIMPORT                        R0 K3 [Enum.HumanoidRigType.R6]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R0 K5 [Enum.HumanoidRigType.R15]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K6 ["createCharacter"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R1 2 1
       14 SETUPVAL                         R1 3
       15 LOADK                            R2 K7 ["AnimationClipToBackendTensorChar"]
       16 SETTABLEKS                       R2 R1 K8 ["Name"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K9 ["Archivable"]
       21 GETIMPORT                        R2 K11 [workspace]
       23 SETTABLEKS                       R2 R1 K12 ["Parent"]
       25 LOADK                            R4 K13 ["HumanoidRootPart"]
       26 NAMECALL                         R2 R1 K14 ["FindFirstChild"]
       28 CALL                             R2 2 1
       29 JUMPIFEQKNIL                     R2 ; [+6]
       31 LOADK                            R5 K15 ["BasePart"]
       32 NAMECALL                         R3 R2 K16 ["IsA"]
       34 CALL                             R3 2 1
       35 JUMPIF                           R3 ; [+6]
       36 GETIMPORT                        R3 K18 [warn]
       38 LOADK                            R4 K19 ["[animationClipToBackendTensor] spawned character has no HumanoidRootPart"]
       39 CALL                             R3 1 0
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 4
       43 SETTABLEKS                       R3 R2 K20 ["CFrame"]
       45 LOADK                            R5 K21 ["Humanoid"]
       46 NAMECALL                         R3 R1 K22 ["FindFirstChildOfClass"]
       48 CALL                             R3 2 1
       49 JUMPIFNOTEQKNIL                  R3 ; [+7]
       51 GETIMPORT                        R4 K18 [warn]
       53 LOADK                            R5 K23 ["[animationClipToBackendTensor] spawned character has no Humanoid"]
       54 CALL                             R4 1 0
       55 LOADNIL                          R4
       56 RETURN                           R4 1
       57 LOADK                            R6 K24 ["Animator"]
       58 NAMECALL                         R4 R3 K22 ["FindFirstChildOfClass"]
       60 CALL                             R4 2 1
       61 JUMPIF                           R4 ; [+4]
       62 GETIMPORT                        R4 K27 [Instance.new]
       64 LOADK                            R5 K24 ["Animator"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R3 R4 K12 ["Parent"]
       68 GETUPVAL                         R5 1
       69 GETTABLEKS                       R5 R5 K28 ["registerClip"]
       71 GETUPVAL                         R6 5
       72 CALL                             R5 1 1
       73 JUMPIFEQKNIL                     R5 ; [+3]
       75 JUMPIFNOTEQKS                    R5 K29 [""] ; [+7]
       77 GETIMPORT                        R6 K18 [warn]
       79 LOADK                            R7 K30 ["[animationClipToBackendTensor] RegisterKeyframeSequence returned nil"]
       80 CALL                             R6 1 0
       81 LOADNIL                          R6
       82 RETURN                           R6 1
       83 GETIMPORT                        R6 K27 [Instance.new]
       85 LOADK                            R7 K31 ["Animation"]
       86 CALL                             R6 1 1
       87 SETUPVAL                         R6 6
       88 SETTABLEKS                       R5 R6 K32 ["AnimationId"]
       90 GETIMPORT                        R7 K34 [pcall]
       92 NEWCLOSURE                       R8 P0
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R6
       96 CALL                             R7 1 2
       97 JUMPIFNOT                        R7 ; [+2]
       98 JUMPIFNOTEQKNIL                  R8 ; [+13]
      100 GETIMPORT                        R9 K18 [warn]
      102 LOADK                            R11 K35 ["[animationClipToBackendTensor] LoadAnimation failed: "]
      103 FASTCALL1                        TOSTRING R8 ; [+3]
      104 MOVE                             R13 R8
      105 GETIMPORT                        R12 K37 [tostring]
      107 CALL                             R12 1 1
      108 CONCAT                           R10 R11 R12
      109 CALL                             R9 1 0
      110 LOADNIL                          R9
      111 RETURN                           R9 1
      112 SETUPVAL                         R8 7
      113 LOADB                            R9 0
      114 SETTABLEKS                       R9 R8 K38 ["Looped"]
      116 LOADN                            R11 0
      117 NAMECALL                         R9 R8 K39 ["Play"]
      119 CALL                             R9 2 0
      120 LOADN                            R9 0
      121 GETTABLEKS                       R10 R8 K40 ["Length"]
      123 JUMPIFNOTEQKN                    R10 K41 [0] ; [+10]
      125 LOADN                            R10 5
      126 JUMPIFNOTLT                      R9 R10 ; [+7]
      128 GETUPVAL                         R10 1
      129 GETTABLEKS                       R10 R10 K42 ["waitForFrame"]
      131 CALL                             R10 0 0
      132 ADDK                             R9 R9 K43 [0.0166666666666667]
      133 JUMPBACK                         ; [-13]
      134 GETTABLEKS                       R10 R8 K40 ["Length"]
      136 LOADN                            R11 0
      137 JUMPIFNOTLE                      R10 R11 ; [+7]
      139 GETIMPORT                        R11 K18 [warn]
      141 LOADK                            R12 K44 ["[animationClipToBackendTensor] clip has zero duration"]
      142 CALL                             R11 1 0
      143 LOADNIL                          R11
      144 RETURN                           R11 1
      145 GETUPVAL                         R11 8
      146 MOVE                             R12 R1
      147 GETUPVAL                         R13 0
      148 CALL                             R11 2 2
      149 GETUPVAL                         R13 9
      150 LOADN                            R14 1
      151 JUMPIFNOTLT                      R14 R13 ; [+4]
      153 GETUPVAL                         R14 10
      154 JUMPIF                           R14 ; [+1]
      155 LOADN                            R13 1
      156 GETUPVAL                         R16 11
      157 FASTCALL2                        MATH_MAX R10 R16 ; [+4]
      159 MOVE                             R15 R10
      160 GETIMPORT                        R14 K47 [math.max]
      162 CALL                             R14 2 1
      163 LOADN                            R15 1
      164 JUMPIFNOTLT                      R15 R13 ; [+2]
      166 MUL                              R14 R10 R13
      167 JUMPIFNOTLT                      R10 R14 ; [+4]
      169 LOADB                            R15 1
      170 SETTABLEKS                       R15 R8 K38 ["Looped"]
      172 LOADN                            R16 2
      173 GETUPVAL                         R21 12
      174 MUL                              R20 R14 R21
      175 ADDK                             R19 R20 K49 [0.5]
      176 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      177 GETIMPORT                        R18 K51 [math.floor]
      179 CALL                             R18 1 1
      180 ADDK                             R17 R18 K48 [1]
      181 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      183 GETIMPORT                        R15 K47 [math.max]
      185 CALL                             R15 2 1
      186 SUBK                             R17 R15 K48 [1]
      187 DIV                              R16 R14 R17
      188 GETIMPORT                        R17 K54 [table.create]
      190 MOVE                             R18 R15
      191 CALL                             R17 1 1
      192 LOADN                            R20 0
      193 SUBK                             R18 R15 K48 [1]
      194 LOADN                            R19 1
      195 FORNPREP                         R18
      196 MUL                              R22 R20 R16
      197 FASTCALL2                        MATH_MIN R22 R14 ; [+4]
      199 MOVE                             R23 R14
      200 GETIMPORT                        R21 K56 [math.min]
      202 CALL                             R21 2 1
      203 GETUPVAL                         R23 10
      204 JUMPIFNOT                        R23 ; [+2]
      205 MOD                              R22 R21 R10
      206 JUMP                             ; [+7]
      207 FASTCALL2                        MATH_MIN R21 R10 ; [+5]
      209 MOVE                             R23 R21
      210 MOVE                             R24 R10
      211 GETIMPORT                        R22 K56 [math.min]
      213 CALL                             R22 2 1
      214 SETTABLEKS                       R22 R8 K57 ["TimePosition"]
      216 GETUPVAL                         R23 1
      217 GETTABLEKS                       R23 R23 K58 ["stepAnimation"]
      219 MOVE                             R24 R4
      220 CALL                             R23 1 0
      221 DUPTABLE                         R23 K66 [{"t", "hrp", "left_hand", "right_hand", "left_foot", "right_foot", "chain"}]
      222 SETTABLEKS                       R21 R23 K59 ["t"]
      224 GETUPVAL                         R24 13
      225 GETTABLEKS                       R25 R2 K20 ["CFrame"]
      227 CALL                             R24 1 1
      228 SETTABLEKS                       R24 R23 K60 ["hrp"]
      230 GETUPVAL                         R24 13
      231 GETTABLEKS                       R25 R11 K61 ["left_hand"]
      233 CALL                             R25 0 -1
      234 CALL                             R24 -1 1
      235 SETTABLEKS                       R24 R23 K61 ["left_hand"]
      237 GETUPVAL                         R24 13
      238 GETTABLEKS                       R25 R11 K62 ["right_hand"]
      240 CALL                             R25 0 -1
      241 CALL                             R24 -1 1
      242 SETTABLEKS                       R24 R23 K62 ["right_hand"]
      244 GETUPVAL                         R24 13
      245 GETTABLEKS                       R25 R11 K63 ["left_foot"]
      247 CALL                             R25 0 -1
      248 CALL                             R24 -1 1
      249 SETTABLEKS                       R24 R23 K63 ["left_foot"]
      251 GETUPVAL                         R24 13
      252 GETTABLEKS                       R25 R11 K64 ["right_foot"]
      254 CALL                             R25 0 -1
      255 CALL                             R24 -1 1
      256 SETTABLEKS                       R24 R23 K64 ["right_foot"]
      258 NEWTABLE                         R24 0 0
      260 SETTABLEKS                       R24 R23 K65 ["chain"]
      262 MOVE                             R24 R12
      263 LOADNIL                          R25
      264 LOADNIL                          R26
      265 FORGPREP                         R24
      266 GETTABLEKS                       R29 R23 K65 ["chain"]
      268 GETUPVAL                         R30 13
      269 MOVE                             R31 R28
      270 CALL                             R31 0 -1
      271 CALL                             R30 -1 1
      272 SETTABLE                         R30 R29 R27
      273 FORGLOOP                         R24 2 ; [-8]
      275 ADDK                             R24 R20 K48 [1]
      276 SETTABLE                         R23 R17 R24
      277 FORNLOOP                         R18
      278 LOADN                            R19 2
      279 GETUPVAL                         R24 12
      280 MUL                              R23 R10 R24
      281 ADDK                             R22 R23 K49 [0.5]
      282 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      283 GETIMPORT                        R21 K51 [math.floor]
      285 CALL                             R21 1 1
      286 ADDK                             R20 R21 K48 [1]
      287 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      289 GETIMPORT                        R18 K47 [math.max]
      291 CALL                             R18 2 1
      292 DUPTABLE                         R19 K81 [{["schema_version"] = 1, ["asset_id"], ["clip_name"], ["clip_class"], ["rig_type"], ["fps"], ["n_frames"], ["duration_s"], ["source_duration_s"], ["source_n_frames"], ["min_duration_s"], ["loop_passes"], ["looped"], ["frames"]}]
      293 GETUPVAL                         R20 14
      294 SETTABLEKS                       R20 R19 K68 ["asset_id"]
      296 GETUPVAL                         R20 5
      297 GETTABLEKS                       R20 R20 K8 ["Name"]
      299 SETTABLEKS                       R20 R19 K69 ["clip_name"]
      301 GETUPVAL                         R20 5
      302 GETTABLEKS                       R20 R20 K82 ["ClassName"]
      304 SETTABLEKS                       R20 R19 K70 ["clip_class"]
      306 GETUPVAL                         R20 0
      307 SETTABLEKS                       R20 R19 K71 ["rig_type"]
      309 GETUPVAL                         R20 12
      310 SETTABLEKS                       R20 R19 K72 ["fps"]
      312 SETTABLEKS                       R15 R19 K73 ["n_frames"]
      314 SETTABLEKS                       R14 R19 K74 ["duration_s"]
      316 SETTABLEKS                       R10 R19 K75 ["source_duration_s"]
      318 SETTABLEKS                       R18 R19 K76 ["source_n_frames"]
      320 GETUPVAL                         R20 11
      321 SETTABLEKS                       R20 R19 K77 ["min_duration_s"]
      323 SETTABLEKS                       R13 R19 K78 ["loop_passes"]
      325 GETUPVAL                         R20 10
      326 SETTABLEKS                       R20 R19 K79 ["looped"]
      328 SETTABLEKS                       R17 R19 K80 ["frames"]
      330 RETURN                           R19 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Stop"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["fps"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["DEFAULT_GENERATION_FPS"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["minDurationS"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADN                            R3 0
       12 LOADN                            R5 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R6 R1 K3 ["loopPasses"]
       16 JUMPIF                           R6 ; [+1]
       17 LOADN                            R6 1
       18 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       20 GETIMPORT                        R4 K6 [math.max]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R5 R1 K7 ["assetId"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R0 K8 ["Loop"]
       33 GETIMPORT                        R8 K11 [Instance.new]
       35 LOADK                            R9 K12 ["HumanoidDescription"]
       36 CALL                             R8 1 1
       37 LOADNIL                          R9
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 GETIMPORT                        R12 K14 [pcall]
       42 NEWCLOSURE                       R13 P0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R8
       46 CAPTURE                          REF R9
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          REF R10
       50 CAPTURE                          REF R11
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R5
       58 CALL                             R12 1 2
       59 MOVE                             R14 R11
       60 JUMPIFEQKNIL                     R14 ; [+9]
       62 GETIMPORT                        R15 K14 [pcall]
       64 NEWCLOSURE                       R16 P1
       65 CAPTURE                          VAL R14
       66 CALL                             R15 1 0
       67 NAMECALL                         R15 R14 K15 ["Destroy"]
       69 CALL                             R15 1 0
       70 JUMPIFEQKNIL                     R10 ; [+4]
       72 NAMECALL                         R15 R10 K15 ["Destroy"]
       74 CALL                             R15 1 0
       75 JUMPIFEQKNIL                     R9 ; [+4]
       77 NAMECALL                         R15 R9 K15 ["Destroy"]
       79 CALL                             R15 1 0
       80 NAMECALL                         R15 R8 K15 ["Destroy"]
       82 CALL                             R15 1 0
       83 JUMPIF                           R12 ; [+5]
       84 GETIMPORT                        R15 K17 [error]
       86 MOVE                             R16 R13
       87 LOADN                            R17 0
       88 CALL                             R15 2 0
       89 CLOSEUPVALS                      R9
       90 RETURN                           R13 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AnimationClipSamplingRuntime"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["AnimationGenConstants"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["detectRigType"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["sampledAnimationToBackendTensor"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K11 [CFrame.new]
       39 LOADN                            R5 0
       40 LOADN                            R6 -1
       41 LOADN                            R7 0
       42 CALL                             R4 3 1
       43 GETIMPORT                        R5 K11 [CFrame.new]
       45 LOADN                            R6 0
       46 LOADN                            R7 5
       47 LOADN                            R8 0
       48 CALL                             R5 3 1
       49 DUPCLOSURE                       R6 K12 [PROTO_0]
       50 DUPCLOSURE                       R7 K13 [PROTO_1]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R8 K14 [PROTO_2]
       53 DUPCLOSURE                       R9 K15 [PROTO_29]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R10 K16 [PROTO_33]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R11 K17 [PROTO_34]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R3
       65 RETURN                           R11 1
