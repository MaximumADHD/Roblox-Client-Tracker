PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Humanoid"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["getFaceControls"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getRigInfo"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["PartNameToMotor"]
        9 GETTABLEKS                       R5 R3 K2 ["PartNameToAnimConstraint"]
       11 GETTABLEKS                       R6 R3 K3 ["BoneNameToBone"]
       13 GETIMPORT                        R7 K5 [ipairs]
       15 MOVE                             R8 R0
       16 CALL                             R7 1 3
       17 FORGPREP_INEXT                   R7
       18 GETTABLEKS                       R12 R11 K6 ["Name"]
       20 GETTABLE                         R13 R4 R12
       21 JUMPIFNOT                        R13 ; [+35]
       22 DUPTABLE                         R15 K12 [{"Type", "Part0", "Part1", "C0", "C1"}]
       23 GETUPVAL                         R18 1
       24 GETTABLEKS                       R17 R18 K13 ["JOINT_TYPES"]
       26 GETTABLEKS                       R16 R17 K14 ["Motor6D"]
       28 SETTABLEKS                       R16 R15 K7 ["Type"]
       30 GETTABLE                         R17 R4 R12
       31 GETTABLEKS                       R16 R17 K8 ["Part0"]
       33 SETTABLEKS                       R16 R15 K8 ["Part0"]
       35 GETTABLE                         R17 R4 R12
       36 GETTABLEKS                       R16 R17 K9 ["Part1"]
       38 SETTABLEKS                       R16 R15 K9 ["Part1"]
       40 GETTABLE                         R17 R4 R12
       41 GETTABLEKS                       R16 R17 K10 ["C0"]
       43 SETTABLEKS                       R16 R15 K10 ["C0"]
       45 GETTABLE                         R17 R4 R12
       46 GETTABLEKS                       R16 R17 K11 ["C1"]
       48 SETTABLEKS                       R16 R15 K11 ["C1"]
       50 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       52 MOVE                             R14 R2
       53 GETIMPORT                        R13 K17 [table.insert]
       55 CALL                             R13 2 0
       56 JUMP                             ; [+68]
       57 GETTABLE                         R13 R6 R12
       58 JUMPIFNOT                        R13 ; [+18]
       59 DUPTABLE                         R15 K19 [{"Type", "Bone"}]
       60 GETUPVAL                         R18 1
       61 GETTABLEKS                       R17 R18 K13 ["JOINT_TYPES"]
       63 GETTABLEKS                       R16 R17 K18 ["Bone"]
       65 SETTABLEKS                       R16 R15 K7 ["Type"]
       67 GETTABLE                         R16 R6 R12
       68 SETTABLEKS                       R16 R15 K18 ["Bone"]
       70 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       72 MOVE                             R14 R2
       73 GETIMPORT                        R13 K17 [table.insert]
       75 CALL                             R13 2 0
       76 JUMP                             ; [+48]
       77 GETTABLE                         R13 R5 R12
       78 JUMPIFNOT                        R13 ; [+46]
       79 GETTABLEKS                       R14 R13 K20 ["Attachment0"]
       81 JUMPIFNOT                        R14 ; [+43]
       82 GETTABLEKS                       R14 R13 K21 ["Attachment1"]
       84 JUMPIFNOT                        R14 ; [+40]
       85 DUPTABLE                         R16 K12 [{"Type", "Part0", "Part1", "C0", "C1"}]
       86 GETUPVAL                         R19 1
       87 GETTABLEKS                       R18 R19 K13 ["JOINT_TYPES"]
       89 GETTABLEKS                       R17 R18 K22 ["AnimationConstraint"]
       91 SETTABLEKS                       R17 R16 K7 ["Type"]
       93 GETUPVAL                         R18 0
       94 GETTABLEKS                       R17 R18 K23 ["getPart0"]
       96 MOVE                             R18 R13
       97 CALL                             R17 1 1
       98 SETTABLEKS                       R17 R16 K8 ["Part0"]
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R17 R18 K24 ["getPart1"]
      103 MOVE                             R18 R13
      104 CALL                             R17 1 1
      105 SETTABLEKS                       R17 R16 K9 ["Part1"]
      107 GETTABLEKS                       R18 R13 K20 ["Attachment0"]
      109 GETTABLEKS                       R17 R18 K25 ["CFrame"]
      111 SETTABLEKS                       R17 R16 K10 ["C0"]
      113 GETTABLEKS                       R18 R13 K21 ["Attachment1"]
      115 GETTABLEKS                       R17 R18 K25 ["CFrame"]
      117 SETTABLEKS                       R17 R16 K11 ["C1"]
      119 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
      121 MOVE                             R15 R2
      122 GETIMPORT                        R14 K17 [table.insert]
      124 CALL                             R14 2 0
      125 FORGLOOP                         R7 2 [inext] ; [-108]
      127 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["canUseFaceControlsEditor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["getFaceControls"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+12]
       14 GETIMPORT                        R2 K3 [pairs]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R3 R5 K4 ["FacsNames"]
       19 CALL                             R2 1 3
       20 FORGPREP_NEXT                    R2
       21 LOADN                            R7 0
       22 SETTABLE                         R7 R1 R6
       23 FORGLOOP                         R2 2 ; [-3]
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getAnimator"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["getRigInfo"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R4 K2 ["Parts"]
       12 GETTABLEKS                       R6 R4 K3 ["PartNameToMotor"]
       14 GETTABLEKS                       R7 R4 K4 ["PartNameToAnimConstraint"]
       16 GETTABLEKS                       R8 R4 K5 ["BoneNameToBone"]
       18 LOADK                            R12 K6 ["Model"]
       19 NAMECALL                         R10 R0 K7 ["IsA"]
       21 CALL                             R10 2 1
       22 JUMPIFNOT                        R10 ; [+4]
       23 NAMECALL                         R9 R0 K8 ["GetScale"]
       25 CALL                             R9 1 1
       26 JUMP                             ; [+1]
       27 LOADN                            R9 1
       28 GETIMPORT                        R10 K10 [ipairs]
       30 MOVE                             R11 R5
       31 CALL                             R10 1 3
       32 FORGPREP_INEXT                   R10
       33 GETTABLEKS                       R16 R14 K11 ["Name"]
       35 GETTABLE                         R15 R6 R16
       36 JUMPIF                           R15 ; [+7]
       37 GETTABLEKS                       R16 R14 K11 ["Name"]
       39 GETTABLE                         R15 R8 R16
       40 JUMPIF                           R15 ; [+3]
       41 GETTABLEKS                       R16 R14 K11 ["Name"]
       43 GETTABLE                         R15 R7 R16
       44 JUMPIFNOT                        R15 ; [+26]
       45 GETTABLEKS                       R17 R1 K12 ["Tracks"]
       47 GETTABLEKS                       R18 R14 K11 ["Name"]
       49 GETTABLE                         R16 R17 R18
       50 JUMPIFNOT                        R16 ; [+15]
       51 GETUPVAL                         R18 1
       52 GETTABLEKS                       R17 R18 K13 ["getValue"]
       54 MOVE                             R18 R16
       55 MOVE                             R19 R2
       56 CALL                             R17 2 1
       57 GETTABLEKS                       R19 R17 K14 ["Rotation"]
       59 GETTABLEKS                       R21 R17 K15 ["Position"]
       61 MUL                              R20 R21 R9
       62 ADD                              R18 R19 R20
       63 SETTABLEKS                       R18 R15 K16 ["Transform"]
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R17 K19 [CFrame.new]
       68 CALL                             R17 0 1
       69 SETTABLEKS                       R17 R15 K16 ["Transform"]
       71 FORGLOOP                         R10 2 [inext] ; [-39]
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R10 R11 K20 ["getFaceControls"]
       76 MOVE                             R11 R0
       77 CALL                             R10 1 1
       78 JUMPIFEQKNIL                     R10 ; [+41]
       80 GETIMPORT                        R11 K22 [pairs]
       82 GETUPVAL                         R14 2
       83 GETTABLEKS                       R12 R14 K23 ["FacsNames"]
       85 CALL                             R11 1 3
       86 FORGPREP_NEXT                    R11
       87 JUMPIFNOT                        R1 ; [+28]
       88 GETTABLEKS                       R16 R1 K12 ["Tracks"]
       90 JUMPIFEQKNIL                     R16 ; [+25]
       92 GETTABLEKS                       R17 R1 K12 ["Tracks"]
       94 GETTABLE                         R16 R17 R15
       95 JUMPIFNOT                        R16 ; [+17]
       96 GETTABLEKS                       R17 R16 K24 ["Type"]
       98 GETUPVAL                         R20 2
       99 GETTABLEKS                       R19 R20 K25 ["TRACK_TYPES"]
      101 GETTABLEKS                       R18 R19 K26 ["Facs"]
      103 JUMPIFNOTEQ                      R17 R18 ; [+9]
      105 GETUPVAL                         R18 1
      106 GETTABLEKS                       R17 R18 K13 ["getValue"]
      108 MOVE                             R18 R16
      109 MOVE                             R19 R2
      110 CALL                             R17 2 1
      111 SETTABLE                         R17 R10 R15
      112 JUMP                             ; [+5]
      113 LOADN                            R17 0
      114 SETTABLE                         R17 R10 R15
      115 JUMP                             ; [+2]
      116 LOADN                            R16 0
      117 SETTABLE                         R16 R10 R15
      118 FORGLOOP                         R11 2 ; [-32]
      120 JUMPIFNOT                        R3 ; [+9]
      121 GETUPVAL                         R11 3
      122 NAMECALL                         R11 R11 K27 ["IsRunning"]
      124 CALL                             R11 1 1
      125 JUMPIF                           R11 ; [+4]
      126 LOADN                            R13 0
      127 NAMECALL                         R11 R3 K28 ["StepAnimations"]
      129 CALL                             R11 2 0
      130 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["resetAnimator"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K1 ["getAnimator"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K2 ["getRigInfo"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K3 ["Parts"]
       26 GETTABLEKS                       R4 R2 K4 ["PartNameToMotor"]
       28 GETTABLEKS                       R5 R2 K5 ["PartNameToAnimConstraint"]
       30 GETTABLEKS                       R6 R2 K6 ["BoneNameToBone"]
       32 GETIMPORT                        R7 K8 [ipairs]
       34 MOVE                             R8 R3
       35 CALL                             R7 1 3
       36 FORGPREP_INEXT                   R7
       37 GETTABLEKS                       R13 R11 K9 ["Name"]
       39 GETTABLE                         R12 R4 R13
       40 JUMPIF                           R12 ; [+9]
       41 GETTABLEKS                       R13 R11 K9 ["Name"]
       43 GETTABLE                         R12 R6 R13
       44 JUMPIF                           R12 ; [+5]
       45 MOVE                             R12 R5
       46 JUMPIFNOT                        R12 ; [+3]
       47 GETTABLEKS                       R13 R11 K9 ["Name"]
       49 GETTABLE                         R12 R5 R13
       50 JUMPIFNOT                        R12 ; [+5]
       51 GETIMPORT                        R13 K12 [CFrame.new]
       53 CALL                             R13 0 1
       54 SETTABLEKS                       R13 R12 K13 ["Transform"]
       56 FORGLOOP                         R7 2 [inext] ; [-20]
       58 JUMPIFNOT                        R1 ; [+9]
       59 GETUPVAL                         R7 3
       60 NAMECALL                         R7 R7 K14 ["IsRunning"]
       62 CALL                             R7 1 1
       63 JUMPIF                           R7 ; [+4]
       64 LOADN                            R9 0
       65 NAMECALL                         R7 R1 K15 ["StepAnimations"]
       67 CALL                             R7 2 0
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R7 R8 K16 ["updateSimulatedAnimConstraintParts"]
       71 MOVE                             R8 R0
       72 CALL                             R7 1 0
       73 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Attachment0"]
        2 GETTABLEKS                       R2 R0 K1 ["Attachment1"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["getPart1"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R5 R1 K3 ["WorldCFrame"]
       16 GETTABLEKS                       R6 R0 K4 ["Transform"]
       18 MUL                              R4 R5 R6
       19 GETTABLEKS                       R6 R2 K5 ["CFrame"]
       21 NAMECALL                         R6 R6 K6 ["Inverse"]
       23 CALL                             R6 1 1
       24 MUL                              R5 R4 R6
       25 SETTABLEKS                       R5 R3 K5 ["CFrame"]
       27 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R7 R4
        6 JUMPIFNOT                        R6 ; [+27]
        7 GETTABLEKS                       R7 R6 K0 ["Attachment0"]
        9 GETTABLEKS                       R8 R6 K1 ["Attachment1"]
       11 JUMPIFNOT                        R7 ; [+22]
       12 JUMPIF                           R8 ; [+1]
       13 JUMP                             ; [+20]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K2 ["getPart1"]
       17 MOVE                             R10 R6
       18 CALL                             R9 1 1
       19 JUMPIF                           R9 ; [+1]
       20 JUMP                             ; [+13]
       21 GETTABLEKS                       R11 R7 K3 ["WorldCFrame"]
       23 GETTABLEKS                       R12 R6 K4 ["Transform"]
       25 MUL                              R10 R11 R12
       26 GETTABLEKS                       R12 R8 K5 ["CFrame"]
       28 NAMECALL                         R12 R12 K6 ["Inverse"]
       30 CALL                             R12 1 1
       31 MUL                              R11 R10 R12
       32 SETTABLEKS                       R11 R9 K5 ["CFrame"]
       34 GETUPVAL                         R7 2
       35 MOVE                             R8 R5
       36 CALL                             R7 1 0
       37 FORGLOOP                         R1 2 ; [-34]
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K1 [ipairs]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["getAnimationConstraints"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 3
       14 FORGPREP_INEXT                   R2
       15 GETTABLEKS                       R7 R6 K3 ["IsKinematic"]
       17 JUMPIF                           R7 ; [+9]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K4 ["getPart1"]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 1
       23 JUMPIFNOT                        R7 ; [+3]
       24 GETTABLEKS                       R8 R7 K5 ["Name"]
       26 SETTABLE                         R6 R1 R8
       27 FORGLOOP                         R2 2 [inext] ; [-13]
       29 GETIMPORT                        R2 K7 [next]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 JUMPIF                           R2 ; [+1]
       34 RETURN                           R0 0
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R2
       39 MOVE                             R3 R2
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K8 ["buildRigHierarchy"]
       43 MOVE                             R5 R0
       44 CALL                             R4 1 -1
       45 CALL                             R3 -1 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["FOLDERS"]
        4 GETTABLEKS                       R2 R3 K1 ["AnimSaves"]
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+15]
       10 GETIMPORT                        R1 K5 [Instance.new]
       12 LOADK                            R2 K6 ["Model"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K0 ["FOLDERS"]
       17 GETTABLEKS                       R2 R3 K1 ["AnimSaves"]
       19 SETTABLEKS                       R2 R1 K7 ["Name"]
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R2 R1 K8 ["Parent"]
       24 MOVE                             R0 R1
       25 RETURN                           R0 1

PROTO_9:
        0 JUMPIF                           R0 ; [+3]
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 RETURN                           R2 2
        4 LOADK                            R4 K0 ["AnimSaves"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 LOADK                            R5 K2 ["ObjectValue"]
       10 NAMECALL                         R3 R2 K3 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+22]
       14 GETIMPORT                        R3 K6 [Instance.new]
       16 LOADK                            R4 K2 ["ObjectValue"]
       17 CALL                             R3 1 1
       18 LOADK                            R4 K0 ["AnimSaves"]
       19 SETTABLEKS                       R4 R3 K7 ["Name"]
       21 SETTABLEKS                       R0 R3 K8 ["Parent"]
       23 JUMPIFNOT                        R2 ; [+11]
       24 NAMECALL                         R4 R2 K9 ["GetChildren"]
       26 CALL                             R4 1 3
       27 FORGPREP                         R4
       28 SETTABLEKS                       R3 R8 K8 ["Parent"]
       30 FORGLOOP                         R4 2 ; [-3]
       32 NAMECALL                         R4 R2 K10 ["Destroy"]
       34 CALL                             R4 1 0
       35 MOVE                             R2 R3
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K11 ["findOrCreateServerAnimSaves"]
       39 CALL                             R3 0 1
       40 GETTABLEKS                       R4 R2 K12 ["Value"]
       42 JUMPIFNOT                        R4 ; [+5]
       43 GETTABLEKS                       R5 R4 K8 ["Parent"]
       45 JUMPIF                           R5 ; [+2]
       46 SETTABLEKS                       R3 R4 K8 ["Parent"]
       48 JUMPIFNOT                        R4 ; [+9]
       49 LOADK                            R7 K2 ["ObjectValue"]
       50 NAMECALL                         R5 R4 K3 ["IsA"]
       52 CALL                             R5 2 1
       53 JUMPIFNOT                        R5 ; [+4]
       54 GETTABLEKS                       R5 R4 K12 ["Value"]
       56 JUMPIFEQ                         R5 R0 ; [+16]
       58 GETIMPORT                        R5 K6 [Instance.new]
       60 LOADK                            R6 K2 ["ObjectValue"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R6 R0 K7 ["Name"]
       64 SETTABLEKS                       R6 R5 K7 ["Name"]
       66 SETTABLEKS                       R3 R5 K8 ["Parent"]
       68 SETTABLEKS                       R0 R5 K12 ["Value"]
       70 MOVE                             R4 R5
       71 SETTABLEKS                       R4 R2 K12 ["Value"]
       73 MOVE                             R5 R4
       74 MOVE                             R6 R2
       75 RETURN                           R5 2

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+31]
        1 NAMECALL                         R2 R0 K0 ["GetChildren"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [ipairs]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 LOADK                            R10 K3 ["KeyframeSequence"]
       10 NAMECALL                         R8 R7 K4 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIF                           R8 ; [+5]
       14 LOADK                            R10 K5 ["CurveAnimation"]
       15 NAMECALL                         R8 R7 K4 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+11]
       19 GETUPVAL                         R9 0
       20 DUPTABLE                         R10 K8 [{"animation", "isLegacyAnimSaves"}]
       21 SETTABLEKS                       R7 R10 K6 ["animation"]
       23 SETTABLEKS                       R1 R10 K7 ["isLegacyAnimSaves"]
       25 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       27 GETIMPORT                        R8 K11 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 [inext] ; [-22]
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAnimSavesFolder"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 MOVE                             R5 R4
       10 MOVE                             R6 R1
       11 LOADB                            R7 0
       12 CALL                             R5 2 0
       13 MOVE                             R5 R4
       14 MOVE                             R6 R2
       15 LOADB                            R7 1
       16 CALL                             R5 2 0
       17 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Camera"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChildOfClass"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+36]
        6 NAMECALL                         R2 R0 K2 ["GetExtentsSize"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R2 K3 ["X"]
       11 GETTABLEKS                       R5 R2 K4 ["Z"]
       13 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       15 GETIMPORT                        R3 K7 [math.max]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K8 ["findRootPart"]
       21 MOVE                             R5 R0
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R4 K9 ["CFrame"]
       25 GETTABLEKS                       R7 R5 K10 ["Position"]
       27 GETTABLEKS                       R9 R5 K11 ["LookVector"]
       29 MULK                             R10 R3 K12 [2]
       30 MUL                              R8 R9 R10
       31 ADD                              R6 R7 R8
       32 GETIMPORT                        R7 K14 [CFrame.new]
       34 MOVE                             R8 R6
       35 GETTABLEKS                       R9 R5 K10 ["Position"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R1 K9 ["CFrame"]
       40 SETTABLEKS                       R5 R1 K15 ["Focus"]
       42 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [workspace]
        4 GETTABLEKS                       R1 R2 K2 ["CurrentCamera"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["getFaceControls"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFEQKNIL                     R2 ; [+159]
       13 GETTABLEKS                       R3 R2 K4 ["Parent"]
       15 LOADNIL                          R4
       16 LOADK                            R7 K5 ["Neck"]
       17 NAMECALL                         R5 R3 K6 ["FindFirstChild"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+12]
       21 LOADK                            R8 K7 ["Motor6D"]
       22 NAMECALL                         R6 R5 K8 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+7]
       26 GETTABLEKS                       R6 R5 K9 ["Part1"]
       28 JUMPIFNOTEQ                      R6 R3 ; [+4]
       30 GETTABLEKS                       R4 R5 K10 ["Part0"]
       32 JUMP                             ; [+57]
       33 LOADK                            R8 K7 ["Motor6D"]
       34 NAMECALL                         R6 R3 K11 ["FindFirstChildOfClass"]
       36 CALL                             R6 2 1
       37 MOVE                             R5 R6
       38 JUMPIFNOT                        R5 ; [+7]
       39 GETTABLEKS                       R6 R5 K9 ["Part1"]
       41 JUMPIFNOTEQ                      R6 R3 ; [+4]
       43 GETTABLEKS                       R4 R5 K10 ["Part0"]
       45 JUMP                             ; [+44]
       46 JUMPIFNOTEQKNIL                  R4 ; [+43]
       48 GETTABLEKS                       R6 R3 K4 ["Parent"]
       50 JUMPIFNOT                        R6 ; [+39]
       51 GETTABLEKS                       R6 R3 K4 ["Parent"]
       53 GETUPVAL                         R7 1
       54 JUMPIFEQ                         R6 R7 ; [+35]
       56 GETTABLEKS                       R6 R3 K4 ["Parent"]
       58 NAMECALL                         R6 R6 K12 ["GetDescendants"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K14 [pairs]
       63 MOVE                             R8 R6
       64 CALL                             R7 1 3
       65 FORGPREP_NEXT                    R7
       66 LOADK                            R14 K7 ["Motor6D"]
       67 NAMECALL                         R12 R11 K8 ["IsA"]
       69 CALL                             R12 2 1
       70 JUMPIFNOT                        R12 ; [+17]
       71 GETTABLEKS                       R12 R11 K9 ["Part1"]
       73 JUMPIFNOTEQ                      R12 R3 ; [+14]
       75 GETTABLEKS                       R12 R11 K4 ["Parent"]
       77 JUMPIFNOT                        R12 ; [+10]
       78 GETTABLEKS                       R12 R11 K4 ["Parent"]
       80 LOADK                            R14 K15 ["BasePart"]
       81 NAMECALL                         R12 R12 K8 ["IsA"]
       83 CALL                             R12 2 1
       84 JUMPIFNOT                        R12 ; [+3]
       85 GETTABLEKS                       R4 R11 K4 ["Parent"]
       87 JUMP                             ; [+2]
       88 FORGLOOP                         R7 2 ; [-23]
       90 JUMPIFEQKNIL                     R4 ; [+80]
       92 LOADN                            R6 1
       93 LOADN                            R7 1
       94 GETUPVAL                         R9 2
       95 GETTABLEKS                       R8 R9 K16 ["CalculateTargetCFrame"]
       97 GETTABLEKS                       R9 R3 K17 ["CFrame"]
       99 CALL                             R8 1 1
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K18 ["CalculateHeadExtents"]
      103 MOVE                             R10 R0
      104 MOVE                             R11 R8
      105 CALL                             R9 2 2
      106 GETTABLEKS                       R14 R9 K19 ["X"]
      108 GETTABLEKS                       R15 R9 K20 ["Y"]
      110 GETTABLEKS                       R16 R9 K21 ["Z"]
      112 FASTCALL                         VECTOR ; [+2]
      113 GETIMPORT                        R13 K24 [Vector3.new]
      115 CALL                             R13 3 1
      116 MOVE                             R11 R13
      117 GETTABLEKS                       R13 R10 K19 ["X"]
      119 GETTABLEKS                       R14 R10 K20 ["Y"]
      121 GETTABLEKS                       R15 R10 K21 ["Z"]
      123 FASTCALL                         VECTOR ; [+2]
      124 GETIMPORT                        R12 K24 [Vector3.new]
      126 CALL                             R12 3 1
      127 SUB                              R13 R12 R11
      128 GETTABLEKS                       R15 R13 K19 ["X"]
      130 GETTABLEKS                       R16 R13 K21 ["Z"]
      132 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      134 GETIMPORT                        R14 K28 [math.min]
      136 CALL                             R14 2 1
      137 ADDK                             R6 R14 K25 [0.25]
      138 MOVE                             R7 R6
      139 MOVE                             R6 R7
      140 GETTABLEKS                       R14 R1 K29 ["FieldOfView"]
      142 JUMPIFEQKN                       R14 K30 [70] ; [+5]
      144 GETTABLEKS                       R15 R1 K29 ["FieldOfView"]
      146 DIVK                             R14 R15 K30 [70]
      147 DIV                              R6 R7 R14
      148 GETTABLEKS                       R15 R3 K31 ["Position"]
      150 GETTABLEKS                       R18 R4 K17 ["CFrame"]
      152 GETTABLEKS                       R17 R18 K32 ["LookVector"]
      154 MULK                             R18 R6 K33 [1.5]
      155 MUL                              R16 R17 R18
      156 ADD                              R14 R15 R16
      157 GETIMPORT                        R15 K35 [CFrame.lookAt]
      159 MOVE                             R16 R14
      160 GETTABLEKS                       R18 R3 K17 ["CFrame"]
      162 GETTABLEKS                       R17 R18 K31 ["Position"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R1 K17 ["CFrame"]
      167 GETTABLEKS                       R15 R3 K17 ["CFrame"]
      169 SETTABLEKS                       R15 R1 K36 ["Focus"]
      171 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAnimator"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETTABLEKS                       R2 R1 K1 ["Parent"]
        8 NAMECALL                         R3 R1 K2 ["Destroy"]
       10 CALL                             R3 1 0
       11 GETIMPORT                        R3 K5 [Instance.new]
       13 LOADK                            R4 K6 ["Animator"]
       14 MOVE                             R5 R2
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 NAMECALL                         R4 R2 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_INEXT                   R3
        7 LOADK                            R10 K3 ["AnimationRigData"]
        8 NAMECALL                         R8 R7 K4 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+3]
       12 NAMECALL                         R8 R7 K5 ["Destroy"]
       14 CALL                             R8 1 0
       15 FORGLOOP                         R3 2 [inext] ; [-9]
       17 GETUPVAL                         R3 0
       18 JUMPIFNOT                        R3 ; [+25]
       19 GETIMPORT                        R3 K8 [Instance.new]
       21 LOADK                            R4 K3 ["AnimationRigData"]
       22 MOVE                             R5 R2
       23 CALL                             R3 2 1
       24 MOVE                             R6 R1
       25 NAMECALL                         R4 R3 K9 ["LoadFromModel"]
       27 CALL                             R4 2 1
       28 JUMPIF                           R4 ; [+4]
       29 NAMECALL                         R5 R3 K5 ["Destroy"]
       31 CALL                             R5 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R6 R1 K10 ["Name"]
       35 LOADK                            R7 K3 ["AnimationRigData"]
       36 CONCAT                           R5 R6 R7
       37 SETTABLEKS                       R5 R3 K10 ["Name"]
       39 GETTABLEKS                       R5 R0 K11 ["Metadata"]
       41 SETTABLEKS                       R3 R5 K12 ["AnimationRig"]
       43 RETURN                           R0 0
       44 LOADK                            R5 K13 ["Humanoid"]
       45 NAMECALL                         R3 R1 K14 ["FindFirstChildOfClass"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K15 ["isR15Humanoid"]
       51 MOVE                             R5 R1
       52 CALL                             R4 1 1
       53 JUMPIFNOT                        R4 ; [+24]
       54 GETIMPORT                        R4 K8 [Instance.new]
       56 LOADK                            R5 K3 ["AnimationRigData"]
       57 MOVE                             R6 R2
       58 CALL                             R4 2 1
       59 MOVE                             R7 R3
       60 NAMECALL                         R5 R4 K16 ["LoadFromHumanoid"]
       62 CALL                             R5 2 1
       63 JUMPIF                           R5 ; [+4]
       64 NAMECALL                         R6 R4 K5 ["Destroy"]
       66 CALL                             R6 1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R7 R1 K10 ["Name"]
       70 LOADK                            R8 K3 ["AnimationRigData"]
       71 CONCAT                           R6 R7 R8
       72 SETTABLEKS                       R6 R4 K10 ["Name"]
       74 GETTABLEKS                       R6 R0 K11 ["Metadata"]
       76 SETTABLEKS                       R4 R6 K12 ["AnimationRig"]
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ServerStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AnimationClipEditor"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K10 ["AnimationClipEditorRemoveThumbnailing"]
       28 LOADB                            R7 0
       29 NAMECALL                         R4 R4 K11 ["DefineFastFlag"]
       31 CALL                             R4 3 1
       32 GETIMPORT                        R5 K13 [require]
       34 GETTABLEKS                       R7 R3 K14 ["LuaFlags"]
       36 GETTABLEKS                       R6 R7 K15 ["GetFFlagEngineAnimator"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K1 [game]
       41 LOADK                            R8 K16 ["AnimRigLoadFromModel"]
       42 LOADB                            R9 0
       43 NAMECALL                         R6 R6 K11 ["DefineFastFlag"]
       45 CALL                             R6 3 1
       46 GETIMPORT                        R7 K1 [game]
       48 LOADK                            R9 K17 ["ACESimulatedAnimationConstraints"]
       49 LOADB                            R10 0
       50 NAMECALL                         R7 R7 K11 ["DefineFastFlag"]
       52 CALL                             R7 3 1
       53 GETIMPORT                        R8 K13 [require]
       55 GETTABLEKS                       R10 R3 K18 ["Packages"]
       57 GETTABLEKS                       R9 R10 K19 ["Thumbnailing"]
       59 CALL                             R8 1 1
       60 JUMPIFNOT                        R4 ; [+10]
       61 GETIMPORT                        R9 K13 [require]
       63 GETTABLEKS                       R12 R3 K20 ["Src"]
       65 GETTABLEKS                       R11 R12 K21 ["Util"]
       67 GETTABLEKS                       R10 R11 K22 ["CharacterUtility"]
       69 CALL                             R9 1 1
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R9 R8 K22 ["CharacterUtility"]
       73 JUMPIFNOT                        R4 ; [+10]
       74 GETIMPORT                        R10 K13 [require]
       76 GETTABLEKS                       R13 R3 K20 ["Src"]
       78 GETTABLEKS                       R12 R13 K21 ["Util"]
       80 GETTABLEKS                       R11 R12 K23 ["CFrameUtility"]
       82 CALL                             R10 1 1
       83 JUMP                             ; [+2]
       84 GETTABLEKS                       R10 R8 K23 ["CFrameUtility"]
       86 GETIMPORT                        R11 K13 [require]
       88 GETTABLEKS                       R14 R3 K20 ["Src"]
       90 GETTABLEKS                       R13 R14 K21 ["Util"]
       92 GETTABLEKS                       R12 R13 K24 ["KeyframeUtils"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K13 [require]
       97 GETTABLEKS                       R15 R3 K20 ["Src"]
       99 GETTABLEKS                       R14 R15 K21 ["Util"]
      101 GETTABLEKS                       R13 R14 K25 ["RigInfo"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K13 [require]
      106 GETTABLEKS                       R16 R3 K20 ["Src"]
      108 GETTABLEKS                       R15 R16 K21 ["Util"]
      110 GETTABLEKS                       R14 R15 K26 ["Constants"]
      112 CALL                             R13 1 1
      113 NEWTABLE                         R14 16 0
      115 DUPCLOSURE                       R15 K27 [PROTO_0]
      116 CAPTURE                          VAL R12
      117 SETTABLEKS                       R15 R14 K28 ["canUseFaceControlsEditor"]
      119 DUPCLOSURE                       R15 K29 [PROTO_1]
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R13
      122 SETTABLEKS                       R15 R14 K30 ["getJoints"]
      124 DUPCLOSURE                       R15 K31 [PROTO_2]
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R13
      128 SETTABLEKS                       R15 R14 K32 ["resetAllFacsValuesInFaceControls"]
      130 MOVE                             R15 R5
      131 CALL                             R15 0 1
      132 JUMPIF                           R15 ; [+7]
      133 DUPCLOSURE                       R15 K33 [PROTO_3]
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R15 R14 K34 ["stepRigAnimation"]
      140 DUPCLOSURE                       R15 K35 [PROTO_4]
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R15 R14 K36 ["clearPose"]
      147 DUPCLOSURE                       R15 K37 [PROTO_5]
      148 CAPTURE                          VAL R12
      149 DUPCLOSURE                       R16 K38 [PROTO_7]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R12
      152 SETTABLEKS                       R16 R14 K39 ["updateSimulatedAnimConstraintParts"]
      154 DUPCLOSURE                       R16 K40 [PROTO_8]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R13
      157 SETTABLEKS                       R16 R14 K41 ["findOrCreateServerAnimSaves"]
      159 DUPCLOSURE                       R16 K42 [PROTO_9]
      160 CAPTURE                          VAL R14
      161 SETTABLEKS                       R16 R14 K43 ["getAnimSavesFolder"]
      163 DUPCLOSURE                       R16 K44 [PROTO_11]
      164 CAPTURE                          VAL R14
      165 SETTABLEKS                       R16 R14 K45 ["getAnimSaves"]
      167 DUPCLOSURE                       R16 K46 [PROTO_12]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R12
      170 SETTABLEKS                       R16 R14 K47 ["focusCamera"]
      172 DUPCLOSURE                       R16 K48 [PROTO_13]
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R9
      177 SETTABLEKS                       R16 R14 K49 ["focusCameraOnFace"]
      179 DUPCLOSURE                       R16 K50 [PROTO_14]
      180 CAPTURE                          VAL R12
      181 SETTABLEKS                       R16 R14 K51 ["resetAnimator"]
      183 DUPCLOSURE                       R16 K52 [PROTO_15]
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R12
      186 SETTABLEKS                       R16 R14 K53 ["addAnimationRigToAnimationClip"]
      188 RETURN                           R14 1
