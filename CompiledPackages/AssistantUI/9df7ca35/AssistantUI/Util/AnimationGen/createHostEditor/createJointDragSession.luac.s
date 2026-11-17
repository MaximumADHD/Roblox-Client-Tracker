PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["Bone"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+32]
        5 MOVE                             R2 R0
        6 JUMPIFEQKNIL                     R2 ; [+21]
        8 LOADK                            R5 K0 ["Bone"]
        9 NAMECALL                         R3 R2 K1 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+15]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["toClipName"]
       16 MOVE                             R4 R1
       17 GETTABLEKS                       R5 R2 K3 ["Name"]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 1
       21 GETTABLE                         R4 R5 R3
       22 JUMPIFEQKNIL                     R4 ; [+2]
       24 RETURN                           R3 2
       25 GETTABLEKS                       R2 R2 K4 ["Parent"]
       27 JUMPBACK                         ; [-22]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K2 ["toClipName"]
       31 MOVE                             R4 R1
       32 GETTABLEKS                       R5 R0 K3 ["Name"]
       34 CALL                             R3 2 1
       35 LOADNIL                          R4
       36 RETURN                           R3 2
       37 LOADK                            R4 K5 ["Motor6D"]
       38 NAMECALL                         R2 R0 K1 ["IsA"]
       40 CALL                             R2 2 1
       41 JUMPIFNOT                        R2 ; [+33]
       42 GETTABLEKS                       R2 R0 K6 ["Part1"]
       44 JUMPIFEQKNIL                     R2 ; [+9]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K2 ["toClipName"]
       49 MOVE                             R4 R1
       50 GETTABLEKS                       R5 R2 K3 ["Name"]
       52 CALL                             R3 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 JUMPIFEQKNIL                     R3 ; [+6]
       57 GETUPVAL                         R5 1
       58 GETTABLE                         R4 R5 R3
       59 JUMPIFEQKNIL                     R4 ; [+2]
       61 RETURN                           R3 2
       62 GETTABLEKS                       R5 R0 K3 ["Name"]
       64 GETUPVAL                         R6 1
       65 GETTABLE                         R4 R6 R5
       66 JUMPIFEQKNIL                     R4 ; [+5]
       68 GETTABLEKS                       R5 R0 K3 ["Name"]
       70 MOVE                             R6 R4
       71 RETURN                           R5 2
       72 MOVE                             R5 R3
       73 LOADNIL                          R6
       74 RETURN                           R5 2
       75 LOADK                            R4 K7 ["AnimationConstraint"]
       76 NAMECALL                         R2 R0 K1 ["IsA"]
       78 CALL                             R2 2 1
       79 JUMPIFNOT                        R2 ; [+21]
       80 GETTABLEKS                       R2 R0 K8 ["Attachment1"]
       82 JUMPIFEQKNIL                     R2 ; [+18]
       84 GETTABLEKS                       R3 R2 K4 ["Parent"]
       86 JUMPIFEQKNIL                     R3 ; [+14]
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R3 R3 K2 ["toClipName"]
       91 MOVE                             R4 R1
       92 GETTABLEKS                       R5 R2 K4 ["Parent"]
       94 GETTABLEKS                       R5 R5 K3 ["Name"]
       96 CALL                             R3 2 1
       97 MOVE                             R4 R3
       98 GETUPVAL                         R6 1
       99 GETTABLE                         R5 R6 R3
      100 RETURN                           R4 2
      101 LOADNIL                          R2
      102 LOADNIL                          R3
      103 RETURN                           R2 2

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Transform"]
        2 GETTABLEKS                       R1 R1 K1 ["Rotation"]
        4 NAMECALL                         R1 R1 K2 ["ToAxisAngle"]
        6 CALL                             R1 1 2
        7 DIVK                             R3 R2 K3 [2]
        8 FASTCALL1                        MATH_SIN R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K6 [math.sin]
       12 CALL                             R4 1 1
       13 NEWTABLE                         R5 0 4
       15 GETTABLEKS                       R7 R1 K7 ["X"]
       17 MUL                              R6 R7 R4
       18 GETTABLEKS                       R8 R1 K8 ["Y"]
       20 MUL                              R7 R8 R4
       21 GETTABLEKS                       R9 R1 K9 ["Z"]
       23 MUL                              R8 R9 R4
       24 FASTCALL1                        MATH_COS R3 ; [+3]
       25 MOVE                             R10 R3
       26 GETIMPORT                        R9 K11 [math.cos]
       28 CALL                             R9 1 1
       29 SETLIST                          R5 R6 4 [1]
       31 RETURN                           R5 1

PROTO_3:
        0 NAMECALL                         R3 R0 K0 ["Inverse"]
        2 CALL                             R3 1 1
        3 MUL                              R2 R3 R1
        4 NAMECALL                         R3 R2 K1 ["ToAxisAngle"]
        6 CALL                             R3 1 2
        7 LOADB                            R5 1
        8 GETTABLEKS                       R6 R2 K2 ["Position"]
       10 GETTABLEKS                       R6 R6 K3 ["Magnitude"]
       12 LOADK                            R7 K4 [0.001]
       13 JUMPIFLE                         R7 R6 ; [+6]
       15 LOADK                            R6 K5 [0.008726646259971648]
       16 JUMPIFLE                         R6 R4 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 RETURN                           R5 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["indexJointsByPoseName"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["fromRig"]
       10 MOVE                             R6 R0
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K2 ["effectorChainPoseNames"]
       15 MOVE                             R7 R1
       16 CALL                             R6 1 1
       17 JUMPIFEQKNIL                     R6 ; [+20]
       19 MOVE                             R7 R6
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 GETUPVAL                         R13 1
       24 GETTABLEKS                       R13 R13 K3 ["toRigName"]
       26 MOVE                             R14 R5
       27 MOVE                             R15 R11
       28 CALL                             R13 2 1
       29 GETTABLE                         R12 R4 R13
       30 JUMPIFEQKNIL                     R12 ; [+5]
       32 GETUPVAL                         R13 3
       33 MOVE                             R14 R12
       34 CALL                             R13 1 1
       35 SETTABLE                         R13 R3 R11
       36 FORGLOOP                         R7 2 ; [-14]
       38 JUMPIFEQKNIL                     R2 ; [+17]
       40 GETTABLE                         R7 R3 R2
       41 JUMPIFNOTEQKNIL                  R7 ; [+14]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K3 ["toRigName"]
       46 MOVE                             R9 R5
       47 MOVE                             R10 R2
       48 CALL                             R8 2 1
       49 GETTABLE                         R7 R4 R8
       50 JUMPIFEQKNIL                     R7 ; [+5]
       52 GETUPVAL                         R8 3
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 SETTABLE                         R8 R3 R2
       56 RETURN                           R3 1

PROTO_5:
        0 GETTABLEN                        R4 R0 1
        1 GETTABLEN                        R5 R0 1
        2 MUL                              R3 R4 R5
        3 GETTABLEN                        R5 R0 2
        4 GETTABLEN                        R6 R0 2
        5 MUL                              R4 R5 R6
        6 ADD                              R2 R3 R4
        7 GETTABLEN                        R4 R0 3
        8 GETTABLEN                        R5 R0 3
        9 MUL                              R3 R4 R5
       10 ADD                              R1 R2 R3
       11 LOADB                            R2 1
       12 GETTABLEN                        R4 R0 4
       13 FASTCALL1                        MATH_ABS R4 ; [+2]
       14 GETIMPORT                        R3 K2 [math.abs]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K3 [0.999999]
       18 JUMPIFLE                         R4 R3 ; [+6]
       20 LOADK                            R3 K4 [1E-12]
       21 JUMPIFLE                         R1 R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 MOVE                             R7 R1
        4 CALL                             R4 3 1
        5 NEWTABLE                         R5 0 0
        7 NEWTABLE                         R6 0 0
        9 MOVE                             R7 R4
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLE                         R13 R3 R10
       14 OR                               R12 R13 R11
       15 GETUPVAL                         R13 1
       16 GETTABLEKS                       R13 R13 K0 ["composeLocalRotationDelta"]
       18 MOVE                             R14 R12
       19 MOVE                             R15 R11
       20 CALL                             R13 2 1
       21 JUMPIFEQKNIL                     R13 ; [+29]
       23 GETTABLEN                        R18 R13 1
       24 GETTABLEN                        R19 R13 1
       25 MUL                              R17 R18 R19
       26 GETTABLEN                        R19 R13 2
       27 GETTABLEN                        R20 R13 2
       28 MUL                              R18 R19 R20
       29 ADD                              R16 R17 R18
       30 GETTABLEN                        R18 R13 3
       31 GETTABLEN                        R19 R13 3
       32 MUL                              R17 R18 R19
       33 ADD                              R15 R16 R17
       34 LOADB                            R14 1
       35 GETTABLEN                        R17 R13 4
       36 FASTCALL1                        MATH_ABS R17 ; [+2]
       37 GETIMPORT                        R16 K3 [math.abs]
       39 CALL                             R16 1 1
       40 LOADK                            R17 K4 [0.999999]
       41 JUMPIFLE                         R17 R16 ; [+6]
       43 LOADK                            R16 K5 [1E-12]
       44 JUMPIFLE                         R15 R16 ; [+2]
       46 LOADB                            R14 0 +1
       47 LOADB                            R14 1
       48 JUMPIF                           R14 ; [+2]
       49 SETTABLE                         R11 R5 R10
       50 SETTABLE                         R12 R6 R10
       51 FORGLOOP                         R7 2 ; [-39]
       53 GETIMPORT                        R7 K7 [next]
       55 MOVE                             R8 R5
       56 CALL                             R7 1 1
       57 JUMPIFNOTEQKNIL                  R7 ; [+3]
       59 LOADNIL                          R7
       60 RETURN                           R7 1
       61 DUPTABLE                         R7 K10 [{"postLocalByEffector", "proposedBaselineLocalByEffector"}]
       62 NEWTABLE                         R8 1 0
       64 SETTABLE                         R5 R8 R2
       65 SETTABLEKS                       R8 R7 K8 ["postLocalByEffector"]
       67 NEWTABLE                         R8 1 0
       69 SETTABLE                         R6 R8 R2
       70 SETTABLEKS                       R8 R7 K9 ["proposedBaselineLocalByEffector"]
       72 RETURN                           R7 1

PROTO_7:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 3
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 4
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 5
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 6
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveTarget"]
        3 CALL                             R2 0 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 JUMPIFNOTEQKNIL                  R3 ; [+74]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["stepRig"]
       14 GETTABLEKS                       R5 R2 K2 ["rig"]
       16 GETTABLEKS                       R6 R2 K3 ["contentId"]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 4
       21 CALL                             R4 1 1
       22 MOVE                             R3 R4
       23 SETUPVAL                         R3 2
       24 GETUPVAL                         R4 6
       25 GETTABLEKS                       R5 R2 K2 ["rig"]
       27 CALL                             R4 1 1
       28 SETUPVAL                         R4 5
       29 GETUPVAL                         R4 7
       30 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantAnimationGenNewPosing"]
       32 JUMPIF                           R4 ; [+51]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K5 ["Transform"]
       36 SETUPVAL                         R4 8
       37 GETUPVAL                         R4 9
       38 GETUPVAL                         R5 4
       39 GETUPVAL                         R6 10
       40 GETTABLEKS                       R6 R6 K6 ["fromRig"]
       42 GETTABLEKS                       R7 R2 K2 ["rig"]
       44 CALL                             R6 1 -1
       45 CALL                             R4 -1 2
       46 JUMPIFEQKNIL                     R5 ; [+9]
       48 GETUPVAL                         R6 12
       49 GETTABLEKS                       R7 R2 K2 ["rig"]
       51 MOVE                             R8 R5
       52 MOVE                             R9 R4
       53 CALL                             R6 3 1
       54 SETUPVAL                         R6 11
       55 JUMP                             ; [+13]
       56 JUMPIFEQKNIL                     R4 ; [+9]
       58 NEWTABLE                         R6 1 0
       60 GETUPVAL                         R7 13
       61 GETUPVAL                         R8 4
       62 CALL                             R7 1 1
       63 SETTABLE                         R7 R6 R4
       64 SETUPVAL                         R6 11
       65 JUMP                             ; [+3]
       66 NEWTABLE                         R6 0 0
       68 SETUPVAL                         R6 11
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K7 ["sampleWorld"]
       72 GETTABLEKS                       R7 R2 K2 ["rig"]
       74 GETTABLEKS                       R8 R2 K3 ["contentId"]
       76 CALL                             R6 2 1
       77 SETUPVAL                         R6 14
       78 GETUPVAL                         R6 16
       79 GETTABLEKS                       R6 R6 K8 ["snapshotEffectorsFromSample"]
       81 GETUPVAL                         R7 14
       82 CALL                             R6 1 1
       83 SETUPVAL                         R6 15
       84 GETUPVAL                         R4 17
       85 GETUPVAL                         R5 4
       86 MUL                              R6 R0 R3
       87 CALL                             R4 2 0
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K1 ["stepRig"]
       91 GETTABLEKS                       R5 R2 K2 ["rig"]
       93 GETTABLEKS                       R6 R2 K3 ["contentId"]
       95 CALL                             R4 2 0
       96 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 GETUPVAL                         R6 6
        7 LOADNIL                          R7
        8 SETUPVAL                         R7 0
        9 LOADNIL                          R7
       10 SETUPVAL                         R7 1
       11 LOADNIL                          R7
       12 SETUPVAL                         R7 2
       13 LOADNIL                          R7
       14 SETUPVAL                         R7 3
       15 LOADNIL                          R7
       16 SETUPVAL                         R7 4
       17 LOADNIL                          R7
       18 SETUPVAL                         R7 5
       19 LOADNIL                          R7
       20 SETUPVAL                         R7 6
       21 GETUPVAL                         R7 7
       22 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantAnimationGenNewPosing"]
       24 JUMPIFNOT                        R7 ; [+20]
       25 JUMPIFEQKNIL                     R0 ; [+18]
       27 JUMPIFEQKNIL                     R6 ; [+16]
       29 GETUPVAL                         R7 8
       30 GETTABLEKS                       R7 R7 K1 ["commit"]
       32 DUPTABLE                         R8 K5 [{"contentId", "time", "preRigPose"}]
       33 GETTABLEKS                       R9 R0 K2 ["contentId"]
       35 SETTABLEKS                       R9 R8 K2 ["contentId"]
       37 GETTABLEKS                       R9 R0 K3 ["time"]
       39 SETTABLEKS                       R9 R8 K3 ["time"]
       41 SETTABLEKS                       R6 R8 K4 ["preRigPose"]
       43 CALL                             R7 1 0
       44 RETURN                           R0 0
       45 JUMPIFEQKNIL                     R0 ; [+13]
       47 JUMPIFEQKNIL                     R1 ; [+11]
       49 JUMPIFEQKNIL                     R2 ; [+9]
       51 JUMPIFEQKNIL                     R3 ; [+7]
       53 JUMPIFEQKNIL                     R4 ; [+5]
       55 JUMPIFEQKNIL                     R5 ; [+3]
       57 JUMPIFNOTEQKNIL                  R6 ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R7 9
       61 GETUPVAL                         R8 10
       62 GETUPVAL                         R9 11
       63 GETTABLEKS                       R9 R9 K6 ["fromRig"]
       65 GETTABLEKS                       R10 R0 K7 ["rig"]
       67 CALL                             R9 1 -1
       68 CALL                             R7 -1 2
       69 LOADNIL                          R9
       70 NEWTABLE                         R10 0 0
       72 LOADNIL                          R11
       73 GETUPVAL                         R13 10
       74 GETTABLEKS                       R13 R13 K8 ["Transform"]
       76 NAMECALL                         R15 R2 K9 ["Inverse"]
       78 CALL                             R15 1 1
       79 MUL                              R14 R15 R13
       80 NAMECALL                         R15 R14 K10 ["ToAxisAngle"]
       82 CALL                             R15 1 2
       83 LOADB                            R12 1
       84 GETTABLEKS                       R17 R14 K11 ["Position"]
       86 GETTABLEKS                       R17 R17 K12 ["Magnitude"]
       88 LOADK                            R18 K13 [0.001]
       89 JUMPIFLE                         R18 R17 ; [+6]
       91 LOADK                            R17 K14 [0.008726646259971648]
       92 JUMPIFLE                         R17 R16 ; [+2]
       94 LOADB                            R12 0 +1
       95 LOADB                            R12 1
       96 JUMPIFEQKNIL                     R8 ; [+35]
       98 GETUPVAL                         R13 7
       99 GETTABLEKS                       R13 R13 K15 ["FFlagAssistantAnimationGenRotationIntentV3"]
      101 JUMPIFNOT                        R13 ; [+30]
      102 JUMPIFEQKNIL                     R7 ; [+2]
      104 SETTABLE                         R7 R10 R8
      105 GETUPVAL                         R13 12
      106 GETTABLEKS                       R14 R0 K7 ["rig"]
      108 MOVE                             R15 R7
      109 MOVE                             R16 R8
      110 MOVE                             R17 R3
      111 CALL                             R13 4 1
      112 MOVE                             R11 R13
      113 GETUPVAL                         R13 13
      114 GETTABLEKS                       R13 R13 K16 ["effectorsFromRotationIntent"]
      116 MOVE                             R14 R11
      117 CALL                             R13 1 1
      118 LENGTH                           R14 R13
      119 LOADN                            R15 0
      120 JUMPIFNOTLT                      R15 R14 ; [+3]
      122 MOVE                             R9 R13
      123 JUMP                             ; [+20]
      124 JUMPIFNOT                        R12 ; [+19]
      125 NEWTABLE                         R14 0 1
      127 MOVE                             R15 R8
      128 SETLIST                          R14 R15 1 [1]
      130 MOVE                             R9 R14
      131 JUMP                             ; [+12]
      132 JUMPIFEQKNIL                     R8 ; [+11]
      134 JUMPIFNOT                        R12 ; [+9]
      135 NEWTABLE                         R13 0 1
      137 MOVE                             R14 R8
      138 SETLIST                          R13 R14 1 [1]
      140 MOVE                             R9 R13
      141 JUMPIFEQKNIL                     R7 ; [+2]
      143 SETTABLE                         R7 R10 R8
      144 MOVE                             R13 R12
      145 JUMPIFNOT                        R13 ; [+13]
      146 LOADB                            R13 1
      147 JUMPIFEQKS                       R7 K17 ["HumanoidRootPart"] ; [+11]
      149 LOADB                            R13 1
      150 GETUPVAL                         R14 10
      151 GETTABLEKS                       R14 R14 K18 ["Name"]
      153 JUMPIFEQKS                       R14 K17 ["HumanoidRootPart"] ; [+5]
      155 JUMPIFEQKS                       R7 K19 ["Torso"] ; [+2]
      157 LOADB                            R13 0 +1
      158 LOADB                            R13 1
      159 GETUPVAL                         R14 8
      160 GETTABLEKS                       R14 R14 K1 ["commit"]
      162 DUPTABLE                         R15 K26 [{"contentId", "time", "preEffectors", "preWorldSample", "preRigPose", "effectorHints", "primaryJointByEffector", "rotationIntent", "rootTipMove"}]
      163 GETTABLEKS                       R16 R0 K2 ["contentId"]
      165 SETTABLEKS                       R16 R15 K2 ["contentId"]
      167 GETTABLEKS                       R16 R0 K3 ["time"]
      169 SETTABLEKS                       R16 R15 K3 ["time"]
      171 SETTABLEKS                       R4 R15 K20 ["preEffectors"]
      173 SETTABLEKS                       R5 R15 K21 ["preWorldSample"]
      175 SETTABLEKS                       R6 R15 K4 ["preRigPose"]
      177 SETTABLEKS                       R9 R15 K22 ["effectorHints"]
      179 SETTABLEKS                       R10 R15 K23 ["primaryJointByEffector"]
      181 SETTABLEKS                       R11 R15 K24 ["rotationIntent"]
      183 SETTABLEKS                       R13 R15 K25 ["rootTipMove"]
      185 CALL                             R14 1 0
      186 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["joint"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          REF R3
       12 CAPTURE                          REF R4
       13 CAPTURE                          REF R5
       14 CAPTURE                          REF R6
       15 CAPTURE                          REF R7
       16 CAPTURE                          REF R8
       17 NEWCLOSURE                       R10 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R2
       20 CAPTURE                          REF R3
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R8
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          REF R4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          REF R5
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          REF R7
       33 CAPTURE                          REF R6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          REF R2
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R4
       40 CAPTURE                          REF R5
       41 CAPTURE                          REF R6
       42 CAPTURE                          REF R7
       43 CAPTURE                          REF R8
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U10
       51 GETUPVAL                         R12 11
       52 GETTABLEKS                       R13 R0 K1 ["adornee"]
       54 NEWCLOSURE                       R14 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R1
       57 MOVE                             R15 R10
       58 MOVE                             R16 R9
       59 MOVE                             R17 R11
       60 GETTABLEKS                       R18 R0 K2 ["onDeselected"]
       62 GETTABLEKS                       R19 R0 K3 ["tool"]
       64 CALL                             R12 7 1
       65 DUPTABLE                         R13 K7 [{"setTool", "reselect", "destroy"}]
       66 GETTABLEKS                       R14 R12 K4 ["setTool"]
       68 SETTABLEKS                       R14 R13 K4 ["setTool"]
       70 GETTABLEKS                       R14 R12 K5 ["reselect"]
       72 SETTABLEKS                       R14 R13 K5 ["reselect"]
       74 GETTABLEKS                       R14 R12 K6 ["destroy"]
       76 SETTABLEKS                       R14 R13 K6 ["destroy"]
       78 CLOSEUPVALS                      R2
       79 RETURN                           R13 1

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
       15 GETTABLEKS                       R2 R2 K9 ["ClipSampling"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["DEPRECATED_DragEditSnapshot"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K8 ["Posing"]
       37 GETTABLEKS                       R4 R4 K11 ["DEPRECATED_EditJointFilter"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K12 ["Flags"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K13 ["Parent"]
       51 GETTABLEKS                       R6 R6 K14 ["JointFrames"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Util"]
       58 GETTABLEKS                       R7 R7 K7 ["AnimationGen"]
       60 GETTABLEKS                       R7 R7 K8 ["Posing"]
       62 GETTABLEKS                       R7 R7 K15 ["RigPoseNames"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K16 ["Types"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETIMPORT                        R9 K1 [script]
       74 GETTABLEKS                       R9 R9 K13 ["Parent"]
       76 GETTABLEKS                       R9 R9 K17 ["createPartDragger"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Util"]
       83 GETTABLEKS                       R10 R10 K7 ["AnimationGen"]
       85 GETTABLEKS                       R10 R10 K8 ["Posing"]
       87 GETTABLEKS                       R10 R10 K18 ["getRigJointTransforms"]
       89 CALL                             R9 1 1
       90 GETTABLEKS                       R10 R5 K19 ["getJointWorldCFrame"]
       92 GETTABLEKS                       R11 R5 K20 ["setJointWorldCFrame"]
       94 NEWTABLE                         R12 32 0
       96 LOADK                            R13 K21 ["left_hand"]
       97 SETTABLEKS                       R13 R12 K22 ["LeftHand"]
       99 LOADK                            R13 K21 ["left_hand"]
      100 SETTABLEKS                       R13 R12 K23 ["LeftLowerArm"]
      102 LOADK                            R13 K21 ["left_hand"]
      103 SETTABLEKS                       R13 R12 K24 ["LeftUpperArm"]
      105 LOADK                            R13 K25 ["right_hand"]
      106 SETTABLEKS                       R13 R12 K26 ["RightHand"]
      108 LOADK                            R13 K25 ["right_hand"]
      109 SETTABLEKS                       R13 R12 K27 ["RightLowerArm"]
      111 LOADK                            R13 K25 ["right_hand"]
      112 SETTABLEKS                       R13 R12 K28 ["RightUpperArm"]
      114 LOADK                            R13 K21 ["left_hand"]
      115 SETTABLEKS                       R13 R12 K29 ["LeftShoulder"]
      117 LOADK                            R13 K25 ["right_hand"]
      118 SETTABLEKS                       R13 R12 K30 ["RightShoulder"]
      120 LOADK                            R13 K31 ["left_foot"]
      121 SETTABLEKS                       R13 R12 K32 ["LeftFoot"]
      123 LOADK                            R13 K31 ["left_foot"]
      124 SETTABLEKS                       R13 R12 K33 ["LeftLowerLeg"]
      126 LOADK                            R13 K31 ["left_foot"]
      127 SETTABLEKS                       R13 R12 K34 ["LeftUpperLeg"]
      129 LOADK                            R13 K35 ["right_foot"]
      130 SETTABLEKS                       R13 R12 K36 ["RightFoot"]
      132 LOADK                            R13 K35 ["right_foot"]
      133 SETTABLEKS                       R13 R12 K37 ["RightLowerLeg"]
      135 LOADK                            R13 K35 ["right_foot"]
      136 SETTABLEKS                       R13 R12 K38 ["RightUpperLeg"]
      138 LOADK                            R13 K39 ["spine"]
      139 SETTABLEKS                       R13 R12 K40 ["LowerTorso"]
      141 LOADK                            R13 K39 ["spine"]
      142 SETTABLEKS                       R13 R12 K41 ["UpperTorso"]
      144 LOADK                            R13 K39 ["spine"]
      145 SETTABLEKS                       R13 R12 K42 ["Waist"]
      147 LOADK                            R13 K39 ["spine"]
      148 SETTABLEKS                       R13 R12 K43 ["Head"]
      150 LOADK                            R13 K39 ["spine"]
      151 SETTABLEKS                       R13 R12 K44 ["Neck"]
      153 LOADK                            R13 K21 ["left_hand"]
      154 SETTABLEKS                       R13 R12 K45 ["Left Arm"]
      156 LOADK                            R13 K25 ["right_hand"]
      157 SETTABLEKS                       R13 R12 K46 ["Right Arm"]
      159 LOADK                            R13 K31 ["left_foot"]
      160 SETTABLEKS                       R13 R12 K47 ["Left Leg"]
      162 LOADK                            R13 K35 ["right_foot"]
      163 SETTABLEKS                       R13 R12 K48 ["Right Leg"]
      165 LOADK                            R13 K21 ["left_hand"]
      166 SETTABLEKS                       R13 R12 K49 ["LeftArm"]
      168 LOADK                            R13 K25 ["right_hand"]
      169 SETTABLEKS                       R13 R12 K50 ["RightArm"]
      171 LOADK                            R13 K31 ["left_foot"]
      172 SETTABLEKS                       R13 R12 K51 ["LeftLeg"]
      174 LOADK                            R13 K35 ["right_foot"]
      175 SETTABLEKS                       R13 R12 K52 ["RightLeg"]
      177 GETTABLEKS                       R13 R4 K53 ["FFlagAssistantAnimationGenPoseR15PlusJoints"]
      179 JUMPIFNOT                        R13 ; [+15]
      180 LOADK                            R13 K21 ["left_hand"]
      181 SETTABLEKS                       R13 R12 K54 ["LeftClavicle"]
      183 LOADK                            R13 K25 ["right_hand"]
      184 SETTABLEKS                       R13 R12 K55 ["RightClavicle"]
      186 LOADK                            R13 K39 ["spine"]
      187 SETTABLEKS                       R13 R12 K56 ["Spine"]
      189 LOADK                            R13 K39 ["spine"]
      190 SETTABLEKS                       R13 R12 K57 ["Chest"]
      192 LOADK                            R13 K39 ["spine"]
      193 SETTABLEKS                       R13 R12 K58 ["HeadBase"]
      195 DUPCLOSURE                       R13 K59 [PROTO_0]
      196 CAPTURE                          VAL R12
      197 DUPCLOSURE                       R14 K60 [PROTO_1]
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R12
      200 DUPCLOSURE                       R15 K61 [PROTO_2]
      201 DUPCLOSURE                       R16 K62 [PROTO_3]
      202 DUPCLOSURE                       R17 K63 [PROTO_4]
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R15
      207 DUPCLOSURE                       R18 K64 [PROTO_5]
      208 DUPCLOSURE                       R19 K65 [PROTO_6]
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R2
      211 DUPCLOSURE                       R20 K66 [PROTO_11]
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R8
      224 RETURN                           R20 1
