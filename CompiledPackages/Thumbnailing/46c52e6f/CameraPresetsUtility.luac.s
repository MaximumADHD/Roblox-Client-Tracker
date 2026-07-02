PROTO_0:
        0 LOADK                            R3 K0 ["Torso"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["UpperTorso"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["RigType"]
        4 GETIMPORT                        R4 K4 [Enum.HumanoidRigType.R6]
        6 JUMPIFNOTEQ                      R3 R4 ; [+26]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["CharacterPartNames"]
       11 GETTABLEKS                       R3 R3 K3 ["R6"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 JUMPIFEQKS                       R6 K6 ["CharacterMesh"] ; [+13]
       18 JUMPIFEQKS                       R6 K7 ["HumanoidRootPart"] ; [+11]
       20 MOVE                             R12 R6
       21 NAMECALL                         R10 R0 K8 ["FindFirstChild"]
       23 CALL                             R10 2 1
       24 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       26 MOVE                             R9 R2
       27 GETIMPORT                        R8 K11 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-15]
       32 RETURN                           R2 1
       33 GETTABLEKS                       R3 R1 K0 ["RigType"]
       35 GETIMPORT                        R4 K13 [Enum.HumanoidRigType.R15]
       37 JUMPIFNOTEQ                      R3 R4 ; [+23]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K5 ["CharacterPartNames"]
       42 GETTABLEKS                       R3 R3 K12 ["R15"]
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 JUMPIFEQKS                       R6 K7 ["HumanoidRootPart"] ; [+11]
       49 MOVE                             R12 R6
       50 NAMECALL                         R10 R0 K8 ["FindFirstChild"]
       52 CALL                             R10 2 1
       53 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       55 MOVE                             R9 R2
       56 GETIMPORT                        R8 K11 [table.insert]
       58 CALL                             R8 2 0
       59 FORGLOOP                         R3 2 ; [-13]
       61 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R3 K0 ["Torso"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["UpperTorso"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K3 ["CFrame"]
       11 RETURN                           R1 1

PROTO_3:
        0 ORK                              R5 R3 K0 [56]
        1 MOVE                             R6 R4
        2 JUMPIF                           R6 ; [+5]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K1 ["GetCharacterTorsoCFrame"]
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 GETTABLEKS                       R7 R6 K2 ["LookVector"]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R9 R1
       12 GETIMPORT                        R8 K4 [type]
       14 CALL                             R8 1 1
       15 JUMPIFNOTEQKS                    R8 K5 ["function"] ; [+3]
       17 MOVE                             R8 R1
       18 CALL                             R8 0 0
       19 LOADK                            R10 K6 ["Humanoid"]
       20 NAMECALL                         R8 R0 K7 ["FindFirstChildOfClass"]
       22 CALL                             R8 2 1
       23 JUMPIF                           R8 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R9 1
       26 MOVE                             R10 R0
       27 MOVE                             R11 R8
       28 CALL                             R9 2 1
       29 LOADK                            R12 K8 ["Torso"]
       30 NAMECALL                         R10 R0 K9 ["FindFirstChild"]
       32 CALL                             R10 2 1
       33 JUMPIF                           R10 ; [+4]
       34 LOADK                            R12 K10 ["UpperTorso"]
       35 NAMECALL                         R10 R0 K9 ["FindFirstChild"]
       37 CALL                             R10 2 1
       38 GETTABLEKS                       R10 R10 K11 ["CFrame"]
       40 GETTABLEKS                       R11 R10 K12 ["UpVector"]
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 GETUPVAL                         R15 2
       46 JUMPIFNOT                        R15 ; [+12]
       47 LOADK                            R17 K13 ["Head"]
       48 NAMECALL                         R15 R0 K9 ["FindFirstChild"]
       50 CALL                             R15 2 1
       51 GETTABLEKS                       R15 R15 K11 ["CFrame"]
       53 NAMECALL                         R15 R15 K14 ["ToEulerAnglesXYZ"]
       55 CALL                             R15 1 3
       56 MOVE                             R12 R15
       57 MOVE                             R13 R16
       58 MOVE                             R14 R17
       59 JUMPIFNOT                        R2 ; [+17]
       60 GETIMPORT                        R18 K16 [CFrame.Angles]
       62 LOADN                            R19 0
       63 GETUPVAL                         R22 0
       64 GETTABLEKS                       R22 R22 K18 ["AVATAR_ROTATION_DEGREE"]
       66 MULK                             R21 R22 K17 [-1]
       67 FASTCALL1                        MATH_RAD R21 ; [+2]
       68 GETIMPORT                        R20 K21 [math.rad]
       70 CALL                             R20 1 1
       71 LOADN                            R21 0
       72 CALL                             R18 3 1
       73 MUL                              R17 R6 R18
       74 NAMECALL                         R15 R0 K22 ["PivotTo"]
       76 CALL                             R15 2 0
       77 GETUPVAL                         R15 3
       78 GETTABLEKS                       R15 R15 K23 ["CalculateBodyPartsExtents"]
       80 MOVE                             R16 R10
       81 MOVE                             R17 R9
       82 CALL                             R15 2 2
       83 DIVK                             R19 R5 K24 [2]
       84 FASTCALL1                        MATH_RAD R19 ; [+2]
       85 GETIMPORT                        R18 K21 [math.rad]
       87 CALL                             R18 1 1
       88 FASTCALL1                        MATH_TAN R18 ; [+2]
       89 GETIMPORT                        R17 K26 [math.tan]
       91 CALL                             R17 1 1
       92 MOVE                             R20 R16
       93 GETUPVAL                         R21 0
       94 GETTABLEKS                       R21 R21 K27 ["GOLDEN_RATIO"]
       96 NAMECALL                         R18 R15 K28 ["Lerp"]
       98 CALL                             R18 3 1
       99 MOVE                             R21 R16
      100 LOADK                            R22 K29 [0.5]
      101 NAMECALL                         R19 R15 K28 ["Lerp"]
      103 CALL                             R19 3 1
      104 GETTABLEKS                       R21 R19 K30 ["X"]
      106 GETTABLEKS                       R22 R18 K31 ["Y"]
      108 GETTABLEKS                       R23 R19 K32 ["Z"]
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R20 K35 [Vector3.new]
      113 CALL                             R20 3 1
      114 MOVE                             R23 R20
      115 NAMECALL                         R21 R10 K36 ["PointToWorldSpace"]
      117 CALL                             R21 2 1
      118 GETTABLEKS                       R24 R10 K37 ["Position"]
      120 SUB                              R23 R10 R24
      121 ADD                              R22 R23 R21
      122 GETUPVAL                         R23 2
      123 JUMPIFNOT                        R23 ; [+11]
      124 JUMPIF                           R2 ; [+10]
      125 GETIMPORT                        R23 K39 [CFrame.fromEulerAnglesXYZ]
      127 MOVE                             R24 R12
      128 MOVE                             R25 R13
      129 MOVE                             R26 R14
      130 CALL                             R23 3 1
      131 GETTABLEKS                       R25 R23 K37 ["Position"]
      133 SUB                              R24 R23 R25
      134 ADD                              R22 R24 R21
      135 GETTABLEKS                       R25 R20 K30 ["X"]
      137 GETTABLEKS                       R26 R15 K30 ["X"]
      139 SUB                              R24 R25 R26
      140 GETTABLEKS                       R26 R20 K31 ["Y"]
      142 GETTABLEKS                       R27 R15 K31 ["Y"]
      144 SUB                              R25 R26 R27
      145 FASTCALL2                        MATH_MAX R24 R25 ; [+3]
      147 GETIMPORT                        R23 K41 [math.max]
      149 CALL                             R23 2 1
      150 GETTABLEKS                       R26 R16 K30 ["X"]
      152 GETTABLEKS                       R27 R20 K30 ["X"]
      154 SUB                              R25 R26 R27
      155 GETTABLEKS                       R27 R16 K31 ["Y"]
      157 GETTABLEKS                       R28 R20 K31 ["Y"]
      159 SUB                              R26 R27 R28
      160 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      162 GETIMPORT                        R24 K41 [math.max]
      164 CALL                             R24 2 1
      165 GETUPVAL                         R27 4
      166 GETTABLEKS                       R27 R27 K42 ["DefaultBodyMarginScale"]
      168 MUL                              R26 R23 R27
      169 DIV                              R25 R26 R17
      170 GETUPVAL                         R28 4
      171 GETTABLEKS                       R28 R28 K42 ["DefaultBodyMarginScale"]
      173 MUL                              R27 R24 R28
      174 DIV                              R26 R27 R17
      175 MOVE                             R27 R25
      176 GETTABLEKS                       R29 R11 K31 ["Y"]
      178 GETUPVAL                         R30 0
      179 GETTABLEKS                       R30 R30 K43 ["UPVECTOR_ORENTATION_TRESHOLD"]
      181 JUMPIFLT                         R29 R30 ; [+2]
      183 LOADB                            R28 0 +1
      184 LOADB                            R28 1
      185 GETTABLEKS                       R30 R11 K30 ["X"]
      187 GETUPVAL                         R31 0
      188 GETTABLEKS                       R31 R31 K43 ["UPVECTOR_ORENTATION_TRESHOLD"]
      190 JUMPIFLT                         R30 R31 ; [+2]
      192 LOADB                            R29 0 +1
      193 LOADB                            R29 1
      194 JUMPIF                           R28 ; [+1]
      195 JUMPIFNOT                        R29 ; [+8]
      196 FASTCALL2                        MATH_MAX R25 R26 ; [+5]
      198 MOVE                             R31 R25
      199 MOVE                             R32 R26
      200 GETIMPORT                        R30 K41 [math.max]
      202 CALL                             R30 2 1
      203 MOVE                             R27 R30
      204 GETUPVAL                         R31 4
      205 GETTABLEKS                       R31 R31 K44 ["DistanceScaleForFullBody"]
      207 MUL                              R30 R27 R31
      208 MUL                              R31 R30 R7
      209 GETUPVAL                         R32 4
      210 GETTABLEKS                       R32 R32 K45 ["GetCameraCFrame"]
      212 MOVE                             R33 R22
      213 MOVE                             R34 R31
      214 CALL                             R32 2 -1
      215 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["CameraUtility"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["CharacterUtility"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["MannequinUtility"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K9 [game]
       30 LOADK                            R5 K10 ["UseFaceFrontRotationForEmote"]
       31 LOADB                            R6 0
       32 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       34 CALL                             R3 3 1
       35 NEWTABLE                         R4 8 0
       37 GETIMPORT                        R6 K9 [game]
       39 LOADK                            R8 K13 ["AvatarGoldenRatio"]
       40 LOADN                            R9 618
       41 NAMECALL                         R6 R6 K14 ["DefineFastInt"]
       43 CALL                             R6 3 1
       44 DIVK                             R5 R6 K12 [1000]
       45 SETTABLEKS                       R5 R4 K15 ["GOLDEN_RATIO"]
       47 GETIMPORT                        R6 K9 [game]
       49 LOADK                            R8 K17 ["UpVectorOrentationThreshold1"]
       50 LOADN                            R9 -60
       51 NAMECALL                         R6 R6 K14 ["DefineFastInt"]
       53 CALL                             R6 3 1
       54 DIVK                             R5 R6 K16 [100]
       55 SETTABLEKS                       R5 R4 K18 ["UPVECTOR_ORENTATION_TRESHOLD"]
       57 GETIMPORT                        R5 K9 [game]
       59 LOADK                            R7 K19 ["LookAvatarRotationDegree1"]
       60 LOADN                            R8 23
       61 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K20 ["AVATAR_ROTATION_DEGREE"]
       66 DUPCLOSURE                       R5 K21 [PROTO_0]
       67 DUPCLOSURE                       R6 K22 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R7 K23 [PROTO_2]
       70 SETTABLEKS                       R7 R4 K24 ["GetCharacterTorsoCFrame"]
       72 DUPCLOSURE                       R7 K25 [PROTO_3]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R7 R4 K26 ["GetCameraCFrame_ForAvatarR15Action_LookAtGoldenRatioOfTheHumanoid"]
       80 RETURN                           R4 1
