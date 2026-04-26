PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R4 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R4 K3 ["AnimationTrack"]
        9 GETTABLEKS                       R5 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R5 K4 ["RootInstance"]
       13 GETTABLEKS                       R7 R1 K2 ["Status"]
       15 GETTABLEKS                       R6 R7 K5 ["PlayState"]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K6 ["PLAY_STATE"]
       20 GETTABLEKS                       R7 R8 K7 ["Pause"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 GETTABLEKS                       R7 R1 K2 ["Status"]
       28 GETTABLEKS                       R6 R7 K8 ["Active"]
       30 JUMPIFNOT                        R2 ; [+2]
       31 JUMPIFNOT                        R4 ; [+1]
       32 JUMPIF                           R6 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R7 1
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+37]
       37 JUMPIFNOT                        R3 ; [+53]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K9 ["getAnimator"]
       41 MOVE                             R8 R4
       42 CALL                             R7 1 1
       43 JUMPIFNOT                        R7 ; [+47]
       44 GETTABLEKS                       R9 R2 K10 ["Metadata"]
       46 GETTABLEKS                       R8 R9 K11 ["EndTick"]
       48 GETUPVAL                         R11 3
       49 LOADN                            R12 0
       50 FASTCALL3                        MATH_CLAMP R11 R12 R8
       52 MOVE                             R13 R8
       53 GETIMPORT                        R10 K14 [math.clamp]
       55 CALL                             R10 3 1
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R11 R12 K15 ["TICK_FREQUENCY"]
       59 DIV                              R9 R10 R11
       60 SETTABLEKS                       R9 R3 K16 ["TimePosition"]
       62 LOADN                            R11 0
       63 DUPTABLE                         R12 K19 [{"automaticScalingEnabledOverride", "retargetingEnabledOverride"}]
       64 LOADB                            R13 0
       65 SETTABLEKS                       R13 R12 K17 ["automaticScalingEnabledOverride"]
       67 LOADB                            R13 0
       68 SETTABLEKS                       R13 R12 K18 ["retargetingEnabledOverride"]
       70 NAMECALL                         R9 R7 K20 ["StepAnimationsInternal"]
       72 CALL                             R9 3 0
       73 JUMP                             ; [+17]
       74 GETTABLEKS                       R7 R2 K21 ["Instances"]
       76 JUMPIFNOT                        R7 ; [+14]
       77 GETIMPORT                        R8 K23 [pairs]
       79 MOVE                             R9 R7
       80 CALL                             R8 1 3
       81 FORGPREP_NEXT                    R8
       82 GETUPVAL                         R14 4
       83 GETTABLEKS                       R13 R14 K24 ["stepRigAnimation"]
       85 MOVE                             R14 R4
       86 MOVE                             R15 R12
       87 GETUPVAL                         R16 3
       88 CALL                             R13 3 0
       89 FORGLOOP                         R8 2 ; [-8]
       91 JUMPIF                           R5 ; [+6]
       92 GETUPVAL                         R8 5
       93 GETTABLEKS                       R7 R8 K25 ["getNearestTick"]
       95 GETUPVAL                         R8 3
       96 CALL                             R7 1 1
       97 SETUPVAL                         R7 3
       98 GETUPVAL                         R9 6
       99 GETUPVAL                         R10 3
      100 CALL                             R9 1 -1
      101 NAMECALL                         R7 R0 K26 ["dispatch"]
      103 CALL                             R7 -1 0
      104 GETTABLEKS                       R8 R1 K2 ["Status"]
      106 GETTABLEKS                       R7 R8 K27 ["VisualizeBones"]
      108 GETUPVAL                         R9 7
      109 GETTABLEKS                       R8 R9 K28 ["updateMicrobones"]
      111 MOVE                             R9 R4
      112 MOVE                             R10 R7
      113 CALL                             R8 2 0
      114 GETUPVAL                         R9 4
      115 GETTABLEKS                       R8 R9 K29 ["updateSimulatedAnimConstraintParts"]
      117 MOVE                             R9 R4
      118 CALL                             R8 1 0
      119 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CLOSEUPVALS                      R0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetPlayhead"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Util"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["Constants"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R3 K11 ["RigInfo"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R3 K12 ["RigUtils"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R8 R3 K13 ["RigVisualization"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K7 [require]
       42 GETTABLEKS                       R9 R3 K14 ["KeyframeUtils"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K7 [require]
       47 GETTABLEKS                       R11 R0 K15 ["LuaFlags"]
       49 GETTABLEKS                       R10 R11 K16 ["GetFFlagEngineAnimator"]
       51 CALL                             R9 1 1
       52 DUPCLOSURE                       R10 K17 [PROTO_1]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 RETURN                           R10 1
