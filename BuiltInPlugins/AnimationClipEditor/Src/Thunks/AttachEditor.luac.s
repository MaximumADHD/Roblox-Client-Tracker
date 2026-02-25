PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R0 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETTABLEKS                       R3 R1 K2 ["Status"]
       11 GETTABLEKS                       R2 R3 K3 ["RootInstance"]
       13 GETTABLEKS                       R3 R1 K4 ["AnimationData"]
       15 GETTABLEKS                       R5 R1 K2 ["Status"]
       17 GETTABLEKS                       R4 R5 K5 ["Playhead"]
       19 GETTABLEKS                       R6 R1 K2 ["Status"]
       21 GETTABLEKS                       R5 R6 K6 ["VisualizeBones"]
       23 GETUPVAL                         R6 1
       24 NAMECALL                         R6 R6 K7 ["GetCanUndo"]
       26 CALL                             R6 1 1
       27 JUMPIFNOT                        R6 ; [+5]
       28 GETUPVAL                         R6 1
       29 LOADB                            R8 0
       30 NAMECALL                         R6 R6 K8 ["SetEnabled"]
       32 CALL                             R6 2 0
       33 JUMPIFEQKNIL                     R2 ; [+16]
       35 LOADK                            R8 K9 ["Workspace"]
       36 NAMECALL                         R6 R2 K10 ["FindFirstAncestorOfClass"]
       38 CALL                             R6 2 1
       39 JUMPIFEQKNIL                     R6 ; [+10]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K11 ["validate"]
       44 MOVE                             R7 R2
       45 CALL                             R6 1 1
       46 NAMECALL                         R6 R6 K12 ["hasErrors"]
       48 CALL                             R6 1 1
       49 JUMPIFNOT                        R6 ; [+29]
       50 GETUPVAL                         R8 3
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R9 R10 K13 ["None"]
       54 CALL                             R8 1 -1
       55 NAMECALL                         R6 R0 K1 ["dispatch"]
       57 CALL                             R6 -1 0
       58 GETUPVAL                         R8 5
       59 NEWTABLE                         R9 0 0
       61 CALL                             R8 1 -1
       62 NAMECALL                         R6 R0 K1 ["dispatch"]
       64 CALL                             R6 -1 0
       65 GETUPVAL                         R8 6
       66 NEWTABLE                         R9 0 0
       68 CALL                             R8 1 -1
       69 NAMECALL                         R6 R0 K1 ["dispatch"]
       71 CALL                             R6 -1 0
       72 GETUPVAL                         R8 7
       73 LOADNIL                          R9
       74 CALL                             R8 1 -1
       75 NAMECALL                         R6 R0 K1 ["dispatch"]
       77 CALL                             R6 -1 0
       78 RETURN                           R0 0
       79 JUMPIFNOT                        R3 ; [+64]
       80 GETUPVAL                         R6 8
       81 CALL                             R6 0 1
       82 JUMPIF                           R6 ; [+2]
       83 GETUPVAL                         R6 9
       84 JUMPIFNOT                        R6 ; [+14]
       85 GETUPVAL                         R8 10
       86 MOVE                             R9 R3
       87 GETUPVAL                         R10 11
       88 CALL                             R8 2 -1
       89 NAMECALL                         R6 R0 K1 ["dispatch"]
       91 CALL                             R6 -1 0
       92 GETUPVAL                         R8 12
       93 LOADB                            R9 0
       94 CALL                             R8 1 -1
       95 NAMECALL                         R6 R0 K1 ["dispatch"]
       97 CALL                             R6 -1 0
       98 JUMP                             ; [+45]
       99 GETUPVAL                         R8 5
      100 NEWTABLE                         R9 0 0
      102 CALL                             R8 1 -1
      103 NAMECALL                         R6 R0 K1 ["dispatch"]
      105 CALL                             R6 -1 0
      106 GETIMPORT                        R6 K15 [pairs]
      108 GETTABLEKS                       R7 R3 K16 ["Instances"]
      110 CALL                             R6 1 3
      111 FORGPREP_NEXT                    R6
      112 GETIMPORT                        R11 K15 [pairs]
      114 GETTABLEKS                       R12 R10 K17 ["Tracks"]
      116 CALL                             R11 1 3
      117 FORGPREP_NEXT                    R11
      118 GETUPVAL                         R17 13
      119 GETTABLEKS                       R16 R17 K18 ["getRotationType"]
      121 MOVE                             R17 R15
      122 CALL                             R16 1 1
      123 GETUPVAL                         R18 13
      124 GETTABLEKS                       R17 R18 K19 ["getEulerAnglesOrder"]
      126 MOVE                             R18 R15
      127 CALL                             R17 1 1
      128 GETUPVAL                         R20 14
      129 MOVE                             R21 R9
      130 MOVE                             R22 R14
      131 GETTABLEKS                       R23 R15 K20 ["Type"]
      133 MOVE                             R24 R16
      134 MOVE                             R25 R17
      135 GETUPVAL                         R26 11
      136 CALL                             R20 6 -1
      137 NAMECALL                         R18 R0 K1 ["dispatch"]
      139 CALL                             R18 -1 0
      140 FORGLOOP                         R11 2 ; [-23]
      142 FORGLOOP                         R6 2 ; [-31]
      144 GETUPVAL                         R7 15
      145 GETTABLEKS                       R6 R7 K21 ["clearMicrobones"]
      147 CALL                             R6 0 0
      148 JUMPIFNOT                        R2 ; [+7]
      149 JUMPIF                           R3 ; [+6]
      150 GETUPVAL                         R7 15
      151 GETTABLEKS                       R6 R7 K22 ["updateMicrobones"]
      153 MOVE                             R7 R2
      154 MOVE                             R8 R5
      155 CALL                             R6 2 0
      156 GETUPVAL                         R8 16
      157 MOVE                             R9 R4
      158 CALL                             R8 1 -1
      159 NAMECALL                         R6 R0 K1 ["dispatch"]
      161 CALL                             R6 -1 0
      162 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
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
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R1 K12 ["Src"]
       22 GETTABLEKS                       R3 R4 K13 ["Actions"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R3 K14 ["SetActive"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R3 K15 ["SetAnimationData"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R3 K16 ["SetIsDirty"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R3 K17 ["SetRootInstance"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R3 K18 ["SetSelectedKeyframes"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R10 R1 K12 ["Src"]
       51 GETTABLEKS                       R9 R10 K19 ["Thunks"]
       53 GETIMPORT                        R10 K9 [require]
       55 GETTABLEKS                       R11 R9 K20 ["AddTrack"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K9 [require]
       60 GETTABLEKS                       R12 R9 K21 ["LoadAnimationData"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K9 [require]
       65 GETTABLEKS                       R13 R9 K22 ["SortAndSetTracks"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K9 [require]
       70 GETTABLEKS                       R15 R9 K23 ["Playback"]
       72 GETTABLEKS                       R14 R15 K24 ["StepAnimation"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R15 R1 K12 ["Src"]
       77 GETTABLEKS                       R14 R15 K25 ["Util"]
       79 GETIMPORT                        R15 K9 [require]
       81 GETTABLEKS                       R16 R14 K26 ["RigValidation"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K9 [require]
       86 GETTABLEKS                       R17 R14 K27 ["RigVisualization"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K9 [require]
       91 GETTABLEKS                       R18 R14 K28 ["TrackUtils"]
       93 CALL                             R17 1 1
       94 GETIMPORT                        R18 K9 [require]
       96 GETTABLEKS                       R20 R1 K29 ["LuaFlags"]
       98 GETTABLEKS                       R19 R20 K30 ["GetFFlagControlRig"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K1 [game]
      103 LOADK                            R21 K31 ["ACELoadOnAttach"]
      104 LOADB                            R22 0
      105 NAMECALL                         R19 R19 K32 ["DefineFastFlag"]
      107 CALL                             R19 3 1
      108 DUPCLOSURE                       R20 K33 [PROTO_1]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R13
      125 RETURN                           R20 1
