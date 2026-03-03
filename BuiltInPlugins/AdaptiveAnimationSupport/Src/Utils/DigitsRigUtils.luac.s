PROTO_0:
        0 LOADK                            R3 K0 ["HumanoidRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R1 K2 ["body"]
        6 RETURN                           R1 1
        7 LOADK                            R3 K3 ["DigitsRigDescription"]
        8 NAMECALL                         R1 R0 K1 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+16]
       12 GETTABLEKS                       R1 R0 K4 ["Side"]
       14 GETIMPORT                        R2 K8 [Enum.DigitsRigDescriptionSide.Left]
       16 JUMPIFNOTEQ                      R1 R2 ; [+3]
       18 LOADK                            R2 K9 ["leftHand"]
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K11 [Enum.DigitsRigDescriptionSide.Right]
       22 JUMPIFNOTEQ                      R1 R2 ; [+3]
       24 LOADK                            R2 K12 ["rightHand"]
       25 RETURN                           R2 1
       26 LOADK                            R2 K13 ["hand"]
       27 RETURN                           R2 1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["handRigLabels"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["GetJoint"]
        9 CALL                             R7 2 1
       10 JUMPIFNOTEQ                      R7 R1 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-8]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 LOADK                            R4 K1 ["Model"]
        4 NAMECALL                         R2 R1 K2 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R1 1
        9 LOADK                            R4 K1 ["Model"]
       10 NAMECALL                         R2 R0 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["handRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["handRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 NAMECALL                         R6 R0 K1 ["GetJoint"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+13]
       11 MOVE                             R9 R5
       12 NAMECALL                         R7 R0 K2 ["GetTposeAdjustment"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+2]
       16 GETIMPORT                        R7 K5 [CFrame.identity]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K6 ["setJointTransform"]
       21 MOVE                             R9 R6
       22 MOVE                             R10 R7
       23 CALL                             R8 2 0
       24 FORGLOOP                         R1 2 ; [-19]
       26 RETURN                           R0 0

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 SETTABLEKS                       R4 R3 K11 ["getDescriptionKind"]
       26 DUPCLOSURE                       R4 K12 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K13 ["getRigLabelForJoint"]
       30 DUPCLOSURE                       R4 K14 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K15 ["findModelForDescription"]
       33 DUPCLOSURE                       R4 K16 [PROTO_3]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K17 ["clearTposeAdjustment"]
       37 DUPCLOSURE                       R4 K18 [PROTO_4]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K19 ["applyTposeAdjustment"]
       41 RETURN                           R3 1
