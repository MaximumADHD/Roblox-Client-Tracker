PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R3 R0 K0 ["GetKeyframes"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 NAMECALL                         R8 R7 K1 ["GetDescendants"]
       10 CALL                             R8 1 3
       11 FORGPREP                         R8
       12 LOADK                            R15 K2 ["Pose"]
       13 NAMECALL                         R13 R12 K3 ["IsA"]
       15 CALL                             R13 2 1
       16 JUMPIFNOT                        R13 ; [+23]
       17 GETTABLEKS                       R13 R12 K4 ["Name"]
       19 LOADB                            R14 1
       20 SETTABLE                         R14 R2 R13
       21 GETTABLEKS                       R13 R12 K5 ["Parent"]
       23 JUMPIFEQKNIL                     R13 ; [+16]
       25 LOADK                            R16 K2 ["Pose"]
       26 NAMECALL                         R14 R13 K3 ["IsA"]
       28 CALL                             R14 2 1
       29 JUMPIFNOT                        R14 ; [+10]
       30 GETTABLEKS                       R15 R12 K4 ["Name"]
       32 GETTABLE                         R14 R1 R15
       33 JUMPIFNOTEQKNIL                  R14 ; [+6]
       35 GETTABLEKS                       R14 R12 K4 ["Name"]
       37 GETTABLEKS                       R15 R13 K4 ["Name"]
       39 SETTABLE                         R15 R1 R14
       40 FORGLOOP                         R8 2 ; [-29]
       42 FORGLOOP                         R3 2 ; [-35]
       44 NEWTABLE                         R3 0 0
       46 GETUPVAL                         R4 0
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETTABLE                         R9 R2 R8
       51 JUMPIFNOT                        R9 ; [+1]
       52 SETTABLE                         R8 R3 R7
       53 FORGLOOP                         R4 2 ; [-4]
       55 DUPTABLE                         R4 K8 [{"parentNameByPoseName", "poseNameByLabel"}]
       56 SETTABLEKS                       R1 R4 K6 ["parentNameByPoseName"]
       58 SETTABLEKS                       R3 R4 K7 ["poseNameByLabel"]
       60 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K3 [Enum.RigLabel.Root]
        5 LOADK                            R2 K4 ["LowerTorso"]
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K6 [Enum.RigLabel.Waist]
        9 LOADK                            R2 K7 ["UpperTorso"]
       10 SETTABLE                         R2 R0 R1
       11 GETIMPORT                        R1 K9 [Enum.RigLabel.Spine]
       13 LOADK                            R2 K8 ["Spine"]
       14 SETTABLE                         R2 R0 R1
       15 GETIMPORT                        R1 K11 [Enum.RigLabel.Chest]
       17 LOADK                            R2 K10 ["Chest"]
       18 SETTABLE                         R2 R0 R1
       19 GETIMPORT                        R1 K13 [Enum.RigLabel.Neck]
       21 LOADK                            R2 K14 ["Head"]
       22 SETTABLE                         R2 R0 R1
       23 GETIMPORT                        R1 K16 [Enum.RigLabel.HeadBase]
       25 LOADK                            R2 K15 ["HeadBase"]
       26 SETTABLE                         R2 R0 R1
       27 GETIMPORT                        R1 K18 [Enum.RigLabel.LeftClavicle]
       29 LOADK                            R2 K17 ["LeftClavicle"]
       30 SETTABLE                         R2 R0 R1
       31 GETIMPORT                        R1 K20 [Enum.RigLabel.LeftShoulder]
       33 LOADK                            R2 K21 ["LeftUpperArm"]
       34 SETTABLE                         R2 R0 R1
       35 GETIMPORT                        R1 K23 [Enum.RigLabel.LeftElbow]
       37 LOADK                            R2 K24 ["LeftLowerArm"]
       38 SETTABLE                         R2 R0 R1
       39 GETIMPORT                        R1 K26 [Enum.RigLabel.LeftWrist]
       41 LOADK                            R2 K27 ["LeftHand"]
       42 SETTABLE                         R2 R0 R1
       43 GETIMPORT                        R1 K29 [Enum.RigLabel.RightClavicle]
       45 LOADK                            R2 K28 ["RightClavicle"]
       46 SETTABLE                         R2 R0 R1
       47 GETIMPORT                        R1 K31 [Enum.RigLabel.RightShoulder]
       49 LOADK                            R2 K32 ["RightUpperArm"]
       50 SETTABLE                         R2 R0 R1
       51 GETIMPORT                        R1 K34 [Enum.RigLabel.RightElbow]
       53 LOADK                            R2 K35 ["RightLowerArm"]
       54 SETTABLE                         R2 R0 R1
       55 GETIMPORT                        R1 K37 [Enum.RigLabel.RightWrist]
       57 LOADK                            R2 K38 ["RightHand"]
       58 SETTABLE                         R2 R0 R1
       59 GETIMPORT                        R1 K40 [Enum.RigLabel.LeftHip]
       61 LOADK                            R2 K41 ["LeftUpperLeg"]
       62 SETTABLE                         R2 R0 R1
       63 GETIMPORT                        R1 K43 [Enum.RigLabel.LeftKnee]
       65 LOADK                            R2 K44 ["LeftLowerLeg"]
       66 SETTABLE                         R2 R0 R1
       67 GETIMPORT                        R1 K46 [Enum.RigLabel.LeftAnkle]
       69 LOADK                            R2 K47 ["LeftFoot"]
       70 SETTABLE                         R2 R0 R1
       71 GETIMPORT                        R1 K49 [Enum.RigLabel.LeftToeBase]
       73 LOADK                            R2 K48 ["LeftToeBase"]
       74 SETTABLE                         R2 R0 R1
       75 GETIMPORT                        R1 K51 [Enum.RigLabel.RightHip]
       77 LOADK                            R2 K52 ["RightUpperLeg"]
       78 SETTABLE                         R2 R0 R1
       79 GETIMPORT                        R1 K54 [Enum.RigLabel.RightKnee]
       81 LOADK                            R2 K55 ["RightLowerLeg"]
       82 SETTABLE                         R2 R0 R1
       83 GETIMPORT                        R1 K57 [Enum.RigLabel.RightAnkle]
       85 LOADK                            R2 K58 ["RightFoot"]
       86 SETTABLE                         R2 R0 R1
       87 GETIMPORT                        R1 K60 [Enum.RigLabel.RightToeBase]
       89 LOADK                            R2 K59 ["RightToeBase"]
       90 SETTABLE                         R2 R0 R1
       91 NEWTABLE                         R1 2 0
       93 SETTABLEKS                       R0 R1 K61 ["POSE_NAME_BY_LABEL"]
       95 DUPCLOSURE                       R2 K62 [PROTO_0]
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R2 R1 K63 ["fromSequence"]
       99 RETURN                           R1 1
