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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K2 [Instance.new]
        5 LOADK                            R5 K3 ["Keyframe"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R2 R4 K4 ["Time"]
        9 NAMECALL                         R5 R1 K5 ["GetChildren"]
       11 CALL                             R5 1 3
       12 FORGPREP                         R5
       13 LOADK                            R12 K6 ["Pose"]
       14 NAMECALL                         R10 R9 K7 ["IsA"]
       16 CALL                             R10 2 1
       17 JUMPIFNOT                        R10 ; [+5]
       18 GETUPVAL                         R10 1
       19 MOVE                             R11 R9
       20 MOVE                             R12 R3
       21 MOVE                             R13 R4
       22 CALL                             R10 3 0
       23 FORGLOOP                         R5 2 ; [-11]
       25 NEWTABLE                         R5 0 0
       27 NAMECALL                         R6 R4 K8 ["GetDescendants"]
       29 CALL                             R6 1 3
       30 FORGPREP                         R6
       31 LOADK                            R13 K6 ["Pose"]
       32 NAMECALL                         R11 R10 K7 ["IsA"]
       34 CALL                             R11 2 1
       35 JUMPIFNOT                        R11 ; [+4]
       36 GETTABLEKS                       R11 R10 K9 ["Name"]
       38 LOADB                            R12 1
       39 SETTABLE                         R12 R5 R11
       40 FORGLOOP                         R6 2 ; [-10]
       42 MOVE                             R6 R3
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 GETTABLE                         R11 R5 R9
       47 JUMPIF                           R11 ; [+13]
       48 GETIMPORT                        R11 K12 [CFrame.identity]
       50 JUMPIFEQ                         R10 R11 ; [+10]
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R11 R11 K13 ["ensurePose"]
       55 MOVE                             R12 R4
       56 MOVE                             R13 R9
       57 MOVE                             R14 R1
       58 CALL                             R11 3 1
       59 SETTABLEKS                       R10 R11 K10 ["CFrame"]
       61 FORGLOOP                         R6 2 ; [-16]
       63 RETURN                           R4 1

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
       15 GETTABLEKS                       R2 R2 K9 ["KeyframePoses"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["getRigJointTransforms"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K11 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R4 K12 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R4 1
