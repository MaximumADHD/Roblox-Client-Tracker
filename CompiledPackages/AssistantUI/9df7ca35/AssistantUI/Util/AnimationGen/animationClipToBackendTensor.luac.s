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
        4 JUMPIFNOTEQKS                    R1 K0 ["R15"] ; [+278]
        6 LOADK                            R6 K1 ["LeftHand"]
        7 NAMECALL                         R4 R0 K2 ["FindFirstChild"]
        9 CALL                             R4 2 1
       10 MOVE                             R6 R4
       11 JUMPIFNOT                        R6 ; [+4]
       12 LOADK                            R8 K3 ["BasePart"]
       13 NAMECALL                         R6 R4 K4 ["IsA"]
       15 CALL                             R6 2 1
       16 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       18 LOADK                            R7 K5 ["missing BasePart LeftHand"]
       19 GETIMPORT                        R5 K7 [assert]
       21 CALL                             R5 2 0
       22 LOADK                            R7 K8 ["RightHand"]
       23 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
       25 CALL                             R5 2 1
       26 MOVE                             R7 R5
       27 JUMPIFNOT                        R7 ; [+4]
       28 LOADK                            R9 K3 ["BasePart"]
       29 NAMECALL                         R7 R5 K4 ["IsA"]
       31 CALL                             R7 2 1
       32 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       34 LOADK                            R8 K9 ["missing BasePart RightHand"]
       35 GETIMPORT                        R6 K7 [assert]
       37 CALL                             R6 2 0
       38 LOADK                            R8 K10 ["LeftFoot"]
       39 NAMECALL                         R6 R0 K2 ["FindFirstChild"]
       41 CALL                             R6 2 1
       42 MOVE                             R8 R6
       43 JUMPIFNOT                        R8 ; [+4]
       44 LOADK                            R10 K3 ["BasePart"]
       45 NAMECALL                         R8 R6 K4 ["IsA"]
       47 CALL                             R8 2 1
       48 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       50 LOADK                            R9 K11 ["missing BasePart LeftFoot"]
       51 GETIMPORT                        R7 K7 [assert]
       53 CALL                             R7 2 0
       54 LOADK                            R9 K12 ["RightFoot"]
       55 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
       57 CALL                             R7 2 1
       58 MOVE                             R9 R7
       59 JUMPIFNOT                        R9 ; [+4]
       60 LOADK                            R11 K3 ["BasePart"]
       61 NAMECALL                         R9 R7 K4 ["IsA"]
       63 CALL                             R9 2 1
       64 FASTCALL2K                       ASSERT R9 K13 ; [+4]
       66 LOADK                            R10 K13 ["missing BasePart RightFoot"]
       67 GETIMPORT                        R8 K7 [assert]
       69 CALL                             R8 2 0
       70 NEWCLOSURE                       R8 P0
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R8 R2 K14 ["left_hand"]
       74 NEWCLOSURE                       R8 P1
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R8 R2 K15 ["right_hand"]
       78 NEWCLOSURE                       R8 P2
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R8 R2 K16 ["left_foot"]
       82 NEWCLOSURE                       R8 P3
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R8 R2 K17 ["right_foot"]
       86 LOADK                            R10 K18 ["LowerTorso"]
       87 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
       89 CALL                             R8 2 1
       90 MOVE                             R10 R8
       91 JUMPIFNOT                        R10 ; [+4]
       92 LOADK                            R12 K3 ["BasePart"]
       93 NAMECALL                         R10 R8 K4 ["IsA"]
       95 CALL                             R10 2 1
       96 FASTCALL2K                       ASSERT R10 K19 ; [+4]
       98 LOADK                            R11 K19 ["missing BasePart LowerTorso"]
       99 GETIMPORT                        R9 K7 [assert]
      101 CALL                             R9 2 0
      102 LOADK                            R11 K20 ["LeftUpperArm"]
      103 NAMECALL                         R9 R0 K2 ["FindFirstChild"]
      105 CALL                             R9 2 1
      106 MOVE                             R11 R9
      107 JUMPIFNOT                        R11 ; [+4]
      108 LOADK                            R13 K3 ["BasePart"]
      109 NAMECALL                         R11 R9 K4 ["IsA"]
      111 CALL                             R11 2 1
      112 FASTCALL2K                       ASSERT R11 K21 ; [+4]
      114 LOADK                            R12 K21 ["missing BasePart LeftUpperArm"]
      115 GETIMPORT                        R10 K7 [assert]
      117 CALL                             R10 2 0
      118 LOADK                            R12 K22 ["LeftLowerArm"]
      119 NAMECALL                         R10 R0 K2 ["FindFirstChild"]
      121 CALL                             R10 2 1
      122 MOVE                             R12 R10
      123 JUMPIFNOT                        R12 ; [+4]
      124 LOADK                            R14 K3 ["BasePart"]
      125 NAMECALL                         R12 R10 K4 ["IsA"]
      127 CALL                             R12 2 1
      128 FASTCALL2K                       ASSERT R12 K23 ; [+4]
      130 LOADK                            R13 K23 ["missing BasePart LeftLowerArm"]
      131 GETIMPORT                        R11 K7 [assert]
      133 CALL                             R11 2 0
      134 LOADK                            R13 K24 ["RightUpperArm"]
      135 NAMECALL                         R11 R0 K2 ["FindFirstChild"]
      137 CALL                             R11 2 1
      138 MOVE                             R13 R11
      139 JUMPIFNOT                        R13 ; [+4]
      140 LOADK                            R15 K3 ["BasePart"]
      141 NAMECALL                         R13 R11 K4 ["IsA"]
      143 CALL                             R13 2 1
      144 FASTCALL2K                       ASSERT R13 K25 ; [+4]
      146 LOADK                            R14 K25 ["missing BasePart RightUpperArm"]
      147 GETIMPORT                        R12 K7 [assert]
      149 CALL                             R12 2 0
      150 LOADK                            R14 K26 ["RightLowerArm"]
      151 NAMECALL                         R12 R0 K2 ["FindFirstChild"]
      153 CALL                             R12 2 1
      154 MOVE                             R14 R12
      155 JUMPIFNOT                        R14 ; [+4]
      156 LOADK                            R16 K3 ["BasePart"]
      157 NAMECALL                         R14 R12 K4 ["IsA"]
      159 CALL                             R14 2 1
      160 FASTCALL2K                       ASSERT R14 K27 ; [+4]
      162 LOADK                            R15 K27 ["missing BasePart RightLowerArm"]
      163 GETIMPORT                        R13 K7 [assert]
      165 CALL                             R13 2 0
      166 LOADK                            R15 K28 ["LeftUpperLeg"]
      167 NAMECALL                         R13 R0 K2 ["FindFirstChild"]
      169 CALL                             R13 2 1
      170 MOVE                             R15 R13
      171 JUMPIFNOT                        R15 ; [+4]
      172 LOADK                            R17 K3 ["BasePart"]
      173 NAMECALL                         R15 R13 K4 ["IsA"]
      175 CALL                             R15 2 1
      176 FASTCALL2K                       ASSERT R15 K29 ; [+4]
      178 LOADK                            R16 K29 ["missing BasePart LeftUpperLeg"]
      179 GETIMPORT                        R14 K7 [assert]
      181 CALL                             R14 2 0
      182 LOADK                            R16 K30 ["LeftLowerLeg"]
      183 NAMECALL                         R14 R0 K2 ["FindFirstChild"]
      185 CALL                             R14 2 1
      186 MOVE                             R16 R14
      187 JUMPIFNOT                        R16 ; [+4]
      188 LOADK                            R18 K3 ["BasePart"]
      189 NAMECALL                         R16 R14 K4 ["IsA"]
      191 CALL                             R16 2 1
      192 FASTCALL2K                       ASSERT R16 K31 ; [+4]
      194 LOADK                            R17 K31 ["missing BasePart LeftLowerLeg"]
      195 GETIMPORT                        R15 K7 [assert]
      197 CALL                             R15 2 0
      198 LOADK                            R17 K32 ["RightUpperLeg"]
      199 NAMECALL                         R15 R0 K2 ["FindFirstChild"]
      201 CALL                             R15 2 1
      202 MOVE                             R17 R15
      203 JUMPIFNOT                        R17 ; [+4]
      204 LOADK                            R19 K3 ["BasePart"]
      205 NAMECALL                         R17 R15 K4 ["IsA"]
      207 CALL                             R17 2 1
      208 FASTCALL2K                       ASSERT R17 K33 ; [+4]
      210 LOADK                            R18 K33 ["missing BasePart RightUpperLeg"]
      211 GETIMPORT                        R16 K7 [assert]
      213 CALL                             R16 2 0
      214 LOADK                            R18 K34 ["RightLowerLeg"]
      215 NAMECALL                         R16 R0 K2 ["FindFirstChild"]
      217 CALL                             R16 2 1
      218 MOVE                             R18 R16
      219 JUMPIFNOT                        R18 ; [+4]
      220 LOADK                            R20 K3 ["BasePart"]
      221 NAMECALL                         R18 R16 K4 ["IsA"]
      223 CALL                             R18 2 1
      224 FASTCALL2K                       ASSERT R18 K35 ; [+4]
      226 LOADK                            R19 K35 ["missing BasePart RightLowerLeg"]
      227 GETIMPORT                        R17 K7 [assert]
      229 CALL                             R17 2 0
      230 NEWCLOSURE                       R17 P4
      231 CAPTURE                          VAL R8
      232 SETTABLEKS                       R17 R3 K36 ["lower_torso"]
      234 NEWCLOSURE                       R17 P5
      235 CAPTURE                          VAL R9
      236 SETTABLEKS                       R17 R3 K37 ["left_upper_arm"]
      238 NEWCLOSURE                       R17 P6
      239 CAPTURE                          VAL R10
      240 SETTABLEKS                       R17 R3 K38 ["left_lower_arm"]
      242 NEWCLOSURE                       R17 P7
      243 CAPTURE                          VAL R4
      244 SETTABLEKS                       R17 R3 K14 ["left_hand"]
      246 NEWCLOSURE                       R17 P8
      247 CAPTURE                          VAL R11
      248 SETTABLEKS                       R17 R3 K39 ["right_upper_arm"]
      250 NEWCLOSURE                       R17 P9
      251 CAPTURE                          VAL R12
      252 SETTABLEKS                       R17 R3 K40 ["right_lower_arm"]
      254 NEWCLOSURE                       R17 P10
      255 CAPTURE                          VAL R5
      256 SETTABLEKS                       R17 R3 K15 ["right_hand"]
      258 NEWCLOSURE                       R17 P11
      259 CAPTURE                          VAL R13
      260 SETTABLEKS                       R17 R3 K41 ["left_upper_leg"]
      262 NEWCLOSURE                       R17 P12
      263 CAPTURE                          VAL R14
      264 SETTABLEKS                       R17 R3 K42 ["left_lower_leg"]
      266 NEWCLOSURE                       R17 P13
      267 CAPTURE                          VAL R6
      268 SETTABLEKS                       R17 R3 K16 ["left_foot"]
      270 NEWCLOSURE                       R17 P14
      271 CAPTURE                          VAL R15
      272 SETTABLEKS                       R17 R3 K43 ["right_upper_leg"]
      274 NEWCLOSURE                       R17 P15
      275 CAPTURE                          VAL R16
      276 SETTABLEKS                       R17 R3 K44 ["right_lower_leg"]
      278 NEWCLOSURE                       R17 P16
      279 CAPTURE                          VAL R7
      280 SETTABLEKS                       R17 R3 K17 ["right_foot"]
      282 RETURN                           R2 2
      283 LOADK                            R6 K45 ["Left Arm"]
      284 NAMECALL                         R4 R0 K2 ["FindFirstChild"]
      286 CALL                             R4 2 1
      287 MOVE                             R6 R4
      288 JUMPIFNOT                        R6 ; [+4]
      289 LOADK                            R8 K3 ["BasePart"]
      290 NAMECALL                         R6 R4 K4 ["IsA"]
      292 CALL                             R6 2 1
      293 FASTCALL2K                       ASSERT R6 K46 ; [+4]
      295 LOADK                            R7 K46 ["missing BasePart Left Arm"]
      296 GETIMPORT                        R5 K7 [assert]
      298 CALL                             R5 2 0
      299 LOADK                            R7 K47 ["Right Arm"]
      300 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
      302 CALL                             R5 2 1
      303 MOVE                             R7 R5
      304 JUMPIFNOT                        R7 ; [+4]
      305 LOADK                            R9 K3 ["BasePart"]
      306 NAMECALL                         R7 R5 K4 ["IsA"]
      308 CALL                             R7 2 1
      309 FASTCALL2K                       ASSERT R7 K48 ; [+4]
      311 LOADK                            R8 K48 ["missing BasePart Right Arm"]
      312 GETIMPORT                        R6 K7 [assert]
      314 CALL                             R6 2 0
      315 LOADK                            R8 K49 ["Left Leg"]
      316 NAMECALL                         R6 R0 K2 ["FindFirstChild"]
      318 CALL                             R6 2 1
      319 MOVE                             R8 R6
      320 JUMPIFNOT                        R8 ; [+4]
      321 LOADK                            R10 K3 ["BasePart"]
      322 NAMECALL                         R8 R6 K4 ["IsA"]
      324 CALL                             R8 2 1
      325 FASTCALL2K                       ASSERT R8 K50 ; [+4]
      327 LOADK                            R9 K50 ["missing BasePart Left Leg"]
      328 GETIMPORT                        R7 K7 [assert]
      330 CALL                             R7 2 0
      331 LOADK                            R9 K51 ["Right Leg"]
      332 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
      334 CALL                             R7 2 1
      335 MOVE                             R9 R7
      336 JUMPIFNOT                        R9 ; [+4]
      337 LOADK                            R11 K3 ["BasePart"]
      338 NAMECALL                         R9 R7 K4 ["IsA"]
      340 CALL                             R9 2 1
      341 FASTCALL2K                       ASSERT R9 K52 ; [+4]
      343 LOADK                            R10 K52 ["missing BasePart Right Leg"]
      344 GETIMPORT                        R8 K7 [assert]
      346 CALL                             R8 2 0
      347 LOADK                            R10 K53 ["Torso"]
      348 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
      350 CALL                             R8 2 1
      351 MOVE                             R10 R8
      352 JUMPIFNOT                        R10 ; [+4]
      353 LOADK                            R12 K3 ["BasePart"]
      354 NAMECALL                         R10 R8 K4 ["IsA"]
      356 CALL                             R10 2 1
      357 FASTCALL2K                       ASSERT R10 K54 ; [+4]
      359 LOADK                            R11 K54 ["missing BasePart Torso"]
      360 GETIMPORT                        R9 K7 [assert]
      362 CALL                             R9 2 0
      363 NEWCLOSURE                       R9 P17
      364 CAPTURE                          VAL R4
      365 CAPTURE                          UPVAL U0
      366 SETTABLEKS                       R9 R2 K14 ["left_hand"]
      368 NEWCLOSURE                       R9 P18
      369 CAPTURE                          VAL R5
      370 CAPTURE                          UPVAL U0
      371 SETTABLEKS                       R9 R2 K15 ["right_hand"]
      373 NEWCLOSURE                       R9 P19
      374 CAPTURE                          VAL R6
      375 CAPTURE                          UPVAL U0
      376 SETTABLEKS                       R9 R2 K16 ["left_foot"]
      378 NEWCLOSURE                       R9 P20
      379 CAPTURE                          VAL R7
      380 CAPTURE                          UPVAL U0
      381 SETTABLEKS                       R9 R2 K17 ["right_foot"]
      383 NEWCLOSURE                       R9 P21
      384 CAPTURE                          VAL R8
      385 SETTABLEKS                       R9 R3 K55 ["torso"]
      387 NEWCLOSURE                       R9 P22
      388 CAPTURE                          VAL R4
      389 SETTABLEKS                       R9 R3 K56 ["left_arm"]
      391 NEWCLOSURE                       R9 P23
      392 CAPTURE                          VAL R5
      393 SETTABLEKS                       R9 R3 K57 ["right_arm"]
      395 NEWCLOSURE                       R9 P24
      396 CAPTURE                          VAL R6
      397 SETTABLEKS                       R9 R3 K58 ["left_leg"]
      399 NEWCLOSURE                       R9 P25
      400 CAPTURE                          VAL R7
      401 SETTABLEKS                       R9 R3 K59 ["right_leg"]
      403 RETURN                           R2 2

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
       90 NEWCLOSURE                       R8 P0
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 FASTPCALL                        pcall 1 ; [+2]
       95 GETIMPORT                        R7 K34 [pcall]
       97 CALL                             R7 1 2
       98 JUMPIFNOT                        R7 ; [+2]
       99 JUMPIFNOTEQKNIL                  R8 ; [+13]
      101 GETIMPORT                        R9 K18 [warn]
      103 LOADK                            R11 K35 ["[animationClipToBackendTensor] LoadAnimation failed: "]
      104 FASTCALL1                        TOSTRING R8 ; [+3]
      105 MOVE                             R13 R8
      106 GETIMPORT                        R12 K37 [tostring]
      108 CALL                             R12 1 1
      109 CONCAT                           R10 R11 R12
      110 CALL                             R9 1 0
      111 LOADNIL                          R9
      112 RETURN                           R9 1
      113 SETUPVAL                         R8 7
      114 LOADB                            R9 0
      115 SETTABLEKS                       R9 R8 K38 ["Looped"]
      117 LOADN                            R11 0
      118 NAMECALL                         R9 R8 K39 ["Play"]
      120 CALL                             R9 2 0
      121 LOADN                            R9 0
      122 GETTABLEKS                       R10 R8 K40 ["Length"]
      124 JUMPIFNOTEQKN                    R10 K41 [0] ; [+10]
      126 LOADN                            R10 5
      127 JUMPIFNOTLT                      R9 R10 ; [+7]
      129 GETUPVAL                         R10 1
      130 GETTABLEKS                       R10 R10 K42 ["waitForFrame"]
      132 CALL                             R10 0 0
      133 ADDK                             R9 R9 K43 [0.016666666666666666]
      134 JUMPBACK                         ; [-13]
      135 GETTABLEKS                       R10 R8 K40 ["Length"]
      137 LOADN                            R11 0
      138 JUMPIFNOTLE                      R10 R11 ; [+7]
      140 GETIMPORT                        R11 K18 [warn]
      142 LOADK                            R12 K44 ["[animationClipToBackendTensor] clip has zero duration"]
      143 CALL                             R11 1 0
      144 LOADNIL                          R11
      145 RETURN                           R11 1
      146 GETUPVAL                         R11 8
      147 MOVE                             R12 R1
      148 GETUPVAL                         R13 0
      149 CALL                             R11 2 2
      150 GETUPVAL                         R13 9
      151 LOADN                            R14 1
      152 JUMPIFNOTLT                      R14 R13 ; [+4]
      154 GETUPVAL                         R14 10
      155 JUMPIF                           R14 ; [+1]
      156 LOADN                            R13 1
      157 GETUPVAL                         R16 11
      158 FASTCALL2                        MATH_MAX R10 R16 ; [+4]
      160 MOVE                             R15 R10
      161 GETIMPORT                        R14 K47 [math.max]
      163 CALL                             R14 2 1
      164 LOADN                            R15 1
      165 JUMPIFNOTLT                      R15 R13 ; [+2]
      167 MUL                              R14 R10 R13
      168 JUMPIFNOTLT                      R10 R14 ; [+4]
      170 LOADB                            R15 1
      171 SETTABLEKS                       R15 R8 K38 ["Looped"]
      173 LOADN                            R16 2
      174 GETUPVAL                         R21 12
      175 MUL                              R20 R14 R21
      176 ADDK                             R19 R20 K49 [0.5]
      177 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      178 GETIMPORT                        R18 K51 [math.floor]
      180 CALL                             R18 1 1
      181 ADDK                             R17 R18 K48 [1]
      182 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      184 GETIMPORT                        R15 K47 [math.max]
      186 CALL                             R15 2 1
      187 SUBK                             R17 R15 K48 [1]
      188 DIV                              R16 R14 R17
      189 GETIMPORT                        R17 K54 [table.create]
      191 MOVE                             R18 R15
      192 CALL                             R17 1 1
      193 LOADN                            R20 0
      194 SUBK                             R18 R15 K48 [1]
      195 LOADN                            R19 1
      196 FORNPREP                         R18
      197 MUL                              R22 R20 R16
      198 FASTCALL2                        MATH_MIN R22 R14 ; [+4]
      200 MOVE                             R23 R14
      201 GETIMPORT                        R21 K56 [math.min]
      203 CALL                             R21 2 1
      204 GETUPVAL                         R23 10
      205 JUMPIFNOT                        R23 ; [+2]
      206 MOD                              R22 R21 R10
      207 JUMP                             ; [+7]
      208 FASTCALL2                        MATH_MIN R21 R10 ; [+5]
      210 MOVE                             R23 R21
      211 MOVE                             R24 R10
      212 GETIMPORT                        R22 K56 [math.min]
      214 CALL                             R22 2 1
      215 SETTABLEKS                       R22 R8 K57 ["TimePosition"]
      217 GETUPVAL                         R23 13
      218 MOVE                             R24 R4
      219 LOADN                            R25 0
      220 LOADB                            R26 0
      221 LOADB                            R27 0
      222 CALL                             R23 4 0
      223 DUPTABLE                         R23 K65 [{"t", "hrp", "left_hand", "right_hand", "left_foot", "right_foot", "chain"}]
      224 SETTABLEKS                       R21 R23 K58 ["t"]
      226 GETUPVAL                         R24 14
      227 GETTABLEKS                       R25 R2 K20 ["CFrame"]
      229 CALL                             R24 1 1
      230 SETTABLEKS                       R24 R23 K59 ["hrp"]
      232 GETUPVAL                         R24 14
      233 GETTABLEKS                       R25 R11 K60 ["left_hand"]
      235 CALL                             R25 0 -1
      236 CALL                             R24 -1 1
      237 SETTABLEKS                       R24 R23 K60 ["left_hand"]
      239 GETUPVAL                         R24 14
      240 GETTABLEKS                       R25 R11 K61 ["right_hand"]
      242 CALL                             R25 0 -1
      243 CALL                             R24 -1 1
      244 SETTABLEKS                       R24 R23 K61 ["right_hand"]
      246 GETUPVAL                         R24 14
      247 GETTABLEKS                       R25 R11 K62 ["left_foot"]
      249 CALL                             R25 0 -1
      250 CALL                             R24 -1 1
      251 SETTABLEKS                       R24 R23 K62 ["left_foot"]
      253 GETUPVAL                         R24 14
      254 GETTABLEKS                       R25 R11 K63 ["right_foot"]
      256 CALL                             R25 0 -1
      257 CALL                             R24 -1 1
      258 SETTABLEKS                       R24 R23 K63 ["right_foot"]
      260 NEWTABLE                         R24 0 0
      262 SETTABLEKS                       R24 R23 K64 ["chain"]
      264 MOVE                             R24 R12
      265 LOADNIL                          R25
      266 LOADNIL                          R26
      267 FORGPREP                         R24
      268 GETTABLEKS                       R29 R23 K64 ["chain"]
      270 GETUPVAL                         R30 14
      271 MOVE                             R31 R28
      272 CALL                             R31 0 -1
      273 CALL                             R30 -1 1
      274 SETTABLE                         R30 R29 R27
      275 FORGLOOP                         R24 2 ; [-8]
      277 ADDK                             R24 R20 K48 [1]
      278 SETTABLE                         R23 R17 R24
      279 FORNLOOP                         R18
      280 LOADN                            R19 2
      281 GETUPVAL                         R24 12
      282 MUL                              R23 R10 R24
      283 ADDK                             R22 R23 K49 [0.5]
      284 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      285 GETIMPORT                        R21 K51 [math.floor]
      287 CALL                             R21 1 1
      288 ADDK                             R20 R21 K48 [1]
      289 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      291 GETIMPORT                        R18 K47 [math.max]
      293 CALL                             R18 2 1
      294 DUPTABLE                         R19 K80 [{["schema_version"] = 1, ["asset_id"], ["clip_name"], ["clip_class"], ["rig_type"], ["fps"], ["n_frames"], ["duration_s"], ["source_duration_s"], ["source_n_frames"], ["min_duration_s"], ["loop_passes"], ["looped"], ["frames"]}]
      295 GETUPVAL                         R20 15
      296 SETTABLEKS                       R20 R19 K67 ["asset_id"]
      298 GETUPVAL                         R20 5
      299 GETTABLEKS                       R20 R20 K8 ["Name"]
      301 SETTABLEKS                       R20 R19 K68 ["clip_name"]
      303 GETUPVAL                         R20 5
      304 GETTABLEKS                       R20 R20 K81 ["ClassName"]
      306 SETTABLEKS                       R20 R19 K69 ["clip_class"]
      308 GETUPVAL                         R20 0
      309 SETTABLEKS                       R20 R19 K70 ["rig_type"]
      311 GETUPVAL                         R20 12
      312 SETTABLEKS                       R20 R19 K71 ["fps"]
      314 SETTABLEKS                       R15 R19 K72 ["n_frames"]
      316 SETTABLEKS                       R14 R19 K73 ["duration_s"]
      318 SETTABLEKS                       R10 R19 K74 ["source_duration_s"]
      320 SETTABLEKS                       R18 R19 K75 ["source_n_frames"]
      322 GETUPVAL                         R20 11
      323 SETTABLEKS                       R20 R19 K76 ["min_duration_s"]
      325 SETTABLEKS                       R13 R19 K77 ["loop_passes"]
      327 GETUPVAL                         R20 10
      328 SETTABLEKS                       R20 R19 K78 ["looped"]
      330 SETTABLEKS                       R17 R19 K79 ["frames"]
      332 RETURN                           R19 1

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
       40 NEWCLOSURE                       R13 P0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R8
       44 CAPTURE                          REF R9
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          REF R10
       48 CAPTURE                          REF R11
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R5
       57 FASTPCALL                        pcall 1 ; [+2]
       58 GETIMPORT                        R12 K14 [pcall]
       60 CALL                             R12 1 2
       61 MOVE                             R14 R11
       62 JUMPIFEQKNIL                     R14 ; [+10]
       64 NEWCLOSURE                       R16 P1
       65 CAPTURE                          VAL R14
       66 FASTPCALL                        pcall 1 ; [+2]
       67 GETIMPORT                        R15 K14 [pcall]
       69 CALL                             R15 1 0
       70 NAMECALL                         R15 R14 K15 ["Destroy"]
       72 CALL                             R15 1 0
       73 JUMPIFEQKNIL                     R10 ; [+4]
       75 NAMECALL                         R15 R10 K15 ["Destroy"]
       77 CALL                             R15 1 0
       78 JUMPIFEQKNIL                     R9 ; [+4]
       80 NAMECALL                         R15 R9 K15 ["Destroy"]
       82 CALL                             R15 1 0
       83 NAMECALL                         R15 R8 K15 ["Destroy"]
       85 CALL                             R15 1 0
       86 JUMPIF                           R12 ; [+5]
       87 GETIMPORT                        R15 K17 [error]
       89 MOVE                             R16 R13
       90 LOADN                            R17 0
       91 CALL                             R15 2 0
       92 CLOSEUPVALS                      R9
       93 RETURN                           R13 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationClipSamplingRuntime"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["AnimationGenConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["detectRigType"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       40 GETTABLEKS                       R5 R5 K11 ["sampledAnimationToBackendTensor"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Util"]
       47 GETTABLEKS                       R6 R6 K7 ["AnimationGen"]
       49 GETTABLEKS                       R6 R6 K12 ["stepAnimations"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K15 [CFrame.new]
       54 LOADN                            R7 0
       55 LOADN                            R8 -1
       56 LOADN                            R9 0
       57 CALL                             R6 3 1
       58 GETIMPORT                        R7 K15 [CFrame.new]
       60 LOADN                            R8 0
       61 LOADN                            R9 5
       62 LOADN                            R10 0
       63 CALL                             R7 3 1
       64 DUPCLOSURE                       R8 K16 [PROTO_0]
       65 DUPCLOSURE                       R9 K17 [PROTO_1]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R10 K18 [PROTO_2]
       68 DUPCLOSURE                       R11 K19 [PROTO_29]
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R12 K20 [PROTO_33]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 DUPCLOSURE                       R13 K21 [PROTO_34]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R4
       81 RETURN                           R13 1
