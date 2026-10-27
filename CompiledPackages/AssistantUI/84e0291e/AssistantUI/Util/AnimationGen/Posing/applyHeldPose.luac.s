PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 SUB                              R1 R0 R2
        3 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R6 0 0
        2 NEWTABLE                         R7 0 0
        4 NEWTABLE                         R8 0 0
        6 GETTABLEKS                       R10 R5 K0 ["rotateJointNames"]
        8 NEWTABLE                         R11 0 0
       10 MOVE                             R12 R10
       11 LOADNIL                          R13
       12 LOADNIL                          R14
       13 FORGPREP                         R12
       14 LOADB                            R17 1
       15 SETTABLE                         R17 R11 R16
       16 FORGLOOP                         R12 2 ; [-3]
       18 MOVE                             R9 R11
       19 GETTABLEKS                       R11 R5 K1 ["moveJointNames"]
       21 NEWTABLE                         R12 0 0
       23 MOVE                             R13 R11
       24 LOADNIL                          R14
       25 LOADNIL                          R15
       26 FORGPREP                         R13
       27 LOADB                            R18 1
       28 SETTABLE                         R18 R12 R17
       29 FORGLOOP                         R13 2 ; [-3]
       31 MOVE                             R10 R12
       32 GETUPVAL                         R11 0
       33 MOVE                             R12 R1
       34 MOVE                             R13 R2
       35 GETTABLEKS                       R14 R5 K0 ["rotateJointNames"]
       37 CALL                             R11 3 1
       38 GETUPVAL                         R12 0
       39 MOVE                             R13 R1
       40 MOVE                             R14 R2
       41 GETTABLEKS                       R15 R5 K1 ["moveJointNames"]
       43 CALL                             R12 3 1
       44 MOVE                             R13 R11
       45 LOADNIL                          R14
       46 LOADNIL                          R15
       47 FORGPREP                         R13
       48 GETTABLE                         R18 R10 R16
       49 JUMPIFNOT                        R18 ; [+2]
       50 SETTABLE                         R17 R6 R16
       51 JUMP                             ; [+1]
       52 SETTABLE                         R17 R7 R16
       53 FORGLOOP                         R13 2 ; [-6]
       55 MOVE                             R13 R12
       56 LOADNIL                          R14
       57 LOADNIL                          R15
       58 FORGPREP                         R13
       59 GETTABLE                         R18 R11 R16
       60 JUMPIF                           R18 ; [+5]
       61 GETTABLE                         R18 R9 R16
       62 JUMPIFNOT                        R18 ; [+2]
       63 SETTABLE                         R17 R6 R16
       64 JUMP                             ; [+1]
       65 SETTABLE                         R17 R8 R16
       66 FORGLOOP                         R13 2 ; [-8]
       68 NAMECALL                         R13 R0 K2 ["GetKeyframes"]
       70 CALL                             R13 1 1
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K3 ["findNearestKeyframe"]
       74 MOVE                             R16 R13
       75 MOVE                             R17 R3
       76 CALL                             R15 2 1
       77 OR                               R14 R15 R1
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R15 R15 K4 ["ensureKeyframeAtTime"]
       81 MOVE                             R16 R0
       82 MOVE                             R17 R13
       83 MOVE                             R18 R3
       84 CALL                             R15 3 0
       85 NAMECALL                         R15 R0 K2 ["GetKeyframes"]
       87 CALL                             R15 1 1
       88 MOVE                             R13 R15
       89 GETIMPORT                        R15 K7 [table.sort]
       91 MOVE                             R16 R13
       92 DUPCLOSURE                       R17 K8 [PROTO_4]
       93 CALL                             R15 2 0
       94 MOVE                             R15 R13
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 FORGPREP                         R15
       98 GETUPVAL                         R20 2
       99 GETTABLEKS                       R21 R19 K9 ["Time"]
      101 MOVE                             R22 R4
      102 CALL                             R20 2 1
      103 LOADN                            R21 0
      104 JUMPIFLE                         R20 R21 ; [+87]
      106 MOVE                             R21 R6
      107 LOADNIL                          R22
      108 LOADNIL                          R23
      109 FORGPREP                         R21
      110 GETUPVAL                         R26 1
      111 GETTABLEKS                       R26 R26 K10 ["ensurePose"]
      113 MOVE                             R27 R19
      114 MOVE                             R28 R24
      115 MOVE                             R29 R14
      116 CALL                             R26 3 1
      117 GETTABLEKS                       R27 R26 K11 ["CFrame"]
      119 MOVE                             R29 R25
      120 MOVE                             R30 R20
      121 NAMECALL                         R27 R27 K12 ["Lerp"]
      123 CALL                             R27 3 1
      124 SETTABLEKS                       R27 R26 K11 ["CFrame"]
      126 FORGLOOP                         R21 2 ; [-17]
      128 MOVE                             R21 R7
      129 LOADNIL                          R22
      130 LOADNIL                          R23
      131 FORGPREP                         R21
      132 GETUPVAL                         R26 1
      133 GETTABLEKS                       R26 R26 K10 ["ensurePose"]
      135 MOVE                             R27 R19
      136 MOVE                             R28 R24
      137 MOVE                             R29 R14
      138 CALL                             R26 3 1
      139 GETTABLEKS                       R27 R26 K11 ["CFrame"]
      141 GETIMPORT                        R29 K14 [CFrame.new]
      143 GETTABLEKS                       R30 R27 K15 ["Position"]
      145 CALL                             R29 1 1
      146 GETTABLEKS                       R31 R25 K15 ["Position"]
      148 SUB                              R30 R25 R31
      149 MUL                              R28 R29 R30
      150 MOVE                             R31 R28
      151 MOVE                             R32 R20
      152 NAMECALL                         R29 R27 K12 ["Lerp"]
      154 CALL                             R29 3 1
      155 SETTABLEKS                       R29 R26 K11 ["CFrame"]
      157 FORGLOOP                         R21 2 ; [-26]
      159 MOVE                             R21 R8
      160 LOADNIL                          R22
      161 LOADNIL                          R23
      162 FORGPREP                         R21
      163 GETUPVAL                         R26 1
      164 GETTABLEKS                       R26 R26 K10 ["ensurePose"]
      166 MOVE                             R27 R19
      167 MOVE                             R28 R24
      168 MOVE                             R29 R14
      169 CALL                             R26 3 1
      170 GETTABLEKS                       R27 R26 K11 ["CFrame"]
      172 GETTABLEKS                       R28 R27 K15 ["Position"]
      174 GETTABLEKS                       R30 R25 K15 ["Position"]
      176 MOVE                             R31 R20
      177 NAMECALL                         R28 R28 K12 ["Lerp"]
      179 CALL                             R28 3 1
      180 GETIMPORT                        R30 K14 [CFrame.new]
      182 MOVE                             R31 R28
      183 CALL                             R30 1 1
      184 GETTABLEKS                       R32 R27 K15 ["Position"]
      186 SUB                              R31 R27 R32
      187 MUL                              R29 R30 R31
      188 SETTABLEKS                       R29 R26 K11 ["CFrame"]
      190 FORGLOOP                         R21 2 ; [-28]
      192 FORGLOOP                         R15 2 ; [-95]
      194 RETURN                           R0 0

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
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R6 K14 [PROTO_2]
       35 DUPCLOSURE                       R7 K15 [PROTO_3]
       36 DUPCLOSURE                       R8 K16 [PROTO_5]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R6
       40 RETURN                           R8 1
