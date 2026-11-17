PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoAll"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADB                            R3 1
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R3
        6 MOVE                             R8 R4
        7 NAMECALL                         R5 R5 K0 ["SetTposeAdjustment"]
        9 CALL                             R5 3 0
       10 FORGLOOP                         R0 2 ; [-7]
       12 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["HumanoidRigDescription"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R1 3 1
        5 JUMPIFEQKNIL                     R1 ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K4 [Instance.new]
       10 LOADK                            R2 K0 ["HumanoidRigDescription"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantAnimationGenNewPosing"]
       15 JUMPIF                           R2 ; [+3]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K6 ["Archivable"]
       19 SETTABLEKS                       R0 R1 K7 ["Parent"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 FASTPCALL                        pcall 1 ; [+2]
       26 GETIMPORT                        R2 K9 [pcall]
       28 CALL                             R2 1 2
       29 JUMPIF                           R2 ; [+16]
       30 NAMECALL                         R4 R1 K10 ["Destroy"]
       32 CALL                             R4 1 0
       33 GETIMPORT                        R4 K12 [warn]
       35 LOADK                            R5 K13 ["[AnimationGen] HumanoidRigDescription autoAll failed: %*"]
       36 FASTCALL1                        TOSTRING R3 ; [+3]
       37 MOVE                             R8 R3
       38 GETIMPORT                        R7 K15 [tostring]
       40 CALL                             R7 1 1
       41 NAMECALL                         R5 R5 K16 ["format"]
       43 CALL                             R5 2 1
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K17 ["DEFAULT_RIG_ATTRIBUTE"]
       49 NAMECALL                         R4 R0 K18 ["GetAttribute"]
       51 CALL                             R4 2 1
       52 JUMPIFNOTEQKB                    R4 TRUE ; [+21]
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R1
       57 FASTPCALL                        pcall 1 ; [+2]
       58 GETIMPORT                        R4 K9 [pcall]
       60 CALL                             R4 1 2
       61 JUMPIF                           R4 ; [+12]
       62 GETIMPORT                        R6 K12 [warn]
       64 LOADK                            R7 K19 ["[AnimationGen] SetTposeAdjustment failed: %*"]
       65 FASTCALL1                        TOSTRING R5 ; [+3]
       66 MOVE                             R10 R5
       67 GETIMPORT                        R9 K15 [tostring]
       69 CALL                             R9 1 1
       70 NAMECALL                         R7 R7 K16 ["format"]
       72 CALL                             R7 2 1
       73 CALL                             R6 1 0
       74 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationGen"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGenConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 4 0
       30 GETIMPORT                        R5 K15 [Enum.RigLabel.RightShoulder]
       32 GETIMPORT                        R6 K18 [CFrame.Angles]
       34 LOADN                            R7 0
       35 LOADN                            R8 0
       36 LOADK                            R9 K19 [1.3962634015954636]
       37 CALL                             R6 3 1
       38 SETTABLE                         R6 R4 R5
       39 GETIMPORT                        R5 K21 [Enum.RigLabel.LeftShoulder]
       41 GETIMPORT                        R6 K18 [CFrame.Angles]
       43 LOADN                            R7 0
       44 LOADN                            R8 0
       45 LOADK                            R9 K22 [-1.4835298641951802]
       46 CALL                             R6 3 1
       47 SETTABLE                         R6 R4 R5
       48 GETIMPORT                        R5 K24 [Enum.RigLabel.RightElbow]
       50 GETIMPORT                        R6 K18 [CFrame.Angles]
       52 LOADN                            R7 0
       53 LOADN                            R8 0
       54 LOADN                            R9 0
       55 CALL                             R6 3 1
       56 SETTABLE                         R6 R4 R5
       57 GETIMPORT                        R5 K26 [Enum.RigLabel.LeftElbow]
       59 GETIMPORT                        R6 K18 [CFrame.Angles]
       61 LOADN                            R7 0
       62 LOADN                            R8 0
       63 LOADN                            R9 0
       64 CALL                             R6 3 1
       65 SETTABLE                         R6 R4 R5
       66 DUPCLOSURE                       R5 K27 [PROTO_2]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 RETURN                           R5 1
