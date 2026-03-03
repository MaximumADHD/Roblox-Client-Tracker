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
       24 CALL                             R6 0 1
       25 JUMPIF                           R6 ; [+10]
       26 GETUPVAL                         R6 2
       27 NAMECALL                         R6 R6 K7 ["GetCanUndo"]
       29 CALL                             R6 1 1
       30 JUMPIFNOT                        R6 ; [+5]
       31 GETUPVAL                         R6 2
       32 LOADB                            R8 0
       33 NAMECALL                         R6 R6 K8 ["SetEnabled"]
       35 CALL                             R6 2 0
       36 JUMPIFEQKNIL                     R2 ; [+16]
       38 LOADK                            R8 K9 ["Workspace"]
       39 NAMECALL                         R6 R2 K10 ["FindFirstAncestorOfClass"]
       41 CALL                             R6 2 1
       42 JUMPIFEQKNIL                     R6 ; [+10]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K11 ["validate"]
       47 MOVE                             R7 R2
       48 CALL                             R6 1 1
       49 NAMECALL                         R6 R6 K12 ["hasErrors"]
       51 CALL                             R6 1 1
       52 JUMPIFNOT                        R6 ; [+29]
       53 GETUPVAL                         R8 4
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R9 R10 K13 ["None"]
       57 CALL                             R8 1 -1
       58 NAMECALL                         R6 R0 K1 ["dispatch"]
       60 CALL                             R6 -1 0
       61 GETUPVAL                         R8 6
       62 NEWTABLE                         R9 0 0
       64 CALL                             R8 1 -1
       65 NAMECALL                         R6 R0 K1 ["dispatch"]
       67 CALL                             R6 -1 0
       68 GETUPVAL                         R8 7
       69 NEWTABLE                         R9 0 0
       71 CALL                             R8 1 -1
       72 NAMECALL                         R6 R0 K1 ["dispatch"]
       74 CALL                             R6 -1 0
       75 GETUPVAL                         R8 8
       76 LOADNIL                          R9
       77 CALL                             R8 1 -1
       78 NAMECALL                         R6 R0 K1 ["dispatch"]
       80 CALL                             R6 -1 0
       81 RETURN                           R0 0
       82 JUMPIFNOT                        R3 ; [+64]
       83 GETUPVAL                         R6 9
       84 CALL                             R6 0 1
       85 JUMPIF                           R6 ; [+2]
       86 GETUPVAL                         R6 10
       87 JUMPIFNOT                        R6 ; [+14]
       88 GETUPVAL                         R8 11
       89 MOVE                             R9 R3
       90 GETUPVAL                         R10 12
       91 CALL                             R8 2 -1
       92 NAMECALL                         R6 R0 K1 ["dispatch"]
       94 CALL                             R6 -1 0
       95 GETUPVAL                         R8 13
       96 LOADB                            R9 0
       97 CALL                             R8 1 -1
       98 NAMECALL                         R6 R0 K1 ["dispatch"]
      100 CALL                             R6 -1 0
      101 JUMP                             ; [+45]
      102 GETUPVAL                         R8 6
      103 NEWTABLE                         R9 0 0
      105 CALL                             R8 1 -1
      106 NAMECALL                         R6 R0 K1 ["dispatch"]
      108 CALL                             R6 -1 0
      109 GETIMPORT                        R6 K15 [pairs]
      111 GETTABLEKS                       R7 R3 K16 ["Instances"]
      113 CALL                             R6 1 3
      114 FORGPREP_NEXT                    R6
      115 GETIMPORT                        R11 K15 [pairs]
      117 GETTABLEKS                       R12 R10 K17 ["Tracks"]
      119 CALL                             R11 1 3
      120 FORGPREP_NEXT                    R11
      121 GETUPVAL                         R17 14
      122 GETTABLEKS                       R16 R17 K18 ["getRotationType"]
      124 MOVE                             R17 R15
      125 CALL                             R16 1 1
      126 GETUPVAL                         R18 14
      127 GETTABLEKS                       R17 R18 K19 ["getEulerAnglesOrder"]
      129 MOVE                             R18 R15
      130 CALL                             R17 1 1
      131 GETUPVAL                         R20 15
      132 MOVE                             R21 R9
      133 MOVE                             R22 R14
      134 GETTABLEKS                       R23 R15 K20 ["Type"]
      136 MOVE                             R24 R16
      137 MOVE                             R25 R17
      138 GETUPVAL                         R26 12
      139 CALL                             R20 6 -1
      140 NAMECALL                         R18 R0 K1 ["dispatch"]
      142 CALL                             R18 -1 0
      143 FORGLOOP                         R11 2 ; [-23]
      145 FORGLOOP                         R6 2 ; [-31]
      147 GETUPVAL                         R7 16
      148 GETTABLEKS                       R6 R7 K21 ["clearMicrobones"]
      150 CALL                             R6 0 0
      151 JUMPIFNOT                        R2 ; [+7]
      152 JUMPIF                           R3 ; [+6]
      153 GETUPVAL                         R7 16
      154 GETTABLEKS                       R6 R7 K22 ["updateMicrobones"]
      156 MOVE                             R7 R2
      157 MOVE                             R8 R5
      158 CALL                             R6 2 0
      159 GETUPVAL                         R8 17
      160 MOVE                             R9 R4
      161 CALL                             R8 1 -1
      162 NAMECALL                         R6 R0 K1 ["dispatch"]
      164 CALL                             R6 -1 0
      165 RETURN                           R0 0

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
       12 CAPTURE                          UPVAL U11
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 RETURN                           R1 1

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
      108 GETIMPORT                        R20 K9 [require]
      110 GETTABLEKS                       R22 R1 K29 ["LuaFlags"]
      112 GETTABLEKS                       R21 R22 K33 ["GetFFlagKeepHistoryService"]
      114 CALL                             R20 1 1
      115 DUPCLOSURE                       R21 K34 [PROTO_1]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R13
      133 RETURN                           R21 1
