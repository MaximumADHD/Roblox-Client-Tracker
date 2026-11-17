PROTO_0:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 GETTABLEKS                       R2 R1 K2 ["RigType"]
        8 GETIMPORT                        R3 K6 [Enum.HumanoidRigType.R15]
       10 JUMPIFEQ                         R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 NAMECALL                         R4 R0 K7 ["GetDescendants"]
       20 CALL                             R4 1 3
       21 FORGPREP                         R4
       22 LOADK                            R11 K8 ["BasePart"]
       23 NAMECALL                         R9 R8 K9 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+9]
       27 GETTABLEKS                       R9 R8 K10 ["Name"]
       29 LOADB                            R10 1
       30 SETTABLE                         R10 R2 R9
       31 GETTABLEKS                       R9 R8 K10 ["Name"]
       33 LOADB                            R10 1
       34 SETTABLE                         R10 R3 R9
       35 JUMP                             ; [+9]
       36 LOADK                            R11 K11 ["Bone"]
       37 NAMECALL                         R9 R8 K9 ["IsA"]
       39 CALL                             R9 2 1
       40 JUMPIFNOT                        R9 ; [+4]
       41 GETTABLEKS                       R9 R8 K10 ["Name"]
       43 LOADB                            R10 1
       44 SETTABLE                         R10 R3 R9
       45 FORGLOOP                         R4 2 ; [-24]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K12 ["R15_PLUS_JOINT_NAMES"]
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 GETTABLE                         R9 R3 R8
       54 JUMPIFNOT                        R9 ; [+2]
       55 LOADB                            R9 0
       56 RETURN                           R9 1
       57 FORGLOOP                         R4 2 ; [-5]
       59 GETUPVAL                         R4 1
       60 LOADNIL                          R5
       61 LOADNIL                          R6
       62 FORGPREP                         R4
       63 GETTABLE                         R9 R2 R8
       64 JUMPIF                           R9 ; [+2]
       65 LOADB                            R9 0
       66 RETURN                           R9 1
       67 FORGLOOP                         R4 2 ; [-5]
       69 LOADB                            R4 1
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 16
       18 LOADK                            R3 K9 ["HumanoidRootPart"]
       19 LOADK                            R4 K10 ["Head"]
       20 LOADK                            R5 K11 ["UpperTorso"]
       21 LOADK                            R6 K12 ["LowerTorso"]
       22 LOADK                            R7 K13 ["LeftUpperArm"]
       23 LOADK                            R8 K14 ["LeftLowerArm"]
       24 LOADK                            R9 K15 ["LeftHand"]
       25 LOADK                            R10 K16 ["RightUpperArm"]
       26 LOADK                            R11 K17 ["RightLowerArm"]
       27 LOADK                            R12 K18 ["RightHand"]
       28 LOADK                            R13 K19 ["LeftUpperLeg"]
       29 LOADK                            R14 K20 ["LeftLowerLeg"]
       30 LOADK                            R15 K21 ["LeftFoot"]
       31 LOADK                            R16 K22 ["RightUpperLeg"]
       32 LOADK                            R17 K23 ["RightLowerLeg"]
       33 LOADK                            R18 K24 ["RightFoot"]
       34 SETLIST                          R2 R3 16 [1]
       36 DUPCLOSURE                       R3 K25 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 RETURN                           R3 1
