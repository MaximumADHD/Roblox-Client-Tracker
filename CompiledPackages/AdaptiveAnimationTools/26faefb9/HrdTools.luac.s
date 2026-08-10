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
        6 LOADK                            R4 K3 [{-1, 0, 0}]
        7 MUL                              R2 R3 R4
        8 GETIMPORT                        R4 K2 [CFrame.fromOrientation]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 LOADK                            R7 K4 [0]
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
       32 LOADK                            R6 K18 [{0, -1, 0}]
       33 SETTABLE                         R6 R4 R5
       34 GETIMPORT                        R5 K20 [Enum.RigLabel.LeftKnee]
       36 LOADK                            R6 K18 [{0, -1, 0}]
       37 SETTABLE                         R6 R4 R5
       38 GETIMPORT                        R5 K22 [Enum.RigLabel.RightHip]
       40 LOADK                            R6 K18 [{0, -1, 0}]
       41 SETTABLE                         R6 R4 R5
       42 GETIMPORT                        R5 K24 [Enum.RigLabel.RightKnee]
       44 LOADK                            R6 K18 [{0, -1, 0}]
       45 SETTABLE                         R6 R4 R5
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K25 ["clearTransforms"]
       49 MOVE                             R6 R1
       50 CALL                             R5 1 0
       51 GETIMPORT                        R5 K27 [pcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R1
       56 CALL                             R5 1 0
       57 LOADB                            R5 0
       58 GETIMPORT                        R8 K9 [Enum.RigLabel.LeftShoulder]
       60 NAMECALL                         R6 R0 K28 ["GetJoint"]
       62 CALL                             R6 2 1
       63 JUMPIF                           R6 ; [+5]
       64 GETIMPORT                        R8 K13 [Enum.RigLabel.RightShoulder]
       66 NAMECALL                         R6 R0 K28 ["GetJoint"]
       68 CALL                             R6 2 1
       69 MOVE                             R7 R6
       70 JUMPIFNOT                        R7 ; [+4]
       71 LOADK                            R9 K29 ["AnimationConstraint"]
       72 NAMECALL                         R7 R6 K30 ["IsA"]
       74 CALL                             R7 2 1
       75 MOVE                             R5 R7
       76 JUMPIFNOT                        R5 ; [+88]
       77 NEWTABLE                         R7 0 0
       79 GETUPVAL                         R8 1
       80 LOADNIL                          R9
       81 LOADNIL                          R10
       82 FORGPREP                         R8
       83 GETUPVAL                         R14 2
       84 GETTABLE                         R13 R14 R12
       85 JUMPIFNOT                        R13 ; [+34]
       86 MOVE                             R16 R12
       87 NAMECALL                         R14 R0 K28 ["GetJoint"]
       89 CALL                             R14 2 1
       90 MOVE                             R17 R13
       91 NAMECALL                         R15 R0 K28 ["GetJoint"]
       93 CALL                             R15 2 1
       94 JUMPIFNOT                        R14 ; [+25]
       95 JUMPIFNOT                        R15 ; [+24]
       96 GETUPVAL                         R16 3
       97 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
       99 MOVE                             R17 R14
      100 CALL                             R16 1 1
      101 GETUPVAL                         R17 3
      102 GETTABLEKS                       R17 R17 K31 ["getJointPosition"]
      104 MOVE                             R18 R15
      105 CALL                             R17 1 1
      106 SUB                              R18 R17 R16
      107 GETTABLEKS                       R19 R18 K32 ["Magnitude"]
      109 LOADK                            R20 K33 [1E-06]
      110 JUMPIFNOTLT                      R20 R19 ; [+9]
      112 DUPTABLE                         R19 K36 [{"bindDir", "joint"}]
      113 GETTABLEKS                       R20 R18 K37 ["Unit"]
      115 SETTABLEKS                       R20 R19 K34 ["bindDir"]
      117 SETTABLEKS                       R14 R19 K35 ["joint"]
      119 SETTABLE                         R19 R7 R12
      120 FORGLOOP                         R8 2 ; [-38]
      122 NEWTABLE                         R8 0 0
      124 GETUPVAL                         R9 1
      125 LOADNIL                          R10
      126 LOADNIL                          R11
      127 FORGPREP                         R9
      128 GETTABLE                         R14 R4 R13
      129 JUMPIFNOT                        R14 ; [+32]
      130 GETTABLE                         R15 R7 R13
      131 JUMPIFNOT                        R15 ; [+30]
      132 GETTABLEKS                       R16 R15 K35 ["joint"]
      134 GETTABLEKS                       R17 R15 K34 ["bindDir"]
      136 LOADNIL                          R18
      137 GETUPVAL                         R19 2
      138 LOADNIL                          R20
      139 LOADNIL                          R21
      140 FORGPREP                         R19
      141 JUMPIFNOTEQ                      R23 R13 ; [+3]
      143 MOVE                             R18 R22
      144 JUMP                             ; [+2]
      145 FORGLOOP                         R19 2 ; [-5]
      147 JUMPIFNOT                        R18 ; [+2]
      148 GETTABLE                         R19 R8 R18
      149 JUMPIF                           R19 ; [+2]
      150 GETIMPORT                        R19 K39 [CFrame.identity]
      152 MUL                              R20 R19 R17
      153 GETIMPORT                        R21 K41 [CFrame.fromRotationBetweenVectors]
      155 MOVE                             R22 R20
      156 MOVE                             R23 R14
      157 CALL                             R21 2 1
      158 MUL                              R22 R21 R19
      159 SETTABLE                         R22 R8 R13
      160 SETTABLEKS                       R21 R16 K42 ["Transform"]
      162 FORGLOOP                         R9 2 ; [-35]
      164 RETURN                           R0 0
      165 GETUPVAL                         R7 3
      166 GETTABLEKS                       R7 R7 K43 ["bodyRigLabels"]
      168 LOADNIL                          R8
      169 LOADNIL                          R9
      170 FORGPREP                         R7
      171 GETUPVAL                         R13 2
      172 GETTABLE                         R12 R13 R11
      173 MOVE                             R13 R4
      174 JUMPIFNOT                        R13 ; [+1]
      175 GETTABLE                         R13 R4 R11
      176 JUMPIFNOT                        R12 ; [+57]
      177 JUMPIFNOT                        R13 ; [+56]
      178 MOVE                             R18 R11
      179 NAMECALL                         R16 R0 K28 ["GetJoint"]
      181 CALL                             R16 2 1
      182 MOVE                             R14 R16
      183 MOVE                             R17 R12
      184 NAMECALL                         R15 R0 K28 ["GetJoint"]
      186 CALL                             R15 2 1
      187 JUMPIFNOT                        R14 ; [+46]
      188 JUMPIFNOT                        R15 ; [+45]
      189 GETUPVAL                         R16 3
      190 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
      192 MOVE                             R17 R14
      193 CALL                             R16 1 1
      194 GETUPVAL                         R17 3
      195 GETTABLEKS                       R17 R17 K31 ["getJointPosition"]
      197 MOVE                             R18 R15
      198 CALL                             R17 1 1
      199 SUB                              R18 R17 R16
      200 GETTABLEKS                       R19 R18 K32 ["Magnitude"]
      202 LOADK                            R20 K33 [1E-06]
      203 JUMPIFLT                         R19 R20 ; [+30]
      205 GETTABLEKS                       R19 R13 K32 ["Magnitude"]
      207 LOADK                            R20 K33 [1E-06]
      208 JUMPIFLT                         R19 R20 ; [+25]
      210 GETUPVAL                         R19 3
      211 GETTABLEKS                       R19 R19 K44 ["getGlobalCoordinateFrame"]
      213 MOVE                             R20 R14
      214 CALL                             R19 1 1
      215 GETIMPORT                        R21 K41 [CFrame.fromRotationBetweenVectors]
      217 MOVE                             R22 R18
      218 MOVE                             R23 R13
      219 CALL                             R21 2 1
      220 GETTABLEKS                       R22 R19 K45 ["Rotation"]
      222 MUL                              R20 R21 R22
      223 GETUPVAL                         R21 3
      224 GETTABLEKS                       R21 R21 K46 ["setGlobalCoordinateFrame"]
      226 MOVE                             R22 R14
      227 GETIMPORT                        R24 K48 [CFrame.new]
      229 GETTABLEKS                       R25 R19 K49 ["Position"]
      231 CALL                             R24 1 1
      232 MUL                              R23 R24 R20
      233 CALL                             R21 2 0
      234 FORGLOOP                         R7 2 ; [-64]
      236 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 FASTCALL1                        MATH_RAD R3 ; [+2]
        5 GETIMPORT                        R2 K2 [math.rad]
        7 CALL                             R2 1 1
        8 FASTCALL1                        MATH_COS R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K4 [math.cos]
       12 CALL                             R5 1 1
       13 MUL                              R4 R5 R0
       14 FASTCALL1                        MATH_SIN R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K6 [math.sin]
       18 CALL                             R6 1 1
       19 LOADK                            R7 K7 [{0, 0, 1}]
       20 MUL                              R5 R6 R7
       21 SUB                              R3 R4 R5
       22 GETTABLEKS                       R3 R3 K8 ["Unit"]
       24 GETIMPORT                        R4 K12 [Enum.RigLabel.Thumb1]
       26 SETTABLE                         R3 R1 R4
       27 GETIMPORT                        R4 K14 [Enum.RigLabel.Thumb2]
       29 SETTABLE                         R3 R1 R4
       30 GETIMPORT                        R4 K16 [Enum.RigLabel.Index1]
       32 SETTABLE                         R0 R1 R4
       33 GETIMPORT                        R4 K18 [Enum.RigLabel.Index2]
       35 SETTABLE                         R0 R1 R4
       36 GETIMPORT                        R4 K20 [Enum.RigLabel.Middle1]
       38 SETTABLE                         R0 R1 R4
       39 GETIMPORT                        R4 K22 [Enum.RigLabel.Middle2]
       41 SETTABLE                         R0 R1 R4
       42 GETIMPORT                        R4 K24 [Enum.RigLabel.Ring1]
       44 SETTABLE                         R0 R1 R4
       45 GETIMPORT                        R4 K26 [Enum.RigLabel.Ring2]
       47 SETTABLE                         R0 R1 R4
       48 GETIMPORT                        R4 K28 [Enum.RigLabel.Pinky1]
       50 SETTABLE                         R0 R1 R4
       51 GETIMPORT                        R4 K30 [Enum.RigLabel.Pinky2]
       53 SETTABLE                         R0 R1 R4
       54 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["Side"]
        2 GETIMPORT                        R5 K4 [Enum.DigitsRigDescriptionSide.Left]
        4 JUMPIFNOTEQ                      R4 R5 ; [+4]
        6 GETIMPORT                        R3 K7 [Enum.RigLabel.LeftWrist]
        8 JUMP                             ; [+2]
        9 GETIMPORT                        R3 K9 [Enum.RigLabel.RightWrist]
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R1 K10 ["GetJoint"]
       14 CALL                             R4 2 1
       15 GETIMPORT                        R7 K12 [Enum.RigLabel.Thumb1]
       17 NAMECALL                         R5 R0 K10 ["GetJoint"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R4 ; [+1]
       21 JUMPIF                           R5 ; [+3]
       22 GETIMPORT                        R6 K15 [CFrame.identity]
       24 RETURN                           R6 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K16 ["getJointPosition"]
       28 MOVE                             R7 R4
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K16 ["getJointPosition"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 NEWTABLE                         R8 0 4
       37 GETIMPORT                        R9 K18 [Enum.RigLabel.Index1]
       39 GETIMPORT                        R10 K20 [Enum.RigLabel.Middle1]
       41 GETIMPORT                        R11 K22 [Enum.RigLabel.Ring1]
       43 GETIMPORT                        R12 K24 [Enum.RigLabel.Pinky1]
       45 SETLIST                          R8 R9 4 [1]
       47 LOADK                            R9 K25 [{0, 0, 0}]
       48 LOADN                            R10 0
       49 MOVE                             R11 R8
       50 LOADNIL                          R12
       51 LOADNIL                          R13
       52 FORGPREP                         R11
       53 MOVE                             R18 R15
       54 NAMECALL                         R16 R0 K10 ["GetJoint"]
       56 CALL                             R16 2 1
       57 JUMPIFNOT                        R16 ; [+15]
       58 GETUPVAL                         R18 0
       59 GETTABLEKS                       R18 R18 K16 ["getJointPosition"]
       61 MOVE                             R19 R16
       62 CALL                             R18 1 1
       63 SUB                              R17 R18 R6
       64 GETTABLEKS                       R18 R17 K26 ["Magnitude"]
       66 LOADK                            R19 K27 [1E-06]
       67 JUMPIFNOTLT                      R19 R18 ; [+5]
       69 GETTABLEKS                       R18 R17 K28 ["Unit"]
       71 ADD                              R9 R9 R18
       72 ADDK                             R10 R10 K29 [1]
       73 FORGLOOP                         R11 2 ; [-21]
       75 GETIMPORT                        R11 K15 [CFrame.identity]
       77 LOADN                            R12 0
       78 JUMPIFNOTLT                      R12 R10 ; [+13]
       80 GETTABLEKS                       R12 R9 K26 ["Magnitude"]
       82 LOADK                            R13 K27 [1E-06]
       83 JUMPIFNOTLT                      R13 R12 ; [+8]
       85 GETIMPORT                        R12 K31 [CFrame.fromRotationBetweenVectors]
       87 GETTABLEKS                       R13 R9 K28 ["Unit"]
       89 MOVE                             R14 R2
       90 CALL                             R12 2 1
       91 MOVE                             R11 R12
       92 GETIMPORT                        R14 K18 [Enum.RigLabel.Index1]
       94 NAMECALL                         R12 R0 K10 ["GetJoint"]
       96 CALL                             R12 2 1
       97 GETIMPORT                        R15 K24 [Enum.RigLabel.Pinky1]
       99 NAMECALL                         R13 R0 K10 ["GetJoint"]
      101 CALL                             R13 2 1
      102 LOADNIL                          R14
      103 JUMPIFNOT                        R12 ; [+13]
      104 JUMPIFNOT                        R13 ; [+12]
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R15 R15 K16 ["getJointPosition"]
      108 MOVE                             R16 R12
      109 CALL                             R15 1 1
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K16 ["getJointPosition"]
      113 MOVE                             R17 R13
      114 CALL                             R16 1 1
      115 SUB                              R14 R15 R16
      116 JUMP                             ; [+1]
      117 SUB                              R14 R7 R6
      118 GETIMPORT                        R15 K15 [CFrame.identity]
      120 JUMPIFNOT                        R14 ; [+52]
      121 GETTABLEKS                       R16 R14 K26 ["Magnitude"]
      123 LOADK                            R17 K27 [1E-06]
      124 JUMPIFNOTLT                      R17 R16 ; [+48]
      126 MUL                              R16 R11 R14
      127 MOVE                             R21 R2
      128 NAMECALL                         R19 R16 K32 ["Dot"]
      130 CALL                             R19 2 1
      131 MUL                              R18 R19 R2
      132 SUB                              R17 R16 R18
      133 GETTABLEKS                       R18 R17 K26 ["Magnitude"]
      135 LOADK                            R19 K27 [1E-06]
      136 JUMPIFNOTLT                      R19 R18 ; [+36]
      138 GETTABLEKS                       R18 R17 K28 ["Unit"]
      140 LOADK                            R21 K33 [{0, 0, -1}]
      141 NAMECALL                         R19 R18 K32 ["Dot"]
      143 CALL                             R19 2 1
      144 LOADK                            R22 K33 [{0, 0, -1}]
      145 NAMECALL                         R20 R18 K34 ["Cross"]
      147 CALL                             R20 2 1
      148 MOVE                             R22 R2
      149 NAMECALL                         R20 R20 K32 ["Dot"]
      151 CALL                             R20 2 1
      152 FASTCALL2                        MATH_ATAN2 R20 R19 ; [+5]
      154 MOVE                             R22 R20
      155 MOVE                             R23 R19
      156 GETIMPORT                        R21 K37 [math.atan2]
      158 CALL                             R21 2 1
      159 FASTCALL1                        MATH_ABS R21 ; [+3]
      160 MOVE                             R23 R21
      161 GETIMPORT                        R22 K39 [math.abs]
      163 CALL                             R22 1 1
      164 LOADK                            R23 K27 [1E-06]
      165 JUMPIFNOTLT                      R23 R22 ; [+7]
      167 GETIMPORT                        R22 K41 [CFrame.fromAxisAngle]
      169 MOVE                             R23 R2
      170 MOVE                             R24 R21
      171 CALL                             R22 2 1
      172 MOVE                             R15 R22
      173 MUL                              R16 R15 R11
      174 GETIMPORT                        R17 K15 [CFrame.identity]
      176 JUMPIFNOTEQ                      R16 R17 ; [+4]
      178 GETIMPORT                        R17 K15 [CFrame.identity]
      180 RETURN                           R17 1
      181 GETUPVAL                         R17 0
      182 GETTABLEKS                       R17 R17 K42 ["getGlobalCoordinateFrame"]
      184 MOVE                             R18 R4
      185 CALL                             R17 1 1
      186 GETIMPORT                        R20 K44 [CFrame.new]
      188 GETTABLEKS                       R21 R17 K45 ["Position"]
      190 CALL                             R20 1 1
      191 MUL                              R19 R20 R16
      192 GETTABLEKS                       R20 R17 K46 ["Rotation"]
      194 MUL                              R18 R19 R20
      195 GETUPVAL                         R19 0
      196 GETTABLEKS                       R19 R19 K47 ["setGlobalCoordinateFrame"]
      198 MOVE                             R20 R4
      199 MOVE                             R21 R18
      200 CALL                             R19 2 0
      201 RETURN                           R16 1

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
       11 GETIMPORT                        R5 K4 [Enum.DigitsRigDescriptionSide.Left]
       13 JUMPIFNOTEQ                      R3 R5 ; [+3]
       15 LOADK                            R4 K7 [{-1, 0, 0}]
       16 JUMP                             ; [+1]
       17 LOADK                            R4 K8 [{1, 0, 0}]
       18 GETUPVAL                         R5 0
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K10 [pcall]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R2
       26 CALL                             R6 1 0
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R0
       29 MOVE                             R8 R1
       30 MOVE                             R9 R4
       31 CALL                             R6 3 1
       32 GETIMPORT                        R7 K10 [pcall]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R2
       37 CALL                             R7 1 0
       38 LOADB                            R7 0
       39 GETIMPORT                        R10 K13 [Enum.RigLabel.Thumb1]
       41 NAMECALL                         R8 R0 K14 ["GetJoint"]
       43 CALL                             R8 2 1
       44 JUMPIF                           R8 ; [+11]
       45 GETIMPORT                        R10 K16 [Enum.RigLabel.Index1]
       47 NAMECALL                         R8 R0 K14 ["GetJoint"]
       49 CALL                             R8 2 1
       50 JUMPIF                           R8 ; [+5]
       51 GETIMPORT                        R10 K18 [Enum.RigLabel.Middle1]
       53 NAMECALL                         R8 R0 K14 ["GetJoint"]
       55 CALL                             R8 2 1
       56 MOVE                             R9 R8
       57 JUMPIFNOT                        R9 ; [+4]
       58 LOADK                            R11 K19 ["AnimationConstraint"]
       59 NAMECALL                         R9 R8 K20 ["IsA"]
       61 CALL                             R9 2 1
       62 MOVE                             R7 R9
       63 JUMPIFNOT                        R7 ; [+90]
       64 NEWTABLE                         R9 0 0
       66 GETUPVAL                         R10 3
       67 LOADNIL                          R11
       68 LOADNIL                          R12
       69 FORGPREP                         R10
       70 GETUPVAL                         R16 4
       71 GETTABLE                         R15 R16 R14
       72 JUMPIFNOT                        R15 ; [+34]
       73 MOVE                             R18 R14
       74 NAMECALL                         R16 R0 K14 ["GetJoint"]
       76 CALL                             R16 2 1
       77 MOVE                             R19 R15
       78 NAMECALL                         R17 R0 K14 ["GetJoint"]
       80 CALL                             R17 2 1
       81 JUMPIFNOT                        R16 ; [+25]
       82 JUMPIFNOT                        R17 ; [+24]
       83 GETUPVAL                         R18 5
       84 GETTABLEKS                       R18 R18 K21 ["getJointPosition"]
       86 MOVE                             R19 R16
       87 CALL                             R18 1 1
       88 GETUPVAL                         R19 5
       89 GETTABLEKS                       R19 R19 K21 ["getJointPosition"]
       91 MOVE                             R20 R17
       92 CALL                             R19 1 1
       93 SUB                              R20 R19 R18
       94 GETTABLEKS                       R21 R20 K22 ["Magnitude"]
       96 LOADK                            R22 K23 [1E-06]
       97 JUMPIFNOTLT                      R22 R21 ; [+9]
       99 DUPTABLE                         R21 K26 [{"bindDir", "joint"}]
      100 GETTABLEKS                       R22 R20 K27 ["Unit"]
      102 SETTABLEKS                       R22 R21 K24 ["bindDir"]
      104 SETTABLEKS                       R16 R21 K25 ["joint"]
      106 SETTABLE                         R21 R9 R14
      107 FORGLOOP                         R10 2 ; [-38]
      109 NEWTABLE                         R10 0 0
      111 GETUPVAL                         R11 3
      112 LOADNIL                          R12
      113 LOADNIL                          R13
      114 FORGPREP                         R11
      115 GETTABLE                         R16 R5 R15
      116 JUMPIFNOT                        R16 ; [+34]
      117 GETTABLE                         R17 R9 R15
      118 JUMPIFNOT                        R17 ; [+32]
      119 LOADNIL                          R18
      120 GETUPVAL                         R19 4
      121 LOADNIL                          R20
      122 LOADNIL                          R21
      123 FORGPREP                         R19
      124 JUMPIFNOTEQ                      R23 R15 ; [+3]
      126 MOVE                             R18 R22
      127 JUMP                             ; [+2]
      128 FORGLOOP                         R19 2 ; [-5]
      130 JUMPIFNOT                        R18 ; [+5]
      131 GETTABLE                         R19 R10 R18
      132 JUMPIF                           R19 ; [+4]
      133 GETIMPORT                        R19 K30 [CFrame.identity]
      135 JUMP                             ; [+1]
      136 MOVE                             R19 R6
      137 GETTABLEKS                       R21 R17 K24 ["bindDir"]
      139 MUL                              R20 R19 R21
      140 GETIMPORT                        R21 K32 [CFrame.fromRotationBetweenVectors]
      142 MOVE                             R22 R20
      143 MOVE                             R23 R16
      144 CALL                             R21 2 1
      145 MUL                              R22 R21 R19
      146 SETTABLE                         R22 R10 R15
      147 GETTABLEKS                       R22 R17 K25 ["joint"]
      149 SETTABLEKS                       R21 R22 K33 ["Transform"]
      151 FORGLOOP                         R11 2 ; [-37]
      153 RETURN                           R0 0
      154 NEWTABLE                         R9 0 0
      156 GETUPVAL                         R10 3
      157 LOADNIL                          R11
      158 LOADNIL                          R12
      159 FORGPREP                         R10
      160 MOVE                             R17 R14
      161 NAMECALL                         R15 R0 K14 ["GetJoint"]
      163 CALL                             R15 2 1
      164 JUMPIFNOT                        R15 ; [+17]
      165 GETUPVAL                         R16 5
      166 GETTABLEKS                       R16 R16 K34 ["getGlobalCoordinateFrame"]
      168 MOVE                             R17 R15
      169 CALL                             R16 1 1
      170 DUPTABLE                         R17 K37 [{"pos", "rot", "joint"}]
      171 GETTABLEKS                       R18 R16 K38 ["Position"]
      173 SETTABLEKS                       R18 R17 K35 ["pos"]
      175 GETTABLEKS                       R18 R16 K39 ["Rotation"]
      177 SETTABLEKS                       R18 R17 K36 ["rot"]
      179 SETTABLEKS                       R15 R17 K25 ["joint"]
      181 SETTABLE                         R17 R9 R14
      182 FORGLOOP                         R10 2 ; [-23]
      184 NEWTABLE                         R10 0 0
      186 NEWTABLE                         R11 0 0
      188 GETUPVAL                         R12 3
      189 LOADNIL                          R13
      190 LOADNIL                          R14
      191 FORGPREP                         R12
      192 GETUPVAL                         R18 4
      193 GETTABLE                         R17 R18 R16
      194 GETTABLE                         R18 R5 R16
      195 JUMPIFNOT                        R17 ; [+106]
      196 JUMPIFNOT                        R18 ; [+105]
      197 GETTABLE                         R19 R9 R16
      198 GETTABLE                         R20 R9 R17
      199 JUMPIFNOT                        R19 ; [+102]
      200 JUMPIFNOT                        R20 ; [+101]
      201 LOADNIL                          R21
      202 GETUPVAL                         R22 4
      203 LOADNIL                          R23
      204 LOADNIL                          R24
      205 FORGPREP                         R22
      206 JUMPIFNOTEQ                      R26 R16 ; [+3]
      208 MOVE                             R21 R25
      209 JUMP                             ; [+2]
      210 FORGLOOP                         R22 2 ; [-5]
      212 LOADNIL                          R22
      213 LOADNIL                          R23
      214 JUMPIFNOT                        R21 ; [+21]
      215 GETTABLE                         R24 R9 R21
      216 JUMPIFNOT                        R24 ; [+19]
      217 GETTABLE                         R24 R10 R21
      218 JUMPIF                           R24 ; [+2]
      219 GETIMPORT                        R24 K30 [CFrame.identity]
      221 MOVE                             R22 R24
      222 GETTABLE                         R24 R11 R21
      223 JUMPIF                           R24 ; [+3]
      224 GETTABLE                         R24 R9 R21
      225 GETTABLEKS                       R24 R24 K35 ["pos"]
      227 GETTABLEKS                       R26 R19 K35 ["pos"]
      229 GETTABLE                         R27 R9 R21
      230 GETTABLEKS                       R27 R27 K35 ["pos"]
      232 SUB                              R25 R26 R27
      233 MUL                              R26 R22 R25
      234 ADD                              R23 R24 R26
      235 JUMP                             ; [+4]
      236 GETIMPORT                        R22 K30 [CFrame.identity]
      238 GETTABLEKS                       R23 R19 K35 ["pos"]
      240 SETTABLE                         R23 R11 R16
      241 GETTABLEKS                       R25 R20 K35 ["pos"]
      243 GETTABLEKS                       R26 R19 K35 ["pos"]
      245 SUB                              R24 R25 R26
      246 GETTABLEKS                       R25 R24 K22 ["Magnitude"]
      248 LOADK                            R26 K23 [1E-06]
      249 JUMPIFLT                         R25 R26 ; [+52]
      251 GETTABLEKS                       R25 R18 K22 ["Magnitude"]
      253 LOADK                            R26 K23 [1E-06]
      254 JUMPIFLT                         R25 R26 ; [+47]
      256 GETTABLEKS                       R26 R24 K27 ["Unit"]
      258 MUL                              R25 R22 R26
      259 GETIMPORT                        R26 K32 [CFrame.fromRotationBetweenVectors]
      261 MOVE                             R27 R25
      262 MOVE                             R28 R18
      263 CALL                             R26 2 1
      264 MUL                              R27 R26 R22
      265 SETTABLE                         R27 R10 R16
      266 GETTABLEKS                       R27 R19 K25 ["joint"]
      268 LOADK                            R30 K40 ["Bone"]
      269 NAMECALL                         R28 R27 K20 ["IsA"]
      271 CALL                             R28 2 1
      272 JUMPIFNOT                        R28 ; [+14]
      273 GETTABLEKS                       R29 R19 K36 ["rot"]
      275 MUL                              R28 R22 R29
      276 GETTABLEKS                       R30 R27 K33 ["Transform"]
      278 NAMECALL                         R33 R28 K41 ["Inverse"]
      280 CALL                             R33 1 1
      281 MUL                              R32 R33 R26
      282 MUL                              R31 R32 R28
      283 MUL                              R29 R30 R31
      284 SETTABLEKS                       R29 R27 K33 ["Transform"]
      286 JUMP                             ; [+15]
      287 GETIMPORT                        R30 K43 [CFrame.new]
      289 MOVE                             R31 R23
      290 CALL                             R30 1 1
      291 GETTABLE                         R31 R10 R16
      292 MUL                              R29 R30 R31
      293 GETTABLEKS                       R30 R19 K36 ["rot"]
      295 MUL                              R28 R29 R30
      296 GETUPVAL                         R29 5
      297 GETTABLEKS                       R29 R29 K44 ["setGlobalCoordinateFrame"]
      299 MOVE                             R30 R27
      300 MOVE                             R31 R28
      301 CALL                             R29 2 0
      302 FORGLOOP                         R12 2 ; [-111]
      304 RETURN                           R0 0

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
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R1
      233 SETTABLEKS                       R8 R3 K65 ["enforceTpose"]
      235 DUPCLOSURE                       R8 K66 [PROTO_5]
      236 CAPTURE                          VAL R2
      237 DUPCLOSURE                       R9 K67 [PROTO_6]
      238 CAPTURE                          VAL R1
      239 DUPCLOSURE                       R10 K68 [PROTO_9]
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R1
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
