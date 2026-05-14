PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["getTrack"]
        8 MOVE                             R4 R2
        9 GETUPVAL                         R5 1
       10 GETUPVAL                         R6 2
       11 CALL                             R3 3 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+69]
       14 GETUPVAL                         R5 2
       15 GETTABLEN                        R4 R5 1
       16 GETUPVAL                         R6 3
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R7 R7 K3 ["TRACK_TYPES"]
       20 GETTABLEKS                       R7 R7 K4 ["Facs"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+7]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K3 ["TRACK_TYPES"]
       27 GETTABLEKS                       R5 R5 K4 ["Facs"]
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K3 ["TRACK_TYPES"]
       33 GETTABLEKS                       R5 R5 K5 ["CFrame"]
       35 GETUPVAL                         R8 5
       36 GETUPVAL                         R9 1
       37 MOVE                             R10 R4
       38 MOVE                             R11 R5
       39 GETUPVAL                         R12 6
       40 LOADNIL                          R13
       41 GETUPVAL                         R14 7
       42 CALL                             R8 6 -1
       43 NAMECALL                         R6 R0 K6 ["dispatch"]
       45 CALL                             R6 -1 0
       46 DUPTABLE                         R6 K8 [{"Value"}]
       47 GETUPVAL                         R7 8
       48 SETTABLEKS                       R7 R6 K7 ["Value"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K9 ["isChannelAnimation"]
       53 MOVE                             R8 R2
       54 CALL                             R7 1 1
       55 JUMPIFNOT                        R7 ; [+5]
       56 GETIMPORT                        R7 K13 [Enum.KeyInterpolationMode.Cubic]
       58 SETTABLEKS                       R7 R6 K14 ["InterpolationMode"]
       60 JUMP                             ; [+8]
       61 GETIMPORT                        R7 K17 [Enum.PoseEasingStyle.Linear]
       63 SETTABLEKS                       R7 R6 K18 ["EasingStyle"]
       65 GETIMPORT                        R7 K21 [Enum.PoseEasingDirection.In]
       67 SETTABLEKS                       R7 R6 K22 ["EasingDirection"]
       69 GETUPVAL                         R9 9
       70 GETUPVAL                         R10 1
       71 GETUPVAL                         R11 2
       72 GETUPVAL                         R12 3
       73 GETUPVAL                         R13 6
       74 GETUPVAL                         R14 10
       75 MOVE                             R15 R6
       76 GETUPVAL                         R16 7
       77 CALL                             R9 7 -1
       78 NAMECALL                         R7 R0 K6 ["dispatch"]
       80 CALL                             R7 -1 0
       81 JUMP                             ; [+51]
       82 GETTABLEKS                       R4 R3 K23 ["Data"]
       84 JUMPIFNOT                        R4 ; [+16]
       85 GETUPVAL                         R6 10
       86 GETTABLE                         R5 R4 R6
       87 JUMPIFNOT                        R5 ; [+13]
       88 GETUPVAL                         R7 11
       89 GETUPVAL                         R8 1
       90 GETUPVAL                         R9 2
       91 GETUPVAL                         R10 10
       92 DUPTABLE                         R11 K8 [{"Value"}]
       93 GETUPVAL                         R12 8
       94 SETTABLEKS                       R12 R11 K7 ["Value"]
       96 CALL                             R7 4 -1
       97 NAMECALL                         R5 R0 K6 ["dispatch"]
       99 CALL                             R5 -1 0
      100 JUMP                             ; [+32]
      101 DUPTABLE                         R5 K8 [{"Value"}]
      102 GETUPVAL                         R6 8
      103 SETTABLEKS                       R6 R5 K7 ["Value"]
      105 GETTABLEKS                       R6 R3 K24 ["IsCurveTrack"]
      107 JUMPIFNOT                        R6 ; [+5]
      108 GETIMPORT                        R6 K13 [Enum.KeyInterpolationMode.Cubic]
      110 SETTABLEKS                       R6 R5 K14 ["InterpolationMode"]
      112 JUMP                             ; [+8]
      113 GETIMPORT                        R6 K17 [Enum.PoseEasingStyle.Linear]
      115 SETTABLEKS                       R6 R5 K18 ["EasingStyle"]
      117 GETIMPORT                        R6 K21 [Enum.PoseEasingDirection.In]
      119 SETTABLEKS                       R6 R5 K22 ["EasingDirection"]
      121 GETUPVAL                         R8 9
      122 GETUPVAL                         R9 1
      123 GETUPVAL                         R10 2
      124 GETUPVAL                         R11 3
      125 GETUPVAL                         R12 6
      126 GETUPVAL                         R13 10
      127 MOVE                             R14 R5
      128 GETUPVAL                         R15 7
      129 CALL                             R8 7 -1
      130 NAMECALL                         R6 R0 K6 ["dispatch"]
      132 CALL                             R6 -1 0
      133 GETUPVAL                         R6 12
      134 GETUPVAL                         R7 10
      135 CALL                             R6 1 -1
      136 NAMECALL                         R4 R0 K6 ["dispatch"]
      138 CALL                             R4 -1 0
      139 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R7 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R6
        9 CAPTURE                          VAL R5
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Thunks"]
       13 GETTABLEKS                       R2 R2 K8 ["AddKeyframe"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Thunks"]
       22 GETTABLEKS                       R3 R3 K9 ["SetKeyframeData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K10 ["AddTrack"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Thunks"]
       40 GETTABLEKS                       R5 R5 K11 ["Playback"]
       42 GETTABLEKS                       R5 R5 K12 ["StepAnimation"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K13 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["AnimationData"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K13 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["Constants"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K16 [PROTO_1]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 RETURN                           R7 1
