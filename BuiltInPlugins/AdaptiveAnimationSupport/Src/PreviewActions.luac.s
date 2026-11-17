PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["applyTposeAdjustment"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["autoAll"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 -1
        7 CALL                             R2 -1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["addTPoseWaypoint"]
       11 LOADK                            R3 K2 ["Auto All"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearTposeAdjustment"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["clearMapping"]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+20]
       15 LOADK                            R4 K2 ["> DigitsRigDescription"]
       16 NAMECALL                         R2 R1 K3 ["QueryDescendants"]
       18 CALL                             R2 2 3
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K4 ["handRigLabels"]
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 FORGPREP                         R7
       26 MOVE                             R14 R11
       27 LOADNIL                          R15
       28 NAMECALL                         R12 R6 K5 ["SetJoint"]
       30 CALL                             R12 3 0
       31 FORGLOOP                         R7 2 ; [-6]
       33 FORGLOOP                         R2 2 ; [-14]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K6 ["clearTransforms"]
       38 MOVE                             R3 R1
       39 MOVE                             R4 R0
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K7 ["clearSize"]
       44 MOVE                             R3 R1
       45 MOVE                             R4 R0
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 2
       48 GETTABLEKS                       R2 R2 K8 ["addTPoseWaypoint"]
       50 LOADK                            R3 K9 ["Reset All"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["clearTransforms"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R0
        5 CALL                             R4 2 0
        6 JUMPIFNOTEQKS                    R3 K1 ["tpose"] ; [+7]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["applyTposeAdjustment"]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R0
       13 CALL                             R4 2 0
       14 JUMPIFNOT                        R2 ; [+4]
       15 LOADN                            R6 0
       16 NAMECALL                         R4 R2 K3 ["StepAnimations"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Utils"]
       20 GETTABLEKS                       R3 R3 K10 ["UndoUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagAdaptiveAnimationHandRigQoL"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K14 ["restorePreviewPose"]
       38 DUPCLOSURE                       R5 K15 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R5 R4 K16 ["autoAll"]
       44 DUPCLOSURE                       R5 K17 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R4 K18 ["resetAll"]
       50 DUPCLOSURE                       R5 K19 [PROTO_3]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R5 R4 K20 ["onPlaybackStopped"]
       54 RETURN                           R4 1
