PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Pose"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+3]
       11 GETTABLEKS                       R7 R6 K3 ["Name"]
       13 SETTABLE                         R6 R1 R7
       14 FORGLOOP                         R2 2 ; [-9]
       16 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R1 ; [+23]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["poseMap"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFEQKNIL                     R2 ; [+15]
       10 GETTABLEKS                       R3 R2 K1 ["Parent"]
       12 JUMPIFEQKNIL                     R3 ; [+9]
       14 LOADK                            R6 K2 ["Pose"]
       15 NAMECALL                         R4 R3 K3 ["IsA"]
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R4 R3 K4 ["Name"]
       21 RETURN                           R4 1
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 GETUPVAL                         R3 1
       25 GETTABLE                         R2 R3 R0
       26 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["poseMap"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLE                         R4 R3 R1
        6 JUMPIFEQKNIL                     R4 ; [+2]
        8 RETURN                           R4 1
        9 JUMPIFEQKNIL                     R2 ; [+23]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K0 ["poseMap"]
       14 MOVE                             R8 R2
       15 CALL                             R7 1 1
       16 GETTABLE                         R6 R7 R1
       17 JUMPIFEQKNIL                     R6 ; [+15]
       19 GETTABLEKS                       R7 R6 K1 ["Parent"]
       21 JUMPIFEQKNIL                     R7 ; [+9]
       23 LOADK                            R10 K2 ["Pose"]
       24 NAMECALL                         R8 R7 K3 ["IsA"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+3]
       28 GETTABLEKS                       R5 R7 K4 ["Name"]
       30 JUMP                             ; [+4]
       31 LOADNIL                          R5
       32 JUMP                             ; [+2]
       33 GETUPVAL                         R6 1
       34 GETTABLE                         R5 R6 R1
       35 MOVE                             R6 R0
       36 JUMPIFEQKNIL                     R5 ; [+9]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["ensurePose"]
       41 MOVE                             R8 R0
       42 MOVE                             R9 R5
       43 MOVE                             R10 R2
       44 CALL                             R7 3 1
       45 MOVE                             R6 R7
       46 GETIMPORT                        R7 K8 [Instance.new]
       48 LOADK                            R8 K2 ["Pose"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R1 R7 K4 ["Name"]
       52 LOADN                            R8 1
       53 SETTABLEKS                       R8 R7 K9 ["Weight"]
       55 GETIMPORT                        R8 K13 [Enum.PoseEasingStyle.Linear]
       57 SETTABLEKS                       R8 R7 K14 ["EasingStyle"]
       59 GETIMPORT                        R8 K17 [Enum.PoseEasingDirection.In]
       61 SETTABLEKS                       R8 R7 K18 ["EasingDirection"]
       63 GETIMPORT                        R8 K21 [CFrame.identity]
       65 SETTABLEKS                       R8 R7 K19 ["CFrame"]
       67 SETTABLEKS                       R6 R7 K1 ["Parent"]
       69 RETURN                           R7 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetKeyframes"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [table.sort]
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K4 [PROTO_3]
        7 CALL                             R2 2 0
        8 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["poseMap"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K1 ["CFrame"]
       17 RETURN                           R2 1

PROTO_6:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R10 R9 K0 ["Time"]
        8 ADDK                             R11 R2 K1 [0.0001]
        9 JUMPIFNOTLE                      R10 R11 ; [+2]
       11 MOVE                             R3 R9
       12 GETTABLEKS                       R10 R9 K0 ["Time"]
       14 SUBK                             R11 R2 K1 [0.0001]
       15 JUMPIFNOTLE                      R11 R10 ; [+3]
       17 MOVE                             R4 R9
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R5 2 ; [-14]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 MOVE                             R7 R3
       25 JUMPIFNOTEQKNIL                  R7 ; [+3]
       27 LOADNIL                          R6
       28 JUMP                             ; [+12]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K2 ["poseMap"]
       32 MOVE                             R10 R7
       33 CALL                             R9 1 1
       34 GETTABLE                         R8 R9 R1
       35 JUMPIFNOTEQKNIL                  R8 ; [+3]
       37 LOADNIL                          R6
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R6 R8 K3 ["CFrame"]
       41 MOVE                             R8 R4
       42 JUMPIFNOTEQKNIL                  R8 ; [+3]
       44 LOADNIL                          R7
       45 JUMP                             ; [+12]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K2 ["poseMap"]
       49 MOVE                             R11 R8
       50 CALL                             R10 1 1
       51 GETTABLE                         R9 R10 R1
       52 JUMPIFNOTEQKNIL                  R9 ; [+3]
       54 LOADNIL                          R7
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R7 R9 K3 ["CFrame"]
       58 JUMPIFNOTEQKNIL                  R6 ; [+2]
       60 RETURN                           R7 1
       61 JUMPIFEQKNIL                     R7 ; [+7]
       63 JUMPIFEQ                         R3 R4 ; [+5]
       65 JUMPIFEQKNIL                     R3 ; [+3]
       67 JUMPIFNOTEQKNIL                  R4 ; [+2]
       69 RETURN                           R6 1
       70 GETTABLEKS                       R9 R4 K0 ["Time"]
       72 GETTABLEKS                       R10 R3 K0 ["Time"]
       74 SUB                              R8 R9 R10
       75 LOADK                            R9 K1 [0.0001]
       76 JUMPIFNOTLE                      R8 R9 ; [+2]
       78 RETURN                           R6 1
       79 GETTABLEKS                       R12 R3 K0 ["Time"]
       81 SUB                              R11 R2 R12
       82 DIV                              R10 R11 R8
       83 LOADN                            R11 0
       84 LOADN                            R12 1
       85 FASTCALL                         MATH_CLAMP ; [+2]
       86 GETIMPORT                        R9 K6 [math.clamp]
       88 CALL                             R9 3 1
       89 MOVE                             R12 R7
       90 MOVE                             R13 R9
       91 NAMECALL                         R10 R6 K7 ["Lerp"]
       93 CALL                             R10 3 -1
       94 RETURN                           R10 -1

PROTO_7:
        0 LOADNIL                          R2
        1 LOADK                            R3 K0 [Infinity]
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R11 R8 K1 ["Time"]
        8 SUB                              R10 R11 R1
        9 FASTCALL1                        MATH_ABS R10 ; [+2]
       10 GETIMPORT                        R9 K4 [math.abs]
       12 CALL                             R9 1 1
       13 JUMPIFNOTLT                      R9 R3 ; [+3]
       15 MOVE                             R3 R9
       16 MOVE                             R2 R8
       17 FORGLOOP                         R4 2 ; [-12]
       19 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R10 R7 K0 ["Time"]
        6 SUB                              R9 R10 R2
        7 FASTCALL1                        MATH_ABS R9 ; [+2]
        8 GETIMPORT                        R8 K3 [math.abs]
       10 CALL                             R8 1 1
       11 LOADK                            R9 K4 [0.0001]
       12 JUMPIFNOTLT                      R8 R9 ; [+2]
       14 RETURN                           R7 1
       15 FORGLOOP                         R3 2 ; [-12]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["findNearestKeyframe"]
       20 MOVE                             R4 R1
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K8 [Instance.new]
       25 LOADK                            R5 K9 ["Keyframe"]
       26 CALL                             R4 1 1
       27 JUMPIFEQKNIL                     R3 ; [+54]
       29 GETTABLEKS                       R5 R3 K10 ["Archivable"]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R3 K10 ["Archivable"]
       34 NAMECALL                         R6 R3 K11 ["Clone"]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R5 R3 K10 ["Archivable"]
       39 JUMPIFEQKNIL                     R6 ; [+42]
       41 NAMECALL                         R7 R4 K12 ["Destroy"]
       43 CALL                             R7 1 0
       44 MOVE                             R4 R6
       45 NAMECALL                         R7 R4 K13 ["GetDescendants"]
       47 CALL                             R7 1 3
       48 FORGPREP                         R7
       49 LOADK                            R14 K14 ["KeyframeMarker"]
       50 NAMECALL                         R12 R11 K15 ["IsA"]
       52 CALL                             R12 2 1
       53 JUMPIFNOT                        R12 ; [+3]
       54 NAMECALL                         R12 R11 K12 ["Destroy"]
       56 CALL                             R12 1 0
       57 FORGLOOP                         R7 2 ; [-9]
       59 NAMECALL                         R7 R4 K13 ["GetDescendants"]
       61 CALL                             R7 1 3
       62 FORGPREP                         R7
       63 LOADK                            R14 K16 ["Pose"]
       64 NAMECALL                         R12 R11 K15 ["IsA"]
       66 CALL                             R12 2 1
       67 JUMPIFNOT                        R12 ; [+12]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K17 ["samplePoseCFrame"]
       71 MOVE                             R13 R1
       72 GETTABLEKS                       R14 R11 K18 ["Name"]
       74 MOVE                             R15 R2
       75 CALL                             R12 3 1
       76 JUMPIFEQKNIL                     R12 ; [+3]
       78 SETTABLEKS                       R12 R11 K19 ["CFrame"]
       80 FORGLOOP                         R7 2 ; [-18]
       82 SETTABLEKS                       R2 R4 K0 ["Time"]
       84 SETTABLEKS                       R0 R4 K20 ["Parent"]
       86 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       88 MOVE                             R6 R1
       89 MOVE                             R7 R4
       90 GETIMPORT                        R5 K23 [table.insert]
       92 CALL                             R5 2 0
       93 GETIMPORT                        R5 K25 [table.sort]
       95 MOVE                             R6 R1
       96 DUPCLOSURE                       R7 K26 [PROTO_8]
       97 CALL                             R5 2 0
       98 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADK                            R1 K0 ["HumanoidRootPart"]
        4 SETTABLEKS                       R1 R0 K1 ["LowerTorso"]
        6 LOADK                            R1 K1 ["LowerTorso"]
        7 SETTABLEKS                       R1 R0 K2 ["UpperTorso"]
        9 LOADK                            R1 K2 ["UpperTorso"]
       10 SETTABLEKS                       R1 R0 K3 ["Head"]
       12 LOADK                            R1 K2 ["UpperTorso"]
       13 SETTABLEKS                       R1 R0 K4 ["LeftUpperArm"]
       15 LOADK                            R1 K4 ["LeftUpperArm"]
       16 SETTABLEKS                       R1 R0 K5 ["LeftLowerArm"]
       18 LOADK                            R1 K5 ["LeftLowerArm"]
       19 SETTABLEKS                       R1 R0 K6 ["LeftHand"]
       21 LOADK                            R1 K2 ["UpperTorso"]
       22 SETTABLEKS                       R1 R0 K7 ["RightUpperArm"]
       24 LOADK                            R1 K7 ["RightUpperArm"]
       25 SETTABLEKS                       R1 R0 K8 ["RightLowerArm"]
       27 LOADK                            R1 K8 ["RightLowerArm"]
       28 SETTABLEKS                       R1 R0 K9 ["RightHand"]
       30 LOADK                            R1 K1 ["LowerTorso"]
       31 SETTABLEKS                       R1 R0 K10 ["LeftUpperLeg"]
       33 LOADK                            R1 K10 ["LeftUpperLeg"]
       34 SETTABLEKS                       R1 R0 K11 ["LeftLowerLeg"]
       36 LOADK                            R1 K11 ["LeftLowerLeg"]
       37 SETTABLEKS                       R1 R0 K12 ["LeftFoot"]
       39 LOADK                            R1 K1 ["LowerTorso"]
       40 SETTABLEKS                       R1 R0 K13 ["RightUpperLeg"]
       42 LOADK                            R1 K13 ["RightUpperLeg"]
       43 SETTABLEKS                       R1 R0 K14 ["RightLowerLeg"]
       45 LOADK                            R1 K14 ["RightLowerLeg"]
       46 SETTABLEKS                       R1 R0 K15 ["RightFoot"]
       48 LOADK                            R1 K0 ["HumanoidRootPart"]
       49 SETTABLEKS                       R1 R0 K16 ["Torso"]
       51 LOADK                            R1 K16 ["Torso"]
       52 SETTABLEKS                       R1 R0 K17 ["Left Arm"]
       54 LOADK                            R1 K16 ["Torso"]
       55 SETTABLEKS                       R1 R0 K18 ["Right Arm"]
       57 LOADK                            R1 K16 ["Torso"]
       58 SETTABLEKS                       R1 R0 K19 ["Left Leg"]
       60 LOADK                            R1 K16 ["Torso"]
       61 SETTABLEKS                       R1 R0 K20 ["Right Leg"]
       63 NEWTABLE                         R1 8 0
       65 DUPCLOSURE                       R2 K21 [PROTO_0]
       66 SETTABLEKS                       R2 R1 K22 ["poseMap"]
       68 DUPCLOSURE                       R2 K23 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R0
       71 DUPCLOSURE                       R3 K24 [PROTO_2]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R3 R1 K25 ["ensurePose"]
       76 DUPCLOSURE                       R3 K26 [PROTO_4]
       77 SETTABLEKS                       R3 R1 K27 ["sortedKeyframes"]
       79 DUPCLOSURE                       R3 K28 [PROTO_6]
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R3 R1 K29 ["samplePoseCFrame"]
       83 DUPCLOSURE                       R3 K30 [PROTO_7]
       84 SETTABLEKS                       R3 R1 K31 ["findNearestKeyframe"]
       86 DUPCLOSURE                       R3 K32 [PROTO_9]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R3 R1 K33 ["ensureKeyframeAtTime"]
       90 RETURN                           R1 1
