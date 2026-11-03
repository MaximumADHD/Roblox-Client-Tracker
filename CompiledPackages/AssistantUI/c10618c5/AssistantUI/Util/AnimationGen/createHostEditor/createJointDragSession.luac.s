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
        9 JUMPIFNOTEQKNIL                  R3 ; [+70]
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
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K4 ["Transform"]
       27 SETUPVAL                         R4 5
       28 GETUPVAL                         R4 6
       29 GETUPVAL                         R5 4
       30 GETUPVAL                         R6 7
       31 GETTABLEKS                       R6 R6 K5 ["fromRig"]
       33 GETTABLEKS                       R7 R2 K2 ["rig"]
       35 CALL                             R6 1 -1
       36 CALL                             R4 -1 2
       37 JUMPIFEQKNIL                     R5 ; [+9]
       39 GETUPVAL                         R6 9
       40 GETTABLEKS                       R7 R2 K2 ["rig"]
       42 MOVE                             R8 R5
       43 MOVE                             R9 R4
       44 CALL                             R6 3 1
       45 SETUPVAL                         R6 8
       46 JUMP                             ; [+13]
       47 JUMPIFEQKNIL                     R4 ; [+9]
       49 NEWTABLE                         R6 1 0
       51 GETUPVAL                         R7 10
       52 GETUPVAL                         R8 4
       53 CALL                             R7 1 1
       54 SETTABLE                         R7 R6 R4
       55 SETUPVAL                         R6 8
       56 JUMP                             ; [+3]
       57 NEWTABLE                         R6 0 0
       59 SETUPVAL                         R6 8
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K6 ["sampleWorld"]
       63 GETTABLEKS                       R7 R2 K2 ["rig"]
       65 GETTABLEKS                       R8 R2 K3 ["contentId"]
       67 CALL                             R6 2 1
       68 SETUPVAL                         R6 11
       69 GETUPVAL                         R6 13
       70 GETTABLEKS                       R6 R6 K7 ["snapshotEffectorsFromSample"]
       72 GETUPVAL                         R7 11
       73 CALL                             R6 1 1
       74 SETUPVAL                         R6 12
       75 GETUPVAL                         R6 15
       76 GETTABLEKS                       R7 R2 K2 ["rig"]
       78 CALL                             R6 1 1
       79 SETUPVAL                         R6 14
       80 GETUPVAL                         R4 16
       81 GETUPVAL                         R5 4
       82 MUL                              R6 R0 R3
       83 CALL                             R4 2 0
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R4 R4 K1 ["stepRig"]
       87 GETTABLEKS                       R5 R2 K2 ["rig"]
       89 GETTABLEKS                       R6 R2 K3 ["contentId"]
       91 CALL                             R4 2 0
       92 RETURN                           R0 0

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
       21 JUMPIFEQKNIL                     R0 ; [+13]
       23 JUMPIFEQKNIL                     R1 ; [+11]
       25 JUMPIFEQKNIL                     R2 ; [+9]
       27 JUMPIFEQKNIL                     R3 ; [+7]
       29 JUMPIFEQKNIL                     R4 ; [+5]
       31 JUMPIFEQKNIL                     R5 ; [+3]
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R7 7
       37 GETUPVAL                         R8 8
       38 GETUPVAL                         R9 9
       39 GETTABLEKS                       R9 R9 K0 ["fromRig"]
       41 GETTABLEKS                       R10 R0 K1 ["rig"]
       43 CALL                             R9 1 -1
       44 CALL                             R7 -1 2
       45 LOADNIL                          R9
       46 NEWTABLE                         R10 0 0
       48 LOADNIL                          R11
       49 GETUPVAL                         R13 8
       50 GETTABLEKS                       R13 R13 K2 ["Transform"]
       52 NAMECALL                         R15 R2 K3 ["Inverse"]
       54 CALL                             R15 1 1
       55 MUL                              R14 R15 R13
       56 NAMECALL                         R15 R14 K4 ["ToAxisAngle"]
       58 CALL                             R15 1 2
       59 LOADB                            R12 1
       60 GETTABLEKS                       R17 R14 K5 ["Position"]
       62 GETTABLEKS                       R17 R17 K6 ["Magnitude"]
       64 LOADK                            R18 K7 [0.001]
       65 JUMPIFLE                         R18 R17 ; [+6]
       67 LOADK                            R17 K8 [0.008726646259971648]
       68 JUMPIFLE                         R17 R16 ; [+2]
       70 LOADB                            R12 0 +1
       71 LOADB                            R12 1
       72 JUMPIFEQKNIL                     R8 ; [+35]
       74 GETUPVAL                         R13 10
       75 GETTABLEKS                       R13 R13 K9 ["FFlagAssistantAnimationGenRotationIntentV3"]
       77 JUMPIFNOT                        R13 ; [+30]
       78 JUMPIFEQKNIL                     R7 ; [+2]
       80 SETTABLE                         R7 R10 R8
       81 GETUPVAL                         R13 11
       82 GETTABLEKS                       R14 R0 K1 ["rig"]
       84 MOVE                             R15 R7
       85 MOVE                             R16 R8
       86 MOVE                             R17 R3
       87 CALL                             R13 4 1
       88 MOVE                             R11 R13
       89 GETUPVAL                         R13 12
       90 GETTABLEKS                       R13 R13 K10 ["effectorsFromRotationIntent"]
       92 MOVE                             R14 R11
       93 CALL                             R13 1 1
       94 LENGTH                           R14 R13
       95 LOADN                            R15 0
       96 JUMPIFNOTLT                      R15 R14 ; [+3]
       98 MOVE                             R9 R13
       99 JUMP                             ; [+20]
      100 JUMPIFNOT                        R12 ; [+19]
      101 NEWTABLE                         R14 0 1
      103 MOVE                             R15 R8
      104 SETLIST                          R14 R15 1 [1]
      106 MOVE                             R9 R14
      107 JUMP                             ; [+12]
      108 JUMPIFEQKNIL                     R8 ; [+11]
      110 JUMPIFNOT                        R12 ; [+9]
      111 NEWTABLE                         R13 0 1
      113 MOVE                             R14 R8
      114 SETLIST                          R13 R14 1 [1]
      116 MOVE                             R9 R13
      117 JUMPIFEQKNIL                     R7 ; [+2]
      119 SETTABLE                         R7 R10 R8
      120 MOVE                             R13 R12
      121 JUMPIFNOT                        R13 ; [+13]
      122 LOADB                            R13 1
      123 JUMPIFEQKS                       R7 K11 ["HumanoidRootPart"] ; [+11]
      125 LOADB                            R13 1
      126 GETUPVAL                         R14 8
      127 GETTABLEKS                       R14 R14 K12 ["Name"]
      129 JUMPIFEQKS                       R14 K11 ["HumanoidRootPart"] ; [+5]
      131 JUMPIFEQKS                       R7 K13 ["Torso"] ; [+2]
      133 LOADB                            R13 0 +1
      134 LOADB                            R13 1
      135 GETUPVAL                         R14 13
      136 GETTABLEKS                       R14 R14 K14 ["commit"]
      138 DUPTABLE                         R15 K24 [{"contentId", "time", "preEffectors", "preWorldSample", "preRigPose", "effectorHints", "primaryJointByEffector", "rotationIntent", "rootTipMove"}]
      139 GETTABLEKS                       R16 R0 K15 ["contentId"]
      141 SETTABLEKS                       R16 R15 K15 ["contentId"]
      143 GETTABLEKS                       R16 R0 K16 ["time"]
      145 SETTABLEKS                       R16 R15 K16 ["time"]
      147 SETTABLEKS                       R4 R15 K17 ["preEffectors"]
      149 SETTABLEKS                       R5 R15 K18 ["preWorldSample"]
      151 SETTABLEKS                       R6 R15 K19 ["preRigPose"]
      153 SETTABLEKS                       R9 R15 K20 ["effectorHints"]
      155 SETTABLEKS                       R10 R15 K21 ["primaryJointByEffector"]
      157 SETTABLEKS                       R11 R15 K22 ["rotationIntent"]
      159 SETTABLEKS                       R13 R15 K23 ["rootTipMove"]
      161 CALL                             R14 1 0
      162 RETURN                           R0 0

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
       23 CAPTURE                          REF R4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          REF R5
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          REF R7
       30 CAPTURE                          REF R6
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          REF R8
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 NEWCLOSURE                       R11 P2
       36 CAPTURE                          REF R2
       37 CAPTURE                          REF R3
       38 CAPTURE                          REF R4
       39 CAPTURE                          REF R5
       40 CAPTURE                          REF R6
       41 CAPTURE                          REF R7
       42 CAPTURE                          REF R8
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          VAL R0
       50 GETUPVAL                         R12 11
       51 GETTABLEKS                       R13 R0 K1 ["adornee"]
       53 NEWCLOSURE                       R14 P3
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R1
       56 MOVE                             R15 R10
       57 MOVE                             R16 R9
       58 MOVE                             R17 R11
       59 GETTABLEKS                       R18 R0 K2 ["onDeselected"]
       61 GETTABLEKS                       R19 R0 K3 ["tool"]
       63 CALL                             R12 7 1
       64 DUPTABLE                         R13 K7 [{"setTool", "reselect", "destroy"}]
       65 GETTABLEKS                       R14 R12 K4 ["setTool"]
       67 SETTABLEKS                       R14 R13 K4 ["setTool"]
       69 GETTABLEKS                       R14 R12 K5 ["reselect"]
       71 SETTABLEKS                       R14 R13 K5 ["reselect"]
       73 GETTABLEKS                       R14 R12 K6 ["destroy"]
       75 SETTABLEKS                       R14 R13 K6 ["destroy"]
       77 CLOSEUPVALS                      R2
       78 RETURN                           R13 1

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
       26 GETTABLEKS                       R3 R3 K10 ["DragEditSnapshot"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K8 ["Posing"]
       37 GETTABLEKS                       R4 R4 K11 ["EditJointFilter"]
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
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R8
      224 RETURN                           R20 1
