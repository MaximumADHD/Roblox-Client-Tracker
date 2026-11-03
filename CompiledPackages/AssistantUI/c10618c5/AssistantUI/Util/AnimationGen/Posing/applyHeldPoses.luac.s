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
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K1 ["findNearestKeyframe"]
       12 MOVE                             R10 R2
       13 GETTABLEKS                       R11 R8 K2 ["poseTime"]
       15 CALL                             R9 2 1
       16 JUMPIF                           R9 ; [+2]
       17 GETTABLEKS                       R9 R8 K3 ["authored"]
       19 GETUPVAL                         R12 1
       20 MOVE                             R13 R8
       21 MOVE                             R14 R9
       22 CALL                             R12 2 1
       23 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       25 MOVE                             R11 R3
       26 GETIMPORT                        R10 K6 [table.insert]
       28 CALL                             R10 2 0
       29 FORGLOOP                         R4 2 ; [-21]
       31 MOVE                             R4 R1
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["ensureKeyframeAtTime"]
       38 MOVE                             R10 R0
       39 MOVE                             R11 R2
       40 GETTABLEKS                       R12 R8 K2 ["poseTime"]
       42 CALL                             R9 3 0
       43 FORGLOOP                         R4 2 ; [-9]
       45 MOVE                             R4 R2
       46 LOADNIL                          R5
       47 LOADNIL                          R6
       48 FORGPREP                         R4
       49 NEWTABLE                         R9 0 0
       51 NEWTABLE                         R10 0 0
       53 NEWTABLE                         R11 0 0
       55 MOVE                             R12 R3
       56 LOADNIL                          R13
       57 LOADNIL                          R14
       58 FORGPREP                         R12
       59 GETUPVAL                         R17 2
       60 GETTABLEKS                       R18 R8 K8 ["Time"]
       62 GETTABLEKS                       R19 R16 K9 ["bounds"]
       64 CALL                             R17 2 1
       65 LOADN                            R18 0
       66 JUMPIFLE                         R17 R18 ; [+37]
       68 GETTABLEKS                       R18 R16 K10 ["rotations"]
       70 LOADNIL                          R19
       71 LOADNIL                          R20
       72 FORGPREP                         R18
       73 GETUPVAL                         R23 3
       74 MOVE                             R24 R9
       75 MOVE                             R25 R21
       76 MOVE                             R26 R22
       77 MOVE                             R27 R17
       78 CALL                             R23 4 0
       79 GETTABLE                         R23 R11 R21
       80 JUMPIF                           R23 ; [+2]
       81 GETTABLEKS                       R23 R16 K11 ["hierarchyTemplate"]
       83 SETTABLE                         R23 R11 R21
       84 FORGLOOP                         R18 2 ; [-12]
       86 GETTABLEKS                       R18 R16 K12 ["positions"]
       88 LOADNIL                          R19
       89 LOADNIL                          R20
       90 FORGPREP                         R18
       91 GETUPVAL                         R23 3
       92 MOVE                             R24 R10
       93 MOVE                             R25 R21
       94 MOVE                             R26 R22
       95 MOVE                             R27 R17
       96 CALL                             R23 4 0
       97 GETTABLE                         R23 R11 R21
       98 JUMPIF                           R23 ; [+2]
       99 GETTABLEKS                       R23 R16 K11 ["hierarchyTemplate"]
      101 SETTABLE                         R23 R11 R21
      102 FORGLOOP                         R18 2 ; [-12]
      104 FORGLOOP                         R12 2 ; [-46]
      106 MOVE                             R12 R11
      107 LOADNIL                          R13
      108 LOADNIL                          R14
      109 FORGPREP                         R12
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R17 R17 K13 ["ensurePose"]
      113 MOVE                             R18 R8
      114 MOVE                             R19 R15
      115 MOVE                             R20 R16
      116 CALL                             R17 3 1
      117 GETTABLEKS                       R18 R17 K14 ["CFrame"]
      119 GETUPVAL                         R19 4
      120 GETTABLEKS                       R20 R18 K15 ["Rotation"]
      122 GETTABLE                         R21 R9 R15
      123 CALL                             R19 2 1
      124 GETUPVAL                         R20 4
      125 GETIMPORT                        R21 K17 [CFrame.new]
      127 GETTABLEKS                       R22 R18 K18 ["Position"]
      129 CALL                             R21 1 1
      130 GETTABLE                         R22 R10 R15
      131 CALL                             R20 2 1
      132 GETTABLEKS                       R20 R20 K18 ["Position"]
      134 GETIMPORT                        R22 K17 [CFrame.new]
      136 MOVE                             R23 R20
      137 CALL                             R22 1 1
      138 MUL                              R21 R22 R19
      139 SETTABLEKS                       R21 R17 K14 ["CFrame"]
      141 FORGLOOP                         R12 2 ; [-32]
      143 FORGLOOP                         R4 2 ; [-95]
      145 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K9 ["KeyframePoses"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["PoseInterval"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R1 K11 ["poseMap"]
       31 DUPCLOSURE                       R4 K12 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R5 K13 [PROTO_1]
       34 DUPCLOSURE                       R6 K14 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R7 K15 [PROTO_3]
       37 DUPCLOSURE                       R8 K16 [PROTO_4]
       38 DUPCLOSURE                       R9 K17 [PROTO_5]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 RETURN                           R9 1
