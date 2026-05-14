PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R1 K0 ["Name"]
        3 JUMPIFNOTEQKS                    R3 K1 ["AnimSaves"] ; [+10]
        5 LOADK                            R4 K2 ["Model"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+4]
       10 LOADK                            R4 K4 ["ObjectValue"]
       11 NAMECALL                         R2 R1 K3 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+20]
       15 GETIMPORT                        R3 K6 [ipairs]
       17 NAMECALL                         R4 R1 K7 ["GetChildren"]
       19 CALL                             R4 1 -1
       20 CALL                             R3 -1 3
       21 FORGPREP_INEXT                   R3
       22 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       24 MOVE                             R9 R0
       25 MOVE                             R10 R7
       26 GETIMPORT                        R8 K10 [table.insert]
       28 CALL                             R8 2 0
       29 GETUPVAL                         R8 0
       30 MOVE                             R9 R0
       31 MOVE                             R10 R7
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 [inext] ; [-12]
       35 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["TEMPORARY_CONSTRAINTS"]
        7 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTemporaryConstraints"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getTemporaryConstraints"]
        5 CALL                             R3 0 1
        6 OR                               R2 R3 R0
        7 GETUPVAL                         R3 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K2 [ipairs]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 LOADK                            R11 K3 ["BallSocketConstraint"]
       18 NAMECALL                         R9 R8 K4 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIF                           R9 ; [+5]
       22 LOADK                            R11 K5 ["HingeConstraint"]
       23 NAMECALL                         R9 R8 K4 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       29 MOVE                             R10 R1
       30 MOVE                             R11 R8
       31 GETIMPORT                        R9 K8 [table.insert]
       33 CALL                             R9 2 0
       34 FORGLOOP                         R4 2 [inext] ; [-18]
       36 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Part0"]
        9 GETTABLEKS                       R7 R7 K3 ["Name"]
       11 JUMPIFNOTEQ                      R7 R0 ; [+11]
       13 GETTABLEKS                       R9 R6 K4 ["Part1"]
       15 GETTABLEKS                       R9 R9 K3 ["Name"]
       17 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K7 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 [inext] ; [-17]
       25 GETIMPORT                        R2 K1 [ipairs]
       27 GETUPVAL                         R3 1
       28 CALL                             R2 1 3
       29 FORGPREP_INEXT                   R2
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K8 ["getPart0"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K9 ["getPart1"]
       38 MOVE                             R9 R6
       39 CALL                             R8 1 1
       40 JUMPIFNOT                        R7 ; [+13]
       41 JUMPIFNOT                        R8 ; [+12]
       42 GETTABLEKS                       R9 R7 K3 ["Name"]
       44 JUMPIFNOTEQ                      R9 R0 ; [+9]
       46 GETTABLEKS                       R11 R8 K3 ["Name"]
       48 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       50 MOVE                             R10 R1
       51 GETIMPORT                        R9 K7 [table.insert]
       53 CALL                             R9 2 0
       54 FORGLOOP                         R2 2 [inext] ; [-25]
       56 GETIMPORT                        R2 K1 [ipairs]
       58 GETUPVAL                         R3 3
       59 CALL                             R2 1 3
       60 FORGPREP_INEXT                   R2
       61 GETTABLEKS                       R7 R6 K10 ["Parent"]
       63 GETTABLEKS                       R7 R7 K3 ["Name"]
       65 JUMPIFNOTEQ                      R7 R0 ; [+9]
       67 GETTABLEKS                       R9 R6 K3 ["Name"]
       69 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       71 MOVE                             R8 R1
       72 GETIMPORT                        R7 K7 [table.insert]
       74 CALL                             R7 2 0
       75 FORGLOOP                         R2 2 [inext] ; [-15]
       77 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findRootPart"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["getMotors"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["getBones"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["getAnimationConstraints"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       22 MOVE                             R6 R1
       23 LOADK                            R7 K4 ["Rig is missing a root part."]
       24 GETIMPORT                        R5 K6 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R1 K7 ["Name"]
       29 NEWTABLE                         R6 1 0
       31 GETUPVAL                         R7 1
       32 MOVE                             R8 R5
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R3
       38 CALL                             R7 2 1
       39 SETTABLE                         R7 R6 R5
       40 RETURN                           R6 1

PROTO_6:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 LOADK                            R4 K0 ["Humanoid"]
        6 NAMECALL                         R2 R1 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R2 R1 K3 ["RigType"]
       12 GETIMPORT                        R3 K7 [Enum.HumanoidRigType.R15]
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K8 ["Parent"]
       20 JUMPIFNOT                        R2 ; [+5]
       21 LOADK                            R5 K9 ["Model"]
       22 NAMECALL                         R3 R2 K2 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADB                            R3 0
       27 RETURN                           R3 1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 LOADK                            R4 K0 ["Humanoid"]
        6 NAMECALL                         R2 R1 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R2 R1 K3 ["RigType"]
       12 GETIMPORT                        R3 K7 [Enum.HumanoidRigType.R6]
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K8 ["Parent"]
       20 JUMPIFNOT                        R2 ; [+5]
       21 LOADK                            R5 K9 ["Model"]
       22 NAMECALL                         R3 R2 K2 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADB                            R3 0
       27 RETURN                           R3 1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_8:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["isR6Humanoid"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 LOADK                            R4 K1 ["HumanoidRootPart"]
        8 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K3 ["PrimaryPart"]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+8]
       16 GETTABLEKS                       R2 R0 K3 ["PrimaryPart"]
       18 JUMPIF                           R2 ; [+4]
       19 LOADK                            R4 K1 ["HumanoidRootPart"]
       20 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 JUMPIFNOT                        R1 ; [+1]
       25 RETURN                           R1 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["getRigInfo"]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K5 ["PartNameToMotor"]
       33 GETTABLEKS                       R4 R2 K6 ["PartNameToAnimConstraint"]
       35 GETTABLEKS                       R5 R2 K7 ["BoneNameToBone"]
       37 LOADNIL                          R6
       38 GETIMPORT                        R7 K9 [next]
       40 MOVE                             R8 R3
       41 JUMPIF                           R8 ; [+2]
       42 NEWTABLE                         R8 0 0
       44 CALL                             R7 1 1
       45 JUMPIFNOT                        R7 ; [+13]
       46 JUMPIF                           R6 ; [+12]
       47 GETTABLE                         R8 R3 R7
       48 JUMPIFNOT                        R8 ; [+8]
       49 GETTABLEKS                       R9 R8 K10 ["Part0"]
       51 JUMPIFNOT                        R9 ; [+5]
       52 GETTABLEKS                       R9 R8 K10 ["Part0"]
       54 GETTABLEKS                       R7 R9 K11 ["Name"]
       56 JUMP                             ; [+1]
       57 MOVE                             R6 R7
       58 JUMPBACK                         ; [-13]
       59 GETIMPORT                        R8 K9 [next]
       61 MOVE                             R9 R5
       62 JUMPIF                           R9 ; [+2]
       63 NEWTABLE                         R9 0 0
       65 CALL                             R8 1 1
       66 JUMPIFNOT                        R8 ; [+10]
       67 JUMPIF                           R6 ; [+9]
       68 GETTABLE                         R9 R5 R8
       69 JUMPIFNOT                        R9 ; [+5]
       70 GETTABLEKS                       R10 R9 K12 ["Parent"]
       72 GETTABLEKS                       R8 R10 K11 ["Name"]
       74 JUMP                             ; [+1]
       75 MOVE                             R6 R8
       76 JUMPBACK                         ; [-10]
       77 JUMPIFNOT                        R4 ; [+18]
       78 GETIMPORT                        R9 K9 [next]
       80 MOVE                             R10 R4
       81 CALL                             R9 1 1
       82 JUMPIFNOT                        R9 ; [+13]
       83 JUMPIF                           R6 ; [+12]
       84 GETTABLE                         R10 R4 R9
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K13 ["getPart0"]
       88 MOVE                             R12 R10
       89 CALL                             R11 1 1
       90 JUMPIFNOT                        R11 ; [+3]
       91 GETTABLEKS                       R9 R11 K11 ["Name"]
       93 JUMP                             ; [+1]
       94 MOVE                             R6 R9
       95 JUMPBACK                         ; [-13]
       96 GETUPVAL                         R9 1
       97 NEWTABLE                         R10 0 0
       99 MOVE                             R11 R0
      100 CALL                             R9 2 1
      101 GETIMPORT                        R10 K15 [ipairs]
      103 MOVE                             R11 R9
      104 CALL                             R10 1 3
      105 FORGPREP_INEXT                   R10
      106 GETTABLEKS                       R15 R14 K11 ["Name"]
      108 JUMPIFNOTEQ                      R15 R6 ; [+7]
      110 LOADK                            R17 K16 ["BasePart"]
      111 NAMECALL                         R15 R14 K17 ["IsA"]
      113 CALL                             R15 2 1
      114 JUMPIFNOT                        R15 ; [+1]
      115 RETURN                           R14 1
      116 FORGLOOP                         R10 2 [inext] ; [-11]
      118 LOADNIL                          R10
      119 RETURN                           R10 1

PROTO_9:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAnimationController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADK                            R4 K1 ["Animator"]
        9 NAMECALL                         R2 R1 K2 ["FindFirstChildOfClass"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+5]
       13 GETIMPORT                        R2 K5 [Instance.new]
       15 LOADK                            R3 K1 ["Animator"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 1
       18 RETURN                           R2 1

PROTO_11:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["Attachment0"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["Attachment0"]
        7 GETTABLEKS                       R1 R1 K1 ["Parent"]
        9 JUMPIFNOT                        R1 ; [+12]
       10 LOADK                            R5 K2 ["BasePart"]
       11 NAMECALL                         R3 R1 K3 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+5]
       15 LOADK                            R5 K4 ["Attachment"]
       16 NAMECALL                         R3 R1 K3 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R2 R1
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_12:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["Attachment1"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["Attachment1"]
        7 GETTABLEKS                       R1 R1 K1 ["Parent"]
        9 JUMPIFNOT                        R1 ; [+12]
       10 LOADK                            R5 K2 ["BasePart"]
       11 NAMECALL                         R3 R1 K3 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+5]
       15 LOADK                            R5 K4 ["Attachment"]
       16 NAMECALL                         R3 R1 K3 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R2 R1
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K1 [ipairs]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADK                            R10 K2 ["Motor6D"]
       13 NAMECALL                         R8 R7 K3 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K6 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 [inext] ; [-13]
       26 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K1 [ipairs]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADK                            R10 K2 ["Bone"]
       13 NAMECALL                         R8 R7 K3 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K6 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 [inext] ; [-13]
       26 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K1 [ipairs]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADK                            R10 K2 ["AnimationConstraint"]
       13 NAMECALL                         R8 R7 K3 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K6 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 [inext] ; [-13]
       26 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K1 [ipairs]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 LOADK                            R9 K2 ["FaceControls"]
       11 NAMECALL                         R7 R6 K3 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+17]
       15 NEWTABLE                         R7 0 0
       17 JUMPIFEQ                         R6 R0 ; [+13]
       19 LOADN                            R10 1
       20 GETTABLEKS                       R11 R6 K4 ["Name"]
       22 FASTCALL3                        TABLE_INSERT R7 R10 R11
       24 MOVE                             R9 R7
       25 GETIMPORT                        R8 K7 [table.insert]
       27 CALL                             R8 3 0
       28 GETTABLEKS                       R6 R6 K8 ["Parent"]
       30 JUMPBACK                         ; [-14]
       31 RETURN                           R7 1
       32 FORGLOOP                         R2 2 [inext] ; [-23]
       34 LOADNIL                          R2
       35 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["findRootPart"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["getRigInfo"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R5 R4 K2 ["Parts"]
       14 GETTABLEKS                       R6 R4 K3 ["PartNameToMotor"]
       16 GETTABLEKS                       R7 R4 K4 ["PartNameToAnimConstraint"]
       18 GETTABLEKS                       R8 R4 K5 ["BoneNameToBone"]
       20 GETIMPORT                        R9 K7 [ipairs]
       22 MOVE                             R10 R5
       23 CALL                             R9 1 3
       24 FORGPREP_INEXT                   R9
       25 GETTABLEKS                       R15 R13 K8 ["Name"]
       27 GETTABLE                         R14 R8 R15
       28 JUMPIF                           R14 ; [+11]
       29 JUMPIFEQ                         R13 R3 ; [+48]
       31 GETTABLEKS                       R15 R13 K8 ["Name"]
       33 GETTABLE                         R14 R6 R15
       34 JUMPIF                           R14 ; [+5]
       35 JUMPIFNOT                        R7 ; [+42]
       36 GETTABLEKS                       R15 R13 K8 ["Name"]
       38 GETTABLE                         R14 R7 R15
       39 JUMPIFNOT                        R14 ; [+38]
       40 LOADB                            R14 0
       41 GETIMPORT                        R15 K7 [ipairs]
       43 MOVE                             R16 R1
       44 CALL                             R15 1 3
       45 FORGPREP_INEXT                   R15
       46 GETTABLEKS                       R20 R13 K8 ["Name"]
       48 GETTABLEKS                       R21 R19 K8 ["Name"]
       50 JUMPIFNOTEQ                      R20 R21 ; [+3]
       52 LOADB                            R14 1
       53 JUMP                             ; [+2]
       54 FORGLOOP                         R15 2 [inext] ; [-9]
       56 JUMPIF                           R14 ; [+21]
       57 DUPTABLE                         R17 K11 [{"Name", "Instance", "Type"}]
       58 GETTABLEKS                       R18 R13 K8 ["Name"]
       60 SETTABLEKS                       R18 R17 K8 ["Name"]
       62 LOADK                            R18 K12 ["Root"]
       63 SETTABLEKS                       R18 R17 K9 ["Instance"]
       65 GETUPVAL                         R18 1
       66 GETTABLEKS                       R18 R18 K13 ["TRACK_TYPES"]
       68 GETTABLEKS                       R18 R18 K14 ["CFrame"]
       70 SETTABLEKS                       R18 R17 K10 ["Type"]
       72 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
       74 MOVE                             R16 R2
       75 GETIMPORT                        R15 K17 [table.insert]
       77 CALL                             R15 2 0
       78 FORGLOOP                         R9 2 [inext] ; [-54]
       80 GETIMPORT                        R9 K19 [table.sort]
       82 MOVE                             R10 R2
       83 DUPCLOSURE                       R11 K20 [PROTO_17]
       84 CALL                             R9 2 0
       85 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["Cache"]
        5 GETUPVAL                         R0 0
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["FaceControlsCache"]
       10 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 NEWTABLE                         R5 0 0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K0 ["Cache"]
       13 GETTABLEKS                       R6 R6 K1 ["CacheRig"]
       15 JUMPIFEQ                         R0 R6 ; [+147]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K2 ["getMotors"]
       20 MOVE                             R7 R0
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K3 ["getConstraints"]
       25 MOVE                             R8 R0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K4 ["getAnimationConstraints"]
       30 MOVE                             R9 R0
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 1
       33 CALL                             R10 0 1
       34 JUMPIFNOT                        R10 ; [+6]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K5 ["getFaceControlsPath"]
       38 MOVE                             R10 R0
       39 CALL                             R9 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 GETUPVAL                         R10 2
       43 NEWTABLE                         R11 0 0
       45 MOVE                             R12 R0
       46 CALL                             R10 2 1
       47 GETIMPORT                        R11 K7 [ipairs]
       49 MOVE                             R12 R10
       50 CALL                             R11 1 3
       51 FORGPREP_INEXT                   R11
       52 LOADK                            R18 K8 ["BasePart"]
       53 NAMECALL                         R16 R15 K9 ["IsA"]
       55 CALL                             R16 2 1
       56 JUMPIFNOT                        R16 ; [+66]
       57 GETIMPORT                        R16 K7 [ipairs]
       59 MOVE                             R17 R6
       60 CALL                             R16 1 3
       61 FORGPREP_INEXT                   R16
       62 GETTABLEKS                       R21 R20 K10 ["Part1"]
       64 JUMPIFNOTEQ                      R21 R15 ; [+12]
       66 GETTABLEKS                       R21 R15 K11 ["Name"]
       68 SETTABLE                         R20 R2 R21
       69 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       71 MOVE                             R22 R1
       72 MOVE                             R23 R15
       73 GETIMPORT                        R21 K14 [table.insert]
       75 CALL                             R21 2 0
       76 JUMP                             ; [+2]
       77 FORGLOOP                         R16 2 [inext] ; [-16]
       79 GETIMPORT                        R16 K7 [ipairs]
       81 MOVE                             R17 R7
       82 CALL                             R16 1 3
       83 FORGPREP_INEXT                   R16
       84 GETUPVAL                         R21 0
       85 GETTABLEKS                       R21 R21 K15 ["getPart1"]
       87 MOVE                             R22 R20
       88 CALL                             R21 1 1
       89 JUMPIFNOTEQ                      R21 R15 ; [+5]
       91 GETTABLEKS                       R21 R15 K11 ["Name"]
       93 SETTABLE                         R20 R3 R21
       94 JUMP                             ; [+2]
       95 FORGLOOP                         R16 2 [inext] ; [-12]
       97 GETIMPORT                        R16 K7 [ipairs]
       99 MOVE                             R17 R8
      100 CALL                             R16 1 3
      101 FORGPREP_INEXT                   R16
      102 GETUPVAL                         R21 0
      103 GETTABLEKS                       R21 R21 K15 ["getPart1"]
      105 MOVE                             R22 R20
      106 CALL                             R21 1 1
      107 JUMPIFNOTEQ                      R21 R15 ; [+12]
      109 GETTABLEKS                       R21 R15 K11 ["Name"]
      111 SETTABLE                         R20 R4 R21
      112 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
      114 MOVE                             R22 R1
      115 MOVE                             R23 R15
      116 GETIMPORT                        R21 K14 [table.insert]
      118 CALL                             R21 2 0
      119 JUMP                             ; [+18]
      120 FORGLOOP                         R16 2 [inext] ; [-19]
      122 JUMP                             ; [+15]
      123 LOADK                            R18 K16 ["Bone"]
      124 NAMECALL                         R16 R15 K9 ["IsA"]
      126 CALL                             R16 2 1
      127 JUMPIFNOT                        R16 ; [+10]
      128 GETTABLEKS                       R16 R15 K11 ["Name"]
      130 SETTABLE                         R15 R5 R16
      131 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
      133 MOVE                             R17 R1
      134 MOVE                             R18 R15
      135 GETIMPORT                        R16 K14 [table.insert]
      137 CALL                             R16 2 0
      138 FORGLOOP                         R11 2 [inext] ; [-87]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K0 ["Cache"]
      143 SETTABLEKS                       R0 R11 K1 ["CacheRig"]
      145 GETUPVAL                         R11 0
      146 GETTABLEKS                       R11 R11 K0 ["Cache"]
      148 DUPTABLE                         R12 K23 [{"Parts", "PartNameToMotor", "PartNameToConstraint", "PartNameToAnimConstraint", "BoneNameToBone", "FaceControlsPath"}]
      149 SETTABLEKS                       R1 R12 K17 ["Parts"]
      151 SETTABLEKS                       R2 R12 K18 ["PartNameToMotor"]
      153 SETTABLEKS                       R3 R12 K19 ["PartNameToConstraint"]
      155 SETTABLEKS                       R4 R12 K20 ["PartNameToAnimConstraint"]
      157 SETTABLEKS                       R5 R12 K21 ["BoneNameToBone"]
      159 SETTABLEKS                       R9 R12 K22 ["FaceControlsPath"]
      161 SETTABLEKS                       R12 R11 K24 ["CacheData"]
      163 GETUPVAL                         R6 0
      164 GETTABLEKS                       R6 R6 K0 ["Cache"]
      166 GETTABLEKS                       R6 R6 K24 ["CacheData"]
      168 RETURN                           R6 1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["FaceControlsCache"]
        5 GETTABLEKS                       R2 R2 K1 ["CacheRig"]
        7 JUMPIFEQ                         R0 R2 ; [+35]
        9 GETUPVAL                         R2 1
       10 NEWTABLE                         R3 0 0
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 GETIMPORT                        R3 K3 [ipairs]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 3
       18 FORGPREP_INEXT                   R3
       19 LOADK                            R10 K4 ["FaceControls"]
       20 NAMECALL                         R8 R7 K5 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R7
       28 GETIMPORT                        R8 K8 [table.insert]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R3 2 [inext] ; [-13]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K0 ["FaceControlsCache"]
       36 SETTABLEKS                       R0 R3 K1 ["CacheRig"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K0 ["FaceControlsCache"]
       41 SETTABLEKS                       R1 R3 K4 ["FaceControls"]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K0 ["FaceControlsCache"]
       46 GETTABLEKS                       R3 R3 K4 ["FaceControls"]
       48 GETTABLEN                        R2 R3 1
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K0 ["FaceControlsCache"]
       52 GETTABLEKS                       R3 R3 K4 ["FaceControls"]
       54 RETURN                           R2 2

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRigInfo"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["PartNameToMotor"]
        7 GETTABLEKS                       R4 R2 K2 ["PartNameToAnimConstraint"]
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLE                         R5 R3 R1
       11 JUMPIFNOT                        R5 ; [+3]
       12 GETTABLEKS                       R6 R5 K3 ["Part1"]
       14 RETURN                           R6 1
       15 JUMPIFNOT                        R4 ; [+8]
       16 GETTABLE                         R5 R4 R1
       17 JUMPIFNOT                        R5 ; [+6]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K4 ["getPart1"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 -1
       23 RETURN                           R6 -1
       24 LOADNIL                          R5
       25 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRigInfo"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R2 K1 ["BoneNameToBone"]
        7 GETTABLE                         R3 R4 R1
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["buildHierarchy"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["LuaFlags"]
       29 GETTABLEKS                       R4 R4 K11 ["GetFFlagFaceControlsBoneParent"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K14 [{"Cache", "FaceControlsCache"}]
       33 DUPTABLE                         R5 K17 [{"CacheRig", "CacheData"}]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K15 ["CacheRig"]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K16 ["CacheData"]
       40 SETTABLEKS                       R5 R4 K12 ["Cache"]
       42 DUPTABLE                         R5 K17 [{"CacheRig", "CacheData"}]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K15 ["CacheRig"]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K16 ["CacheData"]
       49 SETTABLEKS                       R5 R4 K13 ["FaceControlsCache"]
       51 DUPCLOSURE                       R5 K18 [PROTO_0]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R6 K19 [PROTO_1]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R6 R4 K20 ["getTemporaryConstraints"]
       57 DUPCLOSURE                       R6 K21 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R6 R4 K22 ["usingTemporaryConstraints"]
       61 DUPCLOSURE                       R6 K23 [PROTO_3]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R6 R4 K24 ["getConstraints"]
       66 DUPCLOSURE                       R6 K25 [PROTO_5]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R6 R4 K26 ["buildRigHierarchy"]
       71 DUPCLOSURE                       R6 K27 [PROTO_6]
       72 SETTABLEKS                       R6 R4 K28 ["isR15Humanoid"]
       74 DUPCLOSURE                       R6 K29 [PROTO_7]
       75 SETTABLEKS                       R6 R4 K30 ["isR6Humanoid"]
       77 DUPCLOSURE                       R6 K31 [PROTO_8]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R6 R4 K32 ["findRootPart"]
       82 DUPCLOSURE                       R6 K33 [PROTO_9]
       83 SETTABLEKS                       R6 R4 K34 ["getAnimationController"]
       85 DUPCLOSURE                       R6 K35 [PROTO_10]
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R6 R4 K36 ["getAnimator"]
       89 DUPCLOSURE                       R6 K37 [PROTO_11]
       90 SETTABLEKS                       R6 R4 K38 ["getPart0"]
       92 DUPCLOSURE                       R6 K39 [PROTO_12]
       93 SETTABLEKS                       R6 R4 K40 ["getPart1"]
       95 DUPCLOSURE                       R6 K41 [PROTO_13]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R6 R4 K42 ["getMotors"]
       99 DUPCLOSURE                       R6 K43 [PROTO_14]
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R6 R4 K44 ["getBones"]
      103 DUPCLOSURE                       R6 K45 [PROTO_15]
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R6 R4 K46 ["getAnimationConstraints"]
      107 DUPCLOSURE                       R6 K47 [PROTO_16]
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R6 R4 K48 ["getFaceControlsPath"]
      111 DUPCLOSURE                       R6 K49 [PROTO_18]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R6 R4 K50 ["getUnusedRigTracks"]
      116 DUPCLOSURE                       R6 K51 [PROTO_19]
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R6 R4 K52 ["clearCache"]
      120 DUPCLOSURE                       R6 K53 [PROTO_20]
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R6 R4 K54 ["getRigInfo"]
      126 DUPCLOSURE                       R6 K55 [PROTO_21]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R6 R4 K56 ["getFaceControls"]
      131 DUPCLOSURE                       R6 K57 [PROTO_22]
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R6 R4 K58 ["getPartByName"]
      135 DUPCLOSURE                       R6 K59 [PROTO_23]
      136 CAPTURE                          VAL R4
      137 SETTABLEKS                       R6 R4 K60 ["getBoneByName"]
      139 RETURN                           R4 1
