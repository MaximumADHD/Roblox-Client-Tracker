PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+2]
       12 GETUPVAL                         R3 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 JUMPIFNOTEQKNIL                  R3 ; [+18]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["getAnimSavesFolder"]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 3
       23 JUMPIFNOT                        R6 ; [+1]
       24 MOVE                             R4 R5
       25 JUMPIF                           R4 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R8 4
       28 NAMECALL                         R6 R4 K4 ["FindFirstChild"]
       30 CALL                             R6 2 1
       31 MOVE                             R3 R6
       32 JUMPIF                           R3 ; [+1]
       33 RETURN                           R0 0
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 LOADK                            R11 K5 ["KeyframeSequence"]
       40 NAMECALL                         R9 R3 K6 ["IsA"]
       42 CALL                             R9 2 1
       43 JUMPIFNOT                        R9 ; [+11]
       44 GETUPVAL                         R9 5
       45 GETTABLEKS                       R9 R9 K7 ["fromKeyframeSequence"]
       47 MOVE                             R10 R3
       48 CALL                             R9 1 5
       49 MOVE                             R4 R9
       50 MOVE                             R8 R10
       51 MOVE                             R5 R11
       52 MOVE                             R6 R12
       53 MOVE                             R7 R13
       54 JUMP                             ; [+19]
       55 LOADK                            R11 K8 ["CurveAnimation"]
       56 NAMECALL                         R9 R3 K6 ["IsA"]
       58 CALL                             R9 2 1
       59 JUMPIFNOT                        R9 ; [+13]
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R9 R9 K9 ["fromCurveAnimation"]
       63 MOVE                             R10 R3
       64 CALL                             R9 1 4
       65 MOVE                             R4 R9
       66 MOVE                             R5 R10
       67 MOVE                             R6 R11
       68 MOVE                             R7 R12
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R8 R9 K10 ["DEFAULT_FRAMERATE"]
       72 JUMP                             ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R11 7
       75 MOVE                             R12 R4
       76 GETUPVAL                         R13 8
       77 CALL                             R11 2 -1
       78 NAMECALL                         R9 R0 K11 ["dispatch"]
       80 CALL                             R9 -1 0
       81 GETUPVAL                         R11 9
       82 LOADK                            R12 K12 ["Loaded"]
       83 GETUPVAL                         R13 4
       84 CALL                             R11 2 -1
       85 NAMECALL                         R9 R0 K11 ["dispatch"]
       87 CALL                             R9 -1 0
       88 GETUPVAL                         R11 10
       89 LOADB                            R12 0
       90 CALL                             R11 1 -1
       91 NAMECALL                         R9 R0 K11 ["dispatch"]
       93 CALL                             R9 -1 0
       94 GETUPVAL                         R11 11
       95 MOVE                             R12 R8
       96 CALL                             R11 1 -1
       97 NAMECALL                         R9 R0 K11 ["dispatch"]
       99 CALL                             R9 -1 0
      100 GETUPVAL                         R11 12
      101 GETUPVAL                         R12 3
      102 CALL                             R11 1 -1
      103 NAMECALL                         R9 R0 K11 ["dispatch"]
      105 CALL                             R9 -1 0
      106 GETUPVAL                         R10 13
      107 GETTABLEKS                       R10 R10 K13 ["isChannelAnimation"]
      109 MOVE                             R11 R4
      110 CALL                             R10 1 1
      111 JUMPIFNOT                        R10 ; [+6]
      112 GETUPVAL                         R9 6
      113 GETTABLEKS                       R9 R9 K14 ["ANIMATION_TYPE"]
      115 GETTABLEKS                       R9 R9 K8 ["CurveAnimation"]
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R9 6
      119 GETTABLEKS                       R9 R9 K14 ["ANIMATION_TYPE"]
      121 GETTABLEKS                       R9 R9 K5 ["KeyframeSequence"]
      123 GETUPVAL                         R10 8
      124 LOADK                            R12 K15 ["onLoadAnimation"]
      125 GETUPVAL                         R13 4
      126 MOVE                             R14 R5
      127 MOVE                             R15 R6
      128 MOVE                             R16 R7
      129 MOVE                             R17 R9
      130 GETTABLEKS                       R19 R4 K16 ["Metadata"]
      132 JUMPIFNOT                        R19 ; [+5]
      133 GETTABLEKS                       R18 R4 K16 ["Metadata"]
      135 GETTABLEKS                       R18 R18 K17 ["Guid"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R18
      139 NAMECALL                         R10 R10 K18 ["report"]
      141 CALL                             R10 8 0
      142 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAnimationGenOpenACE"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Actions"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["SetNotification"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K11 ["SetIsDirty"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R2 K12 ["SetIsLegacyAnimSaves"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R2 K13 ["SetFrameRate"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R7 K15 ["LoadAnimationData"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R0 K6 ["Src"]
       51 GETTABLEKS                       R9 R9 K16 ["Util"]
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R9 K17 ["AnimationData"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R9 K18 ["Constants"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R9 K19 ["RigSerialization"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R9 K20 ["RigUtils"]
       72 CALL                             R13 1 1
       73 DUPCLOSURE                       R14 K21 [PROTO_1]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R10
       84 RETURN                           R14 1
