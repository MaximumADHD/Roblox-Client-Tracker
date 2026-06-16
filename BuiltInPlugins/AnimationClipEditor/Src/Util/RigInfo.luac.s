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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getRootPart"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["findRootPart"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["getMotors"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["getBones"]
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["getAnimationConstraints"]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       31 MOVE                             R6 R1
       32 LOADK                            R7 K5 ["Rig is missing a root part."]
       33 GETIMPORT                        R5 K7 [assert]
       35 CALL                             R5 2 0
       36 GETTABLEKS                       R5 R1 K8 ["Name"]
       38 NEWTABLE                         R6 1 0
       40 GETUPVAL                         R7 2
       41 MOVE                             R8 R5
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R3
       47 CALL                             R7 2 1
       48 SETTABLE                         R7 R6 R5
       49 RETURN                           R6 1

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
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["isR6Humanoid"]
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 JUMPIFNOT                        R5 ; [+9]
        7 LOADK                            R7 K1 ["HumanoidRootPart"]
        8 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
       10 CALL                             R5 2 1
       11 JUMPIF                           R5 ; [+2]
       12 GETTABLEKS                       R5 R0 K3 ["PrimaryPart"]
       14 MOVE                             R4 R5
       15 JUMP                             ; [+8]
       16 GETTABLEKS                       R5 R0 K3 ["PrimaryPart"]
       18 JUMPIF                           R5 ; [+4]
       19 LOADK                            R7 K1 ["HumanoidRootPart"]
       20 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 JUMPIFNOT                        R4 ; [+1]
       25 RETURN                           R4 1
       26 GETUPVAL                         R5 1
       27 CALL                             R5 0 1
       28 JUMPIF                           R5 ; [+11]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K4 ["getRigInfo"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R1 R5 K5 ["PartNameToMotor"]
       36 GETTABLEKS                       R2 R5 K6 ["PartNameToAnimConstraint"]
       38 GETTABLEKS                       R3 R5 K7 ["BoneNameToBone"]
       40 LOADNIL                          R5
       41 GETIMPORT                        R6 K9 [next]
       43 MOVE                             R7 R1
       44 JUMPIF                           R7 ; [+2]
       45 NEWTABLE                         R7 0 0
       47 CALL                             R6 1 1
       48 JUMPIFNOT                        R6 ; [+13]
       49 JUMPIF                           R5 ; [+12]
       50 GETTABLE                         R7 R1 R6
       51 JUMPIFNOT                        R7 ; [+8]
       52 GETTABLEKS                       R8 R7 K10 ["Part0"]
       54 JUMPIFNOT                        R8 ; [+5]
       55 GETTABLEKS                       R8 R7 K10 ["Part0"]
       57 GETTABLEKS                       R6 R8 K11 ["Name"]
       59 JUMP                             ; [+1]
       60 MOVE                             R5 R6
       61 JUMPBACK                         ; [-13]
       62 GETIMPORT                        R7 K9 [next]
       64 MOVE                             R8 R3
       65 JUMPIF                           R8 ; [+2]
       66 NEWTABLE                         R8 0 0
       68 CALL                             R7 1 1
       69 JUMPIFNOT                        R7 ; [+10]
       70 JUMPIF                           R5 ; [+9]
       71 GETTABLE                         R8 R3 R7
       72 JUMPIFNOT                        R8 ; [+5]
       73 GETTABLEKS                       R9 R8 K12 ["Parent"]
       75 GETTABLEKS                       R7 R9 K11 ["Name"]
       77 JUMP                             ; [+1]
       78 MOVE                             R5 R7
       79 JUMPBACK                         ; [-10]
       80 JUMPIFNOT                        R2 ; [+18]
       81 GETIMPORT                        R8 K9 [next]
       83 MOVE                             R9 R2
       84 CALL                             R8 1 1
       85 JUMPIFNOT                        R8 ; [+13]
       86 JUMPIF                           R5 ; [+12]
       87 GETTABLE                         R9 R2 R8
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R10 R10 K13 ["getPart0"]
       91 MOVE                             R11 R9
       92 CALL                             R10 1 1
       93 JUMPIFNOT                        R10 ; [+3]
       94 GETTABLEKS                       R8 R10 K11 ["Name"]
       96 JUMP                             ; [+1]
       97 MOVE                             R5 R8
       98 JUMPBACK                         ; [-13]
       99 GETUPVAL                         R8 2
      100 NEWTABLE                         R9 0 0
      102 MOVE                             R10 R0
      103 CALL                             R8 2 1
      104 GETIMPORT                        R9 K15 [ipairs]
      106 MOVE                             R10 R8
      107 CALL                             R9 1 3
      108 FORGPREP_INEXT                   R9
      109 GETTABLEKS                       R14 R13 K11 ["Name"]
      111 JUMPIFNOTEQ                      R14 R5 ; [+7]
      113 LOADK                            R16 K16 ["BasePart"]
      114 NAMECALL                         R14 R13 K17 ["IsA"]
      116 CALL                             R14 2 1
      117 JUMPIFNOT                        R14 ; [+1]
      118 RETURN                           R13 1
      119 FORGLOOP                         R9 2 [inext] ; [-11]
      121 LOADNIL                          R9
      122 RETURN                           R9 1

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
        3 GETTABLEKS                       R3 R3 K0 ["getRigInfo"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 GETTABLEKS                       R4 R3 K1 ["RootPart"]
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["findRootPart"]
       16 MOVE                             R5 R0
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R3 K3 ["Parts"]
       20 GETTABLEKS                       R6 R3 K4 ["PartNameToMotor"]
       22 GETTABLEKS                       R7 R3 K5 ["PartNameToAnimConstraint"]
       24 GETTABLEKS                       R8 R3 K6 ["BoneNameToBone"]
       26 GETIMPORT                        R9 K8 [ipairs]
       28 MOVE                             R10 R5
       29 CALL                             R9 1 3
       30 FORGPREP_INEXT                   R9
       31 GETTABLEKS                       R15 R13 K9 ["Name"]
       33 GETTABLE                         R14 R8 R15
       34 JUMPIF                           R14 ; [+28]
       35 GETUPVAL                         R14 1
       36 CALL                             R14 0 1
       37 JUMPIF                           R14 ; [+11]
       38 JUMPIFEQ                         R13 R4 ; [+10]
       40 GETTABLEKS                       R15 R13 K9 ["Name"]
       42 GETTABLE                         R14 R6 R15
       43 JUMPIF                           R14 ; [+19]
       44 JUMPIFNOT                        R7 ; [+4]
       45 GETTABLEKS                       R15 R13 K9 ["Name"]
       47 GETTABLE                         R14 R7 R15
       48 JUMPIF                           R14 ; [+14]
       49 GETUPVAL                         R14 1
       50 CALL                             R14 0 1
       51 JUMPIFNOT                        R14 ; [+49]
       52 JUMPIFEQ                         R13 R4 ; [+10]
       54 GETTABLEKS                       R15 R13 K9 ["Name"]
       56 GETTABLE                         R14 R6 R15
       57 JUMPIF                           R14 ; [+5]
       58 JUMPIFNOT                        R7 ; [+42]
       59 GETTABLEKS                       R15 R13 K9 ["Name"]
       61 GETTABLE                         R14 R7 R15
       62 JUMPIFNOT                        R14 ; [+38]
       63 LOADB                            R14 0
       64 GETIMPORT                        R15 K8 [ipairs]
       66 MOVE                             R16 R1
       67 CALL                             R15 1 3
       68 FORGPREP_INEXT                   R15
       69 GETTABLEKS                       R20 R13 K9 ["Name"]
       71 GETTABLEKS                       R21 R19 K9 ["Name"]
       73 JUMPIFNOTEQ                      R20 R21 ; [+3]
       75 LOADB                            R14 1
       76 JUMP                             ; [+2]
       77 FORGLOOP                         R15 2 [inext] ; [-9]
       79 JUMPIF                           R14 ; [+21]
       80 DUPTABLE                         R17 K12 [{"Name", "Instance", "Type"}]
       81 GETTABLEKS                       R18 R13 K9 ["Name"]
       83 SETTABLEKS                       R18 R17 K9 ["Name"]
       85 LOADK                            R18 K13 ["Root"]
       86 SETTABLEKS                       R18 R17 K10 ["Instance"]
       88 GETUPVAL                         R18 2
       89 GETTABLEKS                       R18 R18 K14 ["TRACK_TYPES"]
       91 GETTABLEKS                       R18 R18 K15 ["CFrame"]
       93 SETTABLEKS                       R18 R17 K11 ["Type"]
       95 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
       97 MOVE                             R16 R2
       98 GETIMPORT                        R15 K18 [table.insert]
      100 CALL                             R15 2 0
      101 FORGLOOP                         R9 2 [inext] ; [-71]
      103 GETIMPORT                        R9 K20 [table.sort]
      105 MOVE                             R10 R2
      106 DUPCLOSURE                       R11 K21 [PROTO_17]
      107 CALL                             R9 2 0
      108 RETURN                           R2 1

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
       11 CALL                             R6 0 1
       12 JUMPIFNOT                        R6 ; [+5]
       13 JUMPIFNOTEQKNIL                  R0 ; [+4]
       15 NEWTABLE                         R6 0 0
       17 RETURN                           R6 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K0 ["Cache"]
       21 GETTABLEKS                       R6 R6 K1 ["CacheRig"]
       23 JUMPIFEQ                         R0 R6 ; [+169]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["getMotors"]
       28 MOVE                             R7 R0
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K3 ["getConstraints"]
       33 MOVE                             R8 R0
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K4 ["getAnimationConstraints"]
       38 MOVE                             R9 R0
       39 CALL                             R8 1 1
       40 GETUPVAL                         R10 2
       41 CALL                             R10 0 1
       42 JUMPIFNOT                        R10 ; [+6]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K5 ["getFaceControlsPath"]
       46 MOVE                             R10 R0
       47 CALL                             R9 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 GETUPVAL                         R10 3
       51 NEWTABLE                         R11 0 0
       53 MOVE                             R12 R0
       54 CALL                             R10 2 1
       55 GETIMPORT                        R11 K7 [ipairs]
       57 MOVE                             R12 R10
       58 CALL                             R11 1 3
       59 FORGPREP_INEXT                   R11
       60 LOADK                            R18 K8 ["BasePart"]
       61 NAMECALL                         R16 R15 K9 ["IsA"]
       63 CALL                             R16 2 1
       64 JUMPIFNOT                        R16 ; [+66]
       65 GETIMPORT                        R16 K7 [ipairs]
       67 MOVE                             R17 R6
       68 CALL                             R16 1 3
       69 FORGPREP_INEXT                   R16
       70 GETTABLEKS                       R21 R20 K10 ["Part1"]
       72 JUMPIFNOTEQ                      R21 R15 ; [+12]
       74 GETTABLEKS                       R21 R15 K11 ["Name"]
       76 SETTABLE                         R20 R2 R21
       77 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       79 MOVE                             R22 R1
       80 MOVE                             R23 R15
       81 GETIMPORT                        R21 K14 [table.insert]
       83 CALL                             R21 2 0
       84 JUMP                             ; [+2]
       85 FORGLOOP                         R16 2 [inext] ; [-16]
       87 GETIMPORT                        R16 K7 [ipairs]
       89 MOVE                             R17 R7
       90 CALL                             R16 1 3
       91 FORGPREP_INEXT                   R16
       92 GETUPVAL                         R21 1
       93 GETTABLEKS                       R21 R21 K15 ["getPart1"]
       95 MOVE                             R22 R20
       96 CALL                             R21 1 1
       97 JUMPIFNOTEQ                      R21 R15 ; [+5]
       99 GETTABLEKS                       R21 R15 K11 ["Name"]
      101 SETTABLE                         R20 R3 R21
      102 JUMP                             ; [+2]
      103 FORGLOOP                         R16 2 [inext] ; [-12]
      105 GETIMPORT                        R16 K7 [ipairs]
      107 MOVE                             R17 R8
      108 CALL                             R16 1 3
      109 FORGPREP_INEXT                   R16
      110 GETUPVAL                         R21 1
      111 GETTABLEKS                       R21 R21 K15 ["getPart1"]
      113 MOVE                             R22 R20
      114 CALL                             R21 1 1
      115 JUMPIFNOTEQ                      R21 R15 ; [+12]
      117 GETTABLEKS                       R21 R15 K11 ["Name"]
      119 SETTABLE                         R20 R4 R21
      120 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
      122 MOVE                             R22 R1
      123 MOVE                             R23 R15
      124 GETIMPORT                        R21 K14 [table.insert]
      126 CALL                             R21 2 0
      127 JUMP                             ; [+18]
      128 FORGLOOP                         R16 2 [inext] ; [-19]
      130 JUMP                             ; [+15]
      131 LOADK                            R18 K16 ["Bone"]
      132 NAMECALL                         R16 R15 K9 ["IsA"]
      134 CALL                             R16 2 1
      135 JUMPIFNOT                        R16 ; [+10]
      136 GETTABLEKS                       R16 R15 K11 ["Name"]
      138 SETTABLE                         R15 R5 R16
      139 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
      141 MOVE                             R17 R1
      142 MOVE                             R18 R15
      143 GETIMPORT                        R16 K14 [table.insert]
      145 CALL                             R16 2 0
      146 FORGLOOP                         R11 2 [inext] ; [-87]
      148 LOADNIL                          R11
      149 GETUPVAL                         R12 0
      150 CALL                             R12 0 1
      151 JUMPIFNOT                        R12 ; [+16]
      152 GETUPVAL                         R12 1
      153 GETTABLEKS                       R12 R12 K17 ["findRootPart"]
      155 MOVE                             R13 R0
      156 MOVE                             R14 R2
      157 MOVE                             R15 R4
      158 MOVE                             R16 R5
      159 CALL                             R12 4 1
      160 MOVE                             R11 R12
      161 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
      163 MOVE                             R13 R1
      164 MOVE                             R14 R11
      165 GETIMPORT                        R12 K14 [table.insert]
      167 CALL                             R12 2 0
      168 GETUPVAL                         R12 1
      169 GETTABLEKS                       R12 R12 K0 ["Cache"]
      171 SETTABLEKS                       R0 R12 K1 ["CacheRig"]
      173 GETUPVAL                         R12 1
      174 GETTABLEKS                       R12 R12 K0 ["Cache"]
      176 DUPTABLE                         R13 K25 [{"Parts", "PartNameToMotor", "PartNameToConstraint", "PartNameToAnimConstraint", "BoneNameToBone", "FaceControlsPath", "RootPart"}]
      177 SETTABLEKS                       R1 R13 K18 ["Parts"]
      179 SETTABLEKS                       R2 R13 K19 ["PartNameToMotor"]
      181 SETTABLEKS                       R3 R13 K20 ["PartNameToConstraint"]
      183 SETTABLEKS                       R4 R13 K21 ["PartNameToAnimConstraint"]
      185 SETTABLEKS                       R5 R13 K22 ["BoneNameToBone"]
      187 SETTABLEKS                       R9 R13 K23 ["FaceControlsPath"]
      189 SETTABLEKS                       R11 R13 K24 ["RootPart"]
      191 SETTABLEKS                       R13 R12 K26 ["CacheData"]
      193 GETUPVAL                         R6 1
      194 GETTABLEKS                       R6 R6 K0 ["Cache"]
      196 GETTABLEKS                       R6 R6 K26 ["CacheData"]
      198 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getRigInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["RootPart"]
        7 RETURN                           R1 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["LuaFlags"]
       36 GETTABLEKS                       R5 R5 K12 ["GetFFlagRootMotion"]
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K15 [{"Cache", "FaceControlsCache"}]
       40 DUPTABLE                         R6 K18 [{"CacheRig", "CacheData"}]
       41 LOADNIL                          R7
       42 SETTABLEKS                       R7 R6 K16 ["CacheRig"]
       44 LOADNIL                          R7
       45 SETTABLEKS                       R7 R6 K17 ["CacheData"]
       47 SETTABLEKS                       R6 R5 K13 ["Cache"]
       49 DUPTABLE                         R6 K18 [{"CacheRig", "CacheData"}]
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R6 K16 ["CacheRig"]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K17 ["CacheData"]
       56 SETTABLEKS                       R6 R5 K14 ["FaceControlsCache"]
       58 DUPCLOSURE                       R6 K19 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R7 K20 [PROTO_1]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R7 R5 K21 ["getTemporaryConstraints"]
       64 DUPCLOSURE                       R7 K22 [PROTO_2]
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R7 R5 K23 ["usingTemporaryConstraints"]
       68 DUPCLOSURE                       R7 K24 [PROTO_3]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R7 R5 K25 ["getConstraints"]
       73 DUPCLOSURE                       R7 K26 [PROTO_5]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R7 R5 K27 ["buildRigHierarchy"]
       79 DUPCLOSURE                       R7 K28 [PROTO_6]
       80 SETTABLEKS                       R7 R5 K29 ["isR15Humanoid"]
       82 DUPCLOSURE                       R7 K30 [PROTO_7]
       83 SETTABLEKS                       R7 R5 K31 ["isR6Humanoid"]
       85 DUPCLOSURE                       R7 K32 [PROTO_8]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 SETTABLEKS                       R7 R5 K33 ["findRootPart"]
       91 DUPCLOSURE                       R7 K34 [PROTO_9]
       92 SETTABLEKS                       R7 R5 K35 ["getAnimationController"]
       94 DUPCLOSURE                       R7 K36 [PROTO_10]
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R7 R5 K37 ["getAnimator"]
       98 DUPCLOSURE                       R7 K38 [PROTO_11]
       99 SETTABLEKS                       R7 R5 K39 ["getPart0"]
      101 DUPCLOSURE                       R7 K40 [PROTO_12]
      102 SETTABLEKS                       R7 R5 K41 ["getPart1"]
      104 DUPCLOSURE                       R7 K42 [PROTO_13]
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R7 R5 K43 ["getMotors"]
      108 DUPCLOSURE                       R7 K44 [PROTO_14]
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R7 R5 K45 ["getBones"]
      112 DUPCLOSURE                       R7 K46 [PROTO_15]
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R7 R5 K47 ["getAnimationConstraints"]
      116 DUPCLOSURE                       R7 K48 [PROTO_16]
      117 CAPTURE                          VAL R6
      118 SETTABLEKS                       R7 R5 K49 ["getFaceControlsPath"]
      120 DUPCLOSURE                       R7 K50 [PROTO_18]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R7 R5 K51 ["getUnusedRigTracks"]
      126 DUPCLOSURE                       R7 K52 [PROTO_19]
      127 CAPTURE                          VAL R5
      128 SETTABLEKS                       R7 R5 K53 ["clearCache"]
      130 DUPCLOSURE                       R7 K54 [PROTO_20]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R7 R5 K55 ["getRigInfo"]
      137 DUPCLOSURE                       R7 K56 [PROTO_21]
      138 CAPTURE                          VAL R5
      139 SETTABLEKS                       R7 R5 K57 ["getRootPart"]
      141 DUPCLOSURE                       R7 K58 [PROTO_22]
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R7 R5 K59 ["getFaceControls"]
      146 DUPCLOSURE                       R7 K60 [PROTO_23]
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R7 R5 K61 ["getPartByName"]
      150 DUPCLOSURE                       R7 K62 [PROTO_24]
      151 CAPTURE                          VAL R5
      152 SETTABLEKS                       R7 R5 K63 ["getBoneByName"]
      154 RETURN                           R5 1
