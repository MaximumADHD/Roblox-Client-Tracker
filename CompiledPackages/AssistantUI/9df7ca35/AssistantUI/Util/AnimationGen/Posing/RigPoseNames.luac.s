PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K2 ["Part1"]
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R2 R1 K3 ["Name"]
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 LOADK                            R3 K4 ["AnimationConstraint"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+15]
       19 GETTABLEKS                       R1 R0 K5 ["Attachment1"]
       21 JUMPIFEQKNIL                     R1 ; [+10]
       23 GETTABLEKS                       R3 R1 K6 ["Parent"]
       25 JUMPIFEQKNIL                     R3 ; [+6]
       27 GETTABLEKS                       R2 R1 K6 ["Parent"]
       29 GETTABLEKS                       R2 R2 K3 ["Name"]
       31 RETURN                           R2 1
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 LOADK                            R3 K7 ["Bone"]
       35 NAMECALL                         R1 R0 K1 ["IsA"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+3]
       39 GETTABLEKS                       R1 R0 K3 ["Name"]
       41 RETURN                           R1 1
       42 LOADNIL                          R1
       43 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"clipNameByRigName", "rigNameByClipName", "labelByJoint"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["clipNameByRigName"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["rigNameByClipName"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K2 ["labelByJoint"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantAnimationGenCustomRigPosing"]
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R2 1
       20 LOADK                            R5 K5 ["HumanoidRigDescription"]
       21 LOADB                            R6 1
       22 NAMECALL                         R3 R0 K6 ["FindFirstChildWhichIsA"]
       24 CALL                             R3 3 1
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R2 1
       28 JUMPIFEQKNIL                     R1 ; [+4]
       30 GETTABLEKS                       R4 R1 K7 ["poseNameByLabel"]
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K8 ["POSE_NAME_BY_LABEL"]
       36 MOVE                             R5 R4
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 MOVE                             R12 R8
       41 NAMECALL                         R10 R3 K9 ["GetJoint"]
       43 CALL                             R10 2 1
       44 JUMPIFEQKNIL                     R10 ; [+5]
       46 GETUPVAL                         R11 2
       47 MOVE                             R12 R10
       48 CALL                             R11 1 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R11
       51 JUMPIFEQKNIL                     R10 ; [+12]
       53 JUMPIFEQKNIL                     R11 ; [+10]
       55 GETTABLEKS                       R12 R2 K0 ["clipNameByRigName"]
       57 SETTABLE                         R9 R12 R11
       58 GETTABLEKS                       R12 R2 K1 ["rigNameByClipName"]
       60 SETTABLE                         R11 R12 R9
       61 GETTABLEKS                       R12 R2 K2 ["labelByJoint"]
       63 SETTABLE                         R8 R12 R10
       64 FORGLOOP                         R5 2 ; [-25]
       66 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["clipNameByRigName"]
        2 GETTABLE                         R3 R4 R1
        3 OR                               R2 R3 R1
        4 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["rigNameByClipName"]
        2 GETTABLE                         R3 R4 R1
        3 OR                               R2 R3 R1
        4 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["toClipName"]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R6
       11 CALL                             R8 2 1
       12 SETTABLE                         R7 R2 R8
       13 FORGLOOP                         R3 2 ; [-8]
       15 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["toRigName"]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R6
       11 CALL                             R8 2 1
       12 SETTABLE                         R7 R2 R8
       13 FORGLOOP                         R3 2 ; [-8]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["ClipSkeleton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Flags"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 NEWTABLE                         R4 8 0
       26 DUPCLOSURE                       R5 K12 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K13 ["fromRig"]
       32 DUPCLOSURE                       R5 K14 [PROTO_2]
       33 SETTABLEKS                       R5 R4 K15 ["toClipName"]
       35 DUPCLOSURE                       R5 K16 [PROTO_3]
       36 SETTABLEKS                       R5 R4 K17 ["toRigName"]
       38 DUPCLOSURE                       R5 K18 [PROTO_4]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K19 ["renameTransformsToClip"]
       42 DUPCLOSURE                       R5 K20 [PROTO_5]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R5 R4 K21 ["renameTransformsToRig"]
       46 RETURN                           R4 1
