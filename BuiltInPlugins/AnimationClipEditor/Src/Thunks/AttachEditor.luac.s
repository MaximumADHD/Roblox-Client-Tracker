PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R0 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETTABLEKS                       R2 R1 K2 ["Status"]
       11 GETTABLEKS                       R2 R2 K3 ["RootInstance"]
       13 GETTABLEKS                       R3 R1 K4 ["AnimationData"]
       15 GETTABLEKS                       R4 R1 K2 ["Status"]
       17 GETTABLEKS                       R4 R4 K5 ["Playhead"]
       19 GETTABLEKS                       R5 R1 K2 ["Status"]
       21 GETTABLEKS                       R5 R5 K6 ["VisualizeBones"]
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
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K11 ["validate"]
       47 MOVE                             R7 R2
       48 CALL                             R6 1 1
       49 NAMECALL                         R6 R6 K12 ["hasErrors"]
       51 CALL                             R6 1 1
       52 JUMPIFNOT                        R6 ; [+29]
       53 GETUPVAL                         R8 4
       54 GETUPVAL                         R9 5
       55 GETTABLEKS                       R9 R9 K13 ["None"]
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
       82 JUMPIFNOT                        R3 ; [+13]
       83 GETUPVAL                         R8 9
       84 MOVE                             R9 R3
       85 GETUPVAL                         R10 10
       86 CALL                             R8 2 -1
       87 NAMECALL                         R6 R0 K1 ["dispatch"]
       89 CALL                             R6 -1 0
       90 GETUPVAL                         R8 11
       91 LOADB                            R9 0
       92 CALL                             R8 1 -1
       93 NAMECALL                         R6 R0 K1 ["dispatch"]
       95 CALL                             R6 -1 0
       96 GETUPVAL                         R6 12
       97 CALL                             R6 0 1
       98 JUMPIFNOT                        R6 ; [+13]
       99 JUMPIFNOT                        R2 ; [+12]
      100 GETTABLEKS                       R6 R2 K14 ["PrimaryPart"]
      102 JUMPIFNOT                        R6 ; [+9]
      103 GETUPVAL                         R8 13
      104 GETTABLEKS                       R9 R2 K14 ["PrimaryPart"]
      106 GETTABLEKS                       R9 R9 K15 ["CFrame"]
      108 CALL                             R8 1 -1
      109 NAMECALL                         R6 R0 K1 ["dispatch"]
      111 CALL                             R6 -1 0
      112 GETUPVAL                         R6 14
      113 GETTABLEKS                       R6 R6 K16 ["clearMicrobones"]
      115 CALL                             R6 0 0
      116 JUMPIFNOT                        R2 ; [+7]
      117 JUMPIF                           R3 ; [+6]
      118 GETUPVAL                         R6 14
      119 GETTABLEKS                       R6 R6 K17 ["updateMicrobones"]
      121 MOVE                             R7 R2
      122 MOVE                             R8 R5
      123 CALL                             R6 2 0
      124 GETUPVAL                         R8 15
      125 MOVE                             R9 R4
      126 CALL                             R8 1 -1
      127 NAMECALL                         R6 R0 K1 ["dispatch"]
      129 CALL                             R6 -1 0
      130 RETURN                           R0 0

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
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 RETURN                           R1 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K12 ["Src"]
       22 GETTABLEKS                       R3 R3 K13 ["Actions"]
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
       41 GETTABLEKS                       R8 R3 K17 ["SetRootCFrame"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R3 K18 ["SetRootInstance"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K9 [require]
       51 GETTABLEKS                       R10 R3 K19 ["SetSelectedKeyframes"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R1 K12 ["Src"]
       56 GETTABLEKS                       R10 R10 K20 ["Thunks"]
       58 GETIMPORT                        R11 K9 [require]
       60 GETTABLEKS                       R12 R10 K21 ["LoadAnimationData"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K9 [require]
       65 GETTABLEKS                       R13 R10 K22 ["SortAndSetTracks"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K9 [require]
       70 GETTABLEKS                       R14 R10 K23 ["Playback"]
       72 GETTABLEKS                       R14 R14 K24 ["StepAnimation"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R14 R1 K12 ["Src"]
       77 GETTABLEKS                       R14 R14 K25 ["Util"]
       79 GETIMPORT                        R15 K9 [require]
       81 GETTABLEKS                       R16 R14 K26 ["RigValidation"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K9 [require]
       86 GETTABLEKS                       R17 R14 K27 ["RigVisualization"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K9 [require]
       91 GETTABLEKS                       R18 R1 K28 ["LuaFlags"]
       93 GETTABLEKS                       R18 R18 K29 ["GetFFlagKeepHistoryService"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K9 [require]
       98 GETTABLEKS                       R19 R1 K28 ["LuaFlags"]
      100 GETTABLEKS                       R19 R19 K30 ["GetFFlagRootMotion"]
      102 CALL                             R18 1 1
      103 DUPCLOSURE                       R19 K31 [PROTO_1]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R13
      119 RETURN                           R19 1
