PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Bone"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 MOVE                             R1 R0
        6 JUMPIFEQKNIL                     R1 ; [+19]
        8 LOADK                            R4 K0 ["Bone"]
        9 NAMECALL                         R2 R1 K1 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+13]
       13 GETTABLEKS                       R3 R1 K2 ["Name"]
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R2 R4 R3
       17 JUMPIFEQKNIL                     R2 ; [+5]
       19 GETTABLEKS                       R3 R1 K2 ["Name"]
       21 MOVE                             R4 R2
       22 RETURN                           R3 2
       23 GETTABLEKS                       R1 R1 K3 ["Parent"]
       25 JUMPBACK                         ; [-20]
       26 GETTABLEKS                       R2 R0 K2 ["Name"]
       28 LOADNIL                          R3
       29 RETURN                           R2 2
       30 LOADK                            R3 K4 ["Motor6D"]
       31 NAMECALL                         R1 R0 K1 ["IsA"]
       33 CALL                             R1 2 1
       34 JUMPIFNOT                        R1 ; [+32]
       35 GETTABLEKS                       R1 R0 K5 ["Part1"]
       37 JUMPIFEQKNIL                     R1 ; [+11]
       39 GETTABLEKS                       R3 R1 K2 ["Name"]
       41 GETUPVAL                         R4 0
       42 GETTABLE                         R2 R4 R3
       43 JUMPIFEQKNIL                     R2 ; [+5]
       45 GETTABLEKS                       R3 R1 K2 ["Name"]
       47 MOVE                             R4 R2
       48 RETURN                           R3 2
       49 GETTABLEKS                       R3 R0 K2 ["Name"]
       51 GETUPVAL                         R4 0
       52 GETTABLE                         R2 R4 R3
       53 JUMPIFEQKNIL                     R2 ; [+5]
       55 GETTABLEKS                       R3 R0 K2 ["Name"]
       57 MOVE                             R4 R2
       58 RETURN                           R3 2
       59 JUMPIFEQKNIL                     R1 ; [+4]
       61 GETTABLEKS                       R3 R1 K2 ["Name"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R3
       65 LOADNIL                          R4
       66 RETURN                           R3 2
       67 LOADK                            R3 K6 ["AnimationConstraint"]
       68 NAMECALL                         R1 R0 K1 ["IsA"]
       70 CALL                             R1 2 1
       71 JUMPIFNOT                        R1 ; [+16]
       72 GETTABLEKS                       R1 R0 K7 ["Attachment1"]
       74 JUMPIFEQKNIL                     R1 ; [+13]
       76 GETTABLEKS                       R2 R1 K3 ["Parent"]
       78 JUMPIFEQKNIL                     R2 ; [+9]
       80 GETTABLEKS                       R2 R1 K3 ["Parent"]
       82 GETTABLEKS                       R2 R2 K2 ["Name"]
       84 MOVE                             R3 R2
       85 GETUPVAL                         R5 0
       86 GETTABLE                         R4 R5 R2
       87 RETURN                           R3 2
       88 LOADNIL                          R1
       89 LOADNIL                          R2
       90 RETURN                           R1 2

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
        8 GETTABLEKS                       R5 R5 K1 ["effectorChainPoseNames"]
       10 MOVE                             R6 R1
       11 CALL                             R5 1 1
       12 JUMPIFEQKNIL                     R5 ; [+14]
       14 MOVE                             R6 R5
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 GETTABLE                         R11 R4 R10
       19 JUMPIFEQKNIL                     R11 ; [+5]
       21 GETUPVAL                         R12 2
       22 MOVE                             R13 R11
       23 CALL                             R12 1 1
       24 SETTABLE                         R12 R3 R10
       25 FORGLOOP                         R6 2 ; [-8]
       27 JUMPIFEQKNIL                     R2 ; [+11]
       29 GETTABLE                         R6 R3 R2
       30 JUMPIFNOTEQKNIL                  R6 ; [+8]
       32 GETTABLE                         R6 R4 R2
       33 JUMPIFEQKNIL                     R6 ; [+5]
       35 GETUPVAL                         R7 2
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 SETTABLE                         R7 R3 R2
       39 RETURN                           R3 1

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
        9 JUMPIFNOTEQKNIL                  R3 ; [+62]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["stepRig"]
       14 GETTABLEKS                       R5 R2 K2 ["rig"]
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 4
       19 CALL                             R4 1 1
       20 MOVE                             R3 R4
       21 SETUPVAL                         R3 2
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K3 ["Transform"]
       25 SETUPVAL                         R4 5
       26 GETUPVAL                         R4 6
       27 GETUPVAL                         R5 4
       28 CALL                             R4 1 2
       29 JUMPIFEQKNIL                     R5 ; [+9]
       31 GETUPVAL                         R6 8
       32 GETTABLEKS                       R7 R2 K2 ["rig"]
       34 MOVE                             R8 R5
       35 MOVE                             R9 R4
       36 CALL                             R6 3 1
       37 SETUPVAL                         R6 7
       38 JUMP                             ; [+13]
       39 JUMPIFEQKNIL                     R4 ; [+9]
       41 NEWTABLE                         R6 1 0
       43 GETUPVAL                         R7 9
       44 GETUPVAL                         R8 4
       45 CALL                             R7 1 1
       46 SETTABLE                         R7 R6 R4
       47 SETUPVAL                         R6 7
       48 JUMP                             ; [+3]
       49 NEWTABLE                         R6 0 0
       51 SETUPVAL                         R6 7
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K4 ["sampleWorld"]
       55 GETTABLEKS                       R7 R2 K2 ["rig"]
       57 GETTABLEKS                       R8 R2 K5 ["contentId"]
       59 CALL                             R6 2 1
       60 SETUPVAL                         R6 10
       61 GETUPVAL                         R6 12
       62 GETTABLEKS                       R6 R6 K6 ["snapshotEffectorsFromSample"]
       64 GETUPVAL                         R7 10
       65 CALL                             R6 1 1
       66 SETUPVAL                         R6 11
       67 GETUPVAL                         R6 14
       68 GETTABLEKS                       R7 R2 K2 ["rig"]
       70 CALL                             R6 1 1
       71 SETUPVAL                         R6 13
       72 GETUPVAL                         R4 15
       73 GETUPVAL                         R5 4
       74 MUL                              R6 R0 R3
       75 CALL                             R4 2 0
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K1 ["stepRig"]
       79 GETTABLEKS                       R5 R2 K2 ["rig"]
       81 CALL                             R4 1 0
       82 RETURN                           R0 0

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
       38 CALL                             R7 1 2
       39 LOADNIL                          R9
       40 NEWTABLE                         R10 0 0
       42 LOADNIL                          R11
       43 GETUPVAL                         R13 8
       44 GETTABLEKS                       R13 R13 K0 ["Transform"]
       46 NAMECALL                         R15 R2 K1 ["Inverse"]
       48 CALL                             R15 1 1
       49 MUL                              R14 R15 R13
       50 NAMECALL                         R15 R14 K2 ["ToAxisAngle"]
       52 CALL                             R15 1 2
       53 LOADB                            R12 1
       54 GETTABLEKS                       R17 R14 K3 ["Position"]
       56 GETTABLEKS                       R17 R17 K4 ["Magnitude"]
       58 LOADK                            R18 K5 [0.001]
       59 JUMPIFLE                         R18 R17 ; [+6]
       61 LOADK                            R17 K6 [0.008726646259971648]
       62 JUMPIFLE                         R17 R16 ; [+2]
       64 LOADB                            R12 0 +1
       65 LOADB                            R12 1
       66 JUMPIFEQKNIL                     R8 ; [+35]
       68 GETUPVAL                         R13 9
       69 GETTABLEKS                       R13 R13 K7 ["FFlagAssistantAnimationGenRotationIntentV3"]
       71 JUMPIFNOT                        R13 ; [+30]
       72 JUMPIFEQKNIL                     R7 ; [+2]
       74 SETTABLE                         R7 R10 R8
       75 GETUPVAL                         R13 10
       76 GETTABLEKS                       R14 R0 K8 ["rig"]
       78 MOVE                             R15 R7
       79 MOVE                             R16 R8
       80 MOVE                             R17 R3
       81 CALL                             R13 4 1
       82 MOVE                             R11 R13
       83 GETUPVAL                         R13 11
       84 GETTABLEKS                       R13 R13 K9 ["effectorsFromRotationIntent"]
       86 MOVE                             R14 R11
       87 CALL                             R13 1 1
       88 LENGTH                           R14 R13
       89 LOADN                            R15 0
       90 JUMPIFNOTLT                      R15 R14 ; [+3]
       92 MOVE                             R9 R13
       93 JUMP                             ; [+20]
       94 JUMPIFNOT                        R12 ; [+19]
       95 NEWTABLE                         R14 0 1
       97 MOVE                             R15 R8
       98 SETLIST                          R14 R15 1 [1]
      100 MOVE                             R9 R14
      101 JUMP                             ; [+12]
      102 JUMPIFEQKNIL                     R8 ; [+11]
      104 JUMPIFNOT                        R12 ; [+9]
      105 NEWTABLE                         R13 0 1
      107 MOVE                             R14 R8
      108 SETLIST                          R13 R14 1 [1]
      110 MOVE                             R9 R13
      111 JUMPIFEQKNIL                     R7 ; [+2]
      113 SETTABLE                         R7 R10 R8
      114 MOVE                             R13 R12
      115 JUMPIFNOT                        R13 ; [+13]
      116 LOADB                            R13 1
      117 JUMPIFEQKS                       R7 K10 ["HumanoidRootPart"] ; [+11]
      119 LOADB                            R13 1
      120 GETUPVAL                         R14 8
      121 GETTABLEKS                       R14 R14 K11 ["Name"]
      123 JUMPIFEQKS                       R14 K10 ["HumanoidRootPart"] ; [+5]
      125 JUMPIFEQKS                       R7 K12 ["Torso"] ; [+2]
      127 LOADB                            R13 0 +1
      128 LOADB                            R13 1
      129 GETUPVAL                         R14 12
      130 GETTABLEKS                       R14 R14 K13 ["commit"]
      132 DUPTABLE                         R15 K23 [{"contentId", "time", "preEffectors", "preWorldSample", "preRigPose", "effectorHints", "primaryJointByEffector", "rotationIntent", "rootTipMove"}]
      133 GETTABLEKS                       R16 R0 K14 ["contentId"]
      135 SETTABLEKS                       R16 R15 K14 ["contentId"]
      137 GETTABLEKS                       R16 R0 K15 ["time"]
      139 SETTABLEKS                       R16 R15 K15 ["time"]
      141 SETTABLEKS                       R4 R15 K16 ["preEffectors"]
      143 SETTABLEKS                       R5 R15 K17 ["preWorldSample"]
      145 SETTABLEKS                       R6 R15 K18 ["preRigPose"]
      147 SETTABLEKS                       R9 R15 K19 ["effectorHints"]
      149 SETTABLEKS                       R10 R15 K20 ["primaryJointByEffector"]
      151 SETTABLEKS                       R11 R15 K21 ["rotationIntent"]
      153 SETTABLEKS                       R13 R15 K22 ["rootTipMove"]
      155 CALL                             R14 1 0
      156 RETURN                           R0 0

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
       25 CAPTURE                          REF R5
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          REF R7
       29 CAPTURE                          REF R6
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          REF R8
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NEWCLOSURE                       R11 P2
       35 CAPTURE                          REF R2
       36 CAPTURE                          REF R3
       37 CAPTURE                          REF R4
       38 CAPTURE                          REF R5
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R7
       41 CAPTURE                          REF R8
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R0
       48 GETUPVAL                         R12 10
       49 GETTABLEKS                       R13 R0 K1 ["adornee"]
       51 NEWCLOSURE                       R14 P3
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R1
       54 MOVE                             R15 R10
       55 MOVE                             R16 R9
       56 MOVE                             R17 R11
       57 GETTABLEKS                       R18 R0 K2 ["tool"]
       59 CALL                             R12 6 1
       60 DUPTABLE                         R13 K6 [{"setTool", "reselect", "destroy"}]
       61 GETTABLEKS                       R14 R12 K3 ["setTool"]
       63 SETTABLEKS                       R14 R13 K3 ["setTool"]
       65 GETTABLEKS                       R14 R12 K4 ["reselect"]
       67 SETTABLEKS                       R14 R13 K4 ["reselect"]
       69 GETTABLEKS                       R14 R12 K5 ["destroy"]
       71 SETTABLEKS                       R14 R13 K5 ["destroy"]
       73 CLOSEUPVALS                      R2
       74 RETURN                           R13 1

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
       56 GETTABLEKS                       R7 R0 K15 ["Types"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K13 ["Parent"]
       65 GETTABLEKS                       R8 R8 K16 ["createPartDragger"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Util"]
       72 GETTABLEKS                       R9 R9 K7 ["AnimationGen"]
       74 GETTABLEKS                       R9 R9 K8 ["Posing"]
       76 GETTABLEKS                       R9 R9 K17 ["getRigJointTransforms"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R5 K18 ["getJointWorldCFrame"]
       81 GETTABLEKS                       R10 R5 K19 ["setJointWorldCFrame"]
       83 NEWTABLE                         R11 32 0
       85 LOADK                            R12 K20 ["left_hand"]
       86 SETTABLEKS                       R12 R11 K21 ["LeftHand"]
       88 LOADK                            R12 K20 ["left_hand"]
       89 SETTABLEKS                       R12 R11 K22 ["LeftLowerArm"]
       91 LOADK                            R12 K20 ["left_hand"]
       92 SETTABLEKS                       R12 R11 K23 ["LeftUpperArm"]
       94 LOADK                            R12 K24 ["right_hand"]
       95 SETTABLEKS                       R12 R11 K25 ["RightHand"]
       97 LOADK                            R12 K24 ["right_hand"]
       98 SETTABLEKS                       R12 R11 K26 ["RightLowerArm"]
      100 LOADK                            R12 K24 ["right_hand"]
      101 SETTABLEKS                       R12 R11 K27 ["RightUpperArm"]
      103 LOADK                            R12 K20 ["left_hand"]
      104 SETTABLEKS                       R12 R11 K28 ["LeftShoulder"]
      106 LOADK                            R12 K24 ["right_hand"]
      107 SETTABLEKS                       R12 R11 K29 ["RightShoulder"]
      109 LOADK                            R12 K30 ["left_foot"]
      110 SETTABLEKS                       R12 R11 K31 ["LeftFoot"]
      112 LOADK                            R12 K30 ["left_foot"]
      113 SETTABLEKS                       R12 R11 K32 ["LeftLowerLeg"]
      115 LOADK                            R12 K30 ["left_foot"]
      116 SETTABLEKS                       R12 R11 K33 ["LeftUpperLeg"]
      118 LOADK                            R12 K34 ["right_foot"]
      119 SETTABLEKS                       R12 R11 K35 ["RightFoot"]
      121 LOADK                            R12 K34 ["right_foot"]
      122 SETTABLEKS                       R12 R11 K36 ["RightLowerLeg"]
      124 LOADK                            R12 K34 ["right_foot"]
      125 SETTABLEKS                       R12 R11 K37 ["RightUpperLeg"]
      127 LOADK                            R12 K38 ["spine"]
      128 SETTABLEKS                       R12 R11 K39 ["LowerTorso"]
      130 LOADK                            R12 K38 ["spine"]
      131 SETTABLEKS                       R12 R11 K40 ["UpperTorso"]
      133 LOADK                            R12 K38 ["spine"]
      134 SETTABLEKS                       R12 R11 K41 ["Waist"]
      136 LOADK                            R12 K38 ["spine"]
      137 SETTABLEKS                       R12 R11 K42 ["Head"]
      139 LOADK                            R12 K38 ["spine"]
      140 SETTABLEKS                       R12 R11 K43 ["Neck"]
      142 LOADK                            R12 K20 ["left_hand"]
      143 SETTABLEKS                       R12 R11 K44 ["Left Arm"]
      145 LOADK                            R12 K24 ["right_hand"]
      146 SETTABLEKS                       R12 R11 K45 ["Right Arm"]
      148 LOADK                            R12 K30 ["left_foot"]
      149 SETTABLEKS                       R12 R11 K46 ["Left Leg"]
      151 LOADK                            R12 K34 ["right_foot"]
      152 SETTABLEKS                       R12 R11 K47 ["Right Leg"]
      154 LOADK                            R12 K20 ["left_hand"]
      155 SETTABLEKS                       R12 R11 K48 ["LeftArm"]
      157 LOADK                            R12 K24 ["right_hand"]
      158 SETTABLEKS                       R12 R11 K49 ["RightArm"]
      160 LOADK                            R12 K30 ["left_foot"]
      161 SETTABLEKS                       R12 R11 K50 ["LeftLeg"]
      163 LOADK                            R12 K34 ["right_foot"]
      164 SETTABLEKS                       R12 R11 K51 ["RightLeg"]
      166 DUPCLOSURE                       R12 K52 [PROTO_0]
      167 CAPTURE                          VAL R11
      168 DUPCLOSURE                       R13 K53 [PROTO_1]
      169 CAPTURE                          VAL R11
      170 DUPCLOSURE                       R14 K54 [PROTO_2]
      171 DUPCLOSURE                       R15 K55 [PROTO_3]
      172 DUPCLOSURE                       R16 K56 [PROTO_4]
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R14
      176 DUPCLOSURE                       R17 K57 [PROTO_5]
      177 DUPCLOSURE                       R18 K58 [PROTO_6]
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R2
      180 DUPCLOSURE                       R19 K59 [PROTO_11]
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R7
      192 RETURN                           R19 1
