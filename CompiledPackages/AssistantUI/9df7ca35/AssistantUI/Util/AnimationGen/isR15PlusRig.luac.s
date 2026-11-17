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
       16 NAMECALL                         R3 R0 K7 ["GetDescendants"]
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 LOADK                            R10 K8 ["BasePart"]
       21 NAMECALL                         R8 R7 K9 ["IsA"]
       23 CALL                             R8 2 1
       24 JUMPIF                           R8 ; [+5]
       25 LOADK                            R10 K10 ["Bone"]
       26 NAMECALL                         R8 R7 K9 ["IsA"]
       28 CALL                             R8 2 1
       29 JUMPIFNOT                        R8 ; [+4]
       30 GETTABLEKS                       R8 R7 K11 ["Name"]
       32 LOADB                            R9 1
       33 SETTABLE                         R9 R2 R8
       34 FORGLOOP                         R3 2 ; [-15]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K12 ["R15_PLUS_JOINT_NAMES"]
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETTABLE                         R8 R2 R7
       43 JUMPIF                           R8 ; [+2]
       44 LOADB                            R8 0
       45 RETURN                           R8 1
       46 FORGLOOP                         R3 2 ; [-5]
       48 LOADB                            R3 1
       49 RETURN                           R3 1

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
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
