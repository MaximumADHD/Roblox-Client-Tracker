PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["allRigLabels"]
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
        4 LOADK                            R8 K1 ["Motor6D"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+13]
        9 LOADK                            R8 K3 ["Bone"]
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+8]
       14 LOADK                            R8 K4 ["AnimationConstraint"]
       15 NAMECALL                         R6 R5 K2 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+7]
       19 GETUPVAL                         R6 0
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+4]
       22 GETIMPORT                        R6 K7 [CFrame.identity]
       24 SETTABLEKS                       R6 R5 K8 ["Transform"]
       26 FORGLOOP                         R1 2 ; [-23]
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["StepAnimations"]
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
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K25 ["clearTransforms"]
       49 MOVE                             R6 R1
       50 CALL                             R5 1 0
       51 GETIMPORT                        R5 K27 [pcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R1
       56 CALL                             R5 1 0
       57 LOADB                            R5 0
       58 GETUPVAL                         R6 1
       59 CALL                             R6 0 1
       60 JUMPIFNOT                        R6 ; [+18]
       61 GETIMPORT                        R8 K9 [Enum.RigLabel.LeftShoulder]
       63 NAMECALL                         R6 R0 K28 ["GetJoint"]
       65 CALL                             R6 2 1
       66 JUMPIF                           R6 ; [+5]
       67 GETIMPORT                        R8 K13 [Enum.RigLabel.RightShoulder]
       69 NAMECALL                         R6 R0 K28 ["GetJoint"]
       71 CALL                             R6 2 1
       72 MOVE                             R7 R6
       73 JUMPIFNOT                        R7 ; [+4]
       74 LOADK                            R9 K29 ["AnimationConstraint"]
       75 NAMECALL                         R7 R6 K30 ["IsA"]
       77 CALL                             R7 2 1
       78 MOVE                             R5 R7
       79 JUMPIFNOT                        R5 ; [+88]
       80 NEWTABLE                         R6 0 0
       82 GETUPVAL                         R7 2
       83 LOADNIL                          R8
       84 LOADNIL                          R9
       85 FORGPREP                         R7
       86 GETUPVAL                         R13 3
       87 GETTABLE                         R12 R13 R11
       88 JUMPIFNOT                        R12 ; [+34]
       89 MOVE                             R15 R11
       90 NAMECALL                         R13 R0 K28 ["GetJoint"]
       92 CALL                             R13 2 1
       93 MOVE                             R16 R12
       94 NAMECALL                         R14 R0 K28 ["GetJoint"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R13 ; [+25]
       98 JUMPIFNOT                        R14 ; [+24]
       99 GETUPVAL                         R16 4
      100 GETTABLEKS                       R15 R16 K31 ["getJointPosition"]
      102 MOVE                             R16 R13
      103 CALL                             R15 1 1
      104 GETUPVAL                         R17 4
      105 GETTABLEKS                       R16 R17 K31 ["getJointPosition"]
      107 MOVE                             R17 R14
      108 CALL                             R16 1 1
      109 SUB                              R17 R16 R15
      110 GETTABLEKS                       R18 R17 K32 ["Magnitude"]
      112 LOADK                            R19 K33 [1E-06]
      113 JUMPIFNOTLT                      R19 R18 ; [+9]
      115 DUPTABLE                         R18 K36 [{"bindDir", "joint"}]
      116 GETTABLEKS                       R19 R17 K37 ["Unit"]
      118 SETTABLEKS                       R19 R18 K34 ["bindDir"]
      120 SETTABLEKS                       R13 R18 K35 ["joint"]
      122 SETTABLE                         R18 R6 R11
      123 FORGLOOP                         R7 2 ; [-38]
      125 NEWTABLE                         R7 0 0
      127 GETUPVAL                         R8 2
      128 LOADNIL                          R9
      129 LOADNIL                          R10
      130 FORGPREP                         R8
      131 GETTABLE                         R13 R4 R12
      132 JUMPIFNOT                        R13 ; [+32]
      133 GETTABLE                         R14 R6 R12
      134 JUMPIFNOT                        R14 ; [+30]
      135 GETTABLEKS                       R15 R14 K35 ["joint"]
      137 GETTABLEKS                       R16 R14 K34 ["bindDir"]
      139 LOADNIL                          R17
      140 GETUPVAL                         R18 3
      141 LOADNIL                          R19
      142 LOADNIL                          R20
      143 FORGPREP                         R18
      144 JUMPIFNOTEQ                      R22 R12 ; [+3]
      146 MOVE                             R17 R21
      147 JUMP                             ; [+2]
      148 FORGLOOP                         R18 2 ; [-5]
      150 JUMPIFNOT                        R17 ; [+2]
      151 GETTABLE                         R18 R7 R17
      152 JUMPIF                           R18 ; [+2]
      153 GETIMPORT                        R18 K39 [CFrame.identity]
      155 MUL                              R19 R18 R16
      156 GETIMPORT                        R20 K41 [CFrame.fromRotationBetweenVectors]
      158 MOVE                             R21 R19
      159 MOVE                             R22 R13
      160 CALL                             R20 2 1
      161 MUL                              R21 R20 R18
      162 SETTABLE                         R21 R7 R12
      163 SETTABLEKS                       R20 R15 K42 ["Transform"]
      165 FORGLOOP                         R8 2 ; [-35]
      167 RETURN                           R0 0
      168 GETUPVAL                         R9 4
      169 GETTABLEKS                       R6 R9 K43 ["allRigLabels"]
      171 LOADNIL                          R7
      172 LOADNIL                          R8
      173 FORGPREP                         R6
      174 GETUPVAL                         R12 3
      175 GETTABLE                         R11 R12 R10
      176 MOVE                             R12 R4
      177 JUMPIFNOT                        R12 ; [+1]
      178 GETTABLE                         R12 R4 R10
      179 JUMPIFNOT                        R11 ; [+57]
      180 JUMPIFNOT                        R12 ; [+56]
      181 MOVE                             R17 R10
      182 NAMECALL                         R15 R0 K28 ["GetJoint"]
      184 CALL                             R15 2 1
      185 MOVE                             R13 R15
      186 MOVE                             R16 R11
      187 NAMECALL                         R14 R0 K28 ["GetJoint"]
      189 CALL                             R14 2 1
      190 JUMPIFNOT                        R13 ; [+46]
      191 JUMPIFNOT                        R14 ; [+45]
      192 GETUPVAL                         R16 4
      193 GETTABLEKS                       R15 R16 K31 ["getJointPosition"]
      195 MOVE                             R16 R13
      196 CALL                             R15 1 1
      197 GETUPVAL                         R17 4
      198 GETTABLEKS                       R16 R17 K31 ["getJointPosition"]
      200 MOVE                             R17 R14
      201 CALL                             R16 1 1
      202 SUB                              R17 R16 R15
      203 GETTABLEKS                       R18 R17 K32 ["Magnitude"]
      205 LOADK                            R19 K33 [1E-06]
      206 JUMPIFLT                         R18 R19 ; [+30]
      208 GETTABLEKS                       R18 R12 K32 ["Magnitude"]
      210 LOADK                            R19 K33 [1E-06]
      211 JUMPIFLT                         R18 R19 ; [+25]
      213 GETUPVAL                         R19 4
      214 GETTABLEKS                       R18 R19 K44 ["getGlobalCoordinateFrame"]
      216 MOVE                             R19 R13
      217 CALL                             R18 1 1
      218 GETIMPORT                        R20 K41 [CFrame.fromRotationBetweenVectors]
      220 MOVE                             R21 R17
      221 MOVE                             R22 R12
      222 CALL                             R20 2 1
      223 GETTABLEKS                       R21 R18 K45 ["Rotation"]
      225 MUL                              R19 R20 R21
      226 GETUPVAL                         R21 4
      227 GETTABLEKS                       R20 R21 K46 ["setGlobalCoordinateFrame"]
      229 MOVE                             R21 R13
      230 GETIMPORT                        R23 K48 [CFrame.new]
      232 GETTABLEKS                       R24 R18 K49 ["Position"]
      234 CALL                             R23 1 1
      235 MUL                              R22 R23 R19
      236 CALL                             R20 2 0
      237 FORGLOOP                         R6 2 ; [-64]
      239 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R2 R5 K1 ["allRigLabels"]
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
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K7 ["setJointTransform"]
       26 MOVE                             R10 R7
       27 MOVE                             R11 R8
       28 CALL                             R9 2 0
       29 FORGLOOP                         R2 2 ; [-19]
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["allRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["clearTposeAdjustment"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R1 R4 K1 ["allRigLabels"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["GetJoint"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+17]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K3 ["isValidTJoint"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K4 ["getJointTransform"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 MOVE                             R10 R5
       29 MOVE                             R11 R7
       30 NAMECALL                         R8 R0 K5 ["SetTposeAdjustment"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["allRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADK                            R9 K1 [0.02]
        8 NAMECALL                         R6 R0 K2 ["SetJointSize"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 0

PROTO_9:
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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R2 R5 K8 ["allRigLabels"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 MOVE                             R9 R6
       35 GETTABLE                         R10 R1 R5
       36 NAMECALL                         R7 R0 K9 ["SetJointSize"]
       38 CALL                             R7 3 0
       39 FORGLOOP                         R2 2 ; [-6]
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["allRigLabels"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Utils"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R4 R0 K6 ["Flags"]
       14 GETTABLEKS                       R3 R4 K7 ["getFFlagAdaptiveAnimationConstraints"]
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 16 0
       19 NEWTABLE                         R4 32 0
       21 GETIMPORT                        R5 K11 [Enum.RigLabel.Root]
       23 GETIMPORT                        R6 K13 [Enum.RigLabel.Pelvis]
       25 SETTABLE                         R6 R4 R5
       26 GETIMPORT                        R5 K13 [Enum.RigLabel.Pelvis]
       28 GETIMPORT                        R6 K15 [Enum.RigLabel.Waist]
       30 SETTABLE                         R6 R4 R5
       31 GETIMPORT                        R5 K15 [Enum.RigLabel.Waist]
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
      100 GETIMPORT                        R6 K45 [Enum.RigLabel.LeftToes]
      102 SETTABLE                         R6 R4 R5
      103 GETIMPORT                        R5 K45 [Enum.RigLabel.LeftToes]
      105 LOADNIL                          R6
      106 SETTABLE                         R6 R4 R5
      107 GETIMPORT                        R5 K47 [Enum.RigLabel.RightHip]
      109 GETIMPORT                        R6 K49 [Enum.RigLabel.RightKnee]
      111 SETTABLE                         R6 R4 R5
      112 GETIMPORT                        R5 K49 [Enum.RigLabel.RightKnee]
      114 GETIMPORT                        R6 K51 [Enum.RigLabel.RightAnkle]
      116 SETTABLE                         R6 R4 R5
      117 GETIMPORT                        R5 K51 [Enum.RigLabel.RightAnkle]
      119 GETIMPORT                        R6 K53 [Enum.RigLabel.RightToes]
      121 SETTABLE                         R6 R4 R5
      122 GETIMPORT                        R5 K53 [Enum.RigLabel.RightToes]
      124 LOADNIL                          R6
      125 SETTABLE                         R6 R4 R5
      126 DUPCLOSURE                       R5 K54 [PROTO_0]
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R5 R3 K55 ["clearMapping"]
      130 DUPCLOSURE                       R5 K56 [PROTO_1]
      131 SETTABLEKS                       R5 R3 K57 ["StepAnimations"]
      133 NEWTABLE                         R5 0 22
      135 GETIMPORT                        R6 K11 [Enum.RigLabel.Root]
      137 GETIMPORT                        R7 K13 [Enum.RigLabel.Pelvis]
      139 GETIMPORT                        R8 K15 [Enum.RigLabel.Waist]
      141 GETIMPORT                        R9 K17 [Enum.RigLabel.Chest]
      143 GETIMPORT                        R10 K19 [Enum.RigLabel.Neck]
      145 GETIMPORT                        R11 K21 [Enum.RigLabel.HeadBase]
      147 GETIMPORT                        R12 K23 [Enum.RigLabel.LeftClavicle]
      149 GETIMPORT                        R13 K25 [Enum.RigLabel.LeftShoulder]
      151 GETIMPORT                        R14 K27 [Enum.RigLabel.LeftElbow]
      153 GETIMPORT                        R15 K29 [Enum.RigLabel.LeftWrist]
      155 GETIMPORT                        R16 K31 [Enum.RigLabel.RightClavicle]
      157 GETIMPORT                        R17 K33 [Enum.RigLabel.RightShoulder]
      159 GETIMPORT                        R18 K35 [Enum.RigLabel.RightElbow]
      161 GETIMPORT                        R19 K37 [Enum.RigLabel.RightWrist]
      163 GETIMPORT                        R20 K39 [Enum.RigLabel.LeftHip]
      165 GETIMPORT                        R21 K41 [Enum.RigLabel.LeftKnee]
      167 SETLIST                          R5 R6 16 [1]
      169 GETIMPORT                        R6 K43 [Enum.RigLabel.LeftAnkle]
      171 GETIMPORT                        R7 K45 [Enum.RigLabel.LeftToes]
      173 GETIMPORT                        R8 K47 [Enum.RigLabel.RightHip]
      175 GETIMPORT                        R9 K49 [Enum.RigLabel.RightKnee]
      177 GETIMPORT                        R10 K51 [Enum.RigLabel.RightAnkle]
      179 GETIMPORT                        R11 K53 [Enum.RigLabel.RightToes]
      181 SETLIST                          R5 R6 6 [17]
      183 DUPCLOSURE                       R6 K58 [PROTO_2]
      184 CAPTURE                          VAL R2
      185 SETTABLEKS                       R6 R3 K59 ["clearTransforms"]
      187 DUPCLOSURE                       R6 K60 [PROTO_4]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R1
      193 SETTABLEKS                       R6 R3 K61 ["enforceTpose"]
      195 DUPCLOSURE                       R6 K62 [PROTO_5]
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R1
      198 SETTABLEKS                       R6 R3 K63 ["poseAsHrdTposeAdjustment"]
      200 DUPCLOSURE                       R6 K64 [PROTO_6]
      201 CAPTURE                          VAL R1
      202 SETTABLEKS                       R6 R3 K65 ["clearTposeAdjustment"]
      204 DUPCLOSURE                       R6 K66 [PROTO_7]
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R1
      207 SETTABLEKS                       R6 R3 K67 ["sampleTposeAdjustment"]
      209 DUPCLOSURE                       R6 K68 [PROTO_8]
      210 CAPTURE                          VAL R1
      211 SETTABLEKS                       R6 R3 K69 ["clearSize"]
      213 DUPCLOSURE                       R6 K70 [PROTO_9]
      214 CAPTURE                          VAL R1
      215 SETTABLEKS                       R6 R3 K71 ["automaticSize"]
      217 DUPCLOSURE                       R6 K72 [PROTO_10]
      218 CAPTURE                          VAL R1
      219 SETTABLEKS                       R6 R3 K73 ["clearRange"]
      221 RETURN                           R3 1
