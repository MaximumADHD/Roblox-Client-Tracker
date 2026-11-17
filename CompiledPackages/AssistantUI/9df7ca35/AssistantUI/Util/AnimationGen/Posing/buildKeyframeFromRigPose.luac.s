PROTO_0:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Pose"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R0 K4 ["Name"]
        6 SETTABLEKS                       R4 R3 K4 ["Name"]
        8 GETTABLEKS                       R4 R0 K5 ["Weight"]
       10 SETTABLEKS                       R4 R3 K5 ["Weight"]
       12 GETIMPORT                        R4 K9 [Enum.PoseEasingStyle.Linear]
       14 SETTABLEKS                       R4 R3 K10 ["EasingStyle"]
       16 GETIMPORT                        R4 K13 [Enum.PoseEasingDirection.In]
       18 SETTABLEKS                       R4 R3 K14 ["EasingDirection"]
       20 GETTABLEKS                       R5 R0 K4 ["Name"]
       22 GETTABLE                         R4 R1 R5
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R4 R0 K15 ["CFrame"]
       26 SETTABLEKS                       R4 R3 K15 ["CFrame"]
       28 SETTABLEKS                       R2 R3 K16 ["Parent"]
       30 NAMECALL                         R4 R0 K17 ["GetChildren"]
       32 CALL                             R4 1 3
       33 FORGPREP                         R4
       34 LOADK                            R11 K3 ["Pose"]
       35 NAMECALL                         R9 R8 K18 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+5]
       39 GETUPVAL                         R9 0
       40 MOVE                             R10 R8
       41 MOVE                             R11 R1
       42 MOVE                             R12 R3
       43 CALL                             R9 3 0
       44 FORGLOOP                         R4 2 ; [-11]
       46 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 GETIMPORT                        R5 K2 [Instance.new]
        5 LOADK                            R6 K3 ["Keyframe"]
        6 CALL                             R5 1 1
        7 SETTABLEKS                       R2 R5 K4 ["Time"]
        9 NAMECALL                         R6 R1 K5 ["GetChildren"]
       11 CALL                             R6 1 3
       12 FORGPREP                         R6
       13 LOADK                            R13 K6 ["Pose"]
       14 NAMECALL                         R11 R10 K7 ["IsA"]
       16 CALL                             R11 2 1
       17 JUMPIFNOT                        R11 ; [+5]
       18 GETUPVAL                         R11 1
       19 MOVE                             R12 R10
       20 MOVE                             R13 R4
       21 MOVE                             R14 R5
       22 CALL                             R11 3 0
       23 FORGLOOP                         R6 2 ; [-11]
       25 NEWTABLE                         R6 0 0
       27 NAMECALL                         R7 R5 K8 ["GetDescendants"]
       29 CALL                             R7 1 3
       30 FORGPREP                         R7
       31 LOADK                            R14 K6 ["Pose"]
       32 NAMECALL                         R12 R11 K7 ["IsA"]
       34 CALL                             R12 2 1
       35 JUMPIFNOT                        R12 ; [+4]
       36 GETTABLEKS                       R12 R11 K9 ["Name"]
       38 LOADB                            R13 1
       39 SETTABLE                         R13 R6 R12
       40 FORGLOOP                         R7 2 ; [-10]
       42 MOVE                             R7 R4
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 GETTABLE                         R12 R6 R10
       47 JUMPIF                           R12 ; [+27]
       48 GETIMPORT                        R12 K12 [CFrame.identity]
       50 JUMPIFEQ                         R11 R12 ; [+24]
       52 GETUPVAL                         R13 2
       53 GETTABLEKS                       R13 R13 K13 ["FFlagAssistantAnimationGenNewPosing"]
       55 JUMPIFNOT                        R13 ; [+10]
       56 JUMPIFEQKNIL                     R3 ; [+9]
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K14 ["ensurePose"]
       61 MOVE                             R13 R5
       62 MOVE                             R14 R10
       63 MOVE                             R15 R3
       64 CALL                             R12 3 1
       65 JUMP                             ; [+7]
       66 GETUPVAL                         R12 3
       67 GETTABLEKS                       R12 R12 K15 ["DEPRECATED_ensurePose"]
       69 MOVE                             R13 R5
       70 MOVE                             R14 R10
       71 MOVE                             R15 R1
       72 CALL                             R12 3 1
       73 SETTABLEKS                       R11 R12 K10 ["CFrame"]
       75 FORGLOOP                         R7 2 ; [-30]
       77 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       18 GETTABLEKS                       R3 R3 K9 ["Posing"]
       20 GETTABLEKS                       R3 R3 K10 ["KeyframePoses"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Util"]
       27 GETTABLEKS                       R4 R4 K8 ["AnimationGen"]
       29 GETTABLEKS                       R4 R4 K9 ["Posing"]
       31 GETTABLEKS                       R4 R4 K11 ["getRigJointTransforms"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R5 K13 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 RETURN                           R5 1
