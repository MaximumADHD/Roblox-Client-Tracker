PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getRootPart"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 MOVE                             R1 R0
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETTABLEKS                       R1 R0 K1 ["Name"]
        9 MOVE                             R2 R1
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["Instances"]
       14 GETTABLEKS                       R3 R3 K3 ["Root"]
       16 GETTABLEKS                       R3 R3 K4 ["Tracks"]
       18 GETTABLE                         R2 R3 R1
       19 MOVE                             R3 R2
       20 JUMPIFNOT                        R3 ; [+13]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K5 ["getValue"]
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 4
       26 NAMECALL                         R5 R5 K6 ["getState"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R5 R5 K7 ["Status"]
       31 GETTABLEKS                       R5 R5 K8 ["Playhead"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+15]
       35 GETUPVAL                         R4 4
       36 GETUPVAL                         R6 5
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K9 ["PrimaryPart"]
       40 GETTABLEKS                       R8 R8 K10 ["CFrame"]
       42 NAMECALL                         R9 R3 K11 ["Inverse"]
       44 CALL                             R9 1 1
       45 MUL                              R7 R8 R9
       46 CALL                             R6 1 -1
       47 NAMECALL                         R4 R4 K12 ["dispatch"]
       49 CALL                             R4 -1 0
       50 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["AnimationTrack"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["RootInstance"]
       13 GETTABLEKS                       R6 R1 K2 ["Status"]
       15 GETTABLEKS                       R6 R6 K5 ["PlayState"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["PLAY_STATE"]
       20 GETTABLEKS                       R7 R7 K7 ["Pause"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 GETTABLEKS                       R6 R1 K2 ["Status"]
       28 GETTABLEKS                       R6 R6 K8 ["Active"]
       30 JUMPIFNOT                        R2 ; [+2]
       31 JUMPIFNOT                        R4 ; [+1]
       32 JUMPIF                           R6 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R7 1
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+73]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K9 ["getRootPart"]
       40 MOVE                             R8 R4
       41 CALL                             R7 1 1
       42 JUMPIFNOT                        R7 ; [+67]
       43 GETTABLEKS                       R8 R7 K10 ["Name"]
       45 GETTABLEKS                       R10 R2 K11 ["Instances"]
       47 GETTABLEKS                       R10 R10 K12 ["Root"]
       49 GETTABLEKS                       R10 R10 K13 ["Tracks"]
       51 GETTABLE                         R9 R10 R8
       52 JUMPIFNOT                        R9 ; [+57]
       53 GETTABLEKS                       R10 R4 K14 ["PrimaryPart"]
       55 JUMPIFNOT                        R10 ; [+54]
       56 GETTABLEKS                       R10 R1 K2 ["Status"]
       58 GETTABLEKS                       R10 R10 K15 ["RootCFrame"]
       60 JUMPIFNOT                        R10 ; [+49]
       61 GETTABLEKS                       R10 R1 K2 ["Status"]
       63 GETTABLEKS                       R10 R10 K16 ["RootCFrameSignal"]
       65 JUMPIFNOT                        R10 ; [+7]
       66 GETTABLEKS                       R10 R1 K2 ["Status"]
       68 GETTABLEKS                       R10 R10 K16 ["RootCFrameSignal"]
       70 NAMECALL                         R10 R10 K17 ["Disconnect"]
       72 CALL                             R10 1 0
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K18 ["getValue"]
       76 MOVE                             R11 R9
       77 GETUPVAL                         R12 4
       78 CALL                             R10 2 1
       79 GETTABLEKS                       R11 R4 K14 ["PrimaryPart"]
       81 GETTABLEKS                       R13 R1 K2 ["Status"]
       83 GETTABLEKS                       R13 R13 K15 ["RootCFrame"]
       85 MUL                              R12 R13 R10
       86 SETTABLEKS                       R12 R11 K19 ["CFrame"]
       88 GETTABLEKS                       R11 R4 K14 ["PrimaryPart"]
       90 LOADK                            R13 K19 ["CFrame"]
       91 NAMECALL                         R11 R11 K20 ["GetPropertyChangedSignal"]
       93 CALL                             R11 2 1
       94 NEWCLOSURE                       R13 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U5
      101 NAMECALL                         R11 R11 K21 ["Connect"]
      103 CALL                             R11 2 1
      104 GETUPVAL                         R14 6
      105 MOVE                             R15 R11
      106 CALL                             R14 1 -1
      107 NAMECALL                         R12 R0 K22 ["dispatch"]
      109 CALL                             R12 -1 0
      110 GETUPVAL                         R7 7
      111 CALL                             R7 0 1
      112 JUMPIFNOT                        R7 ; [+37]
      113 JUMPIFNOT                        R3 ; [+53]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K23 ["getAnimator"]
      117 MOVE                             R8 R4
      118 CALL                             R7 1 1
      119 JUMPIFNOT                        R7 ; [+47]
      120 GETTABLEKS                       R8 R2 K24 ["Metadata"]
      122 GETTABLEKS                       R8 R8 K25 ["EndTick"]
      124 GETUPVAL                         R11 4
      125 LOADN                            R12 0
      126 FASTCALL3                        MATH_CLAMP R11 R12 R8
      128 MOVE                             R13 R8
      129 GETIMPORT                        R10 K28 [math.clamp]
      131 CALL                             R10 3 1
      132 GETUPVAL                         R11 0
      133 GETTABLEKS                       R11 R11 K29 ["TICK_FREQUENCY"]
      135 DIV                              R9 R10 R11
      136 SETTABLEKS                       R9 R3 K30 ["TimePosition"]
      138 LOADN                            R11 0
      139 DUPTABLE                         R12 K33 [{"automaticScalingEnabledOverride", "retargetingEnabledOverride"}]
      140 LOADB                            R13 0
      141 SETTABLEKS                       R13 R12 K31 ["automaticScalingEnabledOverride"]
      143 LOADB                            R13 0
      144 SETTABLEKS                       R13 R12 K32 ["retargetingEnabledOverride"]
      146 NAMECALL                         R9 R7 K34 ["StepAnimationsInternal"]
      148 CALL                             R9 3 0
      149 JUMP                             ; [+17]
      150 GETTABLEKS                       R7 R2 K11 ["Instances"]
      152 JUMPIFNOT                        R7 ; [+14]
      153 GETIMPORT                        R8 K36 [pairs]
      155 MOVE                             R9 R7
      156 CALL                             R8 1 3
      157 FORGPREP_NEXT                    R8
      158 GETUPVAL                         R13 8
      159 GETTABLEKS                       R13 R13 K37 ["stepRigAnimation"]
      161 MOVE                             R14 R4
      162 MOVE                             R15 R12
      163 GETUPVAL                         R16 4
      164 CALL                             R13 3 0
      165 FORGLOOP                         R8 2 ; [-8]
      167 JUMPIF                           R5 ; [+6]
      168 GETUPVAL                         R7 3
      169 GETTABLEKS                       R7 R7 K38 ["getNearestTick"]
      171 GETUPVAL                         R8 4
      172 CALL                             R7 1 1
      173 SETUPVAL                         R7 4
      174 GETUPVAL                         R9 9
      175 GETUPVAL                         R10 4
      176 CALL                             R9 1 -1
      177 NAMECALL                         R7 R0 K22 ["dispatch"]
      179 CALL                             R7 -1 0
      180 GETTABLEKS                       R7 R1 K2 ["Status"]
      182 GETTABLEKS                       R7 R7 K39 ["VisualizeBones"]
      184 GETUPVAL                         R8 10
      185 GETTABLEKS                       R8 R8 K40 ["updateMicrobones"]
      187 MOVE                             R9 R4
      188 MOVE                             R10 R7
      189 CALL                             R8 2 0
      190 GETUPVAL                         R8 8
      191 GETTABLEKS                       R8 R8 K41 ["updateSimulatedAnimConstraintParts"]
      193 MOVE                             R9 R4
      194 CALL                             R8 1 0
      195 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetPlayhead"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetRootCFrame"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetRootCFrameSignal"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R0 K4 ["Src"]
       28 GETTABLEKS                       R5 R5 K11 ["Util"]
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R5 K12 ["Constants"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R8 R5 K13 ["RigInfo"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K7 [require]
       42 GETTABLEKS                       R9 R5 K14 ["RigUtils"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K7 [require]
       47 GETTABLEKS                       R10 R5 K15 ["RigVisualization"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K7 [require]
       52 GETTABLEKS                       R11 R5 K16 ["KeyframeUtils"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K7 [require]
       57 GETTABLEKS                       R12 R0 K17 ["LuaFlags"]
       59 GETTABLEKS                       R12 R12 K18 ["GetFFlagEngineAnimator"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K7 [require]
       64 GETTABLEKS                       R13 R0 K17 ["LuaFlags"]
       66 GETTABLEKS                       R13 R13 K19 ["GetFFlagRootMotion"]
       68 CALL                             R12 1 1
       69 DUPCLOSURE                       R13 K20 [PROTO_2]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R9
       80 RETURN                           R13 1
