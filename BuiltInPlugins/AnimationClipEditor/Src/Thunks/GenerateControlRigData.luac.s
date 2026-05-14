PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Metadata"]
        3 GETTABLEKS                       R1 R1 K1 ["EndTick"]
        5 GETUPVAL                         R2 1
        6 LOADN                            R6 0
        7 FASTCALL3                        MATH_CLAMP R0 R6 R1
        9 MOVE                             R5 R0
       10 MOVE                             R7 R1
       11 GETIMPORT                        R4 K4 [math.clamp]
       13 CALL                             R4 3 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K5 ["TICK_FREQUENCY"]
       17 DIV                              R3 R4 R5
       18 SETTABLEKS                       R3 R2 K6 ["TimePosition"]
       20 GETUPVAL                         R2 3
       21 LOADN                            R4 0
       22 NAMECALL                         R2 R2 K7 ["StepAnimations"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K8 ["updateSimulatedAnimConstraintParts"]
       28 GETUPVAL                         R3 5
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["AnimationTrack"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["RootInstance"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["getAnimator"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 JUMPIFNOT                        R3 ; [+6]
       19 JUMPIFNOT                        R5 ; [+5]
       20 GETTABLEKS                       R6 R2 K6 ["Metadata"]
       22 GETTABLEKS                       R6 R6 K7 ["IkTargets"]
       24 JUMPIF                           R6 ; [+1]
       25 RETURN                           R0 0
       26 NEWTABLE                         R6 0 0
       28 NEWTABLE                         R7 0 0
       30 GETTABLEKS                       R8 R2 K8 ["Instances"]
       32 GETTABLEKS                       R8 R8 K9 ["Root"]
       34 GETTABLEKS                       R8 R8 K10 ["Tracks"]
       36 LOADNIL                          R9
       37 LOADNIL                          R10
       38 FORGPREP                         R8
       39 GETTABLEKS                       R13 R12 K11 ["Components"]
       41 JUMPIFNOT                        R13 ; [+8]
       42 GETTABLEKS                       R14 R12 K11 ["Components"]
       44 GETUPVAL                         R15 1
       45 GETTABLEKS                       R15 R15 K12 ["PROPERTY_KEYS"]
       47 GETTABLEKS                       R15 R15 K13 ["IkData"]
       49 GETTABLE                         R13 R14 R15
       50 JUMPIFNOT                        R13 ; [+25]
       51 LOADB                            R14 1
       52 SETTABLE                         R14 R6 R11
       53 GETTABLEKS                       R14 R13 K11 ["Components"]
       55 JUMPIF                           R14 ; [+2]
       56 NEWTABLE                         R14 0 0
       58 LOADNIL                          R15
       59 LOADNIL                          R16
       60 FORGPREP                         R14
       61 GETTABLEKS                       R20 R2 K6 ["Metadata"]
       63 GETTABLEKS                       R20 R20 K7 ["IkTargets"]
       65 GETTABLE                         R19 R20 R17
       66 JUMPIF                           R19 ; [+7]
       67 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       69 MOVE                             R20 R7
       70 MOVE                             R21 R17
       71 GETIMPORT                        R19 K16 [table.insert]
       73 CALL                             R19 2 0
       74 FORGLOOP                         R14 1 ; [-14]
       76 FORGLOOP                         R8 2 ; [-38]
       78 LENGTH                           R8 R7
       79 LOADN                            R9 0
       80 JUMPIFNOTLT                      R9 R8 ; [+17]
       82 GETIMPORT                        R8 K18 [warn]
       84 LOADK                            R9 K19 ["Missing target instances for:"]
       85 CALL                             R8 1 0
       86 MOVE                             R8 R7
       87 LOADNIL                          R9
       88 LOADNIL                          R10
       89 FORGPREP                         R8
       90 GETIMPORT                        R13 K18 [warn]
       92 LOADK                            R14 K20 ["-"]
       93 MOVE                             R15 R12
       94 CALL                             R13 2 0
       95 FORGLOOP                         R8 2 ; [-6]
       97 RETURN                           R0 0
       98 GETUPVAL                         R8 2
       99 GETTABLEKS                       R8 R8 K21 ["getSummaryKeyframes"]
      101 GETTABLEKS                       R9 R2 K8 ["Instances"]
      103 GETTABLEKS                       R9 R9 K9 ["Root"]
      105 GETTABLEKS                       R9 R9 K10 ["Tracks"]
      107 CALL                             R8 1 1
      108 GETUPVAL                         R9 3
      109 GETTABLEKS                       R9 R9 K22 ["toCurveAnimation"]
      111 MOVE                             R10 R2
      112 MOVE                             R11 R4
      113 CALL                             R9 2 1
      114 GETUPVAL                         R10 4
      115 GETTABLEKS                       R10 R10 K23 ["addAnimationRigToAnimationClip"]
      117 MOVE                             R11 R2
      118 MOVE                             R12 R4
      119 MOVE                             R13 R9
      120 CALL                             R10 3 0
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R10 R10 K24 ["TEMPORARY_CONTROL_RIG_ANIMATION"]
      124 SETTABLEKS                       R10 R9 K25 ["Name"]
      126 GETUPVAL                         R10 4
      127 GETTABLEKS                       R10 R10 K26 ["getAnimSavesFolder"]
      129 MOVE                             R11 R4
      130 LOADB                            R12 1
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K27 ["Parent"]
      134 NEWCLOSURE                       R10 P0
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 CAPTURE                          UPVAL U1
      138 CAPTURE                          VAL R5
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          VAL R4
      141 GETUPVAL                         R11 5
      142 MOVE                             R12 R9
      143 GETTABLEKS                       R13 R2 K6 ["Metadata"]
      145 GETTABLEKS                       R13 R13 K7 ["IkTargets"]
      147 JUMPIF                           R13 ; [+2]
      148 NEWTABLE                         R13 0 0
      150 MOVE                             R14 R4
      151 GETUPVAL                         R15 6
      152 GETTABLEKS                       R15 R15 K28 ["Dictionary"]
      154 GETTABLEKS                       R15 R15 K29 ["keys"]
      156 MOVE                             R16 R6
      157 CALL                             R15 1 1
      158 MOVE                             R16 R8
      159 MOVE                             R17 R10
      160 CALL                             R11 6 0
      161 GETUPVAL                         R11 3
      162 GETTABLEKS                       R11 R11 K30 ["fromCurveAnimation"]
      164 MOVE                             R12 R9
      165 CALL                             R11 1 1
      166 GETTABLEKS                       R12 R11 K6 ["Metadata"]
      168 GETTABLEKS                       R13 R2 K6 ["Metadata"]
      170 GETTABLEKS                       R13 R13 K25 ["Name"]
      172 SETTABLEKS                       R13 R12 K25 ["Name"]
      174 NAMECALL                         R12 R9 K31 ["Destroy"]
      176 CALL                             R12 1 0
      177 GETUPVAL                         R14 7
      178 MOVE                             R15 R11
      179 GETUPVAL                         R16 8
      180 CALL                             R14 2 -1
      181 NAMECALL                         R12 R0 K32 ["dispatch"]
      183 CALL                             R12 -1 0
      184 GETUPVAL                         R14 9
      185 LOADB                            R15 0
      186 CALL                             R14 1 -1
      187 NAMECALL                         R12 R0 K32 ["dispatch"]
      189 CALL                             R12 -1 0
      190 GETUPVAL                         R14 10
      191 LOADB                            R15 0
      192 CALL                             R14 1 -1
      193 NAMECALL                         R12 R0 K32 ["dispatch"]
      195 CALL                             R12 -1 0
      196 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetIsDirty"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K11 ["SetIsLegacyAnimSaves"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K8 ["Src"]
       30 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K13 ["LoadAnimationData"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R0 K8 ["Src"]
       39 GETTABLEKS                       R7 R7 K14 ["Util"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R7 K15 ["Constants"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R7 K16 ["CurveCreationTools"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R7 K17 ["RigInfo"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R7 K18 ["RigSerialization"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R7 K19 ["RigUtils"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R7 K20 ["TrackUtils"]
       70 CALL                             R13 1 1
       71 DUPCLOSURE                       R14 K21 [PROTO_2]
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 RETURN                           R14 1
