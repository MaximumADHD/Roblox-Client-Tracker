PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R2
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLE                         R11 R4 R10
       18 JUMPIFEQKNIL                     R11 ; [+17]
       20 GETTABLE                         R12 R3 R10
       21 JUMPIFEQKNIL                     R1 ; [+11]
       23 JUMPIFEQKNIL                     R12 ; [+9]
       25 GETTABLEKS                       R13 R12 K0 ["CFrame"]
       27 GETTABLEKS                       R15 R11 K0 ["CFrame"]
       29 NAMECALL                         R13 R13 K1 ["FuzzyEq"]
       31 CALL                             R13 2 1
       32 JUMPIF                           R13 ; [+3]
       33 GETTABLEKS                       R13 R11 K0 ["CFrame"]
       35 SETTABLE                         R13 R5 R10
       36 FORGLOOP                         R6 2 ; [-20]
       38 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K1 ["startTime"]
        2 SUBK                             R2 R3 K0 [0.0001]
        3 JUMPIFLT                         R0 R2 ; [+6]
        5 GETTABLEKS                       R3 R1 K2 ["endTime"]
        7 ADDK                             R2 R3 K0 [0.0001]
        8 JUMPIFNOTLT                      R2 R0 ; [+3]
       10 LOADN                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R1 K3 ["holdStartTime"]
       14 SUBK                             R2 R3 K0 [0.0001]
       15 JUMPIFNOTLT                      R0 R2 ; [+11]
       17 GETTABLEKS                       R4 R1 K1 ["startTime"]
       19 SUB                              R3 R0 R4
       20 GETTABLEKS                       R5 R1 K3 ["holdStartTime"]
       22 GETTABLEKS                       R6 R1 K1 ["startTime"]
       24 SUB                              R4 R5 R6
       25 DIV                              R2 R3 R4
       26 RETURN                           R2 1
       27 GETTABLEKS                       R3 R1 K4 ["holdEndTime"]
       29 ADDK                             R2 R3 K0 [0.0001]
       30 JUMPIFNOTLT                      R2 R0 ; [+11]
       32 GETTABLEKS                       R4 R1 K2 ["endTime"]
       34 SUB                              R3 R4 R0
       35 GETTABLEKS                       R5 R1 K2 ["endTime"]
       37 GETTABLEKS                       R6 R1 K4 ["holdEndTime"]
       39 SUB                              R4 R5 R6
       40 DIV                              R2 R3 R4
       41 RETURN                           R2 1
       42 LOADN                            R2 1
       43 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["holdJointSets"]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R0 K1 ["authored"]
        7 GETTABLEKS                       R6 R0 K2 ["baseline"]
        9 GETTABLEKS                       R7 R2 K3 ["rotateJointNames"]
       11 CALL                             R4 3 3
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K4 ["Rotation"]
       15 SETTABLE                         R9 R3 R7
       16 FORGLOOP                         R4 2 ; [-4]
       18 NEWTABLE                         R4 0 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R6 R0 K1 ["authored"]
       23 GETTABLEKS                       R7 R0 K2 ["baseline"]
       25 GETTABLEKS                       R8 R2 K5 ["moveJointNames"]
       27 CALL                             R5 3 3
       28 FORGPREP                         R5
       29 GETIMPORT                        R10 K8 [CFrame.new]
       31 GETTABLEKS                       R11 R9 K9 ["Position"]
       33 CALL                             R10 1 1
       34 SETTABLE                         R10 R4 R8
       35 FORGLOOP                         R5 2 ; [-7]
       37 DUPTABLE                         R5 K14 [{"bounds", "hierarchyTemplate", "rotations", "positions"}]
       38 GETTABLEKS                       R6 R0 K10 ["bounds"]
       40 SETTABLEKS                       R6 R5 K10 ["bounds"]
       42 SETTABLEKS                       R1 R5 K11 ["hierarchyTemplate"]
       44 SETTABLEKS                       R3 R5 K12 ["rotations"]
       46 SETTABLEKS                       R4 R5 K13 ["positions"]
       48 RETURN                           R5 1

PROTO_3:
        0 GETTABLE                         R4 R0 R1
        1 JUMPIFNOTEQKNIL                  R4 ; [+4]
        3 NEWTABLE                         R4 0 0
        5 SETTABLE                         R4 R0 R1
        6 DUPTABLE                         R7 K2 [{"target", "weight"}]
        7 SETTABLEKS                       R2 R7 K0 ["target"]
        9 SETTABLEKS                       R3 R7 K1 ["weight"]
       11 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       13 MOVE                             R6 R4
       14 GETIMPORT                        R5 K5 [table.insert]
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 1
        3 GETTABLEN                        R2 R1 1
        4 GETTABLEKS                       R2 R2 K0 ["target"]
        6 GETTABLEN                        R3 R1 1
        7 GETTABLEKS                       R3 R3 K1 ["weight"]
        9 LOADN                            R6 2
       10 LENGTH                           R4 R1
       11 LOADN                            R5 1
       12 FORNPREP                         R4
       13 GETTABLE                         R7 R1 R6
       14 GETTABLEKS                       R8 R7 K1 ["weight"]
       16 ADD                              R3 R3 R8
       17 GETTABLEKS                       R10 R7 K0 ["target"]
       19 GETTABLEKS                       R12 R7 K1 ["weight"]
       21 DIV                              R11 R12 R3
       22 NAMECALL                         R8 R2 K2 ["Lerp"]
       24 CALL                             R8 3 1
       25 MOVE                             R2 R8
       26 FORNLOOP                         R4
       27 MOVE                             R6 R2
       28 FASTCALL2K                       MATH_MIN R3 K3 ; [+5]
       30 MOVE                             R8 R3
       31 LOADK                            R9 K3 [1]
       32 GETIMPORT                        R7 K6 [math.min]
       34 CALL                             R7 2 1
       35 NAMECALL                         R4 R0 K2 ["Lerp"]
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["GetKeyframes"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantAnimationGenNewPosing"]
        6 JUMPIFNOT                        R4 ; [+8]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["fromSequence"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R3 R3 K3 ["parentNameByPoseName"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 NEWTABLE                         R4 0 0
       18 MOVE                             R5 R1
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K4 ["findNearestKeyframe"]
       25 MOVE                             R11 R2
       26 GETTABLEKS                       R12 R9 K5 ["poseTime"]
       28 CALL                             R10 2 1
       29 JUMPIF                           R10 ; [+2]
       30 GETTABLEKS                       R10 R9 K6 ["authored"]
       32 GETUPVAL                         R13 3
       33 MOVE                             R14 R9
       34 MOVE                             R15 R10
       35 CALL                             R13 2 1
       36 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       38 MOVE                             R12 R4
       39 GETIMPORT                        R11 K9 [table.insert]
       41 CALL                             R11 2 0
       42 FORGLOOP                         R5 2 ; [-21]
       44 MOVE                             R5 R1
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K10 ["ensureKeyframeAtTime"]
       51 MOVE                             R11 R0
       52 MOVE                             R12 R2
       53 GETTABLEKS                       R13 R9 K5 ["poseTime"]
       55 CALL                             R10 3 0
       56 FORGLOOP                         R5 2 ; [-9]
       58 MOVE                             R5 R2
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 NEWTABLE                         R10 0 0
       64 NEWTABLE                         R11 0 0
       66 NEWTABLE                         R12 0 0
       68 MOVE                             R13 R4
       69 LOADNIL                          R14
       70 LOADNIL                          R15
       71 FORGPREP                         R13
       72 GETUPVAL                         R18 4
       73 GETTABLEKS                       R19 R9 K11 ["Time"]
       75 GETTABLEKS                       R20 R17 K12 ["bounds"]
       77 CALL                             R18 2 1
       78 LOADN                            R19 0
       79 JUMPIFLE                         R18 R19 ; [+37]
       81 GETTABLEKS                       R19 R17 K13 ["rotations"]
       83 LOADNIL                          R20
       84 LOADNIL                          R21
       85 FORGPREP                         R19
       86 GETUPVAL                         R24 5
       87 MOVE                             R25 R10
       88 MOVE                             R26 R22
       89 MOVE                             R27 R23
       90 MOVE                             R28 R18
       91 CALL                             R24 4 0
       92 GETTABLE                         R24 R12 R22
       93 JUMPIF                           R24 ; [+2]
       94 GETTABLEKS                       R24 R17 K14 ["hierarchyTemplate"]
       96 SETTABLE                         R24 R12 R22
       97 FORGLOOP                         R19 2 ; [-12]
       99 GETTABLEKS                       R19 R17 K15 ["positions"]
      101 LOADNIL                          R20
      102 LOADNIL                          R21
      103 FORGPREP                         R19
      104 GETUPVAL                         R24 5
      105 MOVE                             R25 R11
      106 MOVE                             R26 R22
      107 MOVE                             R27 R23
      108 MOVE                             R28 R18
      109 CALL                             R24 4 0
      110 GETTABLE                         R24 R12 R22
      111 JUMPIF                           R24 ; [+2]
      112 GETTABLEKS                       R24 R17 K14 ["hierarchyTemplate"]
      114 SETTABLE                         R24 R12 R22
      115 FORGLOOP                         R19 2 ; [-12]
      117 FORGLOOP                         R13 2 ; [-46]
      119 MOVE                             R13 R12
      120 LOADNIL                          R14
      121 LOADNIL                          R15
      122 FORGPREP                         R13
      123 JUMPIFEQKNIL                     R3 ; [+9]
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K16 ["ensurePose"]
      128 MOVE                             R19 R9
      129 MOVE                             R20 R16
      130 MOVE                             R21 R3
      131 CALL                             R18 3 1
      132 JUMP                             ; [+7]
      133 GETUPVAL                         R18 2
      134 GETTABLEKS                       R18 R18 K17 ["DEPRECATED_ensurePose"]
      136 MOVE                             R19 R9
      137 MOVE                             R20 R16
      138 MOVE                             R21 R17
      139 CALL                             R18 3 1
      140 GETTABLEKS                       R19 R18 K18 ["CFrame"]
      142 GETUPVAL                         R20 6
      143 GETTABLEKS                       R21 R19 K19 ["Rotation"]
      145 GETTABLE                         R22 R10 R16
      146 CALL                             R20 2 1
      147 GETUPVAL                         R21 6
      148 GETIMPORT                        R22 K21 [CFrame.new]
      150 GETTABLEKS                       R23 R19 K22 ["Position"]
      152 CALL                             R22 1 1
      153 GETTABLE                         R23 R11 R16
      154 CALL                             R21 2 1
      155 GETTABLEKS                       R21 R21 K22 ["Position"]
      157 GETIMPORT                        R23 K21 [CFrame.new]
      159 MOVE                             R24 R21
      160 CALL                             R23 1 1
      161 MUL                              R22 R23 R20
      162 SETTABLEKS                       R22 R18 K18 ["CFrame"]
      164 FORGLOOP                         R13 2 ; [-42]
      166 FORGLOOP                         R5 2 ; [-105]
      168 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K9 ["ClipSkeleton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Flags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       29 GETTABLEKS                       R4 R4 K8 ["Posing"]
       31 GETTABLEKS                       R4 R4 K11 ["KeyframePoses"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       40 GETTABLEKS                       R5 R5 K8 ["Posing"]
       42 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R3 K13 ["poseMap"]
       47 DUPCLOSURE                       R6 K14 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R7 K15 [PROTO_1]
       50 DUPCLOSURE                       R8 K16 [PROTO_2]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R9 K17 [PROTO_3]
       53 DUPCLOSURE                       R10 K18 [PROTO_4]
       54 DUPCLOSURE                       R11 K19 [PROTO_5]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 RETURN                           R11 1
