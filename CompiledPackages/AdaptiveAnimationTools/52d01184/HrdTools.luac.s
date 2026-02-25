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
        8 JUMPIF                           R6 ; [+5]
        9 LOADK                            R8 K3 ["Bone"]
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+4]
       14 GETIMPORT                        R6 K6 [CFrame.identity]
       16 SETTABLEKS                       R6 R5 K7 ["Transform"]
       18 FORGLOOP                         R1 2 ; [-15]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETIMPORT                        R3 K3 [CFrame.fromOrientation]
        7 LOADN                            R4 0
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 CALL                             R3 3 1
       11 LOADK                            R4 K4 [{-1, 0, 0}]
       12 MUL                              R2 R3 R4
       13 GETIMPORT                        R4 K3 [CFrame.fromOrientation]
       15 LOADN                            R5 0
       16 LOADN                            R6 0
       17 LOADK                            R7 K5 [0]
       18 CALL                             R4 3 1
       19 LOADK                            R5 K6 [{1, 0, 0}]
       20 MUL                              R3 R4 R5
       21 NEWTABLE                         R4 8 0
       23 GETIMPORT                        R5 K10 [Enum.RigLabel.LeftShoulder]
       25 SETTABLE                         R2 R4 R5
       26 GETIMPORT                        R5 K12 [Enum.RigLabel.LeftElbow]
       28 SETTABLE                         R2 R4 R5
       29 GETIMPORT                        R5 K14 [Enum.RigLabel.RightShoulder]
       31 SETTABLE                         R3 R4 R5
       32 GETIMPORT                        R5 K16 [Enum.RigLabel.RightElbow]
       34 SETTABLE                         R3 R4 R5
       35 GETIMPORT                        R5 K18 [Enum.RigLabel.LeftHip]
       37 LOADK                            R6 K19 [{0, -1, 0}]
       38 SETTABLE                         R6 R4 R5
       39 GETIMPORT                        R5 K21 [Enum.RigLabel.LeftKnee]
       41 LOADK                            R6 K19 [{0, -1, 0}]
       42 SETTABLE                         R6 R4 R5
       43 GETIMPORT                        R5 K23 [Enum.RigLabel.RightHip]
       45 LOADK                            R6 K19 [{0, -1, 0}]
       46 SETTABLE                         R6 R4 R5
       47 GETIMPORT                        R5 K25 [Enum.RigLabel.RightKnee]
       49 LOADK                            R6 K19 [{0, -1, 0}]
       50 SETTABLE                         R6 R4 R5
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R5 R8 K26 ["allRigLabels"]
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 FORGPREP                         R5
       57 GETUPVAL                         R11 2
       58 GETTABLE                         R10 R11 R9
       59 MOVE                             R11 R4
       60 JUMPIFNOT                        R11 ; [+1]
       61 GETTABLE                         R11 R4 R9
       62 JUMPIFNOT                        R10 ; [+47]
       63 JUMPIFNOT                        R11 ; [+46]
       64 MOVE                             R16 R9
       65 NAMECALL                         R14 R0 K27 ["GetJoint"]
       67 CALL                             R14 2 1
       68 MOVE                             R12 R14
       69 MOVE                             R15 R10
       70 NAMECALL                         R13 R0 K27 ["GetJoint"]
       72 CALL                             R13 2 1
       73 JUMPIFNOT                        R12 ; [+36]
       74 JUMPIFNOT                        R13 ; [+35]
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R14 R15 K28 ["getJointPosition"]
       78 MOVE                             R15 R12
       79 CALL                             R14 1 1
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R15 R16 K28 ["getJointPosition"]
       83 MOVE                             R16 R13
       84 CALL                             R15 1 1
       85 SUB                              R16 R15 R14
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R17 R18 K29 ["getGlobalCoordinateFrame"]
       89 MOVE                             R18 R12
       90 CALL                             R17 1 1
       91 GETIMPORT                        R19 K31 [CFrame.fromRotationBetweenVectors]
       93 MOVE                             R20 R16
       94 MOVE                             R21 R11
       95 CALL                             R19 2 1
       96 GETTABLEKS                       R20 R17 K32 ["Rotation"]
       98 MUL                              R18 R19 R20
       99 GETUPVAL                         R20 1
      100 GETTABLEKS                       R19 R20 K33 ["setGlobalCoordinateFrame"]
      102 MOVE                             R20 R12
      103 GETIMPORT                        R22 K35 [CFrame.new]
      105 GETTABLEKS                       R23 R17 K36 ["Position"]
      107 CALL                             R22 1 1
      108 MUL                              R21 R22 R18
      109 CALL                             R19 2 0
      110 FORGLOOP                         R5 2 ; [-54]
      112 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       10 NEWTABLE                         R2 16 0
       12 NEWTABLE                         R3 32 0
       14 GETIMPORT                        R4 K9 [Enum.RigLabel.Root]
       16 GETIMPORT                        R5 K11 [Enum.RigLabel.Pelvis]
       18 SETTABLE                         R5 R3 R4
       19 GETIMPORT                        R4 K11 [Enum.RigLabel.Pelvis]
       21 GETIMPORT                        R5 K13 [Enum.RigLabel.Waist]
       23 SETTABLE                         R5 R3 R4
       24 GETIMPORT                        R4 K13 [Enum.RigLabel.Waist]
       26 GETIMPORT                        R5 K15 [Enum.RigLabel.Chest]
       28 SETTABLE                         R5 R3 R4
       29 GETIMPORT                        R4 K15 [Enum.RigLabel.Chest]
       31 GETIMPORT                        R5 K17 [Enum.RigLabel.Neck]
       33 SETTABLE                         R5 R3 R4
       34 GETIMPORT                        R4 K17 [Enum.RigLabel.Neck]
       36 GETIMPORT                        R5 K19 [Enum.RigLabel.HeadBase]
       38 SETTABLE                         R5 R3 R4
       39 GETIMPORT                        R4 K19 [Enum.RigLabel.HeadBase]
       41 LOADNIL                          R5
       42 SETTABLE                         R5 R3 R4
       43 GETIMPORT                        R4 K21 [Enum.RigLabel.LeftClavicle]
       45 GETIMPORT                        R5 K23 [Enum.RigLabel.LeftShoulder]
       47 SETTABLE                         R5 R3 R4
       48 GETIMPORT                        R4 K23 [Enum.RigLabel.LeftShoulder]
       50 GETIMPORT                        R5 K25 [Enum.RigLabel.LeftElbow]
       52 SETTABLE                         R5 R3 R4
       53 GETIMPORT                        R4 K25 [Enum.RigLabel.LeftElbow]
       55 GETIMPORT                        R5 K27 [Enum.RigLabel.LeftWrist]
       57 SETTABLE                         R5 R3 R4
       58 GETIMPORT                        R4 K27 [Enum.RigLabel.LeftWrist]
       60 LOADNIL                          R5
       61 SETTABLE                         R5 R3 R4
       62 GETIMPORT                        R4 K29 [Enum.RigLabel.RightClavicle]
       64 GETIMPORT                        R5 K31 [Enum.RigLabel.RightShoulder]
       66 SETTABLE                         R5 R3 R4
       67 GETIMPORT                        R4 K31 [Enum.RigLabel.RightShoulder]
       69 GETIMPORT                        R5 K33 [Enum.RigLabel.RightElbow]
       71 SETTABLE                         R5 R3 R4
       72 GETIMPORT                        R4 K33 [Enum.RigLabel.RightElbow]
       74 GETIMPORT                        R5 K35 [Enum.RigLabel.RightWrist]
       76 SETTABLE                         R5 R3 R4
       77 GETIMPORT                        R4 K35 [Enum.RigLabel.RightWrist]
       79 LOADNIL                          R5
       80 SETTABLE                         R5 R3 R4
       81 GETIMPORT                        R4 K37 [Enum.RigLabel.LeftHip]
       83 GETIMPORT                        R5 K39 [Enum.RigLabel.LeftKnee]
       85 SETTABLE                         R5 R3 R4
       86 GETIMPORT                        R4 K39 [Enum.RigLabel.LeftKnee]
       88 GETIMPORT                        R5 K41 [Enum.RigLabel.LeftAnkle]
       90 SETTABLE                         R5 R3 R4
       91 GETIMPORT                        R4 K41 [Enum.RigLabel.LeftAnkle]
       93 GETIMPORT                        R5 K43 [Enum.RigLabel.LeftToes]
       95 SETTABLE                         R5 R3 R4
       96 GETIMPORT                        R4 K43 [Enum.RigLabel.LeftToes]
       98 LOADNIL                          R5
       99 SETTABLE                         R5 R3 R4
      100 GETIMPORT                        R4 K45 [Enum.RigLabel.RightHip]
      102 GETIMPORT                        R5 K47 [Enum.RigLabel.RightKnee]
      104 SETTABLE                         R5 R3 R4
      105 GETIMPORT                        R4 K47 [Enum.RigLabel.RightKnee]
      107 GETIMPORT                        R5 K49 [Enum.RigLabel.RightAnkle]
      109 SETTABLE                         R5 R3 R4
      110 GETIMPORT                        R4 K49 [Enum.RigLabel.RightAnkle]
      112 GETIMPORT                        R5 K51 [Enum.RigLabel.RightToes]
      114 SETTABLE                         R5 R3 R4
      115 GETIMPORT                        R4 K51 [Enum.RigLabel.RightToes]
      117 LOADNIL                          R5
      118 SETTABLE                         R5 R3 R4
      119 DUPCLOSURE                       R4 K52 [PROTO_0]
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R4 R2 K53 ["clearMapping"]
      123 DUPCLOSURE                       R4 K54 [PROTO_1]
      124 SETTABLEKS                       R4 R2 K55 ["StepAnimations"]
      126 DUPCLOSURE                       R4 K56 [PROTO_2]
      127 SETTABLEKS                       R4 R2 K57 ["clearTransforms"]
      129 DUPCLOSURE                       R4 K58 [PROTO_3]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R4 R2 K59 ["enforceTpose"]
      135 DUPCLOSURE                       R4 K60 [PROTO_4]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R4 R2 K61 ["poseAsHrdTposeAdjustment"]
      140 DUPCLOSURE                       R4 K62 [PROTO_5]
      141 CAPTURE                          VAL R1
      142 SETTABLEKS                       R4 R2 K63 ["clearTposeAdjustment"]
      144 DUPCLOSURE                       R4 K64 [PROTO_6]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R4 R2 K65 ["sampleTposeAdjustment"]
      149 DUPCLOSURE                       R4 K66 [PROTO_7]
      150 CAPTURE                          VAL R1
      151 SETTABLEKS                       R4 R2 K67 ["clearSize"]
      153 DUPCLOSURE                       R4 K68 [PROTO_8]
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R4 R2 K69 ["automaticSize"]
      157 DUPCLOSURE                       R4 K70 [PROTO_9]
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R4 R2 K71 ["clearRange"]
      161 RETURN                           R2 1
