PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["poseMap"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 0 0
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["poseMap"]
       12 MOVE                             R6 R0
       13 CALL                             R5 1 3
       14 FORGPREP                         R5
       15 GETTABLE                         R10 R2 R8
       16 JUMPIFEQKNIL                     R10 ; [+4]
       18 GETTABLEKS                       R11 R10 K1 ["CFrame"]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R11 K3 [CFrame.identity]
       23 GETTABLEKS                       R12 R9 K1 ["CFrame"]
       25 GETTABLEKS                       R12 R12 K4 ["Rotation"]
       27 GETTABLEKS                       R14 R11 K4 ["Rotation"]
       29 NAMECALL                         R12 R12 K5 ["FuzzyEq"]
       31 CALL                             R12 2 1
       32 JUMPIF                           R12 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       35 MOVE                             R13 R3
       36 MOVE                             R14 R8
       37 GETIMPORT                        R12 K8 [table.insert]
       39 CALL                             R12 2 0
       40 GETTABLEKS                       R12 R9 K1 ["CFrame"]
       42 GETTABLEKS                       R12 R12 K9 ["Position"]
       44 GETTABLEKS                       R14 R11 K9 ["Position"]
       46 NAMECALL                         R12 R12 K5 ["FuzzyEq"]
       48 CALL                             R12 2 1
       49 JUMPIF                           R12 ; [+7]
       50 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       52 MOVE                             R13 R4
       53 MOVE                             R14 R8
       54 GETIMPORT                        R12 K8 [table.insert]
       56 CALL                             R12 2 0
       57 FORGLOOP                         R5 2 ; [-43]
       59 GETIMPORT                        R5 K11 [table.sort]
       61 MOVE                             R6 R3
       62 CALL                             R5 1 0
       63 GETIMPORT                        R5 K11 [table.sort]
       65 MOVE                             R6 R4
       66 CALL                             R5 1 0
       67 RETURN                           R3 2

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["poses"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R0 K1 ["baselines"]
        9 GETTABLE                         R7 R8 R5
       10 GETUPVAL                         R9 0
       11 GETTABLE                         R8 R9 R5
       12 JUMPIFEQKNIL                     R7 ; [+35]
       14 JUMPIFEQKNIL                     R8 ; [+33]
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R6
       18 MOVE                             R11 R7
       19 CALL                             R9 2 2
       20 LENGTH                           R11 R9
       21 JUMPIFNOTEQKN                    R11 K2 [0] ; [+4]
       23 LENGTH                           R11 R10
       24 JUMPIFEQKN                       R11 K2 [0] ; [+23]
       26 DUPTABLE                         R13 K8 [{"authored", "baseline", "poseTime", "bounds", "holdJointSets"}]
       27 SETTABLEKS                       R6 R13 K3 ["authored"]
       29 SETTABLEKS                       R7 R13 K4 ["baseline"]
       31 SETTABLEKS                       R5 R13 K5 ["poseTime"]
       33 SETTABLEKS                       R8 R13 K6 ["bounds"]
       35 DUPTABLE                         R14 K11 [{"rotateJointNames", "moveJointNames"}]
       36 SETTABLEKS                       R9 R14 K9 ["rotateJointNames"]
       38 SETTABLEKS                       R10 R14 K10 ["moveJointNames"]
       40 SETTABLEKS                       R14 R13 K7 ["holdJointSets"]
       42 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
       44 MOVE                             R12 R1
       45 GETIMPORT                        R11 K14 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R2 2 ; [-42]
       50 LENGTH                           R2 R1
       51 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
       53 LOADNIL                          R2
       54 RETURN                           R2 1
       55 GETUPVAL                         R2 2
       56 NAMECALL                         R2 R2 K15 ["Clone"]
       58 CALL                             R2 1 1
       59 GETUPVAL                         R3 3
       60 MOVE                             R4 R2
       61 MOVE                             R5 R1
       62 CALL                             R3 2 0
       63 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["getSavedPoseIntervals"]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R0 K1 ["withSavedPoseSnapshot"]
        6 MOVE                             R5 R1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

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
       26 GETTABLEKS                       R3 R3 K10 ["applyHeldPoses"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K11 ["createHostEditor"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       44 GETTABLEKS                       R5 R5 K11 ["createHostEditor"]
       46 GETTABLEKS                       R5 R5 K12 ["createSavedKeyframeStore"]
       48 CALL                             R4 1 1
       49 DUPCLOSURE                       R5 K13 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R6 K14 [PROTO_2]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 RETURN                           R6 1
