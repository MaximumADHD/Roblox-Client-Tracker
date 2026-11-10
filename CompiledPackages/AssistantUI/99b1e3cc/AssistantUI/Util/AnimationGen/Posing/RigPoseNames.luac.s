PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K2 ["Part1"]
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R2 R1 K3 ["Name"]
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 LOADK                            R3 K4 ["AnimationConstraint"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+15]
       19 GETTABLEKS                       R1 R0 K5 ["Attachment1"]
       21 JUMPIFEQKNIL                     R1 ; [+10]
       23 GETTABLEKS                       R3 R1 K6 ["Parent"]
       25 JUMPIFEQKNIL                     R3 ; [+6]
       27 GETTABLEKS                       R2 R1 K6 ["Parent"]
       29 GETTABLEKS                       R2 R2 K3 ["Name"]
       31 RETURN                           R2 1
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 LOADK                            R3 K7 ["Bone"]
       35 NAMECALL                         R1 R0 K1 ["IsA"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+3]
       39 GETTABLEKS                       R1 R0 K3 ["Name"]
       41 RETURN                           R1 1
       42 LOADNIL                          R1
       43 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"clipNameByRigName", "rigNameByClipName"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["clipNameByRigName"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["rigNameByClipName"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantAnimationGenCustomRigPosing"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R1 1
       14 LOADK                            R4 K4 ["HumanoidRigDescription"]
       15 LOADB                            R5 1
       16 NAMECALL                         R2 R0 K5 ["FindFirstChildWhichIsA"]
       18 CALL                             R2 3 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 RETURN                           R1 1
       22 GETUPVAL                         R3 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R10 R6
       27 NAMECALL                         R8 R2 K6 ["GetJoint"]
       29 CALL                             R8 2 1
       30 JUMPIFEQKNIL                     R8 ; [+5]
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R8
       34 CALL                             R9 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R9
       37 JUMPIFEQKNIL                     R9 ; [+7]
       39 GETTABLEKS                       R10 R1 K0 ["clipNameByRigName"]
       41 SETTABLE                         R7 R10 R9
       42 GETTABLEKS                       R10 R1 K1 ["rigNameByClipName"]
       44 SETTABLE                         R9 R10 R7
       45 FORGLOOP                         R3 2 ; [-20]
       47 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["clipNameByRigName"]
        2 GETTABLE                         R3 R4 R1
        3 OR                               R2 R3 R1
        4 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["rigNameByClipName"]
        2 GETTABLE                         R3 R4 R1
        3 OR                               R2 R3 R1
        4 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["toClipName"]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R6
       11 CALL                             R8 2 1
       12 SETTABLE                         R7 R2 R8
       13 FORGLOOP                         R3 2 ; [-8]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 32 0
       14 GETIMPORT                        R3 K10 [Enum.RigLabel.Root]
       16 LOADK                            R4 K11 ["LowerTorso"]
       17 SETTABLE                         R4 R2 R3
       18 GETIMPORT                        R3 K13 [Enum.RigLabel.Waist]
       20 LOADK                            R4 K14 ["UpperTorso"]
       21 SETTABLE                         R4 R2 R3
       22 GETIMPORT                        R3 K16 [Enum.RigLabel.Spine]
       24 LOADK                            R4 K15 ["Spine"]
       25 SETTABLE                         R4 R2 R3
       26 GETIMPORT                        R3 K18 [Enum.RigLabel.Chest]
       28 LOADK                            R4 K17 ["Chest"]
       29 SETTABLE                         R4 R2 R3
       30 GETIMPORT                        R3 K20 [Enum.RigLabel.Neck]
       32 LOADK                            R4 K21 ["Head"]
       33 SETTABLE                         R4 R2 R3
       34 GETIMPORT                        R3 K23 [Enum.RigLabel.HeadBase]
       36 LOADK                            R4 K22 ["HeadBase"]
       37 SETTABLE                         R4 R2 R3
       38 GETIMPORT                        R3 K25 [Enum.RigLabel.LeftClavicle]
       40 LOADK                            R4 K24 ["LeftClavicle"]
       41 SETTABLE                         R4 R2 R3
       42 GETIMPORT                        R3 K27 [Enum.RigLabel.LeftShoulder]
       44 LOADK                            R4 K28 ["LeftUpperArm"]
       45 SETTABLE                         R4 R2 R3
       46 GETIMPORT                        R3 K30 [Enum.RigLabel.LeftElbow]
       48 LOADK                            R4 K31 ["LeftLowerArm"]
       49 SETTABLE                         R4 R2 R3
       50 GETIMPORT                        R3 K33 [Enum.RigLabel.LeftWrist]
       52 LOADK                            R4 K34 ["LeftHand"]
       53 SETTABLE                         R4 R2 R3
       54 GETIMPORT                        R3 K36 [Enum.RigLabel.RightClavicle]
       56 LOADK                            R4 K35 ["RightClavicle"]
       57 SETTABLE                         R4 R2 R3
       58 GETIMPORT                        R3 K38 [Enum.RigLabel.RightShoulder]
       60 LOADK                            R4 K39 ["RightUpperArm"]
       61 SETTABLE                         R4 R2 R3
       62 GETIMPORT                        R3 K41 [Enum.RigLabel.RightElbow]
       64 LOADK                            R4 K42 ["RightLowerArm"]
       65 SETTABLE                         R4 R2 R3
       66 GETIMPORT                        R3 K44 [Enum.RigLabel.RightWrist]
       68 LOADK                            R4 K45 ["RightHand"]
       69 SETTABLE                         R4 R2 R3
       70 GETIMPORT                        R3 K47 [Enum.RigLabel.LeftHip]
       72 LOADK                            R4 K48 ["LeftUpperLeg"]
       73 SETTABLE                         R4 R2 R3
       74 GETIMPORT                        R3 K50 [Enum.RigLabel.LeftKnee]
       76 LOADK                            R4 K51 ["LeftLowerLeg"]
       77 SETTABLE                         R4 R2 R3
       78 GETIMPORT                        R3 K53 [Enum.RigLabel.LeftAnkle]
       80 LOADK                            R4 K54 ["LeftFoot"]
       81 SETTABLE                         R4 R2 R3
       82 GETIMPORT                        R3 K56 [Enum.RigLabel.LeftToeBase]
       84 LOADK                            R4 K55 ["LeftToeBase"]
       85 SETTABLE                         R4 R2 R3
       86 GETIMPORT                        R3 K58 [Enum.RigLabel.RightHip]
       88 LOADK                            R4 K59 ["RightUpperLeg"]
       89 SETTABLE                         R4 R2 R3
       90 GETIMPORT                        R3 K61 [Enum.RigLabel.RightKnee]
       92 LOADK                            R4 K62 ["RightLowerLeg"]
       93 SETTABLE                         R4 R2 R3
       94 GETIMPORT                        R3 K64 [Enum.RigLabel.RightAnkle]
       96 LOADK                            R4 K65 ["RightFoot"]
       97 SETTABLE                         R4 R2 R3
       98 GETIMPORT                        R3 K67 [Enum.RigLabel.RightToeBase]
      100 LOADK                            R4 K66 ["RightToeBase"]
      101 SETTABLE                         R4 R2 R3
      102 DUPCLOSURE                       R3 K68 [PROTO_0]
      103 NEWTABLE                         R4 4 0
      105 DUPCLOSURE                       R5 K69 [PROTO_1]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 SETTABLEKS                       R5 R4 K70 ["fromRig"]
      111 DUPCLOSURE                       R5 K71 [PROTO_2]
      112 SETTABLEKS                       R5 R4 K72 ["toClipName"]
      114 DUPCLOSURE                       R5 K73 [PROTO_3]
      115 SETTABLEKS                       R5 R4 K74 ["toRigName"]
      117 DUPCLOSURE                       R5 K75 [PROTO_4]
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R5 R4 K76 ["renameTransformsToClip"]
      121 RETURN                           R4 1
