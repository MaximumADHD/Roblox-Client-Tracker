PROTO_0:
        0 SUB                              R6 R3 R1
        1 JUMPIFNOT                        R5 ; [+2]
        2 LOADN                            R7 1
        3 JUMP                             ; [+5]
        4 GETTABLEKS                       R8 R4 K0 ["Value"]
        6 GETTABLEKS                       R9 R2 K0 ["Value"]
        8 SUB                              R7 R8 R9
        9 GETIMPORT                        R8 K4 [Enum.PoseEasingDirection.Out]
       11 JUMPIFNOTEQ                      R0 R8 ; [+10]
       13 LOADN                            R10 3
       14 MUL                              R9 R10 R7
       15 DIV                              R8 R9 R6
       16 SETTABLEKS                       R8 R2 K5 ["RightSlope"]
       18 LOADN                            R8 0
       19 SETTABLEKS                       R8 R4 K6 ["LeftSlope"]
       21 JUMP                             ; [+8]
       22 LOADN                            R8 0
       23 SETTABLEKS                       R8 R2 K5 ["RightSlope"]
       25 LOADN                            R10 3
       26 MUL                              R9 R10 R7
       27 DIV                              R8 R9 R6
       28 SETTABLEKS                       R8 R4 K6 ["LeftSlope"]
       30 NEWTABLE                         R8 0 0
       32 RETURN                           R8 1

PROTO_1:
        0 NEWTABLE                         R8 0 0
        2 SUB                              R9 R3 R1
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADN                            R10 1
        5 JUMP                             ; [+5]
        6 GETTABLEKS                       R11 R4 K0 ["Value"]
        8 GETTABLEKS                       R12 R2 K0 ["Value"]
       10 SUB                              R10 R11 R12
       11 ORK                              R6 R6 K1 [0.25]
       12 ORK                              R7 R7 K2 [3]
       13 FASTCALL1                        MATH_SQRT R6 ; [+3]
       14 MOVE                             R12 R6
       15 GETIMPORT                        R11 K5 [math.sqrt]
       17 CALL                             R11 1 1
       18 LOADN                            R12 1
       19 LOADN                            R15 1
       20 MOVE                             R13 R7
       21 LOADN                            R14 1
       22 FORNPREP                         R13
       23 FASTCALL2                        MATH_POW R11 R15 ; [+5]
       25 MOVE                             R18 R11
       26 MOVE                             R19 R15
       27 GETIMPORT                        R17 K8 [math.pow]
       29 CALL                             R17 2 1
       30 MULK                             R16 R17 K6 [2]
       31 ADD                              R12 R12 R16
       32 FORNLOOP                         R13
       33 MOVE                             R13 R11
       34 MULK                             R14 R12 K6 [2]
       35 LOADN                            R15 1
       36 LOADNIL                          R16
       37 LOADN                            R19 1
       38 MOVE                             R17 R7
       39 LOADN                            R18 1
       40 FORNPREP                         R17
       41 LOADNIL                          R20
       42 LOADNIL                          R21
       43 DIV                              R22 R15 R12
       44 JUMPIFNOT                        R5 ; [+4]
       45 MULK                             R25 R12 K6 [2]
       46 MUL                              R24 R25 R11
       47 DIV                              R23 R24 R13
       48 JUMPIF                           R23 ; [+1]
       49 MOVE                             R23 R14
       50 JUMPIFNOT                        R5 ; [+3]
       51 MULK                             R25 R12 K6 [2]
       52 DIV                              R24 R25 R13
       53 JUMPIF                           R24 ; [+2]
       54 MINUS                            R25 R14
       55 MUL                              R24 R25 R11
       56 DIV                              R26 R13 R12
       57 ADD                              R25 R22 R26
       58 MUL                              R27 R13 R13
       59 SUBRK                            R26 R9 K27 [NULL]
       60 GETIMPORT                        R27 K13 [Enum.PoseEasingDirection.In]
       62 JUMPIFNOTEQ                      R0 R27 ; [+7]
       64 SUBRK                            R22 R9 K22 ["Out"]
       65 MOVE                             R27 R23
       66 MOVE                             R23 R24
       67 MOVE                             R24 R27
       68 SUBRK                            R25 R9 K25 [NULL]
       69 SUBRK                            R26 R9 K26 [NULL]
       70 GETUPVAL                         R27 0
       71 GETTABLEKS                       R27 R27 K14 ["getNearestTick"]
       73 MUL                              R29 R22 R9
       74 ADD                              R28 R1 R29
       75 CALL                             R27 1 1
       76 MOVE                             R20 R27
       77 GETUPVAL                         R27 1
       78 GETTABLEKS                       R27 R27 K15 ["keyframe"]
       80 CALL                             R27 0 1
       81 MOVE                             R21 R27
       82 GETIMPORT                        R27 K18 [Enum.KeyInterpolationMode.Cubic]
       84 SETTABLEKS                       R27 R21 K19 ["InterpolationMode"]
       86 MUL                              R28 R23 R10
       87 DIV                              R27 R28 R9
       88 SETTABLEKS                       R27 R21 K20 ["LeftSlope"]
       90 MUL                              R28 R24 R10
       91 DIV                              R27 R28 R9
       92 SETTABLEKS                       R27 R21 K21 ["RightSlope"]
       94 GETIMPORT                        R28 K13 [Enum.PoseEasingDirection.In]
       96 JUMPIFNOTEQ                      R0 R28 ; [+4]
       98 GETTABLEKS                       R27 R2 K0 ["Value"]
      100 JUMPIF                           R27 ; [+2]
      101 GETTABLEKS                       R27 R4 K0 ["Value"]
      103 SETTABLEKS                       R27 R21 K0 ["Value"]
      105 SETTABLE                         R21 R8 R20
      106 GETIMPORT                        R27 K23 [Enum.PoseEasingDirection.Out]
      108 JUMPIFNOTEQ                      R0 R27 ; [+4]
      110 GETTABLEKS                       R16 R21 K21 ["RightSlope"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R16 R21 K20 ["LeftSlope"]
      115 GETUPVAL                         R27 0
      116 GETTABLEKS                       R27 R27 K14 ["getNearestTick"]
      118 MUL                              R29 R25 R9
      119 ADD                              R28 R1 R29
      120 CALL                             R27 1 1
      121 MOVE                             R20 R27
      122 GETUPVAL                         R27 1
      123 GETTABLEKS                       R27 R27 K15 ["keyframe"]
      125 CALL                             R27 0 1
      126 MOVE                             R21 R27
      127 GETIMPORT                        R27 K18 [Enum.KeyInterpolationMode.Cubic]
      129 SETTABLEKS                       R27 R21 K19 ["InterpolationMode"]
      131 LOADN                            R27 0
      132 SETTABLEKS                       R27 R21 K20 ["LeftSlope"]
      134 LOADN                            R27 0
      135 SETTABLEKS                       R27 R21 K21 ["RightSlope"]
      137 JUMPIFNOT                        R5 ; [+11]
      138 GETTABLEKS                       R27 R2 K0 ["Value"]
      140 GETTABLEKS                       R29 R4 K0 ["Value"]
      142 MOVE                             R30 R26
      143 NAMECALL                         R27 R27 K24 ["lerp"]
      145 CALL                             R27 3 1
      146 SETTABLEKS                       R27 R21 K0 ["Value"]
      148 JUMP                             ; [+11]
      149 GETTABLEKS                       R28 R2 K0 ["Value"]
      151 GETTABLEKS                       R31 R4 K0 ["Value"]
      153 GETTABLEKS                       R32 R2 K0 ["Value"]
      155 SUB                              R30 R31 R32
      156 MUL                              R29 R26 R30
      157 ADD                              R27 R28 R29
      158 SETTABLEKS                       R27 R21 K0 ["Value"]
      160 SETTABLE                         R21 R8 R20
      161 MULK                             R27 R13 K6 [2]
      162 ADD                              R15 R15 R27
      163 MUL                              R13 R13 R11
      164 MUL                              R14 R14 R11
      165 FORNLOOP                         R17
      166 GETIMPORT                        R17 K13 [Enum.PoseEasingDirection.In]
      168 JUMPIFNOTEQ                      R0 R17 ; [+12]
      170 JUMPIFNOT                        R5 ; [+3]
      171 SETTABLEKS                       R16 R2 K21 ["RightSlope"]
      173 JUMP                             ; [+3]
      174 MINUS                            R17 R16
      175 SETTABLEKS                       R17 R2 K21 ["RightSlope"]
      177 LOADN                            R17 0
      178 SETTABLEKS                       R17 R4 K20 ["LeftSlope"]
      180 RETURN                           R8 1
      181 LOADN                            R17 0
      182 SETTABLEKS                       R17 R2 K21 ["RightSlope"]
      184 JUMPIFNOT                        R5 ; [+3]
      185 SETTABLEKS                       R16 R4 K20 ["LeftSlope"]
      187 RETURN                           R8 1
      188 MINUS                            R17 R16
      189 SETTABLEKS                       R17 R4 K20 ["LeftSlope"]
      191 RETURN                           R8 1

PROTO_2:
        0 NEWTABLE                         R8 0 0
        2 SUB                              R9 R3 R1
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADN                            R10 1
        5 JUMP                             ; [+5]
        6 GETTABLEKS                       R11 R4 K0 ["Value"]
        8 GETTABLEKS                       R12 R2 K0 ["Value"]
       10 SUB                              R10 R11 R12
       11 ORK                              R6 R6 K1 [3.33333333333333]
       12 ORK                              R7 R7 K2 [10]
       13 LOADK                            R12 K3 [6.28318530717959]
       14 MUL                              R11 R12 R6
       15 MINUS                            R16 R7
       16 MULK                             R15 R16 K4 [0.693147180559945]
       17 DIV                              R14 R15 R11
       18 FASTCALL1                        MATH_ATAN R14 ; [+2]
       19 GETIMPORT                        R13 K7 [math.atan]
       21 CALL                             R13 1 1
       22 DIV                              R12 R13 R11
       23 LOADN                            R15 1
       24 LOADN                            R16 2
       25 MUL                              R13 R16 R6
       26 LOADN                            R14 1
       27 FORNPREP                         R13
       28 LOADN                            R19 2
       29 MUL                              R18 R19 R6
       30 DIV                              R17 R15 R18
       31 ADD                              R16 R12 R17
       32 LOADN                            R20 2
       33 MINUS                            R22 R7
       34 MUL                              R21 R22 R16
       35 FASTCALL2                        MATH_POW R20 R21 ; [+3]
       37 GETIMPORT                        R19 K10 [math.pow]
       39 CALL                             R19 2 1
       40 MUL                              R21 R11 R16
       41 FASTCALL1                        MATH_COS R21 ; [+2]
       42 GETIMPORT                        R20 K12 [math.cos]
       44 CALL                             R20 1 1
       45 MUL                              R18 R19 R20
       46 SUBRK                            R17 R8 K18 ["keyframe"]
       47 GETIMPORT                        R18 K16 [Enum.PoseEasingDirection.In]
       49 JUMPIFNOTEQ                      R0 R18 ; [+3]
       51 SUBRK                            R16 R8 K16 [Enum.PoseEasingDirection.In]
       52 SUBRK                            R17 R8 K17 ["getNearestTick"]
       53 GETUPVAL                         R18 0
       54 GETTABLEKS                       R18 R18 K17 ["getNearestTick"]
       56 MUL                              R20 R16 R9
       57 ADD                              R19 R1 R20
       58 CALL                             R18 1 1
       59 GETUPVAL                         R19 1
       60 GETTABLEKS                       R19 R19 K18 ["keyframe"]
       62 CALL                             R19 0 1
       63 GETIMPORT                        R20 K21 [Enum.KeyInterpolationMode.Cubic]
       65 SETTABLEKS                       R20 R19 K22 ["InterpolationMode"]
       67 LOADN                            R20 0
       68 SETTABLEKS                       R20 R19 K23 ["LeftSlope"]
       70 LOADN                            R20 0
       71 SETTABLEKS                       R20 R19 K24 ["RightSlope"]
       73 JUMPIFNOT                        R5 ; [+11]
       74 GETTABLEKS                       R20 R2 K0 ["Value"]
       76 GETTABLEKS                       R22 R4 K0 ["Value"]
       78 MOVE                             R23 R17
       79 NAMECALL                         R20 R20 K25 ["lerp"]
       81 CALL                             R20 3 1
       82 SETTABLEKS                       R20 R19 K0 ["Value"]
       84 JUMP                             ; [+11]
       85 GETTABLEKS                       R21 R2 K0 ["Value"]
       87 GETTABLEKS                       R24 R4 K0 ["Value"]
       89 GETTABLEKS                       R25 R2 K0 ["Value"]
       91 SUB                              R23 R24 R25
       92 MUL                              R22 R17 R23
       93 ADD                              R20 R21 R22
       94 SETTABLEKS                       R20 R19 K0 ["Value"]
       96 SETTABLE                         R19 R8 R18
       97 FORNLOOP                         R13
       98 GETIMPORT                        R13 K16 [Enum.PoseEasingDirection.In]
      100 JUMPIFNOTEQ                      R0 R13 ; [+10]
      102 LOADN                            R13 0
      103 SETTABLEKS                       R13 R2 K24 ["RightSlope"]
      105 MULK                             R15 R7 K4 [0.693147180559945]
      106 MUL                              R14 R15 R10
      107 DIV                              R13 R14 R9
      108 SETTABLEKS                       R13 R4 K23 ["LeftSlope"]
      110 RETURN                           R8 1
      111 MULK                             R15 R7 K4 [0.693147180559945]
      112 MUL                              R14 R15 R10
      113 DIV                              R13 R14 R9
      114 SETTABLEKS                       R13 R2 K24 ["RightSlope"]
      116 LOADN                            R13 0
      117 SETTABLEKS                       R13 R4 K23 ["LeftSlope"]
      119 RETURN                           R8 1

PROTO_3:
        0 NEWTABLE                         R7 4 0
        2 GETIMPORT                        R8 K3 [Enum.PoseEasingStyle.Cubic]
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R9 R9 K4 ["makeCubic"]
        7 SETTABLE                         R9 R7 R8
        8 GETIMPORT                        R8 K6 [Enum.PoseEasingStyle.Bounce]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K7 ["makeBounce"]
       13 SETTABLE                         R9 R7 R8
       14 GETIMPORT                        R8 K9 [Enum.PoseEasingStyle.Elastic]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K10 ["makeElastic"]
       19 SETTABLE                         R9 R7 R8
       20 GETIMPORT                        R8 K12 [Enum.PoseEasingStyle.CubicV2]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K4 ["makeCubic"]
       25 SETTABLE                         R9 R7 R8
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K13 ["TRACK_TYPES"]
       29 GETTABLEKS                       R9 R9 K14 ["Quaternion"]
       31 JUMPIFEQ                         R0 R9 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R10 R10 K15 ["POSE_EASING_STYLE_TO_KEY_INTERPOLATION"]
       38 GETTABLE                         R9 R10 R1
       39 SETTABLEKS                       R9 R4 K16 ["InterpolationMode"]
       41 LOADNIL                          R9
       42 SETTABLEKS                       R9 R4 K17 ["EasingStyle"]
       44 LOADNIL                          R9
       45 SETTABLEKS                       R9 R4 K18 ["EasingDirection"]
       47 GETIMPORT                        R9 K21 [Enum.PoseEasingDirection.InOut]
       49 JUMPIFNOTEQ                      R2 R9 ; [+77]
       51 GETIMPORT                        R9 K23 [Enum.PoseEasingStyle.Constant]
       53 JUMPIFEQ                         R1 R9 ; [+73]
       55 GETIMPORT                        R9 K25 [Enum.PoseEasingStyle.Linear]
       57 JUMPIFEQ                         R1 R9 ; [+69]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R9 R9 K26 ["getNearestTick"]
       62 ADD                              R11 R3 R5
       63 MULK                             R10 R11 K27 [0.5]
       64 CALL                             R9 1 1
       65 GETUPVAL                         R10 3
       66 GETTABLEKS                       R10 R10 K28 ["keyframe"]
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R8 ; [+11]
       70 GETTABLEKS                       R11 R4 K29 ["Value"]
       72 GETTABLEKS                       R13 R6 K29 ["Value"]
       74 LOADK                            R14 K27 [0.5]
       75 NAMECALL                         R11 R11 K30 ["lerp"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K29 ["Value"]
       80 JUMP                             ; [+8]
       81 GETTABLEKS                       R13 R4 K29 ["Value"]
       83 GETTABLEKS                       R14 R6 K29 ["Value"]
       85 ADD                              R12 R13 R14
       86 MULK                             R11 R12 K27 [0.5]
       87 SETTABLEKS                       R11 R10 K29 ["Value"]
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K31 ["generateCurve"]
       92 MOVE                             R12 R0
       93 MOVE                             R13 R1
       94 GETIMPORT                        R14 K33 [Enum.PoseEasingDirection.In]
       96 MOVE                             R15 R3
       97 MOVE                             R16 R4
       98 MOVE                             R17 R9
       99 MOVE                             R18 R10
      100 CALL                             R11 7 1
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K31 ["generateCurve"]
      104 MOVE                             R13 R0
      105 MOVE                             R14 R1
      106 GETIMPORT                        R15 K35 [Enum.PoseEasingDirection.Out]
      108 MOVE                             R16 R9
      109 MOVE                             R17 R10
      110 MOVE                             R18 R5
      111 MOVE                             R19 R6
      112 CALL                             R12 7 1
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R13 R13 K36 ["Dictionary"]
      116 GETTABLEKS                       R13 R13 K37 ["join"]
      118 MOVE                             R14 R11
      119 MOVE                             R15 R12
      120 CALL                             R13 2 1
      121 GETIMPORT                        R14 K9 [Enum.PoseEasingStyle.Elastic]
      123 JUMPIFEQ                         R1 R14 ; [+2]
      125 SETTABLE                         R10 R13 R9
      126 RETURN                           R13 1
      127 GETTABLE                         R9 R7 R1
      128 JUMPIFNOT                        R9 ; [+9]
      129 GETTABLE                         R9 R7 R1
      130 MOVE                             R10 R2
      131 MOVE                             R11 R3
      132 MOVE                             R12 R4
      133 MOVE                             R13 R5
      134 MOVE                             R14 R6
      135 MOVE                             R15 R8
      136 CALL                             R9 6 -1
      137 RETURN                           R9 -1
      138 NEWTABLE                         R9 0 0
      140 RETURN                           R9 1

PROTO_4:
        0 MULK                             R7 R0 K1 [2]
        1 SUBRK                            R6 R0 K7 [NULL]
        2 SUBK                             R8 R0 K1 [2]
        3 GETUPVAL                         R9 0
        4 MUL                              R7 R8 R9
        5 ADD                              R5 R6 R7
        6 SUBK                             R7 R0 K2 [1]
        7 GETUPVAL                         R8 1
        8 MUL                              R6 R7 R8
        9 ADD                              R4 R5 R6
       10 MUL                              R3 R0 R4
       11 GETUPVAL                         R4 0
       12 ADD                              R2 R3 R4
       13 MUL                              R1 R0 R2
       14 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R6 R0
        1 MOVE                             R7 R1
        2 MOVE                             R8 R3
        3 MOVE                             R9 R4
        4 MOVE                             R10 R7
        5 MOVE                             R11 R7
        6 SUB                              R14 R8 R6
        7 MUL                              R13 R2 R14
        8 SUB                              R14 R9 R7
        9 DIV                              R12 R13 R14
       10 SUB                              R15 R8 R6
       11 MUL                              R14 R5 R15
       12 SUB                              R15 R9 R7
       13 DIV                              R13 R14 R15
       14 MULK                             R16 R12 K1 [4]
       15 SUBRK                            R15 R0 K16 [NULL]
       16 MULK                             R16 R13 K2 [2]
       17 SUB                              R14 R15 R16
       18 MUL                              R16 R14 R14
       19 MULK                             R21 R12 K3 [3]
       20 MULK                             R22 R13 K3 [3]
       21 ADD                              R20 R21 R22
       22 SUBK                             R19 R20 K0 [6]
       23 MULK                             R18 R19 K1 [4]
       24 MUL                              R17 R18 R12
       25 SUB                              R15 R16 R17
       26 NEWCLOSURE                       R16 P0
       27 CAPTURE                          VAL R12
       28 CAPTURE                          VAL R13
       29 LOADN                            R17 0
       30 JUMPIFNOTLE                      R17 R15 ; [+66]
       32 FASTCALL1                        MATH_SQRT R15 ; [+3]
       33 MOVE                             R18 R15
       34 GETIMPORT                        R17 K6 [math.sqrt]
       36 CALL                             R17 1 1
       37 MULK                             R22 R12 K1 [4]
       38 MULK                             R23 R13 K2 [2]
       39 ADD                              R21 R22 R23
       40 SUBK                             R20 R21 K0 [6]
       41 ADD                              R19 R20 R17
       42 MULK                             R22 R12 K0 [6]
       43 MULK                             R23 R13 K0 [6]
       44 ADD                              R21 R22 R23
       45 SUBK                             R20 R21 K7 [12]
       46 DIV                              R18 R19 R20
       47 LOADN                            R19 0
       48 JUMPIFNOTLT                      R19 R18 ; [+18]
       50 LOADN                            R19 1
       51 JUMPIFNOTLT                      R18 R19 ; [+15]
       53 MULK                             R26 R18 K2 [2]
       54 SUBRK                            R25 R3 K26 [NULL]
       55 SUBK                             R27 R18 K2 [2]
       56 MUL                              R26 R27 R12
       57 ADD                              R24 R25 R26
       58 SUBK                             R26 R18 K8 [1]
       59 MUL                              R25 R26 R13
       60 ADD                              R23 R24 R25
       61 MUL                              R22 R18 R23
       62 ADD                              R21 R22 R12
       63 MUL                              R20 R18 R21
       64 SUB                              R21 R9 R7
       65 MUL                              R19 R20 R21
       66 ADD                              R10 R7 R19
       67 MULK                             R23 R12 K1 [4]
       68 MULK                             R24 R13 K2 [2]
       69 ADD                              R22 R23 R24
       70 SUBK                             R21 R22 K0 [6]
       71 SUB                              R20 R21 R17
       72 MULK                             R23 R12 K0 [6]
       73 MULK                             R24 R13 K0 [6]
       74 ADD                              R22 R23 R24
       75 SUBK                             R21 R22 K7 [12]
       76 DIV                              R19 R20 R21
       77 LOADN                            R20 0
       78 JUMPIFNOTLT                      R20 R19 ; [+18]
       80 LOADN                            R20 1
       81 JUMPIFNOTLT                      R19 R20 ; [+15]
       83 MULK                             R27 R19 K2 [2]
       84 SUBRK                            R26 R3 K27 [NULL]
       85 SUBK                             R28 R19 K2 [2]
       86 MUL                              R27 R28 R12
       87 ADD                              R25 R26 R27
       88 SUBK                             R27 R19 K8 [1]
       89 MUL                              R26 R27 R13
       90 ADD                              R24 R25 R26
       91 MUL                              R23 R19 R24
       92 ADD                              R22 R23 R12
       93 MUL                              R21 R19 R22
       94 SUB                              R22 R9 R7
       95 MUL                              R20 R21 R22
       96 ADD                              R11 R7 R20
       97 MOVE                             R18 R7
       98 MOVE                             R19 R10
       99 MOVE                             R20 R11
      100 MOVE                             R21 R9
      101 FASTCALL                         MATH_MIN ; [+2]
      102 GETIMPORT                        R17 K10 [math.min]
      104 CALL                             R17 4 1
      105 MOVE                             R19 R7
      106 MOVE                             R20 R10
      107 MOVE                             R21 R11
      108 MOVE                             R22 R9
      109 FASTCALL                         MATH_MAX ; [+2]
      110 GETIMPORT                        R18 K12 [math.max]
      112 CALL                             R18 4 1
      113 RETURN                           R17 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["KeyframeUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Templates"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 8 0
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 SETTABLEKS                       R6 R5 K14 ["makeCubic"]
       46 DUPCLOSURE                       R6 K15 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R5 K16 ["makeBounce"]
       51 DUPCLOSURE                       R6 K17 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K18 ["makeElastic"]
       56 DUPCLOSURE                       R6 K19 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R6 R5 K20 ["generateCurve"]
       64 DUPCLOSURE                       R6 K21 [PROTO_5]
       65 SETTABLEKS                       R6 R5 K22 ["getYExtents"]
       67 RETURN                           R5 1
