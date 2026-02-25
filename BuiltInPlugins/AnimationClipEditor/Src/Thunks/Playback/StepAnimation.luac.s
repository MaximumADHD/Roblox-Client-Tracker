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
       36 JUMPIFNOT                        R7 ; [+48]
       37 JUMPIFNOT                        R3 ; [+64]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K9 ["getAnimator"]
       41 MOVE                             R8 R4
       42 CALL                             R7 1 1
       43 JUMPIFNOT                        R7 ; [+58]
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
       62 GETUPVAL                         R9 4
       63 JUMPIFNOT                        R9 ; [+12]
       64 LOADN                            R11 0
       65 DUPTABLE                         R12 K19 [{"automaticScalingEnabledOverride", "retargetingEnabledOverride"}]
       66 LOADB                            R13 0
       67 SETTABLEKS                       R13 R12 K17 ["automaticScalingEnabledOverride"]
       69 LOADB                            R13 0
       70 SETTABLEKS                       R13 R12 K18 ["retargetingEnabledOverride"]
       72 NAMECALL                         R9 R7 K20 ["StepAnimationsInternal"]
       74 CALL                             R9 3 0
       75 JUMP                             ; [+26]
       76 LOADN                            R11 0
       77 DUPTABLE                         R12 K21 [{"automaticScalingEnabledOverride"}]
       78 LOADB                            R13 0
       79 SETTABLEKS                       R13 R12 K17 ["automaticScalingEnabledOverride"]
       81 NAMECALL                         R9 R7 K20 ["StepAnimationsInternal"]
       83 CALL                             R9 3 0
       84 JUMP                             ; [+17]
       85 GETTABLEKS                       R7 R2 K22 ["Instances"]
       87 JUMPIFNOT                        R7 ; [+14]
       88 GETIMPORT                        R8 K24 [pairs]
       90 MOVE                             R9 R7
       91 CALL                             R8 1 3
       92 FORGPREP_NEXT                    R8
       93 GETUPVAL                         R14 5
       94 GETTABLEKS                       R13 R14 K25 ["stepRigAnimation"]
       96 MOVE                             R14 R4
       97 MOVE                             R15 R12
       98 GETUPVAL                         R16 3
       99 CALL                             R13 3 0
      100 FORGLOOP                         R8 2 ; [-8]
      102 JUMPIF                           R5 ; [+6]
      103 GETUPVAL                         R8 6
      104 GETTABLEKS                       R7 R8 K26 ["getNearestTick"]
      106 GETUPVAL                         R8 3
      107 CALL                             R7 1 1
      108 SETUPVAL                         R7 3
      109 GETUPVAL                         R9 7
      110 GETUPVAL                         R10 3
      111 CALL                             R9 1 -1
      112 NAMECALL                         R7 R0 K27 ["dispatch"]
      114 CALL                             R7 -1 0
      115 GETTABLEKS                       R8 R1 K2 ["Status"]
      117 GETTABLEKS                       R7 R8 K28 ["VisualizeBones"]
      119 GETUPVAL                         R9 8
      120 GETTABLEKS                       R8 R9 K29 ["updateMicrobones"]
      122 MOVE                             R9 R4
      123 MOVE                             R10 R7
      124 CALL                             R8 2 0
      125 GETUPVAL                         R9 5
      126 GETTABLEKS                       R8 R9 K30 ["updateSimulatedAnimConstraintParts"]
      128 MOVE                             R9 R4
      129 CALL                             R8 1 0
      130 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U7
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1

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
       52 GETIMPORT                        R10 K18 [game]
       54 LOADK                            R12 K19 ["AddRetargetingOptionInManualStep"]
       55 NAMECALL                         R10 R10 K20 ["GetFastFlag"]
       57 CALL                             R10 2 1
       58 DUPCLOSURE                       R11 K21 [PROTO_1]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 RETURN                           R11 1
