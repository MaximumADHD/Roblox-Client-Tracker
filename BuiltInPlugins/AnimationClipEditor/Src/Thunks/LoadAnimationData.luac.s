PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 GETUPVAL                         R5 0
        8 NEWTABLE                         R6 0 0
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K3 ["dispatch"]
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R5 1
       15 NEWTABLE                         R6 0 0
       17 CALL                             R5 1 -1
       18 NAMECALL                         R3 R0 K3 ["dispatch"]
       20 CALL                             R3 -1 0
       21 GETUPVAL                         R5 2
       22 NEWTABLE                         R6 0 0
       24 CALL                             R5 1 -1
       25 NAMECALL                         R3 R0 K3 ["dispatch"]
       27 CALL                             R3 -1 0
       28 GETUPVAL                         R5 3
       29 LOADNIL                          R6
       30 CALL                             R5 1 -1
       31 NAMECALL                         R3 R0 K3 ["dispatch"]
       33 CALL                             R3 -1 0
       34 GETUPVAL                         R5 4
       35 NEWTABLE                         R6 0 0
       37 CALL                             R5 1 -1
       38 NAMECALL                         R3 R0 K3 ["dispatch"]
       40 CALL                             R3 -1 0
       41 GETUPVAL                         R5 5
       42 NEWTABLE                         R6 0 0
       44 CALL                             R5 1 -1
       45 NAMECALL                         R3 R0 K3 ["dispatch"]
       47 CALL                             R3 -1 0
       48 GETUPVAL                         R5 6
       49 NEWTABLE                         R6 0 0
       51 CALL                             R5 1 -1
       52 NAMECALL                         R3 R0 K3 ["dispatch"]
       54 CALL                             R3 -1 0
       55 GETUPVAL                         R3 7
       56 JUMPIFNOT                        R3 ; [+6]
       57 GETUPVAL                         R5 8
       58 LOADNIL                          R6
       59 CALL                             R5 1 -1
       60 NAMECALL                         R3 R0 K3 ["dispatch"]
       62 CALL                             R3 -1 0
       63 GETUPVAL                         R5 9
       64 GETUPVAL                         R6 10
       65 GETTABLEKS                       R6 R6 K4 ["EDITOR_MODE"]
       67 GETTABLEKS                       R6 R6 K5 ["DopeSheet"]
       69 GETUPVAL                         R7 11
       70 CALL                             R5 2 -1
       71 NAMECALL                         R3 R0 K3 ["dispatch"]
       73 CALL                             R3 -1 0
       74 GETUPVAL                         R3 12
       75 CALL                             R3 0 1
       76 JUMPIFNOT                        R3 ; [+5]
       77 GETUPVAL                         R3 13
       78 GETTABLEKS                       R3 R3 K6 ["clearPose"]
       80 MOVE                             R4 R2
       81 CALL                             R3 1 0
       82 GETUPVAL                         R5 14
       83 GETUPVAL                         R6 15
       84 CALL                             R5 1 -1
       85 NAMECALL                         R3 R0 K3 ["dispatch"]
       87 CALL                             R3 -1 0
       88 GETIMPORT                        R3 K8 [pairs]
       90 GETUPVAL                         R4 15
       91 GETTABLEKS                       R4 R4 K9 ["Instances"]
       93 CALL                             R3 1 3
       94 FORGPREP_NEXT                    R3
       95 GETIMPORT                        R8 K8 [pairs]
       97 GETTABLEKS                       R9 R7 K10 ["Tracks"]
       99 CALL                             R8 1 3
      100 FORGPREP_NEXT                    R8
      101 GETUPVAL                         R13 16
      102 CALL                             R13 0 1
      103 JUMPIFNOT                        R13 ; [+10]
      104 GETUPVAL                         R15 17
      105 MOVE                             R16 R6
      106 MOVE                             R17 R11
      107 MOVE                             R18 R12
      108 GETUPVAL                         R19 11
      109 CALL                             R15 4 -1
      110 NAMECALL                         R13 R0 K3 ["dispatch"]
      112 CALL                             R13 -1 0
      113 JUMP                             ; [+22]
      114 GETUPVAL                         R13 18
      115 GETTABLEKS                       R13 R13 K11 ["getRotationType"]
      117 MOVE                             R14 R12
      118 CALL                             R13 1 1
      119 GETUPVAL                         R14 18
      120 GETTABLEKS                       R14 R14 K12 ["getEulerAnglesOrder"]
      122 MOVE                             R15 R12
      123 CALL                             R14 1 1
      124 GETUPVAL                         R17 19
      125 MOVE                             R18 R6
      126 MOVE                             R19 R11
      127 GETTABLEKS                       R20 R12 K13 ["Type"]
      129 MOVE                             R21 R13
      130 MOVE                             R22 R14
      131 GETUPVAL                         R23 11
      132 CALL                             R17 6 -1
      133 NAMECALL                         R15 R0 K3 ["dispatch"]
      135 CALL                             R15 -1 0
      136 FORGLOOP                         R8 2 ; [-36]
      138 FORGLOOP                         R3 2 ; [-44]
      140 GETUPVAL                         R5 20
      141 LOADN                            R6 1
      142 CALL                             R5 1 -1
      143 NAMECALL                         R3 R0 K3 ["dispatch"]
      145 CALL                             R3 -1 0
      146 GETUPVAL                         R5 21
      147 LOADN                            R6 0
      148 CALL                             R5 1 -1
      149 NAMECALL                         R3 R0 K3 ["dispatch"]
      151 CALL                             R3 -1 0
      152 GETUPVAL                         R5 22
      153 LOADB                            R6 1
      154 CALL                             R5 1 -1
      155 NAMECALL                         R3 R0 K3 ["dispatch"]
      157 CALL                             R3 -1 0
      158 GETUPVAL                         R5 23
      159 GETUPVAL                         R6 15
      160 GETTABLEKS                       R6 R6 K14 ["Metadata"]
      162 GETTABLEKS                       R6 R6 K15 ["EndTick"]
      164 CALL                             R5 1 -1
      165 NAMECALL                         R3 R0 K3 ["dispatch"]
      167 CALL                             R3 -1 0
      168 GETUPVAL                         R5 24
      169 GETUPVAL                         R7 25
      170 GETUPVAL                         R8 15
      171 GETTABLEKS                       R8 R8 K16 ["Events"]
      173 GETTABLEKS                       R8 R8 K17 ["Keyframes"]
      175 CALL                             R7 1 1
      176 NOT                              R6 R7
      177 CALL                             R5 1 -1
      178 NAMECALL                         R3 R0 K3 ["dispatch"]
      180 CALL                             R3 -1 0
      181 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CAPTURE                          UPVAL U20
       24 CAPTURE                          UPVAL U21
       25 CAPTURE                          UPVAL U22
       26 CAPTURE                          UPVAL U23
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetFuture"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIsDirty"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetLastSelectedPath"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["SetPast"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["SetRightClickContextInfo"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["SetSelectedKeyframes"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R1 K14 ["SetShowEvents"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R1 K15 ["SetPrevAnimationClip"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R0 K4 ["Src"]
       53 GETTABLEKS                       R10 R10 K16 ["Thunks"]
       55 GETIMPORT                        R11 K7 [require]
       57 GETTABLEKS                       R12 R10 K17 ["AddTrack"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K7 [require]
       62 GETTABLEKS                       R13 R10 K18 ["AddTrackEntryFromTrack"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K7 [require]
       67 GETTABLEKS                       R14 R10 K19 ["SetSelectedTracks"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K7 [require]
       72 GETTABLEKS                       R15 R10 K20 ["SetTopTrackIndex"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K7 [require]
       77 GETTABLEKS                       R16 R10 K21 ["SortAndSetTracks"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K7 [require]
       82 GETTABLEKS                       R17 R10 K22 ["Playback"]
       84 GETTABLEKS                       R17 R17 K23 ["StepAnimation"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K7 [require]
       89 GETTABLEKS                       R18 R10 K24 ["SwitchEditorMode"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K7 [require]
       94 GETTABLEKS                       R19 R10 K25 ["UpdateAnimationData"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K7 [require]
       99 GETTABLEKS                       R20 R10 K26 ["UpdateEditingLength"]
      101 CALL                             R19 1 1
      102 GETTABLEKS                       R20 R0 K4 ["Src"]
      104 GETTABLEKS                       R20 R20 K27 ["Util"]
      106 GETIMPORT                        R21 K7 [require]
      108 GETTABLEKS                       R22 R20 K28 ["Constants"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K7 [require]
      113 GETTABLEKS                       R23 R20 K29 ["isEmpty"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K7 [require]
      118 GETTABLEKS                       R24 R20 K30 ["RigUtils"]
      120 CALL                             R23 1 1
      121 GETIMPORT                        R24 K7 [require]
      123 GETTABLEKS                       R25 R20 K31 ["TrackUtils"]
      125 CALL                             R24 1 1
      126 GETIMPORT                        R25 K7 [require]
      128 GETTABLEKS                       R26 R0 K32 ["LuaFlags"]
      130 GETTABLEKS                       R26 R26 K33 ["GetFFlagEngineAnimator"]
      132 CALL                             R25 1 1
      133 GETIMPORT                        R26 K7 [require]
      135 GETTABLEKS                       R27 R0 K32 ["LuaFlags"]
      137 GETTABLEKS                       R27 R27 K34 ["GetFFlagControlRig"]
      139 CALL                             R26 1 1
      140 GETIMPORT                        R27 K36 [game]
      142 LOADK                            R29 K37 ["LiveAnimationUpdateSupport"]
      143 NAMECALL                         R27 R27 K38 ["GetFastFlag"]
      145 CALL                             R27 2 1
      146 DUPCLOSURE                       R28 K39 [PROTO_1]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R27
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R25
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R26
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R22
      171 RETURN                           R28 1
