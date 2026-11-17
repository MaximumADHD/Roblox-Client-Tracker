PROTO_0:
        0 LOADK                            R5 K0 ["KeyframeSequence"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R2 R1 K2 ["Metadata"]
        7 GETTABLEKS                       R2 R2 K3 ["IsChannelAnimation"]
        9 JUMPIF                           R2 ; [+10]
       10 LOADK                            R4 K4 ["CurveAnimation"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETTABLEKS                       R3 R1 K2 ["Metadata"]
       17 GETTABLEKS                       R3 R3 K3 ["IsChannelAnimation"]
       19 NOT                              R2 R3
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getAnimator"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+5]
        7 MOVE                             R6 R4
        8 LOADK                            R7 K1 ["Unable to get the Animator"]
        9 GETIMPORT                        R5 K3 [assert]
       11 CALL                             R5 2 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["toAnimationAsset"]
       15 MOVE                             R6 R2
       16 MOVE                             R7 R1
       17 MOVE                             R8 R3
       18 CALL                             R5 3 1
       19 LOADB                            R6 0
       20 SETTABLEKS                       R6 R5 K5 ["Loop"]
       22 NAMECALL                         R6 R0 K6 ["getState"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R6 R6 K7 ["Status"]
       27 GETTABLEKS                       R6 R6 K8 ["AnimationTrack"]
       29 JUMPIFNOT                        R3 ; [+1]
       30 JUMPIF                           R6 ; [+30]
       31 JUMPIFNOT                        R6 ; [+7]
       32 LOADN                            R9 0
       33 NAMECALL                         R7 R6 K9 ["Stop"]
       35 CALL                             R7 2 0
       36 NAMECALL                         R7 R6 K10 ["Destroy"]
       38 CALL                             R7 1 0
       39 GETIMPORT                        R7 K13 [Instance.new]
       41 LOADK                            R8 K14 ["Animation"]
       42 CALL                             R7 1 1
       43 GETUPVAL                         R8 2
       44 MOVE                             R10 R5
       45 NAMECALL                         R8 R8 K15 ["RegisterActiveAnimationClip"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K16 ["AnimationId"]
       50 MOVE                             R10 R7
       51 NAMECALL                         R8 R4 K17 ["LoadAnimation"]
       53 CALL                             R8 2 1
       54 LOADN                            R11 0
       55 LOADN                            R12 1
       56 LOADN                            R13 0
       57 NAMECALL                         R9 R8 K18 ["Play"]
       59 CALL                             R9 4 0
       60 MOVE                             R6 R8
       61 GETUPVAL                         R9 3
       62 MOVE                             R10 R6
       63 CALL                             R9 1 -1
       64 NAMECALL                         R7 R0 K19 ["dispatch"]
       66 CALL                             R7 -1 0
       67 GETUPVAL                         R9 4
       68 MOVE                             R10 R5
       69 CALL                             R9 1 -1
       70 NAMECALL                         R7 R0 K19 ["dispatch"]
       72 CALL                             R7 -1 0
       73 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["Status"]
        8 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 JUMPIFNOT                        R3 ; [+59]
       14 GETTABLEKS                       R3 R1 K1 ["Status"]
       16 GETTABLEKS                       R3 R3 K3 ["PrevAnimationClip"]
       18 JUMPIF                           R3 ; [+7]
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R0
       21 MOVE                             R6 R2
       22 GETUPVAL                         R7 2
       23 LOADNIL                          R8
       24 CALL                             R4 4 0
       25 RETURN                           R0 0
       26 JUMPIFNOT                        R3 ; [+39]
       27 GETUPVAL                         R5 2
       28 LOADK                            R8 K4 ["KeyframeSequence"]
       29 NAMECALL                         R6 R3 K5 ["IsA"]
       31 CALL                             R6 2 1
       32 JUMPIFNOT                        R6 ; [+5]
       33 GETTABLEKS                       R4 R5 K6 ["Metadata"]
       35 GETTABLEKS                       R4 R4 K7 ["IsChannelAnimation"]
       37 JUMPIF                           R4 ; [+11]
       38 LOADK                            R8 K8 ["CurveAnimation"]
       39 NAMECALL                         R6 R3 K5 ["IsA"]
       41 CALL                             R6 2 1
       42 MOVE                             R4 R6
       43 JUMPIFNOT                        R4 ; [+5]
       44 GETTABLEKS                       R6 R5 K6 ["Metadata"]
       46 GETTABLEKS                       R6 R6 K7 ["IsChannelAnimation"]
       48 NOT                              R4 R6
       49 JUMPIFNOT                        R4 ; [+16]
       50 NAMECALL                         R4 R3 K9 ["Destroy"]
       52 CALL                             R4 1 0
       53 GETUPVAL                         R6 3
       54 LOADNIL                          R7
       55 CALL                             R6 1 -1
       56 NAMECALL                         R4 R0 K10 ["dispatch"]
       58 CALL                             R4 -1 0
       59 GETUPVAL                         R4 1
       60 MOVE                             R5 R0
       61 MOVE                             R6 R2
       62 GETUPVAL                         R7 2
       63 LOADNIL                          R8
       64 CALL                             R4 4 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R4 1
       67 MOVE                             R5 R0
       68 MOVE                             R6 R2
       69 GETUPVAL                         R7 2
       70 MOVE                             R8 R3
       71 CALL                             R4 4 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R3 4
       74 GETTABLEKS                       R3 R3 K11 ["toAnimationAsset"]
       76 GETUPVAL                         R4 2
       77 MOVE                             R5 R2
       78 CALL                             R3 2 1
       79 GETUPVAL                         R4 5
       80 GETTABLEKS                       R4 R4 K12 ["resetAnimator"]
       82 MOVE                             R5 R2
       83 CALL                             R4 1 1
       84 FASTCALL2K                       ASSERT R4 K13 ; [+5]
       86 MOVE                             R6 R4
       87 LOADK                            R7 K13 ["Unable to reset the Animator"]
       88 GETIMPORT                        R5 K15 [assert]
       90 CALL                             R5 2 0
       91 GETIMPORT                        R5 K18 [Instance.new]
       93 LOADK                            R6 K19 ["Animation"]
       94 CALL                             R5 1 1
       95 GETUPVAL                         R6 6
       96 MOVE                             R8 R3
       97 NAMECALL                         R6 R6 K20 ["RegisterActiveAnimationClip"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K21 ["AnimationId"]
      102 MOVE                             R8 R5
      103 NAMECALL                         R6 R4 K22 ["LoadAnimation"]
      105 CALL                             R6 2 1
      106 LOADN                            R9 0
      107 LOADN                            R10 1
      108 LOADN                            R11 0
      109 NAMECALL                         R7 R6 K23 ["Play"]
      111 CALL                             R7 4 0
      112 GETUPVAL                         R9 7
      113 MOVE                             R10 R6
      114 CALL                             R9 1 -1
      115 NAMECALL                         R7 R0 K10 ["dispatch"]
      117 CALL                             R7 -1 0
      118 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Actions"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["SetAnimationTrack"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R5 R2 K13 ["SetPrevAnimationClip"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R1 K8 ["Src"]
       29 GETTABLEKS                       R5 R5 K14 ["Util"]
       31 GETIMPORT                        R6 K11 [require]
       33 GETTABLEKS                       R7 R5 K15 ["RigSerialization"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K11 [require]
       38 GETTABLEKS                       R8 R5 K16 ["RigUtils"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K11 [require]
       43 GETTABLEKS                       R9 R5 K17 ["RigInfo"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K1 [game]
       48 LOADK                            R11 K18 ["LiveAnimationUpdateSupport"]
       49 NAMECALL                         R9 R9 K19 ["GetFastFlag"]
       51 CALL                             R9 2 1
       52 DUPCLOSURE                       R10 K20 [PROTO_0]
       53 DUPCLOSURE                       R11 K21 [PROTO_1]
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 DUPCLOSURE                       R12 K22 [PROTO_3]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 RETURN                           R12 1
