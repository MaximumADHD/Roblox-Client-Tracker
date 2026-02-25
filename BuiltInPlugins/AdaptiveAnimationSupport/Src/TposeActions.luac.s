PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mirrorTransformMotor6D"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["addTPoseWaypoint"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 0
        8 GETUPVAL                         R4 1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEN                        R9 R8 1
       13 GETTABLEN                        R10 R8 2
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 JUMPIFNOTEQKS                    R0 K1 ["left"] ; [+4]
       18 MOVE                             R11 R9
       19 MOVE                             R12 R10
       20 JUMP                             ; [+2]
       21 MOVE                             R11 R10
       22 MOVE                             R12 R9
       23 MOVE                             R15 R11
       24 NAMECALL                         R13 R1 K2 ["GetJoint"]
       26 CALL                             R13 2 1
       27 MOVE                             R16 R12
       28 NAMECALL                         R14 R1 K2 ["GetJoint"]
       30 CALL                             R14 2 1
       31 JUMPIFNOT                        R13 ; [+77]
       32 GETUPVAL                         R16 2
       33 GETTABLEKS                       R15 R16 K3 ["isValidTJoint"]
       35 MOVE                             R16 R13
       36 CALL                             R15 1 1
       37 JUMPIFNOT                        R15 ; [+71]
       38 JUMPIFNOT                        R14 ; [+70]
       39 GETUPVAL                         R16 2
       40 GETTABLEKS                       R15 R16 K3 ["isValidTJoint"]
       42 MOVE                             R16 R14
       43 CALL                             R15 1 1
       44 JUMPIFNOT                        R15 ; [+64]
       45 GETUPVAL                         R16 2
       46 GETTABLEKS                       R15 R16 K4 ["getJointTransform"]
       48 MOVE                             R16 R13
       49 CALL                             R15 1 1
       50 GETUPVAL                         R17 2
       51 GETTABLEKS                       R16 R17 K4 ["getJointTransform"]
       53 MOVE                             R17 R14
       54 CALL                             R16 1 1
       55 JUMPIFNOT                        R15 ; [+53]
       56 JUMPIFNOT                        R16 ; [+52]
       57 MOVE                             R19 R12
       58 NAMECALL                         R17 R1 K5 ["GetTposeAdjustment"]
       60 CALL                             R17 2 1
       61 NAMECALL                         R19 R17 K6 ["Inverse"]
       63 CALL                             R19 1 1
       64 MUL                              R18 R16 R19
       65 MOVE                             R19 R15
       66 LOADK                            R22 K7 ["Motor6D"]
       67 NAMECALL                         R20 R13 K8 ["IsA"]
       69 CALL                             R20 2 1
       70 JUMPIFNOT                        R20 ; [+6]
       71 GETUPVAL                         R20 3
       72 GETTABLEKS                       R19 R20 K9 ["mirrorTransformMotor6D"]
       74 MOVE                             R20 R15
       75 CALL                             R19 1 1
       76 JUMP                             ; [+23]
       77 GETUPVAL                         R20 4
       78 CALL                             R20 0 1
       79 JUMPIFNOT                        R20 ; [+20]
       80 MOVE                             R22 R11
       81 NAMECALL                         R20 R1 K5 ["GetTposeAdjustment"]
       83 CALL                             R20 2 1
       84 JUMPIF                           R20 ; [+3]
       85 GETIMPORT                        R20 K12 [CFrame.new]
       87 CALL                             R20 0 1
       88 NAMECALL                         R22 R20 K6 ["Inverse"]
       90 CALL                             R22 1 1
       91 MUL                              R21 R15 R22
       92 GETUPVAL                         R23 5
       93 GETTABLEKS                       R22 R23 K13 ["computeMirroredWorldForCopy"]
       95 MOVE                             R23 R15
       96 MOVE                             R24 R21
       97 MOVE                             R25 R18
       98 CALL                             R22 3 1
       99 MOVE                             R19 R22
      100 NAMECALL                         R21 R18 K6 ["Inverse"]
      102 CALL                             R21 1 1
      103 MUL                              R20 R21 R19
      104 MOVE                             R23 R12
      105 MOVE                             R24 R20
      106 NAMECALL                         R21 R1 K14 ["SetTposeAdjustment"]
      108 CALL                             R21 3 0
      109 FORGLOOP                         R4 2 ; [-98]
      111 GETUPVAL                         R5 2
      112 GETTABLEKS                       R4 R5 K15 ["applyTposeAdjustment"]
      114 MOVE                             R5 R1
      115 MOVE                             R6 R2
      116 CALL                             R4 2 0
      117 JUMPIFNOT                        R3 ; [+4]
      118 LOADN                            R6 0
      119 NAMECALL                         R4 R3 K16 ["StepAnimations"]
      121 CALL                             R4 2 0
      122 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["SymmetryUtils"]
       16 GETTABLEKS                       R3 R1 K9 ["TransformUtils"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Utils"]
       24 GETTABLEKS                       R5 R6 K12 ["UndoUtils"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Flags"]
       33 GETTABLEKS                       R6 R7 K14 ["getFFlagAdaptiveAnimationConstraints"]
       35 CALL                             R5 1 1
       36 NEWTABLE                         R6 0 8
       38 NEWTABLE                         R7 0 2
       40 GETIMPORT                        R8 K18 [Enum.RigLabel.LeftClavicle]
       42 GETIMPORT                        R9 K20 [Enum.RigLabel.RightClavicle]
       44 SETLIST                          R7 R8 2 [1]
       46 NEWTABLE                         R8 0 2
       48 GETIMPORT                        R9 K22 [Enum.RigLabel.LeftShoulder]
       50 GETIMPORT                        R10 K24 [Enum.RigLabel.RightShoulder]
       52 SETLIST                          R8 R9 2 [1]
       54 NEWTABLE                         R9 0 2
       56 GETIMPORT                        R10 K26 [Enum.RigLabel.LeftElbow]
       58 GETIMPORT                        R11 K28 [Enum.RigLabel.RightElbow]
       60 SETLIST                          R9 R10 2 [1]
       62 NEWTABLE                         R10 0 2
       64 GETIMPORT                        R11 K30 [Enum.RigLabel.LeftWrist]
       66 GETIMPORT                        R12 K32 [Enum.RigLabel.RightWrist]
       68 SETLIST                          R10 R11 2 [1]
       70 NEWTABLE                         R11 0 2
       72 GETIMPORT                        R12 K34 [Enum.RigLabel.LeftHip]
       74 GETIMPORT                        R13 K36 [Enum.RigLabel.RightHip]
       76 SETLIST                          R11 R12 2 [1]
       78 NEWTABLE                         R12 0 2
       80 GETIMPORT                        R13 K38 [Enum.RigLabel.LeftKnee]
       82 GETIMPORT                        R14 K40 [Enum.RigLabel.RightKnee]
       84 SETLIST                          R12 R13 2 [1]
       86 NEWTABLE                         R13 0 2
       88 GETIMPORT                        R14 K42 [Enum.RigLabel.LeftAnkle]
       90 GETIMPORT                        R15 K44 [Enum.RigLabel.RightAnkle]
       92 SETLIST                          R13 R14 2 [1]
       94 NEWTABLE                         R14 0 2
       96 GETIMPORT                        R15 K46 [Enum.RigLabel.LeftToes]
       98 GETIMPORT                        R16 K48 [Enum.RigLabel.RightToes]
      100 SETLIST                          R14 R15 2 [1]
      102 SETLIST                          R6 R7 8 [1]
      104 DUPCLOSURE                       R7 K49 [PROTO_0]
      105 CAPTURE                          VAL R2
      106 DUPCLOSURE                       R8 K50 [PROTO_1]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R3
      113 DUPTABLE                         R9 K53 [{"copyAdjustments", "LR_PAIRS"}]
      114 SETTABLEKS                       R8 R9 K51 ["copyAdjustments"]
      116 SETTABLEKS                       R6 R9 K52 ["LR_PAIRS"]
      118 RETURN                           R9 1
