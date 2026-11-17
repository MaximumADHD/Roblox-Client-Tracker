PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mirrorTransformMotor6DDelta"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
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
       36 JUMPIFNOT                        R15 ; [+56]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R15 R15 K3 ["isValidTJoint"]
       40 MOVE                             R16 R14
       41 CALL                             R15 1 1
       42 JUMPIFNOT                        R15 ; [+50]
       43 GETUPVAL                         R15 2
       44 GETTABLEKS                       R15 R15 K4 ["getJointTransform"]
       46 MOVE                             R16 R13
       47 CALL                             R15 1 1
       48 GETUPVAL                         R16 2
       49 GETTABLEKS                       R16 R16 K4 ["getJointTransform"]
       51 MOVE                             R17 R14
       52 CALL                             R16 1 1
       53 JUMPIFNOT                        R15 ; [+39]
       54 JUMPIFNOT                        R16 ; [+38]
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
       77 JUMP                             ; [+6]
       78 GETUPVAL                         R20 3
       79 GETTABLEKS                       R20 R20 K13 ["mirrorTransformAnimationConstraint"]
       81 MOVE                             R21 R15
       82 CALL                             R20 1 1
       83 MOVE                             R19 R20
       84 NAMECALL                         R21 R18 K9 ["Inverse"]
       86 CALL                             R21 1 1
       87 MUL                              R20 R21 R19
       88 MOVE                             R23 R12
       89 MOVE                             R24 R20
       90 NAMECALL                         R21 R1 K14 ["SetTposeAdjustment"]
       92 CALL                             R21 3 0
       93 FORGLOOP                         R4 2 ; [-82]
       95 GETUPVAL                         R4 2
       96 GETTABLEKS                       R4 R4 K15 ["applyTposeAdjustment"]
       98 MOVE                             R5 R1
       99 MOVE                             R6 R2
      100 CALL                             R4 2 0
      101 JUMPIFNOT                        R3 ; [+4]
      102 LOADN                            R6 0
      103 NAMECALL                         R4 R3 K16 ["StepAnimations"]
      105 CALL                             R4 2 0
      106 RETURN                           R0 0

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
       25 NEWTABLE                         R4 0 8
       27 NEWTABLE                         R5 0 2
       29 GETIMPORT                        R6 K15 [Enum.RigLabel.LeftClavicle]
       31 GETIMPORT                        R7 K17 [Enum.RigLabel.RightClavicle]
       33 SETLIST                          R5 R6 2 [1]
       35 NEWTABLE                         R6 0 2
       37 GETIMPORT                        R7 K19 [Enum.RigLabel.LeftShoulder]
       39 GETIMPORT                        R8 K21 [Enum.RigLabel.RightShoulder]
       41 SETLIST                          R6 R7 2 [1]
       43 NEWTABLE                         R7 0 2
       45 GETIMPORT                        R8 K23 [Enum.RigLabel.LeftElbow]
       47 GETIMPORT                        R9 K25 [Enum.RigLabel.RightElbow]
       49 SETLIST                          R7 R8 2 [1]
       51 NEWTABLE                         R8 0 2
       53 GETIMPORT                        R9 K27 [Enum.RigLabel.LeftWrist]
       55 GETIMPORT                        R10 K29 [Enum.RigLabel.RightWrist]
       57 SETLIST                          R8 R9 2 [1]
       59 NEWTABLE                         R9 0 2
       61 GETIMPORT                        R10 K31 [Enum.RigLabel.LeftHip]
       63 GETIMPORT                        R11 K33 [Enum.RigLabel.RightHip]
       65 SETLIST                          R9 R10 2 [1]
       67 NEWTABLE                         R10 0 2
       69 GETIMPORT                        R11 K35 [Enum.RigLabel.LeftKnee]
       71 GETIMPORT                        R12 K37 [Enum.RigLabel.RightKnee]
       73 SETLIST                          R10 R11 2 [1]
       75 NEWTABLE                         R11 0 2
       77 GETIMPORT                        R12 K39 [Enum.RigLabel.LeftAnkle]
       79 GETIMPORT                        R13 K41 [Enum.RigLabel.RightAnkle]
       81 SETLIST                          R11 R12 2 [1]
       83 NEWTABLE                         R12 0 2
       85 GETIMPORT                        R13 K43 [Enum.RigLabel.LeftToeBase]
       87 GETIMPORT                        R14 K45 [Enum.RigLabel.RightToeBase]
       89 SETLIST                          R12 R13 2 [1]
       91 SETLIST                          R4 R5 8 [1]
       93 DUPCLOSURE                       R5 K46 [PROTO_0]
       94 CAPTURE                          VAL R2
       95 DUPCLOSURE                       R6 K47 [PROTO_1]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 DUPTABLE                         R7 K50 [{"copyAdjustments", "LR_PAIRS"}]
      101 SETTABLEKS                       R6 R7 K48 ["copyAdjustments"]
      103 SETTABLEKS                       R4 R7 K49 ["LR_PAIRS"]
      105 RETURN                           R7 1
