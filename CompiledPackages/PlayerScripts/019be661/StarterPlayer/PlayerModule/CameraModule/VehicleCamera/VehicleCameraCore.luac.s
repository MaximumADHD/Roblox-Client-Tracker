PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["toEulerAnglesYXZ"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R2
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["toEulerAnglesYXZ"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 SUB                              R6 R3 R2
        2 CALL                             R5 1 1
        3 MINUS                            R8 R1
        4 MUL                              R7 R8 R0
        5 FASTCALL1                        MATH_EXP R7 ; [+2]
        6 GETIMPORT                        R6 K2 [math.exp]
        8 CALL                             R6 1 1
        9 GETUPVAL                         R7 0
       10 LOADN                            R13 1
       11 MUL                              R14 R1 R0
       12 ADD                              R12 R13 R14
       13 MUL                              R11 R5 R12
       14 MUL                              R12 R4 R0
       15 ADD                              R10 R11 R12
       16 MUL                              R9 R10 R6
       17 ADD                              R8 R9 R2
       18 CALL                             R7 1 1
       19 MUL                              R12 R1 R0
       20 SUBRK                            R11 K3 [1] R12
       21 MUL                              R10 R4 R11
       22 MUL                              R13 R1 R1
       23 MUL                              R12 R13 R0
       24 MUL                              R11 R5 R12
       25 SUB                              R9 R10 R11
       26 MUL                              R8 R9 R6
       27 RETURN                           R7 2

PROTO_3:
        0 DUPTABLE                         R4 K5 [{"fRising", "fFalling", "g", "p", "v"}]
        1 SETTABLEKS                       R0 R4 K0 ["fRising"]
        3 SETTABLEKS                       R1 R4 K1 ["fFalling"]
        5 SETTABLEKS                       R2 R4 K2 ["g"]
        7 SETTABLEKS                       R2 R4 K3 ["p"]
        9 MULK                             R5 R2 K6 [0]
       10 SETTABLEKS                       R5 R4 K4 ["v"]
       12 GETUPVAL                         R5 0
       13 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       15 GETIMPORT                        R3 K8 [setmetatable]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["fRising"]
        2 GETTABLEKS                       R3 R0 K1 ["fFalling"]
        4 GETTABLEKS                       R4 R0 K2 ["g"]
        6 GETTABLEKS                       R5 R0 K3 ["p"]
        8 GETTABLEKS                       R6 R0 K4 ["v"]
       10 LOADK                            R8 K5 [6.28318530717959]
       11 LOADN                            R10 0
       12 JUMPIFNOTLT                      R10 R6 ; [+3]
       14 MOVE                             R9 R2
       15 JUMPIF                           R9 ; [+1]
       16 MOVE                             R9 R3
       17 MUL                              R7 R8 R9
       18 SUB                              R8 R5 R4
       19 MINUS                            R11 R7
       20 MUL                              R10 R11 R1
       21 FASTCALL1                        MATH_EXP R10 ; [+2]
       22 GETIMPORT                        R9 K8 [math.exp]
       24 CALL                             R9 1 1
       25 LOADN                            R15 1
       26 MUL                              R16 R7 R1
       27 ADD                              R14 R15 R16
       28 MUL                              R13 R8 R14
       29 MUL                              R14 R6 R1
       30 ADD                              R12 R13 R14
       31 MUL                              R11 R12 R9
       32 ADD                              R10 R11 R4
       33 MUL                              R15 R7 R1
       34 SUBRK                            R14 K9 [1] R15
       35 MUL                              R13 R6 R14
       36 MUL                              R16 R7 R7
       37 MUL                              R15 R16 R1
       38 MUL                              R14 R8 R15
       39 SUB                              R12 R13 R14
       40 MUL                              R11 R12 R9
       41 SETTABLEKS                       R10 R0 K3 ["p"]
       43 SETTABLEKS                       R11 R0 K4 ["v"]
       45 RETURN                           R10 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["CFrame"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 DUPTABLE                         R2 K14 [{["yawG"], ["yawP"], ["yawV"] = 0, ["pitchG"], ["pitchP"], ["pitchV"] = 0, ["fSpringYaw"], ["fSpringPitch"]}]
       14 NAMECALL                         R4 R0 K15 ["toEulerAnglesYXZ"]
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 MOVE                             R3 R6
       21 SETTABLEKS                       R3 R2 K5 ["yawG"]
       23 NAMECALL                         R4 R0 K15 ["toEulerAnglesYXZ"]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 0
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 MOVE                             R3 R6
       30 SETTABLEKS                       R3 R2 K6 ["yawP"]
       32 NAMECALL                         R4 R0 K15 ["toEulerAnglesYXZ"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 0
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 SETTABLEKS                       R3 R2 K9 ["pitchG"]
       41 NAMECALL                         R4 R0 K15 ["toEulerAnglesYXZ"]
       43 CALL                             R4 1 1
       44 GETUPVAL                         R5 0
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 MOVE                             R3 R5
       48 SETTABLEKS                       R3 R2 K10 ["pitchP"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K16 ["new"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K17 ["yawReponseDampingRising"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K18 ["yawResponseDampingFalling"]
       59 LOADN                            R6 0
       60 CALL                             R3 3 1
       61 SETTABLEKS                       R3 R2 K12 ["fSpringYaw"]
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K16 ["new"]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K19 ["pitchReponseDampingRising"]
       69 GETUPVAL                         R5 2
       70 GETTABLEKS                       R5 R5 K20 ["pitchResponseDampingFalling"]
       72 LOADN                            R6 0
       73 CALL                             R3 3 1
       74 SETTABLEKS                       R3 R2 K13 ["fSpringPitch"]
       76 GETUPVAL                         R3 3
       77 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       79 GETIMPORT                        R1 K22 [setmetatable]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1

PROTO_6:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["CFrame"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 NAMECALL                         R3 R1 K5 ["toEulerAnglesYXZ"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 MOVE                             R2 R5
       20 SETTABLEKS                       R2 R0 K6 ["yawG"]
       22 NAMECALL                         R3 R1 K5 ["toEulerAnglesYXZ"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 0
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 MOVE                             R2 R4
       29 SETTABLEKS                       R2 R0 K7 ["pitchG"]
       31 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [CFrame.fromEulerAnglesYXZ]
        2 GETTABLEKS                       R2 R0 K3 ["pitchP"]
        4 GETTABLEKS                       R3 R0 K4 ["yawP"]
        6 LOADN                            R4 0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R8 R1
        2 GETIMPORT                        R7 K1 [typeof]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL1                        ASSERT R6 ; [+2]
       10 GETIMPORT                        R5 K4 [assert]
       12 CALL                             R5 1 0
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R8 R3
       15 GETIMPORT                        R7 K1 [typeof]
       17 CALL                             R7 1 1
       18 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 FASTCALL1                        ASSERT R6 ; [+2]
       23 GETIMPORT                        R5 K4 [assert]
       25 CALL                             R5 1 0
       26 FASTCALL1                        TYPEOF R2 ; [+3]
       27 MOVE                             R8 R2
       28 GETIMPORT                        R7 K1 [typeof]
       30 CALL                             R7 1 1
       31 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 FASTCALL1                        ASSERT R6 ; [+2]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 1 0
       39 FASTCALL1                        TYPEOF R4 ; [+3]
       40 MOVE                             R8 R4
       41 GETIMPORT                        R7 K1 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 FASTCALL1                        ASSERT R6 ; [+2]
       49 GETIMPORT                        R5 K4 [assert]
       51 CALL                             R5 1 0
       52 GETTABLEKS                       R5 R0 K5 ["fSpringYaw"]
       54 GETTABLEKS                       R6 R0 K6 ["fSpringPitch"]
       56 GETUPVAL                         R7 0
       57 GETUPVAL                         R8 1
       58 MOVE                             R9 R4
       59 LOADN                            R10 0
       60 LOADN                            R11 1
       61 MOVE                             R12 R3
       62 LOADN                            R13 0
       63 CALL                             R8 5 1
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K7 ["cutoffMinAngularVelYaw"]
       67 FASTCALL1                        MATH_RAD R10 ; [+2]
       68 GETIMPORT                        R9 K10 [math.rad]
       70 CALL                             R9 1 1
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K11 ["cutoffMaxAngularVelYaw"]
       74 FASTCALL1                        MATH_RAD R11 ; [+2]
       75 GETIMPORT                        R10 K10 [math.rad]
       77 CALL                             R10 1 1
       78 LOADN                            R11 1
       79 LOADN                            R12 0
       80 CALL                             R7 5 1
       81 SETTABLEKS                       R7 R5 K12 ["g"]
       83 GETUPVAL                         R7 0
       84 GETUPVAL                         R8 1
       85 MOVE                             R9 R4
       86 LOADN                            R10 0
       87 LOADN                            R11 1
       88 MOVE                             R12 R2
       89 LOADN                            R13 0
       90 CALL                             R8 5 1
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K13 ["cutoffMinAngularVelPitch"]
       94 FASTCALL1                        MATH_RAD R10 ; [+2]
       95 GETIMPORT                        R9 K10 [math.rad]
       97 CALL                             R9 1 1
       98 GETUPVAL                         R11 2
       99 GETTABLEKS                       R11 R11 K14 ["cutoffMaxAngularVelPitch"]
      101 FASTCALL1                        MATH_RAD R11 ; [+2]
      102 GETIMPORT                        R10 K10 [math.rad]
      104 CALL                             R10 1 1
      105 LOADN                            R11 1
      106 LOADN                            R12 0
      107 CALL                             R7 5 1
      108 SETTABLEKS                       R7 R6 K12 ["g"]
      110 LOADK                            R9 K15 [6.28318530717959]
      111 GETUPVAL                         R10 2
      112 GETTABLEKS                       R10 R10 K16 ["yawStiffness"]
      114 MUL                              R8 R9 R10
      115 MOVE                             R11 R1
      116 NAMECALL                         R9 R5 K17 ["step"]
      118 CALL                             R9 2 1
      119 MUL                              R7 R8 R9
      120 LOADK                            R10 K15 [6.28318530717959]
      121 GETUPVAL                         R11 2
      122 GETTABLEKS                       R11 R11 K18 ["pitchStiffness"]
      124 MUL                              R9 R10 R11
      125 MOVE                             R12 R1
      126 NAMECALL                         R10 R6 K17 ["step"]
      128 CALL                             R10 2 1
      129 MUL                              R8 R9 R10
      130 GETUPVAL                         R9 1
      131 MOVE                             R10 R4
      132 LOADN                            R11 0
      133 LOADN                            R12 1
      134 LOADN                            R13 1
      135 GETUPVAL                         R14 2
      136 GETTABLEKS                       R14 R14 K19 ["firstPersonResponseMul"]
      138 CALL                             R9 5 1
      139 MUL                              R8 R8 R9
      140 GETUPVAL                         R9 1
      141 MOVE                             R10 R4
      142 LOADN                            R11 0
      143 LOADN                            R12 1
      144 LOADN                            R13 1
      145 GETUPVAL                         R14 2
      146 GETTABLEKS                       R14 R14 K19 ["firstPersonResponseMul"]
      148 CALL                             R9 5 1
      149 MUL                              R7 R7 R9
      150 MOVE                             R11 R7
      151 GETTABLEKS                       R12 R0 K20 ["yawG"]
      153 GETTABLEKS                       R13 R0 K21 ["yawP"]
      155 GETTABLEKS                       R14 R0 K22 ["yawV"]
      157 GETUPVAL                         R15 3
      158 SUB                              R16 R13 R12
      159 CALL                             R15 1 1
      160 MINUS                            R18 R11
      161 MUL                              R17 R18 R1
      162 FASTCALL1                        MATH_EXP R17 ; [+2]
      163 GETIMPORT                        R16 K24 [math.exp]
      165 CALL                             R16 1 1
      166 GETUPVAL                         R17 3
      167 LOADN                            R23 1
      168 MUL                              R24 R11 R1
      169 ADD                              R22 R23 R24
      170 MUL                              R21 R15 R22
      171 MUL                              R22 R14 R1
      172 ADD                              R20 R21 R22
      173 MUL                              R19 R20 R16
      174 ADD                              R18 R19 R12
      175 CALL                             R17 1 1
      176 MUL                              R22 R11 R1
      177 SUBRK                            R21 K25 [1] R22
      178 MUL                              R20 R14 R21
      179 MUL                              R23 R11 R11
      180 MUL                              R22 R23 R1
      181 MUL                              R21 R15 R22
      182 SUB                              R19 R20 R21
      183 MUL                              R18 R19 R16
      184 MOVE                             R9 R17
      185 MOVE                             R10 R18
      186 SETTABLEKS                       R9 R0 K21 ["yawP"]
      188 SETTABLEKS                       R10 R0 K22 ["yawV"]
      190 MOVE                             R11 R8
      191 GETTABLEKS                       R12 R0 K26 ["pitchG"]
      193 GETTABLEKS                       R13 R0 K27 ["pitchP"]
      195 GETTABLEKS                       R14 R0 K28 ["pitchV"]
      197 GETUPVAL                         R15 3
      198 SUB                              R16 R13 R12
      199 CALL                             R15 1 1
      200 MINUS                            R18 R11
      201 MUL                              R17 R18 R1
      202 FASTCALL1                        MATH_EXP R17 ; [+2]
      203 GETIMPORT                        R16 K24 [math.exp]
      205 CALL                             R16 1 1
      206 GETUPVAL                         R17 3
      207 LOADN                            R23 1
      208 MUL                              R24 R11 R1
      209 ADD                              R22 R23 R24
      210 MUL                              R21 R15 R22
      211 MUL                              R22 R14 R1
      212 ADD                              R20 R21 R22
      213 MUL                              R19 R20 R16
      214 ADD                              R18 R19 R12
      215 CALL                             R17 1 1
      216 MUL                              R22 R11 R1
      217 SUBRK                            R21 K25 [1] R22
      218 MUL                              R20 R14 R21
      219 MUL                              R23 R11 R11
      220 MUL                              R22 R23 R1
      221 MUL                              R21 R15 R22
      222 SUB                              R19 R20 R21
      223 MUL                              R18 R19 R16
      224 MOVE                             R9 R17
      225 MOVE                             R10 R18
      226 SETTABLEKS                       R9 R0 K27 ["pitchP"]
      228 SETTABLEKS                       R10 R0 K28 ["pitchV"]
      230 NAMECALL                         R9 R0 K29 ["getCFrame"]
      232 CALL                             R9 1 -1
      233 RETURN                           R9 -1

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"vrs"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["new"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["vrs"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["vrs"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 NAMECALL                         R5 R5 K1 ["step"]
        8 CALL                             R5 5 -1
        9 RETURN                           R5 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["vrs"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setGoal"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["CameraUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["VehicleCameraConfig"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R0 K7 ["map"]
       23 GETTABLEKS                       R3 R0 K8 ["mapClamp"]
       25 GETTABLEKS                       R4 R0 K9 ["sanitizeAngle"]
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R7 K12 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R8 4 0
       35 SETTABLEKS                       R8 R8 K13 ["__index"]
       37 DUPCLOSURE                       R9 K14 [PROTO_3]
       38 CAPTURE                          VAL R8
       39 SETTABLEKS                       R9 R8 K15 ["new"]
       41 DUPCLOSURE                       R9 K16 [PROTO_4]
       42 SETTABLEKS                       R9 R8 K17 ["step"]
       44 NEWTABLE                         R9 8 0
       46 SETTABLEKS                       R9 R9 K13 ["__index"]
       48 DUPCLOSURE                       R10 K18 [PROTO_5]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R10 R9 K15 ["new"]
       55 DUPCLOSURE                       R10 K19 [PROTO_6]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R10 R9 K20 ["setGoal"]
       59 DUPCLOSURE                       R10 K21 [PROTO_7]
       60 SETTABLEKS                       R10 R9 K22 ["getCFrame"]
       62 DUPCLOSURE                       R10 K23 [PROTO_8]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R10 R9 K17 ["step"]
       69 NEWTABLE                         R10 4 0
       71 SETTABLEKS                       R10 R10 K13 ["__index"]
       73 DUPCLOSURE                       R11 K24 [PROTO_9]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R11 R10 K15 ["new"]
       78 DUPCLOSURE                       R11 K25 [PROTO_10]
       79 SETTABLEKS                       R11 R10 K17 ["step"]
       81 DUPCLOSURE                       R11 K26 [PROTO_11]
       82 SETTABLEKS                       R11 R10 K27 ["setTransform"]
       84 RETURN                           R10 1
