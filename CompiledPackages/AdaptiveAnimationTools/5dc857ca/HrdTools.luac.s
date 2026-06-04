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
       99 GETUPVAL                         R15 4
      100 GETTABLEKS                       R15 R15 K31 ["getJointPosition"]
      102 MOVE                             R16 R13
      103 CALL                             R15 1 1
      104 GETUPVAL                         R16 4
      105 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
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
      168 GETUPVAL                         R6 4
      169 GETTABLEKS                       R6 R6 K43 ["bodyRigLabels"]
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
      192 GETUPVAL                         R15 4
      193 GETTABLEKS                       R15 R15 K31 ["getJointPosition"]
      195 MOVE                             R16 R13
      196 CALL                             R15 1 1
      197 GETUPVAL                         R16 4
      198 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
      200 MOVE                             R17 R14
      201 CALL                             R16 1 1
      202 SUB                              R17 R16 R15
      203 GETTABLEKS                       R18 R17 K32 ["Magnitude"]
      205 LOADK                            R19 K33 [1E-06]
      206 JUMPIFLT                         R18 R19 ; [+30]
      208 GETTABLEKS                       R18 R12 K32 ["Magnitude"]
      210 LOADK                            R19 K33 [1E-06]
      211 JUMPIFLT                         R18 R19 ; [+25]
      213 GETUPVAL                         R18 4
      214 GETTABLEKS                       R18 R18 K44 ["getGlobalCoordinateFrame"]
      216 MOVE                             R19 R13
      217 CALL                             R18 1 1
      218 GETIMPORT                        R20 K41 [CFrame.fromRotationBetweenVectors]
      220 MOVE                             R21 R17
      221 MOVE                             R22 R12
      222 CALL                             R20 2 1
      223 GETTABLEKS                       R21 R18 K45 ["Rotation"]
      225 MUL                              R19 R20 R21
      226 GETUPVAL                         R20 4
      227 GETTABLEKS                       R20 R20 K46 ["setGlobalCoordinateFrame"]
      229 MOVE                             R21 R13
      230 GETIMPORT                        R23 K48 [CFrame.new]
      232 GETTABLEKS                       R24 R18 K49 ["Position"]
      234 CALL                             R23 1 1
      235 MUL                              R22 R23 R19
      236 CALL                             R20 2 0
      237 FORGLOOP                         R6 2 ; [-64]
      239 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_10:
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
       14 GETTABLEKS                       R3 R3 K7 ["getFFlagAdaptiveAnimationConstraints"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K8 ["hasSpine"]
       19 GETTABLEKS                       R4 R1 K9 ["spineLabel"]
       21 GETTABLEKS                       R5 R1 K10 ["hasPelvis"]
       23 GETTABLEKS                       R6 R1 K11 ["LeftToeBase"]
       25 GETTABLEKS                       R7 R1 K12 ["RightToeBase"]
       27 NEWTABLE                         R8 16 0
       29 NEWTABLE                         R9 32 0
       31 GETIMPORT                        R10 K16 [Enum.RigLabel.Chest]
       33 GETIMPORT                        R11 K18 [Enum.RigLabel.Neck]
       35 SETTABLE                         R11 R9 R10
       36 GETIMPORT                        R10 K18 [Enum.RigLabel.Neck]
       38 GETIMPORT                        R11 K20 [Enum.RigLabel.HeadBase]
       40 SETTABLE                         R11 R9 R10
       41 GETIMPORT                        R10 K20 [Enum.RigLabel.HeadBase]
       43 LOADNIL                          R11
       44 SETTABLE                         R11 R9 R10
       45 GETIMPORT                        R10 K22 [Enum.RigLabel.LeftClavicle]
       47 GETIMPORT                        R11 K24 [Enum.RigLabel.LeftShoulder]
       49 SETTABLE                         R11 R9 R10
       50 GETIMPORT                        R10 K24 [Enum.RigLabel.LeftShoulder]
       52 GETIMPORT                        R11 K26 [Enum.RigLabel.LeftElbow]
       54 SETTABLE                         R11 R9 R10
       55 GETIMPORT                        R10 K26 [Enum.RigLabel.LeftElbow]
       57 GETIMPORT                        R11 K28 [Enum.RigLabel.LeftWrist]
       59 SETTABLE                         R11 R9 R10
       60 GETIMPORT                        R10 K28 [Enum.RigLabel.LeftWrist]
       62 LOADNIL                          R11
       63 SETTABLE                         R11 R9 R10
       64 GETIMPORT                        R10 K30 [Enum.RigLabel.RightClavicle]
       66 GETIMPORT                        R11 K32 [Enum.RigLabel.RightShoulder]
       68 SETTABLE                         R11 R9 R10
       69 GETIMPORT                        R10 K32 [Enum.RigLabel.RightShoulder]
       71 GETIMPORT                        R11 K34 [Enum.RigLabel.RightElbow]
       73 SETTABLE                         R11 R9 R10
       74 GETIMPORT                        R10 K34 [Enum.RigLabel.RightElbow]
       76 GETIMPORT                        R11 K36 [Enum.RigLabel.RightWrist]
       78 SETTABLE                         R11 R9 R10
       79 GETIMPORT                        R10 K36 [Enum.RigLabel.RightWrist]
       81 LOADNIL                          R11
       82 SETTABLE                         R11 R9 R10
       83 GETIMPORT                        R10 K38 [Enum.RigLabel.LeftHip]
       85 GETIMPORT                        R11 K40 [Enum.RigLabel.LeftKnee]
       87 SETTABLE                         R11 R9 R10
       88 GETIMPORT                        R10 K40 [Enum.RigLabel.LeftKnee]
       90 GETIMPORT                        R11 K42 [Enum.RigLabel.LeftAnkle]
       92 SETTABLE                         R11 R9 R10
       93 GETIMPORT                        R10 K42 [Enum.RigLabel.LeftAnkle]
       95 SETTABLE                         R6 R9 R10
       96 LOADNIL                          R10
       97 SETTABLE                         R10 R9 R6
       98 GETIMPORT                        R10 K44 [Enum.RigLabel.RightHip]
      100 GETIMPORT                        R11 K46 [Enum.RigLabel.RightKnee]
      102 SETTABLE                         R11 R9 R10
      103 GETIMPORT                        R10 K46 [Enum.RigLabel.RightKnee]
      105 GETIMPORT                        R11 K48 [Enum.RigLabel.RightAnkle]
      107 SETTABLE                         R11 R9 R10
      108 GETIMPORT                        R10 K48 [Enum.RigLabel.RightAnkle]
      110 SETTABLE                         R7 R9 R10
      111 LOADNIL                          R10
      112 SETTABLE                         R10 R9 R7
      113 JUMPIFNOT                        R3 ; [+12]
      114 GETIMPORT                        R10 K50 [Enum.RigLabel.Root]
      116 GETIMPORT                        R11 K52 [Enum.RigLabel.Waist]
      118 SETTABLE                         R11 R9 R10
      119 GETIMPORT                        R10 K52 [Enum.RigLabel.Waist]
      121 SETTABLE                         R4 R9 R10
      122 GETIMPORT                        R10 K16 [Enum.RigLabel.Chest]
      124 SETTABLE                         R10 R9 R4
      125 JUMP                             ; [+27]
      126 JUMPIFNOT                        R5 ; [+16]
      127 GETIMPORT                        R10 K50 [Enum.RigLabel.Root]
      129 GETIMPORT                        R11 K54 [Enum.RigLabel.Pelvis]
      131 SETTABLE                         R11 R9 R10
      132 GETIMPORT                        R10 K54 [Enum.RigLabel.Pelvis]
      134 GETIMPORT                        R11 K52 [Enum.RigLabel.Waist]
      136 SETTABLE                         R11 R9 R10
      137 GETIMPORT                        R10 K52 [Enum.RigLabel.Waist]
      139 GETIMPORT                        R11 K16 [Enum.RigLabel.Chest]
      141 SETTABLE                         R11 R9 R10
      142 JUMP                             ; [+10]
      143 GETIMPORT                        R10 K50 [Enum.RigLabel.Root]
      145 GETIMPORT                        R11 K52 [Enum.RigLabel.Waist]
      147 SETTABLE                         R11 R9 R10
      148 GETIMPORT                        R10 K52 [Enum.RigLabel.Waist]
      150 GETIMPORT                        R11 K16 [Enum.RigLabel.Chest]
      152 SETTABLE                         R11 R9 R10
      153 DUPCLOSURE                       R10 K55 [PROTO_0]
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R10 R8 K56 ["clearMapping"]
      157 DUPCLOSURE                       R10 K57 [PROTO_1]
      158 SETTABLEKS                       R10 R8 K58 ["StepAnimations"]
      160 JUMPIFNOT                        R3 ; [+48]
      161 NEWTABLE                         R10 0 22
      163 GETIMPORT                        R11 K50 [Enum.RigLabel.Root]
      165 GETIMPORT                        R12 K52 [Enum.RigLabel.Waist]
      167 MOVE                             R13 R4
      168 GETIMPORT                        R14 K16 [Enum.RigLabel.Chest]
      170 GETIMPORT                        R15 K18 [Enum.RigLabel.Neck]
      172 GETIMPORT                        R16 K20 [Enum.RigLabel.HeadBase]
      174 GETIMPORT                        R17 K22 [Enum.RigLabel.LeftClavicle]
      176 GETIMPORT                        R18 K24 [Enum.RigLabel.LeftShoulder]
      178 GETIMPORT                        R19 K26 [Enum.RigLabel.LeftElbow]
      180 GETIMPORT                        R20 K28 [Enum.RigLabel.LeftWrist]
      182 GETIMPORT                        R21 K30 [Enum.RigLabel.RightClavicle]
      184 GETIMPORT                        R22 K32 [Enum.RigLabel.RightShoulder]
      186 GETIMPORT                        R23 K34 [Enum.RigLabel.RightElbow]
      188 GETIMPORT                        R24 K36 [Enum.RigLabel.RightWrist]
      190 GETIMPORT                        R25 K38 [Enum.RigLabel.LeftHip]
      192 GETIMPORT                        R26 K40 [Enum.RigLabel.LeftKnee]
      194 SETLIST                          R10 R11 16 [1]
      196 GETIMPORT                        R11 K42 [Enum.RigLabel.LeftAnkle]
      198 MOVE                             R12 R6
      199 GETIMPORT                        R13 K44 [Enum.RigLabel.RightHip]
      201 GETIMPORT                        R14 K46 [Enum.RigLabel.RightKnee]
      203 GETIMPORT                        R15 K48 [Enum.RigLabel.RightAnkle]
      205 MOVE                             R16 R7
      206 SETLIST                          R10 R11 6 [17]
      208 JUMP                             ; [+96]
      209 JUMPIFNOT                        R5 ; [+49]
      210 NEWTABLE                         R10 0 22
      212 GETIMPORT                        R11 K50 [Enum.RigLabel.Root]
      214 GETIMPORT                        R12 K54 [Enum.RigLabel.Pelvis]
      216 GETIMPORT                        R13 K52 [Enum.RigLabel.Waist]
      218 GETIMPORT                        R14 K16 [Enum.RigLabel.Chest]
      220 GETIMPORT                        R15 K18 [Enum.RigLabel.Neck]
      222 GETIMPORT                        R16 K20 [Enum.RigLabel.HeadBase]
      224 GETIMPORT                        R17 K22 [Enum.RigLabel.LeftClavicle]
      226 GETIMPORT                        R18 K24 [Enum.RigLabel.LeftShoulder]
      228 GETIMPORT                        R19 K26 [Enum.RigLabel.LeftElbow]
      230 GETIMPORT                        R20 K28 [Enum.RigLabel.LeftWrist]
      232 GETIMPORT                        R21 K30 [Enum.RigLabel.RightClavicle]
      234 GETIMPORT                        R22 K32 [Enum.RigLabel.RightShoulder]
      236 GETIMPORT                        R23 K34 [Enum.RigLabel.RightElbow]
      238 GETIMPORT                        R24 K36 [Enum.RigLabel.RightWrist]
      240 GETIMPORT                        R25 K38 [Enum.RigLabel.LeftHip]
      242 GETIMPORT                        R26 K40 [Enum.RigLabel.LeftKnee]
      244 SETLIST                          R10 R11 16 [1]
      246 GETIMPORT                        R11 K42 [Enum.RigLabel.LeftAnkle]
      248 MOVE                             R12 R6
      249 GETIMPORT                        R13 K44 [Enum.RigLabel.RightHip]
      251 GETIMPORT                        R14 K46 [Enum.RigLabel.RightKnee]
      253 GETIMPORT                        R15 K48 [Enum.RigLabel.RightAnkle]
      255 MOVE                             R16 R7
      256 SETLIST                          R10 R11 6 [17]
      258 JUMP                             ; [+46]
      259 NEWTABLE                         R10 0 21
      261 GETIMPORT                        R11 K50 [Enum.RigLabel.Root]
      263 GETIMPORT                        R12 K52 [Enum.RigLabel.Waist]
      265 GETIMPORT                        R13 K16 [Enum.RigLabel.Chest]
      267 GETIMPORT                        R14 K18 [Enum.RigLabel.Neck]
      269 GETIMPORT                        R15 K20 [Enum.RigLabel.HeadBase]
      271 GETIMPORT                        R16 K22 [Enum.RigLabel.LeftClavicle]
      273 GETIMPORT                        R17 K24 [Enum.RigLabel.LeftShoulder]
      275 GETIMPORT                        R18 K26 [Enum.RigLabel.LeftElbow]
      277 GETIMPORT                        R19 K28 [Enum.RigLabel.LeftWrist]
      279 GETIMPORT                        R20 K30 [Enum.RigLabel.RightClavicle]
      281 GETIMPORT                        R21 K32 [Enum.RigLabel.RightShoulder]
      283 GETIMPORT                        R22 K34 [Enum.RigLabel.RightElbow]
      285 GETIMPORT                        R23 K36 [Enum.RigLabel.RightWrist]
      287 GETIMPORT                        R24 K38 [Enum.RigLabel.LeftHip]
      289 GETIMPORT                        R25 K40 [Enum.RigLabel.LeftKnee]
      291 GETIMPORT                        R26 K42 [Enum.RigLabel.LeftAnkle]
      293 SETLIST                          R10 R11 16 [1]
      295 MOVE                             R11 R6
      296 GETIMPORT                        R12 K44 [Enum.RigLabel.RightHip]
      298 GETIMPORT                        R13 K46 [Enum.RigLabel.RightKnee]
      300 GETIMPORT                        R14 K48 [Enum.RigLabel.RightAnkle]
      302 MOVE                             R15 R7
      303 SETLIST                          R10 R11 5 [17]
      305 DUPCLOSURE                       R11 K59 [PROTO_2]
      306 CAPTURE                          VAL R2
      307 SETTABLEKS                       R11 R8 K60 ["clearTransforms"]
      309 DUPCLOSURE                       R11 K61 [PROTO_4]
      310 CAPTURE                          VAL R8
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R10
      313 CAPTURE                          VAL R9
      314 CAPTURE                          VAL R1
      315 SETTABLEKS                       R11 R8 K62 ["enforceTpose"]
      317 DUPCLOSURE                       R11 K63 [PROTO_5]
      318 CAPTURE                          VAL R8
      319 CAPTURE                          VAL R1
      320 SETTABLEKS                       R11 R8 K64 ["poseAsHrdTposeAdjustment"]
      322 DUPCLOSURE                       R11 K65 [PROTO_6]
      323 CAPTURE                          VAL R1
      324 SETTABLEKS                       R11 R8 K66 ["clearTposeAdjustment"]
      326 DUPCLOSURE                       R11 K67 [PROTO_7]
      327 CAPTURE                          VAL R8
      328 CAPTURE                          VAL R1
      329 SETTABLEKS                       R11 R8 K68 ["sampleTposeAdjustment"]
      331 DUPCLOSURE                       R11 K69 [PROTO_8]
      332 CAPTURE                          VAL R1
      333 SETTABLEKS                       R11 R8 K70 ["clearSize"]
      335 DUPCLOSURE                       R11 K71 [PROTO_9]
      336 CAPTURE                          VAL R1
      337 SETTABLEKS                       R11 R8 K72 ["automaticSize"]
      339 DUPCLOSURE                       R11 K73 [PROTO_10]
      340 CAPTURE                          VAL R1
      341 SETTABLEKS                       R11 R8 K74 ["clearRange"]
      343 RETURN                           R8 1
