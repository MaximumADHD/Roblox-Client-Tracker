PROTO_0:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKNIL                     R1 ; [+6]
       11 LOADK                            R4 K3 ["Animator"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Motor6D"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+10]
        9 LOADK                            R9 K3 ["AnimationConstraint"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+5]
       14 LOADK                            R9 K4 ["Bone"]
       15 NAMECALL                         R7 R6 K2 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+4]
       19 GETIMPORT                        R7 K7 [CFrame.identity]
       21 SETTABLEKS                       R7 R6 K8 ["Transform"]
       23 FORGLOOP                         R2 2 ; [-20]
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K9 ["indexJointsByPoseName"]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 MOVE                             R3 R1
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLE                         R8 R2 R6
       38 JUMPIFEQKNIL                     R8 ; [+3]
       40 SETTABLEKS                       R7 R8 K8 ["Transform"]
       42 FORGLOOP                         R3 2 ; [-6]
       44 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Keyframe"]
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K2 [Instance.new]
       10 LOADK                            R8 K4 ["Pose"]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R5 R7 K5 ["Name"]
       14 SETTABLEKS                       R6 R7 K6 ["CFrame"]
       16 SETTABLEKS                       R1 R7 K7 ["Parent"]
       18 FORGLOOP                         R2 2 ; [-11]
       20 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R0 K0 ["clipNameByRigName"]
        8 GETTABLE                         R8 R9 R6
        9 JUMPIFEQKNIL                     R8 ; [+2]
       11 SETTABLE                         R7 R2 R8
       12 FORGLOOP                         R3 2 ; [-7]
       14 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["poseMap"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["poseMap"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 GETTABLE                         R8 R2 R6
       12 JUMPIFEQKNIL                     R8 ; [+9]
       14 GETTABLEKS                       R9 R8 K1 ["CFrame"]
       16 GETTABLEKS                       R11 R7 K1 ["CFrame"]
       18 NAMECALL                         R9 R9 K2 ["FuzzyEq"]
       20 CALL                             R9 2 1
       21 JUMPIF                           R9 ; [+2]
       22 LOADB                            R9 1
       23 RETURN                           R9 1
       24 FORGLOOP                         R3 2 ; [-14]
       26 LOADB                            R3 0
       27 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["rig"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["keyframeSequence"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R4 1
       13 GETTABLE                         R3 R4 R2
       14 JUMPIFNOTEQKNIL                  R3 ; [+9]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K1 ["fromSequence"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 GETUPVAL                         R4 1
       23 SETTABLE                         R3 R4 R2
       24 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R4 R3 K0 ["keyframeSequence"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 JUMPIFNOTEQKNIL                  R4 ; [+3]
       10 LOADNIL                          R2
       11 JUMP                             ; [+13]
       12 GETUPVAL                         R6 1
       13 GETTABLE                         R5 R6 R4
       14 JUMPIFNOTEQKNIL                  R5 ; [+9]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K1 ["fromSequence"]
       19 MOVE                             R7 R4
       20 CALL                             R6 1 1
       21 MOVE                             R5 R6
       22 GETUPVAL                         R6 1
       23 SETTABLE                         R5 R6 R4
       24 MOVE                             R2 R5
       25 JUMPIFEQKNIL                     R2 ; [+8]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K2 ["fromRig"]
       30 MOVE                             R4 R1
       31 MOVE                             R5 R2
       32 CALL                             R3 2 1
       33 RETURN                           R3 1
       34 LOADNIL                          R3
       35 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["destroy"]
        6 CALL                             R0 0 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R3 K0 ["rig"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 JUMPIFEQKNIL                     R2 ; [+38]
       12 GETUPVAL                         R6 0
       13 GETTABLE                         R5 R6 R0
       14 JUMPIFEQKNIL                     R5 ; [+4]
       16 GETTABLEKS                       R6 R5 K1 ["keyframeSequence"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 JUMPIFNOTEQKNIL                  R6 ; [+3]
       22 LOADNIL                          R4
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R8 1
       25 GETTABLE                         R7 R8 R6
       26 JUMPIFNOTEQKNIL                  R7 ; [+9]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K2 ["fromSequence"]
       31 MOVE                             R9 R6
       32 CALL                             R8 1 1
       33 MOVE                             R7 R8
       34 GETUPVAL                         R8 1
       35 SETTABLE                         R7 R8 R6
       36 MOVE                             R4 R7
       37 JUMPIFEQKNIL                     R4 ; [+9]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K3 ["fromRig"]
       42 MOVE                             R6 R2
       43 MOVE                             R7 R4
       44 CALL                             R5 2 1
       45 MOVE                             R3 R5
       46 JUMP                             ; [+3]
       47 LOADNIL                          R3
       48 JUMP                             ; [+1]
       49 LOADNIL                          R3
       50 JUMPIFEQKNIL                     R3 ; [+10]
       52 GETTABLEKS                       R4 R3 K4 ["labelByJoint"]
       54 LOADNIL                          R5
       55 LOADNIL                          R6
       56 FORGPREP                         R4
       57 LOADB                            R9 1
       58 SETTABLE                         R9 R1 R7
       59 FORGLOOP                         R4 1 ; [-3]
       61 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["destroy"]
        8 CALL                             R0 0 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["setTool"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R5 K0 ["Humanoid"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+4]
        5 LOADK                            R5 K2 ["AnimationController"]
        6 NAMECALL                         R3 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R3 2 1
        9 JUMPIFEQKNIL                     R3 ; [+7]
       11 LOADK                            R6 K3 ["Animator"]
       12 NAMECALL                         R4 R3 K1 ["FindFirstChildOfClass"]
       14 CALL                             R4 2 1
       15 MOVE                             R2 R4
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R2
       27 LOADN                            R5 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K5 ["isRetargetingEnabled"]
       31 MOVE                             R7 R1
       32 CALL                             R6 1 -1
       33 CALL                             R3 -1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R2
       37 LOADN                            R5 0
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R6 K0 ["Humanoid"]
        1 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+4]
        5 LOADK                            R6 K2 ["AnimationController"]
        6 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        8 CALL                             R4 2 1
        9 JUMPIFEQKNIL                     R4 ; [+7]
       11 LOADK                            R7 K3 ["Animator"]
       12 NAMECALL                         R5 R4 K1 ["FindFirstChildOfClass"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFEQKNIL                     R3 ; [+11]
       20 NAMECALL                         R4 R3 K4 ["GetPlayingAnimationTracks"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADN                            R11 0
       25 NAMECALL                         R9 R8 K5 ["Stop"]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-5]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["markRigReload"]
       33 MOVE                             R5 R0
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 1
       36 MOVE                             R5 R1
       37 MOVE                             R6 R2
       38 CALL                             R4 2 0
       39 LOADK                            R7 K0 ["Humanoid"]
       40 NAMECALL                         R5 R1 K1 ["FindFirstChildOfClass"]
       42 CALL                             R5 2 1
       43 JUMPIF                           R5 ; [+4]
       44 LOADK                            R7 K2 ["AnimationController"]
       45 NAMECALL                         R5 R1 K1 ["FindFirstChildOfClass"]
       47 CALL                             R5 2 1
       48 JUMPIFEQKNIL                     R5 ; [+7]
       50 LOADK                            R8 K3 ["Animator"]
       51 NAMECALL                         R6 R5 K1 ["FindFirstChildOfClass"]
       53 CALL                             R6 2 1
       54 MOVE                             R4 R6
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 JUMPIFNOTEQKNIL                  R4 ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R5 R5 K7 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
       63 JUMPIFNOT                        R5 ; [+10]
       64 GETUPVAL                         R5 3
       65 MOVE                             R6 R4
       66 LOADN                            R7 0
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K8 ["isRetargetingEnabled"]
       70 MOVE                             R9 R0
       71 CALL                             R8 1 -1
       72 CALL                             R5 -1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R5 3
       75 MOVE                             R6 R4
       76 LOADN                            R7 0
       77 CALL                             R5 2 0
       78 RETURN                           R0 0

PROTO_18:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getSavedPoseTransforms"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R5 R0
       12 JUMPIFEQKNIL                     R4 ; [+4]
       14 GETTABLEKS                       R3 R4 K1 ["rig"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFEQKNIL                     R2 ; [+7]
       20 JUMPIFEQKNIL                     R3 ; [+5]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantAnimationGenNewPosing"]
       25 JUMPIF                           R4 ; [+1]
       26 RETURN                           R2 1
       27 GETUPVAL                         R7 1
       28 GETTABLE                         R6 R7 R0
       29 JUMPIFEQKNIL                     R6 ; [+4]
       31 GETTABLEKS                       R7 R6 K3 ["keyframeSequence"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 JUMPIFNOTEQKNIL                  R7 ; [+3]
       37 LOADNIL                          R5
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R9 3
       40 GETTABLE                         R8 R9 R7
       41 JUMPIFNOTEQKNIL                  R8 ; [+9]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K4 ["fromSequence"]
       46 MOVE                             R10 R7
       47 CALL                             R9 1 1
       48 MOVE                             R8 R9
       49 GETUPVAL                         R9 3
       50 SETTABLE                         R8 R9 R7
       51 MOVE                             R5 R8
       52 JUMPIFEQKNIL                     R5 ; [+9]
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R6 R6 K5 ["fromRig"]
       57 MOVE                             R7 R3
       58 MOVE                             R8 R5
       59 CALL                             R6 2 1
       60 MOVE                             R4 R6
       61 JUMP                             ; [+1]
       62 LOADNIL                          R4
       63 JUMPIFEQKNIL                     R4 ; [+8]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K6 ["renameTransformsToRig"]
       68 MOVE                             R6 R4
       69 MOVE                             R7 R2
       70 CALL                             R5 2 1
       71 RETURN                           R5 1
       72 MOVE                             R5 R2
       73 RETURN                           R5 1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R3 K0 ["rig"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 LOADNIL                          R3
       12 JUMPIFEQKNIL                     R1 ; [+16]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["findSavedTime"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 CALL                             R4 2 1
       20 JUMPIFEQKNIL                     R4 ; [+8]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["renderPreviewPose"]
       25 MOVE                             R5 R0
       26 MOVE                             R6 R1
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R0
       31 MOVE                             R6 R2
       32 MOVE                             R7 R3
       33 JUMPIF                           R7 ; [+4]
       34 GETUPVAL                         R7 4
       35 MOVE                             R8 R0
       36 MOVE                             R9 R1
       37 CALL                             R7 2 1
       38 CALL                             R4 3 0
       39 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+4]
        4 GETTABLEKS                       R3 R4 K0 ["rig"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["findSavedTime"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R3
       25 CALL                             R5 1 1
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R5 3
       28 MOVE                             R6 R0
       29 MOVE                             R7 R4
       30 CALL                             R5 2 1
       31 JUMPIFNOTEQKNIL                  R5 ; [+3]
       33 LOADB                            R6 0
       34 RETURN                           R6 1
       35 LOADK                            R8 K2 ["Humanoid"]
       36 NAMECALL                         R6 R3 K3 ["FindFirstChildOfClass"]
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+4]
       40 LOADK                            R8 K4 ["AnimationController"]
       41 NAMECALL                         R6 R3 K3 ["FindFirstChildOfClass"]
       43 CALL                             R6 2 1
       44 JUMPIFNOTEQKNIL                  R6 ; [+3]
       46 LOADB                            R7 0
       47 RETURN                           R7 1
       48 LOADK                            R9 K5 ["Animator"]
       49 NAMECALL                         R7 R6 K3 ["FindFirstChildOfClass"]
       51 CALL                             R7 2 1
       52 JUMPIFNOTEQKNIL                  R7 ; [+10]
       54 GETIMPORT                        R7 K8 [Instance.new]
       56 LOADK                            R8 K5 ["Animator"]
       57 CALL                             R7 1 1
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K9 ["Archivable"]
       61 SETTABLEKS                       R6 R7 K10 ["Parent"]
       63 GETUPVAL                         R7 4
       64 MOVE                             R8 R0
       65 MOVE                             R9 R3
       66 MOVE                             R10 R5
       67 CALL                             R7 3 0
       68 SETUPVAL                         R0 5
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K11 ["setLastClickedTime"]
       72 MOVE                             R8 R0
       73 MOVE                             R9 R4
       74 CALL                             R7 2 0
       75 LOADB                            R7 1
       76 RETURN                           R7 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 GETTABLEKS                       R2 R1 K0 ["keyframeSequence"]
        6 JUMPIFEQKNIL                     R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["detectRigType"]
       11 GETTABLEKS                       R3 R1 K0 ["keyframeSequence"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 LOADK                            R2 K2 ["R15"]
       16 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["renameTransformsToClip"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["render"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
        3 JUMPIF                           R7 ; [+1]
        4 RETURN                           R3 1
        5 GETUPVAL                         R8 1
        6 GETTABLE                         R7 R8 R0
        7 JUMPIFEQKNIL                     R7 ; [+4]
        9 GETTABLEKS                       R8 R7 K1 ["keyframeSequence"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R8
       13 JUMPIFEQKNIL                     R8 ; [+6]
       15 LOADK                            R11 K2 ["AnimationRigData"]
       16 NAMECALL                         R9 R8 K3 ["FindFirstChildOfClass"]
       18 CALL                             R9 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R9
       21 LOADK                            R13 K4 ["Humanoid"]
       22 NAMECALL                         R11 R1 K3 ["FindFirstChildOfClass"]
       24 CALL                             R11 2 1
       25 JUMPIF                           R11 ; [+4]
       26 LOADK                            R13 K5 ["AnimationController"]
       27 NAMECALL                         R11 R1 K3 ["FindFirstChildOfClass"]
       29 CALL                             R11 2 1
       30 JUMPIFEQKNIL                     R11 ; [+7]
       32 LOADK                            R14 K6 ["Animator"]
       33 NAMECALL                         R12 R11 K3 ["FindFirstChildOfClass"]
       35 CALL                             R12 2 1
       36 MOVE                             R10 R12
       37 JUMP                             ; [+1]
       38 LOADNIL                          R10
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R11 R11 K7 ["isRetargetingEnabled"]
       42 MOVE                             R12 R0
       43 CALL                             R11 1 1
       44 JUMPIFNOT                        R11 ; [+4]
       45 JUMPIFEQKNIL                     R9 ; [+3]
       47 JUMPIFNOTEQKNIL                  R10 ; [+2]
       49 RETURN                           R3 1
       50 NEWTABLE                         R11 0 0
       52 NEWTABLE                         R12 0 0
       54 MOVE                             R13 R5
       55 LOADNIL                          R14
       56 LOADNIL                          R15
       57 FORGPREP                         R13
       58 GETTABLE                         R18 R4 R16
       59 JUMPIFEQKNIL                     R18 ; [+16]
       61 JUMPIFEQ                         R18 R17 ; [+14]
       63 LOADB                            R19 1
       64 SETTABLE                         R19 R11 R16
       65 GETTABLEKS                       R19 R18 K8 ["Position"]
       67 GETTABLEKS                       R21 R17 K8 ["Position"]
       69 LOADK                            R22 K9 [1E-05]
       70 NAMECALL                         R19 R19 K10 ["FuzzyEq"]
       72 CALL                             R19 3 1
       73 JUMPIF                           R19 ; [+2]
       74 LOADB                            R19 1
       75 SETTABLE                         R19 R12 R16
       76 FORGLOOP                         R13 2 ; [-19]
       78 GETIMPORT                        R13 K12 [next]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 1
       82 JUMPIFNOTEQKNIL                  R13 ; [+2]
       84 RETURN                           R3 1
       85 GETUPVAL                         R13 3
       86 MOVE                             R14 R1
       87 CALL                             R13 1 1
       88 GETUPVAL                         R14 4
       89 GETTABLEKS                       R14 R14 K13 ["start"]
       91 DUPTABLE                         R15 K17 [{"rig", "animator", "animationRigData"}]
       92 SETTABLEKS                       R1 R15 K14 ["rig"]
       94 SETTABLEKS                       R10 R15 K15 ["animator"]
       96 SETTABLEKS                       R9 R15 K16 ["animationRigData"]
       98 CALL                             R14 1 1
       99 JUMPIFNOTEQKNIL                  R14 ; [+2]
      101 RETURN                           R3 1
      102 LOADNIL                          R15
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R16 R16 K18 ["FFlagAssistantAnimationGenNewPosing"]
      106 JUMPIFNOT                        R16 ; [+18]
      107 JUMPIFEQKNIL                     R6 ; [+17]
      109 NEWTABLE                         R16 0 0
      111 GETUPVAL                         R17 5
      112 LOADNIL                          R18
      113 LOADNIL                          R19
      114 FORGPREP                         R17
      115 GETTABLEKS                       R23 R6 K19 ["poseNameByLabel"]
      117 GETTABLE                         R22 R23 R21
      118 JUMPIFEQKNIL                     R22 ; [+3]
      120 LOADB                            R23 1
      121 SETTABLE                         R23 R16 R22
      122 FORGLOOP                         R17 2 ; [-8]
      124 MOVE                             R15 R16
      125 NEWTABLE                         R16 0 0
      127 GETUPVAL                         R17 6
      128 MOVE                             R18 R1
      129 CALL                             R17 1 3
      130 FORGPREP                         R17
      131 GETUPVAL                         R22 7
      132 GETTABLEKS                       R22 R22 K20 ["toClipName"]
      134 MOVE                             R23 R2
      135 MOVE                             R24 R20
      136 CALL                             R22 2 1
      137 GETUPVAL                         R23 7
      138 GETTABLEKS                       R23 R23 K20 ["toClipName"]
      140 MOVE                             R24 R2
      141 MOVE                             R25 R21
      142 CALL                             R23 2 1
      143 SETTABLE                         R23 R16 R22
      144 FORGLOOP                         R17 2 ; [-14]
      146 GETUPVAL                         R18 8
      147 DUPTABLE                         R19 K28 [{"initialPose", "targetTransforms", "editedJointNames", "translatedJointNames", "jointParents", "limbRootNames", "render"}]
      148 SETTABLEKS                       R3 R19 K21 ["initialPose"]
      150 SETTABLEKS                       R5 R19 K22 ["targetTransforms"]
      152 SETTABLEKS                       R11 R19 K23 ["editedJointNames"]
      154 SETTABLEKS                       R12 R19 K24 ["translatedJointNames"]
      156 SETTABLEKS                       R16 R19 K25 ["jointParents"]
      158 SETTABLEKS                       R15 R19 K26 ["limbRootNames"]
      160 NEWCLOSURE                       R20 P0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R14
      164 SETTABLEKS                       R20 R19 K27 ["render"]
      166 FASTPCALL                        pcall 2 ; [+2]
      167 GETIMPORT                        R17 K30 [pcall]
      169 CALL                             R17 2 2
      170 GETTABLEKS                       R19 R14 K31 ["finish"]
      172 CALL                             R19 0 0
      173 GETUPVAL                         R19 9
      174 MOVE                             R20 R0
      175 MOVE                             R21 R1
      176 MOVE                             R22 R13
      177 CALL                             R19 3 0
      178 JUMPIF                           R17 ; [+13]
      179 GETIMPORT                        R19 K33 [warn]
      181 LOADK                            R20 K34 ["[AnimationGen] Retargeted pose solve failed: %*"]
      182 FASTCALL1                        TOSTRING R18 ; [+3]
      183 MOVE                             R23 R18
      184 GETIMPORT                        R22 K36 [tostring]
      186 CALL                             R22 1 1
      187 NAMECALL                         R20 R20 K37 ["format"]
      189 CALL                             R20 2 1
      190 CALL                             R19 1 0
      191 RETURN                           R3 1
      192 NAMECALL                         R19 R3 K38 ["Destroy"]
      194 CALL                             R19 1 0
      195 RETURN                           R18 1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["contentId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["normalizeSavedTime"]
        5 MOVE                             R5 R3
        6 GETTABLEKS                       R6 R0 K2 ["time"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R7 1
       10 GETTABLE                         R6 R7 R3
       11 JUMPIFEQKNIL                     R6 ; [+4]
       13 GETTABLEKS                       R7 R6 K3 ["keyframeSequence"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R7
       17 JUMPIFNOTEQKNIL                  R7 ; [+3]
       19 LOADNIL                          R5
       20 JUMP                             ; [+13]
       21 GETUPVAL                         R9 2
       22 GETTABLE                         R8 R9 R7
       23 JUMPIFNOTEQKNIL                  R8 ; [+9]
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K4 ["fromSequence"]
       28 MOVE                             R10 R7
       29 CALL                             R9 1 1
       30 MOVE                             R8 R9
       31 GETUPVAL                         R9 2
       32 SETTABLE                         R8 R9 R7
       33 MOVE                             R5 R8
       34 JUMPIFEQKNIL                     R5 ; [+8]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K5 ["copySavedPose"]
       39 MOVE                             R7 R3
       40 MOVE                             R8 R4
       41 CALL                             R6 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 JUMPIFEQKNIL                     R5 ; [+3]
       46 JUMPIFNOTEQKNIL                  R6 ; [+3]
       48 LOADB                            R7 0
       49 RETURN                           R7 1
       50 LOADK                            R10 K6 ["Humanoid"]
       51 NAMECALL                         R8 R1 K7 ["FindFirstChildOfClass"]
       53 CALL                             R8 2 1
       54 JUMPIF                           R8 ; [+4]
       55 LOADK                            R10 K8 ["AnimationController"]
       56 NAMECALL                         R8 R1 K7 ["FindFirstChildOfClass"]
       58 CALL                             R8 2 1
       59 JUMPIFEQKNIL                     R8 ; [+7]
       61 LOADK                            R11 K9 ["Animator"]
       62 NAMECALL                         R9 R8 K7 ["FindFirstChildOfClass"]
       64 CALL                             R9 2 1
       65 MOVE                             R7 R9
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 JUMPIFNOTEQKNIL                  R7 ; [+2]
       70 JUMP                             ; [+18]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R8 R8 K10 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
       74 JUMPIFNOT                        R8 ; [+10]
       75 GETUPVAL                         R8 5
       76 MOVE                             R9 R7
       77 LOADN                            R10 0
       78 GETUPVAL                         R11 6
       79 GETTABLEKS                       R11 R11 K11 ["isRetargetingEnabled"]
       81 MOVE                             R12 R3
       82 CALL                             R11 1 -1
       83 CALL                             R8 -1 0
       84 JUMP                             ; [+4]
       85 GETUPVAL                         R8 5
       86 MOVE                             R9 R7
       87 LOADN                            R10 0
       88 CALL                             R8 2 0
       89 GETUPVAL                         R7 7
       90 GETTABLEKS                       R7 R7 K12 ["fromRig"]
       92 MOVE                             R8 R1
       93 MOVE                             R9 R5
       94 CALL                             R7 2 1
       95 GETUPVAL                         R8 8
       96 MOVE                             R9 R1
       97 CALL                             R8 1 1
       98 GETUPVAL                         R9 9
       99 GETUPVAL                         R10 10
      100 MOVE                             R11 R7
      101 GETTABLEKS                       R12 R0 K13 ["preRigPose"]
      103 CALL                             R10 2 1
      104 CALL                             R9 1 1
      105 GETUPVAL                         R10 9
      106 GETUPVAL                         R11 10
      107 MOVE                             R12 R7
      108 MOVE                             R13 R8
      109 CALL                             R11 2 1
      110 CALL                             R10 1 1
      111 GETUPVAL                         R11 11
      112 MOVE                             R12 R6
      113 MOVE                             R13 R9
      114 MOVE                             R14 R10
      115 MOVE                             R15 R4
      116 GETTABLEKS                       R16 R5 K14 ["parentNameByPoseName"]
      118 CALL                             R11 5 1
      119 NAMECALL                         R12 R9 K15 ["Destroy"]
      121 CALL                             R12 1 0
      122 NAMECALL                         R12 R10 K15 ["Destroy"]
      124 CALL                             R12 1 0
      125 GETUPVAL                         R12 12
      126 MOVE                             R13 R3
      127 MOVE                             R14 R1
      128 MOVE                             R15 R7
      129 MOVE                             R16 R11
      130 GETUPVAL                         R17 7
      131 GETTABLEKS                       R17 R17 K16 ["renameTransformsToClip"]
      133 MOVE                             R18 R7
      134 GETTABLEKS                       R19 R0 K13 ["preRigPose"]
      136 CALL                             R17 2 1
      137 GETUPVAL                         R18 7
      138 GETTABLEKS                       R18 R18 K16 ["renameTransformsToClip"]
      140 MOVE                             R19 R7
      141 MOVE                             R20 R8
      142 CALL                             R18 2 1
      143 MOVE                             R19 R5
      144 CALL                             R12 7 1
      145 GETUPVAL                         R13 13
      146 MOVE                             R14 R6
      147 MOVE                             R15 R12
      148 CALL                             R13 2 1
      149 NAMECALL                         R14 R6 K15 ["Destroy"]
      151 CALL                             R14 1 0
      152 JUMPIF                           R13 ; [+5]
      153 NAMECALL                         R14 R12 K15 ["Destroy"]
      155 CALL                             R14 1 0
      156 LOADB                            R14 0
      157 RETURN                           R14 1
      158 GETTABLEKS                       R15 R7 K17 ["labelByJoint"]
      160 GETTABLE                         R14 R15 R2
      161 JUMPIFEQKNIL                     R14 ; [+4]
      163 GETUPVAL                         R16 14
      164 GETTABLE                         R15 R16 R14
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 JUMPIFEQKNIL                     R15 ; [+7]
      169 NEWTABLE                         R16 0 1
      171 MOVE                             R17 R15
      172 SETLIST                          R16 R17 1 [1]
      174 JUMP                             ; [+2]
      175 NEWTABLE                         R16 0 0
      177 GETUPVAL                         R17 0
      178 GETTABLEKS                       R17 R17 K18 ["commitPoseEdit"]
      180 MOVE                             R18 R3
      181 MOVE                             R19 R4
      182 MOVE                             R20 R12
      183 MOVE                             R21 R16
      184 CALL                             R17 4 1
      185 NAMECALL                         R18 R12 K15 ["Destroy"]
      187 CALL                             R18 1 0
      188 JUMPIF                           R17 ; [+2]
      189 LOADB                            R18 0
      190 RETURN                           R18 1
      191 GETUPVAL                         R18 15
      192 MOVE                             R20 R3
      193 MOVE                             R21 R16
      194 NAMECALL                         R18 R18 K19 ["Fire"]
      196 CALL                             R18 3 0
      197 LOADB                            R18 1
      198 RETURN                           R18 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["contentId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["normalizeSavedTime"]
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R0 K2 ["time"]
        8 CALL                             R3 2 1
        9 LOADK                            R7 K3 ["Humanoid"]
       10 NAMECALL                         R5 R1 K4 ["FindFirstChildOfClass"]
       12 CALL                             R5 2 1
       13 JUMPIF                           R5 ; [+4]
       14 LOADK                            R7 K5 ["AnimationController"]
       15 NAMECALL                         R5 R1 K4 ["FindFirstChildOfClass"]
       17 CALL                             R5 2 1
       18 JUMPIFEQKNIL                     R5 ; [+7]
       20 LOADK                            R8 K6 ["Animator"]
       21 NAMECALL                         R6 R5 K4 ["FindFirstChildOfClass"]
       23 CALL                             R6 2 1
       24 MOVE                             R4 R6
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 JUMPIFNOTEQKNIL                  R4 ; [+2]
       29 JUMP                             ; [+18]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K7 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
       33 JUMPIFNOT                        R5 ; [+10]
       34 GETUPVAL                         R5 2
       35 MOVE                             R6 R4
       36 LOADN                            R7 0
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K8 ["isRetargetingEnabled"]
       40 MOVE                             R9 R2
       41 CALL                             R8 1 -1
       42 CALL                             R5 -1 0
       43 JUMP                             ; [+4]
       44 GETUPVAL                         R5 2
       45 MOVE                             R6 R4
       46 LOADN                            R7 0
       47 CALL                             R5 2 0
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R4 R4 K9 ["sampleWorldFromCharacter"]
       51 MOVE                             R5 R1
       52 GETUPVAL                         R6 5
       53 MOVE                             R7 R2
       54 CALL                             R6 1 -1
       55 CALL                             R4 -1 1
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R5 R5 K10 ["snapshotEffectorsFromSample"]
       59 MOVE                             R6 R4
       60 CALL                             R5 1 1
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K11 ["getDragEditSnapshotAtTime"]
       64 MOVE                             R7 R2
       65 MOVE                             R8 R3
       66 CALL                             R6 2 1
       67 NEWTABLE                         R7 0 0
       69 NEWTABLE                         R8 0 0
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K12 ["getSavedDragEditedEffectors"]
       74 MOVE                             R11 R2
       75 CALL                             R10 1 1
       76 GETTABLE                         R9 R10 R3
       77 JUMPIFEQKNIL                     R9 ; [+18]
       79 MOVE                             R10 R9
       80 LOADNIL                          R11
       81 LOADNIL                          R12
       82 FORGPREP                         R10
       83 GETTABLE                         R15 R8 R14
       84 JUMPIF                           R15 ; [+9]
       85 LOADB                            R15 1
       86 SETTABLE                         R15 R8 R14
       87 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
       89 MOVE                             R16 R7
       90 MOVE                             R17 R14
       91 GETIMPORT                        R15 K15 [table.insert]
       93 CALL                             R15 2 0
       94 FORGLOOP                         R10 2 ; [-12]
       96 JUMPIFEQKNIL                     R6 ; [+23]
       98 GETTABLEKS                       R10 R6 K16 ["effectors"]
      100 JUMPIFEQKNIL                     R10 ; [+19]
      102 GETTABLEKS                       R10 R6 K16 ["effectors"]
      104 LOADNIL                          R11
      105 LOADNIL                          R12
      106 FORGPREP                         R10
      107 GETTABLE                         R15 R8 R13
      108 JUMPIF                           R15 ; [+9]
      109 LOADB                            R15 1
      110 SETTABLE                         R15 R8 R13
      111 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      113 MOVE                             R16 R7
      114 MOVE                             R17 R13
      115 GETIMPORT                        R15 K15 [table.insert]
      117 CALL                             R15 2 0
      118 FORGLOOP                         R10 1 ; [-12]
      120 GETTABLEKS                       R10 R0 K17 ["effectorHints"]
      122 JUMPIF                           R10 ; [+2]
      123 NEWTABLE                         R10 0 0
      125 GETTABLEKS                       R12 R0 K18 ["rootTipMove"]
      127 JUMPIFEQKB                       R12 TRUE ; [+2]
      129 LOADB                            R11 0 +1
      130 LOADB                            R11 1
      131 LENGTH                           R12 R10
      132 JUMPIFNOTEQKN                    R12 K19 [0] ; [+4]
      134 JUMPIF                           R11 ; [+2]
      135 LOADB                            R12 0
      136 RETURN                           R12 1
      137 LENGTH                           R13 R10
      138 LOADN                            R14 0
      139 JUMPIFNOTLT                      R14 R13 ; [+3]
      141 MOVE                             R12 R10
      142 JUMP                             ; [+1]
      143 MOVE                             R12 R7
      144 LOADNIL                          R13
      145 LENGTH                           R14 R12
      146 LOADN                            R15 0
      147 JUMPIFNOTLT                      R15 R14 ; [+19]
      149 GETUPVAL                         R14 6
      150 GETTABLEKS                       R14 R14 K20 ["mergeDragEditSnapshot"]
      152 MOVE                             R15 R6
      153 GETTABLEKS                       R16 R0 K21 ["preEffectors"]
      155 MOVE                             R17 R5
      156 MOVE                             R18 R12
      157 MOVE                             R19 R4
      158 GETTABLEKS                       R20 R0 K22 ["primaryJointByEffector"]
      160 GETTABLEKS                       R21 R0 K23 ["preWorldSample"]
      162 GETTABLEKS                       R22 R0 K24 ["rotationIntent"]
      164 CALL                             R14 8 1
      165 MOVE                             R13 R14
      166 JUMP                             ; [+1]
      167 MOVE                             R13 R6
      168 GETUPVAL                         R14 0
      169 GETTABLEKS                       R14 R14 K25 ["copySavedPose"]
      171 MOVE                             R15 R2
      172 MOVE                             R16 R3
      173 CALL                             R14 2 1
      174 JUMPIFNOTEQKNIL                  R14 ; [+3]
      176 LOADB                            R15 0
      177 RETURN                           R15 1
      178 GETUPVAL                         R15 7
      179 GETTABLEKS                       R15 R15 K26 ["fromRig"]
      181 MOVE                             R16 R1
      182 CALL                             R15 1 1
      183 GETUPVAL                         R16 7
      184 GETTABLEKS                       R16 R16 K27 ["renameTransformsToClip"]
      186 MOVE                             R17 R15
      187 GETTABLEKS                       R18 R0 K28 ["preRigPose"]
      189 CALL                             R16 2 1
      190 GETUPVAL                         R17 7
      191 GETTABLEKS                       R17 R17 K27 ["renameTransformsToClip"]
      193 MOVE                             R18 R15
      194 GETUPVAL                         R19 8
      195 MOVE                             R20 R1
      196 CALL                             R19 1 -1
      197 CALL                             R17 -1 1
      198 GETUPVAL                         R18 9
      199 MOVE                             R19 R16
      200 CALL                             R18 1 1
      201 GETUPVAL                         R19 9
      202 MOVE                             R20 R17
      203 CALL                             R19 1 1
      204 GETUPVAL                         R20 10
      205 MOVE                             R21 R14
      206 MOVE                             R22 R18
      207 MOVE                             R23 R19
      208 MOVE                             R24 R3
      209 CALL                             R20 4 1
      210 GETUPVAL                         R21 11
      211 MOVE                             R22 R2
      212 MOVE                             R23 R1
      213 MOVE                             R24 R15
      214 MOVE                             R25 R20
      215 MOVE                             R26 R16
      216 MOVE                             R27 R17
      217 CALL                             R21 6 1
      218 NAMECALL                         R22 R14 K29 ["Destroy"]
      220 CALL                             R22 1 0
      221 NAMECALL                         R22 R18 K29 ["Destroy"]
      223 CALL                             R22 1 0
      224 NAMECALL                         R22 R19 K29 ["Destroy"]
      226 CALL                             R22 1 0
      227 GETUPVAL                         R22 0
      228 GETTABLEKS                       R22 R22 K30 ["commitPoseEdit"]
      230 MOVE                             R23 R2
      231 MOVE                             R24 R3
      232 MOVE                             R25 R21
      233 MOVE                             R26 R12
      234 MOVE                             R27 R13
      235 CALL                             R22 5 1
      236 NAMECALL                         R23 R21 K29 ["Destroy"]
      238 CALL                             R23 1 0
      239 JUMPIF                           R22 ; [+2]
      240 LOADB                            R23 0
      241 RETURN                           R23 1
      242 GETUPVAL                         R23 12
      243 MOVE                             R25 R2
      244 MOVE                             R26 R12
      245 NAMECALL                         R23 R23 K31 ["Fire"]
      247 CALL                             R23 3 0
      248 LOADB                            R23 1
      249 RETURN                           R23 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["getLastClickedTime"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R1 R2 R3
       13 MOVE                             R2 R1
       14 JUMPIFNOT                        R2 ; [+2]
       15 GETTABLEKS                       R2 R1 K1 ["rig"]
       17 JUMPIFEQKNIL                     R0 ; [+7]
       19 JUMPIFEQKNIL                     R2 ; [+5]
       21 GETTABLEKS                       R3 R1 K2 ["keyframeSequence"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+3]
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 DUPTABLE                         R3 K5 [{"contentId", "time", "rig"}]
       28 GETUPVAL                         R4 0
       29 SETTABLEKS                       R4 R3 K3 ["contentId"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K6 ["normalizeSavedTime"]
       34 GETUPVAL                         R5 0
       35 MOVE                             R6 R0
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K4 ["time"]
       39 SETTABLEKS                       R2 R3 K1 ["rig"]
       41 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sampleWorldFromCharacter"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenNewPosing"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 CALL                             R0 3 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 5
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 CALL                             R0 2 1
       14 RETURN                           R0 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["contentId"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R1 R3 K1 ["rig"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K0 ["contentId"]
       16 LOADK                            R4 K2 ["Edit Pose"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CALL                             R2 3 0
       25 GETUPVAL                         R2 6
       26 GETTABLEKS                       R3 R0 K0 ["contentId"]
       28 GETTABLEKS                       R4 R0 K3 ["time"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAnimationGenFixPoseSelect"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 2
        8 JUMPIFEQKNIL                     R0 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["destroy"]
       13 CALL                             R0 0 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K2 ["refreshStyles"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["reselect"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["destroy"]
       18 CALL                             R1 0 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["getAdornee"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKNIL                  R1 ; [+6]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K3 ["refreshStyles"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 4
       34 DUPTABLE                         R3 K12 [{"joint", "adornee", "tool", "resolveTarget", "stepRig", "sampleWorld", "commit", "onDeselected"}]
       35 SETTABLEKS                       R0 R3 K4 ["joint"]
       37 SETTABLEKS                       R1 R3 K5 ["adornee"]
       39 GETUPVAL                         R4 5
       40 SETTABLEKS                       R4 R3 K6 ["tool"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 SETTABLEKS                       R4 R3 K7 ["resolveTarget"]
       48 GETUPVAL                         R4 9
       49 SETTABLEKS                       R4 R3 K8 ["stepRig"]
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 SETTABLEKS                       R4 R3 K9 ["sampleWorld"]
       56 NEWCLOSURE                       R4 P2
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U13
       60 CAPTURE                          UPVAL U14
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U15
       63 CAPTURE                          UPVAL U16
       64 SETTABLEKS                       R4 R3 K10 ["commit"]
       66 NEWCLOSURE                       R4 P3
       67 CAPTURE                          UPVAL U13
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U3
       71 SETTABLEKS                       R4 R3 K11 ["onDeselected"]
       73 CALL                             R2 1 1
       74 SETUPVAL                         R2 1
       75 GETUPVAL                         R2 3
       76 GETTABLEKS                       R2 R2 K3 ["refreshStyles"]
       78 CALL                             R2 0 0
       79 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R3 K0 ["rig"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"store", "rigPose"}]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["snapshot"]
       13 MOVE                             R5 R0
       14 CALL                             R4 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R3 K1 ["store"]
       19 JUMPIFEQKNIL                     R2 ; [+5]
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K2 ["rigPose"]
       28 RETURN                           R3 1

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["store"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["restore"]
        7 MOVE                             R3 R0
        8 GETTABLEKS                       R4 R1 K0 ["store"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFEQKNIL                     R3 ; [+4]
       15 GETTABLEKS                       R2 R3 K2 ["rig"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 JUMPIFEQKNIL                     R2 ; [+16]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R6 R1 K3 ["rigPose"]
       26 JUMPIF                           R6 ; [+8]
       27 GETUPVAL                         R6 3
       28 MOVE                             R7 R0
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K4 ["getLastClickedTime"]
       32 MOVE                             R9 R0
       33 CALL                             R8 1 -1
       34 CALL                             R6 -1 1
       35 CALL                             R3 3 0
       36 GETUPVAL                         R3 4
       37 MOVE                             R5 R0
       38 NAMECALL                         R3 R3 K5 ["Fire"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroySnapshot"]
        3 GETTABLEKS                       R2 R0 K1 ["store"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getLastClickedTime"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearSavedKeyframes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R1 R0 ; [+3]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMeshSelectorActive"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["destroy"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R1 K0 ["runUndoableEdit"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["new"]
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K1 ["new"]
       13 CALL                             R6 0 1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R13 0 0
       22 DUPTABLE                         R14 K4 [{["__mode"] = "k"}]
       23 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
       25 GETIMPORT                        R12 K6 [setmetatable]
       27 CALL                             R12 2 1
       28 NEWCLOSURE                       R13 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R12
       31 CAPTURE                          UPVAL U3
       32 NEWCLOSURE                       R14 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R12
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NEWCLOSURE                       R15 P3
       38 CAPTURE                          REF R8
       39 LOADNIL                          R16
       40 GETUPVAL                         R17 5
       41 DUPTABLE                         R18 K14 [{"getRig", "getPoseableJoints", "getSelectedJoint", "onJointClicked", "clearSelection", "onDeactivated", "setDraggerTool"}]
       42 SETTABLEKS                       R11 R18 K7 ["getRig"]
       44 GETUPVAL                         R20 6
       45 GETTABLEKS                       R20 R20 K15 ["FFlagAssistantAnimationGenNewPosing"]
       47 JUMPIFNOT                        R20 ; [+6]
       48 NEWCLOSURE                       R19 P4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R12
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 JUMP                             ; [+1]
       54 LOADNIL                          R19
       55 SETTABLEKS                       R19 R18 K8 ["getPoseableJoints"]
       57 NEWCLOSURE                       R19 P5
       58 CAPTURE                          REF R7
       59 SETTABLEKS                       R19 R18 K9 ["getSelectedJoint"]
       61 NEWCLOSURE                       R19 P6
       62 CAPTURE                          REF R16
       63 SETTABLEKS                       R19 R18 K10 ["onJointClicked"]
       65 NEWCLOSURE                       R19 P7
       66 CAPTURE                          REF R7
       67 CAPTURE                          REF R8
       68 SETTABLEKS                       R19 R18 K11 ["clearSelection"]
       70 NEWCLOSURE                       R19 P8
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R19 R18 K12 ["onDeactivated"]
       74 NEWCLOSURE                       R19 P9
       75 CAPTURE                          REF R9
       76 CAPTURE                          REF R8
       77 SETTABLEKS                       R19 R18 K13 ["setDraggerTool"]
       79 CALL                             R17 1 1
       80 NEWCLOSURE                       R18 P10
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R1
       84 NEWCLOSURE                       R19 P11
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 NEWCLOSURE                       R20 P12
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R12
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          UPVAL U4
       96 NEWCLOSURE                       R21 P13
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R20
      102 NEWCLOSURE                       R22 P14
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R3
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R19
      108 CAPTURE                          REF R10
      109 NEWCLOSURE                       R23 P15
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U10
      112 NEWCLOSURE                       R24 P16
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          VAL R4
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          UPVAL U13
      122 CAPTURE                          VAL R19
      123 NEWCLOSURE                       R25 P17
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R12
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U14
      134 CAPTURE                          UPVAL U15
      135 CAPTURE                          UPVAL U16
      136 CAPTURE                          VAL R24
      137 CAPTURE                          UPVAL U17
      138 CAPTURE                          UPVAL U18
      139 CAPTURE                          VAL R6
      140 NEWCLOSURE                       R26 P18
      141 CAPTURE                          VAL R3
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R1
      145 CAPTURE                          UPVAL U10
      146 CAPTURE                          VAL R23
      147 CAPTURE                          UPVAL U19
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U9
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          UPVAL U16
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R6
      154 NEWCLOSURE                       R16 P19
      155 CAPTURE                          REF R7
      156 CAPTURE                          REF R8
      157 CAPTURE                          UPVAL U20
      158 CAPTURE                          VAL R17
      159 CAPTURE                          UPVAL U21
      160 CAPTURE                          REF R9
      161 CAPTURE                          REF R10
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R18
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R2
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R26
      171 CAPTURE                          VAL R21
      172 DUPTABLE                         R27 K19 [{"capture", "restore", "dispose"}]
      173 NEWCLOSURE                       R28 P20
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R3
      176 CAPTURE                          UPVAL U9
      177 SETTABLEKS                       R28 R27 K16 ["capture"]
      179 NEWCLOSURE                       R28 P21
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R6
      185 SETTABLEKS                       R28 R27 K17 ["restore"]
      187 NEWCLOSURE                       R28 P22
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R28 R27 K18 ["dispose"]
      191 DUPTABLE                         R28 K42 [{"applySavedPose", "reapplySavedPose", "undoParticipant", "captureSavedPoses", "clearEditState", "restoreSavedPoses", "destroySavedPoses", "withSavedPoseSnapshot", "findSavedPoseTime", "isSavedKeyframeAuthored", "hasEditedKeyframes", "getSavedDragEditedEffectors", "getKeyposeTimes", "getSavedPoseIntervals", "insertGeneratedKeyframe", "deleteSavedKeyframe", "updateSavedPoseInterval", "setMeshSelectorActive", "poseDeselectedSignal", "poseEditedSignal", "onRigChanged", "destroy"}]
      192 SETTABLEKS                       R22 R28 K20 ["applySavedPose"]
      194 NEWCLOSURE                       R29 P23
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R3
      197 SETTABLEKS                       R29 R28 K21 ["reapplySavedPose"]
      199 SETTABLEKS                       R27 R28 K22 ["undoParticipant"]
      201 GETTABLEKS                       R29 R3 K43 ["snapshot"]
      203 SETTABLEKS                       R29 R28 K23 ["captureSavedPoses"]
      205 NEWCLOSURE                       R29 P24
      206 CAPTURE                          VAL R3
      207 CAPTURE                          REF R10
      208 SETTABLEKS                       R29 R28 K24 ["clearEditState"]
      210 GETTABLEKS                       R29 R3 K17 ["restore"]
      212 SETTABLEKS                       R29 R28 K25 ["restoreSavedPoses"]
      214 GETTABLEKS                       R29 R3 K44 ["destroySnapshot"]
      216 SETTABLEKS                       R29 R28 K26 ["destroySavedPoses"]
      218 GETTABLEKS                       R29 R3 K45 ["withSnapshot"]
      220 SETTABLEKS                       R29 R28 K27 ["withSavedPoseSnapshot"]
      222 GETTABLEKS                       R29 R3 K46 ["findSavedTime"]
      224 SETTABLEKS                       R29 R28 K28 ["findSavedPoseTime"]
      226 GETTABLEKS                       R29 R3 K29 ["isSavedKeyframeAuthored"]
      228 SETTABLEKS                       R29 R28 K29 ["isSavedKeyframeAuthored"]
      230 GETTABLEKS                       R29 R3 K30 ["hasEditedKeyframes"]
      232 SETTABLEKS                       R29 R28 K30 ["hasEditedKeyframes"]
      234 GETTABLEKS                       R29 R3 K31 ["getSavedDragEditedEffectors"]
      236 SETTABLEKS                       R29 R28 K31 ["getSavedDragEditedEffectors"]
      238 GETTABLEKS                       R29 R3 K32 ["getKeyposeTimes"]
      240 SETTABLEKS                       R29 R28 K32 ["getKeyposeTimes"]
      242 GETTABLEKS                       R29 R3 K33 ["getSavedPoseIntervals"]
      244 SETTABLEKS                       R29 R28 K33 ["getSavedPoseIntervals"]
      246 GETTABLEKS                       R29 R3 K34 ["insertGeneratedKeyframe"]
      248 SETTABLEKS                       R29 R28 K34 ["insertGeneratedKeyframe"]
      250 GETTABLEKS                       R29 R3 K35 ["deleteSavedKeyframe"]
      252 SETTABLEKS                       R29 R28 K35 ["deleteSavedKeyframe"]
      254 GETTABLEKS                       R29 R3 K36 ["updateSavedPoseInterval"]
      256 SETTABLEKS                       R29 R28 K36 ["updateSavedPoseInterval"]
      258 NEWCLOSURE                       R29 P25
      259 CAPTURE                          VAL R17
      260 SETTABLEKS                       R29 R28 K37 ["setMeshSelectorActive"]
      262 SETTABLEKS                       R5 R28 K38 ["poseDeselectedSignal"]
      264 SETTABLEKS                       R6 R28 K39 ["poseEditedSignal"]
      266 GETTABLEKS                       R29 R17 K40 ["onRigChanged"]
      268 SETTABLEKS                       R29 R28 K40 ["onRigChanged"]
      270 NEWCLOSURE                       R29 P26
      271 CAPTURE                          VAL R17
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R4
      274 SETTABLEKS                       R29 R28 K41 ["destroy"]
      276 CLOSEUPVALS                      R7
      277 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["Posing"]
       17 GETTABLEKS                       R3 R3 K10 ["ClipSampling"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Util"]
       24 GETTABLEKS                       R4 R4 K8 ["AnimationGen"]
       26 GETTABLEKS                       R4 R4 K9 ["Posing"]
       28 GETTABLEKS                       R4 R4 K11 ["ClipSkeleton"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R0 K7 ["Util"]
       35 GETTABLEKS                       R5 R5 K8 ["AnimationGen"]
       37 GETTABLEKS                       R5 R5 K9 ["Posing"]
       39 GETTABLEKS                       R5 R5 K12 ["DEPRECATED_DragEditSnapshot"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R6 R0 K13 ["Flags"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K8 ["AnimationGen"]
       53 GETTABLEKS                       R7 R7 K14 ["HostTypes"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETIMPORT                        R8 K1 [script]
       60 GETTABLEKS                       R8 R8 K15 ["JointFrames"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R0 K7 ["Util"]
       67 GETTABLEKS                       R9 R9 K8 ["AnimationGen"]
       69 GETTABLEKS                       R9 R9 K9 ["Posing"]
       71 GETTABLEKS                       R9 R9 K16 ["KeyframePoses"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K6 [require]
       76 GETTABLEKS                       R10 R0 K7 ["Util"]
       78 GETTABLEKS                       R10 R10 K8 ["AnimationGen"]
       80 GETTABLEKS                       R10 R10 K9 ["Posing"]
       82 GETTABLEKS                       R10 R10 K17 ["RigPoseNames"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K6 [require]
       87 GETTABLEKS                       R11 R1 K18 ["Signal"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K6 [require]
       92 GETIMPORT                        R12 K1 [script]
       94 GETTABLEKS                       R12 R12 K19 ["SkeletonAdornmentUtils"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K6 [require]
       99 GETTABLEKS                       R13 R0 K20 ["Types"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K6 [require]
      104 GETTABLEKS                       R14 R0 K7 ["Util"]
      106 GETTABLEKS                       R14 R14 K8 ["AnimationGen"]
      108 GETTABLEKS                       R14 R14 K9 ["Posing"]
      110 GETTABLEKS                       R14 R14 K21 ["applyTargetPoseDeltas"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K6 [require]
      115 GETIMPORT                        R15 K1 [script]
      117 GETTABLEKS                       R15 R15 K22 ["createJointDragSession"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K6 [require]
      122 GETIMPORT                        R16 K1 [script]
      124 GETTABLEKS                       R16 R16 K23 ["createPartDragger"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K6 [require]
      129 GETTABLEKS                       R17 R0 K7 ["Util"]
      131 GETTABLEKS                       R17 R17 K8 ["AnimationGen"]
      133 GETTABLEKS                       R17 R17 K9 ["Posing"]
      135 GETTABLEKS                       R17 R17 K24 ["createRetargetProbe"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K6 [require]
      140 GETIMPORT                        R18 K1 [script]
      142 GETTABLEKS                       R18 R18 K25 ["createSavedKeyframeStore"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K6 [require]
      147 GETIMPORT                        R19 K1 [script]
      149 GETTABLEKS                       R19 R19 K26 ["createSkeletonAdornment"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K6 [require]
      154 GETTABLEKS                       R20 R0 K7 ["Util"]
      156 GETTABLEKS                       R20 R20 K8 ["AnimationGen"]
      158 GETTABLEKS                       R20 R20 K9 ["Posing"]
      160 GETTABLEKS                       R20 R20 K27 ["getRigJointParents"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K6 [require]
      165 GETTABLEKS                       R21 R0 K7 ["Util"]
      167 GETTABLEKS                       R21 R21 K8 ["AnimationGen"]
      169 GETTABLEKS                       R21 R21 K9 ["Posing"]
      171 GETTABLEKS                       R21 R21 K28 ["getRigJointTransforms"]
      173 CALL                             R20 1 1
      174 GETIMPORT                        R21 K6 [require]
      176 GETTABLEKS                       R22 R0 K7 ["Util"]
      178 GETTABLEKS                       R22 R22 K8 ["AnimationGen"]
      180 GETTABLEKS                       R22 R22 K9 ["Posing"]
      182 GETTABLEKS                       R22 R22 K29 ["solveRetargetedPose"]
      184 CALL                             R21 1 1
      185 GETIMPORT                        R22 K6 [require]
      187 GETTABLEKS                       R23 R0 K7 ["Util"]
      189 GETTABLEKS                       R23 R23 K8 ["AnimationGen"]
      191 GETTABLEKS                       R23 R23 K30 ["stepAnimations"]
      193 CALL                             R22 1 1
      194 NEWTABLE                         R23 0 4
      196 GETIMPORT                        R24 K34 [Enum.RigLabel.LeftShoulder]
      198 GETIMPORT                        R25 K36 [Enum.RigLabel.RightShoulder]
      200 GETIMPORT                        R26 K38 [Enum.RigLabel.LeftHip]
      202 GETIMPORT                        R27 K40 [Enum.RigLabel.RightHip]
      204 SETLIST                          R23 R24 4 [1]
      206 NEWTABLE                         R24 32 0
      208 GETIMPORT                        R25 K42 [Enum.RigLabel.Root]
      210 LOADK                            R26 K43 ["spine"]
      211 SETTABLE                         R26 R24 R25
      212 GETIMPORT                        R25 K45 [Enum.RigLabel.Waist]
      214 LOADK                            R26 K43 ["spine"]
      215 SETTABLE                         R26 R24 R25
      216 GETIMPORT                        R25 K47 [Enum.RigLabel.Spine]
      218 LOADK                            R26 K43 ["spine"]
      219 SETTABLE                         R26 R24 R25
      220 GETIMPORT                        R25 K49 [Enum.RigLabel.Chest]
      222 LOADK                            R26 K43 ["spine"]
      223 SETTABLE                         R26 R24 R25
      224 GETIMPORT                        R25 K51 [Enum.RigLabel.Neck]
      226 LOADK                            R26 K43 ["spine"]
      227 SETTABLE                         R26 R24 R25
      228 GETIMPORT                        R25 K53 [Enum.RigLabel.HeadBase]
      230 LOADK                            R26 K43 ["spine"]
      231 SETTABLE                         R26 R24 R25
      232 GETIMPORT                        R25 K55 [Enum.RigLabel.LeftClavicle]
      234 LOADK                            R26 K56 ["left_hand"]
      235 SETTABLE                         R26 R24 R25
      236 GETIMPORT                        R25 K34 [Enum.RigLabel.LeftShoulder]
      238 LOADK                            R26 K56 ["left_hand"]
      239 SETTABLE                         R26 R24 R25
      240 GETIMPORT                        R25 K58 [Enum.RigLabel.LeftElbow]
      242 LOADK                            R26 K56 ["left_hand"]
      243 SETTABLE                         R26 R24 R25
      244 GETIMPORT                        R25 K60 [Enum.RigLabel.LeftWrist]
      246 LOADK                            R26 K56 ["left_hand"]
      247 SETTABLE                         R26 R24 R25
      248 GETIMPORT                        R25 K62 [Enum.RigLabel.RightClavicle]
      250 LOADK                            R26 K63 ["right_hand"]
      251 SETTABLE                         R26 R24 R25
      252 GETIMPORT                        R25 K36 [Enum.RigLabel.RightShoulder]
      254 LOADK                            R26 K63 ["right_hand"]
      255 SETTABLE                         R26 R24 R25
      256 GETIMPORT                        R25 K65 [Enum.RigLabel.RightElbow]
      258 LOADK                            R26 K63 ["right_hand"]
      259 SETTABLE                         R26 R24 R25
      260 GETIMPORT                        R25 K67 [Enum.RigLabel.RightWrist]
      262 LOADK                            R26 K63 ["right_hand"]
      263 SETTABLE                         R26 R24 R25
      264 GETIMPORT                        R25 K38 [Enum.RigLabel.LeftHip]
      266 LOADK                            R26 K68 ["left_foot"]
      267 SETTABLE                         R26 R24 R25
      268 GETIMPORT                        R25 K70 [Enum.RigLabel.LeftKnee]
      270 LOADK                            R26 K68 ["left_foot"]
      271 SETTABLE                         R26 R24 R25
      272 GETIMPORT                        R25 K72 [Enum.RigLabel.LeftAnkle]
      274 LOADK                            R26 K68 ["left_foot"]
      275 SETTABLE                         R26 R24 R25
      276 GETIMPORT                        R25 K74 [Enum.RigLabel.LeftToeBase]
      278 LOADK                            R26 K68 ["left_foot"]
      279 SETTABLE                         R26 R24 R25
      280 GETIMPORT                        R25 K40 [Enum.RigLabel.RightHip]
      282 LOADK                            R26 K75 ["right_foot"]
      283 SETTABLE                         R26 R24 R25
      284 GETIMPORT                        R25 K77 [Enum.RigLabel.RightKnee]
      286 LOADK                            R26 K75 ["right_foot"]
      287 SETTABLE                         R26 R24 R25
      288 GETIMPORT                        R25 K79 [Enum.RigLabel.RightAnkle]
      290 LOADK                            R26 K75 ["right_foot"]
      291 SETTABLE                         R26 R24 R25
      292 GETIMPORT                        R25 K81 [Enum.RigLabel.RightToeBase]
      294 LOADK                            R26 K75 ["right_foot"]
      295 SETTABLE                         R26 R24 R25
      296 DUPCLOSURE                       R25 K82 [PROTO_0]
      297 DUPCLOSURE                       R26 K83 [PROTO_1]
      298 DUPCLOSURE                       R27 K84 [PROTO_2]
      299 CAPTURE                          VAL R7
      300 DUPCLOSURE                       R28 K85 [PROTO_3]
      301 DUPCLOSURE                       R29 K86 [PROTO_4]
      302 DUPCLOSURE                       R30 K87 [PROTO_5]
      303 CAPTURE                          VAL R8
      304 DUPCLOSURE                       R31 K88 [PROTO_39]
      305 CAPTURE                          VAL R17
      306 CAPTURE                          VAL R16
      307 CAPTURE                          VAL R10
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R18
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R22
      313 CAPTURE                          VAL R27
      314 CAPTURE                          VAL R20
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R23
      317 CAPTURE                          VAL R19
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R29
      321 CAPTURE                          VAL R13
      322 CAPTURE                          VAL R30
      323 CAPTURE                          VAL R24
      324 CAPTURE                          VAL R4
      325 CAPTURE                          VAL R11
      326 CAPTURE                          VAL R14
      327 RETURN                           R31 1
