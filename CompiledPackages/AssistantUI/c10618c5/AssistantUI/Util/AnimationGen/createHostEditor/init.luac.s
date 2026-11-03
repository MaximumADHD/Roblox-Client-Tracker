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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["rig"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["destroy"]
        6 CALL                             R0 0 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["setTool"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getSavedPoseTransforms"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 RETURN                           R2 1
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_14:
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
       33 JUMPIF                           R7 ; [+10]
       34 JUMPIFEQKNIL                     R1 ; [+8]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K3 ["getSavedPoseTransforms"]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R1
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 CALL                             R4 3 0
       45 RETURN                           R0 0

PROTO_15:
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
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["getSavedPoseTransforms"]
       30 MOVE                             R6 R0
       31 MOVE                             R7 R4
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+3]
       35 LOADB                            R6 0
       36 RETURN                           R6 1
       37 LOADK                            R8 K3 ["Humanoid"]
       38 NAMECALL                         R6 R3 K4 ["FindFirstChildOfClass"]
       40 CALL                             R6 2 1
       41 JUMPIF                           R6 ; [+4]
       42 LOADK                            R8 K5 ["AnimationController"]
       43 NAMECALL                         R6 R3 K4 ["FindFirstChildOfClass"]
       45 CALL                             R6 2 1
       46 JUMPIFNOTEQKNIL                  R6 ; [+3]
       48 LOADB                            R7 0
       49 RETURN                           R7 1
       50 LOADK                            R9 K6 ["Animator"]
       51 NAMECALL                         R7 R6 K4 ["FindFirstChildOfClass"]
       53 CALL                             R7 2 1
       54 JUMPIFNOTEQKNIL                  R7 ; [+10]
       56 GETIMPORT                        R7 K9 [Instance.new]
       58 LOADK                            R8 K6 ["Animator"]
       59 CALL                             R7 1 1
       60 LOADB                            R8 0
       61 SETTABLEKS                       R8 R7 K10 ["Archivable"]
       63 SETTABLEKS                       R6 R7 K11 ["Parent"]
       65 GETUPVAL                         R7 3
       66 MOVE                             R8 R0
       67 MOVE                             R9 R3
       68 MOVE                             R10 R5
       69 CALL                             R7 3 0
       70 SETUPVAL                         R0 4
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K12 ["setLastClickedTime"]
       74 MOVE                             R8 R0
       75 MOVE                             R9 R4
       76 CALL                             R7 2 0
       77 LOADB                            R7 1
       78 RETURN                           R7 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["renameTransformsToClip"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["render"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
        3 JUMPIF                           R6 ; [+1]
        4 RETURN                           R3 1
        5 GETUPVAL                         R7 1
        6 GETTABLE                         R6 R7 R0
        7 JUMPIFEQKNIL                     R6 ; [+4]
        9 GETTABLEKS                       R7 R6 K1 ["keyframeSequence"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R7
       13 JUMPIFEQKNIL                     R7 ; [+6]
       15 LOADK                            R10 K2 ["AnimationRigData"]
       16 NAMECALL                         R8 R7 K3 ["FindFirstChildOfClass"]
       18 CALL                             R8 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R8
       21 LOADK                            R12 K4 ["Humanoid"]
       22 NAMECALL                         R10 R1 K3 ["FindFirstChildOfClass"]
       24 CALL                             R10 2 1
       25 JUMPIF                           R10 ; [+4]
       26 LOADK                            R12 K5 ["AnimationController"]
       27 NAMECALL                         R10 R1 K3 ["FindFirstChildOfClass"]
       29 CALL                             R10 2 1
       30 JUMPIFEQKNIL                     R10 ; [+7]
       32 LOADK                            R13 K6 ["Animator"]
       33 NAMECALL                         R11 R10 K3 ["FindFirstChildOfClass"]
       35 CALL                             R11 2 1
       36 MOVE                             R9 R11
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K7 ["isRetargetingEnabled"]
       42 MOVE                             R11 R0
       43 CALL                             R10 1 1
       44 JUMPIFNOT                        R10 ; [+4]
       45 JUMPIFEQKNIL                     R8 ; [+3]
       47 JUMPIFNOTEQKNIL                  R9 ; [+2]
       49 RETURN                           R3 1
       50 NEWTABLE                         R10 0 0
       52 NEWTABLE                         R11 0 0
       54 MOVE                             R12 R5
       55 LOADNIL                          R13
       56 LOADNIL                          R14
       57 FORGPREP                         R12
       58 GETTABLE                         R17 R4 R15
       59 JUMPIFEQKNIL                     R17 ; [+16]
       61 JUMPIFEQ                         R17 R16 ; [+14]
       63 LOADB                            R18 1
       64 SETTABLE                         R18 R10 R15
       65 GETTABLEKS                       R18 R17 K8 ["Position"]
       67 GETTABLEKS                       R20 R16 K8 ["Position"]
       69 LOADK                            R21 K9 [1E-05]
       70 NAMECALL                         R18 R18 K10 ["FuzzyEq"]
       72 CALL                             R18 3 1
       73 JUMPIF                           R18 ; [+2]
       74 LOADB                            R18 1
       75 SETTABLE                         R18 R11 R15
       76 FORGLOOP                         R12 2 ; [-19]
       78 GETIMPORT                        R12 K12 [next]
       80 MOVE                             R13 R10
       81 CALL                             R12 1 1
       82 JUMPIFNOTEQKNIL                  R12 ; [+2]
       84 RETURN                           R3 1
       85 GETUPVAL                         R12 3
       86 MOVE                             R13 R1
       87 CALL                             R12 1 1
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K13 ["start"]
       91 DUPTABLE                         R14 K17 [{"rig", "animator", "animationRigData"}]
       92 SETTABLEKS                       R1 R14 K14 ["rig"]
       94 SETTABLEKS                       R9 R14 K15 ["animator"]
       96 SETTABLEKS                       R8 R14 K16 ["animationRigData"]
       98 CALL                             R13 1 1
       99 JUMPIFNOTEQKNIL                  R13 ; [+2]
      101 RETURN                           R3 1
      102 NEWTABLE                         R14 0 0
      104 GETUPVAL                         R15 5
      105 MOVE                             R16 R1
      106 CALL                             R15 1 3
      107 FORGPREP                         R15
      108 GETUPVAL                         R20 6
      109 GETTABLEKS                       R20 R20 K18 ["toClipName"]
      111 MOVE                             R21 R2
      112 MOVE                             R22 R18
      113 CALL                             R20 2 1
      114 GETUPVAL                         R21 6
      115 GETTABLEKS                       R21 R21 K18 ["toClipName"]
      117 MOVE                             R22 R2
      118 MOVE                             R23 R19
      119 CALL                             R21 2 1
      120 SETTABLE                         R21 R14 R20
      121 FORGLOOP                         R15 2 ; [-14]
      123 GETIMPORT                        R15 K20 [pcall]
      125 GETUPVAL                         R16 7
      126 DUPTABLE                         R17 K27 [{"initialPose", "targetTransforms", "editedJointNames", "translatedJointNames", "jointParents", "render"}]
      127 SETTABLEKS                       R3 R17 K21 ["initialPose"]
      129 SETTABLEKS                       R5 R17 K22 ["targetTransforms"]
      131 SETTABLEKS                       R10 R17 K23 ["editedJointNames"]
      133 SETTABLEKS                       R11 R17 K24 ["translatedJointNames"]
      135 SETTABLEKS                       R14 R17 K25 ["jointParents"]
      137 NEWCLOSURE                       R18 P0
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R13
      141 SETTABLEKS                       R18 R17 K26 ["render"]
      143 CALL                             R15 2 2
      144 GETTABLEKS                       R17 R13 K28 ["finish"]
      146 CALL                             R17 0 0
      147 GETUPVAL                         R17 8
      148 MOVE                             R18 R0
      149 MOVE                             R19 R1
      150 MOVE                             R20 R12
      151 CALL                             R17 3 0
      152 JUMPIF                           R15 ; [+13]
      153 GETIMPORT                        R17 K30 [warn]
      155 LOADK                            R18 K31 ["[AnimationGen] Retargeted pose solve failed: %*"]
      156 FASTCALL1                        TOSTRING R16 ; [+3]
      157 MOVE                             R21 R16
      158 GETIMPORT                        R20 K33 [tostring]
      160 CALL                             R20 1 1
      161 NAMECALL                         R18 R18 K34 ["format"]
      163 CALL                             R18 2 1
      164 CALL                             R17 1 0
      165 RETURN                           R3 1
      166 NAMECALL                         R17 R3 K35 ["Destroy"]
      168 CALL                             R17 1 0
      169 RETURN                           R16 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sampleWorldFromCharacter"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_23:
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
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R2 3 0
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R3 R0 K0 ["contentId"]
       25 GETTABLEKS                       R4 R0 K3 ["time"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       61 SETTABLEKS                       R4 R3 K10 ["commit"]
       63 NEWCLOSURE                       R4 P3
       64 CAPTURE                          UPVAL U15
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          UPVAL U3
       68 SETTABLEKS                       R4 R3 K11 ["onDeselected"]
       70 CALL                             R2 1 1
       71 SETUPVAL                         R2 1
       72 GETUPVAL                         R2 3
       73 GETTABLEKS                       R2 R2 K3 ["refreshStyles"]
       75 CALL                             R2 0 0
       76 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       19 JUMPIFEQKNIL                     R2 ; [+24]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R6 R1 K3 ["rigPose"]
       26 JUMPIF                           R6 ; [+16]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["getLastClickedTime"]
       30 MOVE                             R8 R0
       31 CALL                             R7 1 1
       32 JUMPIFEQKNIL                     R7 ; [+9]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["getSavedPoseTransforms"]
       37 MOVE                             R9 R0
       38 MOVE                             R10 R7
       39 CALL                             R8 2 1
       40 MOVE                             R6 R8
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 CALL                             R3 3 0
       44 GETUPVAL                         R3 3
       45 MOVE                             R5 R0
       46 NAMECALL                         R3 R3 K6 ["Fire"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroySnapshot"]
        3 GETTABLEKS                       R2 R0 K1 ["store"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getLastClickedTime"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearSavedKeyframes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R1 R0 ; [+3]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMeshSelectorActive"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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
       20 NEWCLOSURE                       R12 P1
       21 CAPTURE                          REF R8
       22 LOADNIL                          R13
       23 GETUPVAL                         R14 3
       24 DUPTABLE                         R15 K8 [{"getRig", "getSelectedJoint", "onJointClicked", "clearSelection", "onDeactivated", "setDraggerTool"}]
       25 SETTABLEKS                       R11 R15 K2 ["getRig"]
       27 NEWCLOSURE                       R16 P2
       28 CAPTURE                          REF R7
       29 SETTABLEKS                       R16 R15 K3 ["getSelectedJoint"]
       31 NEWCLOSURE                       R16 P3
       32 CAPTURE                          REF R13
       33 SETTABLEKS                       R16 R15 K4 ["onJointClicked"]
       35 NEWCLOSURE                       R16 P4
       36 CAPTURE                          REF R7
       37 CAPTURE                          REF R8
       38 SETTABLEKS                       R16 R15 K5 ["clearSelection"]
       40 NEWCLOSURE                       R16 P5
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R16 R15 K6 ["onDeactivated"]
       44 NEWCLOSURE                       R16 P6
       45 CAPTURE                          REF R9
       46 CAPTURE                          REF R8
       47 SETTABLEKS                       R16 R15 K7 ["setDraggerTool"]
       49 CALL                             R14 1 1
       50 NEWCLOSURE                       R15 P7
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R1
       54 NEWCLOSURE                       R16 P8
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 NEWCLOSURE                       R17 P9
       60 CAPTURE                          VAL R3
       61 NEWCLOSURE                       R18 P10
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R16
       66 NEWCLOSURE                       R19 P11
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R16
       71 CAPTURE                          REF R10
       72 NEWCLOSURE                       R20 P12
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U8
       75 NEWCLOSURE                       R21 P13
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          VAL R16
       85 NEWCLOSURE                       R22 P14
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          VAL R20
       92 CAPTURE                          UPVAL U12
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          UPVAL U13
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          VAL R21
       98 CAPTURE                          VAL R6
       99 NEWCLOSURE                       R13 P15
      100 CAPTURE                          REF R7
      101 CAPTURE                          REF R8
      102 CAPTURE                          UPVAL U15
      103 CAPTURE                          VAL R14
      104 CAPTURE                          UPVAL U16
      105 CAPTURE                          REF R9
      106 CAPTURE                          REF R10
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R15
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R22
      114 CAPTURE                          VAL R18
      115 CAPTURE                          UPVAL U4
      116 DUPTABLE                         R23 K12 [{"capture", "restore", "dispose"}]
      117 NEWCLOSURE                       R24 P16
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R3
      120 CAPTURE                          UPVAL U7
      121 SETTABLEKS                       R24 R23 K9 ["capture"]
      123 NEWCLOSURE                       R24 P17
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R24 R23 K10 ["restore"]
      130 NEWCLOSURE                       R24 P18
      131 CAPTURE                          VAL R3
      132 SETTABLEKS                       R24 R23 K11 ["dispose"]
      134 DUPTABLE                         R24 K35 [{"applySavedPose", "reapplySavedPose", "undoParticipant", "captureSavedPoses", "clearEditState", "restoreSavedPoses", "destroySavedPoses", "withSavedPoseSnapshot", "findSavedPoseTime", "isSavedKeyframeAuthored", "hasEditedKeyframes", "getSavedDragEditedEffectors", "getKeyposeTimes", "getSavedPoseIntervals", "insertGeneratedKeyframe", "deleteSavedKeyframe", "updateSavedPoseInterval", "setMeshSelectorActive", "poseDeselectedSignal", "poseEditedSignal", "onRigChanged", "destroy"}]
      135 SETTABLEKS                       R19 R24 K13 ["applySavedPose"]
      137 NEWCLOSURE                       R25 P19
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R25 R24 K14 ["reapplySavedPose"]
      142 SETTABLEKS                       R23 R24 K15 ["undoParticipant"]
      144 GETTABLEKS                       R25 R3 K36 ["snapshot"]
      146 SETTABLEKS                       R25 R24 K16 ["captureSavedPoses"]
      148 NEWCLOSURE                       R25 P20
      149 CAPTURE                          VAL R3
      150 CAPTURE                          REF R10
      151 SETTABLEKS                       R25 R24 K17 ["clearEditState"]
      153 GETTABLEKS                       R25 R3 K10 ["restore"]
      155 SETTABLEKS                       R25 R24 K18 ["restoreSavedPoses"]
      157 GETTABLEKS                       R25 R3 K37 ["destroySnapshot"]
      159 SETTABLEKS                       R25 R24 K19 ["destroySavedPoses"]
      161 GETTABLEKS                       R25 R3 K38 ["withSnapshot"]
      163 SETTABLEKS                       R25 R24 K20 ["withSavedPoseSnapshot"]
      165 GETTABLEKS                       R25 R3 K39 ["findSavedTime"]
      167 SETTABLEKS                       R25 R24 K21 ["findSavedPoseTime"]
      169 GETTABLEKS                       R25 R3 K22 ["isSavedKeyframeAuthored"]
      171 SETTABLEKS                       R25 R24 K22 ["isSavedKeyframeAuthored"]
      173 GETTABLEKS                       R25 R3 K23 ["hasEditedKeyframes"]
      175 SETTABLEKS                       R25 R24 K23 ["hasEditedKeyframes"]
      177 GETTABLEKS                       R25 R3 K24 ["getSavedDragEditedEffectors"]
      179 SETTABLEKS                       R25 R24 K24 ["getSavedDragEditedEffectors"]
      181 GETTABLEKS                       R25 R3 K25 ["getKeyposeTimes"]
      183 SETTABLEKS                       R25 R24 K25 ["getKeyposeTimes"]
      185 GETTABLEKS                       R25 R3 K26 ["getSavedPoseIntervals"]
      187 SETTABLEKS                       R25 R24 K26 ["getSavedPoseIntervals"]
      189 GETTABLEKS                       R25 R3 K27 ["insertGeneratedKeyframe"]
      191 SETTABLEKS                       R25 R24 K27 ["insertGeneratedKeyframe"]
      193 GETTABLEKS                       R25 R3 K28 ["deleteSavedKeyframe"]
      195 SETTABLEKS                       R25 R24 K28 ["deleteSavedKeyframe"]
      197 GETTABLEKS                       R25 R3 K29 ["updateSavedPoseInterval"]
      199 SETTABLEKS                       R25 R24 K29 ["updateSavedPoseInterval"]
      201 NEWCLOSURE                       R25 P21
      202 CAPTURE                          VAL R14
      203 SETTABLEKS                       R25 R24 K30 ["setMeshSelectorActive"]
      205 SETTABLEKS                       R5 R24 K31 ["poseDeselectedSignal"]
      207 SETTABLEKS                       R6 R24 K32 ["poseEditedSignal"]
      209 GETTABLEKS                       R25 R14 K33 ["onRigChanged"]
      211 SETTABLEKS                       R25 R24 K33 ["onRigChanged"]
      213 NEWCLOSURE                       R25 P22
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R4
      217 SETTABLEKS                       R25 R24 K34 ["destroy"]
      219 CLOSEUPVALS                      R7
      220 RETURN                           R24 1

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
       28 GETTABLEKS                       R4 R4 K11 ["DragEditSnapshot"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R0 K12 ["Flags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Util"]
       40 GETTABLEKS                       R6 R6 K8 ["AnimationGen"]
       42 GETTABLEKS                       R6 R6 K13 ["HostTypes"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETIMPORT                        R7 K1 [script]
       49 GETTABLEKS                       R7 R7 K14 ["JointFrames"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K7 ["Util"]
       56 GETTABLEKS                       R8 R8 K8 ["AnimationGen"]
       58 GETTABLEKS                       R8 R8 K9 ["Posing"]
       60 GETTABLEKS                       R8 R8 K15 ["RigPoseNames"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R1 K16 ["Signal"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETIMPORT                        R10 K1 [script]
       72 GETTABLEKS                       R10 R10 K17 ["SkeletonAdornmentUtils"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R0 K18 ["Types"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K7 ["Util"]
       84 GETTABLEKS                       R12 R12 K8 ["AnimationGen"]
       86 GETTABLEKS                       R12 R12 K9 ["Posing"]
       88 GETTABLEKS                       R12 R12 K19 ["applyTargetPoseDeltas"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETIMPORT                        R13 K1 [script]
       95 GETTABLEKS                       R13 R13 K20 ["createJointDragSession"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K6 [require]
      100 GETIMPORT                        R14 K1 [script]
      102 GETTABLEKS                       R14 R14 K21 ["createPartDragger"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R0 K7 ["Util"]
      109 GETTABLEKS                       R15 R15 K8 ["AnimationGen"]
      111 GETTABLEKS                       R15 R15 K9 ["Posing"]
      113 GETTABLEKS                       R15 R15 K22 ["createRetargetProbe"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K6 [require]
      118 GETIMPORT                        R16 K1 [script]
      120 GETTABLEKS                       R16 R16 K23 ["createSavedKeyframeStore"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K6 [require]
      125 GETIMPORT                        R17 K1 [script]
      127 GETTABLEKS                       R17 R17 K24 ["createSkeletonAdornment"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K6 [require]
      132 GETTABLEKS                       R18 R0 K7 ["Util"]
      134 GETTABLEKS                       R18 R18 K8 ["AnimationGen"]
      136 GETTABLEKS                       R18 R18 K9 ["Posing"]
      138 GETTABLEKS                       R18 R18 K25 ["getRigJointParents"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K6 [require]
      143 GETTABLEKS                       R19 R0 K7 ["Util"]
      145 GETTABLEKS                       R19 R19 K8 ["AnimationGen"]
      147 GETTABLEKS                       R19 R19 K9 ["Posing"]
      149 GETTABLEKS                       R19 R19 K26 ["getRigJointTransforms"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K6 [require]
      154 GETTABLEKS                       R20 R0 K7 ["Util"]
      156 GETTABLEKS                       R20 R20 K8 ["AnimationGen"]
      158 GETTABLEKS                       R20 R20 K9 ["Posing"]
      160 GETTABLEKS                       R20 R20 K27 ["solveRetargetedPose"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K6 [require]
      165 GETTABLEKS                       R21 R0 K7 ["Util"]
      167 GETTABLEKS                       R21 R21 K8 ["AnimationGen"]
      169 GETTABLEKS                       R21 R21 K28 ["stepAnimations"]
      171 CALL                             R20 1 1
      172 DUPCLOSURE                       R21 K29 [PROTO_0]
      173 DUPCLOSURE                       R22 K30 [PROTO_1]
      174 DUPCLOSURE                       R23 K31 [PROTO_2]
      175 CAPTURE                          VAL R6
      176 DUPCLOSURE                       R24 K32 [PROTO_3]
      177 DUPCLOSURE                       R25 K33 [PROTO_33]
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R12
      195 RETURN                           R25 1
