PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["getAnimSavesFolder"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 1
       15 JUMPIFNOT                        R5 ; [+1]
       16 MOVE                             R3 R4
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R7 2
       20 NAMECALL                         R5 R3 K4 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 JUMPIF                           R5 ; [+1]
       24 RETURN                           R0 0
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 LOADK                            R13 K5 ["KeyframeSequence"]
       31 NAMECALL                         R11 R5 K6 ["IsA"]
       33 CALL                             R11 2 1
       34 JUMPIFNOT                        R11 ; [+11]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K7 ["fromKeyframeSequence"]
       38 MOVE                             R12 R5
       39 CALL                             R11 1 5
       40 MOVE                             R6 R11
       41 MOVE                             R10 R12
       42 MOVE                             R7 R13
       43 MOVE                             R8 R14
       44 MOVE                             R9 R15
       45 JUMP                             ; [+19]
       46 LOADK                            R13 K8 ["CurveAnimation"]
       47 NAMECALL                         R11 R5 K6 ["IsA"]
       49 CALL                             R11 2 1
       50 JUMPIFNOT                        R11 ; [+13]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K9 ["fromCurveAnimation"]
       54 MOVE                             R12 R5
       55 CALL                             R11 1 4
       56 MOVE                             R6 R11
       57 MOVE                             R7 R12
       58 MOVE                             R8 R13
       59 MOVE                             R9 R14
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R10 R11 K10 ["DEFAULT_FRAMERATE"]
       63 JUMP                             ; [+1]
       64 RETURN                           R0 0
       65 GETUPVAL                         R13 5
       66 MOVE                             R14 R6
       67 GETUPVAL                         R15 6
       68 CALL                             R13 2 -1
       69 NAMECALL                         R11 R0 K11 ["dispatch"]
       71 CALL                             R11 -1 0
       72 GETUPVAL                         R13 7
       73 LOADK                            R14 K12 ["Loaded"]
       74 GETUPVAL                         R15 2
       75 CALL                             R13 2 -1
       76 NAMECALL                         R11 R0 K11 ["dispatch"]
       78 CALL                             R11 -1 0
       79 GETUPVAL                         R13 8
       80 LOADB                            R14 0
       81 CALL                             R13 1 -1
       82 NAMECALL                         R11 R0 K11 ["dispatch"]
       84 CALL                             R11 -1 0
       85 GETUPVAL                         R13 9
       86 MOVE                             R14 R10
       87 CALL                             R13 1 -1
       88 NAMECALL                         R11 R0 K11 ["dispatch"]
       90 CALL                             R11 -1 0
       91 GETUPVAL                         R13 10
       92 GETUPVAL                         R14 1
       93 CALL                             R13 1 -1
       94 NAMECALL                         R11 R0 K11 ["dispatch"]
       96 CALL                             R11 -1 0
       97 GETUPVAL                         R12 11
       98 GETTABLEKS                       R12 R12 K13 ["isChannelAnimation"]
      100 MOVE                             R13 R6
      101 CALL                             R12 1 1
      102 JUMPIFNOT                        R12 ; [+6]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R11 R11 K14 ["ANIMATION_TYPE"]
      106 GETTABLEKS                       R11 R11 K8 ["CurveAnimation"]
      108 JUMP                             ; [+5]
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R11 R11 K14 ["ANIMATION_TYPE"]
      112 GETTABLEKS                       R11 R11 K5 ["KeyframeSequence"]
      114 GETUPVAL                         R12 6
      115 LOADK                            R14 K15 ["onLoadAnimation"]
      116 GETUPVAL                         R15 2
      117 MOVE                             R16 R7
      118 MOVE                             R17 R8
      119 MOVE                             R18 R9
      120 MOVE                             R19 R11
      121 GETTABLEKS                       R21 R6 K16 ["Metadata"]
      123 JUMPIFNOT                        R21 ; [+5]
      124 GETTABLEKS                       R20 R6 K16 ["Metadata"]
      126 GETTABLEKS                       R20 R20 K17 ["Guid"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R20
      130 NAMECALL                         R12 R12 K18 ["report"]
      132 CALL                             R12 8 0
      133 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
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
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetNotification"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIsDirty"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetIsLegacyAnimSaves"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["SetFrameRate"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R0 K4 ["Src"]
       33 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R8 R6 K13 ["LoadAnimationData"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R0 K4 ["Src"]
       42 GETTABLEKS                       R8 R8 K14 ["Util"]
       44 GETIMPORT                        R9 K7 [require]
       46 GETTABLEKS                       R10 R8 K15 ["AnimationData"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K7 [require]
       51 GETTABLEKS                       R11 R8 K16 ["Constants"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K7 [require]
       56 GETTABLEKS                       R12 R8 K17 ["RigSerialization"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K7 [require]
       61 GETTABLEKS                       R13 R8 K18 ["RigUtils"]
       63 CALL                             R12 1 1
       64 DUPCLOSURE                       R13 K19 [PROTO_1]
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R9
       74 RETURN                           R13 1
