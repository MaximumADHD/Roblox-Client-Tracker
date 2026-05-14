PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 LOADK                            R4 K1 ["FaceCapture"]
        4 LOADK                            R5 K2 ["DefaultFaceRecordingName"]
        5 NAMECALL                         R2 R1 K3 ["getText"]
        7 CALL                             R2 3 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["new"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K6 [pairs]
       15 GETTABLEKS                       R5 R3 K7 ["Instances"]
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 GETTABLEKS                       R9 R8 K8 ["Tracks"]
       21 GETIMPORT                        R10 K6 [pairs]
       23 GETUPVAL                         R11 2
       24 CALL                             R10 1 3
       25 FORGPREP_NEXT                    R10
       26 GETIMPORT                        R15 K6 [pairs]
       28 MOVE                             R16 R14
       29 CALL                             R15 1 3
       30 FORGPREP_NEXT                    R15
       31 GETTABLE                         R20 R9 R18
       32 JUMPIFNOTEQKNIL                  R20 ; [+40]
       34 JUMPIFNOTEQKS                    R18 K9 ["Head"] ; [+20]
       36 GETUPVAL                         R21 1
       37 GETTABLEKS                       R21 R21 K10 ["addTrack"]
       39 MOVE                             R22 R9
       40 MOVE                             R23 R18
       41 GETUPVAL                         R24 3
       42 GETTABLEKS                       R24 R24 K11 ["TRACK_TYPES"]
       44 GETTABLEKS                       R24 R24 K12 ["CFrame"]
       46 LOADB                            R25 0
       47 GETUPVAL                         R26 3
       48 GETTABLEKS                       R26 R26 K11 ["TRACK_TYPES"]
       50 GETTABLEKS                       R26 R26 K13 ["Quaternion"]
       52 CALL                             R21 5 1
       53 MOVE                             R20 R21
       54 JUMP                             ; [+18]
       55 GETUPVAL                         R21 1
       56 GETTABLEKS                       R21 R21 K10 ["addTrack"]
       58 MOVE                             R22 R9
       59 MOVE                             R23 R18
       60 GETUPVAL                         R24 3
       61 GETTABLEKS                       R24 R24 K11 ["TRACK_TYPES"]
       63 GETTABLEKS                       R24 R24 K14 ["Facs"]
       65 LOADB                            R25 0
       66 GETUPVAL                         R26 3
       67 GETTABLEKS                       R26 R26 K11 ["TRACK_TYPES"]
       69 GETTABLEKS                       R26 R26 K13 ["Quaternion"]
       71 CALL                             R21 5 1
       72 MOVE                             R20 R21
       73 GETUPVAL                         R21 1
       74 GETTABLEKS                       R21 R21 K15 ["addKeyframe"]
       76 MOVE                             R22 R20
       77 MOVE                             R23 R13
       78 DUPTABLE                         R24 K19 [{"Value", "EasingStyle", "EasingDirection"}]
       79 SETTABLEKS                       R19 R24 K16 ["Value"]
       81 GETIMPORT                        R25 K23 [Enum.PoseEasingStyle.Linear]
       83 SETTABLEKS                       R25 R24 K17 ["EasingStyle"]
       85 GETIMPORT                        R25 K26 [Enum.PoseEasingDirection.In]
       87 SETTABLEKS                       R25 R24 K18 ["EasingDirection"]
       89 CALL                             R21 3 0
       90 FORGLOOP                         R15 2 ; [-60]
       92 FORGLOOP                         R10 2 ; [-67]
       94 FORGLOOP                         R4 2 ; [-76]
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R4 R4 K27 ["clearTrackSequences"]
       99 MOVE                             R5 R3
      100 CALL                             R4 1 0
      101 NAMECALL                         R4 R0 K28 ["getState"]
      103 CALL                             R4 1 1
      104 GETTABLEKS                       R5 R4 K29 ["AnimationData"]
      106 JUMPIFNOT                        R5 ; [+13]
      107 GETUPVAL                         R8 4
      108 MOVE                             R9 R3
      109 GETUPVAL                         R10 3
      110 GETTABLEKS                       R10 R10 K30 ["TRACKS_SUBSETS_TYPE"]
      112 GETTABLEKS                       R10 R10 K31 ["Face"]
      114 GETUPVAL                         R11 5
      115 CALL                             R8 3 -1
      116 NAMECALL                         R6 R0 K32 ["dispatch"]
      118 CALL                             R6 -1 0
      119 JUMP                             ; [+22]
      120 GETUPVAL                         R8 6
      121 CALL                             R8 0 -1
      122 NAMECALL                         R6 R0 K32 ["dispatch"]
      124 CALL                             R6 -1 0
      125 GETTABLEKS                       R6 R4 K33 ["History"]
      127 GETTABLEKS                       R7 R6 K34 ["Past"]
      129 GETUPVAL                         R10 7
      130 MOVE                             R11 R3
      131 GETUPVAL                         R12 5
      132 CALL                             R10 2 -1
      133 NAMECALL                         R8 R0 K32 ["dispatch"]
      135 CALL                             R8 -1 0
      136 GETUPVAL                         R10 8
      137 MOVE                             R11 R7
      138 CALL                             R10 1 -1
      139 NAMECALL                         R8 R0 K32 ["dispatch"]
      141 CALL                             R8 -1 0
      142 GETUPVAL                         R8 9
      143 LOADB                            R9 1
      144 CALL                             R8 1 -1
      145 NAMECALL                         R6 R0 K32 ["dispatch"]
      147 CALL                             R6 -1 0
      148 NAMECALL                         R6 R0 K28 ["getState"]
      150 CALL                             R6 1 1
      151 GETTABLEKS                       R6 R6 K29 ["AnimationData"]
      153 GETTABLEKS                       R7 R6 K35 ["Metadata"]
      155 GETTABLEKS                       R7 R7 K36 ["Looping"]
      157 JUMPIF                           R7 ; [+18]
      158 GETUPVAL                         R8 1
      159 GETTABLEKS                       R8 R8 K37 ["setLooping"]
      161 MOVE                             R9 R6
      162 LOADB                            R10 1
      163 CALL                             R8 2 0
      164 GETUPVAL                         R10 10
      165 MOVE                             R11 R6
      166 CALL                             R10 1 -1
      167 NAMECALL                         R8 R0 K32 ["dispatch"]
      169 CALL                             R8 -1 0
      170 GETUPVAL                         R10 11
      171 LOADB                            R11 1
      172 CALL                             R10 1 -1
      173 NAMECALL                         R8 R0 K32 ["dispatch"]
      175 CALL                             R8 -1 0
      176 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetAnimationData"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetHaveToSetBackToNotLooping"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["SetInReviewState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["SetPast"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       49 GETTABLEKS                       R6 R6 K13 ["History"]
       51 GETTABLEKS                       R6 R6 K14 ["AddWaypoint"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K12 ["Thunks"]
       60 GETTABLEKS                       R7 R7 K15 ["LoadAnimationData"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K12 ["Thunks"]
       69 GETTABLEKS                       R8 R8 K16 ["MergeBodyAndFacialAnimation"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K17 ["Util"]
       78 GETTABLEKS                       R9 R9 K18 ["AnimationData"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K6 ["Src"]
       85 GETTABLEKS                       R10 R10 K17 ["Util"]
       87 GETTABLEKS                       R10 R10 K19 ["Constants"]
       89 CALL                             R9 1 1
       90 DUPCLOSURE                       R10 K20 [PROTO_1]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 RETURN                           R10 1
