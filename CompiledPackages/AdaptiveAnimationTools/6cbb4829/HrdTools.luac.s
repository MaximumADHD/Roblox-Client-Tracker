PROTO_0:
        0 NEWTABLE                         R0 0 5
        2 NEWTABLE                         R1 0 3
        4 GETIMPORT                        R2 K3 [Enum.RigLabel.Thumb1]
        6 GETIMPORT                        R3 K5 [Enum.RigLabel.Thumb2]
        8 GETIMPORT                        R4 K7 [Enum.RigLabel.Thumb3]
       10 SETLIST                          R1 R2 3 [1]
       12 NEWTABLE                         R2 0 3
       14 GETIMPORT                        R3 K9 [Enum.RigLabel.Index1]
       16 GETIMPORT                        R4 K11 [Enum.RigLabel.Index2]
       18 GETIMPORT                        R5 K13 [Enum.RigLabel.Index3]
       20 SETLIST                          R2 R3 3 [1]
       22 NEWTABLE                         R3 0 3
       24 GETIMPORT                        R4 K15 [Enum.RigLabel.Middle1]
       26 GETIMPORT                        R5 K17 [Enum.RigLabel.Middle2]
       28 GETIMPORT                        R6 K19 [Enum.RigLabel.Middle3]
       30 SETLIST                          R3 R4 3 [1]
       32 NEWTABLE                         R4 0 3
       34 GETIMPORT                        R5 K21 [Enum.RigLabel.Ring1]
       36 GETIMPORT                        R6 K23 [Enum.RigLabel.Ring2]
       38 GETIMPORT                        R7 K25 [Enum.RigLabel.Ring3]
       40 SETLIST                          R4 R5 3 [1]
       42 NEWTABLE                         R5 0 3
       44 GETIMPORT                        R6 K27 [Enum.RigLabel.Pinky1]
       46 GETIMPORT                        R7 K29 [Enum.RigLabel.Pinky2]
       48 GETIMPORT                        R8 K31 [Enum.RigLabel.Pinky3]
       50 SETLIST                          R5 R6 3 [1]
       52 SETLIST                          R0 R1 5 [1]
       54 MOVE                             R1 R0
       55 LOADNIL                          R2
       56 LOADNIL                          R3
       57 FORGPREP                         R1
       58 GETUPVAL                         R6 0
       59 GETTABLEN                        R7 R5 1
       60 GETTABLEN                        R8 R5 2
       61 SETTABLE                         R8 R6 R7
       62 GETUPVAL                         R6 0
       63 GETTABLEN                        R7 R5 2
       64 GETTABLEN                        R8 R5 3
       65 SETTABLE                         R8 R6 R7
       66 GETUPVAL                         R6 0
       67 GETTABLEN                        R7 R5 3
       68 LOADNIL                          R8
       69 SETTABLE                         R8 R6 R7
       70 GETUPVAL                         R7 1
       71 GETTABLEN                        R8 R5 1
       72 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       74 GETIMPORT                        R6 K34 [table.insert]
       76 CALL                             R6 2 0
       77 GETUPVAL                         R7 1
       78 GETTABLEN                        R8 R5 2
       79 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       81 GETIMPORT                        R6 K34 [table.insert]
       83 CALL                             R6 2 0
       84 GETUPVAL                         R7 1
       85 GETTABLEN                        R8 R5 3
       86 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       88 GETIMPORT                        R6 K34 [table.insert]
       90 CALL                             R6 2 0
       91 FORGLOOP                         R1 2 ; [-34]
       93 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADNIL                          R9
        8 NAMECALL                         R6 R0 K1 ["SetJoint"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Animator"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R1 3 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 LOADN                            R4 0
        7 NAMECALL                         R2 R1 K2 ["StepAnimations"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Motor6D"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+13]
        9 LOADK                            R8 K3 ["Bone"]
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+8]
       14 LOADK                            R8 K4 ["AnimationConstraint"]
       15 NAMECALL                         R6 R5 K2 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+7]
       19 GETUPVAL                         R6 0
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+4]
       22 GETIMPORT                        R6 K7 [CFrame.identity]
       24 SETTABLEKS                       R6 R5 K8 ["Transform"]
       26 FORGLOOP                         R1 2 ; [-23]
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K2 [CFrame.fromOrientation]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [{-1, 0, 0}]
        7 MUL                              R2 R3 R4
        8 GETIMPORT                        R4 K2 [CFrame.fromOrientation]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 LOADK                            R7 K4 [0]
       13 CALL                             R4 3 1
       14 LOADK                            R5 K5 [{1, 0, 0}]
       15 MUL                              R3 R4 R5
       16 NEWTABLE                         R4 8 0
       18 GETIMPORT                        R5 K9 [Enum.RigLabel.LeftShoulder]
       20 SETTABLE                         R2 R4 R5
       21 GETIMPORT                        R5 K11 [Enum.RigLabel.LeftElbow]
       23 SETTABLE                         R2 R4 R5
       24 GETIMPORT                        R5 K13 [Enum.RigLabel.RightShoulder]
       26 SETTABLE                         R3 R4 R5
       27 GETIMPORT                        R5 K15 [Enum.RigLabel.RightElbow]
       29 SETTABLE                         R3 R4 R5
       30 GETIMPORT                        R5 K17 [Enum.RigLabel.LeftHip]
       32 LOADK                            R6 K18 [{0, -1, 0}]
       33 SETTABLE                         R6 R4 R5
       34 GETIMPORT                        R5 K20 [Enum.RigLabel.LeftKnee]
       36 LOADK                            R6 K18 [{0, -1, 0}]
       37 SETTABLE                         R6 R4 R5
       38 GETIMPORT                        R5 K22 [Enum.RigLabel.RightHip]
       40 LOADK                            R6 K18 [{0, -1, 0}]
       41 SETTABLE                         R6 R4 R5
       42 GETIMPORT                        R5 K24 [Enum.RigLabel.RightKnee]
       44 LOADK                            R6 K18 [{0, -1, 0}]
       45 SETTABLE                         R6 R4 R5
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K25 ["clearTransforms"]
       49 MOVE                             R6 R1
       50 CALL                             R5 1 0
       51 GETIMPORT                        R5 K27 [pcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R1
       56 CALL                             R5 1 0
       57 LOADB                            R5 0
       58 GETUPVAL                         R6 1
       59 CALL                             R6 0 1
       60 JUMPIFNOT                        R6 ; [+18]
       61 GETIMPORT                        R8 K9 [Enum.RigLabel.LeftShoulder]
       63 NAMECALL                         R6 R0 K28 ["GetJoint"]
       65 CALL                             R6 2 1
       66 JUMPIF                           R6 ; [+5]
       67 GETIMPORT                        R8 K13 [Enum.RigLabel.RightShoulder]
       69 NAMECALL                         R6 R0 K28 ["GetJoint"]
       71 CALL                             R6 2 1
       72 MOVE                             R7 R6
       73 JUMPIFNOT                        R7 ; [+4]
       74 LOADK                            R9 K29 ["AnimationConstraint"]
       75 NAMECALL                         R7 R6 K30 ["IsA"]
       77 CALL                             R7 2 1
       78 MOVE                             R5 R7
       79 JUMPIFNOT                        R5 ; [+88]
       80 NEWTABLE                         R6 0 0
       82 GETUPVAL                         R7 2
       83 LOADNIL                          R8
       84 LOADNIL                          R9
       85 FORGPREP                         R7
       86 GETUPVAL                         R13 3
       87 GETTABLE                         R12 R13 R11
       88 JUMPIFNOT                        R12 ; [+34]
       89 MOVE                             R15 R11
       90 NAMECALL                         R13 R0 K28 ["GetJoint"]
       92 CALL                             R13 2 1
       93 MOVE                             R16 R12
       94 NAMECALL                         R14 R0 K28 ["GetJoint"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R13 ; [+25]
       98 JUMPIFNOT                        R14 ; [+24]
       99 GETUPVAL                         R15 4
      100 GETTABLEKS                       R15 R15 K31 ["getJointPosition"]
      102 MOVE                             R16 R13
      103 CALL                             R15 1 1
      104 GETUPVAL                         R16 4
      105 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
      107 MOVE                             R17 R14
      108 CALL                             R16 1 1
      109 SUB                              R17 R16 R15
      110 GETTABLEKS                       R18 R17 K32 ["Magnitude"]
      112 LOADK                            R19 K33 [1E-06]
      113 JUMPIFNOTLT                      R19 R18 ; [+9]
      115 DUPTABLE                         R18 K36 [{"bindDir", "joint"}]
      116 GETTABLEKS                       R19 R17 K37 ["Unit"]
      118 SETTABLEKS                       R19 R18 K34 ["bindDir"]
      120 SETTABLEKS                       R13 R18 K35 ["joint"]
      122 SETTABLE                         R18 R6 R11
      123 FORGLOOP                         R7 2 ; [-38]
      125 NEWTABLE                         R7 0 0
      127 GETUPVAL                         R8 2
      128 LOADNIL                          R9
      129 LOADNIL                          R10
      130 FORGPREP                         R8
      131 GETTABLE                         R13 R4 R12
      132 JUMPIFNOT                        R13 ; [+32]
      133 GETTABLE                         R14 R6 R12
      134 JUMPIFNOT                        R14 ; [+30]
      135 GETTABLEKS                       R15 R14 K35 ["joint"]
      137 GETTABLEKS                       R16 R14 K34 ["bindDir"]
      139 LOADNIL                          R17
      140 GETUPVAL                         R18 3
      141 LOADNIL                          R19
      142 LOADNIL                          R20
      143 FORGPREP                         R18
      144 JUMPIFNOTEQ                      R22 R12 ; [+3]
      146 MOVE                             R17 R21
      147 JUMP                             ; [+2]
      148 FORGLOOP                         R18 2 ; [-5]
      150 JUMPIFNOT                        R17 ; [+2]
      151 GETTABLE                         R18 R7 R17
      152 JUMPIF                           R18 ; [+2]
      153 GETIMPORT                        R18 K39 [CFrame.identity]
      155 MUL                              R19 R18 R16
      156 GETIMPORT                        R20 K41 [CFrame.fromRotationBetweenVectors]
      158 MOVE                             R21 R19
      159 MOVE                             R22 R13
      160 CALL                             R20 2 1
      161 MUL                              R21 R20 R18
      162 SETTABLE                         R21 R7 R12
      163 SETTABLEKS                       R20 R15 K42 ["Transform"]
      165 FORGLOOP                         R8 2 ; [-35]
      167 RETURN                           R0 0
      168 GETUPVAL                         R6 4
      169 GETTABLEKS                       R6 R6 K43 ["bodyRigLabels"]
      171 LOADNIL                          R7
      172 LOADNIL                          R8
      173 FORGPREP                         R6
      174 GETUPVAL                         R12 3
      175 GETTABLE                         R11 R12 R10
      176 MOVE                             R12 R4
      177 JUMPIFNOT                        R12 ; [+1]
      178 GETTABLE                         R12 R4 R10
      179 JUMPIFNOT                        R11 ; [+57]
      180 JUMPIFNOT                        R12 ; [+56]
      181 MOVE                             R17 R10
      182 NAMECALL                         R15 R0 K28 ["GetJoint"]
      184 CALL                             R15 2 1
      185 MOVE                             R13 R15
      186 MOVE                             R16 R11
      187 NAMECALL                         R14 R0 K28 ["GetJoint"]
      189 CALL                             R14 2 1
      190 JUMPIFNOT                        R13 ; [+46]
      191 JUMPIFNOT                        R14 ; [+45]
      192 GETUPVAL                         R15 4
      193 GETTABLEKS                       R15 R15 K31 ["getJointPosition"]
      195 MOVE                             R16 R13
      196 CALL                             R15 1 1
      197 GETUPVAL                         R16 4
      198 GETTABLEKS                       R16 R16 K31 ["getJointPosition"]
      200 MOVE                             R17 R14
      201 CALL                             R16 1 1
      202 SUB                              R17 R16 R15
      203 GETTABLEKS                       R18 R17 K32 ["Magnitude"]
      205 LOADK                            R19 K33 [1E-06]
      206 JUMPIFLT                         R18 R19 ; [+30]
      208 GETTABLEKS                       R18 R12 K32 ["Magnitude"]
      210 LOADK                            R19 K33 [1E-06]
      211 JUMPIFLT                         R18 R19 ; [+25]
      213 GETUPVAL                         R18 4
      214 GETTABLEKS                       R18 R18 K44 ["getGlobalCoordinateFrame"]
      216 MOVE                             R19 R13
      217 CALL                             R18 1 1
      218 GETIMPORT                        R20 K41 [CFrame.fromRotationBetweenVectors]
      220 MOVE                             R21 R17
      221 MOVE                             R22 R12
      222 CALL                             R20 2 1
      223 GETTABLEKS                       R21 R18 K45 ["Rotation"]
      225 MUL                              R19 R20 R21
      226 GETUPVAL                         R20 4
      227 GETTABLEKS                       R20 R20 K46 ["setGlobalCoordinateFrame"]
      229 MOVE                             R21 R13
      230 GETIMPORT                        R23 K48 [CFrame.new]
      232 GETTABLEKS                       R24 R18 K49 ["Position"]
      234 CALL                             R23 1 1
      235 MUL                              R22 R23 R19
      236 CALL                             R20 2 0
      237 FORGLOOP                         R6 2 ; [-64]
      239 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.RigLabel.Thumb1]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R2 R0 R1
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K5 [Enum.RigLabel.Thumb2]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R0 0
       11 GETIMPORT                        R1 K7 [Enum.RigLabel.Index1]
       13 GETUPVAL                         R2 2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K9 [Enum.RigLabel.Index2]
       18 GETUPVAL                         R2 2
       19 SETTABLE                         R2 R0 R1
       20 GETUPVAL                         R0 0
       21 GETIMPORT                        R1 K11 [Enum.RigLabel.Middle1]
       23 GETUPVAL                         R2 2
       24 SETTABLE                         R2 R0 R1
       25 GETUPVAL                         R0 0
       26 GETIMPORT                        R1 K13 [Enum.RigLabel.Middle2]
       28 GETUPVAL                         R2 2
       29 SETTABLE                         R2 R0 R1
       30 GETUPVAL                         R0 0
       31 GETIMPORT                        R1 K15 [Enum.RigLabel.Ring1]
       33 GETUPVAL                         R2 2
       34 SETTABLE                         R2 R0 R1
       35 GETUPVAL                         R0 0
       36 GETIMPORT                        R1 K17 [Enum.RigLabel.Ring2]
       38 GETUPVAL                         R2 2
       39 SETTABLE                         R2 R0 R1
       40 GETUPVAL                         R0 0
       41 GETIMPORT                        R1 K19 [Enum.RigLabel.Pinky1]
       43 GETUPVAL                         R2 2
       44 SETTABLE                         R2 R0 R1
       45 GETUPVAL                         R0 0
       46 GETIMPORT                        R1 K21 [Enum.RigLabel.Pinky2]
       48 GETUPVAL                         R2 2
       49 SETTABLE                         R2 R0 R1
       50 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 FASTCALL1                        MATH_RAD R3 ; [+2]
        5 GETIMPORT                        R2 K2 [math.rad]
        7 CALL                             R2 1 1
        8 FASTCALL1                        MATH_COS R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K4 [math.cos]
       12 CALL                             R5 1 1
       13 MUL                              R4 R5 R0
       14 FASTCALL1                        MATH_SIN R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K6 [math.sin]
       18 CALL                             R6 1 1
       19 LOADK                            R7 K7 [{0, 0, 1}]
       20 MUL                              R5 R6 R7
       21 SUB                              R3 R4 R5
       22 GETTABLEKS                       R3 R3 K8 ["Unit"]
       24 GETIMPORT                        R4 K10 [pcall]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CALL                             R4 1 0
       31 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["Side"]
        2 GETIMPORT                        R5 K4 [Enum.DigitsRigDescriptionSide.Left]
        4 JUMPIFNOTEQ                      R4 R5 ; [+4]
        6 GETIMPORT                        R3 K7 [Enum.RigLabel.LeftWrist]
        8 JUMP                             ; [+2]
        9 GETIMPORT                        R3 K9 [Enum.RigLabel.RightWrist]
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R1 K10 ["GetJoint"]
       14 CALL                             R4 2 1
       15 GETIMPORT                        R7 K12 [Enum.RigLabel.Thumb1]
       17 NAMECALL                         R5 R0 K10 ["GetJoint"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R4 ; [+1]
       21 JUMPIF                           R5 ; [+3]
       22 GETIMPORT                        R6 K15 [CFrame.identity]
       24 RETURN                           R6 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K16 ["getJointPosition"]
       28 MOVE                             R7 R4
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K16 ["getJointPosition"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 NEWTABLE                         R8 0 4
       37 GETIMPORT                        R9 K18 [Enum.RigLabel.Index1]
       39 GETIMPORT                        R10 K20 [Enum.RigLabel.Middle1]
       41 GETIMPORT                        R11 K22 [Enum.RigLabel.Ring1]
       43 GETIMPORT                        R12 K24 [Enum.RigLabel.Pinky1]
       45 SETLIST                          R8 R9 4 [1]
       47 LOADK                            R9 K25 [{0, 0, 0}]
       48 LOADN                            R10 0
       49 MOVE                             R11 R8
       50 LOADNIL                          R12
       51 LOADNIL                          R13
       52 FORGPREP                         R11
       53 MOVE                             R18 R15
       54 NAMECALL                         R16 R0 K10 ["GetJoint"]
       56 CALL                             R16 2 1
       57 JUMPIFNOT                        R16 ; [+15]
       58 GETUPVAL                         R18 0
       59 GETTABLEKS                       R18 R18 K16 ["getJointPosition"]
       61 MOVE                             R19 R16
       62 CALL                             R18 1 1
       63 SUB                              R17 R18 R6
       64 GETTABLEKS                       R18 R17 K26 ["Magnitude"]
       66 LOADK                            R19 K27 [1E-06]
       67 JUMPIFNOTLT                      R19 R18 ; [+5]
       69 GETTABLEKS                       R18 R17 K28 ["Unit"]
       71 ADD                              R9 R9 R18
       72 ADDK                             R10 R10 K29 [1]
       73 FORGLOOP                         R11 2 ; [-21]
       75 GETIMPORT                        R11 K15 [CFrame.identity]
       77 LOADN                            R12 0
       78 JUMPIFNOTLT                      R12 R10 ; [+13]
       80 GETTABLEKS                       R12 R9 K26 ["Magnitude"]
       82 LOADK                            R13 K27 [1E-06]
       83 JUMPIFNOTLT                      R13 R12 ; [+8]
       85 GETIMPORT                        R12 K31 [CFrame.fromRotationBetweenVectors]
       87 GETTABLEKS                       R13 R9 K28 ["Unit"]
       89 MOVE                             R14 R2
       90 CALL                             R12 2 1
       91 MOVE                             R11 R12
       92 GETIMPORT                        R14 K18 [Enum.RigLabel.Index1]
       94 NAMECALL                         R12 R0 K10 ["GetJoint"]
       96 CALL                             R12 2 1
       97 GETIMPORT                        R15 K24 [Enum.RigLabel.Pinky1]
       99 NAMECALL                         R13 R0 K10 ["GetJoint"]
      101 CALL                             R13 2 1
      102 LOADNIL                          R14
      103 JUMPIFNOT                        R12 ; [+13]
      104 JUMPIFNOT                        R13 ; [+12]
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R15 R15 K16 ["getJointPosition"]
      108 MOVE                             R16 R12
      109 CALL                             R15 1 1
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K16 ["getJointPosition"]
      113 MOVE                             R17 R13
      114 CALL                             R16 1 1
      115 SUB                              R14 R15 R16
      116 JUMP                             ; [+1]
      117 SUB                              R14 R7 R6
      118 GETIMPORT                        R15 K15 [CFrame.identity]
      120 JUMPIFNOT                        R14 ; [+52]
      121 GETTABLEKS                       R16 R14 K26 ["Magnitude"]
      123 LOADK                            R17 K27 [1E-06]
      124 JUMPIFNOTLT                      R17 R16 ; [+48]
      126 MUL                              R16 R11 R14
      127 MOVE                             R21 R2
      128 NAMECALL                         R19 R16 K32 ["Dot"]
      130 CALL                             R19 2 1
      131 MUL                              R18 R19 R2
      132 SUB                              R17 R16 R18
      133 GETTABLEKS                       R18 R17 K26 ["Magnitude"]
      135 LOADK                            R19 K27 [1E-06]
      136 JUMPIFNOTLT                      R19 R18 ; [+36]
      138 GETTABLEKS                       R18 R17 K28 ["Unit"]
      140 LOADK                            R21 K33 [{0, 0, -1}]
      141 NAMECALL                         R19 R18 K32 ["Dot"]
      143 CALL                             R19 2 1
      144 LOADK                            R22 K33 [{0, 0, -1}]
      145 NAMECALL                         R20 R18 K34 ["Cross"]
      147 CALL                             R20 2 1
      148 MOVE                             R22 R2
      149 NAMECALL                         R20 R20 K32 ["Dot"]
      151 CALL                             R20 2 1
      152 FASTCALL2                        MATH_ATAN2 R20 R19 ; [+5]
      154 MOVE                             R22 R20
      155 MOVE                             R23 R19
      156 GETIMPORT                        R21 K37 [math.atan2]
      158 CALL                             R21 2 1
      159 FASTCALL1                        MATH_ABS R21 ; [+3]
      160 MOVE                             R23 R21
      161 GETIMPORT                        R22 K39 [math.abs]
      163 CALL                             R22 1 1
      164 LOADK                            R23 K27 [1E-06]
      165 JUMPIFNOTLT                      R23 R22 ; [+7]
      167 GETIMPORT                        R22 K41 [CFrame.fromAxisAngle]
      169 MOVE                             R23 R2
      170 MOVE                             R24 R21
      171 CALL                             R22 2 1
      172 MOVE                             R15 R22
      173 MUL                              R16 R15 R11
      174 GETIMPORT                        R17 K15 [CFrame.identity]
      176 JUMPIFNOTEQ                      R16 R17 ; [+4]
      178 GETIMPORT                        R17 K15 [CFrame.identity]
      180 RETURN                           R17 1
      181 GETUPVAL                         R17 0
      182 GETTABLEKS                       R17 R17 K42 ["getGlobalCoordinateFrame"]
      184 MOVE                             R18 R4
      185 CALL                             R17 1 1
      186 GETIMPORT                        R20 K44 [CFrame.new]
      188 GETTABLEKS                       R21 R17 K45 ["Position"]
      190 CALL                             R20 1 1
      191 MUL                              R19 R20 R16
      192 GETTABLEKS                       R20 R17 K46 ["Rotation"]
      194 MUL                              R18 R19 R20
      195 GETUPVAL                         R19 0
      196 GETTABLEKS                       R19 R19 K47 ["setGlobalCoordinateFrame"]
      198 MOVE                             R20 R4
      199 MOVE                             R21 R18
      200 CALL                             R19 2 0
      201 RETURN                           R16 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StepAnimations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["handRigLabels"]
        3 LENGTH                           R3 R4
        4 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K2 ["Side"]
        9 GETIMPORT                        R4 K6 [Enum.DigitsRigDescriptionSide.Left]
       11 JUMPIFEQ                         R3 R4 ; [+6]
       13 GETIMPORT                        R4 K8 [Enum.DigitsRigDescriptionSide.Right]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 RETURN                           R0 0
       18 GETIMPORT                        R5 K6 [Enum.DigitsRigDescriptionSide.Left]
       20 JUMPIFNOTEQ                      R3 R5 ; [+3]
       22 LOADK                            R4 K9 [{-1, 0, 0}]
       23 JUMP                             ; [+1]
       24 LOADK                            R4 K10 [{1, 0, 0}]
       25 GETUPVAL                         R5 1
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K12 [pcall]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CALL                             R6 1 0
       34 GETUPVAL                         R6 3
       35 MOVE                             R7 R0
       36 MOVE                             R8 R1
       37 MOVE                             R9 R4
       38 CALL                             R6 3 1
       39 GETIMPORT                        R7 K12 [pcall]
       41 NEWCLOSURE                       R8 P1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R2
       44 CALL                             R7 1 0
       45 LOADB                            R7 0
       46 GETUPVAL                         R8 4
       47 CALL                             R8 0 1
       48 JUMPIFNOT                        R8 ; [+24]
       49 GETIMPORT                        R10 K15 [Enum.RigLabel.Thumb1]
       51 NAMECALL                         R8 R0 K16 ["GetJoint"]
       53 CALL                             R8 2 1
       54 JUMPIF                           R8 ; [+11]
       55 GETIMPORT                        R10 K18 [Enum.RigLabel.Index1]
       57 NAMECALL                         R8 R0 K16 ["GetJoint"]
       59 CALL                             R8 2 1
       60 JUMPIF                           R8 ; [+5]
       61 GETIMPORT                        R10 K20 [Enum.RigLabel.Middle1]
       63 NAMECALL                         R8 R0 K16 ["GetJoint"]
       65 CALL                             R8 2 1
       66 MOVE                             R9 R8
       67 JUMPIFNOT                        R9 ; [+4]
       68 LOADK                            R11 K21 ["AnimationConstraint"]
       69 NAMECALL                         R9 R8 K22 ["IsA"]
       71 CALL                             R9 2 1
       72 MOVE                             R7 R9
       73 JUMPIFNOT                        R7 ; [+90]
       74 NEWTABLE                         R8 0 0
       76 GETUPVAL                         R9 5
       77 LOADNIL                          R10
       78 LOADNIL                          R11
       79 FORGPREP                         R9
       80 GETUPVAL                         R15 6
       81 GETTABLE                         R14 R15 R13
       82 JUMPIFNOT                        R14 ; [+34]
       83 MOVE                             R17 R13
       84 NAMECALL                         R15 R0 K16 ["GetJoint"]
       86 CALL                             R15 2 1
       87 MOVE                             R18 R14
       88 NAMECALL                         R16 R0 K16 ["GetJoint"]
       90 CALL                             R16 2 1
       91 JUMPIFNOT                        R15 ; [+25]
       92 JUMPIFNOT                        R16 ; [+24]
       93 GETUPVAL                         R17 0
       94 GETTABLEKS                       R17 R17 K23 ["getJointPosition"]
       96 MOVE                             R18 R15
       97 CALL                             R17 1 1
       98 GETUPVAL                         R18 0
       99 GETTABLEKS                       R18 R18 K23 ["getJointPosition"]
      101 MOVE                             R19 R16
      102 CALL                             R18 1 1
      103 SUB                              R19 R18 R17
      104 GETTABLEKS                       R20 R19 K24 ["Magnitude"]
      106 LOADK                            R21 K25 [1E-06]
      107 JUMPIFNOTLT                      R21 R20 ; [+9]
      109 DUPTABLE                         R20 K28 [{"bindDir", "joint"}]
      110 GETTABLEKS                       R21 R19 K29 ["Unit"]
      112 SETTABLEKS                       R21 R20 K26 ["bindDir"]
      114 SETTABLEKS                       R15 R20 K27 ["joint"]
      116 SETTABLE                         R20 R8 R13
      117 FORGLOOP                         R9 2 ; [-38]
      119 NEWTABLE                         R9 0 0
      121 GETUPVAL                         R10 5
      122 LOADNIL                          R11
      123 LOADNIL                          R12
      124 FORGPREP                         R10
      125 GETTABLE                         R15 R5 R14
      126 JUMPIFNOT                        R15 ; [+34]
      127 GETTABLE                         R16 R8 R14
      128 JUMPIFNOT                        R16 ; [+32]
      129 LOADNIL                          R17
      130 GETUPVAL                         R18 6
      131 LOADNIL                          R19
      132 LOADNIL                          R20
      133 FORGPREP                         R18
      134 JUMPIFNOTEQ                      R22 R14 ; [+3]
      136 MOVE                             R17 R21
      137 JUMP                             ; [+2]
      138 FORGLOOP                         R18 2 ; [-5]
      140 JUMPIFNOT                        R17 ; [+5]
      141 GETTABLE                         R18 R9 R17
      142 JUMPIF                           R18 ; [+4]
      143 GETIMPORT                        R18 K32 [CFrame.identity]
      145 JUMP                             ; [+1]
      146 MOVE                             R18 R6
      147 GETTABLEKS                       R20 R16 K26 ["bindDir"]
      149 MUL                              R19 R18 R20
      150 GETIMPORT                        R20 K34 [CFrame.fromRotationBetweenVectors]
      152 MOVE                             R21 R19
      153 MOVE                             R22 R15
      154 CALL                             R20 2 1
      155 MUL                              R21 R20 R18
      156 SETTABLE                         R21 R9 R14
      157 GETTABLEKS                       R21 R16 K27 ["joint"]
      159 SETTABLEKS                       R20 R21 K35 ["Transform"]
      161 FORGLOOP                         R10 2 ; [-37]
      163 RETURN                           R0 0
      164 NEWTABLE                         R8 0 0
      166 GETUPVAL                         R9 5
      167 LOADNIL                          R10
      168 LOADNIL                          R11
      169 FORGPREP                         R9
      170 MOVE                             R16 R13
      171 NAMECALL                         R14 R0 K16 ["GetJoint"]
      173 CALL                             R14 2 1
      174 JUMPIFNOT                        R14 ; [+17]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R15 R15 K36 ["getGlobalCoordinateFrame"]
      178 MOVE                             R16 R14
      179 CALL                             R15 1 1
      180 DUPTABLE                         R16 K39 [{"pos", "rot", "joint"}]
      181 GETTABLEKS                       R17 R15 K40 ["Position"]
      183 SETTABLEKS                       R17 R16 K37 ["pos"]
      185 GETTABLEKS                       R17 R15 K41 ["Rotation"]
      187 SETTABLEKS                       R17 R16 K38 ["rot"]
      189 SETTABLEKS                       R14 R16 K27 ["joint"]
      191 SETTABLE                         R16 R8 R13
      192 FORGLOOP                         R9 2 ; [-23]
      194 NEWTABLE                         R9 0 0
      196 NEWTABLE                         R10 0 0
      198 GETUPVAL                         R11 5
      199 LOADNIL                          R12
      200 LOADNIL                          R13
      201 FORGPREP                         R11
      202 GETUPVAL                         R17 6
      203 GETTABLE                         R16 R17 R15
      204 GETTABLE                         R17 R5 R15
      205 JUMPIFNOT                        R16 ; [+106]
      206 JUMPIFNOT                        R17 ; [+105]
      207 GETTABLE                         R18 R8 R15
      208 GETTABLE                         R19 R8 R16
      209 JUMPIFNOT                        R18 ; [+102]
      210 JUMPIFNOT                        R19 ; [+101]
      211 LOADNIL                          R20
      212 GETUPVAL                         R21 6
      213 LOADNIL                          R22
      214 LOADNIL                          R23
      215 FORGPREP                         R21
      216 JUMPIFNOTEQ                      R25 R15 ; [+3]
      218 MOVE                             R20 R24
      219 JUMP                             ; [+2]
      220 FORGLOOP                         R21 2 ; [-5]
      222 LOADNIL                          R21
      223 LOADNIL                          R22
      224 JUMPIFNOT                        R20 ; [+21]
      225 GETTABLE                         R23 R8 R20
      226 JUMPIFNOT                        R23 ; [+19]
      227 GETTABLE                         R23 R9 R20
      228 JUMPIF                           R23 ; [+2]
      229 GETIMPORT                        R23 K32 [CFrame.identity]
      231 MOVE                             R21 R23
      232 GETTABLE                         R23 R10 R20
      233 JUMPIF                           R23 ; [+3]
      234 GETTABLE                         R23 R8 R20
      235 GETTABLEKS                       R23 R23 K37 ["pos"]
      237 GETTABLEKS                       R25 R18 K37 ["pos"]
      239 GETTABLE                         R26 R8 R20
      240 GETTABLEKS                       R26 R26 K37 ["pos"]
      242 SUB                              R24 R25 R26
      243 MUL                              R25 R21 R24
      244 ADD                              R22 R23 R25
      245 JUMP                             ; [+4]
      246 GETIMPORT                        R21 K32 [CFrame.identity]
      248 GETTABLEKS                       R22 R18 K37 ["pos"]
      250 SETTABLE                         R22 R10 R15
      251 GETTABLEKS                       R24 R19 K37 ["pos"]
      253 GETTABLEKS                       R25 R18 K37 ["pos"]
      255 SUB                              R23 R24 R25
      256 GETTABLEKS                       R24 R23 K24 ["Magnitude"]
      258 LOADK                            R25 K25 [1E-06]
      259 JUMPIFLT                         R24 R25 ; [+52]
      261 GETTABLEKS                       R24 R17 K24 ["Magnitude"]
      263 LOADK                            R25 K25 [1E-06]
      264 JUMPIFLT                         R24 R25 ; [+47]
      266 GETTABLEKS                       R25 R23 K29 ["Unit"]
      268 MUL                              R24 R21 R25
      269 GETIMPORT                        R25 K34 [CFrame.fromRotationBetweenVectors]
      271 MOVE                             R26 R24
      272 MOVE                             R27 R17
      273 CALL                             R25 2 1
      274 MUL                              R26 R25 R21
      275 SETTABLE                         R26 R9 R15
      276 GETTABLEKS                       R26 R18 K27 ["joint"]
      278 LOADK                            R29 K42 ["Bone"]
      279 NAMECALL                         R27 R26 K22 ["IsA"]
      281 CALL                             R27 2 1
      282 JUMPIFNOT                        R27 ; [+14]
      283 GETTABLEKS                       R28 R18 K38 ["rot"]
      285 MUL                              R27 R21 R28
      286 GETTABLEKS                       R29 R26 K35 ["Transform"]
      288 NAMECALL                         R32 R27 K43 ["Inverse"]
      290 CALL                             R32 1 1
      291 MUL                              R31 R32 R25
      292 MUL                              R30 R31 R27
      293 MUL                              R28 R29 R30
      294 SETTABLEKS                       R28 R26 K35 ["Transform"]
      296 JUMP                             ; [+15]
      297 GETIMPORT                        R29 K45 [CFrame.new]
      299 MOVE                             R30 R22
      300 CALL                             R29 1 1
      301 GETTABLE                         R30 R9 R15
      302 MUL                              R28 R29 R30
      303 GETTABLEKS                       R29 R18 K38 ["rot"]
      305 MUL                              R27 R28 R29
      306 GETUPVAL                         R28 0
      307 GETTABLEKS                       R28 R28 K46 ["setGlobalCoordinateFrame"]
      309 MOVE                             R29 R26
      310 MOVE                             R30 R27
      311 CALL                             R28 2 0
      312 FORGLOOP                         R11 2 ; [-111]
      314 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["handRigLabels"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        6 RETURN                           R0 0
        7 NAMECALL                         R2 R0 K2 ["GetChildren"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K3 ["DigitsRigDescription"]
       12 NAMECALL                         R7 R6 K4 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+7]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["enforceTposeForHand"]
       19 MOVE                             R8 R6
       20 MOVE                             R9 R0
       21 MOVE                             R10 R1
       22 CALL                             R7 3 0
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearTposeAdjustmentForHand"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["handRigLabels"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["GetJoint"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+17]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["isValidTJoint"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["getJointTransform"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 MOVE                             R10 R5
       29 MOVE                             R11 R7
       30 NAMECALL                         R8 R0 K5 ["SetTposeAdjustment"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 GETTABLEKS                       R1 R0 K6 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+38]
       38 LOADK                            R4 K7 ["HumanoidRigDescription"]
       39 NAMECALL                         R2 R1 K8 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+33]
       43 GETTABLEKS                       R3 R0 K9 ["Side"]
       45 GETIMPORT                        R4 K13 [Enum.DigitsRigDescriptionSide.Left]
       47 JUMPIFNOTEQ                      R3 R4 ; [+4]
       49 GETIMPORT                        R2 K16 [Enum.RigLabel.LeftWrist]
       51 JUMP                             ; [+2]
       52 GETIMPORT                        R2 K18 [Enum.RigLabel.RightWrist]
       54 MOVE                             R5 R2
       55 NAMECALL                         R3 R1 K2 ["GetJoint"]
       57 CALL                             R3 2 1
       58 JUMPIFNOT                        R3 ; [+17]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K3 ["isValidTJoint"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 JUMPIFNOT                        R4 ; [+11]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K4 ["getJointTransform"]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 1
       70 JUMPIFNOT                        R4 ; [+5]
       71 MOVE                             R7 R2
       72 MOVE                             R8 R4
       73 NAMECALL                         R5 R1 K5 ["SetTposeAdjustment"]
       75 CALL                             R5 3 0
       76 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["bodyRigLabels"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R0 K2 ["GetJoint"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+13]
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R0 K3 ["GetTposeAdjustment"]
       19 CALL                             R8 2 1
       20 JUMPIF                           R8 ; [+2]
       21 GETIMPORT                        R8 K6 [CFrame.identity]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K7 ["setJointTransform"]
       26 MOVE                             R10 R7
       27 MOVE                             R11 R8
       28 CALL                             R9 2 0
       29 FORGLOOP                         R2 2 ; [-19]
       31 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 GETIMPORT                        R9 K3 [CFrame.identity]
        9 NAMECALL                         R6 R0 K4 ["SetTposeAdjustment"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearTposeAdjustment"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["bodyRigLabels"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["GetJoint"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+17]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["isValidTJoint"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["getJointTransform"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 MOVE                             R10 R5
       29 MOVE                             R11 R7
       30 NAMECALL                         R8 R0 K5 ["SetTposeAdjustment"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADK                            R9 K1 [0.02]
        8 NAMECALL                         R6 R0 K2 ["SetJointSize"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 22
        2 LOADK                            R2 K0 [1.2]
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 LOADN                            R5 1
        6 LOADK                            R6 K1 [0.6]
        7 LOADK                            R7 K2 [0.4]
        8 LOADK                            R8 K3 [0.7]
        9 LOADK                            R9 K2 [0.4]
       10 LOADK                            R10 K4 [0.35]
       11 LOADK                            R11 K5 [0.2]
       12 LOADK                            R12 K3 [0.7]
       13 LOADK                            R13 K2 [0.4]
       14 LOADK                            R14 K4 [0.35]
       15 LOADK                            R15 K5 [0.2]
       16 LOADK                            R16 K3 [0.7]
       17 LOADK                            R17 K2 [0.4]
       18 SETLIST                          R1 R2 16 [1]
       20 LOADK                            R2 K6 [0.3]
       21 LOADK                            R3 K7 [0.25]
       22 LOADK                            R4 K3 [0.7]
       23 LOADK                            R5 K2 [0.4]
       24 LOADK                            R6 K6 [0.3]
       25 LOADK                            R7 K7 [0.25]
       26 SETLIST                          R1 R2 6 [17]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K8 ["bodyRigLabels"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 MOVE                             R9 R6
       35 GETTABLE                         R10 R1 R5
       36 NAMECALL                         R7 R0 K9 ["SetJointSize"]
       38 CALL                             R7 3 0
       39 FORGLOOP                         R2 2 ; [-6]
       41 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 LOADK                            R9 K1 [{0, 0, 0}]
        8 NAMECALL                         R6 R0 K2 ["SetJointRangeMin"]
       10 CALL                             R6 3 0
       11 MOVE                             R8 R5
       12 LOADK                            R9 K1 [{0, 0, 0}]
       13 NAMECALL                         R6 R0 K3 ["SetJointRangeMax"]
       15 CALL                             R6 3 0
       16 FORGLOOP                         R1 2 ; [-11]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Utils"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Flags"]
       14 GETTABLEKS                       R3 R3 K7 ["getFFlagAdaptiveAnimationConstraints"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K6 ["Flags"]
       21 GETTABLEKS                       R4 R4 K8 ["getFIntAdaptiveAnimationHandThumbAngleDeg"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K9 ["hasSpine"]
       26 GETTABLEKS                       R5 R1 K10 ["spineLabel"]
       28 GETTABLEKS                       R6 R1 K11 ["hasPelvis"]
       30 GETTABLEKS                       R7 R1 K12 ["LeftToeBase"]
       32 GETTABLEKS                       R8 R1 K13 ["RightToeBase"]
       34 NEWTABLE                         R9 16 0
       36 NEWTABLE                         R10 32 0
       38 GETIMPORT                        R11 K17 [Enum.RigLabel.Chest]
       40 GETIMPORT                        R12 K19 [Enum.RigLabel.Neck]
       42 SETTABLE                         R12 R10 R11
       43 GETIMPORT                        R11 K19 [Enum.RigLabel.Neck]
       45 GETIMPORT                        R12 K21 [Enum.RigLabel.HeadBase]
       47 SETTABLE                         R12 R10 R11
       48 GETIMPORT                        R11 K21 [Enum.RigLabel.HeadBase]
       50 LOADNIL                          R12
       51 SETTABLE                         R12 R10 R11
       52 GETIMPORT                        R11 K23 [Enum.RigLabel.LeftClavicle]
       54 GETIMPORT                        R12 K25 [Enum.RigLabel.LeftShoulder]
       56 SETTABLE                         R12 R10 R11
       57 GETIMPORT                        R11 K25 [Enum.RigLabel.LeftShoulder]
       59 GETIMPORT                        R12 K27 [Enum.RigLabel.LeftElbow]
       61 SETTABLE                         R12 R10 R11
       62 GETIMPORT                        R11 K27 [Enum.RigLabel.LeftElbow]
       64 GETIMPORT                        R12 K29 [Enum.RigLabel.LeftWrist]
       66 SETTABLE                         R12 R10 R11
       67 GETIMPORT                        R11 K29 [Enum.RigLabel.LeftWrist]
       69 LOADNIL                          R12
       70 SETTABLE                         R12 R10 R11
       71 GETIMPORT                        R11 K31 [Enum.RigLabel.RightClavicle]
       73 GETIMPORT                        R12 K33 [Enum.RigLabel.RightShoulder]
       75 SETTABLE                         R12 R10 R11
       76 GETIMPORT                        R11 K33 [Enum.RigLabel.RightShoulder]
       78 GETIMPORT                        R12 K35 [Enum.RigLabel.RightElbow]
       80 SETTABLE                         R12 R10 R11
       81 GETIMPORT                        R11 K35 [Enum.RigLabel.RightElbow]
       83 GETIMPORT                        R12 K37 [Enum.RigLabel.RightWrist]
       85 SETTABLE                         R12 R10 R11
       86 GETIMPORT                        R11 K37 [Enum.RigLabel.RightWrist]
       88 LOADNIL                          R12
       89 SETTABLE                         R12 R10 R11
       90 GETIMPORT                        R11 K39 [Enum.RigLabel.LeftHip]
       92 GETIMPORT                        R12 K41 [Enum.RigLabel.LeftKnee]
       94 SETTABLE                         R12 R10 R11
       95 GETIMPORT                        R11 K41 [Enum.RigLabel.LeftKnee]
       97 GETIMPORT                        R12 K43 [Enum.RigLabel.LeftAnkle]
       99 SETTABLE                         R12 R10 R11
      100 GETIMPORT                        R11 K43 [Enum.RigLabel.LeftAnkle]
      102 SETTABLE                         R7 R10 R11
      103 LOADNIL                          R11
      104 SETTABLE                         R11 R10 R7
      105 GETIMPORT                        R11 K45 [Enum.RigLabel.RightHip]
      107 GETIMPORT                        R12 K47 [Enum.RigLabel.RightKnee]
      109 SETTABLE                         R12 R10 R11
      110 GETIMPORT                        R11 K47 [Enum.RigLabel.RightKnee]
      112 GETIMPORT                        R12 K49 [Enum.RigLabel.RightAnkle]
      114 SETTABLE                         R12 R10 R11
      115 GETIMPORT                        R11 K49 [Enum.RigLabel.RightAnkle]
      117 SETTABLE                         R8 R10 R11
      118 LOADNIL                          R11
      119 SETTABLE                         R11 R10 R8
      120 JUMPIFNOT                        R4 ; [+12]
      121 GETIMPORT                        R11 K51 [Enum.RigLabel.Root]
      123 GETIMPORT                        R12 K53 [Enum.RigLabel.Waist]
      125 SETTABLE                         R12 R10 R11
      126 GETIMPORT                        R11 K53 [Enum.RigLabel.Waist]
      128 SETTABLE                         R5 R10 R11
      129 GETIMPORT                        R11 K17 [Enum.RigLabel.Chest]
      131 SETTABLE                         R11 R10 R5
      132 JUMP                             ; [+27]
      133 JUMPIFNOT                        R6 ; [+16]
      134 GETIMPORT                        R11 K51 [Enum.RigLabel.Root]
      136 GETIMPORT                        R12 K55 [Enum.RigLabel.Pelvis]
      138 SETTABLE                         R12 R10 R11
      139 GETIMPORT                        R11 K55 [Enum.RigLabel.Pelvis]
      141 GETIMPORT                        R12 K53 [Enum.RigLabel.Waist]
      143 SETTABLE                         R12 R10 R11
      144 GETIMPORT                        R11 K53 [Enum.RigLabel.Waist]
      146 GETIMPORT                        R12 K17 [Enum.RigLabel.Chest]
      148 SETTABLE                         R12 R10 R11
      149 JUMP                             ; [+10]
      150 GETIMPORT                        R11 K51 [Enum.RigLabel.Root]
      152 GETIMPORT                        R12 K53 [Enum.RigLabel.Waist]
      154 SETTABLE                         R12 R10 R11
      155 GETIMPORT                        R11 K53 [Enum.RigLabel.Waist]
      157 GETIMPORT                        R12 K17 [Enum.RigLabel.Chest]
      159 SETTABLE                         R12 R10 R11
      160 NEWTABLE                         R11 0 0
      162 NEWTABLE                         R12 0 0
      164 GETIMPORT                        R13 K57 [pcall]
      166 DUPCLOSURE                       R14 K58 [PROTO_0]
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R12
      169 CALL                             R13 1 0
      170 DUPCLOSURE                       R13 K59 [PROTO_1]
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R13 R9 K60 ["clearMapping"]
      174 DUPCLOSURE                       R13 K61 [PROTO_2]
      175 SETTABLEKS                       R13 R9 K62 ["StepAnimations"]
      177 JUMPIFNOT                        R4 ; [+48]
      178 NEWTABLE                         R13 0 22
      180 GETIMPORT                        R14 K51 [Enum.RigLabel.Root]
      182 GETIMPORT                        R15 K53 [Enum.RigLabel.Waist]
      184 MOVE                             R16 R5
      185 GETIMPORT                        R17 K17 [Enum.RigLabel.Chest]
      187 GETIMPORT                        R18 K19 [Enum.RigLabel.Neck]
      189 GETIMPORT                        R19 K21 [Enum.RigLabel.HeadBase]
      191 GETIMPORT                        R20 K23 [Enum.RigLabel.LeftClavicle]
      193 GETIMPORT                        R21 K25 [Enum.RigLabel.LeftShoulder]
      195 GETIMPORT                        R22 K27 [Enum.RigLabel.LeftElbow]
      197 GETIMPORT                        R23 K29 [Enum.RigLabel.LeftWrist]
      199 GETIMPORT                        R24 K31 [Enum.RigLabel.RightClavicle]
      201 GETIMPORT                        R25 K33 [Enum.RigLabel.RightShoulder]
      203 GETIMPORT                        R26 K35 [Enum.RigLabel.RightElbow]
      205 GETIMPORT                        R27 K37 [Enum.RigLabel.RightWrist]
      207 GETIMPORT                        R28 K39 [Enum.RigLabel.LeftHip]
      209 GETIMPORT                        R29 K41 [Enum.RigLabel.LeftKnee]
      211 SETLIST                          R13 R14 16 [1]
      213 GETIMPORT                        R14 K43 [Enum.RigLabel.LeftAnkle]
      215 MOVE                             R15 R7
      216 GETIMPORT                        R16 K45 [Enum.RigLabel.RightHip]
      218 GETIMPORT                        R17 K47 [Enum.RigLabel.RightKnee]
      220 GETIMPORT                        R18 K49 [Enum.RigLabel.RightAnkle]
      222 MOVE                             R19 R8
      223 SETLIST                          R13 R14 6 [17]
      225 JUMP                             ; [+96]
      226 JUMPIFNOT                        R6 ; [+49]
      227 NEWTABLE                         R13 0 22
      229 GETIMPORT                        R14 K51 [Enum.RigLabel.Root]
      231 GETIMPORT                        R15 K55 [Enum.RigLabel.Pelvis]
      233 GETIMPORT                        R16 K53 [Enum.RigLabel.Waist]
      235 GETIMPORT                        R17 K17 [Enum.RigLabel.Chest]
      237 GETIMPORT                        R18 K19 [Enum.RigLabel.Neck]
      239 GETIMPORT                        R19 K21 [Enum.RigLabel.HeadBase]
      241 GETIMPORT                        R20 K23 [Enum.RigLabel.LeftClavicle]
      243 GETIMPORT                        R21 K25 [Enum.RigLabel.LeftShoulder]
      245 GETIMPORT                        R22 K27 [Enum.RigLabel.LeftElbow]
      247 GETIMPORT                        R23 K29 [Enum.RigLabel.LeftWrist]
      249 GETIMPORT                        R24 K31 [Enum.RigLabel.RightClavicle]
      251 GETIMPORT                        R25 K33 [Enum.RigLabel.RightShoulder]
      253 GETIMPORT                        R26 K35 [Enum.RigLabel.RightElbow]
      255 GETIMPORT                        R27 K37 [Enum.RigLabel.RightWrist]
      257 GETIMPORT                        R28 K39 [Enum.RigLabel.LeftHip]
      259 GETIMPORT                        R29 K41 [Enum.RigLabel.LeftKnee]
      261 SETLIST                          R13 R14 16 [1]
      263 GETIMPORT                        R14 K43 [Enum.RigLabel.LeftAnkle]
      265 MOVE                             R15 R7
      266 GETIMPORT                        R16 K45 [Enum.RigLabel.RightHip]
      268 GETIMPORT                        R17 K47 [Enum.RigLabel.RightKnee]
      270 GETIMPORT                        R18 K49 [Enum.RigLabel.RightAnkle]
      272 MOVE                             R19 R8
      273 SETLIST                          R13 R14 6 [17]
      275 JUMP                             ; [+46]
      276 NEWTABLE                         R13 0 21
      278 GETIMPORT                        R14 K51 [Enum.RigLabel.Root]
      280 GETIMPORT                        R15 K53 [Enum.RigLabel.Waist]
      282 GETIMPORT                        R16 K17 [Enum.RigLabel.Chest]
      284 GETIMPORT                        R17 K19 [Enum.RigLabel.Neck]
      286 GETIMPORT                        R18 K21 [Enum.RigLabel.HeadBase]
      288 GETIMPORT                        R19 K23 [Enum.RigLabel.LeftClavicle]
      290 GETIMPORT                        R20 K25 [Enum.RigLabel.LeftShoulder]
      292 GETIMPORT                        R21 K27 [Enum.RigLabel.LeftElbow]
      294 GETIMPORT                        R22 K29 [Enum.RigLabel.LeftWrist]
      296 GETIMPORT                        R23 K31 [Enum.RigLabel.RightClavicle]
      298 GETIMPORT                        R24 K33 [Enum.RigLabel.RightShoulder]
      300 GETIMPORT                        R25 K35 [Enum.RigLabel.RightElbow]
      302 GETIMPORT                        R26 K37 [Enum.RigLabel.RightWrist]
      304 GETIMPORT                        R27 K39 [Enum.RigLabel.LeftHip]
      306 GETIMPORT                        R28 K41 [Enum.RigLabel.LeftKnee]
      308 GETIMPORT                        R29 K43 [Enum.RigLabel.LeftAnkle]
      310 SETLIST                          R13 R14 16 [1]
      312 MOVE                             R14 R7
      313 GETIMPORT                        R15 K45 [Enum.RigLabel.RightHip]
      315 GETIMPORT                        R16 K47 [Enum.RigLabel.RightKnee]
      317 GETIMPORT                        R17 K49 [Enum.RigLabel.RightAnkle]
      319 MOVE                             R18 R8
      320 SETLIST                          R13 R14 5 [17]
      322 DUPCLOSURE                       R14 K63 [PROTO_3]
      323 CAPTURE                          VAL R2
      324 SETTABLEKS                       R14 R9 K64 ["clearTransforms"]
      326 DUPCLOSURE                       R14 K65 [PROTO_5]
      327 CAPTURE                          VAL R9
      328 CAPTURE                          VAL R2
      329 CAPTURE                          VAL R13
      330 CAPTURE                          VAL R10
      331 CAPTURE                          VAL R1
      332 SETTABLEKS                       R14 R9 K66 ["enforceTpose"]
      334 DUPCLOSURE                       R14 K67 [PROTO_7]
      335 CAPTURE                          VAL R3
      336 DUPCLOSURE                       R15 K68 [PROTO_8]
      337 CAPTURE                          VAL R1
      338 DUPCLOSURE                       R16 K69 [PROTO_11]
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R14
      341 CAPTURE                          VAL R9
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R2
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R11
      346 SETTABLEKS                       R16 R9 K70 ["enforceTposeForHand"]
      348 DUPCLOSURE                       R16 K71 [PROTO_12]
      349 CAPTURE                          VAL R1
      350 CAPTURE                          VAL R9
      351 SETTABLEKS                       R16 R9 K72 ["enforceTposeAllHands"]
      353 DUPCLOSURE                       R16 K73 [PROTO_13]
      354 CAPTURE                          VAL R1
      355 SETTABLEKS                       R16 R9 K74 ["clearTposeAdjustmentForHand"]
      357 DUPCLOSURE                       R16 K75 [PROTO_14]
      358 CAPTURE                          VAL R9
      359 CAPTURE                          VAL R1
      360 SETTABLEKS                       R16 R9 K76 ["sampleTposeAdjustmentForHand"]
      362 DUPCLOSURE                       R16 K77 [PROTO_15]
      363 CAPTURE                          VAL R9
      364 CAPTURE                          VAL R1
      365 SETTABLEKS                       R16 R9 K78 ["poseAsHrdTposeAdjustment"]
      367 DUPCLOSURE                       R16 K79 [PROTO_16]
      368 CAPTURE                          VAL R1
      369 SETTABLEKS                       R16 R9 K80 ["clearTposeAdjustment"]
      371 DUPCLOSURE                       R16 K81 [PROTO_17]
      372 CAPTURE                          VAL R9
      373 CAPTURE                          VAL R1
      374 SETTABLEKS                       R16 R9 K82 ["sampleTposeAdjustment"]
      376 DUPCLOSURE                       R16 K83 [PROTO_18]
      377 CAPTURE                          VAL R1
      378 SETTABLEKS                       R16 R9 K84 ["clearSize"]
      380 DUPCLOSURE                       R16 K85 [PROTO_19]
      381 CAPTURE                          VAL R1
      382 SETTABLEKS                       R16 R9 K86 ["automaticSize"]
      384 DUPCLOSURE                       R16 K87 [PROTO_20]
      385 CAPTURE                          VAL R1
      386 SETTABLEKS                       R16 R9 K88 ["clearRange"]
      388 RETURN                           R9 1
