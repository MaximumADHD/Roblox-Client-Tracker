PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADNIL                          R9
        8 NAMECALL                         R6 R0 K1 ["SetJoint"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["Animator"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R1 3 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 LOADN                            R4 0
        7 NAMECALL                         R2 R1 K2 ["StepAnimations"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K1 ["isValidTJoint"]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 JUMPIFNOT                        R6 ; [+4]
       10 GETIMPORT                        R6 K4 [CFrame.identity]
       12 SETTABLEKS                       R6 R5 K5 ["Transform"]
       14 FORGLOOP                         R1 2 ; [-11]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [CFrame.fromOrientation]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [{-1, -0, -0}]
        7 MUL                              R2 R3 R4
        8 GETIMPORT                        R4 K2 [CFrame.fromOrientation]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 LOADK                            R7 K4 [-0]
       13 CALL                             R4 3 1
       14 LOADK                            R5 K5 [{1, 0, 0}]
       15 MUL                              R3 R4 R5
       16 NEWTABLE                         R4 8 0
       18 GETIMPORT                        R5 K9 [Enum.RigLabel.LeftShoulder]
       20 SETTABLE                         R2 R4 R5
       21 GETIMPORT                        R5 K11 [Enum.RigLabel.LeftElbow]
       23 SETTABLE                         R2 R4 R5
       24 GETIMPORT                        R5 K13 [Enum.RigLabel.RightShoulder]
       26 SETTABLE                         R3 R4 R5
       27 GETIMPORT                        R5 K15 [Enum.RigLabel.RightElbow]
       29 SETTABLE                         R3 R4 R5
       30 GETIMPORT                        R5 K17 [Enum.RigLabel.LeftHip]
       32 LOADK                            R6 K18 [{-0, -1, -0}]
       33 SETTABLE                         R6 R4 R5
       34 GETIMPORT                        R5 K20 [Enum.RigLabel.LeftKnee]
       36 LOADK                            R6 K18 [{-0, -1, -0}]
       37 SETTABLE                         R6 R4 R5
       38 GETIMPORT                        R5 K22 [Enum.RigLabel.RightHip]
       40 LOADK                            R6 K18 [{-0, -1, -0}]
       41 SETTABLE                         R6 R4 R5
       42 GETIMPORT                        R5 K24 [Enum.RigLabel.RightKnee]
       44 LOADK                            R6 K18 [{-0, -1, -0}]
       45 SETTABLE                         R6 R4 R5
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K25 ["getCharacterRotation"]
       49 MOVE                             R6 R1
       50 CALL                             R5 1 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K26 ["clearTransforms"]
       54 MOVE                             R7 R1
       55 CALL                             R6 1 0
       56 GETIMPORT                        R6 K28 [pcall]
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          VAL R1
       61 CALL                             R6 1 0
       62 LOADB                            R6 0
       63 GETIMPORT                        R9 K9 [Enum.RigLabel.LeftShoulder]
       65 NAMECALL                         R7 R0 K29 ["GetJoint"]
       67 CALL                             R7 2 1
       68 JUMPIF                           R7 ; [+5]
       69 GETIMPORT                        R9 K13 [Enum.RigLabel.RightShoulder]
       71 NAMECALL                         R7 R0 K29 ["GetJoint"]
       73 CALL                             R7 2 1
       74 MOVE                             R8 R7
       75 JUMPIFNOT                        R8 ; [+4]
       76 LOADK                            R10 K30 ["AnimationConstraint"]
       77 NAMECALL                         R8 R7 K31 ["IsA"]
       79 CALL                             R8 2 1
       80 MOVE                             R6 R8
       81 JUMPIFNOT                        R6 ; [+92]
       82 NEWTABLE                         R8 0 0
       84 GETUPVAL                         R9 2
       85 LOADNIL                          R10
       86 LOADNIL                          R11
       87 FORGPREP                         R9
       88 GETUPVAL                         R15 3
       89 GETTABLE                         R14 R15 R13
       90 JUMPIFNOT                        R14 ; [+38]
       91 MOVE                             R17 R13
       92 NAMECALL                         R15 R0 K29 ["GetJoint"]
       94 CALL                             R15 2 1
       95 MOVE                             R18 R14
       96 NAMECALL                         R16 R0 K29 ["GetJoint"]
       98 CALL                             R16 2 1
       99 JUMPIFNOT                        R15 ; [+29]
      100 JUMPIFNOT                        R16 ; [+28]
      101 GETUPVAL                         R17 0
      102 GETTABLEKS                       R17 R17 K32 ["getJointPosition"]
      104 MOVE                             R18 R15
      105 CALL                             R17 1 1
      106 GETUPVAL                         R18 0
      107 GETTABLEKS                       R18 R18 K32 ["getJointPosition"]
      109 MOVE                             R19 R16
      110 CALL                             R18 1 1
      111 NAMECALL                         R20 R5 K33 ["Inverse"]
      113 CALL                             R20 1 1
      114 SUB                              R21 R18 R17
      115 MUL                              R19 R20 R21
      116 GETTABLEKS                       R20 R19 K34 ["Magnitude"]
      118 LOADK                            R21 K35 [1E-06]
      119 JUMPIFNOTLT                      R21 R20 ; [+9]
      121 DUPTABLE                         R20 K38 [{"bindDir", "joint"}]
      122 GETTABLEKS                       R21 R19 K39 ["Unit"]
      124 SETTABLEKS                       R21 R20 K36 ["bindDir"]
      126 SETTABLEKS                       R15 R20 K37 ["joint"]
      128 SETTABLE                         R20 R8 R13
      129 FORGLOOP                         R9 2 ; [-42]
      131 NEWTABLE                         R9 0 0
      133 GETUPVAL                         R10 2
      134 LOADNIL                          R11
      135 LOADNIL                          R12
      136 FORGPREP                         R10
      137 GETTABLE                         R15 R4 R14
      138 JUMPIFNOT                        R15 ; [+32]
      139 GETTABLE                         R16 R8 R14
      140 JUMPIFNOT                        R16 ; [+30]
      141 GETTABLEKS                       R17 R16 K37 ["joint"]
      143 GETTABLEKS                       R18 R16 K36 ["bindDir"]
      145 LOADNIL                          R19
      146 GETUPVAL                         R20 3
      147 LOADNIL                          R21
      148 LOADNIL                          R22
      149 FORGPREP                         R20
      150 JUMPIFNOTEQ                      R24 R14 ; [+3]
      152 MOVE                             R19 R23
      153 JUMP                             ; [+2]
      154 FORGLOOP                         R20 2 ; [-5]
      156 JUMPIFNOT                        R19 ; [+2]
      157 GETTABLE                         R20 R9 R19
      158 JUMPIF                           R20 ; [+2]
      159 GETIMPORT                        R20 K41 [CFrame.identity]
      161 MUL                              R21 R20 R18
      162 GETIMPORT                        R22 K43 [CFrame.fromRotationBetweenVectors]
      164 MOVE                             R23 R21
      165 MOVE                             R24 R15
      166 CALL                             R22 2 1
      167 MUL                              R23 R22 R20
      168 SETTABLE                         R23 R9 R14
      169 SETTABLEKS                       R22 R17 K44 ["Transform"]
      171 FORGLOOP                         R10 2 ; [-35]
      173 RETURN                           R0 0
      174 GETUPVAL                         R8 0
      175 GETTABLEKS                       R8 R8 K45 ["bodyRigLabels"]
      177 LOADNIL                          R9
      178 LOADNIL                          R10
      179 FORGPREP                         R8
      180 GETUPVAL                         R14 3
      181 GETTABLE                         R13 R14 R12
      182 MOVE                             R14 R4
      183 JUMPIFNOT                        R14 ; [+1]
      184 GETTABLE                         R14 R4 R12
      185 JUMPIFNOT                        R13 ; [+58]
      186 JUMPIFNOT                        R14 ; [+57]
      187 MUL                              R15 R5 R14
      188 MOVE                             R20 R12
      189 NAMECALL                         R18 R0 K29 ["GetJoint"]
      191 CALL                             R18 2 1
      192 MOVE                             R16 R18
      193 MOVE                             R19 R13
      194 NAMECALL                         R17 R0 K29 ["GetJoint"]
      196 CALL                             R17 2 1
      197 JUMPIFNOT                        R16 ; [+46]
      198 JUMPIFNOT                        R17 ; [+45]
      199 GETUPVAL                         R18 0
      200 GETTABLEKS                       R18 R18 K32 ["getJointPosition"]
      202 MOVE                             R19 R16
      203 CALL                             R18 1 1
      204 GETUPVAL                         R19 0
      205 GETTABLEKS                       R19 R19 K32 ["getJointPosition"]
      207 MOVE                             R20 R17
      208 CALL                             R19 1 1
      209 SUB                              R20 R19 R18
      210 GETTABLEKS                       R21 R20 K34 ["Magnitude"]
      212 LOADK                            R22 K35 [1E-06]
      213 JUMPIFLT                         R21 R22 ; [+30]
      215 GETTABLEKS                       R21 R15 K34 ["Magnitude"]
      217 LOADK                            R22 K35 [1E-06]
      218 JUMPIFLT                         R21 R22 ; [+25]
      220 GETUPVAL                         R21 0
      221 GETTABLEKS                       R21 R21 K46 ["getGlobalCoordinateFrame"]
      223 MOVE                             R22 R16
      224 CALL                             R21 1 1
      225 GETIMPORT                        R23 K43 [CFrame.fromRotationBetweenVectors]
      227 MOVE                             R24 R20
      228 MOVE                             R25 R15
      229 CALL                             R23 2 1
      230 GETTABLEKS                       R24 R21 K47 ["Rotation"]
      232 MUL                              R22 R23 R24
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K48 ["setGlobalCoordinateFrame"]
      236 MOVE                             R24 R16
      237 GETIMPORT                        R26 K50 [CFrame.new]
      239 GETTABLEKS                       R27 R21 K51 ["Position"]
      241 CALL                             R26 1 1
      242 MUL                              R25 R26 R22
      243 CALL                             R23 2 0
      244 FORGLOOP                         R8 2 ; [-65]
      246 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 FASTCALL1                        MATH_RAD R4 ; [+2]
        5 GETIMPORT                        R3 K2 [math.rad]
        7 CALL                             R3 1 1
        8 FASTCALL1                        MATH_COS R3 ; [+3]
        9 MOVE                             R7 R3
       10 GETIMPORT                        R6 K4 [math.cos]
       12 CALL                             R6 1 1
       13 MUL                              R5 R6 R0
       14 FASTCALL1                        MATH_SIN R3 ; [+3]
       15 MOVE                             R8 R3
       16 GETIMPORT                        R7 K6 [math.sin]
       18 CALL                             R7 1 1
       19 MUL                              R6 R7 R1
       20 ADD                              R4 R5 R6
       21 GETTABLEKS                       R4 R4 K7 ["Unit"]
       23 GETIMPORT                        R5 K11 [Enum.RigLabel.Thumb1]
       25 SETTABLE                         R4 R2 R5
       26 GETIMPORT                        R5 K13 [Enum.RigLabel.Thumb2]
       28 SETTABLE                         R4 R2 R5
       29 GETIMPORT                        R5 K15 [Enum.RigLabel.Index1]
       31 SETTABLE                         R0 R2 R5
       32 GETIMPORT                        R5 K17 [Enum.RigLabel.Index2]
       34 SETTABLE                         R0 R2 R5
       35 GETIMPORT                        R5 K19 [Enum.RigLabel.Middle1]
       37 SETTABLE                         R0 R2 R5
       38 GETIMPORT                        R5 K21 [Enum.RigLabel.Middle2]
       40 SETTABLE                         R0 R2 R5
       41 GETIMPORT                        R5 K23 [Enum.RigLabel.Ring1]
       43 SETTABLE                         R0 R2 R5
       44 GETIMPORT                        R5 K25 [Enum.RigLabel.Ring2]
       46 SETTABLE                         R0 R2 R5
       47 GETIMPORT                        R5 K27 [Enum.RigLabel.Pinky1]
       49 SETTABLE                         R0 R2 R5
       50 GETIMPORT                        R5 K29 [Enum.RigLabel.Pinky2]
       52 SETTABLE                         R0 R2 R5
       53 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["Side"]
        2 GETIMPORT                        R6 K4 [Enum.DigitsRigDescriptionSide.Left]
        4 JUMPIFNOTEQ                      R5 R6 ; [+4]
        6 GETIMPORT                        R4 K7 [Enum.RigLabel.LeftWrist]
        8 JUMP                             ; [+2]
        9 GETIMPORT                        R4 K9 [Enum.RigLabel.RightWrist]
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R1 K10 ["GetJoint"]
       14 CALL                             R5 2 1
       15 GETIMPORT                        R8 K12 [Enum.RigLabel.Thumb1]
       17 NAMECALL                         R6 R0 K10 ["GetJoint"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R5 ; [+1]
       21 JUMPIF                           R6 ; [+3]
       22 GETIMPORT                        R7 K15 [CFrame.identity]
       24 RETURN                           R7 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K16 ["getJointPosition"]
       28 MOVE                             R8 R5
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K16 ["getJointPosition"]
       33 MOVE                             R9 R6
       34 CALL                             R8 1 1
       35 NEWTABLE                         R9 0 4
       37 GETIMPORT                        R10 K18 [Enum.RigLabel.Index1]
       39 GETIMPORT                        R11 K20 [Enum.RigLabel.Middle1]
       41 GETIMPORT                        R12 K22 [Enum.RigLabel.Ring1]
       43 GETIMPORT                        R13 K24 [Enum.RigLabel.Pinky1]
       45 SETLIST                          R9 R10 4 [1]
       47 LOADK                            R10 K25 [{0, 0, 0}]
       48 LOADN                            R11 0
       49 MOVE                             R12 R9
       50 LOADNIL                          R13
       51 LOADNIL                          R14
       52 FORGPREP                         R12
       53 MOVE                             R19 R16
       54 NAMECALL                         R17 R0 K10 ["GetJoint"]
       56 CALL                             R17 2 1
       57 JUMPIFNOT                        R17 ; [+15]
       58 GETUPVAL                         R19 0
       59 GETTABLEKS                       R19 R19 K16 ["getJointPosition"]
       61 MOVE                             R20 R17
       62 CALL                             R19 1 1
       63 SUB                              R18 R19 R7
       64 GETTABLEKS                       R19 R18 K26 ["Magnitude"]
       66 LOADK                            R20 K27 [1E-06]
       67 JUMPIFNOTLT                      R20 R19 ; [+5]
       69 GETTABLEKS                       R19 R18 K28 ["Unit"]
       71 ADD                              R10 R10 R19
       72 ADDK                             R11 R11 K29 [1]
       73 FORGLOOP                         R12 2 ; [-21]
       75 GETIMPORT                        R12 K15 [CFrame.identity]
       77 LOADN                            R13 0
       78 JUMPIFNOTLT                      R13 R11 ; [+13]
       80 GETTABLEKS                       R13 R10 K26 ["Magnitude"]
       82 LOADK                            R14 K27 [1E-06]
       83 JUMPIFNOTLT                      R14 R13 ; [+8]
       85 GETIMPORT                        R13 K31 [CFrame.fromRotationBetweenVectors]
       87 GETTABLEKS                       R14 R10 K28 ["Unit"]
       89 MOVE                             R15 R2
       90 CALL                             R13 2 1
       91 MOVE                             R12 R13
       92 GETIMPORT                        R15 K18 [Enum.RigLabel.Index1]
       94 NAMECALL                         R13 R0 K10 ["GetJoint"]
       96 CALL                             R13 2 1
       97 GETIMPORT                        R16 K24 [Enum.RigLabel.Pinky1]
       99 NAMECALL                         R14 R0 K10 ["GetJoint"]
      101 CALL                             R14 2 1
      102 LOADNIL                          R15
      103 JUMPIFNOT                        R13 ; [+13]
      104 JUMPIFNOT                        R14 ; [+12]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K16 ["getJointPosition"]
      108 MOVE                             R17 R13
      109 CALL                             R16 1 1
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R17 R17 K16 ["getJointPosition"]
      113 MOVE                             R18 R14
      114 CALL                             R17 1 1
      115 SUB                              R15 R16 R17
      116 JUMP                             ; [+1]
      117 SUB                              R15 R8 R7
      118 GETIMPORT                        R16 K15 [CFrame.identity]
      120 JUMPIFNOT                        R15 ; [+52]
      121 GETTABLEKS                       R17 R15 K26 ["Magnitude"]
      123 LOADK                            R18 K27 [1E-06]
      124 JUMPIFNOTLT                      R18 R17 ; [+48]
      126 MUL                              R17 R12 R15
      127 MOVE                             R22 R2
      128 NAMECALL                         R20 R17 K32 ["Dot"]
      130 CALL                             R20 2 1
      131 MUL                              R19 R20 R2
      132 SUB                              R18 R17 R19
      133 GETTABLEKS                       R19 R18 K26 ["Magnitude"]
      135 LOADK                            R20 K27 [1E-06]
      136 JUMPIFNOTLT                      R20 R19 ; [+36]
      138 GETTABLEKS                       R19 R18 K28 ["Unit"]
      140 MOVE                             R22 R3
      141 NAMECALL                         R20 R19 K32 ["Dot"]
      143 CALL                             R20 2 1
      144 MOVE                             R23 R3
      145 NAMECALL                         R21 R19 K33 ["Cross"]
      147 CALL                             R21 2 1
      148 MOVE                             R23 R2
      149 NAMECALL                         R21 R21 K32 ["Dot"]
      151 CALL                             R21 2 1
      152 FASTCALL2                        MATH_ATAN2 R21 R20 ; [+5]
      154 MOVE                             R23 R21
      155 MOVE                             R24 R20
      156 GETIMPORT                        R22 K36 [math.atan2]
      158 CALL                             R22 2 1
      159 FASTCALL1                        MATH_ABS R22 ; [+3]
      160 MOVE                             R24 R22
      161 GETIMPORT                        R23 K38 [math.abs]
      163 CALL                             R23 1 1
      164 LOADK                            R24 K27 [1E-06]
      165 JUMPIFNOTLT                      R24 R23 ; [+7]
      167 GETIMPORT                        R23 K40 [CFrame.fromAxisAngle]
      169 MOVE                             R24 R2
      170 MOVE                             R25 R22
      171 CALL                             R23 2 1
      172 MOVE                             R16 R23
      173 MUL                              R17 R16 R12
      174 GETIMPORT                        R18 K15 [CFrame.identity]
      176 JUMPIFNOTEQ                      R17 R18 ; [+4]
      178 GETIMPORT                        R18 K15 [CFrame.identity]
      180 RETURN                           R18 1
      181 GETUPVAL                         R18 0
      182 GETTABLEKS                       R18 R18 K41 ["getGlobalCoordinateFrame"]
      184 MOVE                             R19 R5
      185 CALL                             R18 1 1
      186 GETIMPORT                        R21 K43 [CFrame.new]
      188 GETTABLEKS                       R22 R18 K44 ["Position"]
      190 CALL                             R21 1 1
      191 MUL                              R20 R21 R17
      192 GETTABLEKS                       R21 R18 K45 ["Rotation"]
      194 MUL                              R19 R20 R21
      195 GETUPVAL                         R20 0
      196 GETTABLEKS                       R20 R20 K46 ["setGlobalCoordinateFrame"]
      198 MOVE                             R21 R5
      199 MOVE                             R22 R19
      200 CALL                             R20 2 0
      201 RETURN                           R17 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Side"]
        2 GETIMPORT                        R4 K4 [Enum.DigitsRigDescriptionSide.Left]
        4 JUMPIFEQ                         R3 R4 ; [+6]
        6 GETIMPORT                        R4 K6 [Enum.DigitsRigDescriptionSide.Right]
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["getCharacterRotation"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 GETIMPORT                        R7 K4 [Enum.DigitsRigDescriptionSide.Left]
       18 JUMPIFNOTEQ                      R3 R7 ; [+3]
       20 LOADK                            R6 K8 [{-1, -0, -0}]
       21 JUMP                             ; [+1]
       22 LOADK                            R6 K9 [{1, 0, 0}]
       23 MUL                              R5 R4 R6
       24 LOADK                            R7 K10 [{-0, -0, -1}]
       25 MUL                              R6 R4 R7
       26 GETUPVAL                         R7 1
       27 MOVE                             R8 R5
       28 MOVE                             R9 R6
       29 CALL                             R7 2 1
       30 GETIMPORT                        R8 K12 [pcall]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R2
       35 CALL                             R8 1 0
       36 GETUPVAL                         R8 3
       37 MOVE                             R9 R0
       38 MOVE                             R10 R1
       39 MOVE                             R11 R5
       40 MOVE                             R12 R6
       41 CALL                             R8 4 1
       42 GETIMPORT                        R9 K12 [pcall]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CALL                             R9 1 0
       48 LOADB                            R9 0
       49 GETIMPORT                        R12 K15 [Enum.RigLabel.Thumb1]
       51 NAMECALL                         R10 R0 K16 ["GetJoint"]
       53 CALL                             R10 2 1
       54 JUMPIF                           R10 ; [+11]
       55 GETIMPORT                        R12 K18 [Enum.RigLabel.Index1]
       57 NAMECALL                         R10 R0 K16 ["GetJoint"]
       59 CALL                             R10 2 1
       60 JUMPIF                           R10 ; [+5]
       61 GETIMPORT                        R12 K20 [Enum.RigLabel.Middle1]
       63 NAMECALL                         R10 R0 K16 ["GetJoint"]
       65 CALL                             R10 2 1
       66 MOVE                             R11 R10
       67 JUMPIFNOT                        R11 ; [+4]
       68 LOADK                            R13 K21 ["AnimationConstraint"]
       69 NAMECALL                         R11 R10 K22 ["IsA"]
       71 CALL                             R11 2 1
       72 MOVE                             R9 R11
       73 JUMPIFNOT                        R9 ; [+101]
       74 NEWTABLE                         R11 0 0
       76 GETUPVAL                         R12 4
       77 LOADNIL                          R13
       78 LOADNIL                          R14
       79 FORGPREP                         R12
       80 GETUPVAL                         R18 5
       81 GETTABLE                         R17 R18 R16
       82 JUMPIFNOT                        R17 ; [+38]
       83 MOVE                             R20 R16
       84 NAMECALL                         R18 R0 K16 ["GetJoint"]
       86 CALL                             R18 2 1
       87 MOVE                             R21 R17
       88 NAMECALL                         R19 R0 K16 ["GetJoint"]
       90 CALL                             R19 2 1
       91 JUMPIFNOT                        R18 ; [+29]
       92 JUMPIFNOT                        R19 ; [+28]
       93 GETUPVAL                         R20 0
       94 GETTABLEKS                       R20 R20 K23 ["getJointPosition"]
       96 MOVE                             R21 R18
       97 CALL                             R20 1 1
       98 GETUPVAL                         R21 0
       99 GETTABLEKS                       R21 R21 K23 ["getJointPosition"]
      101 MOVE                             R22 R19
      102 CALL                             R21 1 1
      103 NAMECALL                         R23 R4 K24 ["Inverse"]
      105 CALL                             R23 1 1
      106 SUB                              R24 R21 R20
      107 MUL                              R22 R23 R24
      108 GETTABLEKS                       R23 R22 K25 ["Magnitude"]
      110 LOADK                            R24 K26 [1E-06]
      111 JUMPIFNOTLT                      R24 R23 ; [+9]
      113 DUPTABLE                         R23 K29 [{"bindDir", "joint"}]
      114 GETTABLEKS                       R24 R22 K30 ["Unit"]
      116 SETTABLEKS                       R24 R23 K27 ["bindDir"]
      118 SETTABLEKS                       R18 R23 K28 ["joint"]
      120 SETTABLE                         R23 R11 R16
      121 FORGLOOP                         R12 2 ; [-42]
      123 NEWTABLE                         R12 0 0
      125 GETUPVAL                         R13 4
      126 LOADNIL                          R14
      127 LOADNIL                          R15
      128 FORGPREP                         R13
      129 GETTABLE                         R18 R7 R17
      130 JUMPIFNOT                        R18 ; [+41]
      131 GETTABLE                         R19 R11 R17
      132 JUMPIFNOT                        R19 ; [+39]
      133 LOADNIL                          R20
      134 GETUPVAL                         R21 5
      135 LOADNIL                          R22
      136 LOADNIL                          R23
      137 FORGPREP                         R21
      138 JUMPIFNOTEQ                      R25 R17 ; [+3]
      140 MOVE                             R20 R24
      141 JUMP                             ; [+2]
      142 FORGLOOP                         R21 2 ; [-5]
      144 JUMPIFNOT                        R20 ; [+5]
      145 GETTABLE                         R21 R12 R20
      146 JUMPIF                           R21 ; [+8]
      147 GETIMPORT                        R21 K33 [CFrame.identity]
      149 JUMP                             ; [+5]
      150 NAMECALL                         R23 R4 K24 ["Inverse"]
      152 CALL                             R23 1 1
      153 MUL                              R22 R23 R8
      154 MUL                              R21 R22 R4
      155 GETTABLEKS                       R23 R19 K27 ["bindDir"]
      157 MUL                              R22 R21 R23
      158 GETIMPORT                        R23 K35 [CFrame.fromRotationBetweenVectors]
      160 MOVE                             R24 R22
      161 NAMECALL                         R26 R4 K24 ["Inverse"]
      163 CALL                             R26 1 1
      164 MUL                              R25 R26 R18
      165 CALL                             R23 2 1
      166 MUL                              R24 R23 R21
      167 SETTABLE                         R24 R12 R17
      168 GETTABLEKS                       R24 R19 K28 ["joint"]
      170 SETTABLEKS                       R23 R24 K36 ["Transform"]
      172 FORGLOOP                         R13 2 ; [-44]
      174 RETURN                           R0 0
      175 NEWTABLE                         R11 0 0
      177 GETUPVAL                         R12 4
      178 LOADNIL                          R13
      179 LOADNIL                          R14
      180 FORGPREP                         R12
      181 MOVE                             R19 R16
      182 NAMECALL                         R17 R0 K16 ["GetJoint"]
      184 CALL                             R17 2 1
      185 JUMPIFNOT                        R17 ; [+17]
      186 GETUPVAL                         R18 0
      187 GETTABLEKS                       R18 R18 K37 ["getGlobalCoordinateFrame"]
      189 MOVE                             R19 R17
      190 CALL                             R18 1 1
      191 DUPTABLE                         R19 K40 [{"pos", "rot", "joint"}]
      192 GETTABLEKS                       R20 R18 K41 ["Position"]
      194 SETTABLEKS                       R20 R19 K38 ["pos"]
      196 GETTABLEKS                       R20 R18 K42 ["Rotation"]
      198 SETTABLEKS                       R20 R19 K39 ["rot"]
      200 SETTABLEKS                       R17 R19 K28 ["joint"]
      202 SETTABLE                         R19 R11 R16
      203 FORGLOOP                         R12 2 ; [-23]
      205 NEWTABLE                         R12 0 0
      207 NEWTABLE                         R13 0 0
      209 GETUPVAL                         R14 4
      210 LOADNIL                          R15
      211 LOADNIL                          R16
      212 FORGPREP                         R14
      213 GETUPVAL                         R20 5
      214 GETTABLE                         R19 R20 R18
      215 GETTABLE                         R20 R7 R18
      216 JUMPIFNOT                        R19 ; [+106]
      217 JUMPIFNOT                        R20 ; [+105]
      218 GETTABLE                         R21 R11 R18
      219 GETTABLE                         R22 R11 R19
      220 JUMPIFNOT                        R21 ; [+102]
      221 JUMPIFNOT                        R22 ; [+101]
      222 LOADNIL                          R23
      223 GETUPVAL                         R24 5
      224 LOADNIL                          R25
      225 LOADNIL                          R26
      226 FORGPREP                         R24
      227 JUMPIFNOTEQ                      R28 R18 ; [+3]
      229 MOVE                             R23 R27
      230 JUMP                             ; [+2]
      231 FORGLOOP                         R24 2 ; [-5]
      233 LOADNIL                          R24
      234 LOADNIL                          R25
      235 JUMPIFNOT                        R23 ; [+21]
      236 GETTABLE                         R26 R11 R23
      237 JUMPIFNOT                        R26 ; [+19]
      238 GETTABLE                         R26 R12 R23
      239 JUMPIF                           R26 ; [+2]
      240 GETIMPORT                        R26 K33 [CFrame.identity]
      242 MOVE                             R24 R26
      243 GETTABLE                         R26 R13 R23
      244 JUMPIF                           R26 ; [+3]
      245 GETTABLE                         R26 R11 R23
      246 GETTABLEKS                       R26 R26 K38 ["pos"]
      248 GETTABLEKS                       R28 R21 K38 ["pos"]
      250 GETTABLE                         R29 R11 R23
      251 GETTABLEKS                       R29 R29 K38 ["pos"]
      253 SUB                              R27 R28 R29
      254 MUL                              R28 R24 R27
      255 ADD                              R25 R26 R28
      256 JUMP                             ; [+4]
      257 GETIMPORT                        R24 K33 [CFrame.identity]
      259 GETTABLEKS                       R25 R21 K38 ["pos"]
      261 SETTABLE                         R25 R13 R18
      262 GETTABLEKS                       R27 R22 K38 ["pos"]
      264 GETTABLEKS                       R28 R21 K38 ["pos"]
      266 SUB                              R26 R27 R28
      267 GETTABLEKS                       R27 R26 K25 ["Magnitude"]
      269 LOADK                            R28 K26 [1E-06]
      270 JUMPIFLT                         R27 R28 ; [+52]
      272 GETTABLEKS                       R27 R20 K25 ["Magnitude"]
      274 LOADK                            R28 K26 [1E-06]
      275 JUMPIFLT                         R27 R28 ; [+47]
      277 GETTABLEKS                       R28 R26 K30 ["Unit"]
      279 MUL                              R27 R24 R28
      280 GETIMPORT                        R28 K35 [CFrame.fromRotationBetweenVectors]
      282 MOVE                             R29 R27
      283 MOVE                             R30 R20
      284 CALL                             R28 2 1
      285 MUL                              R29 R28 R24
      286 SETTABLE                         R29 R12 R18
      287 GETTABLEKS                       R29 R21 K28 ["joint"]
      289 LOADK                            R32 K43 ["Bone"]
      290 NAMECALL                         R30 R29 K22 ["IsA"]
      292 CALL                             R30 2 1
      293 JUMPIFNOT                        R30 ; [+14]
      294 GETTABLEKS                       R31 R21 K39 ["rot"]
      296 MUL                              R30 R24 R31
      297 GETTABLEKS                       R32 R29 K36 ["Transform"]
      299 NAMECALL                         R35 R30 K24 ["Inverse"]
      301 CALL                             R35 1 1
      302 MUL                              R34 R35 R28
      303 MUL                              R33 R34 R30
      304 MUL                              R31 R32 R33
      305 SETTABLEKS                       R31 R29 K36 ["Transform"]
      307 JUMP                             ; [+15]
      308 GETIMPORT                        R32 K45 [CFrame.new]
      310 MOVE                             R33 R25
      311 CALL                             R32 1 1
      312 GETTABLE                         R33 R12 R18
      313 MUL                              R31 R32 R33
      314 GETTABLEKS                       R32 R21 K39 ["rot"]
      316 MUL                              R30 R31 R32
      317 GETUPVAL                         R31 0
      318 GETTABLEKS                       R31 R31 K46 ["setGlobalCoordinateFrame"]
      320 MOVE                             R32 R29
      321 MOVE                             R33 R30
      322 CALL                             R31 2 0
      323 FORGLOOP                         R14 2 ; [-111]
      325 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["DigitsRigDescription"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+7]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K3 ["enforceTposeForHand"]
       12 MOVE                             R8 R6
       13 MOVE                             R9 R0
       14 MOVE                             R10 R1
       15 CALL                             R7 3 0
       16 FORGLOOP                         R2 2 ; [-13]
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearTposeAdjustmentForHand"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["handRigLabels"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["GetJoint"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+17]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["isValidTJoint"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["getJointTransform"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 MOVE                             R10 R5
       29 MOVE                             R11 R7
       30 NAMECALL                         R8 R0 K5 ["SetTposeAdjustment"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 GETTABLEKS                       R1 R0 K6 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+38]
       38 LOADK                            R4 K7 ["HumanoidRigDescription"]
       39 NAMECALL                         R2 R1 K8 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+33]
       43 GETTABLEKS                       R3 R0 K9 ["Side"]
       45 GETIMPORT                        R4 K13 [Enum.DigitsRigDescriptionSide.Left]
       47 JUMPIFNOTEQ                      R3 R4 ; [+4]
       49 GETIMPORT                        R2 K16 [Enum.RigLabel.LeftWrist]
       51 JUMP                             ; [+2]
       52 GETIMPORT                        R2 K18 [Enum.RigLabel.RightWrist]
       54 MOVE                             R5 R2
       55 NAMECALL                         R3 R1 K2 ["GetJoint"]
       57 CALL                             R3 2 1
       58 JUMPIFNOT                        R3 ; [+17]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K3 ["isValidTJoint"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 JUMPIFNOT                        R4 ; [+11]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K4 ["getJointTransform"]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 1
       70 JUMPIFNOT                        R4 ; [+5]
       71 MOVE                             R7 R2
       72 MOVE                             R8 R4
       73 NAMECALL                         R5 R1 K5 ["SetTposeAdjustment"]
       75 CALL                             R5 3 0
       76 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["bodyRigLabels"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R0 K2 ["GetJoint"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+13]
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R0 K3 ["GetTposeAdjustment"]
       19 CALL                             R8 2 1
       20 JUMPIF                           R8 ; [+2]
       21 GETIMPORT                        R8 K6 [CFrame.identity]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K7 ["setJointTransform"]
       26 MOVE                             R10 R7
       27 MOVE                             R11 R8
       28 CALL                             R9 2 0
       29 FORGLOOP                         R2 2 ; [-19]
       31 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearTposeAdjustment"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["bodyRigLabels"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["GetJoint"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+17]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["isValidTJoint"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["getJointTransform"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 MOVE                             R10 R5
       29 MOVE                             R11 R7
       30 NAMECALL                         R8 R0 K5 ["SetTposeAdjustment"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADK                            R9 K1 [0.02]
        8 NAMECALL                         R6 R0 K2 ["SetJointSize"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 22
        2 LOADK                            R2 K0 [1.2]
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 LOADN                            R5 1
        6 LOADK                            R6 K1 [0.6]
        7 LOADK                            R7 K2 [0.4]
        8 LOADK                            R8 K3 [0.7]
        9 LOADK                            R9 K2 [0.4]
       10 LOADK                            R10 K4 [0.35]
       11 LOADK                            R11 K5 [0.2]
       12 LOADK                            R12 K3 [0.7]
       13 LOADK                            R13 K2 [0.4]
       14 LOADK                            R14 K4 [0.35]
       15 LOADK                            R15 K5 [0.2]
       16 LOADK                            R16 K3 [0.7]
       17 LOADK                            R17 K2 [0.4]
       18 SETLIST                          R1 R2 16 [1]
       20 LOADK                            R2 K6 [0.3]
       21 LOADK                            R3 K7 [0.25]
       22 LOADK                            R4 K3 [0.7]
       23 LOADK                            R5 K2 [0.4]
       24 LOADK                            R6 K6 [0.3]
       25 LOADK                            R7 K7 [0.25]
       26 SETLIST                          R1 R2 6 [17]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K8 ["bodyRigLabels"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 MOVE                             R9 R6
       35 GETTABLE                         R10 R1 R5
       36 NAMECALL                         R7 R0 K9 ["SetJointSize"]
       38 CALL                             R7 3 0
       39 FORGLOOP                         R2 2 ; [-6]
       41 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADK                            R9 K1 [{0, 0, 0}]
        8 NAMECALL                         R6 R0 K2 ["SetJointRangeMin"]
       10 CALL                             R6 3 0
       11 MOVE                             R8 R5
       12 LOADK                            R9 K1 [{0, 0, 0}]
       13 NAMECALL                         R6 R0 K3 ["SetJointRangeMax"]
       15 CALL                             R6 3 0
       16 FORGLOOP                         R1 2 ; [-11]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Utils"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Flags"]
       14 GETTABLEKS                       R3 R3 K7 ["getFIntAdaptiveAnimationHandThumbAngleDeg"]
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 16 0
       19 NEWTABLE                         R4 32 0
       21 GETIMPORT                        R5 K11 [Enum.RigLabel.Root]
       23 GETIMPORT                        R6 K13 [Enum.RigLabel.Waist]
       25 SETTABLE                         R6 R4 R5
       26 GETIMPORT                        R5 K13 [Enum.RigLabel.Waist]
       28 GETIMPORT                        R6 K15 [Enum.RigLabel.Spine]
       30 SETTABLE                         R6 R4 R5
       31 GETIMPORT                        R5 K15 [Enum.RigLabel.Spine]
       33 GETIMPORT                        R6 K17 [Enum.RigLabel.Chest]
       35 SETTABLE                         R6 R4 R5
       36 GETIMPORT                        R5 K17 [Enum.RigLabel.Chest]
       38 GETIMPORT                        R6 K19 [Enum.RigLabel.Neck]
       40 SETTABLE                         R6 R4 R5
       41 GETIMPORT                        R5 K19 [Enum.RigLabel.Neck]
       43 GETIMPORT                        R6 K21 [Enum.RigLabel.HeadBase]
       45 SETTABLE                         R6 R4 R5
       46 GETIMPORT                        R5 K21 [Enum.RigLabel.HeadBase]
       48 LOADNIL                          R6
       49 SETTABLE                         R6 R4 R5
       50 GETIMPORT                        R5 K23 [Enum.RigLabel.LeftClavicle]
       52 GETIMPORT                        R6 K25 [Enum.RigLabel.LeftShoulder]
       54 SETTABLE                         R6 R4 R5
       55 GETIMPORT                        R5 K25 [Enum.RigLabel.LeftShoulder]
       57 GETIMPORT                        R6 K27 [Enum.RigLabel.LeftElbow]
       59 SETTABLE                         R6 R4 R5
       60 GETIMPORT                        R5 K27 [Enum.RigLabel.LeftElbow]
       62 GETIMPORT                        R6 K29 [Enum.RigLabel.LeftWrist]
       64 SETTABLE                         R6 R4 R5
       65 GETIMPORT                        R5 K29 [Enum.RigLabel.LeftWrist]
       67 LOADNIL                          R6
       68 SETTABLE                         R6 R4 R5
       69 GETIMPORT                        R5 K31 [Enum.RigLabel.RightClavicle]
       71 GETIMPORT                        R6 K33 [Enum.RigLabel.RightShoulder]
       73 SETTABLE                         R6 R4 R5
       74 GETIMPORT                        R5 K33 [Enum.RigLabel.RightShoulder]
       76 GETIMPORT                        R6 K35 [Enum.RigLabel.RightElbow]
       78 SETTABLE                         R6 R4 R5
       79 GETIMPORT                        R5 K35 [Enum.RigLabel.RightElbow]
       81 GETIMPORT                        R6 K37 [Enum.RigLabel.RightWrist]
       83 SETTABLE                         R6 R4 R5
       84 GETIMPORT                        R5 K37 [Enum.RigLabel.RightWrist]
       86 LOADNIL                          R6
       87 SETTABLE                         R6 R4 R5
       88 GETIMPORT                        R5 K39 [Enum.RigLabel.LeftHip]
       90 GETIMPORT                        R6 K41 [Enum.RigLabel.LeftKnee]
       92 SETTABLE                         R6 R4 R5
       93 GETIMPORT                        R5 K41 [Enum.RigLabel.LeftKnee]
       95 GETIMPORT                        R6 K43 [Enum.RigLabel.LeftAnkle]
       97 SETTABLE                         R6 R4 R5
       98 GETIMPORT                        R5 K43 [Enum.RigLabel.LeftAnkle]
      100 GETIMPORT                        R6 K45 [Enum.RigLabel.LeftToeBase]
      102 SETTABLE                         R6 R4 R5
      103 GETIMPORT                        R5 K45 [Enum.RigLabel.LeftToeBase]
      105 LOADNIL                          R6
      106 SETTABLE                         R6 R4 R5
      107 GETIMPORT                        R5 K47 [Enum.RigLabel.RightHip]
      109 GETIMPORT                        R6 K49 [Enum.RigLabel.RightKnee]
      111 SETTABLE                         R6 R4 R5
      112 GETIMPORT                        R5 K49 [Enum.RigLabel.RightKnee]
      114 GETIMPORT                        R6 K51 [Enum.RigLabel.RightAnkle]
      116 SETTABLE                         R6 R4 R5
      117 GETIMPORT                        R5 K51 [Enum.RigLabel.RightAnkle]
      119 GETIMPORT                        R6 K53 [Enum.RigLabel.RightToeBase]
      121 SETTABLE                         R6 R4 R5
      122 GETIMPORT                        R5 K53 [Enum.RigLabel.RightToeBase]
      124 LOADNIL                          R6
      125 SETTABLE                         R6 R4 R5
      126 NEWTABLE                         R5 0 0
      128 NEWTABLE                         R6 0 0
      130 GETTABLEKS                       R7 R1 K54 ["fingerLabels"]
      132 LOADNIL                          R8
      133 LOADNIL                          R9
      134 FORGPREP                         R7
      135 GETTABLEN                        R12 R11 1
      136 GETTABLEN                        R13 R11 2
      137 SETTABLE                         R13 R5 R12
      138 GETTABLEN                        R12 R11 2
      139 GETTABLEN                        R13 R11 3
      140 SETTABLE                         R13 R5 R12
      141 GETTABLEN                        R12 R11 3
      142 LOADNIL                          R13
      143 SETTABLE                         R13 R5 R12
      144 GETTABLEN                        R14 R11 1
      145 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      147 MOVE                             R13 R6
      148 GETIMPORT                        R12 K57 [table.insert]
      150 CALL                             R12 2 0
      151 GETTABLEN                        R14 R11 2
      152 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      154 MOVE                             R13 R6
      155 GETIMPORT                        R12 K57 [table.insert]
      157 CALL                             R12 2 0
      158 GETTABLEN                        R14 R11 3
      159 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      161 MOVE                             R13 R6
      162 GETIMPORT                        R12 K57 [table.insert]
      164 CALL                             R12 2 0
      165 FORGLOOP                         R7 2 ; [-31]
      167 DUPCLOSURE                       R7 K58 [PROTO_0]
      168 CAPTURE                          VAL R1
      169 SETTABLEKS                       R7 R3 K59 ["clearMapping"]
      171 DUPCLOSURE                       R7 K60 [PROTO_1]
      172 SETTABLEKS                       R7 R3 K61 ["StepAnimations"]
      174 NEWTABLE                         R7 0 22
      176 GETIMPORT                        R8 K11 [Enum.RigLabel.Root]
      178 GETIMPORT                        R9 K13 [Enum.RigLabel.Waist]
      180 GETIMPORT                        R10 K15 [Enum.RigLabel.Spine]
      182 GETIMPORT                        R11 K17 [Enum.RigLabel.Chest]
      184 GETIMPORT                        R12 K19 [Enum.RigLabel.Neck]
      186 GETIMPORT                        R13 K21 [Enum.RigLabel.HeadBase]
      188 GETIMPORT                        R14 K23 [Enum.RigLabel.LeftClavicle]
      190 GETIMPORT                        R15 K25 [Enum.RigLabel.LeftShoulder]
      192 GETIMPORT                        R16 K27 [Enum.RigLabel.LeftElbow]
      194 GETIMPORT                        R17 K29 [Enum.RigLabel.LeftWrist]
      196 GETIMPORT                        R18 K31 [Enum.RigLabel.RightClavicle]
      198 GETIMPORT                        R19 K33 [Enum.RigLabel.RightShoulder]
      200 GETIMPORT                        R20 K35 [Enum.RigLabel.RightElbow]
      202 GETIMPORT                        R21 K37 [Enum.RigLabel.RightWrist]
      204 GETIMPORT                        R22 K39 [Enum.RigLabel.LeftHip]
      206 GETIMPORT                        R23 K41 [Enum.RigLabel.LeftKnee]
      208 SETLIST                          R7 R8 16 [1]
      210 GETIMPORT                        R8 K43 [Enum.RigLabel.LeftAnkle]
      212 GETIMPORT                        R9 K45 [Enum.RigLabel.LeftToeBase]
      214 GETIMPORT                        R10 K47 [Enum.RigLabel.RightHip]
      216 GETIMPORT                        R11 K49 [Enum.RigLabel.RightKnee]
      218 GETIMPORT                        R12 K51 [Enum.RigLabel.RightAnkle]
      220 GETIMPORT                        R13 K53 [Enum.RigLabel.RightToeBase]
      222 SETLIST                          R7 R8 6 [17]
      224 DUPCLOSURE                       R8 K62 [PROTO_2]
      225 CAPTURE                          VAL R1
      226 SETTABLEKS                       R8 R3 K63 ["clearTransforms"]
      228 DUPCLOSURE                       R8 K64 [PROTO_4]
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R4
      233 SETTABLEKS                       R8 R3 K65 ["enforceTpose"]
      235 DUPCLOSURE                       R8 K66 [PROTO_5]
      236 CAPTURE                          VAL R2
      237 DUPCLOSURE                       R9 K67 [PROTO_6]
      238 CAPTURE                          VAL R1
      239 DUPCLOSURE                       R10 K68 [PROTO_9]
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R5
      246 SETTABLEKS                       R10 R3 K69 ["enforceTposeForHand"]
      248 DUPCLOSURE                       R10 K70 [PROTO_10]
      249 CAPTURE                          VAL R3
      250 SETTABLEKS                       R10 R3 K71 ["enforceTposeAllHands"]
      252 DUPCLOSURE                       R10 K72 [PROTO_11]
      253 CAPTURE                          VAL R1
      254 SETTABLEKS                       R10 R3 K73 ["clearTposeAdjustmentForHand"]
      256 DUPCLOSURE                       R10 K74 [PROTO_12]
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R1
      259 SETTABLEKS                       R10 R3 K75 ["sampleTposeAdjustmentForHand"]
      261 DUPCLOSURE                       R10 K76 [PROTO_13]
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R1
      264 SETTABLEKS                       R10 R3 K77 ["poseAsHrdTposeAdjustment"]
      266 DUPCLOSURE                       R10 K78 [PROTO_14]
      267 CAPTURE                          VAL R1
      268 SETTABLEKS                       R10 R3 K79 ["clearTposeAdjustment"]
      270 DUPCLOSURE                       R10 K80 [PROTO_15]
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R1
      273 SETTABLEKS                       R10 R3 K81 ["sampleTposeAdjustment"]
      275 DUPCLOSURE                       R10 K82 [PROTO_16]
      276 CAPTURE                          VAL R1
      277 SETTABLEKS                       R10 R3 K83 ["clearSize"]
      279 DUPCLOSURE                       R10 K84 [PROTO_17]
      280 CAPTURE                          VAL R1
      281 SETTABLEKS                       R10 R3 K85 ["automaticSize"]
      283 DUPCLOSURE                       R10 K86 [PROTO_18]
      284 CAPTURE                          VAL R1
      285 SETTABLEKS                       R10 R3 K87 ["clearRange"]
      287 RETURN                           R3 1
