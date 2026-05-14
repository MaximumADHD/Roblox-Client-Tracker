PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.RigLabel.LeftToeBase]
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mirrorTransformMotor6DDelta"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["addTPoseWaypoint"]
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
       31 GETUPVAL                         R15 2
       32 GETTABLEKS                       R15 R15 K3 ["isValidTJoint"]
       34 MOVE                             R16 R13
       35 CALL                             R15 1 1
       36 JUMPIFNOT                        R15 ; [+59]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R15 R15 K3 ["isValidTJoint"]
       40 MOVE                             R16 R14
       41 CALL                             R15 1 1
       42 JUMPIFNOT                        R15 ; [+53]
       43 GETUPVAL                         R15 2
       44 GETTABLEKS                       R15 R15 K4 ["getJointTransform"]
       46 MOVE                             R16 R13
       47 CALL                             R15 1 1
       48 GETUPVAL                         R16 2
       49 GETTABLEKS                       R16 R16 K4 ["getJointTransform"]
       51 MOVE                             R17 R14
       52 CALL                             R16 1 1
       53 JUMPIFNOT                        R15 ; [+42]
       54 JUMPIFNOT                        R16 ; [+41]
       55 MOVE                             R19 R12
       56 NAMECALL                         R17 R1 K5 ["GetTposeAdjustment"]
       58 CALL                             R17 2 1
       59 JUMPIF                           R17 ; [+2]
       60 GETIMPORT                        R17 K8 [CFrame.identity]
       62 NAMECALL                         R19 R17 K9 ["Inverse"]
       64 CALL                             R19 1 1
       65 MUL                              R18 R16 R19
       66 MOVE                             R19 R15
       67 LOADK                            R22 K10 ["Motor6D"]
       68 NAMECALL                         R20 R13 K11 ["IsA"]
       70 CALL                             R20 2 1
       71 JUMPIFNOT                        R20 ; [+6]
       72 GETUPVAL                         R19 3
       73 GETTABLEKS                       R19 R19 K12 ["mirrorTransformMotor6DDelta"]
       75 MOVE                             R20 R15
       76 CALL                             R19 1 1
       77 JUMP                             ; [+9]
       78 GETUPVAL                         R20 4
       79 CALL                             R20 0 1
       80 JUMPIFNOT                        R20 ; [+6]
       81 GETUPVAL                         R20 3
       82 GETTABLEKS                       R20 R20 K13 ["mirrorTransformAnimationConstraint"]
       84 MOVE                             R21 R15
       85 CALL                             R20 1 1
       86 MOVE                             R19 R20
       87 NAMECALL                         R21 R18 K9 ["Inverse"]
       89 CALL                             R21 1 1
       90 MUL                              R20 R21 R19
       91 MOVE                             R23 R12
       92 MOVE                             R24 R20
       93 NAMECALL                         R21 R1 K14 ["SetTposeAdjustment"]
       95 CALL                             R21 3 0
       96 FORGLOOP                         R4 2 ; [-85]
       98 GETUPVAL                         R4 2
       99 GETTABLEKS                       R4 R4 K15 ["applyTposeAdjustment"]
      101 MOVE                             R5 R1
      102 MOVE                             R6 R2
      103 CALL                             R4 2 0
      104 JUMPIFNOT                        R3 ; [+4]
      105 LOADN                            R6 0
      106 NAMECALL                         R4 R3 K16 ["StepAnimations"]
      108 CALL                             R4 2 0
      109 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["SymmetryUtils"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Utils"]
       22 GETTABLEKS                       R4 R4 K11 ["UndoUtils"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Flags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFFlagAdaptiveAnimationConstraints"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K15 [pcall]
       36 DUPCLOSURE                       R6 K16 [PROTO_0]
       37 CALL                             R5 1 2
       38 JUMPIFNOT                        R5 ; [+2]
       39 MOVE                             R7 R6
       40 JUMP                             ; [+2]
       41 GETIMPORT                        R7 K20 [Enum.RigLabel.LeftToes]
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETIMPORT                        R8 K22 [Enum.RigLabel.RightToeBase]
       46 JUMP                             ; [+2]
       47 GETIMPORT                        R8 K24 [Enum.RigLabel.RightToes]
       49 NEWTABLE                         R9 0 8
       51 NEWTABLE                         R10 0 2
       53 GETIMPORT                        R11 K26 [Enum.RigLabel.LeftClavicle]
       55 GETIMPORT                        R12 K28 [Enum.RigLabel.RightClavicle]
       57 SETLIST                          R10 R11 2 [1]
       59 NEWTABLE                         R11 0 2
       61 GETIMPORT                        R12 K30 [Enum.RigLabel.LeftShoulder]
       63 GETIMPORT                        R13 K32 [Enum.RigLabel.RightShoulder]
       65 SETLIST                          R11 R12 2 [1]
       67 NEWTABLE                         R12 0 2
       69 GETIMPORT                        R13 K34 [Enum.RigLabel.LeftElbow]
       71 GETIMPORT                        R14 K36 [Enum.RigLabel.RightElbow]
       73 SETLIST                          R12 R13 2 [1]
       75 NEWTABLE                         R13 0 2
       77 GETIMPORT                        R14 K38 [Enum.RigLabel.LeftWrist]
       79 GETIMPORT                        R15 K40 [Enum.RigLabel.RightWrist]
       81 SETLIST                          R13 R14 2 [1]
       83 NEWTABLE                         R14 0 2
       85 GETIMPORT                        R15 K42 [Enum.RigLabel.LeftHip]
       87 GETIMPORT                        R16 K44 [Enum.RigLabel.RightHip]
       89 SETLIST                          R14 R15 2 [1]
       91 NEWTABLE                         R15 0 2
       93 GETIMPORT                        R16 K46 [Enum.RigLabel.LeftKnee]
       95 GETIMPORT                        R17 K48 [Enum.RigLabel.RightKnee]
       97 SETLIST                          R15 R16 2 [1]
       99 NEWTABLE                         R16 0 2
      101 GETIMPORT                        R17 K50 [Enum.RigLabel.LeftAnkle]
      103 GETIMPORT                        R18 K52 [Enum.RigLabel.RightAnkle]
      105 SETLIST                          R16 R17 2 [1]
      107 NEWTABLE                         R17 0 2
      109 MOVE                             R18 R7
      110 MOVE                             R19 R8
      111 SETLIST                          R17 R18 2 [1]
      113 SETLIST                          R9 R10 8 [1]
      115 DUPCLOSURE                       R10 K53 [PROTO_1]
      116 CAPTURE                          VAL R2
      117 DUPCLOSURE                       R11 K54 [PROTO_2]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 DUPTABLE                         R12 K57 [{"copyAdjustments", "LR_PAIRS"}]
      124 SETTABLEKS                       R11 R12 K55 ["copyAdjustments"]
      126 SETTABLEKS                       R9 R12 K56 ["LR_PAIRS"]
      128 RETURN                           R12 1
