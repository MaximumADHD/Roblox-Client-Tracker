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
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K5 ["Archivable"]
       15 SETTABLEKS                       R0 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CALL                             R2 1 2
       24 JUMPIF                           R2 ; [+13]
       25 GETIMPORT                        R4 K10 [warn]
       27 LOADK                            R5 K11 ["[AnimationGen] HumanoidRigDescription autoAll failed: %*"]
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R8 R3
       30 GETIMPORT                        R7 K13 [tostring]
       32 CALL                             R7 1 1
       33 NAMECALL                         R5 R5 K14 ["format"]
       35 CALL                             R5 2 1
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K15 ["DEFAULT_RIG_ATTRIBUTE"]
       41 NAMECALL                         R4 R0 K16 ["GetAttribute"]
       43 CALL                             R4 2 1
       44 JUMPIFNOTEQKB                    R4 TRUE ; [+20]
       46 GETIMPORT                        R4 K8 [pcall]
       48 NEWCLOSURE                       R5 P1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R1
       51 CALL                             R4 1 2
       52 JUMPIF                           R4 ; [+12]
       53 GETIMPORT                        R6 K10 [warn]
       55 LOADK                            R7 K17 ["[AnimationGen] SetTposeAdjustment failed: %*"]
       56 FASTCALL1                        TOSTRING R5 ; [+3]
       57 MOVE                             R10 R5
       58 GETIMPORT                        R9 K13 [tostring]
       60 CALL                             R9 1 1
       61 NAMECALL                         R7 R7 K14 ["format"]
       63 CALL                             R7 2 1
       64 CALL                             R6 1 0
       65 RETURN                           R0 0

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
       23 NEWTABLE                         R3 4 0
       25 GETIMPORT                        R4 K14 [Enum.RigLabel.RightShoulder]
       27 GETIMPORT                        R5 K17 [CFrame.Angles]
       29 LOADN                            R6 0
       30 LOADN                            R7 0
       31 LOADK                            R8 K18 [1.3962634015954636]
       32 CALL                             R5 3 1
       33 SETTABLE                         R5 R3 R4
       34 GETIMPORT                        R4 K20 [Enum.RigLabel.LeftShoulder]
       36 GETIMPORT                        R5 K17 [CFrame.Angles]
       38 LOADN                            R6 0
       39 LOADN                            R7 0
       40 LOADK                            R8 K21 [-1.4835298641951802]
       41 CALL                             R5 3 1
       42 SETTABLE                         R5 R3 R4
       43 GETIMPORT                        R4 K23 [Enum.RigLabel.RightElbow]
       45 GETIMPORT                        R5 K17 [CFrame.Angles]
       47 LOADN                            R6 0
       48 LOADN                            R7 0
       49 LOADN                            R8 0
       50 CALL                             R5 3 1
       51 SETTABLE                         R5 R3 R4
       52 GETIMPORT                        R4 K25 [Enum.RigLabel.LeftElbow]
       54 GETIMPORT                        R5 K17 [CFrame.Angles]
       56 LOADN                            R6 0
       57 LOADN                            R7 0
       58 LOADN                            R8 0
       59 CALL                             R5 3 1
       60 SETTABLE                         R5 R3 R4
       61 DUPCLOSURE                       R4 K26 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 RETURN                           R4 1
